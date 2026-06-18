const std = @import("std");
const types = @import("types.zig");

pub fn createFileIO(
    open_callback: types.aiFileOpenProc,
    close_callback: types.aiFileCloseProc,
    user_data: types.aiUserData,
) types.aiFileIO {
    return .{
        .OpenProc = open_callback,
        .CloseProc = close_callback,
        .UserData = user_data,
    };
}

pub fn createFile(
    read_callback: types.aiFileReadProc,
    write_callback: types.aiFileWriteProc,
    tell_callback: types.aiFileTellProc,
    file_size_callback: types.aiFileTellProc,
    seek_callback: types.aiFileSeek,
    flush_callback: types.aiFileFlushProc,
    user_data: types.aiUserData,
) types.aiFile {
    return .{
        .ReadProc = read_callback,
        .WriteProc = write_callback,
        .TellProc = tell_callback,
        .FileSizeProc = file_size_callback,
        .SeekProc = seek_callback,
        .FlushProc = flush_callback,
        .UserData = user_data,
    };
}

pub const MemoryFileStream = struct {
    data: []const u8,
    position: usize,

    pub fn init(data: []const u8) MemoryFileStream {
        return .{ .data = data, .position = 0 };
    }
};

fn memFileRead(file: *types.aiFile, buffer: ?[*]u8, size: usize, count: usize) callconv(.c) usize {
    const stream = @as(*MemoryFileStream, @ptrCast(@alignCast(file.UserData orelse return 0)));
    const bytes_to_read = @min(size * count, stream.data.len - stream.position);
    if (buffer) |buf| {
        @memcpy(buf[0..bytes_to_read], stream.data[stream.position..][0..bytes_to_read]);
    }
    stream.position += bytes_to_read;
    return if (size > 0) bytes_to_read / size else 0;
}

fn memFileWrite(file: *types.aiFile, _: ?[*]const u8, _: usize, _: usize) callconv(.c) usize {
    _ = file;
    return 0;
}

fn memFileTell(file: *types.aiFile) callconv(.c) usize {
    const stream = @as(*MemoryFileStream, @ptrCast(@alignCast(file.UserData orelse return 0)));
    return stream.position;
}

fn memFileSize(file: *types.aiFile) callconv(.c) usize {
    const stream = @as(*MemoryFileStream, @ptrCast(@alignCast(file.UserData orelse return 0)));
    return stream.data.len;
}

fn memFileSeek(file: *types.aiFile, offset: usize, origin: types.aiOrigin) callconv(.c) types.aiReturn {
    const stream = @as(*MemoryFileStream, @ptrCast(@alignCast(file.UserData orelse return .FAILURE)));
    stream.position = switch (origin) {
        .SET => offset,
        .CUR => stream.position + offset,
        .END => stream.data.len -| offset,
        else => return .FAILURE,
    };
    if (stream.position > stream.data.len) stream.position = stream.data.len;
    return .SUCCESS;
}

fn memFileFlush(_: *types.aiFile) callconv(.c) void {}

pub fn createMemoryStreamFile(stream: *MemoryFileStream) types.aiFile {
    return createFile(
        memFileRead,
        memFileWrite,
        memFileTell,
        memFileSize,
        memFileSeek,
        memFileFlush,
        @ptrCast(stream),
    );
}

fn memSingleOpen(io: *types.aiFileIO, _: [*:0]const u8, _: [*:0]const u8) callconv(.c) ?*types.aiFile {
    return if (io.UserData) |ud| @ptrCast(ud) else null;
}

fn memSingleClose(_: *types.aiFileIO, _: *types.aiFile) callconv(.c) void {}

pub fn createMemoryFileIO(file: *types.aiFile) types.aiFileIO {
    return createFileIO(memSingleOpen, memSingleClose, @ptrCast(file));
}

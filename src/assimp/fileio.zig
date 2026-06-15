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

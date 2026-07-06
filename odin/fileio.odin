package assimp

create_file_io :: proc(
    open_proc: aiFileOpenProc,
    close_proc: aiFileCloseProc,
    user_data: aiUserData,
) -> aiFileIO {
    return aiFileIO{
        open_proc = open_proc,
        close_proc = close_proc,
        user_data = user_data,
    }
}

create_file :: proc(
    read_proc: aiFileReadProc,
    write_proc: aiFileWriteProc,
    tell_proc: aiFileTellProc,
    file_size_proc: aiFileTellProc,
    seek_proc: aiFileSeek,
    flush_proc: aiFileFlushProc,
    user_data: aiUserData,
) -> aiFile {
    return aiFile{
        read_proc = read_proc,
        write_proc = write_proc,
        tell_proc = tell_proc,
        file_size_proc = file_size_proc,
        seek_proc = seek_proc,
        flush_proc = flush_proc,
        user_data = user_data,
    }
}

MemoryFileStream :: struct {
    data: []u8,
    position: uint,
}

memory_file_stream_init :: proc(data: []u8) -> MemoryFileStream {
    return MemoryFileStream{data = data, position = 0}
}

mem_file_read :: proc "c" (file: ^aiFile, buffer: [^]u8, size: uint, count: uint) -> uint {
    stream := cast(^MemoryFileStream)(file.user_data)
    if stream == nil {
        return 0
    }
    data_len := uint(len(stream.data))
    bytes_available := data_len - stream.position if stream.position < data_len else 0
    bytes_to_read := min(size * count, bytes_available)
    if buffer != nil && bytes_to_read > 0 {
        for i in 0 ..< bytes_to_read {
            buffer[i] = stream.data[stream.position + i]
        }
    }
    stream.position += bytes_to_read
    if size > 0 {
        return bytes_to_read / size
    }
    return 0
}

mem_file_write :: proc "c" (file: ^aiFile, data: [^]u8, size: uint, count: uint) -> uint {
    return 0
}

mem_file_tell :: proc "c" (file: ^aiFile) -> uint {
    stream := cast(^MemoryFileStream)(file.user_data)
    if stream == nil {
        return 0
    }
    return stream.position
}

mem_file_size :: proc "c" (file: ^aiFile) -> uint {
    stream := cast(^MemoryFileStream)(file.user_data)
    if stream == nil {
        return 0
    }
    return uint(len(stream.data))
}

mem_file_seek :: proc "c" (file: ^aiFile, offset: uint, origin: aiOrigin) -> aiReturn {
    stream := cast(^MemoryFileStream)(file.user_data)
    if stream == nil {
        return .FAILURE
    }
    switch origin {
    case .SET:
        stream.position = offset
    case .CUR:
        stream.position += offset
    case .END:
        data_len := uint(len(stream.data))
        stream.position = data_len - offset if offset <= data_len else 0
    case:
        return .FAILURE
    }
    if stream.position > uint(len(stream.data)) {
        stream.position = uint(len(stream.data))
    }
    return .SUCCESS
}

mem_file_flush :: proc "c" (file: ^aiFile) {
}

create_memory_stream_file :: proc(stream: ^MemoryFileStream) -> aiFile {
    return create_file(
        mem_file_read,
        mem_file_write,
        mem_file_tell,
        mem_file_size,
        mem_file_seek,
        mem_file_flush,
        cast(aiUserData)(stream),
    )
}

mem_single_open :: proc "c" (io: ^aiFileIO, path: cstring, mode: cstring) -> ^aiFile {
    return cast(^aiFile)(io.user_data)
}

mem_single_close :: proc "c" (io: ^aiFileIO, file: ^aiFile) {
}

create_memory_file_io :: proc(file: ^aiFile) -> aiFileIO {
    return create_file_io(mem_single_open, mem_single_close, cast(aiUserData)(file))
}

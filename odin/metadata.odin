package assimp

MetadataValue :: union {
    bool,
    i32,
    u32,
    i64,
    u64,
    f32,
    f64,
    aiString,
    aiVector3D,
    ^aiMetadata,
}

metadata_value_from_entry :: proc(entry: ^aiMetadataEntry) -> (MetadataValue, bool) {
    data := entry.data
    if data == nil {
        return {}, false
    }
    #partial switch entry.meta_type {
    case .BOOL: {
        v: MetadataValue = (cast(^bool)data)^
        return v, true
    }
    case .INT32: {
        v: MetadataValue = (cast(^i32)data)^
        return v, true
    }
    case .UINT32: {
        v: MetadataValue = (cast(^u32)data)^
        return v, true
    }
    case .INT64: {
        v: MetadataValue = (cast(^i64)data)^
        return v, true
    }
    case .UINT64: {
        v: MetadataValue = (cast(^u64)data)^
        return v, true
    }
    case .FLOAT: {
        v: MetadataValue = (cast(^f32)data)^
        return v, true
    }
    case .DOUBLE: {
        v: MetadataValue = (cast(^f64)data)^
        return v, true
    }
    case .AISTRING: {
        v: MetadataValue = (cast(^aiString)data)^
        return v, true
    }
    case .AIVECTOR3D: {
        v: MetadataValue = (cast(^aiVector3D)data)^
        return v, true
    }
    case .AIMETADATA: {
        v: MetadataValue = cast(^aiMetadata)data
        return v, true
    }
    }
    return {}, false
}

metadata_get_by_index :: proc(meta: ^aiMetadata, index: u32) -> (MetadataValue, bool) {
    if index >= meta.num_properties {
        return {}, false
    }
    if meta.keys == nil || meta.values == nil {
        return {}, false
    }
    return metadata_value_from_entry(&meta.values[index])
}

metadata_get_by_key :: proc(meta: ^aiMetadata, key: string) -> (MetadataValue, bool) {
    if meta.keys == nil || meta.values == nil {
        return {}, false
    }
    for i in 0 ..< meta.num_properties {
        k := &meta.keys[i]
        if k.length == u32(len(key)) {
            match := true
            for j in 0 ..< k.length {
                if k.data[j] != key[j] {
                    match = false
                    break
                }
            }
            if match {
                return metadata_value_from_entry(&meta.values[i])
            }
        }
    }
    return {}, false
}

metadata_count :: proc(meta: ^aiMetadata) -> u32 {
    return meta.num_properties
}

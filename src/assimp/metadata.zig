const types = @import("types.zig");

pub const MetadataValue = union(enum) {
    bool: bool,
    int32: i32,
    int64: i64,
    uint32: u32,
    uint64: u64,
    float: f32,
    double: f64,
    string: types.aiString,
    vector3d: types.aiVector3D,
    metadata: *types.aiMetadata,

    pub fn fromEntry(entry: *const types.aiMetadataEntry) ?MetadataValue {
        const data = entry.mData orelse return null;
        return switch (entry.mType) {
            .BOOL => @as(MetadataValue, .{ .bool = @as(*const bool, @ptrCast(data)).* }),
            .INT32 => @as(MetadataValue, .{ .int32 = @as(*const i32, @ptrCast(data)).* }),
            .UINT32 => @as(MetadataValue, .{ .uint32 = @as(*const u32, @ptrCast(data)).* }),
            .INT64 => @as(MetadataValue, .{ .int64 = @as(*const i64, @ptrCast(data)).* }),
            .UINT64 => @as(MetadataValue, .{ .uint64 = @as(*const u64, @ptrCast(data)).* }),
            .FLOAT => @as(MetadataValue, .{ .float = @as(*const f32, @ptrCast(data)).* }),
            .DOUBLE => @as(MetadataValue, .{ .double = @as(*const f64, @ptrCast(data)).* }),
            .AISTRING => @as(MetadataValue, .{ .string = @as(*const types.aiString, @ptrCast(data)).* }),
            .AIVECTOR3D => @as(MetadataValue, .{ .vector3d = @as(*const types.aiVector3D, @ptrCast(data)).* }),
            .AIMETADATA => @as(MetadataValue, .{ .metadata = @as(*types.aiMetadata, @ptrCast(data)) }),
            else => null,
        };
    }
};

pub fn metadataGetByIndex(meta: *const types.aiMetadata, index: c_uint) ?struct { key: types.aiString, value: MetadataValue } {
    if (index >= meta.mNumProperties) return null;
    const keys = meta.mKeys orelse return null;
    const values = meta.mValues orelse return null;
    const val = MetadataValue.fromEntry(&values[index]) orelse return null;
    return .{ .key = keys[index], .value = val };
}

pub fn metadataGetByKey(meta: *const types.aiMetadata, key: [:0]const u8) ?MetadataValue {
    const keys = meta.mKeys orelse return null;
    const values = meta.mValues orelse return null;
    var i: c_uint = 0;
    while (i < meta.mNumProperties) : (i += 1) {
        const k = keys[i];
        if (k.length == @as(types.ai_uint32, @intCast(std.mem.len(key))) and
            std.mem.eql(u8, k.data[0..k.length], key[0..k.length]))
        {
            return MetadataValue.fromEntry(&values[i]);
        }
    }
    return null;
}

pub fn metadataCount(meta: *const types.aiMetadata) c_uint {
    return meta.mNumProperties;
}

const std = @import("std");

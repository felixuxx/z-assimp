const types = @import("types.zig");
const c = @import("c.zig");

pub const ExportError = error{ExportFailed};

pub const Exporter = struct {
    allocator: std.mem.Allocator,
    property_store: ?*types.aiPropertyStore,

    pub fn init(allocator: std.mem.Allocator) Exporter {
        return .{
            .allocator = allocator,
            .property_store = null,
        };
    }

    pub fn deinit(self: *Exporter) void {
        if (self.property_store) |store| {
            c.aiReleasePropertyStore(store);
            self.property_store = null;
        }
    }

    pub fn getExportFormatCount() usize {
        return c.aiGetExportFormatCount();
    }

    pub fn getExportFormatDescription(index: usize) ?*const types.aiExportFormatDesc {
        return c.aiGetExportFormatDescription(index);
    }

    pub fn releaseExportFormatDescription(desc: ?*const types.aiExportFormatDesc) void {
        c.aiReleaseExportFormatDescription(desc);
    }

    pub fn exportScene(scene: *const types.aiScene, format_id: [:0]const u8, file_name: [:0]const u8, preprocessing: types.aiPostProcessSteps) types.aiReturn {
        return c.aiExportScene(scene, format_id.ptr, file_name.ptr, @bitCast(preprocessing));
    }

    pub fn exportSceneEx(scene: *const types.aiScene, format_id: [:0]const u8, file_name: [:0]const u8, io: ?*types.aiFileIO, preprocessing: types.aiPostProcessSteps) types.aiReturn {
        return c.aiExportSceneEx(scene, format_id.ptr, file_name.ptr, io, @bitCast(preprocessing));
    }

    pub fn exportSceneToBlob(scene: *const types.aiScene, format_id: [:0]const u8, preprocessing: types.aiPostProcessSteps) ?*const types.aiExportDataBlob {
        return c.aiExportSceneToBlob(scene, format_id.ptr, @bitCast(preprocessing));
    }

    pub fn releaseExportBlob(data: ?*const types.aiExportDataBlob) void {
        c.aiReleaseExportBlob(data);
    }

    pub fn copyScene(src: *const types.aiScene) !*types.aiScene {
        var dst: ?*types.aiScene = null;
        c.aiCopyScene(src, &dst);
        return dst orelse error.ExportFailed;
    }

    pub fn copySceneOut(src: *const types.aiScene, dst: *?*types.aiScene) void {
        c.aiCopyScene(src, dst);
    }

    pub fn freeScene(scene: ?*const types.aiScene) void {
        c.aiFreeScene(scene);
    }
};

const std = @import("std");

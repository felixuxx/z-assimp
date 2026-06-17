const std = @import("std");
const assimp = @import("assimp");

const box_obj = @embedFile("models/box.obj");
const box_mat_obj = @embedFile("models/box_mat_with_spaces.obj");

test "version info" {
    _ = assimp.Importer.getVersionMajor();
    _ = assimp.Importer.getVersionMinor();
    _ = assimp.Importer.getVersionPatch();
    _ = assimp.Importer.getVersionRevision();
    _ = assimp.Importer.getLegalString();
    _ = assimp.Importer.getCompileFlags();
}

test "importer lifecycle" {
    var importer = assimp.Importer.init(std.testing.allocator);
    defer importer.deinit();
    try std.testing.expect(importer.getScene() == null);
}

test "import box.obj from memory" {
    var importer = assimp.Importer.init(std.testing.allocator);
    defer importer.deinit();
    const scene = try importer.importFileFromMemory(box_obj, "obj", .{
        .triangulate = true,
        .gen_normals = true,
    });
    try std.testing.expect(scene.mNumMeshes > 0);
    try std.testing.expect(scene.mNumMeshes == 1);
}

test "scene accessors" {
    var importer = assimp.Importer.init(std.testing.allocator);
    defer importer.deinit();
    const scene = try importer.importFileFromMemory(box_obj, "obj", .{ .triangulate = true });

    try std.testing.expect(assimp.sceneHasMeshes(scene));
    try std.testing.expect(assimp.sceneHasMaterials(scene));
    try std.testing.expect(!assimp.sceneHasAnimations(scene));
    try std.testing.expect(!assimp.sceneHasCameras(scene));
    try std.testing.expect(!assimp.sceneHasLights(scene));
    try std.testing.expect(!assimp.sceneHasTextures(scene));

    const meshes = assimp.sceneMeshes(scene);
    try std.testing.expectEqual(@as(usize, 1), meshes.len);
    try std.testing.expect(meshes[0] != null);

    const flags = assimp.sceneFlags(scene);
    try std.testing.expect(!flags.incomplete);
}

test "mesh vertex data" {
    var importer = assimp.Importer.init(std.testing.allocator);
    defer importer.deinit();
    const scene = try importer.importFileFromMemory(box_obj, "obj", .{
        .triangulate = true,
        .gen_normals = true,
    });
    const mesh = assimp.sceneMeshes(scene)[0] orelse return error.SkipZigTest;

    const verts = assimp.meshVertices(mesh) orelse return error.SkipZigTest;
    try std.testing.expect(verts.len > 0);
    try std.testing.expectEqual(verts.len, mesh.mNumVertices);

    const norms = assimp.meshNormals(mesh);
    try std.testing.expect(norms != null);

    const faces = assimp.meshFaces(mesh) orelse return error.SkipZigTest;
    try std.testing.expect(faces.len > 0);
    try std.testing.expectEqual(faces.len, mesh.mNumFaces);

    const face0 = &faces[0];
    const indices = assimp.faceIndices(face0);
    try std.testing.expect(indices.len > 0);
    try std.testing.expectEqual(face0.mNumIndices, @as(c_uint, @intCast(indices.len)));
}

test "node traversal" {
    var importer = assimp.Importer.init(std.testing.allocator);
    defer importer.deinit();
    const scene = try importer.importFileFromMemory(box_obj, "obj", .{ .triangulate = true });

    const root = scene.mRootNode orelse return error.SkipZigTest;
    try std.testing.expect(assimp.nodeIsRoot(root));

    const ch = assimp.nodeChildren(root);
    try std.testing.expect(ch.len > 0);
    try std.testing.expect(ch[0] != null);

    const node_indices = assimp.nodeMeshIndices(ch[0].?);
    try std.testing.expect(node_indices.len > 0);

    const found = assimp.nodeFindByName(root, "1");
    try std.testing.expect(found != null);
}

test "string to slice" {
    var importer = assimp.Importer.init(std.testing.allocator);
    defer importer.deinit();
    const scene = try importer.importFileFromMemory(box_obj, "obj", .{ .triangulate = true });
    _ = assimp.toSlice(&scene.mName);
}

test "math wrappers" {
    const a = assimp.types.aiVector3D{ .x = 1, .y = 0, .z = 0 };
    const b = assimp.types.aiVector3D{ .x = 0, .y = 1, .z = 0 };

    const c = assimp.math.vec3Cross(a, b);
    try std.testing.expectApproxEqAbs(@as(f32, 0), c.x, 0.001);
    try std.testing.expectApproxEqAbs(@as(f32, 0), c.y, 0.001);
    try std.testing.expectApproxEqAbs(@as(f32, 1), c.z, 0.001);

    const d = assimp.math.vec3Dot(a, b);
    try std.testing.expectApproxEqAbs(@as(f32, 0), d, 0.001);

    const len = assimp.math.vec3Length(a);
    try std.testing.expectApproxEqAbs(@as(f32, 1), len, 0.001);

    const v = assimp.math.vec3Add(a, b);
    try std.testing.expectApproxEqAbs(@as(f32, 1), v.x, 0.001);
    try std.testing.expectApproxEqAbs(@as(f32, 1), v.y, 0.001);
}

test "material query" {
    var importer = assimp.Importer.init(std.testing.allocator);
    defer importer.deinit();
    const scene = try importer.importFileFromMemory(box_mat_obj, "obj", .{ .triangulate = true });
    try std.testing.expect(assimp.sceneHasMaterials(scene));
    const mats = assimp.sceneMaterials(scene);
    try std.testing.expect(mats.len > 0);
    try std.testing.expect(mats[0] != null);
    const tex_count = assimp.getMaterialTextureCount(mats[0].?, .DIFFUSE);
    _ = tex_count;
}

test "animation accessors" {
    var importer = assimp.Importer.init(std.testing.allocator);
    defer importer.deinit();
    const scene = try importer.importFileFromMemory(box_obj, "obj", .{ .triangulate = true });
    const anims = assimp.sceneAnimations(scene);
    try std.testing.expect(anims.len == 0);
}

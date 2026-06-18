const std = @import("std");
const assimp = @import("assimp");

const box_obj = @embedFile("box.obj");

pub fn main() !void {
    var importer = assimp.Importer.init(std.heap.page_allocator);
    defer importer.deinit();

    const scene = try importer.importFileFromMemory(box_obj, "obj", .{
        .triangulate = true,
        .gen_normals = true,
    });

    std.debug.print("Scene: {s}\n", .{assimp.toSlice(&scene.mName)});
    std.debug.print("  Meshes:    {}\n", .{scene.mNumMeshes});
    std.debug.print("  Materials: {}\n", .{scene.mNumMaterials});
    std.debug.print("  Animations:{}\n", .{scene.mNumAnimations});
    std.debug.print("  Textures:  {}\n", .{scene.mNumTextures});

    for (assimp.sceneMeshes(scene), 0..) |mesh_opt, i| {
        const mesh = mesh_opt orelse continue;
        std.debug.print("\nMesh {}: {s}\n", .{ i, assimp.toSlice(&mesh.mName) });
        std.debug.print("  Vertices: {}\n", .{mesh.mNumVertices});
        std.debug.print("  Faces:    {}\n", .{mesh.mNumFaces});
        std.debug.print("  Bones:    {}\n", .{mesh.mNumBones});

        if (assimp.meshVertices(mesh)) |verts| {
            std.debug.print("  First vertex: {d:.3} {d:.3} {d:.3}\n", .{ verts[0].x, verts[0].y, verts[0].z });
        }

        if (assimp.meshNormals(mesh)) |norms| {
            std.debug.print("  First normal: {d:.3} {d:.3} {d:.3}\n", .{ norms[0].x, norms[0].y, norms[0].z });
        }

        if (assimp.meshFaces(mesh)) |faces| {
            const face = &faces[0];
            const idx = assimp.faceIndices(face);
            std.debug.print("  First face: {} indices", .{idx.len});
            for (idx) |ii| std.debug.print(" {}", .{ii});
            std.debug.print("\n", .{});
        }
    }

    const root = scene.mRootNode orelse return;
    std.debug.print("\nRoot node: {s}\n", .{assimp.toSlice(&root.mName)});
    std.debug.print("  Children: {}\n", .{root.mNumChildren});
    if (assimp.nodeFindByName(root, "1")) |node| {
        std.debug.print("  Found node '1' with {} meshes\n", .{node.mNumMeshes});
    }
}

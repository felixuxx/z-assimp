# OpenAssetImporter Library Binding for Zig

This repo wraps [Assimp](https://github.com/assimp/assimp) v5.3.1 with a [Zig](https://ziglang.org/) build system and provides Zig bindings for the full C API.

## Quick Start

Add as a dependency in a project:
```zig
zig fetch --save git+https://github.com/felixuxx/z-assimp.git
```

In `build.zig`:

```zig
const assimp_dep = b.dependency("zig_assimp", .{ .formats = "Obj,STL,glTF" });
const assimp_mod = assimp_dep.module("assimp");
const assimp_lib = assimp_dep.artifact("assimp");

exe.root_module.addImport("assimp", assimp_mod);
exe.root_module.linkLibrary(assimp_lib);
exe.root_module.link_libc = true;
exe.root_module.link_libcpp = true;
```

## Usage

```zig
const std = @import("std");
const assimp = @import("assimp");

pub fn main() !void {
    var importer = assimp.Importer.init(std.heap.page_allocator);
    defer importer.deinit();

    const scene = try importer.importFile("model.obj", .{
        .triangulate = true,
        .gen_normals = true,
    });
    defer importer.releaseScene();

    for (assimp.sceneMeshes(scene)) |mesh_opt| {
        const mesh = mesh_opt orelse continue;
        const verts = assimp.meshVertices(mesh) orelse continue;
        std.debug.print("Mesh with {} vertices\n", .{verts.len});
    }
}
```

## Build Options

| Option | Default | Description |
|--------|---------|-------------|
| `-Dformats=...` | `Obj` | Comma-separated format importers, or `"all"` |
| `-Ddouble=true` | `false` | Double precision mode |
| Standard `-Dtarget=...` and `-Doptimize=...` | | |

## Module Structure

| Module | Description |
|--------|-------------|
| `assimp` | Convenience re-exports + high-level `Importer` wrapper |
| `assimp.types` | All C types, enums, structs, constants |
| `assimp.c` | Raw `extern "c" fn` declarations |
| `assimp.math` | Value-semantic math wrappers (vec3, mat4, quat) |
| `assimp.exporter` | Dedicated `Exporter` struct |
| `assimp.fileio` | Helper to construct `aiFileIO`/`aiFile` from callbacks |
| `assimp.metadata` | `MetadataValue` tagged union with safe typed extraction |

## Format Selection

Enable specific format importers with `-Dformats=Obj,STL,FBX,glTF2` or `-Dformats=all`.
Available formats: `Obj`, `STL`, `FBX`, `glTF`, `glTF2`, `Collada`, `3DS`, `X`, `MD5`, `Blend`, and [40+ more](build.zig).

## Testing

```sh
zig build test        # runs via build runner (no output on success)
zig test test/assimp_test.zig -lc++ -lc --mod assimp:src/assimp/assimp.zig --deps assimp  # verbose output
```

## License

BSD 3-Clause — see [LICENCE](LICENCE).

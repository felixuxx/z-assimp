pub const types = @import("types.zig");
pub const c = @import("c.zig");

pub const aiScene = types.aiScene;
pub const aiNode = types.aiNode;
pub const aiMesh = types.aiMesh;
pub const aiMaterial = types.aiMaterial;
pub const aiAnimation = types.aiAnimation;
pub const aiCamera = types.aiCamera;
pub const aiLight = types.aiLight;
pub const aiTexture = types.aiTexture;
pub const aiString = types.aiString;
pub const aiVector3D = types.aiVector3D;
pub const aiVector2D = types.aiVector2D;
pub const aiMatrix3x3 = types.aiMatrix3x3;
pub const aiMatrix4x4 = types.aiMatrix4x4;
pub const aiQuaternion = types.aiQuaternion;
pub const aiColor4D = types.aiColor4D;
pub const aiColor3D = types.aiColor3D;
pub const aiAABB = types.aiAABB;
pub const aiFace = types.aiFace;
pub const aiBone = types.aiBone;
pub const aiVertexWeight = types.aiVertexWeight;
pub const aiMetadata = types.aiMetadata;
pub const aiMetadataEntry = types.aiMetadataEntry;
pub const aiImporterDesc = types.aiImporterDesc;
pub const aiExportFormatDesc = types.aiExportFormatDesc;
pub const aiExportDataBlob = types.aiExportDataBlob;
pub const aiMemoryInfo = types.aiMemoryInfo;
pub const aiPropertyStore = types.aiPropertyStore;
pub const aiLogStream = types.aiLogStream;
pub const aiLogStreamCallback = types.aiLogStreamCallback;
pub const aiFileIO = types.aiFileIO;
pub const aiFile = types.aiFile;
pub const aiSkeleton = types.aiSkeleton;
pub const aiSkeletonBone = types.aiSkeletonBone;
pub const aiTexel = types.aiTexel;
pub const aiPlane = types.aiPlane;
pub const aiRay = types.aiRay;
pub const aiUVTransform = types.aiUVTransform;
pub const aiNodeAnim = types.aiNodeAnim;
pub const aiAnimMesh = types.aiAnimMesh;
pub const aiMaterialProperty = types.aiMaterialProperty;
pub const aiQuatKey = types.aiQuatKey;
pub const aiVectorKey = types.aiVectorKey;
pub const aiMeshKey = types.aiMeshKey;
pub const aiMeshMorphKey = types.aiMeshMorphKey;
pub const aiMeshAnim = types.aiMeshAnim;
pub const aiMeshMorphAnim = types.aiMeshMorphAnim;
pub const ai_real = types.ai_real;
pub const ai_int = types.ai_int;
pub const ai_uint = types.ai_uint;
pub const ai_int32 = types.ai_int32;
pub const ai_uint32 = types.ai_uint32;
pub const aiBool = types.aiBool;
pub const aiUserData = types.aiUserData;

pub const aiReturn = types.aiReturn;
pub const aiOrigin = types.aiOrigin;
pub const aiDefaultLogStream = types.aiDefaultLogStream;
pub const aiPrimitiveType = types.aiPrimitiveType;
pub const aiMorphingMethod = types.aiMorphingMethod;
pub const aiTextureType = types.aiTextureType;
pub const aiTextureOp = types.aiTextureOp;
pub const aiTextureMapMode = types.aiTextureMapMode;
pub const aiTextureMapping = types.aiTextureMapping;
pub const aiShadingMode = types.aiShadingMode;
pub const aiTextureFlags = types.aiTextureFlags;
pub const aiBlendMode = types.aiBlendMode;
pub const aiPropertyTypeInfo = types.aiPropertyTypeInfo;
pub const aiAnimBehaviour = types.aiAnimBehaviour;
pub const aiLightSourceType = types.aiLightSourceType;
pub const aiMetadataType = types.aiMetadataType;
pub const aiImporterFlags = types.aiImporterFlags;

pub const aiPostProcessSteps = types.aiPostProcessSteps;
pub const aiComponent = types.aiComponent;

pub const aiProcessPreset_TargetRealtime_Fast = types.aiProcessPreset_TargetRealtime_Fast;
pub const aiProcessPreset_TargetRealtime_Quality = types.aiProcessPreset_TargetRealtime_Quality;
pub const aiProcessPreset_TargetRealtime_MaxQuality = types.aiProcessPreset_TargetRealtime_MaxQuality;

pub const AI_MATH_PI = types.AI_MATH_PI;
pub const AI_MATH_TWO_PI = types.AI_MATH_TWO_PI;
pub const AI_MATH_HALF_PI = types.AI_MATH_HALF_PI;
pub const AI_MATH_PI_F = types.AI_MATH_PI_F;
pub const AI_MATH_TWO_PI_F = types.AI_MATH_TWO_PI_F;
pub const AI_MATH_HALF_PI_F = types.AI_MATH_HALF_PI_F;
pub const AI_DEG_TO_RAD = types.AI_DEG_TO_RAD;
pub const AI_RAD_TO_DEG = types.AI_RAD_TO_DEG;
pub const ai_epsilon = types.ai_epsilon;
pub const AI_SCENE_FLAGS_INCOMPLETE = types.AI_SCENE_FLAGS_INCOMPLETE;
pub const AI_SCENE_FLAGS_VALIDATED = types.AI_SCENE_FLAGS_VALIDATED;
pub const AI_SCENE_FLAGS_VALIDATION_WARNING = types.AI_SCENE_FLAGS_VALIDATION_WARNING;
pub const AI_SCENE_FLAGS_NON_VERBOSE_FORMAT = types.AI_SCENE_FLAGS_NON_VERBOSE_FORMAT;
pub const AI_SCENE_FLAGS_TERRAIN = types.AI_SCENE_FLAGS_TERRAIN;
pub const AI_SCENE_FLAGS_ALLOW_SHARED = types.AI_SCENE_FLAGS_ALLOW_SHARED;

pub const AI_TRUE = types.AI_TRUE;
pub const AI_FALSE = types.AI_FALSE;

pub const AI_MATKEY_NAME = types.AI_MATKEY_NAME;
pub const AI_MATKEY_TWOSIDED = types.AI_MATKEY_TWOSIDED;
pub const AI_MATKEY_SHADING_MODEL = types.AI_MATKEY_SHADING_MODEL;
pub const AI_MATKEY_COLOR_DIFFUSE = types.AI_MATKEY_COLOR_DIFFUSE;
pub const AI_MATKEY_COLOR_SPECULAR = types.AI_MATKEY_COLOR_SPECULAR;
pub const AI_MATKEY_COLOR_AMBIENT = types.AI_MATKEY_COLOR_AMBIENT;
pub const AI_MATKEY_COLOR_EMISSIVE = types.AI_MATKEY_COLOR_EMISSIVE;
pub const AI_MATKEY_OPACITY = types.AI_MATKEY_OPACITY;
pub const AI_MATKEY_SHININESS = types.AI_MATKEY_SHININESS;
pub const AI_MATKEY_METALLIC_FACTOR = types.AI_MATKEY_METALLIC_FACTOR;
pub const AI_MATKEY_ROUGHNESS_FACTOR = types.AI_MATKEY_ROUGHNESS_FACTOR;
pub const AI_MATKEY_BASE_COLOR = types.AI_MATKEY_BASE_COLOR;

pub const AI_CONFIG_PP_CT_MAX_SMOOTHING_ANGLE = types.AI_CONFIG_PP_CT_MAX_SMOOTHING_ANGLE;
pub const AI_CONFIG_PP_RVC_FLAGS = types.AI_CONFIG_PP_RVC_FLAGS;
pub const AI_CONFIG_PP_PTV_KEEP_HIERARCHY = types.AI_CONFIG_PP_PTV_KEEP_HIERARCHY;
pub const AI_CONFIG_PP_SBP_REMOVE = types.AI_CONFIG_PP_SBP_REMOVE;
pub const AI_CONFIG_GLOBAL_SCALE_FACTOR_KEY = types.AI_CONFIG_GLOBAL_SCALE_FACTOR_KEY;

pub const exporter = @import("exporter.zig");
pub const Exporter = exporter.Exporter;
pub const math = @import("math.zig");
pub const vec3Add = math.vec3Add;
pub const vec3Sub = math.vec3Sub;
pub const vec3Scale = math.vec3Scale;
pub const vec3Negate = math.vec3Negate;
pub const vec3Normalize = math.vec3Normalize;
pub const vec3Cross = math.vec3Cross;
pub const vec3Dot = math.vec3Dot;
pub const vec3Length = math.vec3Length;
pub const vec3LengthSquared = math.vec3LengthSquared;
pub const vec3Equal = math.vec3Equal;
pub const vec3TransformByMatrix4 = math.vec3TransformByMatrix4;
pub const vec2Add = math.vec2Add;
pub const vec2Sub = math.vec2Sub;
pub const vec2Length = math.vec2Length;
pub const vec2Dot = math.vec2Dot;
pub const mat4Mul = math.mat4Mul;
pub const mat4Inverse = math.mat4Inverse;
pub const mat4Transpose = math.mat4Transpose;
pub const mat4Identity = math.mat4Identity;
pub const quatMul = math.quatMul;
pub const quatNormalize = math.quatNormalize;
pub const quatInterpolate = math.quatInterpolate;
pub const fileio = @import("fileio.zig");
pub const metadata = @import("metadata.zig");
pub const MetadataValue = metadata.MetadataValue;

pub const ImportError = error{ImportFailed};

/// High-level wrapper around the assimp importer C API.
///
/// Manages the lifecycle of an imported scene and optional property store.
/// Create with `init`, import with `importFile`, clean up with `deinit`.
pub const Importer = struct {
    allocator: std.mem.Allocator,
    scene: ?*const types.aiScene,
    property_store: ?*types.aiPropertyStore,

    /// Creates a new Importer with no loaded scene.
    pub fn init(allocator: std.mem.Allocator) Importer {
        return .{
            .allocator = allocator,
            .scene = null,
            .property_store = null,
        };
    }

    /// Frees the current scene and any property store.
    pub fn deinit(self: *Importer) void {
        self.releaseScene();
        if (self.property_store) |store| {
            c.aiReleasePropertyStore(store);
            self.property_store = null;
        }
    }

    /// Imports a file from disk.
    /// `path` is a null-terminated file path. `flags` controls post-processing.
    /// Returns the imported scene, or `ImportError.ImportFailed` on failure.
    /// Call `releaseScene` or `deinit` when done.
    pub fn importFile(self: *Importer, path: [:0]const u8, flags: types.aiPostProcessSteps) !*const types.aiScene {
        self.releaseScene();
        const scene = c.aiImportFile(path.ptr, @bitCast(flags));
        if (scene) |s| {
            self.scene = s;
            return s;
        }
        return error.ImportFailed;
    }

    /// Imports a file with custom I/O callbacks.
    /// `fs` provides custom file reading; pass `null` for the default filesystem.
    pub fn importFileEx(self: *Importer, path: [:0]const u8, flags: types.aiPostProcessSteps, fs: ?*types.aiFileIO) !*const types.aiScene {
        self.releaseScene();
        const scene = c.aiImportFileEx(path.ptr, @bitCast(flags), fs);
        if (scene) |s| {
            self.scene = s;
            return s;
        }
        return error.ImportFailed;
    }

    /// Imports with custom I/O and applies properties set via `setProperty*`.
    pub fn importFileExWithProperties(self: *Importer, path: [:0]const u8, flags: types.aiPostProcessSteps, fs: ?*types.aiFileIO) !*const types.aiScene {
        self.releaseScene();
        const store = self.getOrCreatePropertyStore();
        const scene = c.aiImportFileExWithProperties(path.ptr, @bitCast(flags), fs, store);
        if (scene) |s| {
            self.scene = s;
            return s;
        }
        return error.ImportFailed;
    }

    /// Imports a model from a memory buffer.
    /// `hint` is a file extension like `"obj"` or `"gltf"` that tells assimp which importer to use.
    pub fn importFileFromMemory(self: *Importer, buffer: []const u8, hint: [:0]const u8, flags: types.aiPostProcessSteps) !*const types.aiScene {
        self.releaseScene();
        const scene = c.aiImportFileFromMemory(buffer.ptr, @as(c_uint, @intCast(buffer.len)), @bitCast(flags), hint.ptr);
        if (scene) |s| {
            self.scene = s;
            return s;
        }
        return error.ImportFailed;
    }

    /// Imports from memory with custom properties applied.
    pub fn importFileFromMemoryWithProperties(self: *Importer, buffer: []const u8, hint: [:0]const u8, flags: types.aiPostProcessSteps) !*const types.aiScene {
        self.releaseScene();
        const store = self.getOrCreatePropertyStore();
        const scene = c.aiImportFileFromMemoryWithProperties(buffer.ptr, @as(c_uint, @intCast(buffer.len)), @bitCast(flags), hint.ptr, store);
        if (scene) |s| {
            self.scene = s;
            return s;
        }
        return error.ImportFailed;
    }

    /// Applies additional post-processing to the currently imported scene.
    pub fn applyPostProcessing(self: *Importer, flags: types.aiPostProcessSteps) !void {
        const scene = self.scene orelse return;
        const result = c.aiApplyPostProcessing(scene, @bitCast(flags));
        self.scene = result;
        if (result == null) {
            return error.ImportFailed;
        }
    }

    /// Frees the currently imported scene. Safe to call multiple times.
    pub fn releaseScene(self: *Importer) void {
        if (self.scene) |scene| {
            c.aiReleaseImport(scene);
            self.scene = null;
        }
    }

    pub fn getScene(self: *const Importer) ?*const types.aiScene {
        return self.scene;
    }

    /// Exports the currently imported scene to a file.
    pub fn exportScene(self: *const Importer, format_id: [:0]const u8, file_name: [:0]const u8, preprocessing: types.aiPostProcessSteps) types.aiReturn {
        const scene = self.scene orelse return .FAILURE;
        return c.aiExportScene(scene, format_id.ptr, file_name.ptr, @bitCast(preprocessing));
    }

    /// Exports the currently imported scene to an in-memory blob.
    pub fn exportSceneToBlob(self: *const Importer, format_id: [:0]const u8, preprocessing: types.aiPostProcessSteps) ?*const types.aiExportDataBlob {
        const scene = self.scene orelse return null;
        return c.aiExportSceneToBlob(scene, format_id.ptr, @bitCast(preprocessing));
    }

    pub fn getOrCreatePropertyStore(self: *Importer) ?*types.aiPropertyStore {
        if (self.property_store) |store| return store;
        self.property_store = c.aiCreatePropertyStore();
        return self.property_store;
    }

    /// Sets an integer import property (must be called before import).
    pub fn setPropertyInteger(self: *Importer, key: [:0]const u8, value: c_int) void {
        if (self.getOrCreatePropertyStore()) |store|
            c.aiSetImportPropertyInteger(store, key.ptr, value);
    }

    /// Sets a float import property (must be called before import).
    pub fn setPropertyFloat(self: *Importer, key: [:0]const u8, value: types.ai_real) void {
        if (self.getOrCreatePropertyStore()) |store|
            c.aiSetImportPropertyFloat(store, key.ptr, value);
    }

    /// Sets a string import property (must be called before import).
    pub fn setPropertyString(self: *Importer, key: [:0]const u8, value: *const types.aiString) void {
        if (self.getOrCreatePropertyStore()) |store|
            c.aiSetImportPropertyString(store, key.ptr, value);
    }

    /// Sets a matrix import property (must be called before import).
    pub fn setPropertyMatrix(self: *Importer, key: [:0]const u8, value: *const types.aiMatrix4x4) void {
        if (self.getOrCreatePropertyStore()) |store|
            c.aiSetImportPropertyMatrix(store, key.ptr, value);
    }

    /// Returns whether a given file extension (e.g. ".obj") is supported.
    pub fn isExtensionSupported(ext: [:0]const u8) bool {
        return c.aiIsExtensionSupported(ext.ptr) != 0;
    }

    /// Returns a semicolon-separated list of all supported extensions.
    pub fn getExtensionList(buffer: *types.aiString) void {
        c.aiGetExtensionList(buffer);
    }

    /// Returns approximate memory usage of an imported scene.
    pub fn getMemoryRequirements(scene: *const types.aiScene, info: *types.aiMemoryInfo) void {
        c.aiGetMemoryRequirements(scene, info);
    }

    /// Returns a human-readable error string from the last failed import.
    pub fn getErrorString() [*:0]const u8 {
        return c.aiGetErrorString();
    }

    /// Returns the major version number of the linked assimp library.
    pub fn getVersionMajor() c_uint {
        return c.aiGetVersionMajor();
    }

    /// Returns the minor version number of the linked assimp library.
    pub fn getVersionMinor() c_uint {
        return c.aiGetVersionMinor();
    }

    /// Returns the patch version number of the linked assimp library.
    pub fn getVersionPatch() c_uint {
        return c.aiGetVersionPatch();
    }

    /// Returns the SVN revision of the linked assimp library.
    pub fn getVersionRevision() c_uint {
        return c.aiGetVersionRevision();
    }

    /// Returns a bitmask of compile-time flags (ASSIMP_CFLAGS_*).
    pub fn getCompileFlags() c_uint {
        return c.aiGetCompileFlags();
    }

    /// Returns legal/copyright information about assimp.
    pub fn getLegalString() [*:0]const u8 {
        return c.aiGetLegalString();
    }

    /// Returns the branch name of the assimp build.
    pub fn getBranchName() [*:0]const u8 {
        return c.aiGetBranchName();
    }

    /// Returns the number of available import formats.
    pub fn getImportFormatCount() usize {
        return c.aiGetImportFormatCount();
    }

    /// Returns metadata about the nth import format.
    pub fn getImportFormatDescription(index: usize) ?*const types.aiImporterDesc {
        return c.aiGetImportFormatDescription(index);
    }

    /// Returns a predefined log stream (file, stdout, stderr, or debugger).
    pub fn getPredefinedLogStream(stream: types.aiDefaultLogStream, file: ?[:0]const u8) types.aiLogStream {
        return c.aiGetPredefinedLogStream(stream, if (file) |f| f.ptr else null);
    }

    /// Attaches a custom log stream.
    pub fn attachLogStream(stream: *const types.aiLogStream) void {
        c.aiAttachLogStream(stream);
    }

    /// Detaches a previously attached log stream.
    pub fn detachLogStream(stream: *const types.aiLogStream) types.aiReturn {
        return c.aiDetachLogStream(stream);
    }

    /// Detaches all attached log streams.
    pub fn detachAllLogStreams() void {
        c.aiDetachAllLogStreams();
    }

    /// Enables or disables verbose logging.
    pub fn enableVerboseLogging(enabled: bool) void {
        c.aiEnableVerboseLogging(if (enabled) types.AI_TRUE else types.AI_FALSE);
    }

    pub fn getImporterDesc(extension: [:0]const u8) ?*const types.aiImporterDesc {
        return c.aiGetImporterDesc(extension.ptr);
    }
};

/// Queries a float material property. Returns `SUCCESS` if found.
pub fn getMaterialFloat(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint, out: *types.ai_real) types.aiReturn {
    return c.aiGetMaterialFloatArray(mat, key.ptr, type_, index, out, null);
}

/// Queries an integer material property. Returns `SUCCESS` if found.
pub fn getMaterialInteger(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint, out: *c_int) types.aiReturn {
    return c.aiGetMaterialIntegerArray(mat, key.ptr, type_, index, out, null);
}

/// Queries a float array material property. `max` is in/out: input is buffer capacity, output is count read.
pub fn getMaterialFloatArray(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint, out: *types.ai_real, max: ?*c_uint) types.aiReturn {
    return c.aiGetMaterialFloatArray(mat, key.ptr, type_, index, out, max);
}

/// Queries an integer array material property.
pub fn getMaterialIntegerArray(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint, out: *c_int, max: ?*c_uint) types.aiReturn {
    return c.aiGetMaterialIntegerArray(mat, key.ptr, type_, index, out, max);
}

/// Queries a color material property.
pub fn getMaterialColor(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint, out: *types.aiColor4D) types.aiReturn {
    return c.aiGetMaterialColor(mat, key.ptr, type_, index, out);
}

/// Queries a UV transform material property.
pub fn getMaterialUVTransform(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint, out: *types.aiUVTransform) types.aiReturn {
    return c.aiGetMaterialUVTransform(mat, key.ptr, type_, index, out);
}

/// Queries a string material property.
pub fn getMaterialString(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint, out: *types.aiString) types.aiReturn {
    return c.aiGetMaterialString(mat, key.ptr, type_, index, out);
}

/// Returns the number of textures for a given texture type on this material.
pub fn getMaterialTextureCount(mat: *const types.aiMaterial, type_: types.aiTextureType) c_uint {
    return c.aiGetMaterialTextureCount(mat, type_);
}

/// Queries a texture slot's parameters. Returns `SUCCESS` if found.
pub fn getMaterialTexture(mat: *const types.aiMaterial, type_: types.aiTextureType, index: c_uint, path: *types.aiString, mapping: ?*types.aiTextureMapping, uvindex: ?*c_uint, blend: ?*types.ai_real, op: ?*types.aiTextureOp, mapmode: ?[*]types.aiTextureMapMode, flags: ?*c_uint) types.aiReturn {
    return c.aiGetMaterialTexture(mat, type_, index, path, mapping, uvindex, blend, op, mapmode, flags);
}

/// Typed bitfield for `aiScene.mFlags`. Use `sceneFlags(scene)` to obtain.
pub const SceneFlags = packed struct(u32) {
    incomplete: bool = false,
    validated: bool = false,
    validation_warning: bool = false,
    non_verbose_format: bool = false,
    terrain: bool = false,
    allow_shared: bool = false,
    _: u26 = 0,
};

/// Returns the scene's flags as a typed struct with named fields.
pub fn sceneFlags(scene: *const types.aiScene) SceneFlags {
    return @bitCast(scene.mFlags);
}

/// Returns all meshes in the scene as a slice. Individual entries may be null.
pub fn sceneMeshes(scene: *const types.aiScene) []const ?*types.aiMesh {
    if (scene.mMeshes) |ptr| return ptr[0..scene.mNumMeshes];
    return &[_]?*types.aiMesh{};
}

/// Returns all materials in the scene as a slice.
pub fn sceneMaterials(scene: *const types.aiScene) []const ?*types.aiMaterial {
    if (scene.mMaterials) |ptr| return ptr[0..scene.mNumMaterials];
    return &[_]?*types.aiMaterial{};
}

/// Returns all animations in the scene as a slice.
pub fn sceneAnimations(scene: *const types.aiScene) []const ?*types.aiAnimation {
    if (scene.mAnimations) |ptr| return ptr[0..scene.mNumAnimations];
    return &[_]?*types.aiAnimation{};
}

/// Returns all cameras in the scene as a slice.
pub fn sceneCameras(scene: *const types.aiScene) []const ?*types.aiCamera {
    if (scene.mCameras) |ptr| return ptr[0..scene.mNumCameras];
    return &[_]?*types.aiCamera{};
}

/// Returns all lights in the scene as a slice.
pub fn sceneLights(scene: *const types.aiScene) []const ?*types.aiLight {
    if (scene.mLights) |ptr| return ptr[0..scene.mNumLights];
    return &[_]?*types.aiLight{};
}

/// Returns all embedded textures in the scene as a slice.
pub fn sceneTextures(scene: *const types.aiScene) []const ?*types.aiTexture {
    if (scene.mTextures) |ptr| return ptr[0..scene.mNumTextures];
    return &[_]?*types.aiTexture{};
}

/// Returns all skeletons in the scene as a slice.
pub fn sceneSkeletons(scene: *const types.aiScene) []const ?*types.aiSkeleton {
    if (scene.mSkeletons) |ptr| return ptr[0..scene.mNumSkeletons];
    return &[_]?*types.aiSkeleton{};
}

/// Returns true if the scene contains at least one mesh.
pub fn sceneHasMeshes(scene: *const types.aiScene) bool {
    return scene.mMeshes != null and scene.mNumMeshes > 0;
}

/// Returns true if the scene contains at least one material.
pub fn sceneHasMaterials(scene: *const types.aiScene) bool {
    return scene.mMaterials != null and scene.mNumMaterials > 0;
}

/// Returns true if the scene contains at least one embedded texture.
pub fn sceneHasTextures(scene: *const types.aiScene) bool {
    return scene.mTextures != null and scene.mNumTextures > 0;
}

/// Returns true if the scene contains at least one animation.
pub fn sceneHasAnimations(scene: *const types.aiScene) bool {
    return scene.mAnimations != null and scene.mNumAnimations > 0;
}

/// Returns true if the scene contains at least one camera.
pub fn sceneHasCameras(scene: *const types.aiScene) bool {
    return scene.mCameras != null and scene.mNumCameras > 0;
}

/// Returns true if the scene contains at least one light.
pub fn sceneHasLights(scene: *const types.aiScene) bool {
    return scene.mLights != null and scene.mNumLights > 0;
}

/// Returns the direct children of a node as a slice.
pub fn nodeChildren(node: *const types.aiNode) []const ?*types.aiNode {
    if (node.mChildren) |ptr| return ptr[0..node.mNumChildren];
    return &[_]?*types.aiNode{};
}

/// Returns the mesh indices referenced by a node.
pub fn nodeMeshIndices(node: *const types.aiNode) []const c_uint {
    if (node.mMeshes) |ptr| return ptr[0..node.mNumMeshes];
    return &[_]c_uint{};
}

/// Returns true if this node is the scene root (no parent).
pub fn nodeIsRoot(node: *const types.aiNode) bool {
    return node.mParent == null;
}

/// Returns the vertex positions of a mesh, or null if not present.
pub fn meshVertices(mesh: *const types.aiMesh) ?[]const types.aiVector3D {
    const ptr = mesh.mVertices orelse return null;
    return ptr[0..mesh.mNumVertices];
}

/// Returns the vertex normals, or null if not present.
pub fn meshNormals(mesh: *const types.aiMesh) ?[]const types.aiVector3D {
    const ptr = mesh.mNormals orelse return null;
    return ptr[0..mesh.mNumVertices];
}

/// Returns the vertex tangents, or null if not present.
pub fn meshTangents(mesh: *const types.aiMesh) ?[]const types.aiVector3D {
    const ptr = mesh.mTangents orelse return null;
    return ptr[0..mesh.mNumVertices];
}

/// Returns the vertex bitangents, or null if not present.
pub fn meshBitangents(mesh: *const types.aiMesh) ?[]const types.aiVector3D {
    const ptr = mesh.mBitangents orelse return null;
    return ptr[0..mesh.mNumVertices];
}

/// Returns vertex colors for a given color set (0-7), or null if not present.
pub fn meshColors(mesh: *const types.aiMesh, set: c_uint) ?[]const types.aiColor4D {
    if (set >= types.AI_MAX_NUMBER_OF_COLOR_SETS) return null;
    const ptr = mesh.mColors[set] orelse return null;
    return ptr[0..mesh.mNumVertices];
}

/// Returns texture coordinates for a given UV set (0-7), or null if not present.
pub fn meshTexCoords(mesh: *const types.aiMesh, set: c_uint) ?[]const types.aiVector3D {
    if (set >= types.AI_MAX_NUMBER_OF_TEXTURECOORDS) return null;
    const ptr = mesh.mTextureCoords[set] orelse return null;
    return ptr[0..mesh.mNumVertices];
}

/// Returns the face list, or null if not present.
pub fn meshFaces(mesh: *const types.aiMesh) ?[]const types.aiFace {
    const ptr = mesh.mFaces orelse return null;
    return ptr[0..mesh.mNumFaces];
}

/// Returns the bone array as a slice. Individual entries may be null.
pub fn meshBones(mesh: *const types.aiMesh) []const ?*types.aiBone {
    if (mesh.mBones) |ptr| return ptr[0..mesh.mNumBones];
    return &[_]?*types.aiBone{};
}

/// Describes a single texture slot's parameters. Obtained via `materialGetTextureInfo`.
pub const MaterialTextureInfo = extern struct {
    path: types.aiString,
    mapping: types.aiTextureMapping,
    uvindex: c_uint,
    blend: types.ai_real,
    op: types.aiTextureOp,
    mapmode_u: types.aiTextureMapMode,
    mapmode_v: types.aiTextureMapMode,
    flags: c_uint,
};

/// Returns a float material property, or null if not found.
pub fn materialGetFloat(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint) ?types.ai_real {
    var out: types.ai_real = undefined;
    return switch (c.aiGetMaterialFloatArray(mat, key.ptr, type_, index, &out, null)) {
        .SUCCESS => out,
        else => null,
    };
}

/// Returns an integer material property, or null if not found.
pub fn materialGetInteger(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint) ?c_int {
    var out: c_int = undefined;
    return switch (c.aiGetMaterialIntegerArray(mat, key.ptr, type_, index, &out, null)) {
        .SUCCESS => out,
        else => null,
    };
}

/// Returns a color material property, or null if not found.
pub fn materialGetColor(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint) ?types.aiColor4D {
    var out: types.aiColor4D = undefined;
    return switch (c.aiGetMaterialColor(mat, key.ptr, type_, index, &out)) {
        .SUCCESS => out,
        else => null,
    };
}

/// Returns a string material property, or null if not found.
pub fn materialGetString(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint) ?types.aiString {
    var out: types.aiString = undefined;
    return switch (c.aiGetMaterialString(mat, key.ptr, type_, index, &out)) {
        .SUCCESS => out,
        else => null,
    };
}

/// Returns a UV transform material property, or null if not found.
pub fn materialGetUVTransform(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint) ?types.aiUVTransform {
    var out: types.aiUVTransform = undefined;
    return switch (c.aiGetMaterialUVTransform(mat, key.ptr, type_, index, &out)) {
        .SUCCESS => out,
        else => null,
    };
}

/// Returns a texture slot's full info (path, mapping, UV index, blend, op, flags), or null.
pub fn materialGetTextureInfo(mat: *const types.aiMaterial, type_: types.aiTextureType, index: c_uint) ?MaterialTextureInfo {
    var path: types.aiString = undefined;
    var mapping: types.aiTextureMapping = undefined;
    var uvindex: c_uint = undefined;
    var blend: types.ai_real = undefined;
    var op: types.aiTextureOp = undefined;
    var mapmode: [2]types.aiTextureMapMode = undefined;
    var flags: c_uint = undefined;
    return switch (c.aiGetMaterialTexture(mat, type_, index, &path, &mapping, &uvindex, &blend, &op, &mapmode, &flags)) {
        .SUCCESS => MaterialTextureInfo{
            .path = path,
            .mapping = mapping,
            .uvindex = uvindex,
            .blend = blend,
            .op = op,
            .mapmode_u = mapmode[0],
            .mapmode_v = mapmode[1],
            .flags = flags,
        },
        else => null,
    };
}

/// Returns bone animation channels for an animation.
pub fn animationChannels(anim: *const types.aiAnimation) []const ?*types.aiNodeAnim {
    if (anim.mChannels) |ptr| return ptr[0..anim.mNumChannels];
    return &[_]?*types.aiNodeAnim{};
}

/// Returns mesh animation channels for an animation.
pub fn animationMeshChannels(anim: *const types.aiAnimation) []const ?*types.aiMeshAnim {
    if (anim.mMeshChannels) |ptr| return ptr[0..anim.mNumMeshChannels];
    return &[_]?*types.aiMeshAnim{};
}

/// Returns morph mesh animation channels for an animation.
pub fn animationMorphChannels(anim: *const types.aiAnimation) []const ?*types.aiMeshMorphAnim {
    if (anim.mMorphMeshChannels) |ptr| return ptr[0..anim.mNumMorphMeshChannels];
    return &[_]?*types.aiMeshMorphAnim{};
}

/// Returns the position keyframes of a node animation channel, or null.
pub fn nodeAnimPositionKeys(na: *const types.aiNodeAnim) ?[]const types.aiVectorKey {
    const ptr = na.mPositionKeys orelse return null;
    return ptr[0..na.mNumPositionKeys];
}

/// Returns the rotation keyframes of a node animation channel, or null.
pub fn nodeAnimRotationKeys(na: *const types.aiNodeAnim) ?[]const types.aiQuatKey {
    const ptr = na.mRotationKeys orelse return null;
    return ptr[0..na.mNumRotationKeys];
}

/// Returns the scaling keyframes of a node animation channel, or null.
pub fn nodeAnimScalingKeys(na: *const types.aiNodeAnim) ?[]const types.aiVectorKey {
    const ptr = na.mScalingKeys orelse return null;
    return ptr[0..na.mNumScalingKeys];
}

/// Searches the node hierarchy depth-first for a node with the given name.
/// Returns null if not found. Uses iterative traversal to avoid stack overflow.
pub fn nodeFindByName(root: *const types.aiNode, name: []const u8) ?*const types.aiNode {
    if (std.mem.eql(u8, root.mName.toSlice(), name)) return root;
    var stack: [256]?*const types.aiNode = .{null} ** 256;
    var sp: usize = 0;
    for (nodeChildren(root)) |child| {
        if (child) |ch| {
            if (sp < stack.len) {
                stack[sp] = ch;
                sp += 1;
            }
        }
    }
    while (sp > 0) {
        sp -= 1;
        const node = stack[sp] orelse continue;
        if (std.mem.eql(u8, node.mName.toSlice(), name)) return node;
        for (nodeChildren(node)) |child| {
            if (child) |ch| {
                if (sp < stack.len) {
                    stack[sp] = ch;
                    sp += 1;
                }
            }
        }
    }
    return null;
}

/// Returns the vertex indices of a face as a slice.
pub fn faceIndices(face: *const types.aiFace) []const c_uint {
    return face.toSlice();
}

/// Returns the name of a bone.
pub fn boneName(bone: *const types.aiBone) []const u8 {
    return bone.mName.toSlice();
}

/// Returns the per-vertex weights of a bone as a slice, or null.
pub fn boneWeights(bone: *const types.aiBone) ?[]const types.aiVertexWeight {
    const ptr = bone.mWeights orelse return null;
    return ptr[0..bone.mNumWeights];
}

/// Returns the bone's offset (inverse bind pose) matrix.
pub fn boneOffsetMatrix(bone: *const types.aiBone) *const types.aiMatrix4x4 {
    return &bone.mOffsetMatrix;
}

/// Finds a bone in a mesh by name. Returns null if not found.
pub fn meshFindBoneByName(mesh: *const types.aiMesh, name: []const u8) ?*const types.aiBone {
    for (meshBones(mesh)) |bone_opt| {
        const bone = bone_opt orelse continue;
        if (std.mem.eql(u8, bone.mName.toSlice(), name)) return bone;
    }
    return null;
}

/// Returns the name of an animation.
pub fn animName(anim: *const types.aiAnimation) []const u8 {
    return anim.mName.toSlice();
}

/// Returns the duration of an animation in ticks.
pub fn animDuration(anim: *const types.aiAnimation) f64 {
    return anim.mDuration;
}

/// Returns the ticks-per-second of an animation (0 if unspecified).
pub fn animTicksPerSecond(anim: *const types.aiAnimation) f64 {
    return anim.mTicksPerSecond;
}

/// Returns the name of the target node for this animation channel.
pub fn nodeAnimChannelName(na: *const types.aiNodeAnim) []const u8 {
    return na.mNodeName.toSlice();
}

/// Returns the bones of a skeleton as a slice.
pub fn skeletonBones(skel: *const types.aiSkeleton) []const ?*types.aiSkeletonBone {
    if (skel.mBones) |ptr| return ptr[0..skel.mNumBones];
    return &[_]?*types.aiSkeletonBone{};
}

/// Returns the name of a skeleton.
pub fn skeletonName(skel: *const types.aiSkeleton) []const u8 {
    return skel.mName.toSlice();
}

/// Returns the keys of a mesh animation channel, or null.
pub fn meshAnimKeys(ma: *const types.aiMeshAnim) ?[]const types.aiMeshKey {
    const ptr = ma.mKeys orelse return null;
    return ptr[0..ma.mNumKeys];
}

/// Returns the keys of a morph mesh animation channel, or null.
pub fn meshMorphAnimKeys(mma: *const types.aiMeshMorphAnim) ?[]const types.aiMeshMorphKey {
    const ptr = mma.mKeys orelse return null;
    return ptr[0..mma.mNumKeys];
}

/// Returns the number of UV components (1-3) for a given texture coordinate set.
pub fn meshUVComponentCount(mesh: *const types.aiMesh, set: c_uint) c_uint {
    if (set >= types.AI_MAX_NUMBER_OF_TEXTURECOORDS) return 0;
    return mesh.mNumUVComponents[set];
}

/// Returns the armature node associated with this bone, or null.
pub fn boneArmature(bone: *const types.aiBone) ?*const types.aiNode {
    return if (bone.mArmature) |n| n else null;
}

/// Returns the bone node in the scene, or null (requires `PopulateArmatureData` process).
pub fn boneNode(bone: *const types.aiBone) ?*const types.aiNode {
    return if (bone.mNode) |n| n else null;
}

/// Returns the pre-state behaviour of a node animation channel.
pub fn nodeAnimPreState(na: *const types.aiNodeAnim) types.aiAnimBehaviour {
    return na.mPreState;
}

/// Returns the post-state behaviour of a node animation channel.
pub fn nodeAnimPostState(na: *const types.aiNodeAnim) types.aiAnimBehaviour {
    return na.mPostState;
}

/// Finds an embedded texture in the scene by filename or index reference.
/// Supports both filename lookup and `"*N"` index references (e.g. `"*0"`, `"*1"`).
pub fn sceneFindEmbeddedTexture(scene: *const types.aiScene, name: []const u8) ?*const types.aiTexture {
    if (name.len > 1 and name[0] == '*') {
        const index = std.fmt.parseInt(c_uint, name[1..], 10) catch return null;
        if (index < scene.mNumTextures) {
            const textures = sceneTextures(scene);
            return if (index < textures.len) textures[index] else null;
        }
        return null;
    }
    for (sceneTextures(scene)) |tex_opt| {
        const tex = tex_opt orelse continue;
        if (std.mem.eql(u8, tex.mFilename.toSlice(), name)) return tex;
    }
    return null;
}

/// Returns embedded texture data as bytes.
/// For compressed textures (`mHeight == 0`), returns the file data.
/// For uncompressed RGBA8 textures, returns `width * height * 4` bytes.
pub fn textureData(tex: *const types.aiTexture) ?[]const u8 {
    const ptr = tex.pcData orelse return null;
    const bytes = @as([*]const u8, @ptrCast(ptr));
    if (tex.mHeight == 0) {
        return bytes[0..tex.mWidth];
    }
    return bytes[0 .. tex.mWidth * tex.mHeight * @sizeOf(types.aiTexel)];
}

const std = @import("std");

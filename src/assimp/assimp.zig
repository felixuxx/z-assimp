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
pub const fileio = @import("fileio.zig");
pub const metadata = @import("metadata.zig");
pub const MetadataValue = metadata.MetadataValue;

pub const ImportError = error{ImportFailed};

pub const Importer = struct {
    allocator: std.mem.Allocator,
    scene: ?*const types.aiScene,
    property_store: ?*types.aiPropertyStore,

    pub fn init(allocator: std.mem.Allocator) Importer {
        return .{
            .allocator = allocator,
            .scene = null,
            .property_store = null,
        };
    }

    pub fn deinit(self: *Importer) void {
        self.releaseScene();
        if (self.property_store) |store| {
            c.aiReleasePropertyStore(store);
            self.property_store = null;
        }
    }

    pub fn importFile(self: *Importer, path: [:0]const u8, flags: types.aiPostProcessSteps) !*const types.aiScene {
        self.releaseScene();
        const scene = c.aiImportFile(path.ptr, @bitCast(flags));
        if (scene) |s| {
            self.scene = s;
            return s;
        }
        return error.ImportFailed;
    }

    pub fn importFileEx(self: *Importer, path: [:0]const u8, flags: types.aiPostProcessSteps, fs: ?*types.aiFileIO) !*const types.aiScene {
        self.releaseScene();
        const scene = c.aiImportFileEx(path.ptr, @bitCast(flags), fs);
        if (scene) |s| {
            self.scene = s;
            return s;
        }
        return error.ImportFailed;
    }

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

    pub fn importFileFromMemory(self: *Importer, buffer: []const u8, hint: [:0]const u8, flags: types.aiPostProcessSteps) !*const types.aiScene {
        self.releaseScene();
        const scene = c.aiImportFileFromMemory(buffer.ptr, @as(c_uint, @intCast(buffer.len)), @bitCast(flags), hint.ptr);
        if (scene) |s| {
            self.scene = s;
            return s;
        }
        return error.ImportFailed;
    }

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

    pub fn applyPostProcessing(self: *Importer, flags: types.aiPostProcessSteps) !void {
        const scene = self.scene orelse return;
        const result = c.aiApplyPostProcessing(scene, @bitCast(flags));
        self.scene = result;
        if (result == null) {
            return error.ImportFailed;
        }
    }

    pub fn releaseScene(self: *Importer) void {
        if (self.scene) |scene| {
            c.aiReleaseImport(scene);
            self.scene = null;
        }
    }

    pub fn getScene(self: *const Importer) ?*const types.aiScene {
        return self.scene;
    }

    pub fn getOrCreatePropertyStore(self: *Importer) ?*types.aiPropertyStore {
        if (self.property_store) |store| return store;
        self.property_store = c.aiCreatePropertyStore();
        return self.property_store;
    }

    pub fn setPropertyInteger(self: *Importer, key: [:0]const u8, value: c_int) void {
        if (self.getOrCreatePropertyStore()) |store|
            c.aiSetImportPropertyInteger(store, key.ptr, value);
    }

    pub fn setPropertyFloat(self: *Importer, key: [:0]const u8, value: types.ai_real) void {
        if (self.getOrCreatePropertyStore()) |store|
            c.aiSetImportPropertyFloat(store, key.ptr, value);
    }

    pub fn setPropertyString(self: *Importer, key: [:0]const u8, value: *const types.aiString) void {
        if (self.getOrCreatePropertyStore()) |store|
            c.aiSetImportPropertyString(store, key.ptr, value);
    }

    pub fn setPropertyMatrix(self: *Importer, key: [:0]const u8, value: *const types.aiMatrix4x4) void {
        if (self.getOrCreatePropertyStore()) |store|
            c.aiSetImportPropertyMatrix(store, key.ptr, value);
    }

    pub fn isExtensionSupported(ext: [:0]const u8) bool {
        return c.aiIsExtensionSupported(ext.ptr) != 0;
    }

    pub fn getExtensionList(buffer: *types.aiString) void {
        c.aiGetExtensionList(buffer);
    }

    pub fn getMemoryRequirements(scene: *const types.aiScene, info: *types.aiMemoryInfo) void {
        c.aiGetMemoryRequirements(scene, info);
    }

    pub fn getErrorString() [:0]const u8 {
        return c.aiGetErrorString();
    }

    pub fn getVersionMajor() c_uint {
        return c.aiGetVersionMajor();
    }

    pub fn getVersionMinor() c_uint {
        return c.aiGetVersionMinor();
    }

    pub fn getVersionPatch() c_uint {
        return c.aiGetVersionPatch();
    }

    pub fn getVersionRevision() c_uint {
        return c.aiGetVersionRevision();
    }

    pub fn getCompileFlags() c_uint {
        return c.aiGetCompileFlags();
    }

    pub fn getLegalString() [:0]const u8 {
        return c.aiGetLegalString();
    }

    pub fn getBranchName() [:0]const u8 {
        return c.aiGetBranchName();
    }

    pub fn getImportFormatCount() usize {
        return c.aiGetImportFormatCount();
    }

    pub fn getImportFormatDescription(index: usize) ?*const types.aiImporterDesc {
        return c.aiGetImportFormatDescription(index);
    }

    pub fn getPredefinedLogStream(stream: types.aiDefaultLogStream, file: ?[:0]const u8) types.aiLogStream {
        return c.aiGetPredefinedLogStream(stream, if (file) |f| f.ptr else null);
    }

    pub fn attachLogStream(stream: *const types.aiLogStream) void {
        c.aiAttachLogStream(stream);
    }

    pub fn detachLogStream(stream: *const types.aiLogStream) types.aiReturn {
        return c.aiDetachLogStream(stream);
    }

    pub fn detachAllLogStreams() void {
        c.aiDetachAllLogStreams();
    }

    pub fn enableVerboseLogging(enabled: bool) void {
        c.aiEnableVerboseLogging(if (enabled) types.AI_TRUE else types.AI_FALSE);
    }

    pub fn getImporterDesc(extension: [:0]const u8) ?*const types.aiImporterDesc {
        return c.aiGetImporterDesc(extension.ptr);
    }
};

pub fn getMaterialFloat(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint, out: *types.ai_real) types.aiReturn {
    return c.aiGetMaterialFloatArray(mat, key.ptr, type_, index, out, null);
}

pub fn getMaterialInteger(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint, out: *c_int) types.aiReturn {
    return c.aiGetMaterialIntegerArray(mat, key.ptr, type_, index, out, null);
}

pub fn getMaterialFloatArray(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint, out: *types.ai_real, max: ?*c_uint) types.aiReturn {
    return c.aiGetMaterialFloatArray(mat, key.ptr, type_, index, out, max);
}

pub fn getMaterialIntegerArray(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint, out: *c_int, max: ?*c_uint) types.aiReturn {
    return c.aiGetMaterialIntegerArray(mat, key.ptr, type_, index, out, max);
}

pub fn getMaterialColor(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint, out: *types.aiColor4D) types.aiReturn {
    return c.aiGetMaterialColor(mat, key.ptr, type_, index, out);
}

pub fn getMaterialUVTransform(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint, out: *types.aiUVTransform) types.aiReturn {
    return c.aiGetMaterialUVTransform(mat, key.ptr, type_, index, out);
}

pub fn getMaterialString(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint, out: *types.aiString) types.aiReturn {
    return c.aiGetMaterialString(mat, key.ptr, type_, index, out);
}

pub fn getMaterialTextureCount(mat: *const types.aiMaterial, type_: types.aiTextureType) c_uint {
    return c.aiGetMaterialTextureCount(mat, type_);
}

pub fn getMaterialTexture(mat: *const types.aiMaterial, type_: types.aiTextureType, index: c_uint, path: *types.aiString, mapping: ?*types.aiTextureMapping, uvindex: ?*c_uint, blend: ?*types.ai_real, op: ?*types.aiTextureOp, mapmode: ?[*]types.aiTextureMapMode, flags: ?*c_uint) types.aiReturn {
    return c.aiGetMaterialTexture(mat, type_, index, path, mapping, uvindex, blend, op, mapmode, flags);
}

pub fn sceneMeshes(scene: *const types.aiScene) []const *const types.aiMesh {
    if (scene.mMeshes) |ptr| return ptr[0..scene.mNumMeshes];
    return &[_]*const types.aiMesh{};
}

pub fn sceneMaterials(scene: *const types.aiScene) []const *const types.aiMaterial {
    if (scene.mMaterials) |ptr| return ptr[0..scene.mNumMaterials];
    return &[_]*const types.aiMaterial{};
}

pub fn sceneAnimations(scene: *const types.aiScene) []const *const types.aiAnimation {
    if (scene.mAnimations) |ptr| return ptr[0..scene.mNumAnimations];
    return &[_]*const types.aiAnimation{};
}

pub fn sceneCameras(scene: *const types.aiScene) []const *const types.aiCamera {
    if (scene.mCameras) |ptr| return ptr[0..scene.mNumCameras];
    return &[_]*const types.aiCamera{};
}

pub fn sceneLights(scene: *const types.aiScene) []const *const types.aiLight {
    if (scene.mLights) |ptr| return ptr[0..scene.mNumLights];
    return &[_]*const types.aiLight{};
}

pub fn sceneTextures(scene: *const types.aiScene) []const *const types.aiTexture {
    if (scene.mTextures) |ptr| return ptr[0..scene.mNumTextures];
    return &[_]*const types.aiTexture{};
}

pub fn sceneSkeletons(scene: *const types.aiScene) []const *const types.aiSkeleton {
    if (scene.mSkeletons) |ptr| return ptr[0..scene.mNumSkeletons];
    return &[_]*const types.aiSkeleton{};
}

pub fn sceneHasMeshes(scene: *const types.aiScene) bool {
    return scene.mMeshes != null and scene.mNumMeshes > 0;
}

pub fn sceneHasMaterials(scene: *const types.aiScene) bool {
    return scene.mMaterials != null and scene.mNumMaterials > 0;
}

pub fn sceneHasTextures(scene: *const types.aiScene) bool {
    return scene.mTextures != null and scene.mNumTextures > 0;
}

pub fn sceneHasAnimations(scene: *const types.aiScene) bool {
    return scene.mAnimations != null and scene.mNumAnimations > 0;
}

pub fn sceneHasCameras(scene: *const types.aiScene) bool {
    return scene.mCameras != null and scene.mNumCameras > 0;
}

pub fn sceneHasLights(scene: *const types.aiScene) bool {
    return scene.mLights != null and scene.mNumLights > 0;
}

pub fn nodeChildren(node: *const types.aiNode) []const *const types.aiNode {
    if (node.mChildren) |ptr| return ptr[0..node.mNumChildren];
    return &[_]*const types.aiNode{};
}

pub fn nodeMeshIndices(node: *const types.aiNode) []const c_uint {
    if (node.mMeshes) |ptr| return ptr[0..node.mNumMeshes];
    return &[_]c_uint{};
}

pub fn nodeIsRoot(node: *const types.aiNode) bool {
    return node.mParent == null;
}

pub fn meshVertices(mesh: *const types.aiMesh) ?[]const types.aiVector3D {
    const ptr = mesh.mVertices orelse return null;
    return ptr[0..mesh.mNumVertices];
}

pub fn meshNormals(mesh: *const types.aiMesh) ?[]const types.aiVector3D {
    const ptr = mesh.mNormals orelse return null;
    return ptr[0..mesh.mNumVertices];
}

pub fn meshTangents(mesh: *const types.aiMesh) ?[]const types.aiVector3D {
    const ptr = mesh.mTangents orelse return null;
    return ptr[0..mesh.mNumVertices];
}

pub fn meshBitangents(mesh: *const types.aiMesh) ?[]const types.aiVector3D {
    const ptr = mesh.mBitangents orelse return null;
    return ptr[0..mesh.mNumVertices];
}

pub fn meshColors(mesh: *const types.aiMesh, set: c_uint) ?[]const types.aiColor4D {
    if (set >= types.AI_MAX_NUMBER_OF_COLOR_SETS) return null;
    const ptr = mesh.mColors[set] orelse return null;
    return ptr[0..mesh.mNumVertices];
}

pub fn meshTexCoords(mesh: *const types.aiMesh, set: c_uint) ?[]const types.aiVector3D {
    if (set >= types.AI_MAX_NUMBER_OF_TEXTURECOORDS) return null;
    const ptr = mesh.mTextureCoords[set] orelse return null;
    return ptr[0..mesh.mNumVertices];
}

pub fn meshFaces(mesh: *const types.aiMesh) ?[]const types.aiFace {
    const ptr = mesh.mFaces orelse return null;
    return ptr[0..mesh.mNumFaces];
}

pub fn meshBones(mesh: *const types.aiMesh) []const *const types.aiBone {
    if (mesh.mBones) |ptr| return ptr[0..mesh.mNumBones];
    return &[_]*const types.aiBone{};
}

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

pub fn materialGetFloat(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint) ?types.ai_real {
    var out: types.ai_real = undefined;
    return switch (c.aiGetMaterialFloatArray(mat, key.ptr, type_, index, &out, null)) {
        .SUCCESS => out,
        else => null,
    };
}

pub fn materialGetInteger(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint) ?c_int {
    var out: c_int = undefined;
    return switch (c.aiGetMaterialIntegerArray(mat, key.ptr, type_, index, &out, null)) {
        .SUCCESS => out,
        else => null,
    };
}

pub fn materialGetColor(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint) ?types.aiColor4D {
    var out: types.aiColor4D = undefined;
    return switch (c.aiGetMaterialColor(mat, key.ptr, type_, index, &out)) {
        .SUCCESS => out,
        else => null,
    };
}

pub fn materialGetString(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint) ?types.aiString {
    var out: types.aiString = undefined;
    return switch (c.aiGetMaterialString(mat, key.ptr, type_, index, &out)) {
        .SUCCESS => out,
        else => null,
    };
}

pub fn materialGetUVTransform(mat: *const types.aiMaterial, key: [:0]const u8, type_: c_uint, index: c_uint) ?types.aiUVTransform {
    var out: types.aiUVTransform = undefined;
    return switch (c.aiGetMaterialUVTransform(mat, key.ptr, type_, index, &out)) {
        .SUCCESS => out,
        else => null,
    };
}

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

const std = @import("std");

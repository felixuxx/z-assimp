pub const ai_real = f32;
pub const ai_int = c_int;
pub const ai_uint = c_uint;
pub const ai_int32 = i32;
pub const ai_uint32 = u32;
pub const aiBool = c_int;
pub const aiUserData = ?*anyopaque;

pub const AI_TRUE: aiBool = 1;
pub const AI_FALSE: aiBool = 0;

pub const AI_MATH_PI = 3.14159265358979323846;
pub const AI_MATH_TWO_PI = AI_MATH_PI * 2.0;
pub const AI_MATH_HALF_PI = AI_MATH_PI * 0.5;
pub const AI_MATH_PI_F: f32 = 3.1415926538;
pub const AI_MATH_TWO_PI_F: f32 = AI_MATH_PI_F * 2.0;
pub const AI_MATH_HALF_PI_F: f32 = AI_MATH_PI_F * 0.5;

pub inline fn AI_DEG_TO_RAD(x: anytype) ai_real {
    return @as(ai_real, @floatCast(@as(f64, @floatCast(x)) * 0.0174532925));
}
pub inline fn AI_RAD_TO_DEG(x: anytype) ai_real {
    return @as(ai_real, @floatCast(@as(f64, @floatCast(x)) * 57.2957795));
}

pub const ai_epsilon: ai_real = 1e-6;

pub const MAXLEN: c_uint = 1024;
pub const AI_MAX_FACE_INDICES: c_uint = 0x7fff;
pub const AI_MAX_BONE_WEIGHTS: c_uint = 0x7fffffff;
pub const AI_MAX_VERTICES: c_uint = 0x7fffffff;
pub const AI_MAX_FACES: c_uint = 0x7fffffff;
pub const AI_MAX_NUMBER_OF_COLOR_SETS: c_uint = 8;
pub const AI_MAX_NUMBER_OF_TEXTURECOORDS: c_uint = 8;

pub const AI_SCENE_FLAGS_INCOMPLETE: c_uint = 0x1;
pub const AI_SCENE_FLAGS_VALIDATED: c_uint = 0x2;
pub const AI_SCENE_FLAGS_VALIDATION_WARNING: c_uint = 0x4;
pub const AI_SCENE_FLAGS_NON_VERBOSE_FORMAT: c_uint = 0x8;
pub const AI_SCENE_FLAGS_TERRAIN: c_uint = 0x10;
pub const AI_SCENE_FLAGS_ALLOW_SHARED: c_uint = 0x20;

pub const AI_DEFAULT_MATERIAL_NAME = "DefaultMaterial";
pub const AI_TEXTURE_TYPE_MAX: c_int = 21;
pub const AI_EMBEDDED_TEXNAME_PREFIX = "*";

pub const ASSIMP_CFLAGS_SHARED: c_uint = 0x1;
pub const ASSIMP_CFLAGS_STLPORT: c_uint = 0x2;
pub const ASSIMP_CFLAGS_DEBUG: c_uint = 0x4;
pub const ASSIMP_CFLAGS_NOBOOST: c_uint = 0x8;
pub const ASSIMP_CFLAGS_SINGLETHREADED: c_uint = 0x10;
pub const ASSIMP_CFLAGS_DOUBLE_SUPPORT: c_uint = 0x20;

pub const aiReturn = enum(c_int) {
    SUCCESS = 0x0,
    FAILURE = -0x1,
    OUTOFMEMORY = -0x3,
    _,
};

pub const aiOrigin = enum(c_int) {
    SET = 0x0,
    CUR = 0x1,
    END = 0x2,
    _,
};

pub const aiDefaultLogStream = enum(c_int) {
    FILE = 0x1,
    STDOUT = 0x2,
    STDERR = 0x4,
    DEBUGGER = 0x8,
    _,
};

pub const aiPrimitiveType = enum(c_uint) {
    POINT = 0x1,
    LINE = 0x2,
    TRIANGLE = 0x4,
    POLYGON = 0x8,
    NGONEncodingFlag = 0x10,
    _,
};

pub const aiMorphingMethod = enum(c_int) {
    UNKNOWN = 0x0,
    VERTEX_BLEND = 0x1,
    MORPH_NORMALIZED = 0x2,
    MORPH_RELATIVE = 0x3,
    _,
};

pub const aiTextureType = enum(c_int) {
    NONE = 0,
    DIFFUSE = 1,
    SPECULAR = 2,
    AMBIENT = 3,
    EMISSIVE = 4,
    HEIGHT = 5,
    NORMALS = 6,
    SHININESS = 7,
    OPACITY = 8,
    DISPLACEMENT = 9,
    LIGHTMAP = 10,
    REFLECTION = 11,
    BASE_COLOR = 12,
    NORMAL_CAMERA = 13,
    EMISSION_COLOR = 14,
    METALNESS = 15,
    DIFFUSE_ROUGHNESS = 16,
    AMBIENT_OCCLUSION = 17,
    UNKNOWN = 18,
    SHEEN = 19,
    CLEARCOAT = 20,
    TRANSMISSION = 21,
    _,
};

pub const aiTextureOp = enum(c_int) {
    Multiply = 0x0,
    Add = 0x1,
    Subtract = 0x2,
    Divide = 0x3,
    SmoothAdd = 0x4,
    SignedAdd = 0x5,
    _,
};

pub const aiTextureMapMode = enum(c_int) {
    Wrap = 0x0,
    Clamp = 0x1,
    Decal = 0x3,
    Mirror = 0x2,
    _,
};

pub const aiTextureMapping = enum(c_int) {
    UV = 0x0,
    SPHERE = 0x1,
    CYLINDER = 0x2,
    BOX = 0x3,
    PLANE = 0x4,
    OTHER = 0x5,
    _,
};

pub const aiShadingMode = enum(c_int) {
    Flat = 0x1,
    Gouraud = 0x2,
    Phong = 0x3,
    Blinn = 0x4,
    Toon = 0x5,
    OrenNayar = 0x6,
    Minnaert = 0x7,
    CookTorrance = 0x8,
    NoShading = 0x9,
    Fresnel = 0xa,
    PBR_BRDF = 0xb,
    _,
};

pub const aiTextureFlags = enum(c_int) {
    Invert = 0x1,
    UseAlpha = 0x2,
    IgnoreAlpha = 0x4,
    _,
};

pub const aiBlendMode = enum(c_int) {
    Default = 0x0,
    Additive = 0x1,
    _,
};

pub const aiPropertyTypeInfo = enum(c_int) {
    Float = 0x1,
    Double = 0x2,
    String = 0x3,
    Integer = 0x4,
    Buffer = 0x5,
    _,
};

pub const aiAnimBehaviour = enum(c_int) {
    DEFAULT = 0x0,
    CONSTANT = 0x1,
    LINEAR = 0x2,
    REPEAT = 0x3,
    _,
};

pub const aiLightSourceType = enum(c_int) {
    UNDEFINED = 0x0,
    DIRECTIONAL = 0x1,
    POINT = 0x2,
    SPOT = 0x3,
    AMBIENT = 0x4,
    AREA = 0x5,
    _,
};

pub const aiMetadataType = enum(c_int) {
    BOOL = 0,
    INT32 = 1,
    UINT64 = 2,
    FLOAT = 3,
    DOUBLE = 4,
    AISTRING = 5,
    AIVECTOR3D = 6,
    AIMETADATA = 7,
    INT64 = 8,
    UINT32 = 9,
    META_MAX = 10,
    _,
};

pub const aiImporterFlags = enum(c_uint) {
    SupportTextFlavour = 0x1,
    SupportBinaryFlavour = 0x2,
    SupportCompressedFlavour = 0x4,
    LimitedSupport = 0x8,
    Experimental = 0x10,
    _,
};

pub const aiPostProcessSteps = packed struct(u32) {
    calc_tangent_space: bool = false,
    join_identical_vertices: bool = false,
    make_left_handed: bool = false,
    triangulate: bool = false,
    remove_component: bool = false,
    gen_normals: bool = false,
    gen_smooth_normals: bool = false,
    split_large_meshes: bool = false,
    pre_transform_vertices: bool = false,
    limit_bone_weights: bool = false,
    validate_data_structure: bool = false,
    improve_cache_locality: bool = false,
    remove_redundant_materials: bool = false,
    fix_infacing_normals: bool = false,
    populate_armature_data: bool = false,
    sort_by_ptype: bool = false,
    find_degenerates: bool = false,
    find_invalid_data: bool = false,
    gen_uv_coords: bool = false,
    transform_uv_coords: bool = false,
    find_instances: bool = false,
    optimize_meshes: bool = false,
    optimize_graph: bool = false,
    flip_uvs: bool = false,
    flip_winding_order: bool = false,
    split_by_bone_count: bool = false,
    debone: bool = false,
    global_scale: bool = false,
    embed_textures: bool = false,
    force_gen_normals: bool = false,
    drop_normals: bool = false,
    gen_bounding_boxes: bool = false,
};

pub const aiComponent = packed struct(u32) {
    normals: bool = false,
    tangents_and_bitangents: bool = false,
    colors: bool = false,
    texcoords: bool = false,
    boneweights: bool = false,
    animations: bool = false,
    textures: bool = false,
    lights: bool = false,
    cameras: bool = false,
    meshes: bool = false,
    materials: bool = false,
    _: u21 = 0,
};

pub const aiProcessPreset_TargetRealtime_Fast: c_uint = @bitCast(aiPostProcessSteps{
    .calc_tangent_space = true,
    .gen_normals = true,
    .join_identical_vertices = true,
    .triangulate = true,
    .gen_uv_coords = true,
    .sort_by_ptype = true,
});

pub const aiProcessPreset_TargetRealtime_Quality: c_uint = @bitCast(aiPostProcessSteps{
    .calc_tangent_space = true,
    .gen_smooth_normals = true,
    .join_identical_vertices = true,
    .improve_cache_locality = true,
    .limit_bone_weights = true,
    .remove_redundant_materials = true,
    .split_large_meshes = true,
    .triangulate = true,
    .gen_uv_coords = true,
    .sort_by_ptype = true,
    .find_degenerates = true,
    .find_invalid_data = true,
});

pub const aiProcessPreset_TargetRealtime_MaxQuality: c_uint = @bitCast(aiPostProcessSteps{
    .calc_tangent_space = true,
    .gen_smooth_normals = true,
    .join_identical_vertices = true,
    .improve_cache_locality = true,
    .limit_bone_weights = true,
    .remove_redundant_materials = true,
    .split_large_meshes = true,
    .triangulate = true,
    .gen_uv_coords = true,
    .sort_by_ptype = true,
    .find_degenerates = true,
    .find_invalid_data = true,
    .find_instances = true,
    .validate_data_structure = true,
    .optimize_meshes = true,
});

/// 2D vector with `x` and `y` components.
pub const aiVector2D = extern struct {
    x: ai_real,
    y: ai_real,
};

/// 3D vector with `x`, `y`, and `z` components.
pub const aiVector3D = extern struct {
    x: ai_real,
    y: ai_real,
    z: ai_real,
};

/// RGB color with `r`, `g`, `b` components in range [0, 1].
pub const aiColor3D = extern struct {
    r: ai_real,
    g: ai_real,
    b: ai_real,
};

/// RGBA color with `r`, `g`, `b`, `a` components in range [0, 1].
pub const aiColor4D = extern struct {
    r: ai_real,
    g: ai_real,
    b: ai_real,
    a: ai_real,
};

/// 3x3 row-major matrix with fields `a1`-`c3`.
pub const aiMatrix3x3 = extern struct {
    a1: ai_real, a2: ai_real, a3: ai_real,
    b1: ai_real, b2: ai_real, b3: ai_real,
    c1: ai_real, c2: ai_real, c3: ai_real,
};

/// 4x4 row-major matrix with fields `a1`-`d4`.
pub const aiMatrix4x4 = extern struct {
    a1: ai_real, a2: ai_real, a3: ai_real, a4: ai_real,
    b1: ai_real, b2: ai_real, b3: ai_real, b4: ai_real,
    c1: ai_real, c2: ai_real, c3: ai_real, c4: ai_real,
    d1: ai_real, d2: ai_real, d3: ai_real, d4: ai_real,
};

/// Quaternion with `w`, `x`, `y`, `z` components (w is the real part).
pub const aiQuaternion = extern struct {
    w: ai_real,
    x: ai_real,
    y: ai_real,
    z: ai_real,
};

/// Plane equation: `a*x + b*y + c*z + d = 0`.
pub const aiPlane = extern struct {
    a: ai_real,
    b: ai_real,
    c: ai_real,
    d: ai_real,
};

/// Ray with origin `pos` and direction `dir`.
pub const aiRay = extern struct {
    pos: aiVector3D,
    dir: aiVector3D,
};

/// Axis-aligned bounding box defined by `mMin` and `mMax` corners.
pub const aiAABB = extern struct {
    mMin: aiVector3D,
    mMax: aiVector3D,
};

/// UV coordinate transformation (translation, scaling, rotation).
pub const aiUVTransform = extern struct {
    mTranslation: aiVector2D,
    mScaling: aiVector2D,
    mRotation: ai_real,
};

pub const aiString = extern struct {
    length: ai_uint32,
    data: [1024]u8,

    pub fn toSlice(self: *const aiString) []const u8 {
        return self.data[0..self.length];
    }
};

pub const aiMemoryInfo = extern struct {
    textures: c_uint,
    materials: c_uint,
    meshes: c_uint,
    nodes: c_uint,
    animations: c_uint,
    cameras: c_uint,
    lights: c_uint,
    total: c_uint,
};

pub const aiPropertyStore = opaque {};

pub const aiLogStreamCallback = *const fn (message: [*:0]const u8, user: ?*anyopaque) callconv(.c) void;

pub const aiLogStream = extern struct {
    callback: ?aiLogStreamCallback,
    user: ?*anyopaque,
};

pub const aiExportFormatDesc = extern struct {
    id: ?[*:0]const u8,
    description: ?[*:0]const u8,
    fileExtension: ?[*:0]const u8,
};

pub const aiExportDataBlob = extern struct {
    size: usize,
    data: ?*anyopaque,
    name: aiString,
    next: ?*aiExportDataBlob,
};

pub const aiImporterDesc = extern struct {
    mName: ?[*:0]const u8,
    mAuthor: ?[*:0]const u8,
    mMaintainer: ?[*:0]const u8,
    mComments: ?[*:0]const u8,
    mFlags: c_uint,
    mMinMajor: c_uint,
    mMinMinor: c_uint,
    mMaxMajor: c_uint,
    mMaxMinor: c_uint,
    mFileExtensions: ?[*:0]const u8,
};

pub const aiFace = extern struct {
    mNumIndices: c_uint,
    mIndices: ?[*]c_uint,

    pub fn toSlice(self: *const aiFace) []const c_uint {
        if (self.mIndices) |ptr| return ptr[0..self.mNumIndices];
        return &[_]c_uint{};
    }
};

pub const aiVertexWeight = extern struct {
    mVertexId: c_uint,
    mWeight: ai_real,
};

/// A node in the imported scene hierarchy.
pub const aiNode = extern struct {
    mName: aiString,
    mTransformation: aiMatrix4x4,
    mParent: ?*aiNode,
    mNumChildren: c_uint,
    mChildren: ?[*]?*aiNode,
    mNumMeshes: c_uint,
    mMeshes: ?[*]c_uint,
    mMetaData: ?*aiMetadata,
};

pub const aiBone = extern struct {
    mName: aiString,
    mNumWeights: c_uint,
    mArmature: ?*aiNode,
    mNode: ?*aiNode,
    mWeights: ?[*]aiVertexWeight,
    mOffsetMatrix: aiMatrix4x4,
};

pub const aiAnimMesh = extern struct {
    mName: aiString,
    mVertices: ?[*]aiVector3D,
    mNormals: ?[*]aiVector3D,
    mTangents: ?[*]aiVector3D,
    mBitangents: ?[*]aiVector3D,
    mColors: [8]?[*]aiColor4D,
    mTextureCoords: [8]?[*]aiVector3D,
    mNumVertices: c_uint,
    mWeight: f32,
};

/// A mesh with vertices, faces, bones, and material reference.
pub const aiMesh = extern struct {
    mPrimitiveTypes: c_uint,
    mNumVertices: c_uint,
    mNumFaces: c_uint,
    mVertices: ?[*]aiVector3D,
    mNormals: ?[*]aiVector3D,
    mTangents: ?[*]aiVector3D,
    mBitangents: ?[*]aiVector3D,
    mColors: [8]?[*]aiColor4D,
    mTextureCoords: [8]?[*]aiVector3D,
    mNumUVComponents: [8]c_uint,
    mFaces: ?[*]aiFace,
    mNumBones: c_uint,
    mBones: ?[*]?*aiBone,
    mMaterialIndex: c_uint,
    mName: aiString,
    mNumAnimMeshes: c_uint,
    mAnimMeshes: ?[*]?*aiAnimMesh,
    mMethod: aiMorphingMethod,
    mAABB: aiAABB,
    mTextureCoordsNames: ?[*]?*aiString,
};

pub const aiSkeletonBone = extern struct {
    mParent: c_int,
    mArmature: ?*aiNode,
    mNode: ?*aiNode,
    mNumnWeights: c_uint,
    mMeshId: ?*aiMesh,
    mWeights: ?[*]aiVertexWeight,
    mOffsetMatrix: aiMatrix4x4,
    mLocalMatrix: aiMatrix4x4,
};

pub const aiSkeleton = extern struct {
    mName: aiString,
    mNumBones: c_uint,
    mBones: ?[*]?*aiSkeletonBone,
};

pub const aiMaterialProperty = extern struct {
    mKey: aiString,
    mSemantic: c_uint,
    mIndex: c_uint,
    mDataLength: c_uint,
    mType: aiPropertyTypeInfo,
    mData: ?[*]u8,
};

pub const aiMaterial = extern struct {
    mProperties: ?[*]?*aiMaterialProperty,
    mNumProperties: c_uint,
    mNumAllocated: c_uint,
};

pub const aiVectorKey = extern struct {
    mTime: f64,
    mValue: aiVector3D,
};

pub const aiQuatKey = extern struct {
    mTime: f64,
    mValue: aiQuaternion,
};

pub const aiMeshKey = extern struct {
    mTime: f64,
    mValue: c_uint,
};

pub const aiMeshMorphKey = extern struct {
    mTime: f64,
    mValues: ?[*]c_uint,
    mWeights: ?[*]f64,
    mNumValuesAndWeights: c_uint,
};

pub const aiNodeAnim = extern struct {
    mNodeName: aiString,
    mNumPositionKeys: c_uint,
    mPositionKeys: ?[*]aiVectorKey,
    mNumRotationKeys: c_uint,
    mRotationKeys: ?[*]aiQuatKey,
    mNumScalingKeys: c_uint,
    mScalingKeys: ?[*]aiVectorKey,
    mPreState: aiAnimBehaviour,
    mPostState: aiAnimBehaviour,
};

pub const aiMeshAnim = extern struct {
    mName: aiString,
    mNumKeys: c_uint,
    mKeys: ?[*]aiMeshKey,
};

pub const aiMeshMorphAnim = extern struct {
    mName: aiString,
    mNumKeys: c_uint,
    mKeys: ?[*]aiMeshMorphKey,
};

/// An animation consisting of keyframe data for multiple nodes/meshes.
pub const aiAnimation = extern struct {
    mName: aiString,
    mDuration: f64,
    mTicksPerSecond: f64,
    mNumChannels: c_uint,
    mChannels: ?[*]?*aiNodeAnim,
    mNumMeshChannels: c_uint,
    mMeshChannels: ?[*]?*aiMeshAnim,
    mNumMorphMeshChannels: c_uint,
    mMorphMeshChannels: ?[*]?*aiMeshMorphAnim,
};

pub const aiCamera = extern struct {
    mName: aiString,
    mPosition: aiVector3D,
    mUp: aiVector3D,
    mLookAt: aiVector3D,
    mHorizontalFOV: ai_real,
    mClipPlaneNear: ai_real,
    mClipPlaneFar: ai_real,
    mAspect: ai_real,
    mOrthographicWidth: ai_real,
};

pub const aiLight = extern struct {
    mName: aiString,
    mType: aiLightSourceType,
    mPosition: aiVector3D,
    mDirection: aiVector3D,
    mUp: aiVector3D,
    mAttenuationConstant: ai_real,
    mAttenuationLinear: ai_real,
    mAttenuationQuadratic: ai_real,
    mColorDiffuse: aiColor3D,
    mColorSpecular: aiColor3D,
    mColorAmbient: aiColor3D,
    mAngleInnerCone: ai_real,
    mAngleOuterCone: ai_real,
    mSize: aiVector3D,
};

pub const aiTexel = extern struct {
    b: u8,
    g: u8,
    r: u8,
    a: u8,
};

pub const aiTexture = extern struct {
    mWidth: c_uint,
    mHeight: c_uint,
    achFormatHint: [9]u8,
    pcData: ?*aiTexel,
    mFilename: aiString,
};

pub const aiMetadataEntry = extern struct {
    mType: aiMetadataType,
    mData: ?*anyopaque,
};

pub const aiMetadata = extern struct {
    mNumProperties: c_uint,
    mKeys: ?[*]aiString,
    mValues: ?[*]aiMetadataEntry,
};

/// Root data structure returned by the importer. Contains all meshes, materials, animations, etc.
pub const aiScene = extern struct {
    mFlags: c_uint,
    mRootNode: ?*aiNode,
    mNumMeshes: c_uint,
    mMeshes: ?[*]?*aiMesh,
    mNumMaterials: c_uint,
    mMaterials: ?[*]?*aiMaterial,
    mNumAnimations: c_uint,
    mAnimations: ?[*]?*aiAnimation,
    mNumTextures: c_uint,
    mTextures: ?[*]?*aiTexture,
    mNumLights: c_uint,
    mLights: ?[*]?*aiLight,
    mNumCameras: c_uint,
    mCameras: ?[*]?*aiCamera,
    mMetaData: ?*aiMetadata,
    mName: aiString,
    mNumSkeletons: c_uint,
    mSkeletons: ?[*]?*aiSkeleton,
    mPrivate: ?*anyopaque,
};

pub const aiFileWriteProc = *const fn (file: *aiFile, data: ?[*]const u8, size: usize, count: usize) callconv(.c) usize;
pub const aiFileReadProc = *const fn (file: *aiFile, data: ?[*]u8, size: usize, count: usize) callconv(.c) usize;
pub const aiFileTellProc = *const fn (file: *aiFile) callconv(.c) usize;
pub const aiFileFlushProc = *const fn (file: *aiFile) callconv(.c) void;
pub const aiFileSeek = *const fn (file: *aiFile, offset: usize, origin: aiOrigin) callconv(.c) aiReturn;
pub const aiFileOpenProc = *const fn (io: *aiFileIO, path: [*:0]const u8, mode: [*:0]const u8) callconv(.c) ?*aiFile;
pub const aiFileCloseProc = *const fn (io: *aiFileIO, file: *aiFile) callconv(.c) void;

pub const aiFileIO = extern struct {
    OpenProc: aiFileOpenProc,
    CloseProc: aiFileCloseProc,
    UserData: aiUserData,
};

pub const aiFile = extern struct {
    ReadProc: aiFileReadProc,
    WriteProc: aiFileWriteProc,
    TellProc: aiFileTellProc,
    FileSizeProc: aiFileTellProc,
    SeekProc: aiFileSeek,
    FlushProc: aiFileFlushProc,
    UserData: aiUserData,
};

pub const AI_CONFIG_PP_CT_MAX_SMOOTHING_ANGLE = "PP_CT_MAX_SMOOTHING_ANGLE";
pub const AI_CONFIG_PP_GSN_MAX_SMOOTHING_ANGLE = "PP_GSN_MAX_SMOOTHING_ANGLE";
pub const AI_CONFIG_PP_SLM_VERTEX_LIMIT = "PP_SLM_VERTEX_LIMIT";
pub const AI_CONFIG_PP_SLM_TRIANGLE_LIMIT = "PP_SLM_TRIANGLE_LIMIT";
pub const AI_CONFIG_PP_LBW_MAX_WEIGHTS = "PP_LBW_MAX_WEIGHTS";
pub const AI_CONFIG_PP_DB_THRESHOLD = "PP_DB_THRESHOLD";
pub const AI_CONFIG_PP_DB_ALL_OR_NONE = "PP_DB_ALL_OR_NONE";
pub const AI_CONFIG_PP_PTV_KEEP_HIERARCHY = "PP_PTV_KEEP_HIERARCHY";
pub const AI_CONFIG_PP_PTV_NORMALIZE = "PP_PTV_NORMALIZE";
pub const AI_CONFIG_PP_RVC_FLAGS = "PP_RVC_FLAGS";
pub const AI_CONFIG_PP_SBP_REMOVE = "PP_SBP_REMOVE";
pub const AI_CONFIG_PP_FD_REMOVE = "PP_FD_REMOVE";
pub const AI_CONFIG_PP_FD_CHECKAREA = "PP_FD_CHECKAREA";
pub const AI_CONFIG_PP_OG_EXCLUDE_LIST = "PP_OG_EXCLUDE_LIST";
pub const AI_CONFIG_PP_ICL_PTCACHE_SIZE = "PP_ICL_PTCACHE_SIZE";
pub const AI_CONFIG_PP_RRM_EXCLUDE_LIST = "PP_RRM_EXCLUDE_LIST";
pub const AI_CONFIG_PP_FID_ANIM_ACCURACY = "PP_FID_ANIM_ACCURACY";
pub const AI_CONFIG_GLOBAL_SCALE_FACTOR_KEY = "GLOBAL_SCALE_FACTOR";
pub const AI_CONFIG_GLOBAL_SCALE_FACTOR_DEFAULT = "GLOBAL_SCALE_FACTOR_DEFAULT";
pub const AI_CONFIG_EXPORT_BLOB_NAME = "EXPORT_BLOB_NAME";
pub const AI_CONFIG_IMPORT_SEARCH_PATH = "IMPORT_SEARCH_PATH";
pub const AI_CONFIG_IMPORT_FBX_PRESERVE_PIVOTS = "IMPORT_FBX_PRESERVE_PIVOTS";
pub const AI_CONFIG_IMPORT_FBX_READ_ALL_GEOMETRY_LAYERS = "IMPORT_FBX_READ_ALL_GEOMETRY_LAYERS";
pub const AI_CONFIG_IMPORT_FBX_READ_MATERIALS = "IMPORT_FBX_READ_MATERIALS";
pub const AI_CONFIG_IMPORT_FBX_READ_TEXTURES = "IMPORT_FBX_READ_TEXTURES";
pub const AI_CONFIG_IMPORT_FBX_READ_CAMERAS = "IMPORT_FBX_READ_CAMERAS";
pub const AI_CONFIG_IMPORT_FBX_READ_LIGHTS = "IMPORT_FBX_READ_LIGHTS";
pub const AI_CONFIG_IMPORT_FBX_READ_ANIMATIONS = "IMPORT_FBX_READ_ANIMATIONS";
pub const AI_CONFIG_IMPORT_FBX_STRICT_MODE = "IMPORT_FBX_STRICT_MODE";
pub const AI_CONFIG_IMPORT_FBX_CONVERT_TO_M = "AI_CONFIG_FBX_CONVERT_TO_M";
pub const AI_CONFIG_IMPORT_FBX_EMBEDDED_TEXTURES_LEGACY_NAMING = "AI_CONFIG_IMPORT_FBX_EMBEDDED_TEXTURES_LEGACY_NAMING";
pub const AI_CONFIG_IMPORT_FBX_OPTIMIZE_EMPTY_ANIMATION_CURVES = "IMPORT_FBX_OPTIMIZE_EMPTY_ANIMATION_CURVES";
pub const AI_CONFIG_IMPORT_FBX_BONE_NAME_MAPPING = "IMPORT_FBX_BONE_NAME_MAPPING";
pub const AI_CONFIG_EXPORT_FBX_STRICT_MODE = "EXPORT_FBX_STRICT_MODE";
pub const AI_CONFIG_IMPORT_GLOBAL_KEYFRAME = "IMPORT_GLOBAL_KEYFRAME";
pub const AI_CONFIG_IMPORT_MD_NO_PARSE_MAT_FILE = "IMPORT_MD_NO_PARSE_MAT_FILE";
pub const AI_CONFIG_IMPORT_MD_HANDLE_MULTIPLE_MATERIALS = "IMPORT_MD_HANDLE_MULTIPLE_MATERIALS";
pub const AI_CONFIG_IMPORT_MDL_COLORMAP = "IMPORT_MDL_COLORMAP";
pub const AI_CONFIG_IMPORT_MDL_AMBIENT_MAP = "IMPORT_MDL_AMBIENT_MAP";
pub const AI_CONFIG_IMPORT_MDL_OPACITY_MAP = "IMPORT_MDL_OPACITY_MAP";
pub const AI_CONFIG_IMPORT_MDL_BUMP_MAP = "IMPORT_MDL_BUMP_MAP";
pub const AI_CONFIG_IMPORT_MDL_GLOSS_MAP = "IMPORT_MDL_GLOSS_MAP";
pub const AI_CONFIG_IMPORT_MDL_SPECULAR_MAP = "IMPORT_MDL_SPECULAR_MAP";
pub const AI_CONFIG_IMPORT_MDL_SECOND_SPECULAR_MAP = "IMPORT_MDL_SECOND_SPECULAR_MAP";
pub const AI_CONFIG_IMPORT_MDL_SUBSURFACE_MAP = "IMPORT_MDL_SUBSURFACE_MAP";
pub const AI_CONFIG_IMPORT_MDL_IRIDESCENCE_MAP = "IMPORT_MDL_IRIDESCENCE_MAP";
pub const AI_CONFIG_IMPORT_MDL_WARP_MAP = "IMPORT_MDL_WARP_MAP";
pub const AI_CONFIG_IMPORT_MDL_DEBOSS_MAP = "IMPORT_MDL_DEBOSS_MAP";
pub const AI_CONFIG_IMPORT_MDL_GIMME_EYE_SPACE_MAP = "IMPORT_MDL_GIMME_EYE_SPACE_MAP";
pub const AI_CONFIG_IMPORT_IFC_SKIP_SPACE_REPRESENTATIONS = "IMPORT_IFC_SKIP_SPACE_REPRESENTATIONS";
pub const AI_CONFIG_IMPORT_IFC_CUSTOM_TRIANGULATION = "IMPORT_IFC_CUSTOM_TRIANGULATION";
pub const AI_CONFIG_IMPORT_IFC_SMOOTHING_ANGLE = "IMPORT_IFC_SMOOTHING_ANGLE";
pub const AI_CONFIG_IMPORT_OBJ_SEPARATE_GROUPS_BY_MATERIAL = "IMPORT_OBJ_SEPARATE_GROUPS_BY_MATERIAL";
pub const AI_CONFIG_IMPORT_OBJ_CLAMP_SIZE = "IMPORT_OBJ_CLAMP_SIZE";
pub const AI_CONFIG_IMPORT_OBJ_SEPARATE_GROUPS = "IMPORT_OBJ_SEPARATE_GROUPS";
pub const AI_CONFIG_IMPORT_OBJ_SEPARATE_MULTIFILE = "IMPORT_OBJ_SEPARATE_MULTIFILE";
pub const AI_CONFIG_IMPORT_OBJ_USE_INDICES_FOR_MATERIAL_GROUPS = "IMPORT_OBJ_USE_INDICES_FOR_MATERIAL_GROUPS";
pub const AI_CONFIG_IMPORT_OGRE_MATERIAL_FILE = "IMPORT_OGRE_MATERIAL_FILE";
pub const AI_CONFIG_IMPORT_OGRE_TEXTURETYPE_FROM_FILENAME = "IMPORT_OGRE_TEXTURETYPE_FROM_FILENAME";
pub const AI_CONFIG_IMPORT_OGRE_CHOOSE_MATERIAL_AREA_MODE = "IMPORT_OGRE_CHOOSE_MATERIAL_AREA_MODE";
pub const AI_CONFIG_IMPORT_GLTF_NUM_MESH_ANGLES = "IMPORT_GLTF_NUM_MESH_ANGLES";
pub const AI_CONFIG_IMPORT_GLTF_SKIN_HACK = "IMPORT_GLTF_SKIN_HACK";
pub const AI_CONFIG_IMPORT_GLTF_USE_IMAGENAME = "IMPORT_GLTF_USE_IMAGENAME";
pub const AI_CONFIG_IMPORT_GLTF_USE_EMBEDDED_EXTENSIONS = "IMPORT_GLTF_USE_EMBEDDED_EXTENSIONS";
pub const AI_CONFIG_IMPORT_COLLADA_IGNORE_UP_DIRECTION = "IMPORT_COLLADA_IGNORE_UP_DIRECTION";
pub const AI_CONFIG_IMPORT_STEP_USE_CUSTOM_FRAME = "IMPORT_STEP_USE_CUSTOM_FRAME";
pub const AI_CONFIG_IMPORT_3DS_SEPARATE_MULTIPLE_MATERIALS = "IMPORT_3DS_SEPARATE_MULTIPLE_MATERIALS";
pub const AI_CONFIG_IMPORT_3DS_REMOVE_AMBIENT_FROM_TEX = "IMPORT_3DS_REMOVE_AMBIENT_FROM_TEX";
pub const AI_CONFIG_IMPORT_3DS_USE_IMAGE_SEARCH_MODULE = "IMPORT_3DS_USE_IMAGE_SEARCH_MODULE";
pub const AI_CONFIG_IMPORT_LWO_ONE_NORMAL_ONE_UV = "IMPORT_LWO_ONE_NORMAL_ONE_UV";
pub const AI_CONFIG_IMPORT_MD3_LOAD_SKIN = "IMPORT_MD3_LOAD_SKIN";
pub const AI_CONFIG_IMPORT_MD3_SHADER_SRC = "IMPORT_MD3_SHADER_SRC";
pub const AI_CONFIG_IMPORT_MD3_SHADER_SRC_REFERENCE = "IMPORT_MD3_SHADER_SRC_REFERENCE";
pub const AI_CONFIG_IMPORT_MD3_SKIN_NAME = "IMPORT_MD3_SKIN_NAME";
pub const AI_CONFIG_IMPORT_TER_MAKE_UVS = "IMPORT_TER_MAKE_UVS";
pub const AI_CONFIG_IMPORT_AC_SEPARATE_BFCULL = "IMPORT_AC_SEPARATE_BFCULL";
pub const AI_CONFIG_IMPORT_AC_EVAL_SUBDIVISION = "IMPORT_AC_EVAL_SUBDIVISION";
pub const AI_CONFIG_IMPORT_UNREAL_KEYWORDS = "IMPORT_UNREAL_KEYWORDS";
pub const AI_CONFIG_IMPORT_UNREAL_HANDLE_FLAGS = "UNREAL_HANDLE_FLAGS";
pub const AI_CONFIG_GLOB_MEASURE_TIME = "GLOB_MEASURE_TIME";
pub const AI_CONFIG_IMPORT_NO_SKELETON_MESHES = "IMPORT_NO_SKELETON_MESHES";
pub const AI_CONFIG_PP_SBBC_MAX_BONES = "PP_SBBC_MAX_BONES";
pub const AI_CONFIG_PP_CT_TEXTURE_CHANNEL_INDEX = "PP_CT_TEXTURE_CHANNEL_INDEX";
pub const AI_CONFIG_PP_PTV_ADD_ROOT_TRANSFORMATION = "PP_PTV_ADD_ROOT_TRANSFORMATION";
pub const AI_CONFIG_PP_PTV_ROOT_TRANSFORMATION = "PP_PTV_ROOT_TRANSFORMATION";
pub const AI_CONFIG_PP_FID_IGNORE_TEXTURECOORDS = "PP_FID_IGNORE_TEXTURECOORDS";
pub const AI_CONFIG_PP_TUV_EVALUATE = "PP_TUV_EVALUATE";
pub const AI_CONFIG_FAVOUR_SPEED = "FAVOUR_SPEED";
pub const AI_CONFIG_IMPORT_SCHEMA_DOCUMENT_PROVIDER = "IMPORT_SCHEMA_DOCUMENT_PROVIDER";
pub const AI_CONFIG_IMPORT_FBX_READ_ALL_MATERIALS = "IMPORT_FBX_READ_ALL_MATERIALS";
pub const AI_CONFIG_IMPORT_FBX_READ_WEIGHTS = "IMPORT_FBX_READ_WEIGHTS";
pub const AI_CONFIG_IMPORT_REMOVE_EMPTY_BONES = "AI_CONFIG_IMPORT_REMOVE_EMPTY_BONES";
pub const AI_CONFIG_FBX_CONVERT_TO_M = "AI_CONFIG_FBX_CONVERT_TO_M";
pub const AI_CONFIG_FBX_USE_SKELETON_BONE_CONTAINER = "AI_CONFIG_FBX_USE_SKELETON_BONE_CONTAINER";
pub const AI_CONFIG_IMPORT_MD3_KEYFRAME = "IMPORT_MD3_KEYFRAME";
pub const AI_CONFIG_IMPORT_MD2_KEYFRAME = "IMPORT_MD2_KEYFRAME";
pub const AI_CONFIG_IMPORT_MDL_KEYFRAME = "IMPORT_MDL_KEYFRAME";
pub const AI_CONFIG_IMPORT_MDC_KEYFRAME = "IMPORT_MDC_KEYFRAME";
pub const AI_CONFIG_IMPORT_SMD_KEYFRAME = "IMPORT_SMD_KEYFRAME";
pub const AI_CONFIG_IMPORT_UNREAL_KEYFRAME = "IMPORT_UNREAL_KEYFRAME";
pub const AI_CONFIG_IMPORT_MDL_HL1_READ_ANIMATIONS = "IMPORT_MDL_HL1_READ_ANIMATIONS";
pub const AI_CONFIG_IMPORT_MDL_HL1_READ_ANIMATION_EVENTS = "IMPORT_MDL_HL1_READ_ANIMATION_EVENTS";
pub const AI_CONFIG_IMPORT_MDL_HL1_READ_BLEND_CONTROLLERS = "IMPORT_MDL_HL1_READ_BLEND_CONTROLLERS";
pub const AI_CONFIG_IMPORT_MDL_HL1_READ_SEQUENCE_TRANSITIONS = "IMPORT_MDL_HL1_READ_SEQUENCE_TRANSITIONS";
pub const AI_CONFIG_IMPORT_MDL_HL1_READ_ATTACHMENTS = "IMPORT_MDL_HL1_READ_ATTACHMENTS";
pub const AI_CONFIG_IMPORT_MDL_HL1_READ_BONE_CONTROLLERS = "IMPORT_MDL_HL1_READ_BONE_CONTROLLERS";
pub const AI_CONFIG_IMPORT_MDL_HL1_READ_HITBOXES = "IMPORT_MDL_HL1_READ_HITBOXES";
pub const AI_CONFIG_IMPORT_MDL_HL1_READ_MISC_GLOBAL_INFO = "IMPORT_MDL_HL1_READ_MISC_GLOBAL_INFO";
pub const AI_CONFIG_IMPORT_SMD_LOAD_ANIMATION_LIST = "IMPORT_SMD_LOAD_ANIMATION_LIST";
pub const AI_CONFIG_IMPORT_ASE_RECONSTRUCT_NORMALS = "IMPORT_ASE_RECONSTRUCT_NORMALS";
pub const AI_CONFIG_IMPORT_MD3_HANDLE_MULTIPART = "IMPORT_MD3_HANDLE_MULTIPART";
pub const AI_CONFIG_IMPORT_MD3_LOAD_SHADERS = "IMPORT_MD3_LOAD_SHADERS";
pub const AI_CONFIG_IMPORT_LWO_ONE_LAYER_ONLY = "IMPORT_LWO_ONE_LAYER_ONLY";
pub const AI_CONFIG_IMPORT_MD5_NO_ANIM_AUTOLOAD = "IMPORT_MD5_NO_ANIM_AUTOLOAD";
pub const AI_CONFIG_IMPORT_LWS_ANIM_START = "IMPORT_LWS_ANIM_START";
pub const AI_CONFIG_IMPORT_LWS_ANIM_END = "IMPORT_LWS_ANIM_END";
pub const AI_CONFIG_IMPORT_IRR_ANIM_FPS = "IMPORT_IRR_ANIM_FPS";
pub const AI_CONFIG_ANDROID_JNI_ASSIMP_MANAGER_SUPPORT = "AI_CONFIG_ANDROID_JNI_ASSIMP_MANAGER_SUPPORT";
pub const AI_CONFIG_IMPORT_IFC_CYLINDRICAL_TESSELLATION = "IMPORT_IFC_CYLINDRICAL_TESSELLATION";
pub const AI_CONFIG_IMPORT_COLLADA_IGNORE_UNIT_SIZE = "IMPORT_COLLADA_IGNORE_UNIT_SIZE";
pub const AI_CONFIG_IMPORT_COLLADA_USE_COLLADA_NAMES = "IMPORT_COLLADA_USE_COLLADA_NAMES";
pub const AI_CONFIG_EXPORT_XFILE_64BIT = "EXPORT_XFILE_64BIT";
pub const AI_CONFIG_EXPORT_POINT_CLOUDS = "EXPORT_POINT_CLOUDS";
pub const AI_CONFIG_USE_GLTF_PBR_SPECULAR_GLOSSINESS = "USE_GLTF_PBR_SPECULAR_GLOSSINESS";
pub const AI_CONFIG_APP_SCALE_KEY = "APP_SCALE_FACTOR";

pub const AI_MATKEY_NAME = "$mat.name";
pub const AI_MATKEY_TWOSIDED = "$mat.twosided";
pub const AI_MATKEY_SHADING_MODEL = "$mat.shadingm";
pub const AI_MATKEY_ENABLE_WIREFRAME = "$mat.wireframe";
pub const AI_MATKEY_BLEND_FUNC = "$mat.blend";
pub const AI_MATKEY_OPACITY = "$mat.opacity";
pub const AI_MATKEY_TRANSPARENCYFACTOR = "$mat.transparencyfactor";
pub const AI_MATKEY_BUMPSCALING = "$mat.bumpscaling";
pub const AI_MATKEY_SHININESS = "$mat.shininess";
pub const AI_MATKEY_REFLECTIVITY = "$mat.reflectivity";
pub const AI_MATKEY_SHININESS_STRENGTH = "$mat.shinpercent";
pub const AI_MATKEY_REFRACTI = "$mat.refracti";
pub const AI_MATKEY_COLOR_DIFFUSE = "$clr.diffuse";
pub const AI_MATKEY_COLOR_AMBIENT = "$clr.ambient";
pub const AI_MATKEY_COLOR_SPECULAR = "$clr.specular";
pub const AI_MATKEY_COLOR_EMISSIVE = "$clr.emissive";
pub const AI_MATKEY_COLOR_TRANSPARENT = "$clr.transparent";
pub const AI_MATKEY_COLOR_REFLECTIVE = "$clr.reflective";
pub const AI_MATKEY_GLOBAL_BACKGROUND_IMAGE = "?bg.global";
pub const AI_MATKEY_GLOBAL_SHADERLANG = "?sh.lang";
pub const AI_MATKEY_SHADER_VERTEX = "?sh.vs";
pub const AI_MATKEY_SHADER_FRAGMENT = "?sh.fs";
pub const AI_MATKEY_SHADER_GEO = "?sh.gs";
pub const AI_MATKEY_SHADER_TESSELATION = "?sh.ts";
pub const AI_MATKEY_SHADER_PRIMITIVE = "?sh.ps";
pub const AI_MATKEY_SHADER_COMPUTE = "?sh.cs";
pub const AI_MATKEY_BASE_COLOR = "$clr.base";
pub const AI_MATKEY_METALLIC_FACTOR = "$mat.metallicFactor";
pub const AI_MATKEY_ROUGHNESS_FACTOR = "$mat.roughnessFactor";
pub const AI_MATKEY_ANISOTROPY_FACTOR = "$mat.anisotropyFactor";
pub const AI_MATKEY_SPECULAR_FACTOR = "$mat.specularFactor";
pub const AI_MATKEY_GLOSSINESS_FACTOR = "$mat.glossinessFactor";
pub const AI_MATKEY_SHEEN_COLOR_FACTOR = "$clr.sheen.factor";
pub const AI_MATKEY_SHEEN_ROUGHNESS_FACTOR = "$mat.sheen.roughnessFactor";
pub const AI_MATKEY_CLEARCOAT_FACTOR = "$mat.clearcoat.factor";
pub const AI_MATKEY_CLEARCOAT_ROUGHNESS_FACTOR = "$mat.clearcoat.roughnessFactor";
pub const AI_MATKEY_TRANSMISSION_FACTOR = "$mat.transmission.factor";
pub const AI_MATKEY_VOLUME_THICKNESS_FACTOR = "$mat.volume.thicknessFactor";
pub const AI_MATKEY_VOLUME_ATTENUATION_DISTANCE = "$mat.volume.attenuationDistance";
pub const AI_MATKEY_VOLUME_ATTENUATION_COLOR = "$mat.volume.attenuationColor";
pub const AI_MATKEY_EMISSIVE_INTENSITY = "$mat.emissiveIntensity";
pub const AI_MATKEY_USE_COLOR_MAP = "$mat.useColorMap";
pub const AI_MATKEY_USE_METALLIC_MAP = "$mat.useMetallicMap";
pub const AI_MATKEY_USE_ROUGHNESS_MAP = "$mat.useRoughnessMap";
pub const AI_MATKEY_USE_EMISSIVE_MAP = "$mat.useEmissiveMap";
pub const AI_MATKEY_USE_AO_MAP = "$mat.useAOMap";
pub const AI_MATKEY_TEXTURE_BASE = "$tex.file";
pub const AI_MATKEY_UVWSRC_BASE = "$tex.uvwsrc";
pub const AI_MATKEY_TEXOP_BASE = "$tex.op";
pub const AI_MATKEY_MAPPING_BASE = "$tex.mapping";
pub const AI_MATKEY_TEXBLEND_BASE = "$tex.blend";
pub const AI_MATKEY_MAPPINGMODE_U_BASE = "$tex.mapmodeu";
pub const AI_MATKEY_MAPPINGMODE_V_BASE = "$tex.mapmodev";
pub const AI_MATKEY_TEXMAP_AXIS_BASE = "$tex.mapaxis";
pub const AI_MATKEY_UVTRANSFORM_BASE = "$tex.uvtrafo";
pub const AI_MATKEY_TEXFLAGS_BASE = "$tex.flags";

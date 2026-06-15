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

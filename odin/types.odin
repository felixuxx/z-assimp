package assimp

ASSIMP_USE_DOUBLE_PRECISION :: #config(ASSIMP_USE_DOUBLE_PRECISION, false)

when ASSIMP_USE_DOUBLE_PRECISION {
    ai_real :: f64
} else {
    ai_real :: f32
}

ai_int   :: i32
ai_uint  :: u32
ai_int32 :: i32
ai_uint32 :: u32

aiBool :: i32
AI_TRUE  :: aiBool(1)
AI_FALSE :: aiBool(0)

aiUserData :: rawptr

AI_MATH_PI     :: 3.14159265358979323846
AI_MATH_TWO_PI :: AI_MATH_PI * 2.0
AI_MATH_HALF_PI :: AI_MATH_PI * 0.5

AI_MATH_PI_F :: 3.1415926538
AI_MATH_TWO_PI_F :: AI_MATH_PI_F * 2.0
AI_MATH_HALF_PI_F :: AI_MATH_PI_F * 0.5

AI_DEG_TO_RAD :: proc(x: $T) -> ai_real { return ai_real(f64(x) * 0.0174532925) }
AI_RAD_TO_DEG :: proc(x: $T) -> ai_real { return ai_real(f64(x) * 57.2957795) }

ai_epsilon :: ai_real(1e-6)

MAXLEN :: 1024
AI_MAX_FACE_INDICES :: 0x7fff
AI_MAX_BONE_WEIGHTS :: 0x7fffffff
AI_MAX_VERTICES :: 0x7fffffff
AI_MAX_FACES :: 0x7fffffff
AI_MAX_NUMBER_OF_COLOR_SETS :: 8
AI_MAX_NUMBER_OF_TEXTURECOORDS :: 8

AI_SCENE_FLAGS_INCOMPLETE              :: 0x1
AI_SCENE_FLAGS_VALIDATED               :: 0x2
AI_SCENE_FLAGS_VALIDATION_WARNING      :: 0x4
AI_SCENE_FLAGS_NON_VERBOSE_FORMAT      :: 0x8
AI_SCENE_FLAGS_TERRAIN                 :: 0x10
AI_SCENE_FLAGS_ALLOW_SHARED            :: 0x20

AI_DEFAULT_MATERIAL_NAME :: "DefaultMaterial"
AI_TEXTURE_TYPE_MAX :: 27
AI_EMBEDDED_TEXNAME_PREFIX :: "*"

ASSIMP_CFLAGS_SHARED           :: 0x1
ASSIMP_CFLAGS_STLPORT          :: 0x2
ASSIMP_CFLAGS_DEBUG            :: 0x4
ASSIMP_CFLAGS_NOBOOST          :: 0x8
ASSIMP_CFLAGS_SINGLETHREADED   :: 0x10
ASSIMP_CFLAGS_DOUBLE_SUPPORT   :: 0x20

// --- enums ---

aiReturn :: enum i32 {
    SUCCESS = 0,
    FAILURE = -1,
    OUTOFMEMORY = -3,
}

aiOrigin :: enum i32 {
    SET = 0x0,
    CUR = 0x1,
    END = 0x2,
}

aiDefaultLogStream :: enum i32 {
    FILE = 0x1,
    STDOUT = 0x2,
    STDERR = 0x4,
    DEBUGGER = 0x8,
}

aiPrimitiveType :: enum u32 {
    POINT = 0x1,
    LINE = 0x2,
    TRIANGLE = 0x4,
    POLYGON = 0x8,
    NGON_ENCODING_FLAG = 0x10,
}

aiMorphingMethod :: enum i32 {
    UNKNOWN = 0x0,
    VERTEX_BLEND = 0x1,
    MORPH_NORMALIZED = 0x2,
    MORPH_RELATIVE = 0x3,
}

aiTextureType :: enum i32 {
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
    MAYA_BASE = 22,
    MAYA_SPECULAR = 23,
    MAYA_SPECULAR_COLOR = 24,
    MAYA_SPECULAR_ROUGHNESS = 25,
    ANISOTROPY = 26,
    GLTF_METALLIC_ROUGHNESS = 27,
}

aiTextureOp :: enum i32 {
    Multiply = 0x0,
    Add = 0x1,
    Subtract = 0x2,
    Divide = 0x3,
    SmoothAdd = 0x4,
    SignedAdd = 0x5,
}

aiTextureMapMode :: enum i32 {
    Wrap = 0x0,
    Clamp = 0x1,
    Decal = 0x3,
    Mirror = 0x2,
}

aiTextureMapping :: enum i32 {
    UV = 0x0,
    SPHERE = 0x1,
    CYLINDER = 0x2,
    BOX = 0x3,
    PLANE = 0x4,
    OTHER = 0x5,
}

aiShadingMode :: enum i32 {
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
}

aiTextureFlags :: enum i32 {
    Invert = 0x1,
    UseAlpha = 0x2,
    IgnoreAlpha = 0x4,
}

aiBlendMode :: enum i32 {
    Default = 0x0,
    Additive = 0x1,
}

aiPropertyTypeInfo :: enum i32 {
    Float = 0x1,
    Double = 0x2,
    String = 0x3,
    Integer = 0x4,
    Buffer = 0x5,
}

aiAnimInterpolation :: enum i32 {
    Step = 0x0,
    Linear = 0x1,
    SphericalLinear = 0x2,
    CubicSpline = 0x3,
}

aiAnimBehaviour :: enum i32 {
    DEFAULT = 0x0,
    CONSTANT = 0x1,
    LINEAR = 0x2,
    REPEAT = 0x3,
}

aiLightSourceType :: enum i32 {
    UNDEFINED = 0x0,
    DIRECTIONAL = 0x1,
    POINT = 0x2,
    SPOT = 0x3,
    AMBIENT = 0x4,
    AREA = 0x5,
}

aiMetadataType :: enum i32 {
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
}

aiImporterFlags :: enum u32 {
    SupportTextFlavour = 0x1,
    SupportBinaryFlavour = 0x2,
    SupportCompressedFlavour = 0x4,
    LimitedSupport = 0x8,
    Experimental = 0x10,
}

// --- bit_fields ---

aiPostProcessSteps :: bit_field u32 {
    calc_tangent_space: bool | 1,
    join_identical_vertices: bool | 1,
    make_left_handed: bool | 1,
    triangulate: bool | 1,
    remove_component: bool | 1,
    gen_normals: bool | 1,
    gen_smooth_normals: bool | 1,
    split_large_meshes: bool | 1,
    pre_transform_vertices: bool | 1,
    limit_bone_weights: bool | 1,
    validate_data_structure: bool | 1,
    improve_cache_locality: bool | 1,
    remove_redundant_materials: bool | 1,
    fix_infacing_normals: bool | 1,
    populate_armature_data: bool | 1,
    sort_by_ptype: bool | 1,
    find_degenerates: bool | 1,
    find_invalid_data: bool | 1,
    gen_uv_coords: bool | 1,
    transform_uv_coords: bool | 1,
    find_instances: bool | 1,
    optimize_meshes: bool | 1,
    optimize_graph: bool | 1,
    flip_uvs: bool | 1,
    flip_winding_order: bool | 1,
    split_by_bone_count: bool | 1,
    debone: bool | 1,
    global_scale: bool | 1,
    embed_textures: bool | 1,
    force_gen_normals: bool | 1,
    drop_normals: bool | 1,
    gen_bounding_boxes: bool | 1,
}

aiComponent :: bit_field u32 {
    _reserved_0: bool | 1,
    normals: bool | 1,
    tangents_and_bitangents: bool | 1,
    colors: bool | 1,
    texcoords: bool | 1,
    boneweights: bool | 1,
    animations: bool | 1,
    textures: bool | 1,
    lights: bool | 1,
    cameras: bool | 1,
    meshes: bool | 1,
    materials: bool | 1,
}

aiProcessPreset_TargetRealtime_Fast :: aiPostProcessSteps(0x4802B)
aiProcessPreset_TargetRealtime_Quality :: aiPostProcessSteps(0x79ACB)
aiProcessPreset_TargetRealtime_MaxQuality :: aiPostProcessSteps(0x379ECB)

// --- extern structs ---

aiVector2D :: struct {
    x: ai_real,
    y: ai_real,
}

aiVector3D :: struct {
    x: ai_real,
    y: ai_real,
    z: ai_real,
}

aiColor3D :: struct {
    r: ai_real,
    g: ai_real,
    b: ai_real,
}

aiColor4D :: struct {
    r: ai_real,
    g: ai_real,
    b: ai_real,
    a: ai_real,
}

aiMatrix3x3 :: struct {
    a1: ai_real, a2: ai_real, a3: ai_real,
    b1: ai_real, b2: ai_real, b3: ai_real,
    c1: ai_real, c2: ai_real, c3: ai_real,
}

aiMatrix4x4 :: struct {
    a1: ai_real, a2: ai_real, a3: ai_real, a4: ai_real,
    b1: ai_real, b2: ai_real, b3: ai_real, b4: ai_real,
    c1: ai_real, c2: ai_real, c3: ai_real, c4: ai_real,
    d1: ai_real, d2: ai_real, d3: ai_real, d4: ai_real,
}

aiQuaternion :: struct {
    w: ai_real,
    x: ai_real,
    y: ai_real,
    z: ai_real,
}

aiPlane :: struct {
    a: ai_real,
    b: ai_real,
    c: ai_real,
    d: ai_real,
}

aiRay :: struct {
    pos: aiVector3D,
    dir: aiVector3D,
}

aiAABB :: struct {
    min: aiVector3D,
    max: aiVector3D,
}

aiUVTransform :: struct {
    translation: aiVector2D,
    scaling: aiVector2D,
    rotation: ai_real,
}

aiString :: struct {
    length: u32,
    data: [MAXLEN]u8,
}

aiString_to_slice :: proc(s: ^aiString) -> string {
    return string(s.data[:s.length])
}

aiString_from_slice :: proc(slice: string) -> aiString {
    s: aiString
    len := min(len(slice), MAXLEN - 1)
    s.length = u32(len)
    for i in 0 ..< len {
        s.data[i] = slice[i]
    }
    s.data[len] = 0
    return s
}

aiMemoryInfo :: struct {
    textures: u32,
    materials: u32,
    meshes: u32,
    nodes: u32,
    animations: u32,
    cameras: u32,
    lights: u32,
    total: u32,
}

aiPropertyStore :: struct {}

aiLogStreamCallback :: #type proc "c" (message: cstring, user: rawptr)

aiLogStream :: struct {
    callback: aiLogStreamCallback,
    user: rawptr,
}

aiExportFormatDesc :: struct {
    id: cstring,
    description: cstring,
    file_extension: cstring,
}

aiExportDataBlob :: struct {
    size: uint,
    data: rawptr,
    name: aiString,
    next: ^aiExportDataBlob,
}

aiImporterDesc :: struct {
    name: cstring,
    author: cstring,
    maintainer: cstring,
    comments: cstring,
    flags: u32,
    min_major: u32,
    min_minor: u32,
    max_major: u32,
    max_minor: u32,
    file_extensions: cstring,
}

aiFace :: struct {
    num_indices: u32,
    indices: [^]u32,
}

aiFace_to_slice :: proc(f: ^aiFace) -> []u32 {
    if f.indices == nil {
        return {}
    }
    return f.indices[:f.num_indices]
}

aiVertexWeight :: struct {
    vertex_id: u32,
    weight: ai_real,
}

aiNode :: struct {
    name: aiString,
    transformation: aiMatrix4x4,
    parent: ^aiNode,
    num_children: u32,
    children: [^]^aiNode,
    num_meshes: u32,
    meshes: [^]u32,
    meta_data: ^aiMetadata,
}

aiBone :: struct {
    name: aiString,
    num_weights: u32,
    armature: ^aiNode,
    node: ^aiNode,
    weights: [^]aiVertexWeight,
    offset_matrix: aiMatrix4x4,
}

aiAnimMesh :: struct {
    name: aiString,
    vertices: [^]aiVector3D,
    normals: [^]aiVector3D,
    tangents: [^]aiVector3D,
    bitangents: [^]aiVector3D,
    colors: [8][^]aiColor4D,
    texture_coords: [8][^]aiVector3D,
    num_vertices: u32,
    weight: f32,
}

aiMesh :: struct {
    primitive_types: u32,
    num_vertices: u32,
    num_faces: u32,
    vertices: [^]aiVector3D,
    normals: [^]aiVector3D,
    tangents: [^]aiVector3D,
    bitangents: [^]aiVector3D,
    colors: [8][^]aiColor4D,
    texture_coords: [8][^]aiVector3D,
    num_uv_components: [8]u32,
    faces: [^]aiFace,
    num_bones: u32,
    bones: [^]^aiBone,
    material_index: u32,
    name: aiString,
    num_anim_meshes: u32,
    anim_meshes: [^]^aiAnimMesh,
    method: aiMorphingMethod,
    aabb: aiAABB,
    texture_coords_names: [^]^aiString,
}

aiSkeletonBone :: struct {
    parent: i32,
    armature: ^aiNode,
    node: ^aiNode,
    num_weights: u32,
    mesh_id: ^aiMesh,
    weights: [^]aiVertexWeight,
    offset_matrix: aiMatrix4x4,
    local_matrix: aiMatrix4x4,
}

aiSkeleton :: struct {
    name: aiString,
    num_bones: u32,
    bones: [^]^aiSkeletonBone,
}

aiMaterialProperty :: struct {
    key: aiString,
    semantic: u32,
    index: u32,
    data_length: u32,
    property_type: aiPropertyTypeInfo,
    data: [^]u8,
}

aiMaterial :: struct {
    properties: [^]^aiMaterialProperty,
    num_properties: u32,
    num_allocated: u32,
}

aiVectorKey :: struct {
    time: f64,
    value: aiVector3D,
    interpolation: aiAnimInterpolation,
}

aiQuatKey :: struct {
    time: f64,
    value: aiQuaternion,
    interpolation: aiAnimInterpolation,
}

aiMeshKey :: struct {
    time: f64,
    value: u32,
}

aiMeshMorphKey :: struct {
    time: f64,
    values: [^]u32,
    weights: [^]f64,
    num_values_and_weights: u32,
}

aiNodeAnim :: struct {
    node_name: aiString,
    num_position_keys: u32,
    position_keys: [^]aiVectorKey,
    num_rotation_keys: u32,
    rotation_keys: [^]aiQuatKey,
    num_scaling_keys: u32,
    scaling_keys: [^]aiVectorKey,
    pre_state: aiAnimBehaviour,
    post_state: aiAnimBehaviour,
}

aiMeshAnim :: struct {
    name: aiString,
    num_keys: u32,
    keys: [^]aiMeshKey,
}

aiMeshMorphAnim :: struct {
    name: aiString,
    num_keys: u32,
    keys: [^]aiMeshMorphKey,
}

aiAnimation :: struct {
    name: aiString,
    duration: f64,
    ticks_per_second: f64,
    num_channels: u32,
    channels: [^]^aiNodeAnim,
    num_mesh_channels: u32,
    mesh_channels: [^]^aiMeshAnim,
    num_morph_mesh_channels: u32,
    morph_mesh_channels: [^]^aiMeshMorphAnim,
}

aiCamera :: struct {
    name: aiString,
    position: aiVector3D,
    up: aiVector3D,
    look_at: aiVector3D,
    horizontal_fov: ai_real,
    clip_plane_near: ai_real,
    clip_plane_far: ai_real,
    aspect: ai_real,
    orthographic_width: ai_real,
}

aiLight :: struct {
    name: aiString,
    light_type: aiLightSourceType,
    position: aiVector3D,
    direction: aiVector3D,
    up: aiVector3D,
    attenuation_constant: ai_real,
    attenuation_linear: ai_real,
    attenuation_quadratic: ai_real,
    color_diffuse: aiColor3D,
    color_specular: aiColor3D,
    color_ambient: aiColor3D,
    angle_inner_cone: ai_real,
    angle_outer_cone: ai_real,
    size: aiVector3D,
}

aiTexel :: struct {
    b: u8,
    g: u8,
    r: u8,
    a: u8,
}

aiTexture :: struct {
    width: u32,
    height: u32,
    ach_format_hint: [9]u8,
    pc_data: ^aiTexel,
    filename: aiString,
}

aiMetadataEntry :: struct {
    meta_type: aiMetadataType,
    data: rawptr,
}

aiMetadata :: struct {
    num_properties: u32,
    keys: [^]aiString,
    values: [^]aiMetadataEntry,
}

aiScene :: struct {
    flags: u32,
    root_node: ^aiNode,
    num_meshes: u32,
    meshes: [^]^aiMesh,
    num_materials: u32,
    materials: [^]^aiMaterial,
    num_animations: u32,
    animations: [^]^aiAnimation,
    num_textures: u32,
    textures: [^]^aiTexture,
    num_lights: u32,
    lights: [^]^aiLight,
    num_cameras: u32,
    cameras: [^]^aiCamera,
    meta_data: ^aiMetadata,
    name: aiString,
    num_skeletons: u32,
    skeletons: [^]^aiSkeleton,
    private_data: rawptr,
}

// --- file callback types ---

aiFileWriteProc :: #type proc "c" (file: ^aiFile, data: [^]u8, size: uint, count: uint) -> uint
aiFileReadProc  :: #type proc "c" (file: ^aiFile, data: [^]u8, size: uint, count: uint) -> uint
aiFileTellProc  :: #type proc "c" (file: ^aiFile) -> uint
aiFileFlushProc :: #type proc "c" (file: ^aiFile)
aiFileSeek      :: #type proc "c" (file: ^aiFile, offset: uint, origin: aiOrigin) -> aiReturn
aiFileOpenProc  :: #type proc "c" (io: ^aiFileIO, path: cstring, mode: cstring) -> ^aiFile
aiFileCloseProc :: #type proc "c" (io: ^aiFileIO, file: ^aiFile)

aiFileIO :: struct {
    open_proc: aiFileOpenProc,
    close_proc: aiFileCloseProc,
    user_data: aiUserData,
}

aiFile :: struct {
    read_proc: aiFileReadProc,
    write_proc: aiFileWriteProc,
    tell_proc: aiFileTellProc,
    file_size_proc: aiFileTellProc,
    seek_proc: aiFileSeek,
    flush_proc: aiFileFlushProc,
    user_data: aiUserData,
}

// --- AI_MATKEY_* constants ---

AI_MATKEY_NAME                           :: "$mat.name"
AI_MATKEY_TWOSIDED                       :: "$mat.twosided"
AI_MATKEY_SHADING_MODEL                  :: "$mat.shadingm"
AI_MATKEY_ENABLE_WIREFRAME               :: "$mat.wireframe"
AI_MATKEY_BLEND_FUNC                     :: "$mat.blend"
AI_MATKEY_OPACITY                        :: "$mat.opacity"
AI_MATKEY_TRANSPARENCYFACTOR             :: "$mat.transparencyfactor"
AI_MATKEY_BUMPSCALING                    :: "$mat.bumpscaling"
AI_MATKEY_SHININESS                      :: "$mat.shininess"
AI_MATKEY_REFLECTIVITY                   :: "$mat.reflectivity"
AI_MATKEY_SHININESS_STRENGTH             :: "$mat.shinpercent"
AI_MATKEY_REFRACTI                       :: "$mat.refracti"
AI_MATKEY_COLOR_DIFFUSE                  :: "$clr.diffuse"
AI_MATKEY_COLOR_AMBIENT                  :: "$clr.ambient"
AI_MATKEY_COLOR_SPECULAR                 :: "$clr.specular"
AI_MATKEY_COLOR_EMISSIVE                 :: "$clr.emissive"
AI_MATKEY_COLOR_TRANSPARENT              :: "$clr.transparent"
AI_MATKEY_COLOR_REFLECTIVE               :: "$clr.reflective"
AI_MATKEY_GLOBAL_BACKGROUND_IMAGE        :: "?bg.global"
AI_MATKEY_GLOBAL_SHADERLANG              :: "?sh.lang"
AI_MATKEY_SHADER_VERTEX                  :: "?sh.vs"
AI_MATKEY_SHADER_FRAGMENT                :: "?sh.fs"
AI_MATKEY_SHADER_GEO                     :: "?sh.gs"
AI_MATKEY_SHADER_TESSELATION             :: "?sh.ts"
AI_MATKEY_SHADER_PRIMITIVE               :: "?sh.ps"
AI_MATKEY_SHADER_COMPUTE                 :: "?sh.cs"
AI_MATKEY_BASE_COLOR                     :: "$clr.base"
AI_MATKEY_METALLIC_FACTOR                :: "$mat.metallicFactor"
AI_MATKEY_ROUGHNESS_FACTOR               :: "$mat.roughnessFactor"
AI_MATKEY_ANISOTROPY_FACTOR              :: "$mat.anisotropyFactor"
AI_MATKEY_SPECULAR_FACTOR                :: "$mat.specularFactor"
AI_MATKEY_GLOSSINESS_FACTOR              :: "$mat.glossinessFactor"
AI_MATKEY_SHEEN_COLOR_FACTOR             :: "$clr.sheen.factor"
AI_MATKEY_SHEEN_ROUGHNESS_FACTOR         :: "$mat.sheen.roughnessFactor"
AI_MATKEY_CLEARCOAT_FACTOR               :: "$mat.clearcoat.factor"
AI_MATKEY_CLEARCOAT_ROUGHNESS_FACTOR     :: "$mat.clearcoat.roughnessFactor"
AI_MATKEY_TRANSMISSION_FACTOR            :: "$mat.transmission.factor"
AI_MATKEY_VOLUME_THICKNESS_FACTOR        :: "$mat.volume.thicknessFactor"
AI_MATKEY_VOLUME_ATTENUATION_DISTANCE    :: "$mat.volume.attenuationDistance"
AI_MATKEY_VOLUME_ATTENUATION_COLOR       :: "$mat.volume.attenuationColor"
AI_MATKEY_EMISSIVE_INTENSITY             :: "$mat.emissiveIntensity"
AI_MATKEY_USE_COLOR_MAP                  :: "$mat.useColorMap"
AI_MATKEY_USE_METALLIC_MAP               :: "$mat.useMetallicMap"
AI_MATKEY_USE_ROUGHNESS_MAP              :: "$mat.useRoughnessMap"
AI_MATKEY_USE_EMISSIVE_MAP               :: "$mat.useEmissiveMap"
AI_MATKEY_USE_AO_MAP                     :: "$mat.useAOMap"
AI_MATKEY_TEXTURE_BASE                   :: "$tex.file"
AI_MATKEY_UVWSRC_BASE                    :: "$tex.uvwsrc"
AI_MATKEY_TEXOP_BASE                     :: "$tex.op"
AI_MATKEY_MAPPING_BASE                   :: "$tex.mapping"
AI_MATKEY_TEXBLEND_BASE                  :: "$tex.blend"
AI_MATKEY_MAPPINGMODE_U_BASE             :: "$tex.mapmodeu"
AI_MATKEY_MAPPINGMODE_V_BASE             :: "$tex.mapmodev"
AI_MATKEY_TEXMAP_AXIS_BASE               :: "$tex.mapaxis"
AI_MATKEY_UVTRANSFORM_BASE                :: "$tex.uvtrafo"
AI_MATKEY_TEXFLAGS_BASE                   :: "$tex.flags"
AI_MATKEY_ANISOTROPY_ROTATION             :: "$mat.anisotropyRotation"
AI_MATKEY_VOLUME_THICKNESS_FACTOR         :: "$mat.volume.thicknessFactor"
AI_MATKEY_VOLUME_ATTENUATION_DISTANCE     :: "$mat.volume.attenuationDistance"
AI_MATKEY_VOLUME_ATTENUATION_COLOR        :: "$mat.volume.attenuationColor"

// --- AI_CONFIG_* constants ---

AI_CONFIG_PP_CT_MAX_SMOOTHING_ANGLE        :: "PP_CT_MAX_SMOOTHING_ANGLE"
AI_CONFIG_PP_GSN_MAX_SMOOTHING_ANGLE       :: "PP_GSN_MAX_SMOOTHING_ANGLE"
AI_CONFIG_PP_SLM_VERTEX_LIMIT             :: "PP_SLM_VERTEX_LIMIT"
AI_CONFIG_PP_SLM_TRIANGLE_LIMIT           :: "PP_SLM_TRIANGLE_LIMIT"
AI_CONFIG_PP_LBW_MAX_WEIGHTS              :: "PP_LBW_MAX_WEIGHTS"
AI_CONFIG_PP_DB_THRESHOLD                 :: "PP_DB_THRESHOLD"
AI_CONFIG_PP_DB_ALL_OR_NONE               :: "PP_DB_ALL_OR_NONE"
AI_CONFIG_PP_PTV_KEEP_HIERARCHY           :: "PP_PTV_KEEP_HIERARCHY"
AI_CONFIG_PP_PTV_NORMALIZE                :: "PP_PTV_NORMALIZE"
AI_CONFIG_PP_RVC_FLAGS                    :: "PP_RVC_FLAGS"
AI_CONFIG_PP_SBP_REMOVE                   :: "PP_SBP_REMOVE"
AI_CONFIG_PP_FD_REMOVE                    :: "PP_FD_REMOVE"
AI_CONFIG_PP_FD_CHECKAREA                 :: "PP_FD_CHECKAREA"
AI_CONFIG_PP_OG_EXCLUDE_LIST              :: "PP_OG_EXCLUDE_LIST"
AI_CONFIG_PP_ICL_PTCACHE_SIZE             :: "PP_ICL_PTCACHE_SIZE"
AI_CONFIG_PP_RRM_EXCLUDE_LIST             :: "PP_RRM_EXCLUDE_LIST"
AI_CONFIG_PP_FID_ANIM_ACCURACY            :: "PP_FID_ANIM_ACCURACY"
AI_CONFIG_GLOBAL_SCALE_FACTOR_KEY         :: "GLOBAL_SCALE_FACTOR"
AI_CONFIG_GLOBAL_SCALE_FACTOR_DEFAULT      :: "GLOBAL_SCALE_FACTOR_DEFAULT"
AI_CONFIG_CHECK_IDENTITY_MATRIX_EPSILON   :: "CHECK_IDENTITY_MATRIX_EPSILON"
AI_CONFIG_EXPORT_BLOB_NAME                :: "EXPORT_BLOB_NAME"
AI_CONFIG_IMPORT_SEARCH_PATH              :: "IMPORT_SEARCH_PATH"
AI_CONFIG_EXPORT_GLTF_UNLIMITED_SKINNING_BONES_PER_VERTEX :: "EXPORT_GLTF_UNLIMITED_SKINNING_BONES_PER_VERTEX"
AI_CONFIG_EXPORT_FBX_TRANSPARENCY_FACTOR_REFER_TO_OPACITY :: "EXPORT_FBX_TRANSPARENCY_FACTOR_REFER_TO_OPACITY"
AI_CONFIG_IMPORT_FBX_PRESERVE_PIVOTS       :: "IMPORT_FBX_PRESERVE_PIVOTS"
AI_CONFIG_IMPORT_FBX_READ_ALL_GEOMETRY_LAYERS :: "IMPORT_FBX_READ_ALL_GEOMETRY_LAYERS"
AI_CONFIG_IMPORT_FBX_READ_MATERIALS        :: "IMPORT_FBX_READ_MATERIALS"
AI_CONFIG_IMPORT_FBX_READ_TEXTURES         :: "IMPORT_FBX_READ_TEXTURES"
AI_CONFIG_IMPORT_FBX_READ_CAMERAS          :: "IMPORT_FBX_READ_CAMERAS"
AI_CONFIG_IMPORT_FBX_READ_LIGHTS           :: "IMPORT_FBX_READ_LIGHTS"
AI_CONFIG_IMPORT_FBX_READ_ANIMATIONS       :: "IMPORT_FBX_READ_ANIMATIONS"
AI_CONFIG_IMPORT_FBX_STRICT_MODE           :: "IMPORT_FBX_STRICT_MODE"
AI_CONFIG_IMPORT_FBX_CONVERT_TO_M          :: "AI_CONFIG_FBX_CONVERT_TO_M"
AI_CONFIG_IMPORT_FBX_EMBEDDED_TEXTURES_LEGACY_NAMING :: "AI_CONFIG_IMPORT_FBX_EMBEDDED_TEXTURES_LEGACY_NAMING"
AI_CONFIG_IMPORT_FBX_OPTIMIZE_EMPTY_ANIMATION_CURVES :: "IMPORT_FBX_OPTIMIZE_EMPTY_ANIMATION_CURVES"
AI_CONFIG_IMPORT_FBX_BONE_NAME_MAPPING     :: "IMPORT_FBX_BONE_NAME_MAPPING"
AI_CONFIG_EXPORT_FBX_STRICT_MODE           :: "EXPORT_FBX_STRICT_MODE"
AI_CONFIG_IMPORT_GLOBAL_KEYFRAME           :: "IMPORT_GLOBAL_KEYFRAME"
AI_CONFIG_IMPORT_MD_NO_PARSE_MAT_FILE      :: "IMPORT_MD_NO_PARSE_MAT_FILE"
AI_CONFIG_IMPORT_MD_HANDLE_MULTIPLE_MATERIALS :: "IMPORT_MD_HANDLE_MULTIPLE_MATERIALS"
AI_CONFIG_IMPORT_MDL_COLORMAP             :: "IMPORT_MDL_COLORMAP"
AI_CONFIG_IMPORT_MDL_AMBIENT_MAP          :: "IMPORT_MDL_AMBIENT_MAP"
AI_CONFIG_IMPORT_MDL_OPACITY_MAP          :: "IMPORT_MDL_OPACITY_MAP"
AI_CONFIG_IMPORT_MDL_BUMP_MAP             :: "IMPORT_MDL_BUMP_MAP"
AI_CONFIG_IMPORT_MDL_GLOSS_MAP            :: "IMPORT_MDL_GLOSS_MAP"
AI_CONFIG_IMPORT_MDL_SPECULAR_MAP         :: "IMPORT_MDL_SPECULAR_MAP"
AI_CONFIG_IMPORT_MDL_SECOND_SPECULAR_MAP  :: "IMPORT_MDL_SECOND_SPECULAR_MAP"
AI_CONFIG_IMPORT_MDL_SUBSURFACE_MAP       :: "IMPORT_MDL_SUBSURFACE_MAP"
AI_CONFIG_IMPORT_MDL_IRIDESCENCE_MAP      :: "IMPORT_MDL_IRIDESCENCE_MAP"
AI_CONFIG_IMPORT_MDL_WARP_MAP             :: "IMPORT_MDL_WARP_MAP"
AI_CONFIG_IMPORT_MDL_DEBOSS_MAP           :: "IMPORT_MDL_DEBOSS_MAP"
AI_CONFIG_IMPORT_MDL_GIMME_EYE_SPACE_MAP  :: "IMPORT_MDL_GIMME_EYE_SPACE_MAP"
AI_CONFIG_IMPORT_IFC_SKIP_SPACE_REPRESENTATIONS :: "IMPORT_IFC_SKIP_SPACE_REPRESENTATIONS"
AI_CONFIG_IMPORT_IFC_CUSTOM_TRIANGULATION  :: "IMPORT_IFC_CUSTOM_TRIANGULATION"
AI_CONFIG_IMPORT_IFC_SMOOTHING_ANGLE       :: "IMPORT_IFC_SMOOTHING_ANGLE"
AI_CONFIG_IMPORT_OBJ_SEPARATE_GROUPS_BY_MATERIAL :: "IMPORT_OBJ_SEPARATE_GROUPS_BY_MATERIAL"
AI_CONFIG_IMPORT_OBJ_CLAMP_SIZE            :: "IMPORT_OBJ_CLAMP_SIZE"
AI_CONFIG_IMPORT_OBJ_SEPARATE_GROUPS       :: "IMPORT_OBJ_SEPARATE_GROUPS"
AI_CONFIG_IMPORT_OBJ_SEPARATE_MULTIFILE    :: "IMPORT_OBJ_SEPARATE_MULTIFILE"
AI_CONFIG_IMPORT_OBJ_USE_INDICES_FOR_MATERIAL_GROUPS :: "IMPORT_OBJ_USE_INDICES_FOR_MATERIAL_GROUPS"
AI_CONFIG_IMPORT_OGRE_MATERIAL_FILE        :: "IMPORT_OGRE_MATERIAL_FILE"
AI_CONFIG_IMPORT_OGRE_TEXTURETYPE_FROM_FILENAME :: "IMPORT_OGRE_TEXTURETYPE_FROM_FILENAME"
AI_CONFIG_IMPORT_OGRE_CHOOSE_MATERIAL_AREA_MODE :: "IMPORT_OGRE_CHOOSE_MATERIAL_AREA_MODE"
AI_CONFIG_IMPORT_GLTF_NUM_MESH_ANGLES      :: "IMPORT_GLTF_NUM_MESH_ANGLES"
AI_CONFIG_IMPORT_GLTF_SKIN_HACK            :: "IMPORT_GLTF_SKIN_HACK"
AI_CONFIG_IMPORT_GLTF_USE_IMAGENAME        :: "IMPORT_GLTF_USE_IMAGENAME"
AI_CONFIG_IMPORT_GLTF_USE_EMBEDDED_EXTENSIONS :: "IMPORT_GLTF_USE_EMBEDDED_EXTENSIONS"
AI_CONFIG_IMPORT_COLLADA_IGNORE_UP_DIRECTION :: "IMPORT_COLLADA_IGNORE_UP_DIRECTION"
AI_CONFIG_IMPORT_STEP_USE_CUSTOM_FRAME     :: "IMPORT_STEP_USE_CUSTOM_FRAME"
AI_CONFIG_IMPORT_3DS_SEPARATE_MULTIPLE_MATERIALS :: "IMPORT_3DS_SEPARATE_MULTIPLE_MATERIALS"
AI_CONFIG_IMPORT_3DS_REMOVE_AMBIENT_FROM_TEX  :: "IMPORT_3DS_REMOVE_AMBIENT_FROM_TEX"
AI_CONFIG_IMPORT_3DS_USE_IMAGE_SEARCH_MODULE  :: "IMPORT_3DS_USE_IMAGE_SEARCH_MODULE"
AI_CONFIG_IMPORT_LWO_ONE_NORMAL_ONE_UV     :: "IMPORT_LWO_ONE_NORMAL_ONE_UV"
AI_CONFIG_IMPORT_MD3_LOAD_SKIN             :: "IMPORT_MD3_LOAD_SKIN"
AI_CONFIG_IMPORT_MD3_SHADER_SRC            :: "IMPORT_MD3_SHADER_SRC"
AI_CONFIG_IMPORT_MD3_SHADER_SRC_REFERENCE   :: "IMPORT_MD3_SHADER_SRC_REFERENCE"
AI_CONFIG_IMPORT_MD3_SKIN_NAME             :: "IMPORT_MD3_SKIN_NAME"
AI_CONFIG_IMPORT_TER_MAKE_UVS              :: "IMPORT_TER_MAKE_UVS"
AI_CONFIG_IMPORT_AC_SEPARATE_BFCULL        :: "IMPORT_AC_SEPARATE_BFCULL"
AI_CONFIG_IMPORT_AC_EVAL_SUBDIVISION       :: "IMPORT_AC_EVAL_SUBDIVISION"
AI_CONFIG_IMPORT_UNREAL_KEYWORDS           :: "IMPORT_UNREAL_KEYWORDS"
AI_CONFIG_IMPORT_UNREAL_HANDLE_FLAGS       :: "UNREAL_HANDLE_FLAGS"
AI_CONFIG_GLOB_MEASURE_TIME                :: "GLOB_MEASURE_TIME"
AI_CONFIG_IMPORT_NO_SKELETON_MESHES        :: "IMPORT_NO_SKELETON_MESHES"
AI_CONFIG_PP_SBBC_MAX_BONES                :: "PP_SBBC_MAX_BONES"
AI_CONFIG_PP_CT_TEXTURE_CHANNEL_INDEX      :: "PP_CT_TEXTURE_CHANNEL_INDEX"
AI_CONFIG_PP_PTV_ADD_ROOT_TRANSFORMATION   :: "PP_PTV_ADD_ROOT_TRANSFORMATION"
AI_CONFIG_PP_PTV_ROOT_TRANSFORMATION       :: "PP_PTV_ROOT_TRANSFORMATION"
AI_CONFIG_PP_FID_IGNORE_TEXTURECOORDS      :: "PP_FID_IGNORE_TEXTURECOORDS"
AI_CONFIG_PP_TUV_EVALUATE                  :: "PP_TUV_EVALUATE"
AI_CONFIG_FAVOUR_SPEED                     :: "FAVOUR_SPEED"
AI_CONFIG_IMPORT_SCHEMA_DOCUMENT_PROVIDER   :: "IMPORT_SCHEMA_DOCUMENT_PROVIDER"
AI_CONFIG_IMPORT_FBX_READ_ALL_MATERIALS    :: "IMPORT_FBX_READ_ALL_MATERIALS"
AI_CONFIG_IMPORT_FBX_READ_WEIGHTS          :: "IMPORT_FBX_READ_WEIGHTS"
AI_CONFIG_IMPORT_REMOVE_EMPTY_BONES        :: "AI_CONFIG_IMPORT_REMOVE_EMPTY_BONES"
AI_CONFIG_FBX_CONVERT_TO_M                 :: "AI_CONFIG_FBX_CONVERT_TO_M"
AI_CONFIG_FBX_USE_SKELETON_BONE_CONTAINER   :: "AI_CONFIG_FBX_USE_SKELETON_BONE_CONTAINER"
AI_CONFIG_IMPORT_MD3_KEYFRAME              :: "IMPORT_MD3_KEYFRAME"
AI_CONFIG_IMPORT_MD2_KEYFRAME              :: "IMPORT_MD2_KEYFRAME"
AI_CONFIG_IMPORT_MDL_KEYFRAME              :: "IMPORT_MDL_KEYFRAME"
AI_CONFIG_IMPORT_MDC_KEYFRAME              :: "IMPORT_MDC_KEYFRAME"
AI_CONFIG_IMPORT_SMD_KEYFRAME              :: "IMPORT_SMD_KEYFRAME"
AI_CONFIG_IMPORT_UNREAL_KEYFRAME           :: "IMPORT_UNREAL_KEYFRAME"
AI_CONFIG_IMPORT_MDL_HL1_READ_ANIMATIONS   :: "IMPORT_MDL_HL1_READ_ANIMATIONS"
AI_CONFIG_IMPORT_MDL_HL1_READ_ANIMATION_EVENTS :: "IMPORT_MDL_HL1_READ_ANIMATION_EVENTS"
AI_CONFIG_IMPORT_MDL_HL1_READ_BLEND_CONTROLLERS :: "IMPORT_MDL_HL1_READ_BLEND_CONTROLLERS"
AI_CONFIG_IMPORT_MDL_HL1_READ_SEQUENCE_TRANSITIONS :: "IMPORT_MDL_HL1_READ_SEQUENCE_TRANSITIONS"
AI_CONFIG_IMPORT_MDL_HL1_READ_ATTACHMENTS  :: "IMPORT_MDL_HL1_READ_ATTACHMENTS"
AI_CONFIG_IMPORT_MDL_HL1_READ_BONE_CONTROLLERS :: "IMPORT_MDL_HL1_READ_BONE_CONTROLLERS"
AI_CONFIG_IMPORT_MDL_HL1_READ_HITBOXES     :: "IMPORT_MDL_HL1_READ_HITBOXES"
AI_CONFIG_IMPORT_MDL_HL1_READ_MISC_GLOBAL_INFO :: "IMPORT_MDL_HL1_READ_MISC_GLOBAL_INFO"
AI_CONFIG_IMPORT_SMD_LOAD_ANIMATION_LIST   :: "IMPORT_SMD_LOAD_ANIMATION_LIST"
AI_CONFIG_IMPORT_ASE_RECONSTRUCT_NORMALS   :: "IMPORT_ASE_RECONSTRUCT_NORMALS"
AI_CONFIG_IMPORT_MD3_HANDLE_MULTIPART      :: "IMPORT_MD3_HANDLE_MULTIPART"
AI_CONFIG_IMPORT_MD3_LOAD_SHADERS          :: "IMPORT_MD3_LOAD_SHADERS"
AI_CONFIG_IMPORT_LWO_ONE_LAYER_ONLY        :: "IMPORT_LWO_ONE_LAYER_ONLY"
AI_CONFIG_IMPORT_MD5_NO_ANIM_AUTOLOAD      :: "IMPORT_MD5_NO_ANIM_AUTOLOAD"
AI_CONFIG_IMPORT_LWS_ANIM_START            :: "IMPORT_LWS_ANIM_START"
AI_CONFIG_IMPORT_LWS_ANIM_END              :: "IMPORT_LWS_ANIM_END"
AI_CONFIG_IMPORT_IRR_ANIM_FPS              :: "IMPORT_IRR_ANIM_FPS"
AI_CONFIG_ANDROID_JNI_ASSIMP_MANAGER_SUPPORT :: "AI_CONFIG_ANDROID_JNI_ASSIMP_MANAGER_SUPPORT"
AI_CONFIG_IMPORT_IFC_CYLINDRICAL_TESSELLATION :: "IMPORT_IFC_CYLINDRICAL_TESSELLATION"
AI_CONFIG_IMPORT_COLLADA_IGNORE_UNIT_SIZE   :: "IMPORT_COLLADA_IGNORE_UNIT_SIZE"
AI_CONFIG_IMPORT_COLLADA_USE_COLLADA_NAMES  :: "IMPORT_COLLADA_USE_COLLADA_NAMES"
AI_CONFIG_EXPORT_XFILE_64BIT                :: "EXPORT_XFILE_64BIT"
AI_CONFIG_EXPORT_POINT_CLOUDS               :: "EXPORT_POINT_CLOUDS"
AI_CONFIG_USE_GLTF_PBR_SPECULAR_GLOSSINESS  :: "USE_GLTF_PBR_SPECULAR_GLOSSINESS"
AI_CONFIG_APP_SCALE_KEY                    :: "APP_SCALE_FACTOR"

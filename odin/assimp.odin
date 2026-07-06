package assimp

// --- Importer ---

Importer :: struct {
    scene: ^aiScene,
    property_store: ^aiPropertyStore,
}

importer_init :: proc() -> Importer {
    return Importer{scene = nil, property_store = nil}
}

importer_deinit :: proc(self: ^Importer) {
    importer_release_scene(self)
    if self.property_store != nil {
        aiReleasePropertyStore(self.property_store)
        self.property_store = nil
    }
}

importer_import_file :: proc(self: ^Importer, path: string, flags: aiPostProcessSteps) -> (^aiScene, bool) {
    importer_release_scene(self)
    scene := aiImportFile(cstring(raw_data(path)), transmute(u32)flags)
    if scene != nil {
        self.scene = scene
        return scene, true
    }
    return nil, false
}

importer_import_file_ex :: proc(self: ^Importer, path: string, flags: aiPostProcessSteps, fs: ^aiFileIO) -> (^aiScene, bool) {
    importer_release_scene(self)
    scene := aiImportFileEx(cstring(raw_data(path)), transmute(u32)flags, fs)
    if scene != nil {
        self.scene = scene
        return scene, true
    }
    return nil, false
}

importer_import_file_ex_with_properties :: proc(self: ^Importer, path: string, flags: aiPostProcessSteps, fs: ^aiFileIO) -> (^aiScene, bool) {
    importer_release_scene(self)
    store := importer_get_or_create_property_store(self)
    scene := aiImportFileExWithProperties(cstring(raw_data(path)), transmute(u32)flags, fs, store)
    if scene != nil {
        self.scene = scene
        return scene, true
    }
    return nil, false
}

importer_import_file_from_memory :: proc(self: ^Importer, buffer: []u8, hint: string, flags: aiPostProcessSteps) -> (^aiScene, bool) {
    importer_release_scene(self)
    scene := aiImportFileFromMemory(raw_data(buffer), u32(len(buffer)), transmute(u32)flags, cstring(raw_data(hint)))
    if scene != nil {
        self.scene = scene
        return scene, true
    }
    return nil, false
}

importer_import_file_from_memory_with_properties :: proc(self: ^Importer, buffer: []u8, hint: string, flags: aiPostProcessSteps) -> (^aiScene, bool) {
    importer_release_scene(self)
    store := importer_get_or_create_property_store(self)
    scene := aiImportFileFromMemoryWithProperties(raw_data(buffer), u32(len(buffer)), transmute(u32)flags, cstring(raw_data(hint)), store)
    if scene != nil {
        self.scene = scene
        return scene, true
    }
    return nil, false
}

importer_apply_post_processing :: proc(self: ^Importer, flags: aiPostProcessSteps) -> bool {
    scene := self.scene
    if scene == nil {
        return false
    }
    result := aiApplyPostProcessing(scene, transmute(u32)flags)
    self.scene = result
    return result != nil
}

importer_release_scene :: proc(self: ^Importer) {
    if self.scene != nil {
        aiReleaseImport(self.scene)
        self.scene = nil
    }
}

importer_get_scene :: proc(self: ^Importer) -> ^aiScene {
    return self.scene
}

importer_export_scene :: proc(self: ^Importer, format_id: string, file_name: string, preprocessing: aiPostProcessSteps) -> aiReturn {
    scene := self.scene
    if scene == nil {
        return .FAILURE
    }
    return aiExportScene(scene, cstring(raw_data(format_id)), cstring(raw_data(file_name)), transmute(u32)preprocessing)
}

importer_export_scene_to_blob :: proc(self: ^Importer, format_id: string, preprocessing: aiPostProcessSteps) -> ^aiExportDataBlob {
    scene := self.scene
    if scene == nil {
        return nil
    }
    return aiExportSceneToBlob(scene, cstring(raw_data(format_id)), transmute(u32)preprocessing)
}

importer_get_or_create_property_store :: proc(self: ^Importer) -> ^aiPropertyStore {
    if self.property_store != nil {
        return self.property_store
    }
    self.property_store = aiCreatePropertyStore()
    return self.property_store
}

importer_set_property_integer :: proc(self: ^Importer, key: string, value: i32) {
    store := importer_get_or_create_property_store(self)
    if store != nil {
        aiSetImportPropertyInteger(store, cstring(raw_data(key)), value)
    }
}

importer_set_property_float :: proc(self: ^Importer, key: string, value: ai_real) {
    store := importer_get_or_create_property_store(self)
    if store != nil {
        aiSetImportPropertyFloat(store, cstring(raw_data(key)), value)
    }
}

importer_set_property_string :: proc(self: ^Importer, key: string, value: ^aiString) {
    store := importer_get_or_create_property_store(self)
    if store != nil {
        aiSetImportPropertyString(store, cstring(raw_data(key)), value)
    }
}

importer_set_property_matrix :: proc(self: ^Importer, key: string, value: ^aiMatrix4x4) {
    store := importer_get_or_create_property_store(self)
    if store != nil {
        aiSetImportPropertyMatrix(store, cstring(raw_data(key)), value)
    }
}

importer_is_extension_supported :: proc(ext: string) -> bool {
    return aiIsExtensionSupported(cstring(raw_data(ext))) != 0
}

importer_get_extension_list :: proc(buffer: ^aiString) {
    aiGetExtensionList(buffer)
}

importer_get_memory_requirements :: proc(scene: ^aiScene, info: ^aiMemoryInfo) {
    aiGetMemoryRequirements(scene, info)
}

importer_get_error_string :: proc() -> string {
    return string(aiGetErrorString())
}

importer_get_version_major :: proc() -> u32 {
    return aiGetVersionMajor()
}

importer_get_version_minor :: proc() -> u32 {
    return aiGetVersionMinor()
}

importer_get_version_patch :: proc() -> u32 {
    return aiGetVersionPatch()
}

importer_get_version_revision :: proc() -> u32 {
    return aiGetVersionRevision()
}

importer_get_compile_flags :: proc() -> u32 {
    return aiGetCompileFlags()
}

importer_get_legal_string :: proc() -> string {
    return string(aiGetLegalString())
}

importer_get_branch_name :: proc() -> string {
    return string(aiGetBranchName())
}

importer_get_import_format_count :: proc() -> uint {
    return aiGetImportFormatCount()
}

importer_get_import_format_description :: proc(index: uint) -> ^aiImporterDesc {
    return aiGetImportFormatDescription(index)
}

importer_get_predefined_log_stream :: proc(stream: aiDefaultLogStream, file: string) -> aiLogStream {
    return aiGetPredefinedLogStream(stream, cstring(raw_data(file)))
}

importer_attach_log_stream :: proc(stream: ^aiLogStream) {
    aiAttachLogStream(stream)
}

importer_detach_log_stream :: proc(stream: ^aiLogStream) -> aiReturn {
    return aiDetachLogStream(stream)
}

importer_detach_all_log_streams :: proc() {
    aiDetachAllLogStreams()
}

importer_enable_verbose_logging :: proc(enabled: bool) {
    val := AI_FALSE
    if enabled {
        val = AI_TRUE
    }
    aiEnableVerboseLogging(val)
}

importer_get_importer_desc :: proc(extension: string) -> ^aiImporterDesc {
    return aiGetImporterDesc(cstring(raw_data(extension)))
}

// --- SceneFlags ---

SceneFlags :: bit_field u32 {
    incomplete: bool | 1,
    validated: bool | 1,
    validation_warning: bool | 1,
    non_verbose_format: bool | 1,
    terrain: bool | 1,
    allow_shared: bool | 1,
}

scene_flags :: proc(scene: ^aiScene) -> SceneFlags {
    return transmute(SceneFlags)scene.flags
}

scene_root_node :: proc(scene: ^aiScene) -> ^aiNode {
    return scene.root_node
}

scene_name :: proc(scene: ^aiScene) -> string {
    return aiString_to_slice(&scene.name)
}

scene_meta_data :: proc(scene: ^aiScene) -> ^aiMetadata {
    return scene.meta_data
}

// --- Scene array accessors ---

scene_meshes :: proc(scene: ^aiScene) -> []^aiMesh {
    if scene.meshes == nil {
        return {}
    }
    return scene.meshes[:scene.num_meshes]
}

scene_materials :: proc(scene: ^aiScene) -> []^aiMaterial {
    if scene.materials == nil {
        return {}
    }
    return scene.materials[:scene.num_materials]
}

scene_animations :: proc(scene: ^aiScene) -> []^aiAnimation {
    if scene.animations == nil {
        return {}
    }
    return scene.animations[:scene.num_animations]
}

scene_cameras :: proc(scene: ^aiScene) -> []^aiCamera {
    if scene.cameras == nil {
        return {}
    }
    return scene.cameras[:scene.num_cameras]
}

scene_lights :: proc(scene: ^aiScene) -> []^aiLight {
    if scene.lights == nil {
        return {}
    }
    return scene.lights[:scene.num_lights]
}

scene_textures :: proc(scene: ^aiScene) -> []^aiTexture {
    if scene.textures == nil {
        return {}
    }
    return scene.textures[:scene.num_textures]
}

scene_skeletons :: proc(scene: ^aiScene) -> []^aiSkeleton {
    if scene.skeletons == nil {
        return {}
    }
    return scene.skeletons[:scene.num_skeletons]
}

// --- Scene bool checks ---

scene_has_meshes :: proc(scene: ^aiScene) -> bool {
    return scene.meshes != nil && scene.num_meshes > 0
}

scene_has_materials :: proc(scene: ^aiScene) -> bool {
    return scene.materials != nil && scene.num_materials > 0
}

scene_has_textures :: proc(scene: ^aiScene) -> bool {
    return scene.textures != nil && scene.num_textures > 0
}

scene_has_animations :: proc(scene: ^aiScene) -> bool {
    return scene.animations != nil && scene.num_animations > 0
}

scene_has_cameras :: proc(scene: ^aiScene) -> bool {
    return scene.cameras != nil && scene.num_cameras > 0
}

scene_has_lights :: proc(scene: ^aiScene) -> bool {
    return scene.lights != nil && scene.num_lights > 0
}

scene_has_skeletons :: proc(scene: ^aiScene) -> bool {
    return scene.skeletons != nil && scene.num_skeletons > 0
}

// --- Node helpers ---

node_children :: proc(node: ^aiNode) -> []^aiNode {
    if node.children == nil {
        return {}
    }
    return node.children[:node.num_children]
}

node_mesh_indices :: proc(node: ^aiNode) -> []u32 {
    if node.meshes == nil {
        return {}
    }
    return node.meshes[:node.num_meshes]
}

node_is_root :: proc(node: ^aiNode) -> bool {
    return node.parent == nil
}

node_parent :: proc(node: ^aiNode) -> ^aiNode {
    return node.parent
}

node_meta_data :: proc(node: ^aiNode) -> ^aiMetadata {
    return node.meta_data
}

node_find_by_name :: proc(root: ^aiNode, name: string) -> ^aiNode {
    if aiString_to_slice(&root.name) == name {
        return root
    }
    stack: [256]^aiNode
    sp: uint
    for child in node_children(root) {
        if child != nil && sp < 256 {
            stack[sp] = child
            sp += 1
        }
    }
    for sp > 0 {
        sp -= 1
        node := stack[sp]
        if node == nil {
            continue
        }
        if aiString_to_slice(&node.name) == name {
            return node
        }
        for child in node_children(node) {
            if child != nil && sp < 256 {
                stack[sp] = child
                sp += 1
            }
        }
    }
    return nil
}

// --- Mesh helpers ---

mesh_vertices :: proc(mesh: ^aiMesh) -> ([]aiVector3D, bool) {
    if mesh.vertices == nil {
        return {}, false
    }
    return mesh.vertices[:mesh.num_vertices], true
}

mesh_normals :: proc(mesh: ^aiMesh) -> ([]aiVector3D, bool) {
    if mesh.normals == nil {
        return {}, false
    }
    return mesh.normals[:mesh.num_vertices], true
}

mesh_tangents :: proc(mesh: ^aiMesh) -> ([]aiVector3D, bool) {
    if mesh.tangents == nil {
        return {}, false
    }
    return mesh.tangents[:mesh.num_vertices], true
}

mesh_bitangents :: proc(mesh: ^aiMesh) -> ([]aiVector3D, bool) {
    if mesh.bitangents == nil {
        return {}, false
    }
    return mesh.bitangents[:mesh.num_vertices], true
}

mesh_colors :: proc(mesh: ^aiMesh, set: u32) -> ([]aiColor4D, bool) {
    if set >= AI_MAX_NUMBER_OF_COLOR_SETS {
        return {}, false
    }
    ptr := mesh.colors[set]
    if ptr == nil {
        return {}, false
    }
    return ptr[:mesh.num_vertices], true
}

mesh_tex_coords :: proc(mesh: ^aiMesh, set: u32) -> ([]aiVector3D, bool) {
    if set >= AI_MAX_NUMBER_OF_TEXTURECOORDS {
        return {}, false
    }
    ptr := mesh.texture_coords[set]
    if ptr == nil {
        return {}, false
    }
    return ptr[:mesh.num_vertices], true
}

mesh_faces :: proc(mesh: ^aiMesh) -> ([]aiFace, bool) {
    if mesh.faces == nil {
        return {}, false
    }
    return mesh.faces[:mesh.num_faces], true
}

mesh_bones :: proc(mesh: ^aiMesh) -> []^aiBone {
    if mesh.bones == nil {
        return {}
    }
    return mesh.bones[:mesh.num_bones]
}

mesh_aabb :: proc(mesh: ^aiMesh) -> ^aiAABB {
    return &mesh.aabb
}

mesh_has_vertex_colors :: proc(mesh: ^aiMesh, set: u32) -> bool {
    if set >= AI_MAX_NUMBER_OF_COLOR_SETS {
        return false
    }
    return mesh.colors[set] != nil && mesh.num_vertices > 0
}

mesh_has_texture_coords :: proc(mesh: ^aiMesh, set: u32) -> bool {
    if set >= AI_MAX_NUMBER_OF_TEXTURECOORDS {
        return false
    }
    return mesh.texture_coords[set] != nil && mesh.num_vertices > 0
}

mesh_num_uv_channels :: proc(mesh: ^aiMesh) -> u32 {
    n: u32
    for n < AI_MAX_NUMBER_OF_TEXTURECOORDS && mesh.texture_coords[n] != nil {
        n += 1
    }
    return n
}

mesh_num_color_channels :: proc(mesh: ^aiMesh) -> u32 {
    n: u32
    for n < AI_MAX_NUMBER_OF_COLOR_SETS && mesh.colors[n] != nil {
        n += 1
    }
    return n
}

mesh_uv_component_count :: proc(mesh: ^aiMesh, set: u32) -> u32 {
    if set >= AI_MAX_NUMBER_OF_TEXTURECOORDS {
        return 0
    }
    return mesh.num_uv_components[set]
}

mesh_anim_meshes :: proc(mesh: ^aiMesh) -> []^aiAnimMesh {
    if mesh.anim_meshes == nil {
        return {}
    }
    return mesh.anim_meshes[:mesh.num_anim_meshes]
}

mesh_find_bone_by_name :: proc(mesh: ^aiMesh, name: string) -> ^aiBone {
    for bone_opt in mesh_bones(mesh) {
        if bone_opt == nil {
            continue
        }
        if aiString_to_slice(&bone_opt.name) == name {
            return bone_opt
        }
    }
    return nil
}

// --- AnimMesh helpers ---

anim_mesh_vertices :: proc(am: ^aiAnimMesh) -> ([]aiVector3D, bool) {
    if am.vertices == nil {
        return {}, false
    }
    return am.vertices[:am.num_vertices], true
}

anim_mesh_normals :: proc(am: ^aiAnimMesh) -> ([]aiVector3D, bool) {
    if am.normals == nil {
        return {}, false
    }
    return am.normals[:am.num_vertices], true
}

anim_mesh_tangents :: proc(am: ^aiAnimMesh) -> ([]aiVector3D, bool) {
    if am.tangents == nil {
        return {}, false
    }
    return am.tangents[:am.num_vertices], true
}

anim_mesh_bitangents :: proc(am: ^aiAnimMesh) -> ([]aiVector3D, bool) {
    if am.bitangents == nil {
        return {}, false
    }
    return am.bitangents[:am.num_vertices], true
}

anim_mesh_colors :: proc(am: ^aiAnimMesh, set: u32) -> ([]aiColor4D, bool) {
    if set >= AI_MAX_NUMBER_OF_COLOR_SETS {
        return {}, false
    }
    ptr := am.colors[set]
    if ptr == nil {
        return {}, false
    }
    return ptr[:am.num_vertices], true
}

anim_mesh_tex_coords :: proc(am: ^aiAnimMesh, set: u32) -> ([]aiVector3D, bool) {
    if set >= AI_MAX_NUMBER_OF_TEXTURECOORDS {
        return {}, false
    }
    ptr := am.texture_coords[set]
    if ptr == nil {
        return {}, false
    }
    return ptr[:am.num_vertices], true
}

anim_mesh_name :: proc(am: ^aiAnimMesh) -> string {
    return aiString_to_slice(&am.name)
}

anim_mesh_weight :: proc(am: ^aiAnimMesh) -> f32 {
    return am.weight
}

// --- Face helpers ---

face_indices :: proc(face: ^aiFace) -> []u32 {
    return aiFace_to_slice(face)
}

// --- Bone helpers ---

bone_name :: proc(bone: ^aiBone) -> string {
    return aiString_to_slice(&bone.name)
}

bone_weights :: proc(bone: ^aiBone) -> ([]aiVertexWeight, bool) {
    if bone.weights == nil {
        return {}, false
    }
    return bone.weights[:bone.num_weights], true
}

bone_offset_matrix :: proc(bone: ^aiBone) -> ^aiMatrix4x4 {
    return &bone.offset_matrix
}

bone_armature :: proc(bone: ^aiBone) -> ^aiNode {
    return bone.armature
}

bone_node :: proc(bone: ^aiBone) -> ^aiNode {
    return bone.node
}

// --- Animation helpers ---

animation_channels :: proc(anim: ^aiAnimation) -> []^aiNodeAnim {
    if anim.channels == nil {
        return {}
    }
    return anim.channels[:anim.num_channels]
}

animation_mesh_channels :: proc(anim: ^aiAnimation) -> []^aiMeshAnim {
    if anim.mesh_channels == nil {
        return {}
    }
    return anim.mesh_channels[:anim.num_mesh_channels]
}

animation_morph_channels :: proc(anim: ^aiAnimation) -> []^aiMeshMorphAnim {
    if anim.morph_mesh_channels == nil {
        return {}
    }
    return anim.morph_mesh_channels[:anim.num_morph_mesh_channels]
}

anim_name :: proc(anim: ^aiAnimation) -> string {
    return aiString_to_slice(&anim.name)
}

anim_duration :: proc(anim: ^aiAnimation) -> f64 {
    return anim.duration
}

anim_ticks_per_second :: proc(anim: ^aiAnimation) -> f64 {
    return anim.ticks_per_second
}

animation_duration_seconds :: proc(anim: ^aiAnimation) -> f64 {
    if anim.ticks_per_second == 0 {
        return anim.duration
    }
    return anim.duration / anim.ticks_per_second
}

// --- NodeAnim helpers ---

node_anim_channel_name :: proc(na: ^aiNodeAnim) -> string {
    return aiString_to_slice(&na.node_name)
}

node_anim_position_keys :: proc(na: ^aiNodeAnim) -> ([]aiVectorKey, bool) {
    if na.position_keys == nil {
        return {}, false
    }
    return na.position_keys[:na.num_position_keys], true
}

node_anim_rotation_keys :: proc(na: ^aiNodeAnim) -> ([]aiQuatKey, bool) {
    if na.rotation_keys == nil {
        return {}, false
    }
    return na.rotation_keys[:na.num_rotation_keys], true
}

node_anim_scaling_keys :: proc(na: ^aiNodeAnim) -> ([]aiVectorKey, bool) {
    if na.scaling_keys == nil {
        return {}, false
    }
    return na.scaling_keys[:na.num_scaling_keys], true
}

node_anim_pre_state :: proc(na: ^aiNodeAnim) -> aiAnimBehaviour {
    return na.pre_state
}

node_anim_post_state :: proc(na: ^aiNodeAnim) -> aiAnimBehaviour {
    return na.post_state
}

// --- MeshAnim helpers ---

mesh_anim_keys :: proc(ma: ^aiMeshAnim) -> ([]aiMeshKey, bool) {
    if ma.keys == nil {
        return {}, false
    }
    return ma.keys[:ma.num_keys], true
}

// --- MeshMorphAnim helpers ---

mesh_morph_anim_keys :: proc(mma: ^aiMeshMorphAnim) -> ([]aiMeshMorphKey, bool) {
    if mma.keys == nil {
        return {}, false
    }
    return mma.keys[:mma.num_keys], true
}

// --- Skeleton helpers ---

skeleton_bones :: proc(skel: ^aiSkeleton) -> []^aiSkeletonBone {
    if skel.bones == nil {
        return {}
    }
    return skel.bones[:skel.num_bones]
}

skeleton_name :: proc(skel: ^aiSkeleton) -> string {
    return aiString_to_slice(&skel.name)
}

skeleton_bone_parent :: proc(bone: ^aiSkeletonBone) -> i32 {
    return bone.parent
}

skeleton_bone_armature :: proc(bone: ^aiSkeletonBone) -> ^aiNode {
    return bone.armature
}

skeleton_bone_node :: proc(bone: ^aiSkeletonBone) -> ^aiNode {
    return bone.node
}

skeleton_bone_mesh_id :: proc(bone: ^aiSkeletonBone) -> ^aiMesh {
    return bone.mesh_id
}

skeleton_bone_weights :: proc(bone: ^aiSkeletonBone) -> ([]aiVertexWeight, bool) {
    if bone.weights == nil {
        return {}, false
    }
    return bone.weights[:bone.num_weights], true
}

skeleton_bone_offset_matrix :: proc(bone: ^aiSkeletonBone) -> ^aiMatrix4x4 {
    return &bone.offset_matrix
}

skeleton_bone_local_matrix :: proc(bone: ^aiSkeletonBone) -> ^aiMatrix4x4 {
    return &bone.local_matrix
}

// --- Texture helpers ---

texture_filename :: proc(tex: ^aiTexture) -> string {
    return aiString_to_slice(&tex.filename)
}

texture_data :: proc(tex: ^aiTexture) -> ([]u8, bool) {
    ptr := tex.pc_data
    if ptr == nil {
        return {}, false
    }
    bytes := ([^]u8)(ptr)
    if tex.height == 0 {
        return bytes[:tex.width], true
    }
    return bytes[:tex.width * tex.height * size_of(aiTexel)], true
}

// --- Material helpers ---

MaterialTextureInfo :: struct {
    path: aiString,
    mapping: aiTextureMapping,
    uvindex: u32,
    blend: ai_real,
    op: aiTextureOp,
    mapmode_u: aiTextureMapMode,
    mapmode_v: aiTextureMapMode,
    flags: u32,
}

material_get_float :: proc(mat: ^aiMaterial, key: string, type_: u32, index: u32) -> (ai_real, bool) {
    out: ai_real
    return out, aiGetMaterialFloatArray(mat, cstring(raw_data(key)), type_, index, &out, nil) == .SUCCESS
}

material_get_float_raw :: proc(mat: ^aiMaterial, key: string, type_: u32, index: u32) -> (f32, bool) {
    prop, ok := material_get_property(mat, key, type_, index)
    if !ok || prop == nil do return 0, false
    if prop.property_type != .Float || prop.data_length < 4 do return 0, false
    return (cast(^f32)prop.data)^, true
}

material_get_integer :: proc(mat: ^aiMaterial, key: string, type_: u32, index: u32) -> (i32, bool) {
    out: i32
    return out, aiGetMaterialIntegerArray(mat, cstring(raw_data(key)), type_, index, &out, nil) == .SUCCESS
}

material_get_color_raw :: proc(mat: ^aiMaterial, key: string, type_: u32, index: u32) -> (aiColor4D, bool) {
    prop, ok := material_get_property(mat, key, type_, index)
    if !ok || prop == nil do return {}, false
    if prop.data_length < 12 do return {}, false
    f := ([^]f32)(prop.data)
    result: aiColor4D
    result.r = f[0]
    result.g = f[1]
    result.b = f[2]
    result.a = 1.0
    if prop.data_length >= 16 {
        result.a = f[3]
    }
    return result, true
}

material_get_color :: proc(mat: ^aiMaterial, key: string, type_: u32, index: u32) -> (aiColor4D, bool) {
    out: aiColor4D
    return out, aiGetMaterialColor(mat, cstring(raw_data(key)), type_, index, &out) == .SUCCESS
}

material_get_string :: proc(mat: ^aiMaterial, key: string, type_: u32, index: u32) -> (aiString, bool) {
    out: aiString
    return out, aiGetMaterialString(mat, cstring(raw_data(key)), type_, index, &out) == .SUCCESS
}

material_get_uv_transform :: proc(mat: ^aiMaterial, key: string, type_: u32, index: u32) -> (aiUVTransform, bool) {
    out: aiUVTransform
    return out, aiGetMaterialUVTransform(mat, cstring(raw_data(key)), type_, index, &out) == .SUCCESS
}

material_get_texture_count :: proc(mat: ^aiMaterial, type_: aiTextureType) -> u32 {
    return aiGetMaterialTextureCount(mat, type_)
}

material_get_texture_info :: proc(mat: ^aiMaterial, type_: aiTextureType, index: u32) -> (MaterialTextureInfo, bool) {
    path: aiString
    mapping: aiTextureMapping
    uvindex: u32
    blend: ai_real
    op: aiTextureOp
    mapmode: [3]aiTextureMapMode
    flags: u32
    result := aiGetMaterialTexture(mat, type_, index, &path, &mapping, &uvindex, &blend, &op, &mapmode[0], &flags)
    if result == .SUCCESS {
        return MaterialTextureInfo{
            path = path,
            mapping = mapping,
            uvindex = uvindex,
            blend = blend,
            op = op,
            mapmode_u = mapmode[0],
            mapmode_v = mapmode[1],
            flags = flags,
        }, true
    }
    return {}, false
}

material_get_property :: proc(mat: ^aiMaterial, key: string, type_: u32, index: u32) -> (^aiMaterialProperty, bool) {
    prop_out: ^aiMaterialProperty
    return prop_out, aiGetMaterialProperty(mat, cstring(raw_data(key)), type_, index, &prop_out) == .SUCCESS
}

texture_type_to_string :: proc(in_: aiTextureType) -> string {
    return string(aiTextureTypeToString(in_))
}

// --- Embedded texture finder ---

scene_find_embedded_texture :: proc(scene: ^aiScene, name: string) -> (^aiTexture, bool) {
    if len(name) > 1 && name[0] == '*' {
        index: u32
        ok := true
        for i in 1 ..< len(name) {
            c := name[i]
            if c >= '0' && c <= '9' {
                index = index * 10 + u32(c - '0')
            } else {
                ok = false
                break
            }
        }
        if ok && index < scene.num_textures {
            textures := scene_textures(scene)
            if index < u32(len(textures)) {
                return textures[index], textures[index] != nil
            }
        }
        return nil, false
    }
    for tex in scene_textures(scene) {
        if tex != nil && aiString_to_slice(&tex.filename) == name {
            return tex, true
        }
    }
    return nil, false
}

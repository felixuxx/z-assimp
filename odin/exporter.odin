package assimp

Exporter :: struct {
    property_store: ^aiPropertyStore,
}

exporter_init :: proc() -> Exporter {
    return Exporter{property_store = nil}
}

exporter_deinit :: proc(self: ^Exporter) {
    if self.property_store != nil {
        aiReleasePropertyStore(self.property_store)
        self.property_store = nil
    }
}

exporter_get_export_format_count :: proc() -> uint {
    return aiGetExportFormatCount()
}

exporter_get_export_format_description :: proc(index: uint) -> ^aiExportFormatDesc {
    return aiGetExportFormatDescription(index)
}

exporter_release_export_format_description :: proc(desc: ^aiExportFormatDesc) {
    aiReleaseExportFormatDescription(desc)
}

exporter_export_scene :: proc(scene: ^aiScene, format_id: string, file_name: string, preprocessing: aiPostProcessSteps) -> aiReturn {
    return aiExportScene(scene, cstring(raw_data(format_id)), cstring(raw_data(file_name)), transmute(u32)preprocessing)
}

exporter_export_scene_ex :: proc(scene: ^aiScene, format_id: string, file_name: string, io: ^aiFileIO, preprocessing: aiPostProcessSteps) -> aiReturn {
    return aiExportSceneEx(scene, cstring(raw_data(format_id)), cstring(raw_data(file_name)), io, transmute(u32)preprocessing)
}

exporter_export_scene_to_blob :: proc(scene: ^aiScene, format_id: string, preprocessing: aiPostProcessSteps) -> ^aiExportDataBlob {
    return aiExportSceneToBlob(scene, cstring(raw_data(format_id)), transmute(u32)preprocessing)
}

exporter_release_export_blob :: proc(data: ^aiExportDataBlob) {
    aiReleaseExportBlob(data)
}

exporter_copy_scene :: proc(src: ^aiScene) -> (^aiScene, bool) {
    dst: ^aiScene
    aiCopyScene(src, &dst)
    return dst, dst != nil
}

exporter_copy_scene_out :: proc(src: ^aiScene, dst: ^^aiScene) {
    aiCopyScene(src, dst)
}

exporter_free_scene :: proc(scene: ^aiScene) {
    aiFreeScene(scene)
}

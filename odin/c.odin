package assimp

foreign import assimp "libassimp.a"

foreign assimp {

    // --- Import ---

    aiImportFile :: proc(file: cstring, flags: u32) -> ^aiScene ---
    aiImportFileEx :: proc(file: cstring, flags: u32, fs: ^aiFileIO) -> ^aiScene ---
    aiImportFileExWithProperties :: proc(file: cstring, flags: u32, fs: ^aiFileIO, props: ^aiPropertyStore) -> ^aiScene ---
    aiImportFileFromMemory :: proc(buffer: [^]u8, length: u32, flags: u32, hint: cstring) -> ^aiScene ---
    aiImportFileFromMemoryWithProperties :: proc(buffer: [^]u8, length: u32, flags: u32, hint: cstring, props: ^aiPropertyStore) -> ^aiScene ---
    aiApplyPostProcessing :: proc(scene: ^aiScene, flags: u32) -> ^aiScene ---
    aiGetPredefinedLogStream :: proc(stream: aiDefaultLogStream, file: cstring) -> aiLogStream ---
    aiAttachLogStream :: proc(stream: ^aiLogStream) ---
    aiEnableVerboseLogging :: proc(d: aiBool) ---
    aiDetachLogStream :: proc(stream: ^aiLogStream) -> aiReturn ---
    aiDetachAllLogStreams :: proc() ---
    aiReleaseImport :: proc(scene: ^aiScene) ---
    aiGetErrorString :: proc() -> cstring ---
    aiIsExtensionSupported :: proc(ext: cstring) -> aiBool ---
    aiGetExtensionList :: proc(out: ^aiString) ---
    aiGetMemoryRequirements :: proc(scene: ^aiScene, out: ^aiMemoryInfo) ---
    aiCreatePropertyStore :: proc() -> ^aiPropertyStore ---
    aiReleasePropertyStore :: proc(p: ^aiPropertyStore) ---
    aiSetImportPropertyInteger :: proc(store: ^aiPropertyStore, name: cstring, value: i32) ---
    aiSetImportPropertyFloat :: proc(store: ^aiPropertyStore, name: cstring, value: ai_real) ---
    aiSetImportPropertyString :: proc(store: ^aiPropertyStore, name: cstring, st: ^aiString) ---
    aiSetImportPropertyMatrix :: proc(store: ^aiPropertyStore, name: cstring, mat: ^aiMatrix4x4) ---

    // --- Math ---

    aiCreateQuaternionFromMatrix :: proc(quat: ^aiQuaternion, mat: ^aiMatrix3x3) ---
    aiDecomposeMatrix :: proc(mat: ^aiMatrix4x4, scaling: ^aiVector3D, rotation: ^aiQuaternion, position: ^aiVector3D) ---
    aiTransposeMatrix4 :: proc(mat: ^aiMatrix4x4) ---
    aiTransposeMatrix3 :: proc(mat: ^aiMatrix3x3) ---
    aiTransformVecByMatrix3 :: proc(vec: ^aiVector3D, mat: ^aiMatrix3x3) ---
    aiTransformVecByMatrix4 :: proc(vec: ^aiVector3D, mat: ^aiMatrix4x4) ---
    aiMultiplyMatrix4 :: proc(dst: ^aiMatrix4x4, src: ^aiMatrix4x4) ---
    aiMultiplyMatrix3 :: proc(dst: ^aiMatrix3x3, src: ^aiMatrix3x3) ---
    aiIdentityMatrix3 :: proc(mat: ^aiMatrix3x3) ---
    aiIdentityMatrix4 :: proc(mat: ^aiMatrix4x4) ---
    aiGetImportFormatCount :: proc() -> uint ---
    aiGetImportFormatDescription :: proc(index: uint) -> ^aiImporterDesc ---

    // --- Vector2 ---

    aiVector2AreEqual :: proc(a: ^aiVector2D, b: ^aiVector2D) -> i32 ---
    aiVector2AreEqualEpsilon :: proc(a: ^aiVector2D, b: ^aiVector2D, epsilon: f32) -> i32 ---
    aiVector2Add :: proc(dst: ^aiVector2D, src: ^aiVector2D) ---
    aiVector2Subtract :: proc(dst: ^aiVector2D, src: ^aiVector2D) ---
    aiVector2Scale :: proc(dst: ^aiVector2D, s: ai_real) ---
    aiVector2SymMul :: proc(dst: ^aiVector2D, other: ^aiVector2D) ---
    aiVector2DivideByScalar :: proc(dst: ^aiVector2D, s: ai_real) ---
    aiVector2DivideByVector :: proc(dst: ^aiVector2D, v: ^aiVector2D) ---
    aiVector2Length :: proc(v: ^aiVector2D) -> ai_real ---
    aiVector2SquareLength :: proc(v: ^aiVector2D) -> ai_real ---
    aiVector2Negate :: proc(dst: ^aiVector2D) ---
    aiVector2DotProduct :: proc(a: ^aiVector2D, b: ^aiVector2D) -> ai_real ---
    aiVector2Normalize :: proc(v: ^aiVector2D) ---

    // --- Vector3 ---

    aiVector3AreEqual :: proc(a: ^aiVector3D, b: ^aiVector3D) -> i32 ---
    aiVector3AreEqualEpsilon :: proc(a: ^aiVector3D, b: ^aiVector3D, epsilon: f32) -> i32 ---
    aiVector3LessThan :: proc(a: ^aiVector3D, b: ^aiVector3D) -> i32 ---
    aiVector3Add :: proc(dst: ^aiVector3D, src: ^aiVector3D) ---
    aiVector3Subtract :: proc(dst: ^aiVector3D, src: ^aiVector3D) ---
    aiVector3Scale :: proc(dst: ^aiVector3D, s: ai_real) ---
    aiVector3SymMul :: proc(dst: ^aiVector3D, other: ^aiVector3D) ---
    aiVector3DivideByScalar :: proc(dst: ^aiVector3D, s: ai_real) ---
    aiVector3DivideByVector :: proc(dst: ^aiVector3D, v: ^aiVector3D) ---
    aiVector3Length :: proc(v: ^aiVector3D) -> ai_real ---
    aiVector3SquareLength :: proc(v: ^aiVector3D) -> ai_real ---
    aiVector3Negate :: proc(dst: ^aiVector3D) ---
    aiVector3DotProduct :: proc(a: ^aiVector3D, b: ^aiVector3D) -> ai_real ---
    aiVector3CrossProduct :: proc(dst: ^aiVector3D, a: ^aiVector3D, b: ^aiVector3D) ---
    aiVector3Normalize :: proc(v: ^aiVector3D) ---
    aiVector3NormalizeSafe :: proc(v: ^aiVector3D) ---
    aiVector3RotateByQuaternion :: proc(v: ^aiVector3D, q: ^aiQuaternion) ---

    // --- Matrix3 ---

    aiMatrix3FromMatrix4 :: proc(dst: ^aiMatrix3x3, mat: ^aiMatrix4x4) ---
    aiMatrix3FromQuaternion :: proc(mat: ^aiMatrix3x3, q: ^aiQuaternion) ---
    aiMatrix3AreEqual :: proc(a: ^aiMatrix3x3, b: ^aiMatrix3x3) -> i32 ---
    aiMatrix3AreEqualEpsilon :: proc(a: ^aiMatrix3x3, b: ^aiMatrix3x3, epsilon: f32) -> i32 ---
    aiMatrix3Inverse :: proc(mat: ^aiMatrix3x3) ---
    aiMatrix3Determinant :: proc(mat: ^aiMatrix3x3) -> ai_real ---
    aiMatrix3RotationZ :: proc(mat: ^aiMatrix3x3, angle: ai_real) ---
    aiMatrix3FromRotationAroundAxis :: proc(mat: ^aiMatrix3x3, axis: ^aiVector3D, angle: ai_real) ---
    aiMatrix3Translation :: proc(mat: ^aiMatrix3x3, translation: ^aiVector2D) ---
    aiMatrix3FromTo :: proc(mat: ^aiMatrix3x3, from: ^aiVector3D, to: ^aiVector3D) ---

    // --- Matrix4 ---

    aiMatrix4FromMatrix3 :: proc(dst: ^aiMatrix4x4, mat: ^aiMatrix3x3) ---
    aiMatrix4FromScalingQuaternionPosition :: proc(mat: ^aiMatrix4x4, scaling: ^aiVector3D, rotation: ^aiQuaternion, position: ^aiVector3D) ---
    aiMatrix4Add :: proc(dst: ^aiMatrix4x4, src: ^aiMatrix4x4) ---
    aiMatrix4AreEqual :: proc(a: ^aiMatrix4x4, b: ^aiMatrix4x4) -> i32 ---
    aiMatrix4AreEqualEpsilon :: proc(a: ^aiMatrix4x4, b: ^aiMatrix4x4, epsilon: f32) -> i32 ---
    aiMatrix4Inverse :: proc(mat: ^aiMatrix4x4) ---
    aiMatrix4Determinant :: proc(mat: ^aiMatrix4x4) -> ai_real ---
    aiMatrix4IsIdentity :: proc(mat: ^aiMatrix4x4) -> i32 ---
    aiMatrix4DecomposeIntoScalingEulerAnglesPosition :: proc(mat: ^aiMatrix4x4, scaling: ^aiVector3D, rotation: ^aiVector3D, position: ^aiVector3D) ---
    aiMatrix4DecomposeIntoScalingAxisAnglePosition :: proc(mat: ^aiMatrix4x4, scaling: ^aiVector3D, axis: ^aiVector3D, angle: ^ai_real, position: ^aiVector3D) ---
    aiMatrix4DecomposeNoScaling :: proc(mat: ^aiMatrix4x4, rotation: ^aiQuaternion, position: ^aiVector3D) ---
    aiMatrix4FromEulerAngles :: proc(mat: ^aiMatrix4x4, x: ai_real, y: ai_real, z: ai_real) ---
    aiMatrix4RotationX :: proc(mat: ^aiMatrix4x4, angle: ai_real) ---
    aiMatrix4RotationY :: proc(mat: ^aiMatrix4x4, angle: ai_real) ---
    aiMatrix4RotationZ :: proc(mat: ^aiMatrix4x4, angle: ai_real) ---
    aiMatrix4FromRotationAroundAxis :: proc(mat: ^aiMatrix4x4, axis: ^aiVector3D, angle: ai_real) ---
    aiMatrix4Translation :: proc(mat: ^aiMatrix4x4, translation: ^aiVector3D) ---
    aiMatrix4Scaling :: proc(mat: ^aiMatrix4x4, scaling: ^aiVector3D) ---
    aiMatrix4FromTo :: proc(mat: ^aiMatrix4x4, from: ^aiVector3D, to: ^aiVector3D) ---

    // --- Quaternion ---

    aiQuaternionFromEulerAngles :: proc(q: ^aiQuaternion, x: ai_real, y: ai_real, z: ai_real) ---
    aiQuaternionFromAxisAngle :: proc(q: ^aiQuaternion, axis: ^aiVector3D, angle: ai_real) ---
    aiQuaternionFromNormalizedQuaternion :: proc(q: ^aiQuaternion, normalized: ^aiVector3D) ---
    aiQuaternionAreEqual :: proc(a: ^aiQuaternion, b: ^aiQuaternion) -> i32 ---
    aiQuaternionAreEqualEpsilon :: proc(a: ^aiQuaternion, b: ^aiQuaternion, epsilon: f32) -> i32 ---
    aiQuaternionNormalize :: proc(q: ^aiQuaternion) ---
    aiQuaternionConjugate :: proc(q: ^aiQuaternion) ---
    aiQuaternionMultiply :: proc(dst: ^aiQuaternion, q: ^aiQuaternion) ---
    aiQuaternionInterpolate :: proc(dst: ^aiQuaternion, start: ^aiQuaternion, end: ^aiQuaternion, factor: ai_real) ---

    // --- Version ---

    aiGetLegalString :: proc() -> cstring ---
    aiGetVersionPatch :: proc() -> u32 ---
    aiGetVersionMinor :: proc() -> u32 ---
    aiGetVersionMajor :: proc() -> u32 ---
    aiGetVersionRevision :: proc() -> u32 ---
    aiGetBranchName :: proc() -> cstring ---
    aiGetCompileFlags :: proc() -> u32 ---

    // --- Export ---

    aiGetExportFormatCount :: proc() -> uint ---
    aiGetExportFormatDescription :: proc(index: uint) -> ^aiExportFormatDesc ---
    aiReleaseExportFormatDescription :: proc(desc: ^aiExportFormatDesc) ---
    aiExportScene :: proc(scene: ^aiScene, format_id: cstring, file_name: cstring, preprocessing: u32) -> aiReturn ---
    aiExportSceneEx :: proc(scene: ^aiScene, format_id: cstring, file_name: cstring, io: ^aiFileIO, preprocessing: u32) -> aiReturn ---
    aiExportSceneToBlob :: proc(scene: ^aiScene, format_id: cstring, preprocessing: u32) -> ^aiExportDataBlob ---
    aiReleaseExportBlob :: proc(data: ^aiExportDataBlob) ---
    aiCopyScene :: proc(in_scene: ^aiScene, out_scene: ^^aiScene) ---
    aiFreeScene :: proc(scene: ^aiScene) ---

    // --- Material ---

    aiGetMaterialProperty :: proc(mat: ^aiMaterial, key: cstring, type_: u32, index: u32, prop_out: ^^aiMaterialProperty) -> aiReturn ---
    aiGetMaterialFloatArray :: proc(mat: ^aiMaterial, key: cstring, type_: u32, index: u32, out: ^ai_real, max: ^u32) -> aiReturn ---
    aiGetMaterialIntegerArray :: proc(mat: ^aiMaterial, key: cstring, type_: u32, index: u32, out: ^i32, max: ^u32) -> aiReturn ---
    aiGetMaterialColor :: proc(mat: ^aiMaterial, key: cstring, type_: u32, index: u32, out: ^aiColor4D) -> aiReturn ---
    aiGetMaterialUVTransform :: proc(mat: ^aiMaterial, key: cstring, type_: u32, index: u32, out: ^aiUVTransform) -> aiReturn ---
    aiGetMaterialString :: proc(mat: ^aiMaterial, key: cstring, type_: u32, index: u32, out: ^aiString) -> aiReturn ---
    aiGetMaterialTextureCount :: proc(mat: ^aiMaterial, type_: aiTextureType) -> u32 ---
    aiGetMaterialTexture :: proc(mat: ^aiMaterial, type_: aiTextureType, index: u32, path: ^aiString, mapping: ^aiTextureMapping, uvindex: ^u32, blend: ^ai_real, op: ^aiTextureOp, mapmode: ^aiTextureMapMode, flags: ^u32) -> aiReturn ---
    aiTextureTypeToString :: proc(in_: aiTextureType) -> cstring ---

    // --- Importer info ---

    aiGetImporterDesc :: proc(extension: cstring) -> ^aiImporterDesc ---
}

package assimp

// --- Vec2 ---

vec2_add :: proc(a, b: aiVector2D) -> aiVector2D {
    dst, src := a, b
    aiVector2Add(&dst, &src)
    return dst
}

vec2_sub :: proc(a, b: aiVector2D) -> aiVector2D {
    dst, src := a, b
    aiVector2Subtract(&dst, &src)
    return dst
}

vec2_scale :: proc(v: aiVector2D, s: ai_real) -> aiVector2D {
    dst := v
    aiVector2Scale(&dst, s)
    return dst
}

vec2_negate :: proc(v: aiVector2D) -> aiVector2D {
    dst := v
    aiVector2Negate(&dst)
    return dst
}

vec2_normalize :: proc(v: aiVector2D) -> aiVector2D {
    dst := v
    aiVector2Normalize(&dst)
    return dst
}

vec2_length :: proc(v: aiVector2D) -> ai_real {
    vv := v
    return aiVector2Length(&vv)
}

vec2_length_squared :: proc(v: aiVector2D) -> ai_real {
    vv := v
    return aiVector2SquareLength(&vv)
}

vec2_dot :: proc(a, b: aiVector2D) -> ai_real {
    aa, bb := a, b
    return aiVector2DotProduct(&aa, &bb)
}

vec2_equal :: proc(a, b: aiVector2D) -> bool {
    aa, bb := a, b
    return aiVector2AreEqual(&aa, &bb) != 0
}

vec2_equal_epsilon :: proc(a, b: aiVector2D, eps: f32) -> bool {
    aa, bb := a, b
    return aiVector2AreEqualEpsilon(&aa, &bb, eps) != 0
}

vec2_sym_mul :: proc(a, b: aiVector2D) -> aiVector2D {
    dst, src := a, b
    aiVector2SymMul(&dst, &src)
    return dst
}

vec2_div_scalar :: proc(v: aiVector2D, s: ai_real) -> aiVector2D {
    dst := v
    aiVector2DivideByScalar(&dst, s)
    return dst
}

vec2_div_vector :: proc(a, b: aiVector2D) -> aiVector2D {
    dst, src := a, b
    aiVector2DivideByVector(&dst, &src)
    return dst
}

// --- Vec3 ---

vec3_add :: proc(a, b: aiVector3D) -> aiVector3D {
    dst, src := a, b
    aiVector3Add(&dst, &src)
    return dst
}

vec3_sub :: proc(a, b: aiVector3D) -> aiVector3D {
    dst, src := a, b
    aiVector3Subtract(&dst, &src)
    return dst
}

vec3_scale :: proc(v: aiVector3D, s: ai_real) -> aiVector3D {
    dst := v
    aiVector3Scale(&dst, s)
    return dst
}

vec3_negate :: proc(v: aiVector3D) -> aiVector3D {
    dst := v
    aiVector3Negate(&dst)
    return dst
}

vec3_normalize :: proc(v: aiVector3D) -> aiVector3D {
    dst := v
    aiVector3Normalize(&dst)
    return dst
}

vec3_normalize_safe :: proc(v: aiVector3D) -> aiVector3D {
    dst := v
    aiVector3NormalizeSafe(&dst)
    return dst
}

vec3_cross :: proc(a, b: aiVector3D) -> aiVector3D {
    dst: aiVector3D
    aa, bb := a, b
    aiVector3CrossProduct(&dst, &aa, &bb)
    return dst
}

vec3_dot :: proc(a, b: aiVector3D) -> ai_real {
    aa, bb := a, b
    return aiVector3DotProduct(&aa, &bb)
}

vec3_length :: proc(v: aiVector3D) -> ai_real {
    vv := v
    return aiVector3Length(&vv)
}

vec3_length_squared :: proc(v: aiVector3D) -> ai_real {
    vv := v
    return aiVector3SquareLength(&vv)
}

vec3_equal :: proc(a, b: aiVector3D) -> bool {
    aa, bb := a, b
    return aiVector3AreEqual(&aa, &bb) != 0
}

vec3_equal_epsilon :: proc(a, b: aiVector3D, eps: f32) -> bool {
    aa, bb := a, b
    return aiVector3AreEqualEpsilon(&aa, &bb, eps) != 0
}

vec3_less_than :: proc(a, b: aiVector3D) -> bool {
    aa, bb := a, b
    return aiVector3LessThan(&aa, &bb) != 0
}

vec3_sym_mul :: proc(a, b: aiVector3D) -> aiVector3D {
    dst, src := a, b
    aiVector3SymMul(&dst, &src)
    return dst
}

vec3_div_scalar :: proc(v: aiVector3D, s: ai_real) -> aiVector3D {
    dst := v
    aiVector3DivideByScalar(&dst, s)
    return dst
}

vec3_div_vector :: proc(a, b: aiVector3D) -> aiVector3D {
    dst, src := a, b
    aiVector3DivideByVector(&dst, &src)
    return dst
}

vec3_rotate_by_quaternion :: proc(v: aiVector3D, q: aiQuaternion) -> aiVector3D {
    dst, qq := v, q
    aiVector3RotateByQuaternion(&dst, &qq)
    return dst
}

vec3_transform_by_matrix3 :: proc(v: aiVector3D, m: aiMatrix3x3) -> aiVector3D {
    dst, mm := v, m
    aiTransformVecByMatrix3(&dst, &mm)
    return dst
}

vec3_transform_by_matrix4 :: proc(v: aiVector3D, m: aiMatrix4x4) -> aiVector3D {
    dst, mm := v, m
    aiTransformVecByMatrix4(&dst, &mm)
    return dst
}

// --- Mat3 ---

mat3_mul :: proc(a, b: aiMatrix3x3) -> aiMatrix3x3 {
    dst, src := a, b
    aiMultiplyMatrix3(&dst, &src)
    return dst
}

mat3_transpose :: proc(m: aiMatrix3x3) -> aiMatrix3x3 {
    dst := m
    aiTransposeMatrix3(&dst)
    return dst
}

mat3_inverse :: proc(m: aiMatrix3x3) -> aiMatrix3x3 {
    dst := m
    aiMatrix3Inverse(&dst)
    return dst
}

mat3_determinant :: proc(m: aiMatrix3x3) -> ai_real {
    mm := m
    return aiMatrix3Determinant(&mm)
}

mat3_identity :: proc() -> aiMatrix3x3 {
    m: aiMatrix3x3
    aiIdentityMatrix3(&m)
    return m
}

mat3_equal :: proc(a, b: aiMatrix3x3) -> bool {
    aa, bb := a, b
    return aiMatrix3AreEqual(&aa, &bb) != 0
}

mat3_equal_epsilon :: proc(a, b: aiMatrix3x3, eps: f32) -> bool {
    aa, bb := a, b
    return aiMatrix3AreEqualEpsilon(&aa, &bb, eps) != 0
}

mat3_from_matrix4 :: proc(m: aiMatrix4x4) -> aiMatrix3x3 {
    dst: aiMatrix3x3
    mm := m
    aiMatrix3FromMatrix4(&dst, &mm)
    return dst
}

mat3_from_quaternion :: proc(q: aiQuaternion) -> aiMatrix3x3 {
    dst: aiMatrix3x3
    qq := q
    aiMatrix3FromQuaternion(&dst, &qq)
    return dst
}

mat3_rotation_z :: proc(angle: ai_real) -> aiMatrix3x3 {
    m: aiMatrix3x3
    aiMatrix3RotationZ(&m, angle)
    return m
}

mat3_from_rotation_around_axis :: proc(axis: aiVector3D, angle: ai_real) -> aiMatrix3x3 {
    m: aiMatrix3x3
    aa := axis
    aiMatrix3FromRotationAroundAxis(&m, &aa, angle)
    return m
}

mat3_translation :: proc(v: aiVector2D) -> aiMatrix3x3 {
    m: aiMatrix3x3
    vv := v
    aiMatrix3Translation(&m, &vv)
    return m
}

mat3_from_to :: proc(from, to: aiVector3D) -> aiMatrix3x3 {
    m: aiMatrix3x3
    ff, tt := from, to
    aiMatrix3FromTo(&m, &ff, &tt)
    return m
}

// --- Mat4 ---

mat4_mul :: proc(a, b: aiMatrix4x4) -> aiMatrix4x4 {
    dst, src := a, b
    aiMultiplyMatrix4(&dst, &src)
    return dst
}

mat4_add :: proc(a, b: aiMatrix4x4) -> aiMatrix4x4 {
    dst, src := a, b
    aiMatrix4Add(&dst, &src)
    return dst
}

mat4_transpose :: proc(m: aiMatrix4x4) -> aiMatrix4x4 {
    dst := m
    aiTransposeMatrix4(&dst)
    return dst
}

mat4_inverse :: proc(m: aiMatrix4x4) -> aiMatrix4x4 {
    dst := m
    aiMatrix4Inverse(&dst)
    return dst
}

mat4_determinant :: proc(m: aiMatrix4x4) -> ai_real {
    mm := m
    return aiMatrix4Determinant(&mm)
}

mat4_is_identity :: proc(m: aiMatrix4x4) -> bool {
    mm := m
    return aiMatrix4IsIdentity(&mm) != 0
}

mat4_identity :: proc() -> aiMatrix4x4 {
    m: aiMatrix4x4
    aiIdentityMatrix4(&m)
    return m
}

mat4_equal :: proc(a, b: aiMatrix4x4) -> bool {
    aa, bb := a, b
    return aiMatrix4AreEqual(&aa, &bb) != 0
}

mat4_equal_epsilon :: proc(a, b: aiMatrix4x4, eps: f32) -> bool {
    aa, bb := a, b
    return aiMatrix4AreEqualEpsilon(&aa, &bb, eps) != 0
}

mat4_from_matrix3 :: proc(m: aiMatrix3x3) -> aiMatrix4x4 {
    dst: aiMatrix4x4
    mm := m
    aiMatrix4FromMatrix3(&dst, &mm)
    return dst
}

mat4_from_scaling_rotation_position :: proc(scaling: aiVector3D, rotation: aiQuaternion, position: aiVector3D) -> aiMatrix4x4 {
    dst: aiMatrix4x4
    s, r, p := scaling, rotation, position
    aiMatrix4FromScalingQuaternionPosition(&dst, &s, &r, &p)
    return dst
}

mat4_rotation_x :: proc(angle: ai_real) -> aiMatrix4x4 {
    m: aiMatrix4x4
    aiMatrix4RotationX(&m, angle)
    return m
}

mat4_rotation_y :: proc(angle: ai_real) -> aiMatrix4x4 {
    m: aiMatrix4x4
    aiMatrix4RotationY(&m, angle)
    return m
}

mat4_rotation_z :: proc(angle: ai_real) -> aiMatrix4x4 {
    m: aiMatrix4x4
    aiMatrix4RotationZ(&m, angle)
    return m
}

mat4_from_euler_angles :: proc(x, y, z: ai_real) -> aiMatrix4x4 {
    m: aiMatrix4x4
    aiMatrix4FromEulerAngles(&m, x, y, z)
    return m
}

mat4_from_rotation_around_axis :: proc(axis: aiVector3D, angle: ai_real) -> aiMatrix4x4 {
    m: aiMatrix4x4
    aa := axis
    aiMatrix4FromRotationAroundAxis(&m, &aa, angle)
    return m
}

mat4_translation :: proc(v: aiVector3D) -> aiMatrix4x4 {
    m: aiMatrix4x4
    vv := v
    aiMatrix4Translation(&m, &vv)
    return m
}

mat4_scaling :: proc(v: aiVector3D) -> aiMatrix4x4 {
    m: aiMatrix4x4
    vv := v
    aiMatrix4Scaling(&m, &vv)
    return m
}

mat4_from_to :: proc(from, to: aiVector3D) -> aiMatrix4x4 {
    m: aiMatrix4x4
    ff, tt := from, to
    aiMatrix4FromTo(&m, &ff, &tt)
    return m
}

DecomposeResult :: struct {
    scaling: aiVector3D,
    rotation: aiQuaternion,
    position: aiVector3D,
}

mat4_decompose :: proc(m: aiMatrix4x4) -> DecomposeResult {
    result: DecomposeResult
    mm := m
    aiDecomposeMatrix(&mm, &result.scaling, &result.rotation, &result.position)
    return result
}

mat4_decompose_euler :: proc(m: aiMatrix4x4) -> struct { scaling: aiVector3D, rotation: aiVector3D, position: aiVector3D } {
    scaling: aiVector3D
    rotation: aiVector3D
    position: aiVector3D
    mm := m
    aiMatrix4DecomposeIntoScalingEulerAnglesPosition(&mm, &scaling, &rotation, &position)
    return {scaling = scaling, rotation = rotation, position = position}
}

mat4_decompose_axis_angle :: proc(m: aiMatrix4x4) -> struct { scaling: aiVector3D, axis: aiVector3D, angle: ai_real, position: aiVector3D } {
    scaling: aiVector3D
    axis: aiVector3D
    angle: ai_real
    position: aiVector3D
    mm := m
    aiMatrix4DecomposeIntoScalingAxisAnglePosition(&mm, &scaling, &axis, &angle, &position)
    return {scaling = scaling, axis = axis, angle = angle, position = position}
}

mat4_decompose_no_scaling :: proc(m: aiMatrix4x4) -> struct { rotation: aiQuaternion, position: aiVector3D } {
    rotation: aiQuaternion
    position: aiVector3D
    mm := m
    aiMatrix4DecomposeNoScaling(&mm, &rotation, &position)
    return {rotation = rotation, position = position}
}

// --- Quaternion ---

quat_mul :: proc(a, b: aiQuaternion) -> aiQuaternion {
    dst, src := a, b
    aiQuaternionMultiply(&dst, &src)
    return dst
}

quat_normalize :: proc(q: aiQuaternion) -> aiQuaternion {
    dst := q
    aiQuaternionNormalize(&dst)
    return dst
}

quat_conjugate :: proc(q: aiQuaternion) -> aiQuaternion {
    dst := q
    aiQuaternionConjugate(&dst)
    return dst
}

quat_from_axis_angle :: proc(axis: aiVector3D, angle: ai_real) -> aiQuaternion {
    q: aiQuaternion
    aa := axis
    aiQuaternionFromAxisAngle(&q, &aa, angle)
    return q
}

quat_from_euler_angles :: proc(x, y, z: ai_real) -> aiQuaternion {
    q: aiQuaternion
    aiQuaternionFromEulerAngles(&q, x, y, z)
    return q
}

quat_from_matrix3 :: proc(m: aiMatrix3x3) -> aiQuaternion {
    q: aiQuaternion
    mm := m
    aiCreateQuaternionFromMatrix(&q, &mm)
    return q
}

quat_interpolate :: proc(a, b: aiQuaternion, t: ai_real) -> aiQuaternion {
    dst: aiQuaternion
    aa, bb := a, b
    aiQuaternionInterpolate(&dst, &aa, &bb, t)
    return dst
}

quat_equal :: proc(a, b: aiQuaternion) -> bool {
    aa, bb := a, b
    return aiQuaternionAreEqual(&aa, &bb) != 0
}

quat_equal_epsilon :: proc(a, b: aiQuaternion, eps: f32) -> bool {
    aa, bb := a, b
    return aiQuaternionAreEqualEpsilon(&aa, &bb, eps) != 0
}

quat_from_normalized_vector3 :: proc(v: aiVector3D) -> aiQuaternion {
    q: aiQuaternion
    vv := v
    aiQuaternionFromNormalizedQuaternion(&q, &vv)
    return q
}

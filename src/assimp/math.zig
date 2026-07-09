const types = @import("types.zig");
const c = @import("c.zig");

const aiVector2D = types.aiVector2D;
const aiVector3D = types.aiVector3D;
const aiMatrix3x3 = types.aiMatrix3x3;
const aiMatrix4x4 = types.aiMatrix4x4;
const aiQuaternion = types.aiQuaternion;

pub fn vec2Add(a: aiVector2D, b: aiVector2D) aiVector2D {
    var dst = a;
    c.aiVector2Add(&dst, &b);
    return dst;
}

pub fn vec2Sub(a: aiVector2D, b: aiVector2D) aiVector2D {
    var dst = a;
    c.aiVector2Subtract(&dst, &b);
    return dst;
}

pub fn vec2Scale(v: aiVector2D, s: ai_real) aiVector2D {
    var dst = v;
    c.aiVector2Scale(&dst, s);
    return dst;
}

pub fn vec2Negate(v: aiVector2D) aiVector2D {
    var dst = v;
    c.aiVector2Negate(&dst);
    return dst;
}

pub fn vec2Normalize(v: aiVector2D) aiVector2D {
    var dst = v;
    c.aiVector2Normalize(&dst);
    return dst;
}

pub fn vec2Length(v: aiVector2D) ai_real {
    return c.aiVector2Length(&v);
}

pub fn vec2LengthSquared(v: aiVector2D) ai_real {
    return c.aiVector2SquareLength(&v);
}

pub fn vec2Dot(a: aiVector2D, b: aiVector2D) ai_real {
    return c.aiVector2DotProduct(&a, &b);
}

pub fn vec2Equal(a: aiVector2D, b: aiVector2D) bool {
    return c.aiVector2AreEqual(&a, &b) != 0;
}

pub fn vec2EqualEpsilon(a: aiVector2D, b: aiVector2D, eps: f32) bool {
    return c.aiVector2AreEqualEpsilon(&a, &b, eps) != 0;
}

pub fn vec2SymMul(a: aiVector2D, b: aiVector2D) aiVector2D {
    var dst = a;
    c.aiVector2SymMul(&dst, &b);
    return dst;
}

pub fn vec2DivScalar(v: aiVector2D, s: ai_real) aiVector2D {
    var dst = v;
    c.aiVector2DivideByScalar(&dst, s);
    return dst;
}

pub fn vec2DivVector(a: aiVector2D, b: aiVector2D) aiVector2D {
    var dst = a;
    c.aiVector2DivideByVector(&dst, &b);
    return dst;
}

pub fn vec3Add(a: aiVector3D, b: aiVector3D) aiVector3D {
    var dst = a;
    c.aiVector3Add(&dst, &b);
    return dst;
}

pub fn vec3Sub(a: aiVector3D, b: aiVector3D) aiVector3D {
    var dst = a;
    c.aiVector3Subtract(&dst, &b);
    return dst;
}

pub fn vec3Scale(v: aiVector3D, s: ai_real) aiVector3D {
    var dst = v;
    c.aiVector3Scale(&dst, s);
    return dst;
}

pub fn vec3Negate(v: aiVector3D) aiVector3D {
    var dst = v;
    c.aiVector3Negate(&dst);
    return dst;
}

pub fn vec3Normalize(v: aiVector3D) aiVector3D {
    var dst = v;
    c.aiVector3Normalize(&dst);
    return dst;
}

pub fn vec3NormalizeSafe(v: aiVector3D) aiVector3D {
    var dst = v;
    c.aiVector3NormalizeSafe(&dst);
    return dst;
}

pub fn vec3Cross(a: aiVector3D, b: aiVector3D) aiVector3D {
    var dst: aiVector3D = undefined;
    c.aiVector3CrossProduct(&dst, &a, &b);
    return dst;
}

pub fn vec3Dot(a: aiVector3D, b: aiVector3D) ai_real {
    return c.aiVector3DotProduct(&a, &b);
}

pub fn vec3Length(v: aiVector3D) ai_real {
    return c.aiVector3Length(&v);
}

pub fn vec3LengthSquared(v: aiVector3D) ai_real {
    return c.aiVector3SquareLength(&v);
}

pub fn vec3Equal(a: aiVector3D, b: aiVector3D) bool {
    return c.aiVector3AreEqual(&a, &b) != 0;
}

pub fn vec3EqualEpsilon(a: aiVector3D, b: aiVector3D, eps: f32) bool {
    return c.aiVector3AreEqualEpsilon(&a, &b, eps) != 0;
}

pub fn vec3LessThan(a: aiVector3D, b: aiVector3D) bool {
    return c.aiVector3LessThan(&a, &b) != 0;
}

pub fn vec3SymMul(a: aiVector3D, b: aiVector3D) aiVector3D {
    var dst = a;
    c.aiVector3SymMul(&dst, &b);
    return dst;
}

pub fn vec3DivScalar(v: aiVector3D, s: ai_real) aiVector3D {
    var dst = v;
    c.aiVector3DivideByScalar(&dst, s);
    return dst;
}

pub fn vec3DivVector(a: aiVector3D, b: aiVector3D) aiVector3D {
    var dst = a;
    c.aiVector3DivideByVector(&dst, &b);
    return dst;
}

pub fn vec3RotateByQuaternion(v: aiVector3D, q: aiQuaternion) aiVector3D {
    var dst = v;
    c.aiVector3RotateByQuaternion(&dst, &q);
    return dst;
}

pub fn vec3TransformByMatrix3(v: aiVector3D, m: aiMatrix3x3) aiVector3D {
    var dst = v;
    c.aiTransformVecByMatrix3(&dst, &m);
    return dst;
}

pub fn vec3TransformByMatrix4(v: aiVector3D, m: aiMatrix4x4) aiVector3D {
    var dst = v;
    c.aiTransformVecByMatrix4(&dst, &m);
    return dst;
}

pub fn mat3Mul(a: aiMatrix3x3, b: aiMatrix3x3) aiMatrix3x3 {
    var dst = a;
    c.aiMultiplyMatrix3(&dst, &b);
    return dst;
}

pub fn mat3Transpose(m: aiMatrix3x3) aiMatrix3x3 {
    var dst = m;
    c.aiTransposeMatrix3(&dst);
    return dst;
}

pub fn mat3Inverse(m: aiMatrix3x3) aiMatrix3x3 {
    var dst = m;
    c.aiMatrix3Inverse(&dst);
    return dst;
}

pub fn mat3Determinant(m: aiMatrix3x3) ai_real {
    return c.aiMatrix3Determinant(&m);
}

pub fn mat3Identity() aiMatrix3x3 {
    var m: aiMatrix3x3 = undefined;
    c.aiIdentityMatrix3(&m);
    return m;
}

pub fn mat3Equal(a: aiMatrix3x3, b: aiMatrix3x3) bool {
    return c.aiMatrix3AreEqual(&a, &b) != 0;
}

pub fn mat3EqualEpsilon(a: aiMatrix3x3, b: aiMatrix3x3, eps: f32) bool {
    return c.aiMatrix3AreEqualEpsilon(&a, &b, eps) != 0;
}

pub fn mat3FromMatrix4(m: aiMatrix4x4) aiMatrix3x3 {
    var dst: aiMatrix3x3 = undefined;
    c.aiMatrix3FromMatrix4(&dst, &m);
    return dst;
}

pub fn mat3FromQuaternion(q: aiQuaternion) aiMatrix3x3 {
    var dst: aiMatrix3x3 = undefined;
    c.aiMatrix3FromQuaternion(&dst, &q);
    return dst;
}

pub fn mat3RotationZ(angle: ai_real) aiMatrix3x3 {
    var m: aiMatrix3x3 = undefined;
    c.aiMatrix3RotationZ(&m, angle);
    return m;
}

pub fn mat3FromRotationAroundAxis(axis: aiVector3D, angle: ai_real) aiMatrix3x3 {
    var m: aiMatrix3x3 = undefined;
    c.aiMatrix3FromRotationAroundAxis(&m, &axis, angle);
    return m;
}

pub fn mat3Translation(v: aiVector2D) aiMatrix3x3 {
    var m: aiMatrix3x3 = undefined;
    c.aiMatrix3Translation(&m, &v);
    return m;
}

pub fn mat3FromTo(from: aiVector3D, to: aiVector3D) aiMatrix3x3 {
    var m: aiMatrix3x3 = undefined;
    c.aiMatrix3FromTo(&m, &from, &to);
    return m;
}

pub fn mat4Mul(a: aiMatrix4x4, b: aiMatrix4x4) aiMatrix4x4 {
    var dst = a;
    c.aiMultiplyMatrix4(&dst, &b);
    return dst;
}

pub fn mat4Add(a: aiMatrix4x4, b: aiMatrix4x4) aiMatrix4x4 {
    var dst = a;
    c.aiMatrix4Add(&dst, &b);
    return dst;
}

pub fn mat4Transpose(m: aiMatrix4x4) aiMatrix4x4 {
    var dst = m;
    c.aiTransposeMatrix4(&dst);
    return dst;
}

pub fn mat4Inverse(m: aiMatrix4x4) aiMatrix4x4 {
    var dst = m;
    c.aiMatrix4Inverse(&dst);
    return dst;
}

pub fn mat4Determinant(m: aiMatrix4x4) ai_real {
    return c.aiMatrix4Determinant(&m);
}

pub fn mat4IsIdentity(m: aiMatrix4x4) bool {
    return c.aiMatrix4IsIdentity(&m) != 0;
}

pub fn mat4Identity() aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiIdentityMatrix4(&m);
    return m;
}

pub fn mat4Equal(a: aiMatrix4x4, b: aiMatrix4x4) bool {
    return c.aiMatrix4AreEqual(&a, &b) != 0;
}

pub fn mat4EqualEpsilon(a: aiMatrix4x4, b: aiMatrix4x4, eps: f32) bool {
    return c.aiMatrix4AreEqualEpsilon(&a, &b, eps) != 0;
}

pub fn mat4FromMatrix3(m: aiMatrix3x3) aiMatrix4x4 {
    var dst: aiMatrix4x4 = undefined;
    c.aiMatrix4FromMatrix3(&dst, &m);
    return dst;
}

pub fn mat4FromScalingRotationPosition(scaling: aiVector3D, rotation: aiQuaternion, position: aiVector3D) aiMatrix4x4 {
    var dst: aiMatrix4x4 = undefined;
    c.aiMatrix4FromScalingQuaternionPosition(&dst, &scaling, &rotation, &position);
    return dst;
}

pub fn mat4RotationX(angle: ai_real) aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiMatrix4RotationX(&m, angle);
    return m;
}

pub fn mat4RotationY(angle: ai_real) aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiMatrix4RotationY(&m, angle);
    return m;
}

pub fn mat4RotationZ(angle: ai_real) aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiMatrix4RotationZ(&m, angle);
    return m;
}

pub fn mat4FromRotationAroundAxis(axis: aiVector3D, angle: ai_real) aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiMatrix4FromRotationAroundAxis(&m, &axis, angle);
    return m;
}

pub fn mat4FromEulerAngles(x: ai_real, y: ai_real, z: ai_real) aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiMatrix4FromEulerAngles(&m, x, y, z);
    return m;
}

pub fn mat4Translation(v: aiVector3D) aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiMatrix4Translation(&m, &v);
    return m;
}

pub fn mat4Scaling(v: aiVector3D) aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiMatrix4Scaling(&m, &v);
    return m;
}

pub fn mat4FromTo(from: aiVector3D, to: aiVector3D) aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiMatrix4FromTo(&m, &from, &to);
    return m;
}

pub const DecomposeResult = struct {
    scaling: aiVector3D,
    rotation: aiQuaternion,
    position: aiVector3D,
};

pub fn mat4Decompose(m: aiMatrix4x4) DecomposeResult {
    var result: DecomposeResult = undefined;
    c.aiDecomposeMatrix(&m, &result.scaling, &result.rotation, &result.position);
    return result;
}

pub fn mat4DecomposeEuler(m: aiMatrix4x4) struct { scaling: aiVector3D, rotation: aiVector3D, position: aiVector3D } {
    var scaling: aiVector3D = undefined;
    var rotation: aiVector3D = undefined;
    var position: aiVector3D = undefined;
    c.aiMatrix4DecomposeIntoScalingEulerAnglesPosition(&m, &scaling, &rotation, &position);
    return .{ .scaling = scaling, .rotation = rotation, .position = position };
}

pub fn mat4DecomposeAxisAngle(m: aiMatrix4x4) struct { scaling: aiVector3D, axis: aiVector3D, angle: ai_real, position: aiVector3D } {
    var scaling: aiVector3D = undefined;
    var axis: aiVector3D = undefined;
    var angle: ai_real = undefined;
    var position: aiVector3D = undefined;
    c.aiMatrix4DecomposeIntoScalingAxisAnglePosition(&m, &scaling, &axis, &angle, &position);
    return .{ .scaling = scaling, .axis = axis, .angle = angle, .position = position };
}

pub fn mat4DecomposeNoScaling(m: aiMatrix4x4) struct { rotation: aiQuaternion, position: aiVector3D } {
    var rotation: aiQuaternion = undefined;
    var position: aiVector3D = undefined;
    c.aiMatrix4DecomposeNoScaling(&m, &rotation, &position);
    return .{ .rotation = rotation, .position = position };
}

pub fn quatMul(a: aiQuaternion, b: aiQuaternion) aiQuaternion {
    var dst = a;
    c.aiQuaternionMultiply(&dst, &b);
    return dst;
}

pub fn quatNormalize(q: aiQuaternion) aiQuaternion {
    var dst = q;
    c.aiQuaternionNormalize(&dst);
    return dst;
}

pub fn quatConjugate(q: aiQuaternion) aiQuaternion {
    var dst = q;
    c.aiQuaternionConjugate(&dst);
    return dst;
}

pub fn quatFromAxisAngle(axis: aiVector3D, angle: ai_real) aiQuaternion {
    var q: aiQuaternion = undefined;
    c.aiQuaternionFromAxisAngle(&q, &axis, angle);
    return q;
}

pub fn quatFromEulerAngles(x: ai_real, y: ai_real, z: ai_real) aiQuaternion {
    var q: aiQuaternion = undefined;
    c.aiQuaternionFromEulerAngles(&q, x, y, z);
    return q;
}

pub fn quatFromMatrix3(m: aiMatrix3x3) aiQuaternion {
    var q: aiQuaternion = undefined;
    c.aiCreateQuaternionFromMatrix(&q, &m);
    return q;
}

pub fn quatInterpolate(a: aiQuaternion, b: aiQuaternion, t: ai_real) aiQuaternion {
    var dst: aiQuaternion = undefined;
    c.aiQuaternionInterpolate(&dst, &a, &b, t);
    return dst;
}

pub fn quatEqual(a: aiQuaternion, b: aiQuaternion) bool {
    return c.aiQuaternionAreEqual(&a, &b) != 0;
}

pub fn quatEqualEpsilon(a: aiQuaternion, b: aiQuaternion, eps: f32) bool {
    return c.aiQuaternionAreEqualEpsilon(&a, &b, eps) != 0;
}

pub fn quatFromNormalizedVector3(v: aiVector3D) aiQuaternion {
    var q: aiQuaternion = undefined;
    c.aiQuaternionFromNormalizedQuaternion(&q, &v);
    return q;
}

const ai_real = types.ai_real;

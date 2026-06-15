const types = @import("types.zig");
const c = @import("c.zig");

const aiVector2D = types.aiVector2D;
const aiVector3D = types.aiVector3D;
const aiMatrix3x3 = types.aiMatrix3x3;
const aiMatrix4x4 = types.aiMatrix4x4;
const aiQuaternion = types.aiQuaternion;

pub fn add(a: aiVector2D, b: aiVector2D) aiVector2D {
    var dst = a;
    c.aiVector2Add(&dst, &b);
    return dst;
}

pub fn sub(a: aiVector2D, b: aiVector2D) aiVector2D {
    var dst = a;
    c.aiVector2Subtract(&dst, &b);
    return dst;
}

pub fn scale(v: aiVector2D, s: f32) aiVector2D {
    var dst = v;
    c.aiVector2Scale(&dst, s);
    return dst;
}

pub fn negate(v: aiVector2D) aiVector2D {
    var dst = v;
    c.aiVector2Negate(&dst);
    return dst;
}

pub fn normalize(v: aiVector2D) aiVector2D {
    var dst = v;
    c.aiVector2Normalize(&dst);
    return dst;
}

pub fn length(v: aiVector2D) f32 {
    return c.aiVector2Length(&v);
}

pub fn lengthSquared(v: aiVector2D) f32 {
    return c.aiVector2SquareLength(&v);
}

pub fn dot(a: aiVector2D, b: aiVector2D) f32 {
    return c.aiVector2DotProduct(&a, &b);
}

pub fn equal(a: aiVector2D, b: aiVector2D) bool {
    return c.aiVector2AreEqual(&a, &b) != 0;
}

pub fn equalEpsilon(a: aiVector2D, b: aiVector2D, eps: f32) bool {
    return c.aiVector2AreEqualEpsilon(&a, &b, eps) != 0;
}

pub fn symMul(a: aiVector2D, b: aiVector2D) aiVector2D {
    var dst = a;
    c.aiVector2SymMul(&dst, &b);
    return dst;
}

pub fn divScalar(v: aiVector2D, s: f32) aiVector2D {
    var dst = v;
    c.aiVector2DivideByScalar(&dst, s);
    return dst;
}

pub fn divVector(a: aiVector2D, b: aiVector2D) aiVector2D {
    var dst = a;
    c.aiVector2DivideByVector(&dst, &b);
    return dst;
}

pub fn add(a: aiVector3D, b: aiVector3D) aiVector3D {
    var dst = a;
    c.aiVector3Add(&dst, &b);
    return dst;
}

pub fn sub(a: aiVector3D, b: aiVector3D) aiVector3D {
    var dst = a;
    c.aiVector3Subtract(&dst, &b);
    return dst;
}

pub fn scale(v: aiVector3D, s: f32) aiVector3D {
    var dst = v;
    c.aiVector3Scale(&dst, s);
    return dst;
}

pub fn negate(v: aiVector3D) aiVector3D {
    var dst = v;
    c.aiVector3Negate(&dst);
    return dst;
}

pub fn normalize(v: aiVector3D) aiVector3D {
    var dst = v;
    c.aiVector3Normalize(&dst);
    return dst;
}

pub fn normalizeSafe(v: aiVector3D) aiVector3D {
    var dst = v;
    c.aiVector3NormalizeSafe(&dst);
    return dst;
}

pub fn cross(a: aiVector3D, b: aiVector3D) aiVector3D {
    var dst: aiVector3D = undefined;
    c.aiVector3CrossProduct(&dst, &a, &b);
    return dst;
}

pub fn dot(a: aiVector3D, b: aiVector3D) f32 {
    return c.aiVector3DotProduct(&a, &b);
}

pub fn length(v: aiVector3D) f32 {
    return c.aiVector3Length(&v);
}

pub fn lengthSquared(v: aiVector3D) f32 {
    return c.aiVector3SquareLength(&v);
}

pub fn equal(a: aiVector3D, b: aiVector3D) bool {
    return c.aiVector3AreEqual(&a, &b) != 0;
}

pub fn equalEpsilon(a: aiVector3D, b: aiVector3D, eps: f32) bool {
    return c.aiVector3AreEqualEpsilon(&a, &b, eps) != 0;
}

pub fn lessThan(a: aiVector3D, b: aiVector3D) bool {
    return c.aiVector3LessThan(&a, &b) != 0;
}

pub fn symMul(a: aiVector3D, b: aiVector3D) aiVector3D {
    var dst = a;
    c.aiVector3SymMul(&dst, &b);
    return dst;
}

pub fn divScalar(v: aiVector3D, s: f32) aiVector3D {
    var dst = v;
    c.aiVector3DivideByScalar(&dst, s);
    return dst;
}

pub fn divVector(a: aiVector3D, b: aiVector3D) aiVector3D {
    var dst = a;
    c.aiVector3DivideByVector(&dst, &b);
    return dst;
}

pub fn rotateByQuaternion(v: aiVector3D, q: aiQuaternion) aiVector3D {
    var dst = v;
    c.aiVector3RotateByQuaternion(&dst, &q);
    return dst;
}

pub fn transformByMatrix3(v: aiVector3D, m: aiMatrix3x3) aiVector3D {
    var dst = v;
    c.aiTransformVecByMatrix3(&dst, &m);
    return dst;
}

pub fn transformByMatrix4(v: aiVector3D, m: aiMatrix4x4) aiVector3D {
    var dst = v;
    c.aiTransformVecByMatrix4(&dst, &m);
    return dst;
}

pub fn mul(a: aiMatrix3x3, b: aiMatrix3x3) aiMatrix3x3 {
    var dst = a;
    c.aiMultiplyMatrix3(&dst, &b);
    return dst;
}

pub fn transpose(m: aiMatrix3x3) aiMatrix3x3 {
    var dst = m;
    c.aiTransposeMatrix3(&dst);
    return dst;
}

pub fn inverse(m: aiMatrix3x3) aiMatrix3x3 {
    var dst = m;
    c.aiMatrix3Inverse(&dst);
    return dst;
}

pub fn determinant(m: aiMatrix3x3) f32 {
    return c.aiMatrix3Determinant(&m);
}

pub fn identity() aiMatrix3x3 {
    var m: aiMatrix3x3 = undefined;
    c.aiIdentityMatrix3(&m);
    return m;
}

pub fn equal(a: aiMatrix3x3, b: aiMatrix3x3) bool {
    return c.aiMatrix3AreEqual(&a, &b) != 0;
}

pub fn equalEpsilon(a: aiMatrix3x3, b: aiMatrix3x3, eps: f32) bool {
    return c.aiMatrix3AreEqualEpsilon(&a, &b, eps) != 0;
}

pub fn fromMatrix4(m: aiMatrix4x4) aiMatrix3x3 {
    var dst: aiMatrix3x3 = undefined;
    c.aiMatrix3FromMatrix4(&dst, &m);
    return dst;
}

pub fn fromQuaternion(q: aiQuaternion) aiMatrix3x3 {
    var dst: aiMatrix3x3 = undefined;
    c.aiMatrix3FromQuaternion(&dst, &q);
    return dst;
}

pub fn rotationZ(angle: f32) aiMatrix3x3 {
    var m: aiMatrix3x3 = undefined;
    c.aiMatrix3RotationZ(&m, angle);
    return m;
}

pub fn fromRotationAroundAxis(axis: aiVector3D, angle: f32) aiMatrix3x3 {
    var m: aiMatrix3x3 = undefined;
    c.aiMatrix3FromRotationAroundAxis(&m, &axis, angle);
    return m;
}

pub fn translation(v: aiVector2D) aiMatrix3x3 {
    var m: aiMatrix3x3 = undefined;
    c.aiMatrix3Translation(&m, &v);
    return m;
}

pub fn fromTo(from: aiVector3D, to: aiVector3D) aiMatrix3x3 {
    var m: aiMatrix3x3 = undefined;
    c.aiMatrix3FromTo(&m, &from, &to);
    return m;
}

pub fn mul(a: aiMatrix4x4, b: aiMatrix4x4) aiMatrix4x4 {
    var dst = a;
    c.aiMultiplyMatrix4(&dst, &b);
    return dst;
}

pub fn add(a: aiMatrix4x4, b: aiMatrix4x4) aiMatrix4x4 {
    var dst = a;
    c.aiMatrix4Add(&dst, &b);
    return dst;
}

pub fn transpose(m: aiMatrix4x4) aiMatrix4x4 {
    var dst = m;
    c.aiTransposeMatrix4(&dst);
    return dst;
}

pub fn inverse(m: aiMatrix4x4) aiMatrix4x4 {
    var dst = m;
    c.aiMatrix4Inverse(&dst);
    return dst;
}

pub fn determinant(m: aiMatrix4x4) f32 {
    return c.aiMatrix4Determinant(&m);
}

pub fn isIdentity(m: aiMatrix4x4) bool {
    return c.aiMatrix4IsIdentity(&m) != 0;
}

pub fn identity() aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiIdentityMatrix4(&m);
    return m;
}

pub fn equal(a: aiMatrix4x4, b: aiMatrix4x4) bool {
    return c.aiMatrix4AreEqual(&a, &b) != 0;
}

pub fn equalEpsilon(a: aiMatrix4x4, b: aiMatrix4x4, eps: f32) bool {
    return c.aiMatrix4AreEqualEpsilon(&a, &b, eps) != 0;
}

pub fn fromMatrix3(m: aiMatrix3x3) aiMatrix4x4 {
    var dst: aiMatrix4x4 = undefined;
    c.aiMatrix4FromMatrix3(&dst, &m);
    return dst;
}

pub fn fromScalingRotationPosition(scaling: aiVector3D, rotation: aiQuaternion, position: aiVector3D) aiMatrix4x4 {
    var dst: aiMatrix4x4 = undefined;
    c.aiMatrix4FromScalingQuaternionPosition(&dst, &scaling, &rotation, &position);
    return dst;
}

pub fn rotationX(angle: f32) aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiMatrix4RotationX(&m, angle);
    return m;
}

pub fn rotationY(angle: f32) aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiMatrix4RotationY(&m, angle);
    return m;
}

pub fn rotationZ(angle: f32) aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiMatrix4RotationZ(&m, angle);
    return m;
}

pub fn fromRotationAroundAxis(axis: aiVector3D, angle: f32) aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiMatrix4FromRotationAroundAxis(&m, &axis, angle);
    return m;
}

pub fn fromEulerAngles(x: f32, y: f32, z: f32) aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiMatrix4FromEulerAngles(&m, x, y, z);
    return m;
}

pub fn translation(v: aiVector3D) aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiMatrix4Translation(&m, &v);
    return m;
}

pub fn scaling(v: aiVector3D) aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiMatrix4Scaling(&m, &v);
    return m;
}

pub fn fromTo(from: aiVector3D, to: aiVector3D) aiMatrix4x4 {
    var m: aiMatrix4x4 = undefined;
    c.aiMatrix4FromTo(&m, &from, &to);
    return m;
}

pub const DecomposeResult = struct {
    scaling: aiVector3D,
    rotation: aiQuaternion,
    position: aiVector3D,
};

pub fn decompose(m: aiMatrix4x4) DecomposeResult {
    var result: DecomposeResult = undefined;
    c.aiDecomposeMatrix(&m, &result.scaling, &result.rotation, &result.position);
    return result;
}

pub fn decomposeEuler(m: aiMatrix4x4) struct { scaling: aiVector3D, rotation: aiVector3D, position: aiVector3D } {
    var scaling: aiVector3D = undefined;
    var rotation: aiVector3D = undefined;
    var position: aiVector3D = undefined;
    c.aiMatrix4DecomposeIntoScalingEulerAnglesPosition(&m, &scaling, &rotation, &position);
    return .{ .scaling = scaling, .rotation = rotation, .position = position };
}

pub fn decomposeAxisAngle(m: aiMatrix4x4) struct { scaling: aiVector3D, axis: aiVector3D, angle: ai_real, position: aiVector3D } {
    var scaling: aiVector3D = undefined;
    var axis: aiVector3D = undefined;
    var angle: ai_real = undefined;
    var position: aiVector3D = undefined;
    c.aiMatrix4DecomposeIntoScalingAxisAnglePosition(&m, &scaling, &axis, &angle, &position);
    return .{ .scaling = scaling, .axis = axis, .angle = angle, .position = position };
}

pub fn decomposeNoScaling(m: aiMatrix4x4) struct { rotation: aiQuaternion, position: aiVector3D } {
    var rotation: aiQuaternion = undefined;
    var position: aiVector3D = undefined;
    c.aiMatrix4DecomposeNoScaling(&m, &rotation, &position);
    return .{ .rotation = rotation, .position = position };
}

pub fn mul(a: aiQuaternion, b: aiQuaternion) aiQuaternion {
    var dst = a;
    c.aiQuaternionMultiply(&dst, &b);
    return dst;
}

pub fn normalize(q: aiQuaternion) aiQuaternion {
    var dst = q;
    c.aiQuaternionNormalize(&dst);
    return dst;
}

pub fn conjugate(q: aiQuaternion) aiQuaternion {
    var dst = q;
    c.aiQuaternionConjugate(&dst);
    return dst;
}

pub fn fromAxisAngle(axis: aiVector3D, angle: f32) aiQuaternion {
    var q: aiQuaternion = undefined;
    c.aiQuaternionFromAxisAngle(&q, &axis, angle);
    return q;
}

pub fn fromEulerAngles(x: f32, y: f32, z: f32) aiQuaternion {
    var q: aiQuaternion = undefined;
    c.aiQuaternionFromEulerAngles(&q, x, y, z);
    return q;
}

pub fn fromMatrix3(m: aiMatrix3x3) aiQuaternion {
    var q: aiQuaternion = undefined;
    c.aiCreateQuaternionFromMatrix(&q, &m);
    return q;
}

pub fn interpolate(a: aiQuaternion, b: aiQuaternion, t: f32) aiQuaternion {
    var dst: aiQuaternion = undefined;
    c.aiQuaternionInterpolate(&dst, &a, &b, t);
    return dst;
}

pub fn equal(a: aiQuaternion, b: aiQuaternion) bool {
    return c.aiQuaternionAreEqual(&a, &b) != 0;
}

pub fn equalEpsilon(a: aiQuaternion, b: aiQuaternion, eps: f32) bool {
    return c.aiQuaternionAreEqualEpsilon(&a, &b, eps) != 0;
}

pub fn fromNormalizedVector3(v: aiVector3D) aiQuaternion {
    var q: aiQuaternion = undefined;
    c.aiQuaternionFromNormalizedQuaternion(&q, &v);
    return q;
}

const ai_real = types.ai_real;

.class public Lcom/android/common/g/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/b;


# instance fields
.field private Xb:Lcom/android/common/appService/W;

.field private Xc:I

.field private Xd:Lcom/android/common/gles/a;

.field private Xe:Ljava/lang/Object;

.field private Xf:[F

.field private Xg:I

.field private Xh:[F

.field private Xi:Landroid/graphics/SurfaceTexture;

.field private Xj:Ljava/nio/FloatBuffer;

.field private Xk:I

.field private Xl:I

.field private Xm:I

.field private Xn:I

.field private Xo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/common/appService/W;)V
    .registers 7

    .prologue
    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/g/f;->Xe:Ljava/lang/Object;

    .line 26
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/common/g/f;->Xh:[F

    .line 27
    iput-object v1, p0, Lcom/android/common/g/f;->Xi:Landroid/graphics/SurfaceTexture;

    .line 28
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/common/g/f;->Xf:[F

    .line 30
    iput-object v1, p0, Lcom/android/common/g/f;->Xd:Lcom/android/common/gles/a;

    .line 118
    iput-object v1, p0, Lcom/android/common/g/f;->Xb:Lcom/android/common/appService/W;

    .line 122
    iput-object p2, p0, Lcom/android/common/g/f;->Xb:Lcom/android/common/appService/W;

    .line 124
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_4c

    .line 132
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    .line 131
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 133
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/g/f;->Xj:Ljava/nio/FloatBuffer;

    .line 134
    iget-object v1, p0, Lcom/android/common/g/f;->Xj:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    iget-object v0, p0, Lcom/android/common/g/f;->Xh:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 120
    return-void

    .line 124
    nop

    :array_4c
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public S()I
    .registers 2

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public T(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 11

    .prologue
    const/4 v7, 0x1

    .line 141
    iget-object v6, p0, Lcom/android/common/g/f;->Xe:Ljava/lang/Object;

    monitor-enter v6

    .line 156
    :try_start_4
    invoke-virtual {p1}, Lcom/android/common/a/a;->o()I

    move-result v0

    iput v0, p0, Lcom/android/common/g/f;->Xc:I

    .line 157
    invoke-virtual {p1}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/g/f;->Xh:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 158
    iget-object v0, p0, Lcom/android/common/g/f;->Xf:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 160
    iget v0, p0, Lcom/android/common/g/f;->Xc:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 162
    iget v0, p0, Lcom/android/common/g/f;->Xg:I

    if-nez v0, :cond_75

    .line 164
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n\tgl_Position =  uMVPMatrix * aPosition;\n\tvTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 165
    const-string/jumbo v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvec4 color;\nuniform vec4 uColorRatio;\nvec4 temp;\nfloat f = 1.0;\nvec4 pass2(vec2 pos){\n    if(all(lessThan(uColorRatio.rgb, vec3(0.001, 0.001, 0.001)))        && all(greaterThan(uColorRatio.rgb, vec3(-0.001, -0.001, -0.001)))){\n        temp = texture2D(sTexture, pos);\n    } else {\n        temp = texture2D(sTexture, pos) * uColorRatio;\n        temp.a = 1.0;\n    }\n    return temp;\n}\nvoid main() {\n\t vec2 pos = vTextureCoord.st;\n\t color = pass2(pos);\n\t gl_FragColor = color;\n}\n"

    .line 163
    invoke-static {v0, v1}, Lcom/android/common/gles/l;->SO(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/f;->Xg:I

    .line 166
    iget v0, p0, Lcom/android/common/g/f;->Xg:I

    if-nez v0, :cond_3e

    .line 167
    const-string/jumbo v0, "0725"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_3e
    iget v0, p0, Lcom/android/common/g/f;->Xg:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/f;->Xk:I

    .line 170
    iget v0, p0, Lcom/android/common/g/f;->Xg:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/f;->Xl:I

    .line 171
    iget v0, p0, Lcom/android/common/g/f;->Xg:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/f;->Xn:I

    .line 172
    iget v0, p0, Lcom/android/common/g/f;->Xg:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/f;->Xo:I

    .line 173
    iget v0, p0, Lcom/android/common/g/f;->Xg:I

    const-string/jumbo v1, "uColorRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/f;->Xm:I

    .line 176
    :cond_75
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 177
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 176
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 179
    iget v0, p0, Lcom/android/common/g/f;->Xg:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 182
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 183
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 185
    iget-object v0, p0, Lcom/android/common/g/f;->Xj:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 186
    iget v0, p0, Lcom/android/common/g/f;->Xk:I

    .line 187
    iget-object v5, p0, Lcom/android/common/g/f;->Xj:Ljava/nio/FloatBuffer;

    .line 186
    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 187
    const/16 v4, 0x14

    .line 186
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 188
    iget v0, p0, Lcom/android/common/g/f;->Xk:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 190
    iget-object v0, p0, Lcom/android/common/g/f;->Xj:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    iget v0, p0, Lcom/android/common/g/f;->Xl:I

    .line 192
    iget-object v5, p0, Lcom/android/common/g/f;->Xj:Ljava/nio/FloatBuffer;

    .line 191
    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 192
    const/16 v4, 0x14

    .line 191
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 193
    iget v0, p0, Lcom/android/common/g/f;->Xl:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 195
    iget v0, p0, Lcom/android/common/g/f;->Xn:I

    iget-object v1, p0, Lcom/android/common/g/f;->Xf:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 196
    iget v0, p0, Lcom/android/common/g/f;->Xo:I

    iget-object v1, p0, Lcom/android/common/g/f;->Xh:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 198
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 200
    iget v0, p0, Lcom/android/common/g/f;->Xm:I

    .line 201
    iget-object v1, p0, Lcom/android/common/g/f;->Xb:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/independentFocusExposure/o;->fT()[F

    move-result-object v1

    .line 200
    const/4 v2, 0x1

    .line 201
    const/4 v3, 0x0

    .line 200
    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V
    :try_end_100
    .catchall {:try_start_4 .. :try_end_100} :catchall_102

    monitor-exit v6

    .line 204
    return v7

    .line 141
    :catchall_102
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public U(Lcom/android/common/a/a;)V
    .registers 2

    .prologue
    .line 231
    return-void
.end method

.method public V(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 5

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/common/g/f;->Xe:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    const/4 v1, 0x1

    monitor-exit v0

    return v1
.end method

.class public Lcom/android/video/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/b;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final synthetic aGX:[I


# instance fields
.field private aGA:Lcom/android/video/VideoEffectRenderer$Mirror;

.field private aGB:Z

.field private aGC:Z

.field private aGD:J

.field private aGE:I

.field private aGF:Z

.field private aGG:[F

.field private aGH:Landroid/opengl/EGLSurface;

.field private aGI:Landroid/opengl/EGLSurface;

.field private aGJ:[I

.field private aGK:Ljava/lang/Boolean;

.field private aGL:Landroid/view/Surface;

.field private aGM:I

.field private aGN:I

.field private aGO:J

.field private aGP:Ljava/nio/FloatBuffer;

.field private aGQ:Ljava/nio/FloatBuffer;

.field private aGR:Ljava/nio/FloatBuffer;

.field private aGS:I

.field private aGT:I

.field private aGU:I

.field private aGV:I

.field private aGW:I

.field private aGt:Landroid/graphics/SurfaceTexture;

.field private aGu:Landroid/content/Context;

.field private aGv:Landroid/opengl/EGLConfig;

.field private aGw:Landroid/opengl/EGLContext;

.field private aGx:Landroid/opengl/EGLDisplay;

.field private aGy:Landroid/opengl/EGLSurface;

.field private aGz:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string/jumbo v0, "VideoEffectRenderer"

    sput-object v0, Lcom/android/video/c;->TAG:Ljava/lang/String;

    .line 32
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/c;->aGK:Ljava/lang/Boolean;

    .line 40
    iput-boolean v1, p0, Lcom/android/video/c;->aGB:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/video/c;->aGC:Z

    .line 42
    iput-wide v4, p0, Lcom/android/video/c;->aGD:J

    .line 48
    iput-wide v4, p0, Lcom/android/video/c;->aGO:J

    .line 61
    iput-boolean v1, p0, Lcom/android/video/c;->aGF:Z

    .line 63
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/c;->aGJ:[I

    .line 77
    sget-object v0, Lcom/android/video/VideoEffectRenderer$Mirror;->aHa:Lcom/android/video/VideoEffectRenderer$Mirror;

    iput-object v0, p0, Lcom/android/video/c;->aGA:Lcom/android/video/VideoEffectRenderer$Mirror;

    .line 78
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/video/c;->aGG:[F

    .line 79
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/video/c;->aGz:[F

    .line 82
    iput-object p1, p0, Lcom/android/video/c;->aGu:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/android/video/c;->aGG:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 84
    iget-object v0, p0, Lcom/android/video/c;->aGz:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 85
    invoke-direct {p0}, Lcom/android/video/c;->aVl()V

    .line 81
    return-void
.end method

.method private aVj(Landroid/view/Surface;)Landroid/opengl/EGLSurface;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 228
    invoke-direct {p0}, Lcom/android/video/c;->aVp()V

    .line 229
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    aput v1, v0, v3

    .line 230
    iget-object v1, p0, Lcom/android/video/c;->aGx:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/android/video/c;->aGv:Landroid/opengl/EGLConfig;

    invoke-static {v1, v2, p1, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/c;->aGy:Landroid/opengl/EGLSurface;

    .line 231
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .line 232
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_25

    .line 233
    sget-object v0, Lcom/android/video/c;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createVideoRecordSurface fail"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_25
    iget-object v0, p0, Lcom/android/video/c;->aGy:Landroid/opengl/EGLSurface;

    return-object v0
.end method

.method private aVk(Lcom/android/common/a/a;Ljava/nio/FloatBuffer;)V
    .registers 11

    .prologue
    const/16 v4, 0x14

    const/4 v7, 0x4

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 341
    iget v0, p0, Lcom/android/video/c;->aGN:I

    iget v2, p0, Lcom/android/video/c;->aGM:I

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 342
    iget v0, p0, Lcom/android/video/c;->aGE:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 343
    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 344
    iget v0, p0, Lcom/android/video/c;->aGS:I

    const/16 v2, 0x1406

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 346
    iget v0, p0, Lcom/android/video/c;->aGS:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 348
    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 349
    iget v0, p0, Lcom/android/video/c;->aGT:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 351
    iget v0, p0, Lcom/android/video/c;->aGT:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 353
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 354
    invoke-virtual {p1}, Lcom/android/common/a/a;->i()Lcom/android/common/gles/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/gles/c;->RQ()I

    move-result v0

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 355
    iget v0, p0, Lcom/android/video/c;->aGU:I

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 357
    iget v0, p0, Lcom/android/video/c;->aGV:I

    iget-object v1, p0, Lcom/android/video/c;->aGz:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 358
    iget v0, p0, Lcom/android/video/c;->aGW:I

    iget-object v1, p0, Lcom/android/video/c;->aGG:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 360
    const/4 v0, 0x5

    invoke-static {v0, v3, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 340
    return-void
.end method

.method private aVl()V
    .registers 6

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 195
    new-array v0, v4, [F

    fill-array-data v0, :array_74

    .line 202
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    .line 201
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 203
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 201
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/video/c;->aGP:Ljava/nio/FloatBuffer;

    .line 204
    iget-object v1, p0, Lcom/android/video/c;->aGP:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 205
    new-array v0, v4, [F

    fill-array-data v0, :array_a0

    .line 212
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    .line 211
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 213
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 211
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/video/c;->aGQ:Ljava/nio/FloatBuffer;

    .line 214
    iget-object v1, p0, Lcom/android/video/c;->aGQ:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 215
    new-array v0, v4, [F

    fill-array-data v0, :array_cc

    .line 222
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    .line 221
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 223
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 221
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/video/c;->aGR:Ljava/nio/FloatBuffer;

    .line 224
    iget-object v1, p0, Lcom/android/video/c;->aGR:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 194
    return-void

    .line 195
    nop

    :array_74
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

    .line 205
    :array_a0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 215
    :array_cc
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private aVm()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 304
    iget-boolean v0, p0, Lcom/android/video/c;->aGF:Z

    if-eqz v0, :cond_7

    .line 305
    return-void

    .line 307
    :cond_7
    iget v0, p0, Lcom/android/video/c;->aGE:I

    if-eqz v0, :cond_e

    .line 308
    invoke-direct {p0}, Lcom/android/video/c;->aVo()V

    .line 310
    :cond_e
    iput-boolean v4, p0, Lcom/android/video/c;->aGF:Z

    .line 312
    iget-object v0, p0, Lcom/android/video/c;->aGu:Landroid/content/Context;

    const v1, 0x7f090039

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/android/video/c;->aGu:Landroid/content/Context;

    const v2, 0x7f090038

    invoke-static {v1, v2}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SE(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/c;->aGJ:[I

    .line 314
    iget-object v0, p0, Lcom/android/video/c;->aGJ:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/android/video/c;->aGJ:[I

    aget v1, v1, v4

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/video/c;->aGE:I

    .line 315
    iget v0, p0, Lcom/android/video/c;->aGE:I

    if-nez v0, :cond_42

    .line 316
    sget-object v0, Lcom/android/video/c;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_42
    iget v0, p0, Lcom/android/video/c;->aGE:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/video/c;->aGS:I

    .line 319
    iget v0, p0, Lcom/android/video/c;->aGE:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/video/c;->aGT:I

    .line 320
    iget v0, p0, Lcom/android/video/c;->aGE:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/video/c;->aGV:I

    .line 321
    iget v0, p0, Lcom/android/video/c;->aGE:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/video/c;->aGW:I

    .line 322
    iget v0, p0, Lcom/android/video/c;->aGE:I

    const-string/jumbo v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/video/c;->aGU:I

    .line 303
    return-void
.end method

.method private aVo()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/android/video/c;->aGJ:[I

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 335
    iget-object v0, p0, Lcom/android/video/c;->aGJ:[I

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 336
    iget v0, p0, Lcom/android/video/c;->aGE:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 337
    iget-object v0, p0, Lcom/android/video/c;->aGJ:[I

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/video/c;->aGJ:[I

    aput v1, v0, v1

    iput v1, p0, Lcom/android/video/c;->aGE:I

    .line 333
    return-void
.end method

.method private aVp()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 239
    iget-object v0, p0, Lcom/android/video/c;->aGy:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_2e

    .line 240
    iget-object v0, p0, Lcom/android/video/c;->aGx:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/video/c;->aGy:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 241
    sget-object v0, Lcom/android/video/c;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destorySurface fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_2c
    iput-object v3, p0, Lcom/android/video/c;->aGy:Landroid/opengl/EGLSurface;

    .line 238
    :cond_2e
    return-void
.end method

.method private aVr()V
    .registers 5

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/video/c;->aGx:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 294
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 293
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 295
    sget-object v0, Lcom/android/video/c;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restoreRenderContext unregister fail"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_16
    iget-object v0, p0, Lcom/android/video/c;->aGx:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/video/c;->aGH:Landroid/opengl/EGLSurface;

    .line 298
    iget-object v2, p0, Lcom/android/video/c;->aGI:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/android/video/c;->aGw:Landroid/opengl/EGLContext;

    .line 297
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 299
    sget-object v0, Lcom/android/video/c;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restoreRenderContext register fail"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_2c
    return-void
.end method

.method private aVt(Lcom/android/common/a/a;)V
    .registers 6

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/video/c;->aGx:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_a

    .line 257
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/c;->aGx:Landroid/opengl/EGLDisplay;

    .line 259
    :cond_a
    iget-object v0, p0, Lcom/android/video/c;->aGv:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_16

    .line 261
    :try_start_e
    iget-object v0, p0, Lcom/android/video/c;->aGx:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Lcom/android/common/gles/b;->RJ(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/c;->aGv:Landroid/opengl/EGLConfig;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_43

    .line 266
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/video/c;->aGw:Landroid/opengl/EGLContext;

    if-nez v0, :cond_20

    .line 267
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/c;->aGw:Landroid/opengl/EGLContext;

    .line 269
    :cond_20
    iget-object v0, p0, Lcom/android/video/c;->aGH:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_2c

    .line 270
    const/16 v0, 0x3059

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/c;->aGH:Landroid/opengl/EGLSurface;

    .line 272
    :cond_2c
    iget-object v0, p0, Lcom/android/video/c;->aGI:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_38

    .line 273
    const/16 v0, 0x305a

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/c;->aGI:Landroid/opengl/EGLSurface;

    .line 276
    :cond_38
    iget-object v0, p0, Lcom/android/video/c;->aGt:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_42

    .line 277
    invoke-virtual {p1}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/c;->aGt:Landroid/graphics/SurfaceTexture;

    .line 255
    :cond_42
    return-void

    .line 262
    :catch_43
    move-exception v0

    .line 263
    sget-object v1, Lcom/android/video/c;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getEGLConfig fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method private aVu()V
    .registers 5

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/video/c;->aGx:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 283
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 282
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 284
    sget-object v0, Lcom/android/video/c;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "saveRenderContext unregister fail"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_16
    iget-object v0, p0, Lcom/android/video/c;->aGx:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/video/c;->aGy:Landroid/opengl/EGLSurface;

    .line 287
    iget-object v2, p0, Lcom/android/video/c;->aGy:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/android/video/c;->aGw:Landroid/opengl/EGLContext;

    .line 286
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 288
    sget-object v0, Lcom/android/video/c;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "saveRenderContext register fail"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_2c
    return-void
.end method

.method private aVv(J)V
    .registers 6

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/video/c;->aGx:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/video/c;->aGy:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 251
    return-void
.end method

.method private aVx()V
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/video/c;->aGx:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/video/c;->aGy:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 247
    return-void
.end method

.method private static synthetic aVy()[I
    .registers 3

    sget-object v0, Lcom/android/video/c;->aGX:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/video/c;->aGX:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/video/VideoEffectRenderer$Mirror;->values()[Lcom/android/video/VideoEffectRenderer$Mirror;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/video/VideoEffectRenderer$Mirror;->aGZ:Lcom/android/video/VideoEffectRenderer$Mirror;

    invoke-virtual {v1}, Lcom/android/video/VideoEffectRenderer$Mirror;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/video/VideoEffectRenderer$Mirror;->aHa:Lcom/android/video/VideoEffectRenderer$Mirror;

    invoke-virtual {v1}, Lcom/android/video/VideoEffectRenderer$Mirror;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/video/VideoEffectRenderer$Mirror;->aHb:Lcom/android/video/VideoEffectRenderer$Mirror;

    invoke-virtual {v1}, Lcom/android/video/VideoEffectRenderer$Mirror;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/android/video/c;->aGX:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method


# virtual methods
.method public S()I
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public T(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 4

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public U(Lcom/android/common/a/a;)V
    .registers 2

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/android/video/c;->aVo()V

    .line 329
    return-void
.end method

.method public V(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Lcom/android/video/c;->aVm()V

    .line 96
    iget-object v1, p0, Lcom/android/video/c;->aGK:Ljava/lang/Boolean;

    monitor-enter v1

    .line 97
    :try_start_7
    iget-object v0, p0, Lcom/android/video/c;->aGK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 98
    invoke-direct {p0, p1}, Lcom/android/video/c;->aVt(Lcom/android/common/a/a;)V

    .line 100
    iget-boolean v0, p0, Lcom/android/video/c;->aGB:Z

    if-eqz v0, :cond_1e

    .line 101
    iget-object v0, p0, Lcom/android/video/c;->aGL:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/android/video/c;->aVj(Landroid/view/Surface;)Landroid/opengl/EGLSurface;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/video/c;->aGB:Z

    .line 105
    :cond_1e
    iget-object v0, p0, Lcom/android/video/c;->aGK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/video/c;->aGC:Z
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_79

    if-eqz v0, :cond_2c

    :cond_2a
    monitor-exit v1

    .line 141
    return v2

    .line 106
    :cond_2c
    :try_start_2c
    invoke-virtual {p1, p2}, Lcom/android/common/a/a;->c(Lcom/android/common/gles/e;)V

    .line 108
    invoke-direct {p0}, Lcom/android/video/c;->aVu()V

    .line 111
    iget-object v0, p0, Lcom/android/video/c;->aGP:Ljava/nio/FloatBuffer;

    .line 112
    invoke-static {}, Lcom/android/video/c;->aVy()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/video/c;->aGA:Lcom/android/video/VideoEffectRenderer$Mirror;

    invoke-virtual {v3}, Lcom/android/video/VideoEffectRenderer$Mirror;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_7c

    .line 127
    :goto_43
    invoke-direct {p0, p1, v0}, Lcom/android/video/c;->aVk(Lcom/android/common/a/a;Ljava/nio/FloatBuffer;)V

    .line 128
    sget-boolean v0, Lcom/android/common/h;->ahs:Z

    if-nez v0, :cond_50

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v0, v2, :cond_6a

    .line 130
    :cond_50
    invoke-virtual {p1}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/video/c;->aVv(J)V

    .line 134
    :goto_5b
    invoke-direct {p0}, Lcom/android/video/c;->aVx()V

    .line 136
    invoke-direct {p0}, Lcom/android/video/c;->aVr()V
    :try_end_61
    .catchall {:try_start_2c .. :try_end_61} :catchall_79

    .line 138
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 115
    :pswitch_64
    :try_start_64
    iget-object v0, p0, Lcom/android/video/c;->aGQ:Ljava/nio/FloatBuffer;

    goto :goto_43

    .line 119
    :pswitch_67
    iget-object v0, p0, Lcom/android/video/c;->aGR:Ljava/nio/FloatBuffer;

    goto :goto_43

    .line 132
    :cond_6a
    invoke-virtual {p1}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/video/c;->aGO:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/video/c;->aVv(J)V
    :try_end_78
    .catchall {:try_start_64 .. :try_end_78} :catchall_79

    goto :goto_5b

    .line 96
    :catchall_79
    move-exception v0

    monitor-exit v1

    throw v0

    .line 112
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_64
        :pswitch_67
    .end packed-switch
.end method

.method public aVn()V
    .registers 3

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/video/c;->aGC:Z

    .line 169
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/video/c;->aGD:J

    .line 167
    return-void
.end method

.method public aVq()V
    .registers 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/video/c;->aGK:Ljava/lang/Boolean;

    monitor-enter v1

    .line 179
    const/4 v0, 0x0

    :try_start_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/c;->aGK:Ljava/lang/Boolean;

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/video/c;->aGB:Z

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/video/c;->aGC:Z

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/video/c;->aGL:Landroid/view/Surface;

    .line 183
    invoke-direct {p0}, Lcom/android/video/c;->aVp()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/video/c;->aGw:Landroid/opengl/EGLContext;

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/video/c;->aGv:Landroid/opengl/EGLConfig;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/video/c;->aGx:Landroid/opengl/EGLDisplay;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/video/c;->aGH:Landroid/opengl/EGLSurface;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/video/c;->aGI:Landroid/opengl/EGLSurface;

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/video/c;->aGt:Landroid/graphics/SurfaceTexture;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/video/c;->aGF:Z
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_2d

    monitor-exit v1

    .line 177
    return-void

    .line 178
    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public aVs()V
    .registers 7

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/video/c;->aGC:Z

    .line 174
    iget-wide v0, p0, Lcom/android/video/c;->aGO:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/video/c;->aGD:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/video/c;->aGO:J

    .line 172
    return-void
.end method

.method public aVw(Landroid/view/Surface;IILcom/android/video/VideoEffectRenderer$Mirror;)V
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    .line 150
    iput-object p1, p0, Lcom/android/video/c;->aGL:Landroid/view/Surface;

    .line 151
    iput p2, p0, Lcom/android/video/c;->aGN:I

    .line 152
    iput p3, p0, Lcom/android/video/c;->aGM:I

    .line 153
    iput-object p4, p0, Lcom/android/video/c;->aGA:Lcom/android/video/VideoEffectRenderer$Mirror;

    .line 154
    iput-boolean v0, p0, Lcom/android/video/c;->aGB:Z

    .line 155
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/c;->aGK:Ljava/lang/Boolean;

    .line 156
    iput-wide v2, p0, Lcom/android/video/c;->aGD:J

    .line 157
    iput-wide v2, p0, Lcom/android/video/c;->aGO:J

    .line 149
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/video/c;->aGK:Ljava/lang/Boolean;

    monitor-enter v1

    .line 162
    const/4 v0, 0x0

    :try_start_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/c;->aGK:Ljava/lang/Boolean;

    .line 163
    invoke-direct {p0}, Lcom/android/video/c;->aVp()V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_f

    monitor-exit v1

    .line 160
    return-void

    .line 161
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

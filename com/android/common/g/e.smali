.class public Lcom/android/common/g/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/b;


# instance fields
.field TAG:Ljava/lang/String;

.field private WO:I

.field private WP:I

.field private WQ:Landroid/content/Context;

.field private WR:Ljava/lang/Object;

.field private WS:[F

.field private WT:I

.field private WU:[F

.field private WV:Ljava/nio/FloatBuffer;

.field private WW:I

.field private WX:I

.field private WY:I

.field private WZ:I

.field private Xa:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/16 v1, 0x10

    const/4 v3, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "ColorFilterRenderer"

    iput-object v0, p0, Lcom/android/common/g/e;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/g/e;->WR:Ljava/lang/Object;

    .line 27
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/common/g/e;->WU:[F

    .line 28
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/common/g/e;->WS:[F

    .line 29
    iput v3, p0, Lcom/android/common/g/e;->WP:I

    .line 39
    iput-object p1, p0, Lcom/android/common/g/e;->WQ:Landroid/content/Context;

    .line 40
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_46

    .line 48
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    .line 47
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 49
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/g/e;->WV:Ljava/nio/FloatBuffer;

    .line 50
    iget-object v1, p0, Lcom/android/common/g/e;->WV:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 38
    return-void

    .line 40
    :array_46
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
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public T(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 55
    iget-object v6, p0, Lcom/android/common/g/e;->WR:Ljava/lang/Object;

    monitor-enter v6

    .line 56
    :try_start_5
    invoke-virtual {p1}, Lcom/android/common/a/a;->o()I

    move-result v0

    iput v0, p0, Lcom/android/common/g/e;->WO:I

    .line 57
    invoke-virtual {p1}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/g/e;->WU:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 58
    iget-object v0, p0, Lcom/android/common/g/e;->WS:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 60
    iget v0, p0, Lcom/android/common/g/e;->WO:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 62
    iget v0, p0, Lcom/android/common/g/e;->WT:I

    if-nez v0, :cond_8b

    .line 63
    iget-object v0, p0, Lcom/android/common/g/e;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createProgram"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/android/common/g/e;->WQ:Landroid/content/Context;

    const v1, 0x7f090039

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/android/common/g/e;->WQ:Landroid/content/Context;

    const v2, 0x7f090015

    invoke-static {v1, v2}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lcom/android/common/gles/l;->SO(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/e;->WT:I

    .line 67
    iget v0, p0, Lcom/android/common/g/e;->WT:I

    if-nez v0, :cond_54

    .line 68
    iget-object v0, p0, Lcom/android/common/g/e;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_102

    monitor-exit v6

    .line 69
    return v3

    .line 71
    :cond_54
    :try_start_54
    iget v0, p0, Lcom/android/common/g/e;->WT:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/e;->WW:I

    .line 72
    iget v0, p0, Lcom/android/common/g/e;->WT:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/e;->WX:I

    .line 73
    iget v0, p0, Lcom/android/common/g/e;->WT:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/e;->WZ:I

    .line 74
    iget v0, p0, Lcom/android/common/g/e;->WT:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/e;->Xa:I

    .line 75
    iget v0, p0, Lcom/android/common/g/e;->WT:I

    const-string/jumbo v1, "uColorFilter"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/e;->WY:I

    .line 78
    :cond_8b
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 79
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 78
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 81
    iget v0, p0, Lcom/android/common/g/e;->WT:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 84
    iget-object v0, p0, Lcom/android/common/g/e;->WV:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    iget v0, p0, Lcom/android/common/g/e;->WW:I

    .line 86
    iget-object v5, p0, Lcom/android/common/g/e;->WV:Ljava/nio/FloatBuffer;

    .line 85
    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 86
    const/16 v4, 0x14

    .line 85
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 87
    iget v0, p0, Lcom/android/common/g/e;->WW:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 89
    iget-object v0, p0, Lcom/android/common/g/e;->WV:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    iget v0, p0, Lcom/android/common/g/e;->WX:I

    .line 91
    iget-object v5, p0, Lcom/android/common/g/e;->WV:Ljava/nio/FloatBuffer;

    .line 90
    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 91
    const/16 v4, 0x14

    .line 90
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 92
    iget v0, p0, Lcom/android/common/g/e;->WX:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 94
    iget v0, p0, Lcom/android/common/g/e;->WZ:I

    iget-object v1, p0, Lcom/android/common/g/e;->WS:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 95
    iget v0, p0, Lcom/android/common/g/e;->Xa:I

    iget-object v1, p0, Lcom/android/common/g/e;->WU:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 96
    iget v0, p0, Lcom/android/common/g/e;->WY:I

    iget v1, p0, Lcom/android/common/g/e;->WP:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 98
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V
    :try_end_100
    .catchall {:try_start_54 .. :try_end_100} :catchall_102

    monitor-exit v6

    .line 101
    return v7

    .line 55
    :catchall_102
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public U(Lcom/android/common/a/a;)V
    .registers 2

    .prologue
    .line 120
    return-void
.end method

.method public V(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 4

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public aaR(I)V
    .registers 2

    .prologue
    .line 116
    iput p1, p0, Lcom/android/common/g/e;->WP:I

    .line 115
    return-void
.end method

.class public Lcom/android/common/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/b;


# static fields
.field public static final Wb:[F

.field public static final Wc:[F


# instance fields
.field TAG:Ljava/lang/String;

.field private Wd:I

.field private We:I

.field private Wf:Landroid/content/Context;

.field private Wg:Ljava/lang/Object;

.field private Wh:[F

.field private Wi:I

.field private Wj:[F

.field private Wk:Ljava/nio/FloatBuffer;

.field private Wl:I

.field private Wm:I

.field private Wn:I

.field private Wo:I

.field private Wp:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 28
    new-array v0, v1, [F

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/common/g/a;->Wb:[F

    .line 29
    new-array v0, v1, [F

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/common/g/a;->Wc:[F

    .line 21
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 28
    :array_10
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 29
    :array_1c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/16 v1, 0x10

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "Fengzhi4"

    iput-object v0, p0, Lcom/android/common/g/a;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/g/a;->Wg:Ljava/lang/Object;

    .line 33
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/common/g/a;->Wj:[F

    .line 34
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/common/g/a;->Wh:[F

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/g/a;->We:I

    .line 44
    iput-object p1, p0, Lcom/android/common/g/a;->Wf:Landroid/content/Context;

    .line 45
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_48

    .line 53
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    .line 52
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 54
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/g/a;->Wk:Ljava/nio/FloatBuffer;

    .line 55
    iget-object v1, p0, Lcom/android/common/g/a;->Wk:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 43
    return-void

    .line 45
    nop

    :array_48
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
    .line 121
    const/16 v0, 0x64

    return v0
.end method

.method public T(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 60
    iget-object v6, p0, Lcom/android/common/g/a;->Wg:Ljava/lang/Object;

    monitor-enter v6

    .line 61
    :try_start_5
    invoke-virtual {p1}, Lcom/android/common/a/a;->o()I

    move-result v0

    iput v0, p0, Lcom/android/common/g/a;->Wd:I

    .line 62
    invoke-virtual {p1}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/g/a;->Wj:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 63
    iget-object v0, p0, Lcom/android/common/g/a;->Wh:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 65
    iget v0, p0, Lcom/android/common/g/a;->Wd:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 67
    iget v0, p0, Lcom/android/common/g/a;->Wi:I

    if-nez v0, :cond_8b

    .line 68
    iget-object v0, p0, Lcom/android/common/g/a;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createProgram"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/common/g/a;->Wf:Landroid/content/Context;

    const v1, 0x7f09001d

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/common/g/a;->Wf:Landroid/content/Context;

    const v2, 0x7f09001c

    invoke-static {v1, v2}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Lcom/android/common/gles/l;->SO(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/a;->Wi:I

    .line 72
    iget v0, p0, Lcom/android/common/g/a;->Wi:I

    if-nez v0, :cond_54

    .line 73
    iget-object v0, p0, Lcom/android/common/g/a;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_112

    monitor-exit v6

    .line 74
    return v3

    .line 76
    :cond_54
    :try_start_54
    iget v0, p0, Lcom/android/common/g/a;->Wi:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/a;->Wl:I

    .line 77
    iget v0, p0, Lcom/android/common/g/a;->Wi:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/a;->Wm:I

    .line 78
    iget v0, p0, Lcom/android/common/g/a;->Wi:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/a;->Wo:I

    .line 79
    iget v0, p0, Lcom/android/common/g/a;->Wi:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/a;->Wp:I

    .line 80
    iget v0, p0, Lcom/android/common/g/a;->Wi:I

    const-string/jumbo v1, "v4Color"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/g/a;->Wn:I

    .line 83
    :cond_8b
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 84
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 83
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 86
    iget v0, p0, Lcom/android/common/g/a;->Wi:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 89
    iget-object v0, p0, Lcom/android/common/g/a;->Wk:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    iget v0, p0, Lcom/android/common/g/a;->Wl:I

    .line 91
    iget-object v5, p0, Lcom/android/common/g/a;->Wk:Ljava/nio/FloatBuffer;

    .line 90
    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 91
    const/16 v4, 0x14

    .line 90
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 92
    iget v0, p0, Lcom/android/common/g/a;->Wl:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 94
    iget-object v0, p0, Lcom/android/common/g/a;->Wk:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    iget v0, p0, Lcom/android/common/g/a;->Wm:I

    .line 96
    iget-object v5, p0, Lcom/android/common/g/a;->Wk:Ljava/nio/FloatBuffer;

    .line 95
    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 96
    const/16 v4, 0x14

    .line 95
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 97
    iget v0, p0, Lcom/android/common/g/a;->Wm:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 99
    iget v0, p0, Lcom/android/common/g/a;->Wo:I

    iget-object v1, p0, Lcom/android/common/g/a;->Wh:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 100
    iget v0, p0, Lcom/android/common/g/a;->Wp:I

    iget-object v1, p0, Lcom/android/common/g/a;->Wj:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 102
    iget v0, p0, Lcom/android/common/g/a;->We:I

    if-ne v0, v7, :cond_108

    .line 103
    iget v0, p0, Lcom/android/common/g/a;->Wn:I

    sget-object v1, Lcom/android/common/g/a;->Wb:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 107
    :goto_100
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V
    :try_end_106
    .catchall {:try_start_54 .. :try_end_106} :catchall_112

    monitor-exit v6

    .line 110
    return v7

    .line 105
    :cond_108
    :try_start_108
    iget v0, p0, Lcom/android/common/g/a;->Wn:I

    sget-object v1, Lcom/android/common/g/a;->Wc:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V
    :try_end_111
    .catchall {:try_start_108 .. :try_end_111} :catchall_112

    goto :goto_100

    .line 60
    :catchall_112
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public U(Lcom/android/common/a/a;)V
    .registers 2

    .prologue
    .line 125
    return-void
.end method

.method public V(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 4

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public aaJ(I)V
    .registers 2

    .prologue
    .line 131
    iput p1, p0, Lcom/android/common/g/a;->We:I

    .line 130
    return-void
.end method

.class public Lcom/android/common/effects/a/A;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field private Ko:Landroid/content/Context;

.field private Kp:I

.field private Kq:Z

.field private Kr:[I

.field private Ks:I

.field private Kt:I

.field private Ku:I

.field private Kv:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/android/common/effects/c;-><init>()V

    .line 20
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/A;->Kr:[I

    .line 28
    iput-boolean v1, p0, Lcom/android/common/effects/a/A;->Kq:Z

    .line 31
    iput-object p1, p0, Lcom/android/common/effects/a/A;->Ko:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/android/common/effects/a/A;->Iq()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/A;->Kr:[I

    .line 30
    return-void
.end method

.method private Io([F[FLjava/nio/FloatBuffer;IIIII)V
    .registers 16

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x14

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 82
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 84
    iget v0, p0, Lcom/android/common/effects/a/A;->Kp:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 87
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 88
    const/16 v0, 0x302

    const/16 v5, 0x303

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 90
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    iget v0, p0, Lcom/android/common/effects/a/A;->Ks:I

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 93
    iget v0, p0, Lcom/android/common/effects/a/A;->Ks:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 95
    invoke-virtual {p3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    iget v0, p0, Lcom/android/common/effects/a/A;->Kt:I

    const/4 v1, 0x2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 98
    iget v0, p0, Lcom/android/common/effects/a/A;->Kt:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 100
    iget v0, p0, Lcom/android/common/effects/a/A;->Ku:I

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 101
    iget v0, p0, Lcom/android/common/effects/a/A;->Kv:I

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 103
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 81
    return-void
.end method

.method private Ip()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    iget-boolean v0, p0, Lcom/android/common/effects/a/A;->Kq:Z

    if-eqz v0, :cond_7

    .line 43
    return-void

    .line 45
    :cond_7
    iput-boolean v2, p0, Lcom/android/common/effects/a/A;->Kq:Z

    .line 46
    iget-object v0, p0, Lcom/android/common/effects/a/A;->Kr:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/effects/a/A;->Kr:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/A;->Kp:I

    .line 47
    iget v0, p0, Lcom/android/common/effects/a/A;->Kp:I

    if-nez v0, :cond_24

    .line 48
    const-string/jumbo v0, "MosaicEffect"

    const-string/jumbo v1, "createProgram fail mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_24
    iget v0, p0, Lcom/android/common/effects/a/A;->Kp:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/A;->Ks:I

    .line 51
    iget v0, p0, Lcom/android/common/effects/a/A;->Kp:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/A;->Kt:I

    .line 52
    iget v0, p0, Lcom/android/common/effects/a/A;->Kp:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/A;->Ku:I

    .line 53
    iget v0, p0, Lcom/android/common/effects/a/A;->Kp:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/A;->Kv:I

    .line 41
    return-void
.end method

.method private Iq()[I
    .registers 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/common/effects/a/A;->Ko:Landroid/content/Context;

    const v1, 0x7f090039

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/common/effects/a/A;->Ko:Landroid/content/Context;

    const v2, 0x7f090027

    invoke-static {v1, v2}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SE(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V
    .registers 19

    .prologue
    .line 59
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    const v1, 0x8d65

    if-eq v1, v0, :cond_a

    .line 60
    return-void

    .line 62
    :cond_a
    invoke-direct {p0}, Lcom/android/common/effects/a/A;->Ip()V

    .line 63
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 64
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RQ()I

    move-result v0

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 65
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RQ()I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/common/effects/a/A;->Io([F[FLjava/nio/FloatBuffer;IIIII)V

    .line 58
    return-void
.end method

.method public GM()I
    .registers 2

    .prologue
    .line 108
    const v0, 0x8d65

    return v0
.end method

.method public GP()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/common/effects/a/A;->Ip()V

    .line 69
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/common/effects/a/A;->Kr:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 76
    iget-object v0, p0, Lcom/android/common/effects/a/A;->Kr:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 77
    iget v0, p0, Lcom/android/common/effects/a/A;->Kp:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 74
    return-void
.end method
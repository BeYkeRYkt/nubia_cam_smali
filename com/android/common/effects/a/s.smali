.class public Lcom/android/common/effects/a/s;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field private IA:I

.field private IB:I

.field private Iu:Landroid/content/Context;

.field private Iv:I

.field private Iw:Z

.field private Ix:[I

.field private Iy:I

.field private Iz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/common/effects/c;-><init>()V

    .line 23
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/s;->Ix:[I

    .line 30
    iput-boolean v1, p0, Lcom/android/common/effects/a/s;->Iw:Z

    .line 33
    iput-object p1, p0, Lcom/android/common/effects/a/s;->Iu:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/android/common/effects/a/s;->HR()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/s;->Ix:[I

    .line 32
    return-void
.end method

.method private HP([F[FLjava/nio/FloatBuffer;IIIII)V
    .registers 16

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x14

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 85
    iget v0, p0, Lcom/android/common/effects/a/s;->Iv:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 88
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 89
    const/16 v0, 0x302

    const/16 v5, 0x303

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 91
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 92
    iget v0, p0, Lcom/android/common/effects/a/s;->Iy:I

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 94
    iget v0, p0, Lcom/android/common/effects/a/s;->Iy:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 96
    invoke-virtual {p3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    iget v0, p0, Lcom/android/common/effects/a/s;->Iz:I

    const/4 v1, 0x2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 99
    iget v0, p0, Lcom/android/common/effects/a/s;->Iz:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 101
    iget v0, p0, Lcom/android/common/effects/a/s;->IA:I

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 102
    iget v0, p0, Lcom/android/common/effects/a/s;->IB:I

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 104
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 82
    return-void
.end method

.method private HQ()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    iget-boolean v0, p0, Lcom/android/common/effects/a/s;->Iw:Z

    if-eqz v0, :cond_7

    .line 44
    return-void

    .line 46
    :cond_7
    iput-boolean v2, p0, Lcom/android/common/effects/a/s;->Iw:Z

    .line 47
    iget-object v0, p0, Lcom/android/common/effects/a/s;->Ix:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/effects/a/s;->Ix:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/s;->Iv:I

    .line 48
    iget v0, p0, Lcom/android/common/effects/a/s;->Iv:I

    if-nez v0, :cond_24

    .line 49
    const-string/jumbo v0, "SepiaEffect"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_24
    iget v0, p0, Lcom/android/common/effects/a/s;->Iv:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/s;->Iy:I

    .line 52
    iget v0, p0, Lcom/android/common/effects/a/s;->Iv:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/s;->Iz:I

    .line 53
    iget v0, p0, Lcom/android/common/effects/a/s;->Iv:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/s;->IA:I

    .line 54
    iget v0, p0, Lcom/android/common/effects/a/s;->Iv:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/s;->IB:I

    .line 42
    return-void
.end method

.method private HR()[I
    .registers 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/common/effects/a/s;->Iu:Landroid/content/Context;

    const v1, 0x7f090039

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/common/effects/a/s;->Iu:Landroid/content/Context;

    const v2, 0x7f090037

    invoke-static {v1, v2}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SE(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V
    .registers 19

    .prologue
    .line 60
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    const v1, 0x8d65

    if-eq v1, v0, :cond_a

    .line 61
    return-void

    .line 63
    :cond_a
    invoke-direct {p0}, Lcom/android/common/effects/a/s;->HQ()V

    .line 64
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 65
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RQ()I

    move-result v0

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 66
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

    invoke-direct/range {v0 .. v8}, Lcom/android/common/effects/a/s;->HP([F[FLjava/nio/FloatBuffer;IIIII)V

    .line 59
    return-void
.end method

.method public GM()I
    .registers 2

    .prologue
    .line 109
    const v0, 0x8d65

    return v0
.end method

.method public GP()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/common/effects/a/s;->HQ()V

    .line 70
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/common/effects/a/s;->Ix:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 77
    iget-object v0, p0, Lcom/android/common/effects/a/s;->Ix:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 78
    iget v0, p0, Lcom/android/common/effects/a/s;->Iv:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 75
    return-void
.end method

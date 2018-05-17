.class public Lcom/android/common/effects/a/k;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field private GM:Landroid/content/Context;

.field private GN:I

.field private GO:Z

.field private GP:[I

.field private GQ:I

.field private GR:I

.field private GS:I

.field private GT:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/common/effects/c;-><init>()V

    .line 22
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/k;->GP:[I

    .line 30
    iput-boolean v1, p0, Lcom/android/common/effects/a/k;->GO:Z

    .line 33
    iput-object p1, p0, Lcom/android/common/effects/a/k;->GM:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/android/common/effects/a/k;->Hu()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/k;->GP:[I

    .line 32
    return-void
.end method

.method private Hs([F[FLjava/nio/FloatBuffer;IIIII)V
    .registers 16

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x14

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 86
    iget v0, p0, Lcom/android/common/effects/a/k;->GN:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 89
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 90
    const/16 v0, 0x302

    const/16 v5, 0x303

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 92
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    iget v0, p0, Lcom/android/common/effects/a/k;->GQ:I

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 95
    iget v0, p0, Lcom/android/common/effects/a/k;->GQ:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 97
    invoke-virtual {p3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    iget v0, p0, Lcom/android/common/effects/a/k;->GR:I

    const/4 v1, 0x2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 100
    iget v0, p0, Lcom/android/common/effects/a/k;->GR:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 102
    iget v0, p0, Lcom/android/common/effects/a/k;->GS:I

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 103
    iget v0, p0, Lcom/android/common/effects/a/k;->GT:I

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 105
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 83
    return-void
.end method

.method private Ht()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    iget-boolean v0, p0, Lcom/android/common/effects/a/k;->GO:Z

    if-eqz v0, :cond_7

    .line 45
    return-void

    .line 47
    :cond_7
    iput-boolean v2, p0, Lcom/android/common/effects/a/k;->GO:Z

    .line 48
    iget-object v0, p0, Lcom/android/common/effects/a/k;->GP:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/effects/a/k;->GP:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/k;->GN:I

    .line 49
    iget v0, p0, Lcom/android/common/effects/a/k;->GN:I

    if-nez v0, :cond_24

    .line 50
    const-string/jumbo v0, "GrayScaleEffect"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_24
    iget v0, p0, Lcom/android/common/effects/a/k;->GN:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/k;->GQ:I

    .line 53
    iget v0, p0, Lcom/android/common/effects/a/k;->GN:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/k;->GR:I

    .line 54
    iget v0, p0, Lcom/android/common/effects/a/k;->GN:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/k;->GS:I

    .line 55
    iget v0, p0, Lcom/android/common/effects/a/k;->GN:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/k;->GT:I

    .line 43
    return-void
.end method

.method private Hu()[I
    .registers 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/common/effects/a/k;->GM:Landroid/content/Context;

    const v1, 0x7f090039

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/common/effects/a/k;->GM:Landroid/content/Context;

    const v2, 0x7f090023

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
    .line 61
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    const v1, 0x8d65

    if-eq v1, v0, :cond_a

    .line 62
    return-void

    .line 64
    :cond_a
    invoke-direct {p0}, Lcom/android/common/effects/a/k;->Ht()V

    .line 65
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 66
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RQ()I

    move-result v0

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 67
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

    invoke-direct/range {v0 .. v8}, Lcom/android/common/effects/a/k;->Hs([F[FLjava/nio/FloatBuffer;IIIII)V

    .line 60
    return-void
.end method

.method public GM()I
    .registers 2

    .prologue
    .line 110
    const v0, 0x8d65

    return v0
.end method

.method public GP()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/common/effects/a/k;->Ht()V

    .line 71
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/common/effects/a/k;->GP:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 78
    iget-object v0, p0, Lcom/android/common/effects/a/k;->GP:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 79
    iget v0, p0, Lcom/android/common/effects/a/k;->GN:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 76
    return-void
.end method

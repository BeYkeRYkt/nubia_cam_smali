.class public Lcom/android/common/effects/a/j;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field private GC:Landroid/content/Context;

.field private GD:I

.field private GE:Z

.field private GF:[I

.field private GG:I

.field private GH:I

.field private GI:I

.field private GJ:I

.field private GK:I

.field private GL:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/android/common/effects/c;-><init>()V

    .line 22
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/j;->GF:[I

    .line 31
    iput-boolean v1, p0, Lcom/android/common/effects/a/j;->GE:Z

    .line 34
    iput-object p1, p0, Lcom/android/common/effects/a/j;->GC:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/android/common/effects/a/j;->Hr()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/j;->GF:[I

    .line 33
    return-void
.end method

.method private Hp([F[FLjava/nio/FloatBuffer;IIIII)V
    .registers 16

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x14

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 91
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 93
    iget v0, p0, Lcom/android/common/effects/a/j;->GD:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 96
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 97
    const/16 v0, 0x302

    const/16 v5, 0x303

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 99
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 100
    iget v0, p0, Lcom/android/common/effects/a/j;->GG:I

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 102
    iget v0, p0, Lcom/android/common/effects/a/j;->GG:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 104
    invoke-virtual {p3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    iget v0, p0, Lcom/android/common/effects/a/j;->GH:I

    const/4 v1, 0x2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 107
    iget v0, p0, Lcom/android/common/effects/a/j;->GH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 109
    iget v0, p0, Lcom/android/common/effects/a/j;->GJ:I

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 110
    iget v0, p0, Lcom/android/common/effects/a/j;->GK:I

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 111
    iget v0, p0, Lcom/android/common/effects/a/j;->GL:I

    int-to-float v1, p6

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 112
    iget v0, p0, Lcom/android/common/effects/a/j;->GI:I

    int-to-float v1, p7

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 114
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 90
    return-void
.end method

.method private Hq()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    iget-boolean v0, p0, Lcom/android/common/effects/a/j;->GE:Z

    if-eqz v0, :cond_7

    .line 74
    return-void

    .line 76
    :cond_7
    iput-boolean v2, p0, Lcom/android/common/effects/a/j;->GE:Z

    .line 77
    iget-object v0, p0, Lcom/android/common/effects/a/j;->GF:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/effects/a/j;->GF:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/j;->GD:I

    .line 78
    iget v0, p0, Lcom/android/common/effects/a/j;->GD:I

    if-nez v0, :cond_24

    .line 79
    const-string/jumbo v0, "LandScapeBlurEffect"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_24
    iget v0, p0, Lcom/android/common/effects/a/j;->GD:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/j;->GG:I

    .line 82
    iget v0, p0, Lcom/android/common/effects/a/j;->GD:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/j;->GH:I

    .line 83
    iget v0, p0, Lcom/android/common/effects/a/j;->GD:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/j;->GJ:I

    .line 84
    iget v0, p0, Lcom/android/common/effects/a/j;->GD:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/j;->GK:I

    .line 85
    iget v0, p0, Lcom/android/common/effects/a/j;->GD:I

    const-string/jumbo v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/j;->GL:I

    .line 86
    iget v0, p0, Lcom/android/common/effects/a/j;->GD:I

    const-string/jumbo v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/j;->GI:I

    .line 72
    return-void
.end method

.method private Hr()[I
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/common/effects/a/j;->GC:Landroid/content/Context;

    const v1, 0x7f090039

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/common/effects/a/j;->GC:Landroid/content/Context;

    const v2, 0x7f09000d

    invoke-static {v1, v2}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SE(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V
    .registers 19

    .prologue
    .line 41
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    const/16 v1, 0xde1

    if-eq v1, v0, :cond_9

    .line 42
    return-void

    .line 44
    :cond_9
    invoke-direct {p0}, Lcom/android/common/effects/a/j;->Hq()V

    .line 45
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 46
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RQ()I

    move-result v0

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 47
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

    invoke-direct/range {v0 .. v8}, Lcom/android/common/effects/a/j;->Hp([F[FLjava/nio/FloatBuffer;IIIII)V

    .line 40
    return-void
.end method

.method public GM()I
    .registers 2

    .prologue
    .line 64
    const/16 v0, 0xde1

    return v0
.end method

.method public GP()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/common/effects/a/j;->Hq()V

    .line 51
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/common/effects/a/j;->GF:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 58
    iget-object v0, p0, Lcom/android/common/effects/a/j;->GF:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 59
    iget v0, p0, Lcom/android/common/effects/a/j;->GD:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 56
    return-void
.end method

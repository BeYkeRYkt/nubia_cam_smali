.class public Lcom/android/common/effects/a/a;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field private EG:Landroid/content/Context;

.field private EH:I

.field private EI:Z

.field private EJ:[I

.field private EK:I

.field private EL:I

.field private EM:I

.field private EN:I

.field private EO:I

.field private EP:I

.field private EQ:I

.field private ER:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/android/common/effects/c;-><init>()V

    .line 22
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/a;->EJ:[I

    .line 33
    iput-boolean v1, p0, Lcom/android/common/effects/a/a;->EI:Z

    .line 36
    iput-object p1, p0, Lcom/android/common/effects/a/a;->EG:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/android/common/effects/a/a;->GO()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/a;->EJ:[I

    .line 35
    return-void
.end method

.method private GL([F[FLjava/nio/FloatBuffer;IIIII)V
    .registers 16

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x14

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 95
    iget v0, p0, Lcom/android/common/effects/a/a;->EH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 98
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 99
    const/16 v0, 0x302

    const/16 v5, 0x303

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 101
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    iget v0, p0, Lcom/android/common/effects/a/a;->EK:I

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 104
    iget v0, p0, Lcom/android/common/effects/a/a;->EK:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 106
    invoke-virtual {p3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    iget v0, p0, Lcom/android/common/effects/a/a;->EL:I

    const/4 v1, 0x2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 109
    iget v0, p0, Lcom/android/common/effects/a/a;->EL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 111
    iget v0, p0, Lcom/android/common/effects/a/a;->EO:I

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 112
    iget v0, p0, Lcom/android/common/effects/a/a;->EQ:I

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 113
    iget v0, p0, Lcom/android/common/effects/a/a;->EP:I

    const v1, 0x40ee147b    # 7.44f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 114
    iget v0, p0, Lcom/android/common/effects/a/a;->EN:I

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 115
    iget v0, p0, Lcom/android/common/effects/a/a;->ER:I

    int-to-float v1, p6

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 116
    iget v0, p0, Lcom/android/common/effects/a/a;->EM:I

    int-to-float v1, p7

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 118
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 91
    return-void
.end method

.method private GN()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    iget-boolean v0, p0, Lcom/android/common/effects/a/a;->EI:Z

    if-eqz v0, :cond_7

    .line 48
    return-void

    .line 50
    :cond_7
    iput-boolean v2, p0, Lcom/android/common/effects/a/a;->EI:Z

    .line 51
    iget-object v0, p0, Lcom/android/common/effects/a/a;->EJ:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/effects/a/a;->EJ:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/a;->EH:I

    .line 52
    iget v0, p0, Lcom/android/common/effects/a/a;->EH:I

    if-nez v0, :cond_24

    .line 53
    const-string/jumbo v0, "PinkEffect"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_24
    iget v0, p0, Lcom/android/common/effects/a/a;->EH:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/a;->EK:I

    .line 56
    iget v0, p0, Lcom/android/common/effects/a/a;->EH:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/a;->EL:I

    .line 57
    iget v0, p0, Lcom/android/common/effects/a/a;->EH:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/a;->EO:I

    .line 58
    iget v0, p0, Lcom/android/common/effects/a/a;->EH:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/a;->EQ:I

    .line 59
    iget v0, p0, Lcom/android/common/effects/a/a;->EH:I

    const-string/jumbo v1, "mult"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/a;->EP:I

    .line 60
    iget v0, p0, Lcom/android/common/effects/a/a;->EH:I

    const-string/jumbo v1, "igamma"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/a;->EN:I

    .line 61
    iget v0, p0, Lcom/android/common/effects/a/a;->EH:I

    const-string/jumbo v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/a;->ER:I

    .line 62
    iget v0, p0, Lcom/android/common/effects/a/a;->EH:I

    const-string/jumbo v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/a;->EM:I

    .line 46
    return-void
.end method

.method private GO()[I
    .registers 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/common/effects/a/a;->EG:Landroid/content/Context;

    const v1, 0x7f090039

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/common/effects/a/a;->EG:Landroid/content/Context;

    const v2, 0x7f09002f

    invoke-static {v1, v2}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SE(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V
    .registers 19

    .prologue
    .line 69
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    const v1, 0x8d65

    if-eq v1, v0, :cond_a

    .line 70
    return-void

    .line 72
    :cond_a
    invoke-direct {p0}, Lcom/android/common/effects/a/a;->GN()V

    .line 73
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 74
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RQ()I

    move-result v0

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 75
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

    invoke-direct/range {v0 .. v8}, Lcom/android/common/effects/a/a;->GL([F[FLjava/nio/FloatBuffer;IIIII)V

    .line 68
    return-void
.end method

.method public GM()I
    .registers 2

    .prologue
    .line 123
    const v0, 0x8d65

    return v0
.end method

.method public GP()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/common/effects/a/a;->GN()V

    .line 79
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/common/effects/a/a;->EJ:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 86
    iget-object v0, p0, Lcom/android/common/effects/a/a;->EJ:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 87
    iget v0, p0, Lcom/android/common/effects/a/a;->EH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 84
    return-void
.end method

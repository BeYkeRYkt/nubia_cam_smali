.class public Lcom/android/common/effects/a/x;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field private JG:Landroid/content/Context;

.field private JH:I

.field private JI:Z

.field private JJ:[I

.field private JK:I

.field private JL:I

.field private JM:I

.field private JN:I

.field private JO:I

.field private JP:I

.field private JQ:I

.field private JR:I


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

    iput-object v0, p0, Lcom/android/common/effects/a/x;->JJ:[I

    .line 33
    iput-boolean v1, p0, Lcom/android/common/effects/a/x;->JI:Z

    .line 36
    iput-object p1, p0, Lcom/android/common/effects/a/x;->JG:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/android/common/effects/a/x;->Ih()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/x;->JJ:[I

    .line 35
    return-void
.end method

.method private If([F[FLjava/nio/FloatBuffer;IIIII)V
    .registers 16

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x14

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 92
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 94
    iget v0, p0, Lcom/android/common/effects/a/x;->JH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 97
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 98
    const/16 v0, 0x302

    const/16 v5, 0x303

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 100
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    iget v0, p0, Lcom/android/common/effects/a/x;->JK:I

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 103
    iget v0, p0, Lcom/android/common/effects/a/x;->JK:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 105
    invoke-virtual {p3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    iget v0, p0, Lcom/android/common/effects/a/x;->JL:I

    const/4 v1, 0x2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 108
    iget v0, p0, Lcom/android/common/effects/a/x;->JL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 110
    iget v0, p0, Lcom/android/common/effects/a/x;->JO:I

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 111
    iget v0, p0, Lcom/android/common/effects/a/x;->JQ:I

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 112
    iget v0, p0, Lcom/android/common/effects/a/x;->JP:I

    const v1, 0x40ee147b    # 7.44f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 113
    iget v0, p0, Lcom/android/common/effects/a/x;->JN:I

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 114
    iget v0, p0, Lcom/android/common/effects/a/x;->JR:I

    int-to-float v1, p6

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 115
    iget v0, p0, Lcom/android/common/effects/a/x;->JM:I

    int-to-float v1, p7

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 117
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 90
    return-void
.end method

.method private Ig()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    iget-boolean v0, p0, Lcom/android/common/effects/a/x;->JI:Z

    if-eqz v0, :cond_7

    .line 48
    return-void

    .line 50
    :cond_7
    iput-boolean v2, p0, Lcom/android/common/effects/a/x;->JI:Z

    .line 51
    iget-object v0, p0, Lcom/android/common/effects/a/x;->JJ:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/effects/a/x;->JJ:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/x;->JH:I

    .line 52
    iget v0, p0, Lcom/android/common/effects/a/x;->JH:I

    if-nez v0, :cond_24

    .line 53
    const-string/jumbo v0, "LOMOEffect"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_24
    iget v0, p0, Lcom/android/common/effects/a/x;->JH:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/x;->JK:I

    .line 56
    iget v0, p0, Lcom/android/common/effects/a/x;->JH:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/x;->JL:I

    .line 57
    iget v0, p0, Lcom/android/common/effects/a/x;->JH:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/x;->JO:I

    .line 58
    iget v0, p0, Lcom/android/common/effects/a/x;->JH:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/x;->JQ:I

    .line 59
    iget v0, p0, Lcom/android/common/effects/a/x;->JH:I

    const-string/jumbo v1, "mult"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/x;->JP:I

    .line 60
    iget v0, p0, Lcom/android/common/effects/a/x;->JH:I

    const-string/jumbo v1, "igamma"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/x;->JN:I

    .line 61
    iget v0, p0, Lcom/android/common/effects/a/x;->JH:I

    const-string/jumbo v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/x;->JR:I

    .line 62
    iget v0, p0, Lcom/android/common/effects/a/x;->JH:I

    const-string/jumbo v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/x;->JM:I

    .line 46
    return-void
.end method

.method private Ih()[I
    .registers 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/common/effects/a/x;->JG:Landroid/content/Context;

    const v1, 0x7f090039

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/common/effects/a/x;->JG:Landroid/content/Context;

    const v2, 0x7f090025

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
    .line 68
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    const v1, 0x8d65

    if-eq v1, v0, :cond_a

    .line 69
    return-void

    .line 71
    :cond_a
    invoke-direct {p0}, Lcom/android/common/effects/a/x;->Ig()V

    .line 72
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 73
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RQ()I

    move-result v0

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 74
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

    invoke-direct/range {v0 .. v8}, Lcom/android/common/effects/a/x;->If([F[FLjava/nio/FloatBuffer;IIIII)V

    .line 67
    return-void
.end method

.method public GM()I
    .registers 2

    .prologue
    .line 122
    const v0, 0x8d65

    return v0
.end method

.method public GP()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/common/effects/a/x;->Ig()V

    .line 78
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/common/effects/a/x;->JJ:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 85
    iget-object v0, p0, Lcom/android/common/effects/a/x;->JJ:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 86
    iget v0, p0, Lcom/android/common/effects/a/x;->JH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 83
    return-void
.end method

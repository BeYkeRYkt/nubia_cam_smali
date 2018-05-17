.class public Lcom/android/common/effects/a/f;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field private FM:Landroid/content/Context;

.field private FN:I

.field private FO:I

.field private FP:Z

.field private FQ:[I

.field private FR:I

.field private FS:I

.field private FT:I

.field private FU:I

.field private FV:I

.field private FW:I

.field private FX:I

.field private FY:I

.field private FZ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/android/common/effects/c;-><init>()V

    .line 19
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/f;->FQ:[I

    .line 28
    const/16 v0, 0xde1

    iput v0, p0, Lcom/android/common/effects/a/f;->FR:I

    .line 33
    iput-boolean v1, p0, Lcom/android/common/effects/a/f;->FP:Z

    .line 36
    iput p2, p0, Lcom/android/common/effects/a/f;->FR:I

    .line 37
    iput-object p1, p0, Lcom/android/common/effects/a/f;->FM:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/android/common/effects/a/f;->He()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/f;->FQ:[I

    .line 39
    const v0, 0x7f020009

    invoke-static {p1, v0}, Lcom/android/common/gles/i;->SG(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/f;->FN:I

    .line 35
    return-void
.end method

.method private Hc([F[FLjava/nio/FloatBuffer;IIIII)V
    .registers 15

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/common/effects/a/f;->Hd()V

    .line 97
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 99
    iget v0, p0, Lcom/android/common/effects/a/f;->FO:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 102
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 103
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    iget v0, p0, Lcom/android/common/effects/a/f;->FS:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 107
    const/16 v4, 0x14

    move-object v5, p3

    .line 106
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 108
    iget v0, p0, Lcom/android/common/effects/a/f;->FS:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 110
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    iget v0, p0, Lcom/android/common/effects/a/f;->FT:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 112
    const/16 v4, 0x14

    move-object v5, p3

    .line 111
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 113
    iget v0, p0, Lcom/android/common/effects/a/f;->FT:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 115
    iget v0, p0, Lcom/android/common/effects/a/f;->FX:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 116
    iget v0, p0, Lcom/android/common/effects/a/f;->FY:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 118
    iget v0, p0, Lcom/android/common/effects/a/f;->FZ:I

    int-to-float v1, p6

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 119
    iget v0, p0, Lcom/android/common/effects/a/f;->FW:I

    int-to-float v1, p7

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 121
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 122
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 123
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v1, v4, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 124
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 125
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x41000000    # -0.5f

    invoke-static {v0, v3, v1, v4, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 126
    iget v1, p0, Lcom/android/common/effects/a/f;->FU:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 128
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 129
    iget v0, p0, Lcom/android/common/effects/a/f;->FN:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 130
    iget v0, p0, Lcom/android/common/effects/a/f;->FV:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 132
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 95
    return-void
.end method

.method private Hd()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    iget-boolean v0, p0, Lcom/android/common/effects/a/f;->FP:Z

    if-eqz v0, :cond_7

    .line 50
    return-void

    .line 52
    :cond_7
    iput-boolean v2, p0, Lcom/android/common/effects/a/f;->FP:Z

    .line 53
    iget-object v0, p0, Lcom/android/common/effects/a/f;->FQ:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/effects/a/f;->FQ:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/f;->FO:I

    .line 54
    iget v0, p0, Lcom/android/common/effects/a/f;->FO:I

    if-nez v0, :cond_24

    .line 55
    const-string/jumbo v0, "PrettyJapanEffect"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_24
    iget v0, p0, Lcom/android/common/effects/a/f;->FO:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/f;->FS:I

    .line 58
    iget v0, p0, Lcom/android/common/effects/a/f;->FO:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/f;->FT:I

    .line 59
    iget v0, p0, Lcom/android/common/effects/a/f;->FO:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/f;->FX:I

    .line 60
    iget v0, p0, Lcom/android/common/effects/a/f;->FO:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/f;->FY:I

    .line 62
    iget v0, p0, Lcom/android/common/effects/a/f;->FO:I

    const-string/jumbo v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/f;->FZ:I

    .line 63
    iget v0, p0, Lcom/android/common/effects/a/f;->FO:I

    const-string/jumbo v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/f;->FW:I

    .line 65
    iget v0, p0, Lcom/android/common/effects/a/f;->FO:I

    const-string/jumbo v1, "uEAMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/f;->FU:I

    .line 66
    iget v0, p0, Lcom/android/common/effects/a/f;->FO:I

    const-string/jumbo v1, "uFrontTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/f;->FV:I

    .line 48
    return-void
.end method

.method private He()[I
    .registers 5

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/common/effects/a/f;->FM:Landroid/content/Context;

    const v1, 0x7f09002a

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/android/common/effects/a/f;->FM:Landroid/content/Context;

    iget v2, p0, Lcom/android/common/effects/a/f;->FR:I

    const v3, 0x7f090005

    invoke-static {v1, v3, v2}, Lcom/android/common/gles/i;->SH(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SE(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V
    .registers 19

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/common/effects/a/f;->GM()I

    move-result v0

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RG()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 73
    const-string/jumbo v0, "PrettyJapanEffect"

    const-string/jumbo v1, "texture target != effect target!!!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 76
    :cond_14
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 77
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RQ()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 78
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

    invoke-direct/range {v0 .. v8}, Lcom/android/common/effects/a/f;->Hc([F[FLjava/nio/FloatBuffer;IIIII)V

    .line 71
    return-void
.end method

.method public GM()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lcom/android/common/effects/a/f;->FR:I

    return v0
.end method

.method public GP()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/common/effects/a/f;->Hd()V

    .line 82
    return-void
.end method

.method public release()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/common/effects/a/f;->FQ:[I

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 89
    iget-object v0, p0, Lcom/android/common/effects/a/f;->FQ:[I

    aget v0, v0, v3

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 90
    iget v0, p0, Lcom/android/common/effects/a/f;->FO:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 91
    new-array v0, v3, [I

    iget v1, p0, Lcom/android/common/effects/a/f;->FN:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 87
    return-void
.end method

.class public Lcom/android/common/effects/a/q;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field private HT:Landroid/content/Context;

.field private HU:I

.field private HV:I

.field private HW:Z

.field private HX:[I

.field private HY:I

.field private HZ:I

.field private Ia:I

.field private Ib:I

.field private Ic:I

.field private Id:I

.field private Ie:I

.field private If:I

.field private Ig:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/android/common/effects/c;-><init>()V

    .line 20
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/q;->HX:[I

    .line 28
    const/16 v0, 0xde1

    iput v0, p0, Lcom/android/common/effects/a/q;->HY:I

    .line 33
    iput-boolean v1, p0, Lcom/android/common/effects/a/q;->HW:Z

    .line 36
    iput p2, p0, Lcom/android/common/effects/a/q;->HY:I

    .line 37
    iput-object p1, p0, Lcom/android/common/effects/a/q;->HT:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/android/common/effects/a/q;->HL()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/q;->HX:[I

    .line 39
    const v0, 0x7f020007

    invoke-static {p1, v0}, Lcom/android/common/gles/i;->SG(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/q;->HU:I

    .line 35
    return-void
.end method

.method private HJ([F[FLjava/nio/FloatBuffer;IIIII)V
    .registers 15

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/common/effects/a/q;->HK()V

    .line 98
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 100
    iget v0, p0, Lcom/android/common/effects/a/q;->HV:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 103
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 104
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    iget v0, p0, Lcom/android/common/effects/a/q;->HZ:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 108
    const/16 v4, 0x14

    move-object v5, p3

    .line 107
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 109
    iget v0, p0, Lcom/android/common/effects/a/q;->HZ:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 111
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    iget v0, p0, Lcom/android/common/effects/a/q;->Ia:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 113
    const/16 v4, 0x14

    move-object v5, p3

    .line 112
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 114
    iget v0, p0, Lcom/android/common/effects/a/q;->Ia:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 117
    iget v0, p0, Lcom/android/common/effects/a/q;->Ie:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 118
    iget v0, p0, Lcom/android/common/effects/a/q;->If:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 120
    iget v0, p0, Lcom/android/common/effects/a/q;->Ig:I

    int-to-float v1, p6

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 121
    iget v0, p0, Lcom/android/common/effects/a/q;->Id:I

    int-to-float v1, p7

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 124
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 125
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 126
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v1, v4, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 127
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 128
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x41000000    # -0.5f

    invoke-static {v0, v3, v1, v4, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 129
    iget v1, p0, Lcom/android/common/effects/a/q;->Ib:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 131
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 132
    iget v0, p0, Lcom/android/common/effects/a/q;->HU:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 133
    iget v0, p0, Lcom/android/common/effects/a/q;->Ic:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 136
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 95
    return-void
.end method

.method private HK()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    iget-boolean v0, p0, Lcom/android/common/effects/a/q;->HW:Z

    if-eqz v0, :cond_7

    .line 49
    return-void

    .line 51
    :cond_7
    iput-boolean v2, p0, Lcom/android/common/effects/a/q;->HW:Z

    .line 52
    iget-object v0, p0, Lcom/android/common/effects/a/q;->HX:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/effects/a/q;->HX:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/q;->HV:I

    .line 53
    iget v0, p0, Lcom/android/common/effects/a/q;->HV:I

    if-nez v0, :cond_24

    .line 54
    const-string/jumbo v0, "PrettyBeautifulEffect"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_24
    iget v0, p0, Lcom/android/common/effects/a/q;->HV:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/q;->HZ:I

    .line 57
    iget v0, p0, Lcom/android/common/effects/a/q;->HV:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/q;->Ia:I

    .line 58
    iget v0, p0, Lcom/android/common/effects/a/q;->HV:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/q;->Ie:I

    .line 59
    iget v0, p0, Lcom/android/common/effects/a/q;->HV:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/q;->If:I

    .line 61
    iget v0, p0, Lcom/android/common/effects/a/q;->HV:I

    const-string/jumbo v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/q;->Ig:I

    .line 62
    iget v0, p0, Lcom/android/common/effects/a/q;->HV:I

    const-string/jumbo v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/q;->Id:I

    .line 64
    iget v0, p0, Lcom/android/common/effects/a/q;->HV:I

    const-string/jumbo v1, "uEAMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/q;->Ib:I

    .line 65
    iget v0, p0, Lcom/android/common/effects/a/q;->HV:I

    const-string/jumbo v1, "uFrontTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/q;->Ic:I

    .line 47
    return-void
.end method

.method private HL()[I
    .registers 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/common/effects/a/q;->HT:Landroid/content/Context;

    const v1, 0x7f090039

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/android/common/effects/a/q;->HT:Landroid/content/Context;

    iget v2, p0, Lcom/android/common/effects/a/q;->HY:I

    const v3, 0x7f090003

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
    invoke-virtual {p0}, Lcom/android/common/effects/a/q;->GM()I

    move-result v0

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RG()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 73
    const-string/jumbo v0, "PrettyBeautifulEffect"

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

    invoke-direct/range {v0 .. v8}, Lcom/android/common/effects/a/q;->HJ([F[FLjava/nio/FloatBuffer;IIIII)V

    .line 71
    return-void
.end method

.method public GM()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lcom/android/common/effects/a/q;->HY:I

    return v0
.end method

.method public GP()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/common/effects/a/q;->HK()V

    .line 82
    return-void
.end method

.method public release()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/common/effects/a/q;->HX:[I

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 89
    iget-object v0, p0, Lcom/android/common/effects/a/q;->HX:[I

    aget v0, v0, v3

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 90
    iget v0, p0, Lcom/android/common/effects/a/q;->HV:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 91
    new-array v0, v3, [I

    iget v1, p0, Lcom/android/common/effects/a/q;->HU:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 87
    return-void
.end method

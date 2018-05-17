.class public Lcom/android/common/effects/a/l;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field private GU:Landroid/content/Context;

.field private GV:I

.field private GW:I

.field private GX:I

.field private GY:Z

.field private GZ:[I

.field private Ha:I

.field private Hb:I

.field private Hc:I

.field private Hd:I

.field private He:I

.field private Hf:I

.field private Hg:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/android/common/effects/c;-><init>()V

    .line 19
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/l;->GZ:[I

    .line 32
    iput-boolean v1, p0, Lcom/android/common/effects/a/l;->GY:Z

    .line 35
    iput-object p1, p0, Lcom/android/common/effects/a/l;->GU:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/android/common/effects/a/l;->Hx()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/l;->GZ:[I

    .line 37
    const v0, 0x7f0200af

    invoke-static {p1, v0}, Lcom/android/common/gles/i;->SG(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/l;->GW:I

    .line 38
    const v0, 0x7f0200ad

    invoke-static {p1, v0}, Lcom/android/common/gles/i;->SG(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/l;->GV:I

    .line 34
    return-void
.end method

.method private Hv([F[FLjava/nio/FloatBuffer;IIIII)V
    .registers 15

    .prologue
    .line 93
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 95
    iget v0, p0, Lcom/android/common/effects/a/l;->GX:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 98
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 99
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    iget v0, p0, Lcom/android/common/effects/a/l;->Ha:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 103
    const/16 v4, 0x14

    move-object v5, p3

    .line 102
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 104
    iget v0, p0, Lcom/android/common/effects/a/l;->Ha:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 106
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    iget v0, p0, Lcom/android/common/effects/a/l;->Hb:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 108
    const/16 v4, 0x14

    move-object v5, p3

    .line 107
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 109
    iget v0, p0, Lcom/android/common/effects/a/l;->Hb:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 111
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 112
    iget v0, p0, Lcom/android/common/effects/a/l;->GV:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 113
    iget v0, p0, Lcom/android/common/effects/a/l;->Hd:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 115
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 116
    iget v0, p0, Lcom/android/common/effects/a/l;->GW:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 117
    iget v0, p0, Lcom/android/common/effects/a/l;->He:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 119
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 120
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 121
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v1, v4, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 122
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 123
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x41000000    # -0.5f

    invoke-static {v0, v3, v1, v4, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 124
    iget v1, p0, Lcom/android/common/effects/a/l;->Hc:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 126
    iget v0, p0, Lcom/android/common/effects/a/l;->Hf:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 127
    iget v0, p0, Lcom/android/common/effects/a/l;->Hg:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 129
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 92
    return-void
.end method

.method private Hw()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    iget-boolean v0, p0, Lcom/android/common/effects/a/l;->GY:Z

    if-eqz v0, :cond_7

    .line 49
    return-void

    .line 51
    :cond_7
    iput-boolean v2, p0, Lcom/android/common/effects/a/l;->GY:Z

    .line 52
    iget-object v0, p0, Lcom/android/common/effects/a/l;->GZ:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/effects/a/l;->GZ:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/l;->GX:I

    .line 53
    iget v0, p0, Lcom/android/common/effects/a/l;->GX:I

    if-nez v0, :cond_24

    .line 54
    const-string/jumbo v0, "ColorPaintEffect"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_24
    iget v0, p0, Lcom/android/common/effects/a/l;->GX:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/l;->Ha:I

    .line 57
    iget v0, p0, Lcom/android/common/effects/a/l;->GX:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/l;->Hb:I

    .line 58
    iget v0, p0, Lcom/android/common/effects/a/l;->GX:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/l;->Hf:I

    .line 59
    iget v0, p0, Lcom/android/common/effects/a/l;->GX:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/l;->Hg:I

    .line 61
    iget v0, p0, Lcom/android/common/effects/a/l;->GX:I

    const-string/jumbo v1, "uEAMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/l;->Hc:I

    .line 62
    iget v0, p0, Lcom/android/common/effects/a/l;->GX:I

    const-string/jumbo v1, "uFrontTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/l;->He:I

    .line 63
    iget v0, p0, Lcom/android/common/effects/a/l;->GX:I

    const-string/jumbo v1, "uEffectAreaTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/l;->Hd:I

    .line 47
    return-void
.end method

.method private Hx()[I
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/common/effects/a/l;->GU:Landroid/content/Context;

    const v1, 0x7f090017

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/android/common/effects/a/l;->GU:Landroid/content/Context;

    const v2, 0x7f090016

    invoke-static {v1, v2}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 42
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
    invoke-direct {p0}, Lcom/android/common/effects/a/l;->Hw()V

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

    invoke-direct/range {v0 .. v8}, Lcom/android/common/effects/a/l;->Hv([F[FLjava/nio/FloatBuffer;IIIII)V

    .line 68
    return-void
.end method

.method public GM()I
    .registers 2

    .prologue
    .line 134
    const v0, 0x8d65

    return v0
.end method

.method public GP()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/common/effects/a/l;->Hw()V

    .line 79
    return-void
.end method

.method public release()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/android/common/effects/a/l;->GZ:[I

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 86
    iget-object v0, p0, Lcom/android/common/effects/a/l;->GZ:[I

    aget v0, v0, v3

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 87
    iget v0, p0, Lcom/android/common/effects/a/l;->GX:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 88
    new-array v0, v4, [I

    iget v1, p0, Lcom/android/common/effects/a/l;->GW:I

    aput v1, v0, v2

    iget v1, p0, Lcom/android/common/effects/a/l;->GV:I

    aput v1, v0, v3

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 84
    return-void
.end method

.class public Lcom/android/common/effects/a/t;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field private IC:I

.field private ID:Landroid/content/Context;

.field private IE:[F

.field private IF:Lcom/android/common/gles/c;

.field private IG:I

.field private IH:Z

.field private II:[I

.field private IJ:I

.field private IK:I

.field private IL:I

.field private IM:I

.field private IN:I

.field private IO:I

.field private IP:I

.field private IQ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/android/common/effects/c;-><init>()V

    .line 22
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/t;->II:[I

    .line 36
    iput-boolean v1, p0, Lcom/android/common/effects/a/t;->IH:Z

    .line 41
    iput-object p1, p0, Lcom/android/common/effects/a/t;->ID:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/android/common/effects/a/t;->HV()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/t;->II:[I

    .line 43
    const v0, 0x7f020071

    invoke-static {p1, v0}, Lcom/android/common/gles/i;->SG(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/t;->IC:I

    .line 40
    return-void
.end method

.method private HT([F[FLjava/nio/FloatBuffer;IIIII)V
    .registers 15

    .prologue
    .line 108
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 110
    iget v0, p0, Lcom/android/common/effects/a/t;->IG:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 113
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 114
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 117
    iget v0, p0, Lcom/android/common/effects/a/t;->IJ:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 118
    const/16 v4, 0x14

    move-object v5, p3

    .line 117
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 119
    iget v0, p0, Lcom/android/common/effects/a/t;->IJ:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 121
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    iget v0, p0, Lcom/android/common/effects/a/t;->IK:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 123
    const/16 v4, 0x14

    move-object v5, p3

    .line 122
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 124
    iget v0, p0, Lcom/android/common/effects/a/t;->IK:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 126
    iget v0, p0, Lcom/android/common/effects/a/t;->IM:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 127
    iget v0, p0, Lcom/android/common/effects/a/t;->IP:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 128
    iget v0, p0, Lcom/android/common/effects/a/t;->IN:I

    iget-object v1, p0, Lcom/android/common/effects/a/t;->IE:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 130
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 131
    iget-object v0, p0, Lcom/android/common/effects/a/t;->IF:Lcom/android/common/gles/c;

    invoke-virtual {v0}, Lcom/android/common/gles/c;->RQ()I

    move-result v0

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 132
    iget v0, p0, Lcom/android/common/effects/a/t;->IO:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 134
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 135
    const/16 v0, 0xde1

    invoke-static {v0, p8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 136
    iget v0, p0, Lcom/android/common/effects/a/t;->IQ:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 138
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 139
    iget v0, p0, Lcom/android/common/effects/a/t;->IC:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 140
    iget v0, p0, Lcom/android/common/effects/a/t;->IL:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 144
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 107
    return-void
.end method

.method private HU()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    iget-boolean v0, p0, Lcom/android/common/effects/a/t;->IH:Z

    if-eqz v0, :cond_7

    .line 88
    return-void

    .line 90
    :cond_7
    iput-boolean v2, p0, Lcom/android/common/effects/a/t;->IH:Z

    .line 91
    iget-object v0, p0, Lcom/android/common/effects/a/t;->II:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/effects/a/t;->II:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/t;->IG:I

    .line 92
    iget v0, p0, Lcom/android/common/effects/a/t;->IG:I

    if-nez v0, :cond_24

    .line 93
    const-string/jumbo v0, "OverlyEffect"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_24
    iget v0, p0, Lcom/android/common/effects/a/t;->IG:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/t;->IJ:I

    .line 96
    iget v0, p0, Lcom/android/common/effects/a/t;->IG:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/t;->IK:I

    .line 97
    iget v0, p0, Lcom/android/common/effects/a/t;->IG:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/t;->IM:I

    .line 98
    iget v0, p0, Lcom/android/common/effects/a/t;->IG:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/t;->IP:I

    .line 99
    iget v0, p0, Lcom/android/common/effects/a/t;->IG:I

    const-string/jumbo v1, "uPreviewSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/t;->IN:I

    .line 100
    iget v0, p0, Lcom/android/common/effects/a/t;->IG:I

    const-string/jumbo v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/t;->IQ:I

    .line 101
    iget v0, p0, Lcom/android/common/effects/a/t;->IG:I

    const-string/jumbo v1, "sPreviewTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/t;->IO:I

    .line 102
    iget v0, p0, Lcom/android/common/effects/a/t;->IG:I

    const-string/jumbo v1, "sChangeTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/t;->IL:I

    .line 86
    return-void
.end method

.method private HV()[I
    .registers 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/common/effects/a/t;->ID:Landroid/content/Context;

    const v1, 0x7f09002e

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/android/common/effects/a/t;->ID:Landroid/content/Context;

    const v2, 0x7f09002d

    invoke-static {v1, v2}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SE(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V
    .registers 19

    .prologue
    .line 49
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    const/16 v1, 0xde1

    if-eq v1, v0, :cond_9

    .line 50
    return-void

    .line 52
    :cond_9
    invoke-direct {p0}, Lcom/android/common/effects/a/t;->HU()V

    .line 54
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 55
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

    invoke-direct/range {v0 .. v8}, Lcom/android/common/effects/a/t;->HT([F[FLjava/nio/FloatBuffer;IIIII)V

    .line 48
    return-void
.end method

.method public GM()I
    .registers 2

    .prologue
    .line 73
    const/16 v0, 0xde1

    return v0
.end method

.method public GP()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/common/effects/a/t;->HU()V

    .line 59
    return-void
.end method

.method public HS(Lcom/android/common/gles/c;[F)V
    .registers 3

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/common/effects/a/t;->IF:Lcom/android/common/gles/c;

    .line 78
    iput-object p2, p0, Lcom/android/common/effects/a/t;->IE:[F

    .line 76
    return-void
.end method

.method public release()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/android/common/effects/a/t;->II:[I

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 66
    iget-object v0, p0, Lcom/android/common/effects/a/t;->II:[I

    aget v0, v0, v3

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 67
    iget v0, p0, Lcom/android/common/effects/a/t;->IG:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 68
    new-array v0, v3, [I

    iget v1, p0, Lcom/android/common/effects/a/t;->IC:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 64
    return-void
.end method

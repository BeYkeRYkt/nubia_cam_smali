.class public Lcom/android/common/effects/a/d;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field private FA:I

.field private FB:I

.field private FC:I

.field private FD:I

.field private Fv:Landroid/content/Context;

.field private Fw:I

.field private Fx:Z

.field private Fy:[I

.field private Fz:I


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

    iput-object v0, p0, Lcom/android/common/effects/a/d;->Fy:[I

    .line 31
    iput-boolean v1, p0, Lcom/android/common/effects/a/d;->Fx:Z

    .line 34
    iput-object p1, p0, Lcom/android/common/effects/a/d;->Fv:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/android/common/effects/a/d;->GY()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/d;->Fy:[I

    .line 33
    return-void
.end method

.method private GW([F[FLjava/nio/FloatBuffer;IIIII)V
    .registers 16

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x14

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 87
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 89
    iget v0, p0, Lcom/android/common/effects/a/d;->Fw:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 92
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 93
    const/16 v0, 0x302

    const/16 v5, 0x303

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 95
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    iget v0, p0, Lcom/android/common/effects/a/d;->Fz:I

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 98
    iget v0, p0, Lcom/android/common/effects/a/d;->Fz:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 100
    invoke-virtual {p3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    iget v0, p0, Lcom/android/common/effects/a/d;->FA:I

    const/4 v1, 0x2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 103
    iget v0, p0, Lcom/android/common/effects/a/d;->FA:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 105
    iget v0, p0, Lcom/android/common/effects/a/d;->FB:I

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 106
    iget v0, p0, Lcom/android/common/effects/a/d;->FC:I

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 107
    iget v0, p0, Lcom/android/common/effects/a/d;->FD:I

    const v1, 0x3f666666    # 0.9f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 109
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 85
    return-void
.end method

.method private GX()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    iget-boolean v0, p0, Lcom/android/common/effects/a/d;->Fx:Z

    if-eqz v0, :cond_7

    .line 46
    return-void

    .line 48
    :cond_7
    iput-boolean v2, p0, Lcom/android/common/effects/a/d;->Fx:Z

    .line 49
    iget-object v0, p0, Lcom/android/common/effects/a/d;->Fy:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/effects/a/d;->Fy:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/d;->Fw:I

    .line 50
    iget v0, p0, Lcom/android/common/effects/a/d;->Fw:I

    if-nez v0, :cond_24

    .line 51
    const-string/jumbo v0, "TemperatureEffect"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_24
    iget v0, p0, Lcom/android/common/effects/a/d;->Fw:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/d;->Fz:I

    .line 54
    iget v0, p0, Lcom/android/common/effects/a/d;->Fw:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/d;->FA:I

    .line 55
    iget v0, p0, Lcom/android/common/effects/a/d;->Fw:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/d;->FB:I

    .line 56
    iget v0, p0, Lcom/android/common/effects/a/d;->Fw:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/d;->FC:I

    .line 57
    iget v0, p0, Lcom/android/common/effects/a/d;->Fw:I

    const-string/jumbo v1, "scale"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/d;->FD:I

    .line 44
    return-void
.end method

.method private GY()[I
    .registers 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/common/effects/a/d;->Fv:Landroid/content/Context;

    const v1, 0x7f090039

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/common/effects/a/d;->Fv:Landroid/content/Context;

    const v2, 0x7f09003c

    invoke-static {v1, v2}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SE(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V
    .registers 19

    .prologue
    .line 63
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    const v1, 0x8d65

    if-eq v1, v0, :cond_a

    .line 64
    return-void

    .line 66
    :cond_a
    invoke-direct {p0}, Lcom/android/common/effects/a/d;->GX()V

    .line 67
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 68
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RQ()I

    move-result v0

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 69
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

    invoke-direct/range {v0 .. v8}, Lcom/android/common/effects/a/d;->GW([F[FLjava/nio/FloatBuffer;IIIII)V

    .line 62
    return-void
.end method

.method public GM()I
    .registers 2

    .prologue
    .line 114
    const v0, 0x8d65

    return v0
.end method

.method public GP()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/common/effects/a/d;->GX()V

    .line 73
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/common/effects/a/d;->Fy:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 80
    iget-object v0, p0, Lcom/android/common/effects/a/d;->Fy:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 81
    iget v0, p0, Lcom/android/common/effects/a/d;->Fw:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 78
    return-void
.end method

.class public Lcom/android/common/effects/a/v;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field private IZ:Landroid/content/Context;

.field private Ja:I

.field private Jb:Z

.field private Jc:[I

.field private Jd:I

.field private Je:I

.field private Jf:I

.field private Jg:I

.field private Jh:I

.field private Ji:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/common/effects/c;-><init>()V

    .line 21
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/v;->Jc:[I

    .line 30
    iput-boolean v1, p0, Lcom/android/common/effects/a/v;->Jb:Z

    .line 33
    iput-object p1, p0, Lcom/android/common/effects/a/v;->IZ:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/android/common/effects/a/v;->Ib()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/v;->Jc:[I

    .line 32
    return-void
.end method

.method private HZ([F[FLjava/nio/FloatBuffer;IIIII)V
    .registers 16

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x14

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 86
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 88
    iget v0, p0, Lcom/android/common/effects/a/v;->Ja:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 91
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 92
    const/16 v0, 0x302

    const/16 v5, 0x303

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 94
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    iget v0, p0, Lcom/android/common/effects/a/v;->Jd:I

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 97
    iget v0, p0, Lcom/android/common/effects/a/v;->Jd:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 99
    invoke-virtual {p3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 100
    iget v0, p0, Lcom/android/common/effects/a/v;->Je:I

    const/4 v1, 0x2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 102
    iget v0, p0, Lcom/android/common/effects/a/v;->Je:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 104
    iget v0, p0, Lcom/android/common/effects/a/v;->Jg:I

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 105
    iget v0, p0, Lcom/android/common/effects/a/v;->Jh:I

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 106
    iget v0, p0, Lcom/android/common/effects/a/v;->Ji:I

    int-to-float v1, p6

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 107
    iget v0, p0, Lcom/android/common/effects/a/v;->Jf:I

    int-to-float v1, p7

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 109
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 85
    return-void
.end method

.method private Ia()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    iget-boolean v0, p0, Lcom/android/common/effects/a/v;->Jb:Z

    if-eqz v0, :cond_7

    .line 45
    return-void

    .line 47
    :cond_7
    iput-boolean v2, p0, Lcom/android/common/effects/a/v;->Jb:Z

    .line 48
    iget-object v0, p0, Lcom/android/common/effects/a/v;->Jc:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/effects/a/v;->Jc:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/v;->Ja:I

    .line 49
    iget v0, p0, Lcom/android/common/effects/a/v;->Ja:I

    if-nez v0, :cond_24

    .line 50
    const-string/jumbo v0, "EmbossEffect"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_24
    iget v0, p0, Lcom/android/common/effects/a/v;->Ja:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/v;->Jd:I

    .line 53
    iget v0, p0, Lcom/android/common/effects/a/v;->Ja:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/v;->Je:I

    .line 54
    iget v0, p0, Lcom/android/common/effects/a/v;->Ja:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/v;->Jg:I

    .line 55
    iget v0, p0, Lcom/android/common/effects/a/v;->Ja:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/v;->Jh:I

    .line 56
    iget v0, p0, Lcom/android/common/effects/a/v;->Ja:I

    const-string/jumbo v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/v;->Ji:I

    .line 57
    iget v0, p0, Lcom/android/common/effects/a/v;->Ja:I

    const-string/jumbo v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/v;->Jf:I

    .line 43
    return-void
.end method

.method private Ib()[I
    .registers 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/common/effects/a/v;->IZ:Landroid/content/Context;

    const v1, 0x7f090039

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/common/effects/a/v;->IZ:Landroid/content/Context;

    const v2, 0x7f090019

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
    .line 63
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    const v1, 0x8d65

    if-eq v1, v0, :cond_a

    .line 64
    return-void

    .line 66
    :cond_a
    invoke-direct {p0}, Lcom/android/common/effects/a/v;->Ia()V

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

    invoke-direct/range {v0 .. v8}, Lcom/android/common/effects/a/v;->HZ([F[FLjava/nio/FloatBuffer;IIIII)V

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
    invoke-direct {p0}, Lcom/android/common/effects/a/v;->Ia()V

    .line 73
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/common/effects/a/v;->Jc:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 80
    iget-object v0, p0, Lcom/android/common/effects/a/v;->Jc:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 81
    iget v0, p0, Lcom/android/common/effects/a/v;->Ja:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 78
    return-void
.end method

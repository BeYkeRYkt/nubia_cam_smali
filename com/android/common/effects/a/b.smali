.class public Lcom/android/common/effects/a/b;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field final ES:I

.field final ET:I

.field final EU:I

.field private EV:Landroid/content/Context;

.field EW:I

.field private EX:[F

.field private EY:I

.field private EZ:Z

.field private Fa:[I

.field private Fb:I

.field private Fc:I

.field private Fd:I

.field private Fe:I

.field private Ff:I

.field private Fg:I

.field private Fh:I

.field private Fi:I

.field private Fj:I

.field private Fk:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[FII)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/android/common/effects/c;-><init>()V

    .line 20
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/b;->Fa:[I

    .line 33
    iput v1, p0, Lcom/android/common/effects/a/b;->EW:I

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_2c

    iput-object v0, p0, Lcom/android/common/effects/a/b;->EX:[F

    .line 35
    iput v1, p0, Lcom/android/common/effects/a/b;->EU:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/effects/a/b;->ES:I

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/effects/a/b;->ET:I

    .line 40
    iput-boolean v1, p0, Lcom/android/common/effects/a/b;->EZ:Z

    .line 43
    iput-object p1, p0, Lcom/android/common/effects/a/b;->EV:Landroid/content/Context;

    .line 44
    invoke-direct {p0, p4}, Lcom/android/common/effects/a/b;->GS(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/b;->Fa:[I

    .line 45
    iput p3, p0, Lcom/android/common/effects/a/b;->EW:I

    .line 46
    iput-object p2, p0, Lcom/android/common/effects/a/b;->EX:[F

    .line 42
    return-void

    .line 34
    nop

    :array_2c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private GQ([F[FLjava/nio/FloatBuffer;IIIII)V
    .registers 15

    .prologue
    .line 95
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 97
    iget v0, p0, Lcom/android/common/effects/a/b;->EY:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 100
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 101
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    iget v0, p0, Lcom/android/common/effects/a/b;->Fb:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 105
    const/16 v4, 0x14

    move-object v5, p3

    .line 104
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 106
    iget v0, p0, Lcom/android/common/effects/a/b;->Fb:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 108
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    iget v0, p0, Lcom/android/common/effects/a/b;->Fc:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 110
    const/16 v4, 0x14

    move-object v5, p3

    .line 109
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 111
    iget v0, p0, Lcom/android/common/effects/a/b;->Fc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 113
    iget v0, p0, Lcom/android/common/effects/a/b;->Fi:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 114
    iget v0, p0, Lcom/android/common/effects/a/b;->Fj:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 115
    iget v0, p0, Lcom/android/common/effects/a/b;->Fk:I

    int-to-float v1, p6

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 116
    iget v0, p0, Lcom/android/common/effects/a/b;->Ff:I

    int-to-float v1, p7

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 117
    iget v0, p0, Lcom/android/common/effects/a/b;->Fh:I

    iget-object v1, p0, Lcom/android/common/effects/a/b;->EX:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 118
    iget v0, p0, Lcom/android/common/effects/a/b;->Fd:I

    iget-object v1, p0, Lcom/android/common/effects/a/b;->EX:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 119
    iget v0, p0, Lcom/android/common/effects/a/b;->Fe:I

    iget-object v1, p0, Lcom/android/common/effects/a/b;->EX:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 120
    iget v0, p0, Lcom/android/common/effects/a/b;->Fg:I

    iget v1, p0, Lcom/android/common/effects/a/b;->EW:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 122
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 94
    return-void
.end method

.method private GR()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    iget-boolean v0, p0, Lcom/android/common/effects/a/b;->EZ:Z

    if-eqz v0, :cond_7

    .line 74
    return-void

    .line 76
    :cond_7
    iput-boolean v2, p0, Lcom/android/common/effects/a/b;->EZ:Z

    .line 77
    iget-object v0, p0, Lcom/android/common/effects/a/b;->Fa:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/effects/a/b;->Fa:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/b;->EY:I

    .line 78
    iget v0, p0, Lcom/android/common/effects/a/b;->EY:I

    if-nez v0, :cond_24

    .line 79
    const-string/jumbo v0, "PragueEffect"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_24
    iget v0, p0, Lcom/android/common/effects/a/b;->EY:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/b;->Fb:I

    .line 82
    iget v0, p0, Lcom/android/common/effects/a/b;->EY:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/b;->Fc:I

    .line 83
    iget v0, p0, Lcom/android/common/effects/a/b;->EY:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/b;->Fi:I

    .line 84
    iget v0, p0, Lcom/android/common/effects/a/b;->EY:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/b;->Fj:I

    .line 85
    iget v0, p0, Lcom/android/common/effects/a/b;->EY:I

    const-string/jumbo v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/b;->Fk:I

    .line 86
    iget v0, p0, Lcom/android/common/effects/a/b;->EY:I

    const-string/jumbo v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/b;->Ff:I

    .line 87
    iget v0, p0, Lcom/android/common/effects/a/b;->EY:I

    const-string/jumbo v1, "L"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/b;->Fh:I

    .line 88
    iget v0, p0, Lcom/android/common/effects/a/b;->EY:I

    const-string/jumbo v1, "A"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/b;->Fd:I

    .line 89
    iget v0, p0, Lcom/android/common/effects/a/b;->EY:I

    const-string/jumbo v1, "B"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/b;->Fe:I

    .line 90
    iget v0, p0, Lcom/android/common/effects/a/b;->EY:I

    const-string/jumbo v1, "index"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/b;->Fg:I

    .line 72
    return-void
.end method

.method private GS(I)[I
    .registers 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/common/effects/a/b;->EV:Landroid/content/Context;

    const v1, 0x7f090039

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/common/effects/a/b;->EV:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 50
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
    invoke-direct {p0}, Lcom/android/common/effects/a/b;->GR()V

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

    invoke-direct/range {v0 .. v8}, Lcom/android/common/effects/a/b;->GQ([F[FLjava/nio/FloatBuffer;IIIII)V

    .line 62
    return-void
.end method

.method public GM()I
    .registers 2

    .prologue
    .line 139
    const v0, 0x8d65

    return v0
.end method

.method public GP()V
    .registers 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/common/effects/a/b;->GR()V

    .line 126
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/common/effects/a/b;->Fa:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 133
    iget-object v0, p0, Lcom/android/common/effects/a/b;->Fa:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 134
    iget v0, p0, Lcom/android/common/effects/a/b;->EY:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 131
    return-void
.end method

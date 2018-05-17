.class public Lcom/android/common/effects/a/i;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field private GA:I

.field private GB:I

.field private Gt:I

.field private Gu:[F

.field private Gv:Landroid/content/Context;

.field private Gw:I

.field private Gx:Z

.field private Gy:[I

.field private Gz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/android/common/effects/c;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/android/common/effects/a/i;->Gx:Z

    .line 22
    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/i;->Gy:[I

    .line 27
    const v0, 0x66ffffff

    iput v0, p0, Lcom/android/common/effects/a/i;->Gt:I

    .line 31
    iput-object p1, p0, Lcom/android/common/effects/a/i;->Gv:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/android/common/effects/a/i;->Hn()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/i;->Gy:[I

    .line 44
    iget v0, p0, Lcom/android/common/effects/a/i;->Gt:I

    invoke-direct {p0, v0}, Lcom/android/common/effects/a/i;->Hl(I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/i;->Gu:[F

    .line 30
    return-void
.end method

.method private Hk([F[FLjava/nio/FloatBuffer;IIII)V
    .registers 15

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 100
    iget v0, p0, Lcom/android/common/effects/a/i;->Gw:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 103
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 104
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 105
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 107
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    iget v0, p0, Lcom/android/common/effects/a/i;->Gz:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    .line 109
    const/16 v4, 0x14

    move-object v5, p3

    .line 108
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 110
    iget v0, p0, Lcom/android/common/effects/a/i;->Gz:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 112
    iget v0, p0, Lcom/android/common/effects/a/i;->GB:I

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 113
    iget v0, p0, Lcom/android/common/effects/a/i;->GA:I

    iget-object v1, p0, Lcom/android/common/effects/a/i;->Gu:[F

    invoke-static {v0, v6, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 115
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 97
    return-void
.end method

.method private Hl(I)[F
    .registers 8

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 56
    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 57
    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v5

    .line 58
    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 59
    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v5

    .line 60
    const/4 v5, 0x0

    aput v2, v0, v5

    .line 61
    const/4 v2, 0x1

    aput v3, v0, v2

    .line 62
    const/4 v2, 0x2

    aput v4, v0, v2

    .line 63
    const/4 v2, 0x3

    aput v1, v0, v2

    .line 64
    return-object v0
.end method

.method private Hm()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    iget-boolean v0, p0, Lcom/android/common/effects/a/i;->Gx:Z

    if-eqz v0, :cond_7

    .line 75
    return-void

    .line 77
    :cond_7
    iput-boolean v2, p0, Lcom/android/common/effects/a/i;->Gx:Z

    .line 78
    iget-object v0, p0, Lcom/android/common/effects/a/i;->Gy:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/effects/a/i;->Gy:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/i;->Gw:I

    .line 79
    iget v0, p0, Lcom/android/common/effects/a/i;->Gw:I

    if-nez v0, :cond_24

    .line 80
    const-string/jumbo v0, "RectFrameEffect"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_24
    iget v0, p0, Lcom/android/common/effects/a/i;->Gw:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/i;->Gz:I

    .line 83
    iget v0, p0, Lcom/android/common/effects/a/i;->Gw:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/i;->GB:I

    .line 84
    iget v0, p0, Lcom/android/common/effects/a/i;->Gw:I

    const-string/jumbo v1, "uColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/i;->GA:I

    .line 73
    return-void
.end method

.method private Hn()[I
    .registers 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/common/effects/a/i;->Gv:Landroid/content/Context;

    const v1, 0x7f090034

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/android/common/effects/a/i;->Gv:Landroid/content/Context;

    const v2, 0x7f090033

    invoke-static {v1, v2}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SE(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V
    .registers 11

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/common/effects/a/i;->Hm()V

    .line 92
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 93
    invoke-direct/range {p0 .. p7}, Lcom/android/common/effects/a/i;->Hk([F[FLjava/nio/FloatBuffer;IIII)V

    .line 90
    return-void
.end method

.method public GM()I
    .registers 2

    .prologue
    .line 131
    const/4 v0, -0x1

    return v0
.end method

.method public GP()V
    .registers 1

    .prologue
    .line 120
    return-void
.end method

.method public Ho(I)V
    .registers 3

    .prologue
    .line 48
    iget v0, p0, Lcom/android/common/effects/a/i;->Gt:I

    if-eq v0, p1, :cond_e

    .line 49
    iput p1, p0, Lcom/android/common/effects/a/i;->Gt:I

    .line 50
    iget v0, p0, Lcom/android/common/effects/a/i;->Gt:I

    invoke-direct {p0, v0}, Lcom/android/common/effects/a/i;->Hl(I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/i;->Gu:[F

    .line 47
    :cond_e
    return-void
.end method

.method public release()V
    .registers 1

    .prologue
    .line 125
    return-void
.end method

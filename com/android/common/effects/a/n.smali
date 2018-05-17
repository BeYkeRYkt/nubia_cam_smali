.class public Lcom/android/common/effects/a/n;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field private Hp:Landroid/content/Context;

.field private Hq:I

.field private Hr:I

.field private Hs:Z

.field private Ht:[I

.field private Hu:I

.field private Hv:I

.field private Hw:I

.field private Hx:I

.field private Hy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/android/common/effects/c;-><init>()V

    .line 19
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/n;->Ht:[I

    .line 26
    const/16 v0, 0xde1

    iput v0, p0, Lcom/android/common/effects/a/n;->Hu:I

    .line 27
    iput-boolean v1, p0, Lcom/android/common/effects/a/n;->Hs:Z

    .line 30
    iput p3, p0, Lcom/android/common/effects/a/n;->Hu:I

    .line 31
    iput-object p1, p0, Lcom/android/common/effects/a/n;->Hp:Landroid/content/Context;

    .line 32
    iput p2, p0, Lcom/android/common/effects/a/n;->Hq:I

    .line 33
    invoke-direct {p0}, Lcom/android/common/effects/a/n;->HC()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/a/n;->Ht:[I

    .line 29
    return-void
.end method

.method private HB()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    iget-boolean v0, p0, Lcom/android/common/effects/a/n;->Hs:Z

    if-eqz v0, :cond_7

    .line 93
    return-void

    .line 95
    :cond_7
    iput-boolean v2, p0, Lcom/android/common/effects/a/n;->Hs:Z

    .line 96
    iget-object v0, p0, Lcom/android/common/effects/a/n;->Ht:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/effects/a/n;->Ht:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/n;->Hr:I

    .line 97
    iget v0, p0, Lcom/android/common/effects/a/n;->Hr:I

    if-nez v0, :cond_24

    .line 98
    const-string/jumbo v0, "PrettySimpleEffect"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_24
    iget v0, p0, Lcom/android/common/effects/a/n;->Hr:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/n;->Hv:I

    .line 101
    iget v0, p0, Lcom/android/common/effects/a/n;->Hr:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/n;->Hw:I

    .line 102
    iget v0, p0, Lcom/android/common/effects/a/n;->Hr:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/n;->Hx:I

    .line 103
    iget v0, p0, Lcom/android/common/effects/a/n;->Hr:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/a/n;->Hy:I

    .line 91
    return-void
.end method

.method private HC()[I
    .registers 5

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/common/effects/a/n;->Hp:Landroid/content/Context;

    const v1, 0x7f090039

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/common/effects/a/n;->Hp:Landroid/content/Context;

    iget v2, p0, Lcom/android/common/effects/a/n;->Hq:I

    iget v3, p0, Lcom/android/common/effects/a/n;->Hu:I

    invoke-static {v1, v2, v3}, Lcom/android/common/gles/i;->SH(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SE(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V
    .registers 16

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/common/effects/a/n;->GM()I

    move-result v0

    invoke-virtual {p8}, Lcom/android/common/gles/c;->RG()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 47
    const-string/jumbo v0, "PrettySimpleEffect"

    const-string/jumbo v1, "texture target != effect target!!!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void

    .line 51
    :cond_14
    invoke-direct {p0}, Lcom/android/common/effects/a/n;->HB()V

    .line 53
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 54
    invoke-virtual {p8}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    invoke-virtual {p8}, Lcom/android/common/gles/c;->RQ()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 55
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 57
    iget v0, p0, Lcom/android/common/effects/a/n;->Hr:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 60
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 61
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    iget v0, p0, Lcom/android/common/effects/a/n;->Hv:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 65
    const/16 v4, 0x14

    move-object v5, p3

    .line 64
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 66
    iget v0, p0, Lcom/android/common/effects/a/n;->Hv:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 68
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 69
    iget v0, p0, Lcom/android/common/effects/a/n;->Hw:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 70
    const/16 v4, 0x14

    move-object v5, p3

    .line 69
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 71
    iget v0, p0, Lcom/android/common/effects/a/n;->Hw:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 73
    iget v0, p0, Lcom/android/common/effects/a/n;->Hx:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 74
    iget v0, p0, Lcom/android/common/effects/a/n;->Hy:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 76
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 45
    return-void
.end method

.method public GM()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/android/common/effects/a/n;->Hu:I

    return v0
.end method

.method public GP()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/common/effects/a/n;->HB()V

    .line 80
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/common/effects/a/n;->Ht:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 87
    iget-object v0, p0, Lcom/android/common/effects/a/n;->Ht:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 88
    iget v0, p0, Lcom/android/common/effects/a/n;->Hr:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 85
    return-void
.end method

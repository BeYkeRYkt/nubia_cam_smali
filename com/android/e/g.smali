.class public Lcom/android/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/b;


# instance fields
.field private aWM:I

.field aWN:Landroid/content/Context;

.field aWO:I

.field aWP:[F

.field aWQ:Lcom/android/common/gles/j;

.field private aWR:I

.field private aWS:Z

.field aWT:F

.field aWU:F

.field aWV:F

.field private aWW:[I

.field aWX:F

.field aWY:F

.field aWZ:F

.field aXa:F

.field private aXb:I

.field private aXc:I

.field private aXd:I

.field private aXe:I

.field private aXf:I

.field private aXg:I

.field private aXh:I

.field private aXi:I

.field private aXj:I

.field private aXk:I

.field private aXl:I

.field private aXm:I

.field private aXn:I

.field private aXo:I

.field private aXp:I

.field aXq:[F

.field aXr:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    const/high16 v2, 0x44340000    # 720.0f

    const/high16 v1, 0x44070000    # 540.0f

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/e/g;->aWP:[F

    .line 31
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/e/g;->aXq:[F

    .line 33
    iput-boolean v3, p0, Lcom/android/e/g;->aWS:Z

    .line 34
    filled-new-array {v3, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/e/g;->aWW:[I

    .line 55
    iput v1, p0, Lcom/android/e/g;->aWX:F

    iput v2, p0, Lcom/android/e/g;->aWZ:F

    .line 57
    iput v1, p0, Lcom/android/e/g;->aWY:F

    iput v2, p0, Lcom/android/e/g;->aXa:F

    .line 59
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/e/g;->aWV:F

    .line 61
    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/android/e/g;->aWT:F

    .line 63
    const v0, 0x43688000    # 232.5f

    iput v0, p0, Lcom/android/e/g;->aWU:F

    .line 65
    iput v4, p0, Lcom/android/e/g;->aWO:I

    .line 67
    iput v4, p0, Lcom/android/e/g;->aWM:I

    .line 70
    iput-object p1, p0, Lcom/android/e/g;->aWN:Landroid/content/Context;

    .line 71
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_64

    .line 78
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    .line 77
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 79
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/e/g;->aXr:Ljava/nio/FloatBuffer;

    .line 80
    iget-object v1, p0, Lcom/android/e/g;->aXr:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 82
    iget-object v0, p0, Lcom/android/e/g;->aWP:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 69
    return-void

    .line 71
    nop

    :array_64
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private boQ()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    iget-boolean v0, p0, Lcom/android/e/g;->aWS:Z

    if-eqz v0, :cond_7

    .line 224
    return-void

    .line 226
    :cond_7
    iput-boolean v4, p0, Lcom/android/e/g;->aWS:Z

    .line 228
    iget-object v0, p0, Lcom/android/e/g;->aWN:Landroid/content/Context;

    const v1, 0x7f09001b

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/android/e/g;->aWN:Landroid/content/Context;

    const v2, 0x7f09001a

    invoke-static {v1, v2}, Lcom/android/common/gles/i;->SD(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SE(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/e/g;->aWW:[I

    .line 230
    iget-object v0, p0, Lcom/android/e/g;->aWW:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/android/e/g;->aWW:[I

    aget v1, v1, v4

    invoke-static {v0, v1}, Lcom/android/common/gles/i;->SF(II)I

    move-result v0

    iput v0, p0, Lcom/android/e/g;->aWR:I

    .line 231
    iget v0, p0, Lcom/android/e/g;->aWR:I

    if-nez v0, :cond_3c

    .line 232
    const-string/jumbo v0, "FangDaRenderer"

    const-string/jumbo v1, "mProgram = 0"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_3c
    iget v0, p0, Lcom/android/e/g;->aWR:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/e/g;->aXb:I

    .line 235
    iget v0, p0, Lcom/android/e/g;->aWR:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/e/g;->aXc:I

    .line 236
    iget v0, p0, Lcom/android/e/g;->aWR:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/e/g;->aXg:I

    .line 237
    iget v0, p0, Lcom/android/e/g;->aWR:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/e/g;->aXj:I

    .line 238
    iget v0, p0, Lcom/android/e/g;->aWR:I

    const-string/jumbo v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/e/g;->aXk:I

    .line 240
    iget v0, p0, Lcom/android/e/g;->aWR:I

    const-string/jumbo v1, "uX"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/e/g;->aXm:I

    .line 241
    iget v0, p0, Lcom/android/e/g;->aWR:I

    const-string/jumbo v1, "uY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/e/g;->aXo:I

    .line 242
    iget v0, p0, Lcom/android/e/g;->aWR:I

    const-string/jumbo v1, "uWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/e/g;->aXl:I

    .line 243
    iget v0, p0, Lcom/android/e/g;->aWR:I

    const-string/jumbo v1, "uHeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/e/g;->aXf:I

    .line 244
    iget v0, p0, Lcom/android/e/g;->aWR:I

    const-string/jumbo v1, "uRadius"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/e/g;->aXh:I

    .line 245
    iget v0, p0, Lcom/android/e/g;->aWR:I

    const-string/jumbo v1, "uRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/e/g;->aXi:I

    .line 246
    iget v0, p0, Lcom/android/e/g;->aWR:I

    const-string/jumbo v1, "uFangZhi"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/e/g;->aXe:I

    .line 247
    iget v0, p0, Lcom/android/e/g;->aWR:I

    const-string/jumbo v1, "uXOfShow"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/e/g;->aXn:I

    .line 248
    iget v0, p0, Lcom/android/e/g;->aWR:I

    const-string/jumbo v1, "uYOfShow"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/e/g;->aXp:I

    .line 249
    iget v0, p0, Lcom/android/e/g;->aWR:I

    const-string/jumbo v1, "v4Color"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/e/g;->aXd:I

    .line 222
    return-void
.end method

.method private boR(Lcom/android/common/gles/e;)V
    .registers 9

    .prologue
    const/16 v6, 0x2601

    const/4 v5, 0x0

    const/16 v4, 0xde1

    .line 207
    iget-object v0, p0, Lcom/android/e/g;->aWQ:Lcom/android/common/gles/j;

    if-eqz v0, :cond_a

    .line 208
    return-void

    .line 210
    :cond_a
    iget-object v0, p0, Lcom/android/e/g;->aWN:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    new-instance v1, Lcom/android/common/gles/j;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/common/gles/j;-><init>(II)V

    iput-object v1, p0, Lcom/android/e/g;->aWQ:Lcom/android/common/gles/j;

    .line 212
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/e/g;->aWU:F

    .line 213
    iget-object v1, p0, Lcom/android/e/g;->aWQ:Lcom/android/common/gles/j;

    invoke-virtual {v1, p1}, Lcom/android/common/gles/j;->SK(Lcom/android/common/gles/e;)V

    .line 214
    iget-object v1, p0, Lcom/android/e/g;->aWQ:Lcom/android/common/gles/j;

    invoke-virtual {v1}, Lcom/android/common/gles/j;->RQ()I

    move-result v1

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 215
    const/16 v1, 0x2801

    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 216
    const/16 v1, 0x2800

    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 217
    invoke-static {v4, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 218
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 206
    return-void
.end method


# virtual methods
.method public S()I
    .registers 2

    .prologue
    .line 149
    const/16 v0, 0x3e8

    return v0
.end method

.method public T(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 13

    .prologue
    const/4 v1, 0x3

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/e/g;->boQ()V

    .line 90
    invoke-virtual {p1}, Lcom/android/common/a/a;->l()Landroid/graphics/Rect;

    move-result-object v6

    .line 91
    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v0, v2, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 93
    iget v0, p0, Lcom/android/e/g;->aWR:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 96
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 97
    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 99
    iget-object v0, p0, Lcom/android/e/g;->aXr:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 100
    iget v0, p0, Lcom/android/e/g;->aXb:I

    .line 101
    iget-object v5, p0, Lcom/android/e/g;->aXr:Ljava/nio/FloatBuffer;

    .line 100
    const/16 v2, 0x1406

    .line 101
    const/16 v4, 0x14

    .line 100
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 102
    iget v0, p0, Lcom/android/e/g;->aXb:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 104
    iget-object v0, p0, Lcom/android/e/g;->aXr:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    iget v0, p0, Lcom/android/e/g;->aXc:I

    .line 106
    iget-object v5, p0, Lcom/android/e/g;->aXr:Ljava/nio/FloatBuffer;

    .line 105
    const/4 v1, 0x2

    const/16 v2, 0x1406

    .line 106
    const/16 v4, 0x14

    .line 105
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 107
    iget v0, p0, Lcom/android/e/g;->aXc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 109
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 110
    invoke-virtual {p1}, Lcom/android/common/a/a;->o()I

    move-result v0

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 111
    iget v0, p0, Lcom/android/e/g;->aXk:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 113
    iget v0, p0, Lcom/android/e/g;->aXg:I

    iget-object v1, p0, Lcom/android/e/g;->aWP:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 114
    invoke-virtual {p1}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/g;->aXq:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 115
    iget v0, p0, Lcom/android/e/g;->aXj:I

    iget-object v1, p0, Lcom/android/e/g;->aXq:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 116
    iget v0, p0, Lcom/android/e/g;->aXm:I

    iget v1, p0, Lcom/android/e/g;->aWX:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 117
    iget v0, p0, Lcom/android/e/g;->aXo:I

    iget v1, p0, Lcom/android/e/g;->aWZ:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 118
    iget v0, p0, Lcom/android/e/g;->aXl:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 119
    iget v0, p0, Lcom/android/e/g;->aXf:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 120
    iget v0, p0, Lcom/android/e/g;->aXh:I

    iget v1, p0, Lcom/android/e/g;->aWT:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 121
    iget v0, p0, Lcom/android/e/g;->aXi:I

    iget v1, p0, Lcom/android/e/g;->aWV:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 122
    iget v0, p0, Lcom/android/e/g;->aXe:I

    iget v1, p0, Lcom/android/e/g;->aWO:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 123
    iget v0, p0, Lcom/android/e/g;->aXn:I

    iget v1, p0, Lcom/android/e/g;->aWY:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 124
    iget v0, p0, Lcom/android/e/g;->aXp:I

    iget v1, p0, Lcom/android/e/g;->aXa:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 125
    iget v0, p0, Lcom/android/e/g;->aWM:I

    if-ne v0, v7, :cond_109

    .line 126
    iget v0, p0, Lcom/android/e/g;->aXd:I

    sget-object v1, Lcom/android/common/g/a;->Wb:[F

    invoke-static {v0, v7, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 131
    :goto_d5
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 133
    invoke-direct {p0, p2}, Lcom/android/e/g;->boR(Lcom/android/common/gles/e;)V

    .line 134
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sb()V

    .line 135
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p2, v8, v0, v8}, Lcom/android/common/gles/e;->Sh(FFF)V

    .line 136
    iget-object v1, p0, Lcom/android/e/g;->aWQ:Lcom/android/common/gles/j;

    iget-object v2, p0, Lcom/android/e/g;->aWP:[F

    iget v0, p0, Lcom/android/e/g;->aWY:F

    iget v3, p0, Lcom/android/e/g;->aWU:F

    sub-float/2addr v0, v3

    float-to-int v3, v0

    iget v0, p0, Lcom/android/e/g;->aXa:F

    iget v4, p0, Lcom/android/e/g;->aWU:F

    sub-float/2addr v0, v4

    iget v4, v6, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v4, v0

    iget v0, p0, Lcom/android/e/g;->aWU:F

    mul-float/2addr v0, v9

    float-to-int v5, v0

    iget v0, p0, Lcom/android/e/g;->aWU:F

    mul-float/2addr v0, v9

    float-to-int v6, v0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/common/gles/e;->Sd(Lcom/android/common/gles/c;[FIIII)V

    .line 137
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sf()V

    .line 138
    return v7

    .line 128
    :cond_109
    iget v0, p0, Lcom/android/e/g;->aXd:I

    sget-object v1, Lcom/android/common/g/a;->Wc:[F

    invoke-static {v0, v7, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    goto :goto_d5
.end method

.method public U(Lcom/android/common/a/a;)V
    .registers 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/e/g;->release()V

    .line 153
    return-void
.end method

.method public V(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 4

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public boM(FF)V
    .registers 3

    .prologue
    .line 180
    iput p1, p0, Lcom/android/e/g;->aWX:F

    .line 181
    iput p2, p0, Lcom/android/e/g;->aWZ:F

    .line 179
    return-void
.end method

.method public boN(I)V
    .registers 2

    .prologue
    .line 171
    iput p1, p0, Lcom/android/e/g;->aWM:I

    .line 170
    return-void
.end method

.method public boO(F)V
    .registers 2

    .prologue
    .line 199
    iput p1, p0, Lcom/android/e/g;->aWT:F

    .line 198
    return-void
.end method

.method public boP(FF)V
    .registers 3

    .prologue
    .line 190
    iput p1, p0, Lcom/android/e/g;->aWY:F

    .line 191
    iput p2, p0, Lcom/android/e/g;->aXa:F

    .line 189
    return-void
.end method

.method public release()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 158
    iget-boolean v0, p0, Lcom/android/e/g;->aWS:Z

    if-eqz v0, :cond_1c

    .line 159
    iget-object v0, p0, Lcom/android/e/g;->aWW:[I

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 160
    iget-object v0, p0, Lcom/android/e/g;->aWW:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 161
    iget v0, p0, Lcom/android/e/g;->aWR:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 162
    iput-boolean v2, p0, Lcom/android/e/g;->aWS:Z

    .line 164
    :cond_1c
    iget-object v0, p0, Lcom/android/e/g;->aWQ:Lcom/android/common/gles/j;

    if-eqz v0, :cond_27

    .line 165
    iget-object v0, p0, Lcom/android/e/g;->aWQ:Lcom/android/common/gles/j;

    invoke-virtual {v0}, Lcom/android/common/gles/j;->SM()V

    .line 166
    iput-object v3, p0, Lcom/android/e/g;->aWQ:Lcom/android/common/gles/j;

    .line 157
    :cond_27
    return-void
.end method

.class public Lcom/android/common/gles/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field SA:[Lcom/android/common/gles/f;

.field private SB:I

.field private SC:Ljava/util/HashMap;

.field private SD:[F

.field private SE:Ljava/nio/FloatBuffer;

.field final SF:[F

.field private SG:[F

.field private SH:Lcom/android/common/k;

.field private SI:[F

.field private SJ:Ljava/util/HashMap;

.field private final SK:[F

.field private final SL:Landroid/graphics/RectF;

.field private final SM:Landroid/graphics/RectF;

.field SN:[Lcom/android/common/gles/f;

.field private SO:I

.field private SP:Ljava/nio/FloatBuffer;

.field final SQ:[F

.field private final SR:Lcom/android/common/k;

.field private SS:[F

.field private Sp:[F

.field private Sq:[F

.field private Sr:[F

.field private Ss:I

.field private St:I

.field private Su:I

.field Sv:[Lcom/android/common/gles/f;

.field private Sw:I

.field private Sx:[I

.field private Sy:Lcom/android/common/gles/d;

.field private Sz:[F


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, -0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/android/common/gles/e;->SB:I

    .line 32
    iput v0, p0, Lcom/android/common/gles/e;->SO:I

    .line 33
    iput v0, p0, Lcom/android/common/gles/e;->Sw:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/gles/e;->Sx:[I

    .line 46
    new-instance v0, Lcom/android/common/gles/d;

    invoke-direct {v0}, Lcom/android/common/gles/d;-><init>()V

    iput-object v0, p0, Lcom/android/common/gles/e;->Sy:Lcom/android/common/gles/d;

    .line 47
    new-instance v0, Lcom/android/common/k;

    invoke-direct {v0}, Lcom/android/common/k;-><init>()V

    iput-object v0, p0, Lcom/android/common/gles/e;->SR:Lcom/android/common/k;

    .line 50
    new-instance v0, Lcom/android/common/k;

    invoke-direct {v0}, Lcom/android/common/k;-><init>()V

    iput-object v0, p0, Lcom/android/common/gles/e;->SH:Lcom/android/common/k;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/common/gles/e;->SL:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/common/gles/e;->SM:Landroid/graphics/RectF;

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/common/gles/e;->SD:[F

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/common/gles/e;->SS:[F

    .line 60
    const/16 v0, 0x80

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/common/gles/e;->Sz:[F

    .line 61
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/common/gles/e;->SI:[F

    .line 62
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/common/gles/e;->SK:[F

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/common/gles/e;->SC:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/android/common/gles/e;->SJ:Ljava/util/HashMap;

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/common/gles/e;->Sr:[F

    .line 67
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/common/gles/e;->SG:[F

    .line 69
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_192

    iput-object v0, p0, Lcom/android/common/gles/e;->SQ:[F

    .line 76
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_1be

    iput-object v0, p0, Lcom/android/common/gles/e;->SF:[F

    .line 167
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/gles/f;

    .line 168
    new-instance v1, Lcom/android/common/gles/h;

    const-string/jumbo v2, "aPosition"

    invoke-direct {v1, v2}, Lcom/android/common/gles/h;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    .line 169
    new-instance v1, Lcom/android/common/gles/g;

    const-string/jumbo v2, "uMVPMatrix"

    invoke-direct {v1, v2}, Lcom/android/common/gles/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 170
    new-instance v1, Lcom/android/common/gles/g;

    const-string/jumbo v2, "uColor"

    invoke-direct {v1, v2}, Lcom/android/common/gles/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 167
    iput-object v0, p0, Lcom/android/common/gles/e;->Sv:[Lcom/android/common/gles/f;

    .line 173
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/common/gles/f;

    .line 174
    new-instance v1, Lcom/android/common/gles/h;

    const-string/jumbo v2, "aPosition"

    invoke-direct {v1, v2}, Lcom/android/common/gles/h;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    .line 175
    new-instance v1, Lcom/android/common/gles/g;

    const-string/jumbo v2, "uMVPMatrix"

    invoke-direct {v1, v2}, Lcom/android/common/gles/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 176
    new-instance v1, Lcom/android/common/gles/h;

    const-string/jumbo v2, "aTextureCoord"

    invoke-direct {v1, v2}, Lcom/android/common/gles/h;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 177
    new-instance v1, Lcom/android/common/gles/g;

    const-string/jumbo v2, "uSTMatrix"

    invoke-direct {v1, v2}, Lcom/android/common/gles/g;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 178
    new-instance v1, Lcom/android/common/gles/g;

    const-string/jumbo v2, "uAlpha"

    invoke-direct {v1, v2}, Lcom/android/common/gles/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 173
    iput-object v0, p0, Lcom/android/common/gles/e;->SN:[Lcom/android/common/gles/f;

    .line 181
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/common/gles/f;

    .line 182
    new-instance v1, Lcom/android/common/gles/h;

    const-string/jumbo v2, "aPosition"

    invoke-direct {v1, v2}, Lcom/android/common/gles/h;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    .line 183
    new-instance v1, Lcom/android/common/gles/g;

    const-string/jumbo v2, "uMVPMatrix"

    invoke-direct {v1, v2}, Lcom/android/common/gles/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 184
    new-instance v1, Lcom/android/common/gles/h;

    const-string/jumbo v2, "aTextureCoord"

    invoke-direct {v1, v2}, Lcom/android/common/gles/h;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 185
    new-instance v1, Lcom/android/common/gles/g;

    const-string/jumbo v2, "uSTMatrix"

    invoke-direct {v1, v2}, Lcom/android/common/gles/g;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 186
    new-instance v1, Lcom/android/common/gles/g;

    const-string/jumbo v2, "uAlpha"

    invoke-direct {v1, v2}, Lcom/android/common/gles/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 181
    iput-object v0, p0, Lcom/android/common/gles/e;->SA:[Lcom/android/common/gles/f;

    .line 188
    iput v3, p0, Lcom/android/common/gles/e;->Ss:I

    .line 189
    iput v3, p0, Lcom/android/common/gles/e;->St:I

    .line 190
    iput v3, p0, Lcom/android/common/gles/e;->Su:I

    .line 470
    new-array v0, v4, [F

    fill-array-data v0, :array_1da

    iput-object v0, p0, Lcom/android/common/gles/e;->Sq:[F

    .line 526
    new-array v0, v4, [F

    fill-array-data v0, :array_1e6

    iput-object v0, p0, Lcom/android/common/gles/e;->Sp:[F

    .line 194
    iget-object v0, p0, Lcom/android/common/gles/e;->Sr:[F

    iget v1, p0, Lcom/android/common/gles/e;->Ss:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 196
    iget-object v0, p0, Lcom/android/common/gles/e;->SQ:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    .line 195
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 197
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/gles/e;->SP:Ljava/nio/FloatBuffer;

    .line 198
    iget-object v0, p0, Lcom/android/common/gles/e;->SP:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/common/gles/e;->SQ:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 200
    iget-object v0, p0, Lcom/android/common/gles/e;->SF:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    .line 199
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 201
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/gles/e;->SE:Ljava/nio/FloatBuffer;

    .line 202
    iget-object v0, p0, Lcom/android/common/gles/e;->SE:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/common/gles/e;->SF:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 203
    iget-object v0, p0, Lcom/android/common/gles/e;->Sz:[F

    iget v1, p0, Lcom/android/common/gles/e;->St:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 204
    iget-object v0, p0, Lcom/android/common/gles/e;->SD:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 205
    iget-object v0, p0, Lcom/android/common/gles/e;->SI:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 206
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 207
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 193
    return-void

    .line 69
    nop

    :array_192
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

    .line 76
    :array_1be
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 470
    :array_1da
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 526
    :array_1e6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private SB([Lcom/android/common/gles/f;IIII[F)V
    .registers 18

    .prologue
    .line 332
    invoke-static/range {p2 .. p5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 333
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 335
    iget-object v0, p0, Lcom/android/common/gles/e;->SD:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 336
    iget-object v0, p0, Lcom/android/common/gles/e;->SS:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 337
    invoke-direct {p0}, Lcom/android/common/gles/e;->Sv()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 338
    iget-object v0, p0, Lcom/android/common/gles/e;->SD:[F

    .line 339
    const/4 v1, 0x0

    aget v2, p6, v1

    const/4 v1, 0x1

    aget v3, p6, v1

    .line 340
    const/4 v1, 0x2

    aget v4, p6, v1

    const/4 v1, 0x3

    aget v5, p6, v1

    .line 338
    const/4 v1, 0x0

    .line 340
    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40c00000    # 6.0f

    .line 338
    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 350
    :goto_2e
    iget-object v0, p0, Lcom/android/common/gles/e;->SS:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 351
    iget-object v0, p0, Lcom/android/common/gles/e;->Sz:[F

    iget v1, p0, Lcom/android/common/gles/e;->St:I

    iget-object v2, p0, Lcom/android/common/gles/e;->SS:[F

    iget-object v4, p0, Lcom/android/common/gles/e;->Sz:[F

    iget v5, p0, Lcom/android/common/gles/e;->St:I

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 352
    iget-object v0, p0, Lcom/android/common/gles/e;->Sz:[F

    iget v1, p0, Lcom/android/common/gles/e;->St:I

    iget-object v2, p0, Lcom/android/common/gles/e;->SD:[F

    iget-object v4, p0, Lcom/android/common/gles/e;->Sz:[F

    iget v5, p0, Lcom/android/common/gles/e;->St:I

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 354
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iget v0, v0, Lcom/android/common/gles/f;->ST:I

    iget-object v1, p0, Lcom/android/common/gles/e;->Sz:[F

    iget v2, p0, Lcom/android/common/gles/e;->St:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 355
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 331
    return-void

    .line 346
    :cond_6d
    iget-object v0, p0, Lcom/android/common/gles/e;->SD:[F

    .line 347
    const/4 v1, 0x0

    aget v2, p6, v1

    const/4 v1, 0x1

    aget v3, p6, v1

    .line 348
    const/4 v1, 0x2

    aget v4, p6, v1

    const/4 v1, 0x3

    aget v5, p6, v1

    .line 346
    const/4 v1, 0x0

    .line 348
    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40c00000    # 6.0f

    .line 346
    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    goto :goto_2e
.end method

.method public static Si()V
    .registers 6

    .prologue
    .line 541
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    .line 542
    if-eqz v1, :cond_36

    .line 543
    const-string/jumbo v0, ""

    .line 544
    packed-switch v1, :pswitch_data_4c

    .line 561
    :goto_c
    :pswitch_c
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 562
    const-string/jumbo v3, "GLCanvas"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GL error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 540
    :cond_36
    return-void

    .line 546
    :pswitch_37
    const-string/jumbo v0, "GL_INVALID_ENUM"

    goto :goto_c

    .line 549
    :pswitch_3b
    const-string/jumbo v0, "GL_INVALID_VALUE"

    goto :goto_c

    .line 552
    :pswitch_3f
    const-string/jumbo v0, "GL_INVALID_OPERATION"

    goto :goto_c

    .line 555
    :pswitch_43
    const-string/jumbo v0, "GL_INVALID_FRAMEBUFFER_OPERATION"

    goto :goto_c

    .line 558
    :pswitch_47
    const-string/jumbo v0, "GL_OUT_OF_MEMORY"

    goto :goto_c

    .line 544
    nop

    :pswitch_data_4c
    .packed-switch 0x500
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
        :pswitch_c
        :pswitch_c
        :pswitch_47
        :pswitch_43
    .end packed-switch
.end method

.method private Sj(II[Lcom/android/common/gles/f;)I
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 220
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 221
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 222
    if-nez v0, :cond_29

    .line 223
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot create GL program: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_29
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 226
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 227
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 228
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 229
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 230
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 231
    new-array v2, v4, [I

    .line 232
    const v3, 0x8b82

    invoke-static {v0, v3, v2, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 233
    aget v2, v2, v1

    if-eq v2, v4, :cond_5e

    .line 234
    const-string/jumbo v2, "GLCanvas"

    const-string/jumbo v3, "Could not link program: "

    invoke-static {v2, v3}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v2, "GLCanvas"

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v0, v1

    .line 239
    :cond_5e
    :goto_5e
    array-length v2, p3

    if-ge v1, v2, :cond_69

    .line 240
    aget-object v2, p3, v1

    invoke-virtual {v2, v0}, Lcom/android/common/gles/f;->SC(I)V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 242
    :cond_69
    return v0
.end method

.method private Sk()V
    .registers 5

    .prologue
    .line 567
    const v0, 0x8d40

    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    .line 568
    const v0, 0x8cd5

    if-eq v1, v0, :cond_44

    .line 569
    const-string/jumbo v0, ""

    .line 570
    packed-switch v1, :pswitch_data_46

    .line 584
    :goto_12
    :pswitch_12
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 572
    :pswitch_34
    const-string/jumbo v0, "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT"

    goto :goto_12

    .line 575
    :pswitch_38
    const-string/jumbo v0, "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_12

    .line 578
    :pswitch_3c
    const-string/jumbo v0, "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"

    goto :goto_12

    .line 581
    :pswitch_40
    const-string/jumbo v0, "GL_FRAMEBUFFER_UNSUPPORTED"

    goto :goto_12

    .line 566
    :cond_44
    return-void

    .line 570
    nop

    :pswitch_data_46
    .packed-switch 0x8cd6
        :pswitch_34
        :pswitch_3c
        :pswitch_12
        :pswitch_38
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_40
    .end packed-switch
.end method

.method private Sn(Lcom/android/common/gles/c;[FLandroid/graphics/RectF;)V
    .registers 13

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 359
    invoke-direct {p0, p1}, Lcom/android/common/gles/e;->Sx(Lcom/android/common/gles/c;)[Lcom/android/common/gles/f;

    move-result-object v1

    .line 360
    iget v0, p3, Landroid/graphics/RectF;->left:F

    float-to-int v2, v0

    iget v0, p3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v0

    .line 361
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v5, v0

    invoke-virtual {p1}, Lcom/android/common/gles/c;->RS()[F

    move-result-object v6

    move-object v0, p0

    .line 360
    invoke-direct/range {v0 .. v6}, Lcom/android/common/gles/e;->SB([Lcom/android/common/gles/f;IIII[F)V

    .line 362
    aget-object v0, v1, v7

    iget v0, v0, Lcom/android/common/gles/f;->ST:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 363
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 364
    aget-object v0, v1, v8

    iget v0, v0, Lcom/android/common/gles/f;->ST:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 365
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 366
    const/4 v0, 0x3

    aget-object v0, v1, v0

    iget v0, v0, Lcom/android/common/gles/f;->ST:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v7, p2, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 367
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 369
    const/4 v0, 0x5

    const/4 v2, 0x4

    invoke-static {v0, v7, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 370
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 371
    aget-object v0, v1, v7

    iget v0, v0, Lcom/android/common/gles/f;->ST:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 372
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 373
    aget-object v0, v1, v8

    iget v0, v0, Lcom/android/common/gles/f;->ST:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 374
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 358
    return-void
.end method

.method private So(Lcom/android/common/gles/c;[FLandroid/graphics/RectF;Ljava/lang/String;)V
    .registers 14

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 378
    invoke-direct {p0, p1, p4}, Lcom/android/common/gles/e;->Sw(Lcom/android/common/gles/c;Ljava/lang/String;)[Lcom/android/common/gles/f;

    move-result-object v1

    .line 380
    iget v0, p3, Landroid/graphics/RectF;->left:F

    float-to-int v2, v0

    iget v0, p3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v0

    .line 381
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v5, v0

    invoke-virtual {p1}, Lcom/android/common/gles/c;->RS()[F

    move-result-object v6

    move-object v0, p0

    .line 380
    invoke-direct/range {v0 .. v6}, Lcom/android/common/gles/e;->SB([Lcom/android/common/gles/f;IIII[F)V

    .line 382
    aget-object v0, v1, v7

    iget v0, v0, Lcom/android/common/gles/f;->ST:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 383
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 384
    aget-object v0, v1, v8

    iget v0, v0, Lcom/android/common/gles/f;->ST:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 385
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 386
    const/4 v0, 0x3

    aget-object v0, v1, v0

    iget v0, v0, Lcom/android/common/gles/f;->ST:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v7, p2, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 387
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 389
    const/4 v0, 0x5

    const/4 v2, 0x4

    invoke-static {v0, v7, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 390
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 391
    aget-object v0, v1, v7

    iget v0, v0, Lcom/android/common/gles/f;->ST:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 392
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 393
    aget-object v0, v1, v8

    iget v0, v0, Lcom/android/common/gles/f;->ST:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 394
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 377
    return-void
.end method

.method private Sp(Z)V
    .registers 3

    .prologue
    const/16 v0, 0xbe2

    .line 681
    if-eqz p1, :cond_b

    .line 682
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 683
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 680
    :goto_a
    return-void

    .line 685
    :cond_b
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 686
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    goto :goto_a
.end method

.method private St()V
    .registers 7

    .prologue
    const v2, 0x8b31

    const v5, 0x8b30

    const/4 v1, -0x1

    .line 711
    iget v0, p0, Lcom/android/common/gles/e;->SO:I

    if-ne v0, v1, :cond_4e

    iget v0, p0, Lcom/android/common/gles/e;->SB:I

    if-ne v0, v1, :cond_4e

    iget v0, p0, Lcom/android/common/gles/e;->Sw:I

    if-ne v0, v1, :cond_4e

    .line 712
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n}\n"

    invoke-static {v2, v0}, Lcom/android/common/gles/e;->Su(ILjava/lang/String;)I

    move-result v0

    .line 713
    const-string/jumbo v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).st;\n}\n"

    invoke-static {v2, v1}, Lcom/android/common/gles/e;->Su(ILjava/lang/String;)I

    move-result v1

    .line 714
    const-string/jumbo v2, "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n"

    invoke-static {v5, v2}, Lcom/android/common/gles/e;->Su(ILjava/lang/String;)I

    move-result v2

    .line 716
    const-string/jumbo v3, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    .line 715
    invoke-static {v5, v3}, Lcom/android/common/gles/e;->Su(ILjava/lang/String;)I

    move-result v3

    .line 717
    const-string/jumbo v4, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    invoke-static {v5, v4}, Lcom/android/common/gles/e;->Su(ILjava/lang/String;)I

    move-result v4

    .line 719
    iget-object v5, p0, Lcom/android/common/gles/e;->SN:[Lcom/android/common/gles/f;

    .line 718
    invoke-direct {p0, v1, v4, v5}, Lcom/android/common/gles/e;->Sj(II[Lcom/android/common/gles/f;)I

    move-result v4

    iput v4, p0, Lcom/android/common/gles/e;->SO:I

    .line 721
    iget-object v4, p0, Lcom/android/common/gles/e;->SA:[Lcom/android/common/gles/f;

    .line 720
    invoke-direct {p0, v1, v3, v4}, Lcom/android/common/gles/e;->Sj(II[Lcom/android/common/gles/f;)I

    move-result v1

    iput v1, p0, Lcom/android/common/gles/e;->SB:I

    .line 722
    iget-object v1, p0, Lcom/android/common/gles/e;->Sv:[Lcom/android/common/gles/f;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/common/gles/e;->Sj(II[Lcom/android/common/gles/f;)I

    move-result v0

    iput v0, p0, Lcom/android/common/gles/e;->Sw:I

    .line 710
    :cond_4e
    return-void
.end method

.method private static Su(ILjava/lang/String;)I
    .registers 3

    .prologue
    .line 248
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 251
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 253
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 254
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 256
    return v0
.end method

.method private Sv()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/high16 v4, 0x43340000    # 180.0f

    const v3, 0x3a83126f    # 0.001f

    .line 701
    iget-object v1, p0, Lcom/android/common/gles/e;->SG:[F

    iget v2, p0, Lcom/android/common/gles/e;->Su:I

    aget v1, v1, v2

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_23

    .line 702
    iget-object v1, p0, Lcom/android/common/gles/e;->SG:[F

    iget v2, p0, Lcom/android/common/gles/e;->Su:I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_24

    .line 701
    :cond_23
    :goto_23
    return v0

    .line 703
    :cond_24
    iget-object v1, p0, Lcom/android/common/gles/e;->SG:[F

    iget v2, p0, Lcom/android/common/gles/e;->Su:I

    aget v1, v1, v2

    add-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_23

    const/4 v0, 0x0

    goto :goto_23
.end method

.method private Sw(Lcom/android/common/gles/c;Ljava/lang/String;)[Lcom/android/common/gles/f;
    .registers 8

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/common/gles/e;->SC:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 278
    iget-object v0, p0, Lcom/android/common/gles/e;->SJ:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8b

    .line 279
    :cond_10
    iget-object v0, p0, Lcom/android/common/gles/e;->SC:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 280
    iget-object v0, p0, Lcom/android/common/gles/e;->SC:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_1d
    iget-object v0, p0, Lcom/android/common/gles/e;->SJ:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 282
    iget-object v0, p0, Lcom/android/common/gles/e;->SJ:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_2a
    const/4 v0, 0x5

    new-array v1, v0, [Lcom/android/common/gles/f;

    .line 284
    new-instance v0, Lcom/android/common/gles/h;

    const-string/jumbo v2, "aPosition"

    invoke-direct {v0, v2}, Lcom/android/common/gles/h;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 285
    new-instance v0, Lcom/android/common/gles/g;

    const-string/jumbo v2, "uMVPMatrix"

    invoke-direct {v0, v2}, Lcom/android/common/gles/g;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 286
    new-instance v0, Lcom/android/common/gles/h;

    const-string/jumbo v2, "aTextureCoord"

    invoke-direct {v0, v2}, Lcom/android/common/gles/h;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 287
    new-instance v0, Lcom/android/common/gles/g;

    const-string/jumbo v2, "uSTMatrix"

    invoke-direct {v0, v2}, Lcom/android/common/gles/g;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 288
    new-instance v0, Lcom/android/common/gles/g;

    const-string/jumbo v2, "uAlpha"

    invoke-direct {v0, v2}, Lcom/android/common/gles/g;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 290
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).st;\n}\n"

    const v2, 0x8b31

    invoke-static {v2, v0}, Lcom/android/common/gles/e;->Su(ILjava/lang/String;)I

    move-result v0

    .line 291
    const v2, 0x8b30

    invoke-static {v2, p2}, Lcom/android/common/gles/e;->Su(ILjava/lang/String;)I

    move-result v2

    .line 292
    invoke-direct {p0, v0, v2, v1}, Lcom/android/common/gles/e;->Sj(II[Lcom/android/common/gles/f;)I

    move-result v0

    .line 294
    iget-object v2, p0, Lcom/android/common/gles/e;->SC:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v2, p0, Lcom/android/common/gles/e;->SJ:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :goto_87
    invoke-direct {p0, p1, v0, v1}, Lcom/android/common/gles/e;->Sy(Lcom/android/common/gles/c;I[Lcom/android/common/gles/f;)V

    .line 303
    return-object v1

    .line 298
    :cond_8b
    iget-object v0, p0, Lcom/android/common/gles/e;->SC:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 299
    iget-object v0, p0, Lcom/android/common/gles/e;->SJ:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/common/gles/f;

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_87
.end method

.method private Sx(Lcom/android/common/gles/c;)[Lcom/android/common/gles/f;
    .registers 4

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/android/common/gles/e;->St()V

    .line 263
    invoke-virtual {p1}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    const/16 v1, 0xde1

    if-ne v0, v1, :cond_13

    .line 264
    iget-object v1, p0, Lcom/android/common/gles/e;->SN:[Lcom/android/common/gles/f;

    .line 265
    iget v0, p0, Lcom/android/common/gles/e;->SO:I

    .line 270
    :goto_f
    invoke-direct {p0, p1, v0, v1}, Lcom/android/common/gles/e;->Sy(Lcom/android/common/gles/c;I[Lcom/android/common/gles/f;)V

    .line 271
    return-object v1

    .line 267
    :cond_13
    iget-object v1, p0, Lcom/android/common/gles/e;->SA:[Lcom/android/common/gles/f;

    .line 268
    iget v0, p0, Lcom/android/common/gles/e;->SB:I

    goto :goto_f
.end method

.method private Sy(Lcom/android/common/gles/c;I[Lcom/android/common/gles/f;)V
    .registers 11

    .prologue
    const/16 v4, 0x14

    const/4 v1, 0x3

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 307
    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 308
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 310
    invoke-virtual {p1}, Lcom/android/common/gles/c;->RH()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {p0}, Lcom/android/common/gles/e;->Sq()F

    move-result v2

    const v5, 0x3f733333    # 0.95f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_63

    :cond_1d
    :goto_1d
    invoke-direct {p0, v0}, Lcom/android/common/gles/e;->Sp(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/common/gles/e;->SP:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 314
    aget-object v0, p3, v3

    iget v0, v0, Lcom/android/common/gles/f;->ST:I

    .line 315
    iget-object v5, p0, Lcom/android/common/gles/e;->SP:Ljava/nio/FloatBuffer;

    .line 314
    const/16 v2, 0x1406

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 316
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 318
    iget-object v0, p0, Lcom/android/common/gles/e;->SP:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 319
    aget-object v0, p3, v6

    iget v0, v0, Lcom/android/common/gles/f;->ST:I

    .line 320
    iget-object v5, p0, Lcom/android/common/gles/e;->SP:Ljava/nio/FloatBuffer;

    .line 319
    const/16 v2, 0x1406

    move v1, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 321
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 323
    const/4 v0, 0x4

    aget-object v0, p3, v0

    iget v0, v0, Lcom/android/common/gles/f;->ST:I

    invoke-virtual {p0}, Lcom/android/common/gles/e;->Sq()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 324
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 326
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 327
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/common/gles/e;->RZ(Lcom/android/common/gles/c;)V

    .line 306
    return-void

    :cond_63
    move v0, v3

    .line 310
    goto :goto_1d
.end method


# virtual methods
.method public RZ(Lcom/android/common/gles/c;)V
    .registers 6

    .prologue
    const v3, 0x812f

    const v2, 0x46180400    # 9729.0f

    .line 211
    invoke-virtual {p1}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/common/gles/c;->RQ()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 212
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 213
    invoke-virtual {p1}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    const/16 v1, 0x2802

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 214
    invoke-virtual {p1}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    const/16 v1, 0x2803

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 215
    invoke-virtual {p1}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    const/16 v1, 0x2801

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 216
    invoke-virtual {p1}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    const/16 v1, 0x2800

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 210
    return-void
.end method

.method public SA(I)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 627
    and-int/lit8 v2, p1, 0x1

    if-ne v2, v0, :cond_8f

    move v2, v0

    .line 628
    :goto_7
    if-eqz v2, :cond_2d

    .line 629
    invoke-virtual {p0}, Lcom/android/common/gles/e;->Sq()F

    move-result v2

    .line 630
    iget v3, p0, Lcom/android/common/gles/e;->Ss:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/common/gles/e;->Ss:I

    .line 631
    iget-object v3, p0, Lcom/android/common/gles/e;->Sr:[F

    array-length v3, v3

    iget v4, p0, Lcom/android/common/gles/e;->Ss:I

    if-gt v3, v4, :cond_27

    .line 632
    iget-object v3, p0, Lcom/android/common/gles/e;->Sr:[F

    iget-object v4, p0, Lcom/android/common/gles/e;->Sr:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    iput-object v3, p0, Lcom/android/common/gles/e;->Sr:[F

    .line 634
    :cond_27
    iget-object v3, p0, Lcom/android/common/gles/e;->Sr:[F

    iget v4, p0, Lcom/android/common/gles/e;->Ss:I

    aput v2, v3, v4

    .line 636
    :cond_2d
    and-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_92

    move v2, v0

    .line 637
    :goto_33
    if-eqz v2, :cond_5c

    .line 638
    iget v2, p0, Lcom/android/common/gles/e;->St:I

    .line 639
    iget v3, p0, Lcom/android/common/gles/e;->St:I

    add-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/common/gles/e;->St:I

    .line 640
    iget-object v3, p0, Lcom/android/common/gles/e;->Sz:[F

    array-length v3, v3

    iget v4, p0, Lcom/android/common/gles/e;->St:I

    if-gt v3, v4, :cond_51

    .line 641
    iget-object v3, p0, Lcom/android/common/gles/e;->Sz:[F

    iget-object v4, p0, Lcom/android/common/gles/e;->Sz:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    iput-object v3, p0, Lcom/android/common/gles/e;->Sz:[F

    .line 643
    :cond_51
    iget-object v3, p0, Lcom/android/common/gles/e;->Sz:[F

    iget-object v4, p0, Lcom/android/common/gles/e;->Sz:[F

    iget v5, p0, Lcom/android/common/gles/e;->St:I

    const/16 v6, 0x10

    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/f/a;->btI([FI[FII)V

    .line 645
    :cond_5c
    and-int/lit8 v2, p1, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_94

    .line 646
    :goto_61
    if-eqz v0, :cond_89

    .line 647
    iget-object v0, p0, Lcom/android/common/gles/e;->SG:[F

    iget v1, p0, Lcom/android/common/gles/e;->Su:I

    aget v0, v0, v1

    .line 648
    iget v1, p0, Lcom/android/common/gles/e;->Su:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/common/gles/e;->Su:I

    .line 649
    iget-object v1, p0, Lcom/android/common/gles/e;->SG:[F

    array-length v1, v1

    iget v2, p0, Lcom/android/common/gles/e;->Su:I

    if-gt v1, v2, :cond_83

    .line 650
    iget-object v1, p0, Lcom/android/common/gles/e;->SG:[F

    iget-object v2, p0, Lcom/android/common/gles/e;->SG:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/gles/e;->SG:[F

    .line 652
    :cond_83
    iget-object v1, p0, Lcom/android/common/gles/e;->SG:[F

    iget v2, p0, Lcom/android/common/gles/e;->Su:I

    aput v0, v1, v2

    .line 655
    :cond_89
    iget-object v0, p0, Lcom/android/common/gles/e;->SH:Lcom/android/common/k;

    invoke-virtual {v0, p1}, Lcom/android/common/k;->aqv(I)V

    .line 626
    return-void

    :cond_8f
    move v2, v1

    .line 627
    goto/16 :goto_7

    :cond_92
    move v2, v1

    .line 636
    goto :goto_33

    :cond_94
    move v0, v1

    .line 645
    goto :goto_61
.end method

.method public Sa()V
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/common/gles/e;->Sp:[F

    invoke-virtual {p0, v0}, Lcom/android/common/gles/e;->Sl([F)V

    .line 527
    return-void
.end method

.method public Sb()V
    .registers 2

    .prologue
    .line 623
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/common/gles/e;->SA(I)V

    .line 622
    return-void
.end method

.method public Sc(Lcom/android/common/gles/j;)V
    .registers 7

    .prologue
    const v4, 0x8d40

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 492
    iget-object v0, p0, Lcom/android/common/gles/e;->Sx:[I

    if-nez v0, :cond_12

    .line 493
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/common/gles/e;->Sx:[I

    .line 494
    iget-object v0, p0, Lcom/android/common/gles/e;->Sx:[I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 497
    :cond_12
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 498
    iget-object v0, p0, Lcom/android/common/gles/e;->Sx:[I

    aget v0, v0, v3

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 499
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 501
    invoke-virtual {p1}, Lcom/android/common/gles/j;->RO()Z

    move-result v0

    if-nez v0, :cond_28

    .line 502
    invoke-virtual {p1, p0}, Lcom/android/common/gles/j;->SK(Lcom/android/common/gles/e;)V

    .line 505
    :cond_28
    invoke-virtual {p1}, Lcom/android/common/gles/j;->RG()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/common/gles/j;->RQ()I

    move-result v1

    .line 504
    const v2, 0x8ce0

    invoke-static {v4, v2, v0, v1, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 506
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 508
    invoke-direct {p0}, Lcom/android/common/gles/e;->Sk()V

    .line 491
    return-void
.end method

.method public Sd(Lcom/android/common/gles/c;[FIIII)V
    .registers 12

    .prologue
    .line 399
    if-lez p5, :cond_4

    if-gtz p6, :cond_5

    .line 400
    :cond_4
    return-void

    .line 402
    :cond_5
    iget-object v0, p0, Lcom/android/common/gles/e;->SM:Landroid/graphics/RectF;

    int-to-float v1, p3

    int-to-float v2, p4

    add-int v3, p3, p5

    int-to-float v3, v3

    add-int v4, p4, p6

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 404
    iget-object v0, p0, Lcom/android/common/gles/e;->SM:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/common/gles/e;->Sn(Lcom/android/common/gles/c;[FLandroid/graphics/RectF;)V

    .line 398
    return-void
.end method

.method public Se()V
    .registers 3

    .prologue
    .line 512
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 513
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 516
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 511
    return-void
.end method

.method public Sf()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 659
    iget-object v2, p0, Lcom/android/common/gles/e;->SH:Lcom/android/common/k;

    invoke-virtual {v2}, Lcom/android/common/k;->aqw()I

    move-result v3

    .line 660
    and-int/lit8 v2, v3, 0x1

    if-ne v2, v0, :cond_31

    move v2, v0

    .line 661
    :goto_d
    if-eqz v2, :cond_15

    .line 662
    iget v2, p0, Lcom/android/common/gles/e;->Ss:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/common/gles/e;->Ss:I

    .line 665
    :cond_15
    and-int/lit8 v2, v3, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_33

    move v2, v0

    .line 666
    :goto_1b
    if-eqz v2, :cond_23

    .line 667
    iget v2, p0, Lcom/android/common/gles/e;->St:I

    add-int/lit8 v2, v2, -0x10

    iput v2, p0, Lcom/android/common/gles/e;->St:I

    .line 670
    :cond_23
    and-int/lit8 v2, v3, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 671
    :goto_28
    if-eqz v0, :cond_30

    .line 672
    iget v0, p0, Lcom/android/common/gles/e;->Su:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/common/gles/e;->Su:I

    .line 658
    :cond_30
    return-void

    :cond_31
    move v2, v1

    .line 660
    goto :goto_d

    :cond_33
    move v2, v1

    .line 665
    goto :goto_1b

    :cond_35
    move v0, v1

    .line 670
    goto :goto_28
.end method

.method public Sg(FFF)V
    .registers 6

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/common/gles/e;->Sz:[F

    iget v1, p0, Lcom/android/common/gles/e;->St:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 610
    return-void
.end method

.method public Sh(FFF)V
    .registers 6

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/common/gles/e;->Sz:[F

    iget v1, p0, Lcom/android/common/gles/e;->St:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 676
    return-void
.end method

.method public Sl([F)V
    .registers 6

    .prologue
    .line 533
    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 534
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 535
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 537
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 532
    return-void
.end method

.method public Sm(Lcom/android/common/gles/c;Ljava/lang/String;[FIIII)V
    .registers 13

    .prologue
    .line 409
    if-lez p6, :cond_4

    if-gtz p7, :cond_5

    .line 410
    :cond_4
    return-void

    .line 412
    :cond_5
    iget-object v0, p0, Lcom/android/common/gles/e;->SM:Landroid/graphics/RectF;

    int-to-float v1, p4

    int-to-float v2, p5

    add-int v3, p4, p6

    int-to-float v3, v3

    add-int v4, p5, p7

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 414
    iget-object v0, p0, Lcom/android/common/gles/e;->SM:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/android/common/gles/e;->So(Lcom/android/common/gles/c;[FLandroid/graphics/RectF;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public Sq()F
    .registers 3

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/common/gles/e;->Sr:[F

    iget v1, p0, Lcom/android/common/gles/e;->Ss:I

    aget v0, v0, v1

    return v0
.end method

.method protected Sr()Lcom/android/common/gles/d;
    .registers 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/common/gles/e;->Sy:Lcom/android/common/gles/d;

    return-object v0
.end method

.method public Ss(Lcom/android/common/gles/c;II)V
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 483
    invoke-virtual {p1}, Lcom/android/common/gles/c;->RG()I

    move-result v0

    .line 484
    invoke-virtual {p1}, Lcom/android/common/gles/c;->RQ()I

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 485
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 486
    invoke-virtual {p1}, Lcom/android/common/gles/c;->RU()I

    move-result v3

    .line 487
    invoke-virtual {p1}, Lcom/android/common/gles/c;->RT()I

    move-result v4

    .line 488
    const/4 v8, 0x0

    move v2, p2

    move v5, v1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 482
    return-void
.end method

.method public Sz(FFFF)V
    .registers 11

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/common/gles/e;->SG:[F

    iget v1, p0, Lcom/android/common/gles/e;->Ss:I

    aput p1, v0, v1

    .line 607
    iget-object v0, p0, Lcom/android/common/gles/e;->Sz:[F

    iget v1, p0, Lcom/android/common/gles/e;->St:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 605
    return-void
.end method

.method public release()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 520
    iget-object v0, p0, Lcom/android/common/gles/e;->Sx:[I

    if-eqz v0, :cond_e

    .line 521
    iget-object v0, p0, Lcom/android/common/gles/e;->Sx:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 522
    iput-object v3, p0, Lcom/android/common/gles/e;->Sx:[I

    .line 519
    :cond_e
    return-void
.end method

.method public setAlpha(F)V
    .registers 4

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/common/gles/e;->Sr:[F

    iget v1, p0, Lcom/android/common/gles/e;->Ss:I

    aput p1, v0, v1

    .line 618
    return-void
.end method

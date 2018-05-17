.class public Lcom/morpho/core/MorphoPanoramaGP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bcI:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    :try_start_0
    const-string/jumbo v0, "morpho_panorama_gp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_6} :catch_7

    .line 14
    :goto_6
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 20
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide v4, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    .line 132
    invoke-direct {p0}, Lcom/morpho/core/MorphoPanoramaGP;->createNativeObject()J

    move-result-wide v0

    .line 133
    cmp-long v2, v0, v4

    if-eqz v2, :cond_12

    .line 135
    iput-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    .line 131
    :goto_11
    return-void

    .line 137
    :cond_12
    iput-wide v4, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    goto :goto_11
.end method

.method public static bue()Ljava/lang/String;
    .registers 1

    .prologue
    .line 113
    invoke-static {}, Lcom/morpho/core/MorphoPanoramaGP;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bul(Lcom/morpho/core/MorphoPanoramaGP$InitParam;D)I
    .registers 4

    .prologue
    .line 118
    invoke-static {p0, p1, p2}, Lcom/morpho/core/MorphoPanoramaGP;->nativeCalcImageSize(Lcom/morpho/core/MorphoPanoramaGP$InitParam;D)I

    move-result v0

    return v0
.end method

.method private final native createNativeObject()J
.end method

.method private final native deleteNativeObject(J)V
.end method

.method private final native nativeAttachPreview(J[BI[I[B[ILandroid/graphics/Bitmap;)I
.end method

.method private final native nativeAttachStillImageExt(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
.end method

.method private final native nativeAttachStillImageRaw(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
.end method

.method private static final native nativeCalcImageSize(Lcom/morpho/core/MorphoPanoramaGP$InitParam;D)I
.end method

.method private final native nativeEnd(J)I
.end method

.method private final native nativeFinish(J)I
.end method

.method private final native nativeGetClippingRect(J[I)I
.end method

.method private final native nativeGetCurrentDirection(J[I)I
.end method

.method private final native nativeGetGuidancePos(J[I)I
.end method

.method private static final native nativeGetVersion()Ljava/lang/String;
.end method

.method private final native nativeInitialize(JLcom/morpho/core/MorphoPanoramaGP$InitParam;[I)I
.end method

.method private final native nativeSaveOutputJpeg(JLjava/lang/String;IIIII[I)I
.end method

.method private final native nativeSetMotionlessThreshold(JI)I
.end method

.method private final native nativeSetUseSensorAssist(JII)I
.end method

.method private final native nativeSetUseSensorThreshold(JI)I
.end method

.method private final native nativeStart(J)I
.end method


# virtual methods
.method public buf()I
    .registers 5

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 277
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    invoke-direct {p0, v0, v1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeEnd(J)I

    move-result v0

    .line 284
    :goto_e
    return v0

    .line 281
    :cond_f
    const v0, -0x7ffffffe

    goto :goto_e
.end method

.method public bug(Landroid/graphics/Rect;)I
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 319
    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 321
    iget-wide v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_28

    .line 323
    iget-wide v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    invoke-direct {p0, v2, v3, v1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeGetClippingRect(J[I)I

    move-result v0

    .line 324
    if-nez v0, :cond_22

    .line 326
    aget v2, v1, v6

    .line 327
    const/4 v3, 0x1

    aget v3, v1, v3

    .line 328
    const/4 v4, 0x2

    aget v4, v1, v4

    .line 329
    const/4 v5, 0x3

    aget v1, v1, v5

    .line 326
    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 337
    :cond_22
    :goto_22
    if-eqz v0, :cond_27

    .line 339
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 342
    :cond_27
    return v0

    .line 334
    :cond_28
    const v0, -0x7ffffffe

    goto :goto_22
.end method

.method public buh()I
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 161
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_16

    .line 163
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    invoke-direct {p0, v0, v1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeFinish(J)I

    move-result v0

    .line 164
    iget-wide v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    invoke-direct {p0, v2, v3}, Lcom/morpho/core/MorphoPanoramaGP;->deleteNativeObject(J)V

    .line 165
    iput-wide v4, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    .line 172
    :goto_15
    return v0

    .line 169
    :cond_16
    const v0, -0x7ffffffe

    goto :goto_15
.end method

.method public bui(Ljava/lang/String;Landroid/graphics/Rect;I[I)I
    .registers 16

    .prologue
    .line 516
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    .line 518
    iget-wide v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    move-object v4, p1

    move v9, p3

    move-object v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/morpho/core/MorphoPanoramaGP;->nativeSaveOutputJpeg(JLjava/lang/String;IIIII[I)I

    move-result v0

    .line 525
    :goto_1a
    return v0

    .line 522
    :cond_1b
    const v0, -0x7ffffffe

    goto :goto_1a
.end method

.method public buj(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
    .registers 11

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 245
    iget-wide v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/morpho/core/MorphoPanoramaGP;->nativeAttachStillImageRaw(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v0

    .line 252
    :goto_12
    return v0

    .line 249
    :cond_13
    const v0, -0x7ffffffe

    goto :goto_12
.end method

.method public buk(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
    .registers 11

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 229
    iget-wide v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/morpho/core/MorphoPanoramaGP;->nativeAttachStillImageExt(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v0

    .line 236
    :goto_12
    return v0

    .line 233
    :cond_13
    const v0, -0x7ffffffe

    goto :goto_12
.end method

.method public bum(Lcom/morpho/core/MorphoPanoramaGP$InitParam;[I)I
    .registers 7

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 147
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/morpho/core/MorphoPanoramaGP;->nativeInitialize(JLcom/morpho/core/MorphoPanoramaGP$InitParam;[I)I

    move-result v0

    .line 154
    :goto_e
    return v0

    .line 151
    :cond_f
    const v0, -0x7ffffffe

    goto :goto_e
.end method

.method public bun(I)I
    .registers 6

    .prologue
    .line 381
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 383
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    invoke-direct {p0, v0, v1, p1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeSetMotionlessThreshold(JI)I

    move-result v0

    .line 390
    :goto_e
    return v0

    .line 387
    :cond_f
    const v0, -0x7ffffffe

    goto :goto_e
.end method

.method public buo(I)I
    .registers 6

    .prologue
    .line 461
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 463
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    invoke-direct {p0, v0, v1, p1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeSetUseSensorThreshold(JI)I

    move-result v0

    .line 470
    :goto_e
    return v0

    .line 467
    :cond_f
    const v0, -0x7ffffffe

    goto :goto_e
.end method

.method public bup(II)I
    .registers 7

    .prologue
    .line 429
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 431
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/morpho/core/MorphoPanoramaGP;->nativeSetUseSensorAssist(JII)I

    move-result v0

    .line 438
    :goto_e
    return v0

    .line 435
    :cond_f
    const v0, -0x7ffffffe

    goto :goto_e
.end method

.method public buq([BI[I[B[ILandroid/graphics/Bitmap;)I
    .registers 17

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 197
    iget-wide v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/morpho/core/MorphoPanoramaGP;->nativeAttachPreview(J[BI[I[B[ILandroid/graphics/Bitmap;)I

    move-result v0

    .line 204
    :goto_16
    return v0

    .line 201
    :cond_17
    const v0, -0x7ffffffe

    goto :goto_16
.end method

.method public bur([I)I
    .registers 6

    .prologue
    .line 413
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 415
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    invoke-direct {p0, v0, v1, p1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeGetCurrentDirection(J[I)I

    move-result v0

    .line 422
    :goto_e
    return v0

    .line 419
    :cond_f
    const v0, -0x7ffffffe

    goto :goto_e
.end method

.method public bus(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 476
    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 478
    iget-wide v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_24

    .line 480
    iget-wide v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    invoke-direct {p0, v2, v3, v1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeGetGuidancePos(J[I)I

    move-result v0

    .line 481
    aget v2, v1, v6

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 482
    const/4 v2, 0x2

    aget v2, v1, v2

    const/4 v3, 0x3

    aget v1, v1, v3

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Point;->set(II)V

    .line 489
    :goto_23
    return v0

    .line 486
    :cond_24
    const v0, -0x7ffffffe

    goto :goto_23
.end method

.method public start()I
    .registers 5

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 181
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->bcI:J

    invoke-direct {p0, v0, v1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeStart(J)I

    move-result v0

    .line 188
    :goto_e
    return v0

    .line 185
    :cond_f
    const v0, -0x7ffffffe

    goto :goto_e
.end method

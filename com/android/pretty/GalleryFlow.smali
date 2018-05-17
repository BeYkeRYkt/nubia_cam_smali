.class public Lcom/android/pretty/GalleryFlow;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private aCJ:D

.field private aCK:I

.field private aCL:I

.field private aCM:I

.field private aCN:I

.field private aCO:Landroid/graphics/Bitmap;

.field private aCP:I

.field private aCQ:Ljava/util/List;

.field private aCR:I

.field private aCS:I

.field private aCT:Z

.field private aCU:Ljava/util/List;

.field private aCV:Z

.field private aCW:I

.field private aCX:I

.field private aCY:Landroid/graphics/Bitmap;

.field private aCZ:Lcom/android/pretty/g;

.field private aDa:Landroid/graphics/Paint;

.field private aDb:Landroid/graphics/PaintFlagsDrawFilter;

.field private aDc:I

.field private aDd:Landroid/graphics/Bitmap;

.field private aDe:[Z

.field private aDf:I

.field private aDg:F

.field private aDh:I

.field private aDi:Z

.field private aDj:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    const v4, 0x7f0d0040

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object v1, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    .line 23
    iput-object v1, p0, Lcom/android/pretty/GalleryFlow;->aCU:Ljava/util/List;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/pretty/GalleryFlow;->aDa:Landroid/graphics/Paint;

    .line 25
    iput-object v1, p0, Lcom/android/pretty/GalleryFlow;->aCZ:Lcom/android/pretty/g;

    .line 26
    iput-object v1, p0, Lcom/android/pretty/GalleryFlow;->aDd:Landroid/graphics/Bitmap;

    .line 27
    iput-object v1, p0, Lcom/android/pretty/GalleryFlow;->aCY:Landroid/graphics/Bitmap;

    .line 28
    iput-object v1, p0, Lcom/android/pretty/GalleryFlow;->aCO:Landroid/graphics/Bitmap;

    .line 34
    const/16 v0, 0x21c

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aCR:I

    .line 35
    iput v2, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    .line 36
    iput v2, p0, Lcom/android/pretty/GalleryFlow;->aCP:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/pretty/GalleryFlow;->aCJ:D

    .line 47
    iput v2, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    .line 48
    iput-boolean v2, p0, Lcom/android/pretty/GalleryFlow;->aCT:Z

    .line 50
    invoke-virtual {p0}, Lcom/android/pretty/GalleryFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aCW:I

    .line 51
    invoke-virtual {p0}, Lcom/android/pretty/GalleryFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aDc:I

    .line 88
    iput-boolean v3, p0, Lcom/android/pretty/GalleryFlow;->aDi:Z

    .line 218
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    .line 222
    iput v2, p0, Lcom/android/pretty/GalleryFlow;->aCX:I

    .line 516
    iput-boolean v3, p0, Lcom/android/pretty/GalleryFlow;->aCV:Z

    .line 59
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/android/pretty/GalleryFlow;->aDb:Landroid/graphics/PaintFlagsDrawFilter;

    .line 60
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aDa:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    return-void
.end method

.method private aSg(Landroid/graphics/Canvas;IZ)V
    .registers 14

    .prologue
    const-wide v8, 0x408a900000000000L    # 850.0

    const/high16 v6, 0x40000000    # 2.0f

    .line 362
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 363
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    if-le p2, v0, :cond_c0

    .line 364
    invoke-direct {p0, p2}, Lcom/android/pretty/GalleryFlow;->aSn(I)I

    move-result v0

    int-to-float v0, v0

    .line 391
    :cond_15
    :goto_15
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr v0, v1

    .line 392
    invoke-direct {p0, p2, p3}, Lcom/android/pretty/GalleryFlow;->aSl(IZ)F

    move-result v1

    .line 393
    div-float/2addr v1, v6

    sub-float v1, v0, v1

    .line 394
    iget v2, p0, Lcom/android/pretty/GalleryFlow;->aCR:I

    int-to-float v2, v2

    sub-float v0, v2, v0

    const v2, 0x44548000    # 850.0f

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 395
    const/high16 v2, 0x43340000    # 180.0f

    mul-float/2addr v2, v0

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 396
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sub-double v4, v8, v4

    double-to-float v0, v4

    .line 399
    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aCK:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {p0, p2, p3}, Lcom/android/pretty/GalleryFlow;->aSj(IZ)F

    move-result v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v3, v4

    .line 404
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 405
    add-float/2addr v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 406
    invoke-direct {p0, p2, p3}, Lcom/android/pretty/GalleryFlow;->aSk(IZ)F

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/android/pretty/GalleryFlow;->aSk(IZ)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 407
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aDb:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 408
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8f

    .line 409
    const-string/jumbo v0, "GalleryFlow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bitmapPosition = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_8f
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 413
    iget-object v1, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v1}, Lcom/android/pretty/GalleryFlow;->aSo(FLandroid/graphics/Bitmap;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 414
    iget-object v3, p0, Lcom/android/pretty/GalleryFlow;->aDa:Landroid/graphics/Paint;

    .line 411
    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 415
    if-eqz p3, :cond_115

    .line 416
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aDb:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 418
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aDd:Landroid/graphics/Bitmap;

    .line 419
    iget-object v1, p0, Lcom/android/pretty/GalleryFlow;->aDd:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v1}, Lcom/android/pretty/GalleryFlow;->aSo(FLandroid/graphics/Bitmap;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 420
    iget-object v2, p0, Lcom/android/pretty/GalleryFlow;->aDa:Landroid/graphics/Paint;

    .line 417
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 429
    :goto_bc
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 359
    return-void

    .line 365
    :cond_c0
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    if-ge p2, v0, :cond_cb

    .line 366
    invoke-direct {p0, p2}, Lcom/android/pretty/GalleryFlow;->aSm(I)I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_15

    .line 368
    :cond_cb
    if-eqz p3, :cond_f6

    .line 369
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e1

    .line 370
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    invoke-direct {p0, v0}, Lcom/android/pretty/GalleryFlow;->aSn(I)I

    move-result v0

    int-to-float v0, v0

    .line 377
    :goto_d9
    if-eqz p3, :cond_15

    .line 378
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto/16 :goto_15

    .line 371
    :cond_e1
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCX:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ee

    .line 372
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    invoke-direct {p0, v0}, Lcom/android/pretty/GalleryFlow;->aSm(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_d9

    .line 374
    :cond_ee
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    invoke-direct {p0, v0}, Lcom/android/pretty/GalleryFlow;->aSi(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_d9

    .line 381
    :cond_f6
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    if-lez v0, :cond_101

    .line 382
    invoke-direct {p0, p2}, Lcom/android/pretty/GalleryFlow;->aSm(I)I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_15

    .line 383
    :cond_101
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    if-gez v0, :cond_10c

    .line 384
    invoke-direct {p0, p2}, Lcom/android/pretty/GalleryFlow;->aSn(I)I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_15

    .line 386
    :cond_10c
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    invoke-direct {p0, v0}, Lcom/android/pretty/GalleryFlow;->aSi(I)I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_15

    .line 422
    :cond_115
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aDb:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 424
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCP:I

    if-ne p2, v0, :cond_130

    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCO:Landroid/graphics/Bitmap;

    .line 426
    :goto_120
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCP:I

    if-ne p2, v1, :cond_133

    iget-object v1, p0, Lcom/android/pretty/GalleryFlow;->aCO:Landroid/graphics/Bitmap;

    .line 425
    :goto_126
    invoke-direct {p0, v2, v1}, Lcom/android/pretty/GalleryFlow;->aSo(FLandroid/graphics/Bitmap;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 427
    iget-object v2, p0, Lcom/android/pretty/GalleryFlow;->aDa:Landroid/graphics/Paint;

    .line 423
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_bc

    .line 424
    :cond_130
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCY:Landroid/graphics/Bitmap;

    goto :goto_120

    .line 426
    :cond_133
    iget-object v1, p0, Lcom/android/pretty/GalleryFlow;->aCY:Landroid/graphics/Bitmap;

    goto :goto_126
.end method

.method private aSh(II)I
    .registers 5

    .prologue
    .line 434
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    if-ge p2, v0, :cond_5

    .line 435
    return p2

    .line 436
    :cond_5
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    if-le p2, v0, :cond_10

    .line 437
    add-int/lit8 v0, p1, -0x1

    sub-int/2addr v0, p2

    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    add-int/2addr v0, v1

    return v0

    .line 439
    :cond_10
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method private aSi(I)I
    .registers 4

    .prologue
    .line 463
    if-nez p1, :cond_7

    .line 464
    invoke-direct {p0, p1}, Lcom/android/pretty/GalleryFlow;->aSn(I)I

    move-result v0

    return v0

    .line 465
    :cond_7
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_16

    .line 466
    invoke-direct {p0, p1}, Lcom/android/pretty/GalleryFlow;->aSm(I)I

    move-result v0

    return v0

    .line 468
    :cond_16
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/android/pretty/GalleryFlow;->aSm(I)I

    move-result v0

    .line 469
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/android/pretty/GalleryFlow;->aSn(I)I

    move-result v1

    .line 470
    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private aSj(IZ)F
    .registers 5

    .prologue
    .line 310
    invoke-direct {p0, p1, p2}, Lcom/android/pretty/GalleryFlow;->aSk(IZ)F

    move-result v0

    .line 311
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCL:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private aSk(IZ)F
    .registers 10

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const v6, 0x3dccccd0    # 0.100000024f

    const v5, 0x3d4cccc0    # 0.049999952f

    const v1, 0x3f933333    # 1.15f

    const v2, 0x3f8ccccd    # 1.1f

    .line 316
    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    if-ne p1, v3, :cond_18

    if-eqz p2, :cond_18

    .line 317
    const v0, 0x3fa66666    # 1.3f

    .line 355
    :cond_17
    :goto_17
    return v0

    .line 318
    :cond_18
    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    if-lez v3, :cond_6d

    .line 319
    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    sub-int v3, p1, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_29

    .line 320
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    mul-float/2addr v0, v5

    sub-float v0, v1, v0

    goto :goto_17

    .line 321
    :cond_29
    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    sub-int v3, p1, v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_36

    .line 322
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    mul-float/2addr v0, v6

    sub-float v0, v2, v0

    goto :goto_17

    .line 323
    :cond_36
    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    sub-int v3, p1, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_45

    .line 324
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    const v2, 0x3e199998    # 0.14999998f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_17

    .line 325
    :cond_45
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    sub-int v1, p1, v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_51

    .line 326
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    mul-float/2addr v0, v5

    add-float/2addr v0, v2

    goto :goto_17

    .line 327
    :cond_51
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    sub-int v1, p1, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5d

    .line 328
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    goto :goto_17

    .line 329
    :cond_5d
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    if-ne p1, v1, :cond_17

    .line 330
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    const v1, 0x3d4ccce0    # 0.05000007f

    mul-float/2addr v0, v1

    const v1, 0x3f99999a    # 1.2f

    sub-float v0, v1, v0

    goto :goto_17

    .line 332
    :cond_6d
    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    if-gez v3, :cond_c6

    .line 333
    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    sub-int v3, p1, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_80

    .line 334
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    const v2, 0x3e199998    # 0.14999998f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_17

    .line 335
    :cond_80
    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    sub-int v3, p1, v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_8c

    .line 336
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    mul-float/2addr v0, v5

    add-float/2addr v0, v2

    goto :goto_17

    .line 337
    :cond_8c
    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    sub-int v3, p1, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9a

    .line 338
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    mul-float/2addr v0, v5

    sub-float v0, v1, v0

    goto/16 :goto_17

    .line 339
    :cond_9a
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    sub-int v1, p1, v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a8

    .line 340
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    mul-float/2addr v0, v6

    sub-float v0, v2, v0

    goto/16 :goto_17

    .line 341
    :cond_a8
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    sub-int v1, p1, v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_b5

    .line 342
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    goto/16 :goto_17

    .line 343
    :cond_b5
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    if-ne p1, v1, :cond_17

    .line 344
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    const v1, 0x3d4ccce0    # 0.05000007f

    mul-float/2addr v0, v1

    const v1, 0x3f99999a    # 1.2f

    sub-float v0, v1, v0

    goto/16 :goto_17

    .line 347
    :cond_c6
    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d4

    move v0, v1

    .line 348
    goto/16 :goto_17

    .line 349
    :cond_d4
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_e2

    move v0, v2

    .line 350
    goto/16 :goto_17

    .line 351
    :cond_e2
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    if-ne p1, v1, :cond_17

    .line 352
    const v0, 0x3f99999a    # 1.2f

    goto/16 :goto_17
.end method

.method private aSl(IZ)F
    .registers 5

    .prologue
    .line 305
    invoke-direct {p0, p1, p2}, Lcom/android/pretty/GalleryFlow;->aSk(IZ)F

    move-result v0

    .line 306
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private aSm(I)I
    .registers 4

    .prologue
    .line 209
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aDj:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCW:I

    add-int/2addr v0, v1

    return v0
.end method

.method private aSn(I)I
    .registers 6

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 214
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    sub-int/2addr v2, p1

    .line 215
    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    .line 214
    mul-int/2addr v2, v3

    .line 215
    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aDj:I

    mul-int/2addr v0, v3

    .line 214
    add-int/2addr v0, v2

    .line 215
    iget v2, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    .line 214
    add-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 215
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aDc:I

    .line 214
    sub-int/2addr v0, v1

    return v0
.end method

.method private aSo(FLandroid/graphics/Bitmap;)Landroid/graphics/Matrix;
    .registers 8

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 182
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 183
    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v1, p1

    .line 184
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 183
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 185
    return-object v0
.end method

.method private aSp(III)V
    .registers 5

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCZ:Lcom/android/pretty/g;

    if-eqz v0, :cond_9

    .line 299
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCZ:Lcom/android/pretty/g;

    invoke-interface {v0, p1}, Lcom/android/pretty/g;->aSu(I)V

    .line 297
    :cond_9
    return-void
.end method

.method private aSq()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    iget-boolean v0, p0, Lcom/android/pretty/GalleryFlow;->aDi:Z

    if-eqz v0, :cond_43

    move v0, v1

    .line 93
    :goto_7
    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    if-ge v0, v3, :cond_1e

    .line 94
    iget-object v3, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_40

    iget-object v3, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    add-int/lit8 v4, v0, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_40

    .line 95
    iget-object v1, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    aput-boolean v2, v1, v0

    move v1, v2

    .line 100
    :cond_1e
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    add-int/lit8 v0, v0, 0x1

    :goto_22
    iget-object v3, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_c7

    .line 101
    iget-object v3, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    add-int/lit8 v4, v0, -0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_3d

    .line 102
    iget-object v1, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    aput-boolean v2, v1, v0

    move v1, v2

    .line 100
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 93
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_43
    move v0, v1

    .line 108
    :goto_44
    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    if-ge v0, v3, :cond_c5

    .line 109
    iget-object v3, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_87

    if-nez v0, :cond_87

    .line 110
    iget-object v3, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    aput-boolean v1, v3, v0

    move v0, v2

    .line 119
    :goto_55
    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    add-int/lit8 v3, v3, 0x1

    :goto_59
    iget-object v4, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_76

    .line 120
    iget-object v4, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_a0

    iget-object v4, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v4, v3, :cond_a0

    .line 121
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    aput-boolean v1, v0, v3

    move v0, v2

    .line 130
    :cond_76
    :goto_76
    if-nez v0, :cond_c1

    iget-object v3, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    iget v4, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_c3

    .line 131
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    aput-boolean v1, v0, v3

    .line 135
    :goto_86
    return v2

    .line 113
    :cond_87
    if-lez v0, :cond_9d

    iget-object v3, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    add-int/lit8 v4, v0, -0x1

    aget-boolean v3, v3, v4

    if-nez v3, :cond_9d

    iget-object v3, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_9d

    .line 114
    iget-object v3, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    aput-boolean v1, v3, v0

    move v0, v2

    .line 116
    goto :goto_55

    .line 108
    :cond_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 124
    :cond_a0
    iget-object v4, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_be

    iget-object v4, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    add-int/lit8 v5, v3, 0x1

    aget-boolean v4, v4, v5

    if-nez v4, :cond_be

    iget-object v4, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_be

    .line 125
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    aput-boolean v1, v0, v3

    move v0, v2

    .line 127
    goto :goto_76

    .line 119
    :cond_be
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_c1
    move v2, v0

    .line 130
    goto :goto_86

    :cond_c3
    move v2, v0

    goto :goto_86

    :cond_c5
    move v0, v1

    goto :goto_55

    :cond_c7
    move v2, v1

    goto :goto_86
.end method

.method private aSr()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    .line 224
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    if-gez v0, :cond_10

    .line 225
    :cond_d
    iput v8, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    .line 226
    return-void

    .line 224
    :cond_10
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    iget-object v1, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_20

    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    if-gtz v0, :cond_d

    .line 229
    :cond_20
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/pretty/GalleryFlow;->aSm(I)I

    move-result v0

    .line 230
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/pretty/GalleryFlow;->aSn(I)I

    move-result v1

    .line 231
    iget v2, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    invoke-direct {p0, v2}, Lcom/android/pretty/GalleryFlow;->aSi(I)I

    move-result v2

    .line 233
    iget v3, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    .line 234
    iget v4, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    add-int/2addr v4, v2

    if-lt v4, v1, :cond_b4

    .line 235
    iget v4, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    iget v5, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    iget v7, p0, Lcom/android/pretty/GalleryFlow;->aDj:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    .line 236
    iget v4, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    sub-int v5, v1, v2

    iget v6, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    iget v7, p0, Lcom/android/pretty/GalleryFlow;->aDj:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    .line 243
    :cond_61
    :goto_61
    iget-boolean v4, p0, Lcom/android/pretty/GalleryFlow;->aCT:Z

    if-eqz v4, :cond_81

    iget v4, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    if-eqz v4, :cond_81

    .line 244
    iget v4, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    if-gez v4, :cond_e0

    iget v4, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    if-le v4, v0, :cond_e0

    .line 245
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    .line 249
    :cond_7f
    :goto_7f
    iput v8, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    .line 252
    :cond_81
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    iget-object v1, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_f6

    .line 253
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    .line 254
    iput v8, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    .line 261
    :cond_99
    :goto_99
    iget-boolean v0, p0, Lcom/android/pretty/GalleryFlow;->aCT:Z

    if-nez v0, :cond_a1

    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    if-nez v0, :cond_ff

    .line 262
    :cond_a1
    iput v8, p0, Lcom/android/pretty/GalleryFlow;->aCX:I

    .line 280
    :goto_a3
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    if-nez v0, :cond_11e

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    .line 292
    :goto_aa
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    if-eq v0, v3, :cond_b3

    .line 293
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    invoke-direct {p0, v0, v8, v8}, Lcom/android/pretty/GalleryFlow;->aSp(III)V

    .line 223
    :cond_b3
    return-void

    .line 237
    :cond_b4
    iget v4, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    add-int/2addr v4, v2

    if-gt v4, v0, :cond_61

    .line 238
    iget v4, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    iget v5, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    add-int/2addr v5, v2

    sub-int v5, v0, v5

    iget v6, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    iget v7, p0, Lcom/android/pretty/GalleryFlow;->aDj:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    .line 239
    iget v4, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    sub-int v5, v2, v0

    iget v6, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    iget v7, p0, Lcom/android/pretty/GalleryFlow;->aDj:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    sub-int v7, v3, v7

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    goto :goto_61

    .line 246
    :cond_e0
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    if-lez v0, :cond_7f

    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_7f

    .line 247
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    goto :goto_7f

    .line 255
    :cond_f6
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    if-gez v0, :cond_99

    .line 256
    iput v8, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    .line 257
    iput v8, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    goto :goto_99

    .line 264
    :cond_ff
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    if-le v0, v3, :cond_106

    .line 265
    iput v11, p0, Lcom/android/pretty/GalleryFlow;->aCX:I

    goto :goto_a3

    .line 266
    :cond_106
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    if-ge v0, v3, :cond_10d

    .line 267
    iput v10, p0, Lcom/android/pretty/GalleryFlow;->aCX:I

    goto :goto_a3

    .line 269
    :cond_10d
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    if-nez v0, :cond_114

    .line 270
    iput v8, p0, Lcom/android/pretty/GalleryFlow;->aCX:I

    goto :goto_a3

    .line 271
    :cond_114
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    if-gez v0, :cond_11b

    .line 272
    iput v10, p0, Lcom/android/pretty/GalleryFlow;->aCX:I

    goto :goto_a3

    .line 274
    :cond_11b
    iput v11, p0, Lcom/android/pretty/GalleryFlow;->aCX:I

    goto :goto_a3

    .line 282
    :cond_11e
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    if-lez v0, :cond_140

    .line 283
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/pretty/GalleryFlow;->aSi(I)I

    move-result v0

    .line 284
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    int-to-float v1, v1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    .line 285
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    mul-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    goto/16 :goto_aa

    .line 287
    :cond_140
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/pretty/GalleryFlow;->aSi(I)I

    move-result v0

    .line 288
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    int-to-float v1, v1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    .line 289
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    mul-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aDg:F

    goto/16 :goto_aa
.end method


# virtual methods
.method public aSf(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 475
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 476
    :cond_e
    return v2

    .line 479
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_60

    .line 509
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcom/android/pretty/GalleryFlow;->invalidate()V

    .line 511
    return v3

    .line 483
    :pswitch_21
    iput-boolean v3, p0, Lcom/android/pretty/GalleryFlow;->aCV:Z

    .line 484
    iput-boolean v2, p0, Lcom/android/pretty/GalleryFlow;->aCT:Z

    .line 485
    iget-boolean v1, p0, Lcom/android/pretty/GalleryFlow;->aCV:Z

    if-eqz v1, :cond_1d

    .line 486
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    invoke-direct {p0, v1}, Lcom/android/pretty/GalleryFlow;->aSi(I)I

    move-result v1

    sub-int v1, v0, v1

    iget v2, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    .line 487
    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aDf:I

    goto :goto_1d

    .line 491
    :pswitch_3b
    iput-boolean v2, p0, Lcom/android/pretty/GalleryFlow;->aCT:Z

    .line 492
    iget-boolean v1, p0, Lcom/android/pretty/GalleryFlow;->aCV:Z

    if-eqz v1, :cond_1d

    .line 493
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    iget v2, p0, Lcom/android/pretty/GalleryFlow;->aDf:I

    sub-int v2, v0, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    .line 494
    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aDf:I

    goto :goto_1d

    .line 499
    :pswitch_4d
    iget-boolean v1, p0, Lcom/android/pretty/GalleryFlow;->aCV:Z

    if-eqz v1, :cond_1d

    .line 500
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    iget v2, p0, Lcom/android/pretty/GalleryFlow;->aDf:I

    sub-int v2, v0, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/pretty/GalleryFlow;->aDh:I

    .line 501
    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aDf:I

    .line 502
    iput-boolean v3, p0, Lcom/android/pretty/GalleryFlow;->aCT:Z

    goto :goto_1d

    .line 481
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_21
        :pswitch_4d
        :pswitch_3b
        :pswitch_4d
    .end packed-switch
.end method

.method public aSs(Ljava/util/List;Ljava/util/List;I)V
    .registers 14

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v9, 0xcc

    const/16 v8, 0xff

    const/4 v1, 0x0

    .line 139
    iput-object p1, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    .line 140
    iput-object p2, p0, Lcom/android/pretty/GalleryFlow;->aCU:Ljava/util/List;

    .line 141
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCU:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    .line 142
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCU:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aCL:I

    .line 143
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    int-to-float v0, v0

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aCN:I

    .line 144
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCL:I

    int-to-float v0, v0

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aCK:I

    .line 145
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCL:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 146
    float-to-double v2, v0

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    float-to-double v4, v0

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v0, v2, v4

    if-gez v0, :cond_103

    .line 147
    invoke-virtual {p0}, Lcom/android/pretty/GalleryFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d004e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aCW:I

    .line 148
    invoke-virtual {p0}, Lcom/android/pretty/GalleryFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d004e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aDc:I

    .line 153
    :goto_78
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v0

    iget v2, p0, Lcom/android/pretty/GalleryFlow;->aCW:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/pretty/GalleryFlow;->aDc:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    iget-object v3, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v0, v2

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aDj:I

    .line 155
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aDd:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a0

    .line 156
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aDd:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 158
    :cond_a0
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCY:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a9

    .line 159
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCY:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 161
    :cond_a9
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCO:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b2

    .line 162
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCO:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    :cond_b2
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    iget v2, p0, Lcom/android/pretty/GalleryFlow;->aCL:I

    const/16 v3, 0xb7

    const/16 v4, 0xf7

    invoke-static {v8, v1, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/pretty/s;->aTJ(III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/pretty/GalleryFlow;->aDd:Landroid/graphics/Bitmap;

    .line 165
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    iget v2, p0, Lcom/android/pretty/GalleryFlow;->aCL:I

    invoke-static {v8, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/pretty/s;->aTJ(III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCY:Landroid/graphics/Bitmap;

    .line 166
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    iget v2, p0, Lcom/android/pretty/GalleryFlow;->aCL:I

    invoke-static {v8, v8, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/pretty/s;->aTJ(III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCO:Landroid/graphics/Bitmap;

    .line 167
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    .line 168
    iput p3, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    .line 169
    iput p3, p0, Lcom/android/pretty/GalleryFlow;->aCP:I

    move v0, v1

    .line 170
    :goto_ef
    iget-object v2, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_124

    .line 171
    iget v2, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    if-ne v0, v2, :cond_11f

    .line 172
    iget-object v2, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 170
    :goto_100
    add-int/lit8 v0, v0, 0x1

    goto :goto_ef

    .line 150
    :cond_103
    invoke-virtual {p0}, Lcom/android/pretty/GalleryFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0053

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aCW:I

    .line 151
    invoke-virtual {p0}, Lcom/android/pretty/GalleryFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0053

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/pretty/GalleryFlow;->aDc:I

    goto/16 :goto_78

    .line 174
    :cond_11f
    iget-object v2, p0, Lcom/android/pretty/GalleryFlow;->aDe:[Z

    aput-boolean v1, v2, v0

    goto :goto_100

    .line 177
    :cond_124
    invoke-virtual {p0, v1}, Lcom/android/pretty/GalleryFlow;->setVisibility(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/pretty/GalleryFlow;->invalidate()V

    .line 138
    return-void
.end method

.method public aSt(Lcom/android/pretty/g;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/pretty/GalleryFlow;->aCZ:Lcom/android/pretty/g;

    .line 77
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 192
    iget-object v0, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/pretty/GalleryFlow;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_f

    .line 193
    :cond_e
    return-void

    .line 195
    :cond_f
    invoke-direct {p0}, Lcom/android/pretty/GalleryFlow;->aSr()V

    move v0, v1

    .line 197
    :goto_13
    iget-object v2, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2b

    .line 198
    iget-object v2, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/pretty/GalleryFlow;->aSh(II)I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Lcom/android/pretty/GalleryFlow;->aSg(Landroid/graphics/Canvas;IZ)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 200
    :cond_2b
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCS:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/pretty/GalleryFlow;->aSg(Landroid/graphics/Canvas;IZ)V

    .line 201
    invoke-direct {p0}, Lcom/android/pretty/GalleryFlow;->aSq()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 202
    invoke-virtual {p0}, Lcom/android/pretty/GalleryFlow;->invalidate()V

    .line 189
    :cond_3a
    :goto_3a
    return-void

    .line 203
    :cond_3b
    iget-boolean v0, p0, Lcom/android/pretty/GalleryFlow;->aDi:Z

    if-nez v0, :cond_3a

    .line 204
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/pretty/GalleryFlow;->setVisibility(I)V

    goto :goto_3a
.end method

.method protected onMeasure(II)V
    .registers 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const-wide v4, 0x408a900000000000L    # 850.0

    .line 65
    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/android/pretty/GalleryFlow;->aCQ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_46

    .line 68
    iget v0, p0, Lcom/android/pretty/GalleryFlow;->aCL:I

    int-to-float v0, v0

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCL:I

    sub-int/2addr v0, v1

    .line 69
    iget v1, p0, Lcom/android/pretty/GalleryFlow;->aCR:I

    iget v2, p0, Lcom/android/pretty/GalleryFlow;->aCM:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x44548000    # 850.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 70
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sub-double v2, v4, v2

    double-to-int v1, v2

    .line 71
    iget v2, p0, Lcom/android/pretty/GalleryFlow;->aCL:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x28

    .line 73
    :cond_46
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 74
    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 64
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lcom/android/pretty/GalleryFlow;->aSf(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 520
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 523
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

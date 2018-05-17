.class Lcom/android/gallery3d/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private awf:I

.field private awg:I

.field private awh:Landroid/animation/ValueAnimator;

.field private awi:Landroid/view/View;

.field private awj:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(ILandroid/view/View;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotX(F)V

    .line 235
    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotY(F)V

    .line 236
    iput p1, p0, Lcom/android/gallery3d/ui/i;->awf:I

    .line 237
    iput-object p2, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/i;->awg:I

    .line 239
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/i;->awj:Landroid/graphics/RectF;

    .line 240
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/i;->awh:Landroid/animation/ValueAnimator;

    .line 241
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awh:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 233
    return-void
.end method

.method private aKG(II)V
    .registers 6

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    .line 345
    iget-object v2, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    .line 344
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 343
    return-void
.end method

.method static synthetic aKQ(Lcom/android/gallery3d/ui/i;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public aKA()F
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public aKB()Landroid/view/View;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    return-object v0
.end method

.method public aKC()Landroid/graphics/RectF;
    .registers 5

    .prologue
    .line 352
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 353
    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 354
    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 355
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 356
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 357
    return-object v0
.end method

.method public aKD()I
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public aKE()F
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    return v0
.end method

.method public aKF()F
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    return v0
.end method

.method public aKH(Landroid/graphics/Rect;IF)V
    .registers 10

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awh:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 371
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awh:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 372
    :goto_14
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/ui/i;->awg:I

    sub-int/2addr v2, p2

    int-to-float v2, v2

    add-float/2addr v0, v2

    mul-float/2addr v0, p3

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 373
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 374
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/i;->aKG(II)V

    .line 375
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setScaleX(F)V

    .line 376
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setScaleY(F)V

    .line 379
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 380
    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 381
    iget-object v2, p0, Lcom/android/gallery3d/ui/i;->awj:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    .line 382
    int-to-float v0, v0

    iget-object v5, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p3

    add-float/2addr v0, v5

    .line 383
    int-to-float v1, v1

    iget-object v5, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p3

    add-float/2addr v1, v5

    .line 381
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 369
    return-void

    .line 371
    :cond_67
    const/4 v0, 0x0

    goto :goto_14
.end method

.method aKI(FFFII)V
    .registers 13

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 411
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/i;->aKz()F

    move-result v0

    .line 412
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/i;->aKA()F

    move-result v2

    .line 415
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/i;->aKE()F

    move-result v1

    sub-float v1, p1, v1

    sub-float v3, p3, v4

    mul-float/2addr v1, v3

    sub-float v1, v0, v1

    .line 416
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/i;->aKF()F

    move-result v0

    sub-float v0, p2, v0

    sub-float v3, p3, v4

    mul-float/2addr v0, v3

    sub-float/2addr v2, v0

    .line 417
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    mul-float v3, v0, p3

    .line 418
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    mul-float v4, v0, p3

    move-object v0, p0

    move v5, p4

    move v6, p5

    .line 419
    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/i;->aKP(FFFFII)V

    .line 410
    return-void
.end method

.method aKJ()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 441
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 442
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 443
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 444
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    instance-of v0, v0, Lcom/android/gallery3d/ui/o;

    if-eqz v0, :cond_25

    .line 445
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    check-cast v0, Lcom/android/gallery3d/ui/o;

    invoke-virtual {v0, v3, v3}, Lcom/android/gallery3d/ui/o;->aLO(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 439
    :cond_25
    return-void
.end method

.method public aKK(I)V
    .registers 2

    .prologue
    .line 251
    iput p1, p0, Lcom/android/gallery3d/ui/i;->awf:I

    .line 250
    return-void
.end method

.method public aKL(I)V
    .registers 2

    .prologue
    .line 256
    iput p1, p0, Lcom/android/gallery3d/ui/i;->awg:I

    .line 255
    return-void
.end method

.method public aKM(FF)V
    .registers 5

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    mul-float v1, p1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 303
    return-void
.end method

.method public aKN(FF)V
    .registers 5

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    mul-float v1, p1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 298
    return-void
.end method

.method public aKO(FF)V
    .registers 6

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    mul-float v2, p1, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 316
    return-void
.end method

.method aKP(FFFFII)V
    .registers 12

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    .line 426
    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    .line 427
    new-instance v2, Landroid/graphics/RectF;

    .line 428
    iget-object v3, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v3, v0

    .line 429
    iget-object v4, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p4

    add-float/2addr v4, v1

    .line 427
    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v2, p5, p6}, Lcom/android/gallery3d/ui/a;->aIB(Landroid/graphics/RectF;II)Landroid/graphics/RectF;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 432
    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->setScaleY(F)V

    .line 433
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 434
    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 435
    iget-object v2, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 436
    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 424
    return-void
.end method

.method public aKr(FJLandroid/animation/TimeInterpolator;)V
    .registers 9

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awh:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 310
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awh:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 311
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awh:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awh:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 308
    return-void
.end method

.method public aKs(FF)Z
    .registers 4

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awj:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public aKt(Lcom/android/gallery3d/ui/i;)V
    .registers 5

    .prologue
    .line 399
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/i;->aKw()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/i;->aKL(I)V

    .line 400
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 402
    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 398
    return-void
.end method

.method public aKu()I
    .registers 3

    .prologue
    .line 321
    iget v0, p0, Lcom/android/gallery3d/ui/i;->awg:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public aKv()I
    .registers 2

    .prologue
    .line 246
    iget v0, p0, Lcom/android/gallery3d/ui/i;->awf:I

    return v0
.end method

.method public aKw()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Lcom/android/gallery3d/ui/i;->awg:I

    return v0
.end method

.method public aKx(F)F
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    div-float/2addr v0, p1

    return v0
.end method

.method public aKy(F)F
    .registers 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    div-float/2addr v0, p1

    return v0
.end method

.method public aKz()F
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x2c

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DataID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/i;->awf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\t left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/i;->awg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 452
    const-string/jumbo v1, "\n\t viewArea = "

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 452
    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awj:Landroid/graphics/RectF;

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 453
    const-string/jumbo v1, "\n\t centerX = "

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 453
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v1

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 454
    const-string/jumbo v1, "\n\t view MeasuredSize = "

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 456
    const-string/jumbo v1, "\n\t view Size = "

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 457
    const-string/jumbo v1, "\n\t view scale = "

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/android/gallery3d/ui/i;->awi:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

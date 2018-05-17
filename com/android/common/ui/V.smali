.class Lcom/android/common/ui/V;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field final synthetic yc:Lcom/android/common/ui/HighSettingLayout;


# direct methods
.method public constructor <init>(Lcom/android/common/ui/HighSettingLayout;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    .line 330
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/V;->setWillNotDraw(Z)V

    .line 329
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 382
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CW(Lcom/android/common/ui/HighSettingLayout;)I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CD(Lcom/android/common/ui/HighSettingLayout;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    return v7

    .line 383
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v2}, Lcom/android/common/ui/HighSettingLayout;->CL(Lcom/android/common/ui/HighSettingLayout;)[I

    move-result-object v2

    aget v2, v2, v7

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v3}, Lcom/android/common/ui/HighSettingLayout;->CL(Lcom/android/common/ui/HighSettingLayout;)[I

    move-result-object v3

    aget v3, v3, v6

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 388
    packed-switch v0, :pswitch_data_10e

    .line 429
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0, v1}, Lcom/android/common/ui/HighSettingLayout;->CQ(Lcom/android/common/ui/HighSettingLayout;I)I

    .line 430
    return v6

    .line 390
    :pswitch_3f
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    iget-object v3, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v3}, Lcom/android/common/ui/HighSettingLayout;->CM(Lcom/android/common/ui/HighSettingLayout;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/ui/HighSettingLayout;->CU(Lcom/android/common/ui/HighSettingLayout;IILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 391
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CG(Lcom/android/common/ui/HighSettingLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 392
    invoke-virtual {v0, v6}, Lcom/android/common/ui/d;->uV(Z)V

    goto :goto_57

    .line 394
    :cond_67
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 395
    return v6

    .line 397
    :cond_6d
    invoke-virtual {p0}, Lcom/android/common/ui/V;->getHeight()I

    move-result v0

    if-gt v2, v0, :cond_8a

    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CF(Lcom/android/common/ui/HighSettingLayout;)I

    move-result v0

    sget v3, Lcom/android/common/ui/HighSettingLayout;->xK:I

    iget-object v4, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v4}, Lcom/android/common/ui/HighSettingLayout;->CX(Lcom/android/common/ui/HighSettingLayout;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    sget v5, Lcom/android/common/ui/HighSettingLayout;->xG:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    if-ge v2, v0, :cond_90

    .line 398
    :cond_8a
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0, v7}, Lcom/android/common/ui/HighSettingLayout;->Cf(Z)V

    .line 399
    return v6

    .line 401
    :cond_90
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    iget-object v3, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v3, p1}, Lcom/android/common/ui/HighSettingLayout;->CV(Lcom/android/common/ui/HighSettingLayout;Landroid/view/MotionEvent;)Lcom/android/common/ui/d;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/ui/HighSettingLayout;->CP(Lcom/android/common/ui/HighSettingLayout;Lcom/android/common/ui/d;)Lcom/android/common/ui/d;

    .line 402
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CH(Lcom/android/common/ui/HighSettingLayout;)Lcom/android/common/ui/d;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 403
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CH(Lcom/android/common/ui/HighSettingLayout;)Lcom/android/common/ui/d;

    move-result-object v0

    instance-of v0, v0, Lcom/android/common/ui/k;

    if-eqz v0, :cond_b9

    .line 404
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CH(Lcom/android/common/ui/HighSettingLayout;)Lcom/android/common/ui/d;

    move-result-object v0

    int-to-float v3, v1

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Lcom/android/common/ui/d;->uN(FF)Z

    goto :goto_39

    .line 407
    :cond_b9
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0, v7}, Lcom/android/common/ui/HighSettingLayout;->Ch(Z)V

    .line 409
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CH(Lcom/android/common/ui/HighSettingLayout;)Lcom/android/common/ui/d;

    move-result-object v0

    int-to-float v3, v1

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Lcom/android/common/ui/d;->uN(FF)Z

    goto/16 :goto_39

    .line 414
    :pswitch_cb
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CH(Lcom/android/common/ui/HighSettingLayout;)Lcom/android/common/ui/d;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CI(Lcom/android/common/ui/HighSettingLayout;)I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v6, :cond_39

    .line 415
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CH(Lcom/android/common/ui/HighSettingLayout;)Lcom/android/common/ui/d;

    move-result-object v0

    int-to-float v3, v1

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Lcom/android/common/ui/d;->uP(FF)Z

    goto/16 :goto_39

    .line 420
    :pswitch_ee
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CH(Lcom/android/common/ui/HighSettingLayout;)Lcom/android/common/ui/d;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 421
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CH(Lcom/android/common/ui/HighSettingLayout;)Lcom/android/common/ui/d;

    move-result-object v0

    int-to-float v3, v1

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Lcom/android/common/ui/d;->uS(FF)Z

    .line 422
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0, v6}, Lcom/android/common/ui/HighSettingLayout;->Ch(Z)V

    .line 423
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0, v4}, Lcom/android/common/ui/HighSettingLayout;->CP(Lcom/android/common/ui/HighSettingLayout;Lcom/android/common/ui/d;)Lcom/android/common/ui/d;

    goto/16 :goto_39

    .line 388
    nop

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_ee
        :pswitch_cb
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 361
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 362
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Cu()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CD(Lcom/android/common/ui/HighSettingLayout;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    return-void

    .line 364
    :cond_15
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CG(Lcom/android/common/ui/HighSettingLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 365
    invoke-virtual {v0, p1}, Lcom/android/common/ui/d;->draw(Landroid/graphics/Canvas;)V

    .line 366
    invoke-virtual {v0}, Lcom/android/common/ui/d;->uH()Z

    move-result v4

    or-int/2addr v1, v4

    .line 367
    invoke-virtual {v0}, Lcom/android/common/ui/d;->uI()Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_20

    .line 369
    :cond_3b
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CT(Lcom/android/common/ui/HighSettingLayout;)Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CH(Lcom/android/common/ui/HighSettingLayout;)Lcom/android/common/ui/d;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CH(Lcom/android/common/ui/HighSettingLayout;)Lcom/android/common/ui/d;

    move-result-object v0

    instance-of v0, v0, Lcom/android/common/ui/k;

    if-eqz v0, :cond_60

    .line 370
    :cond_55
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0, v2}, Lcom/android/common/ui/HighSettingLayout;->Da(Lcom/android/common/ui/HighSettingLayout;I)V

    .line 374
    :goto_5a
    if-eqz v1, :cond_5f

    .line 375
    invoke-virtual {p0}, Lcom/android/common/ui/V;->invalidate()V

    .line 360
    :cond_5f
    return-void

    .line 372
    :cond_60
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/android/common/ui/HighSettingLayout;->Da(Lcom/android/common/ui/HighSettingLayout;I)V

    goto :goto_5a
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    .prologue
    .line 336
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 337
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CY(Lcom/android/common/ui/HighSettingLayout;)V

    .line 338
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    sub-int v1, p4, p2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/common/ui/HighSettingLayout;->CR(Lcom/android/common/ui/HighSettingLayout;I)I

    .line 339
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    sub-int v1, p5, p3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/common/ui/HighSettingLayout;->CS(Lcom/android/common/ui/HighSettingLayout;I)I

    .line 340
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    iget-object v1, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v1}, Lcom/android/common/ui/HighSettingLayout;->CJ(Lcom/android/common/ui/HighSettingLayout;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/ui/HighSettingLayout;->CN(Lcom/android/common/ui/HighSettingLayout;I)I

    .line 341
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    iget-object v1, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v1}, Lcom/android/common/ui/HighSettingLayout;->CK(Lcom/android/common/ui/HighSettingLayout;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/common/ui/HighSettingLayout;->xK:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/common/ui/HighSettingLayout;->xH:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/common/ui/HighSettingLayout;->CO(Lcom/android/common/ui/HighSettingLayout;I)I

    .line 342
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CM(Lcom/android/common/ui/HighSettingLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iput p5, v0, Landroid/graphics/Rect;->bottom:I

    .line 344
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CM(Lcom/android/common/ui/HighSettingLayout;)Landroid/graphics/Rect;

    move-result-object v0

    add-int/lit8 v1, p5, -0x5a

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 345
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CM(Lcom/android/common/ui/HighSettingLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v1}, Lcom/android/common/ui/HighSettingLayout;->CJ(Lcom/android/common/ui/HighSettingLayout;)I

    move-result v1

    add-int/lit8 v1, v1, -0x66

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 346
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v0}, Lcom/android/common/ui/HighSettingLayout;->CM(Lcom/android/common/ui/HighSettingLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v1}, Lcom/android/common/ui/HighSettingLayout;->CJ(Lcom/android/common/ui/HighSettingLayout;)I

    move-result v1

    add-int/lit8 v1, v1, 0x66

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 347
    iget-object v0, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Cu()Z

    move-result v0

    if-nez v0, :cond_73

    return-void

    .line 348
    :cond_73
    const/4 v0, 0x0

    .line 349
    iget-object v1, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v1}, Lcom/android/common/ui/HighSettingLayout;->CG(Lcom/android/common/ui/HighSettingLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xc8

    div-int/2addr v2, v1

    .line 350
    iget-object v1, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v1}, Lcom/android/common/ui/HighSettingLayout;->CG(Lcom/android/common/ui/HighSettingLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_8c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 351
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/common/ui/d;->uK(IIII)V

    .line 352
    instance-of v4, v0, Lcom/android/common/ui/k;

    if-eqz v4, :cond_a1

    add-int/lit8 v1, v1, -0x1

    .line 353
    :cond_a1
    add-int/lit8 v1, v1, 0x1

    .line 354
    sget v4, Lcom/android/common/ui/HighSettingLayout;->xK:I

    sget v5, Lcom/android/common/ui/HighSettingLayout;->xG:I

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    .line 355
    iget-object v5, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v5}, Lcom/android/common/ui/HighSettingLayout;->CE(Lcom/android/common/ui/HighSettingLayout;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v6}, Lcom/android/common/ui/HighSettingLayout;->CF(Lcom/android/common/ui/HighSettingLayout;)I

    move-result v6

    int-to-float v6, v6

    sget v7, Lcom/android/common/ui/HighSettingLayout;->xK:I

    sget v8, Lcom/android/common/ui/HighSettingLayout;->xG:I

    mul-int/2addr v8, v1

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/common/ui/V;->yc:Lcom/android/common/ui/HighSettingLayout;

    invoke-static {v8}, Lcom/android/common/ui/HighSettingLayout;->CJ(Lcom/android/common/ui/HighSettingLayout;)I

    move-result v8

    sget v9, Lcom/android/common/ui/HighSettingLayout;->xJ:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    int-to-float v4, v4

    invoke-static {v8, v4}, Lcom/android/common/h;->aps(FF)F

    move-result v4

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/android/common/ui/d;->uE(FFFF)V

    .line 356
    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/android/common/ui/d;->uO(I)V

    goto :goto_8c

    .line 335
    :cond_d7
    return-void
.end method

.class public Lcom/android/common/ui/EffectPage;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private mState:I

.field private final yM:I

.field private final yN:I

.field private yO:I

.field private yP:I

.field private yQ:I

.field private yR:I

.field private final yS:I

.field private final yT:I

.field private yU:Landroid/widget/FrameLayout;

.field private yV:I

.field private yW:I

.field private yX:I

.field private yY:I

.field private yZ:I

.field private final zA:I

.field private zB:I

.field private final zC:I

.field private zD:Landroid/view/VelocityTracker;

.field private zE:I

.field private za:Landroid/widget/TextView;

.field private zb:Lcom/android/common/ui/ab;

.field private zc:I

.field private zd:I

.field private ze:I

.field private zf:I

.field private zg:Z

.field private zh:Landroid/widget/LinearLayout;

.field private final zi:I

.field private zj:Lcom/android/common/ui/ae;

.field private zk:[Landroid/widget/ImageView;

.field private zl:Lcom/android/common/ui/ac;

.field private zm:Lcom/android/common/setting/ListPreference;

.field private zn:D

.field private zo:I

.field private zp:I

.field private zq:Landroid/widget/Scroller;

.field private zr:Landroid/os/Handler;

.field private final zs:I

.field private zt:I

.field private zu:I

.field private final zv:I

.field private final zw:I

.field private final zx:I

.field private zy:I

.field private final zz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .prologue
    const v5, 0x7f0d0034

    const/4 v0, 0x3

    const/16 v4, 0xff

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object v3, p0, Lcom/android/common/ui/EffectPage;->za:Landroid/widget/TextView;

    .line 43
    iput-object v3, p0, Lcom/android/common/ui/EffectPage;->zm:Lcom/android/common/setting/ListPreference;

    .line 47
    iput v0, p0, Lcom/android/common/ui/EffectPage;->zo:I

    .line 48
    iput v0, p0, Lcom/android/common/ui/EffectPage;->yP:I

    .line 50
    iput-object v3, p0, Lcom/android/common/ui/EffectPage;->zj:Lcom/android/common/ui/ae;

    .line 52
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zx:I

    .line 53
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zw:I

    .line 54
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zz:I

    .line 55
    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yZ:I

    .line 56
    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zy:I

    .line 57
    const v0, 0x7f0200b4

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zC:I

    .line 58
    const v0, 0x7f0200b3

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zs:I

    .line 60
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zi:I

    .line 61
    const v0, 0x7f0200a0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zv:I

    .line 62
    const v0, 0x7f02009f

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zA:I

    .line 64
    iput v2, p0, Lcom/android/common/ui/EffectPage;->yW:I

    .line 65
    iput v2, p0, Lcom/android/common/ui/EffectPage;->yV:I

    .line 66
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yY:I

    .line 68
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yT:I

    .line 70
    iput v2, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    .line 74
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yS:I

    .line 75
    iput v2, p0, Lcom/android/common/ui/EffectPage;->yX:I

    .line 76
    iput v2, p0, Lcom/android/common/ui/EffectPage;->zE:I

    .line 79
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yO:I

    .line 81
    iput-boolean v2, p0, Lcom/android/common/ui/EffectPage;->zg:Z

    .line 82
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yM:I

    .line 84
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yN:I

    .line 86
    iput-object v3, p0, Lcom/android/common/ui/EffectPage;->zD:Landroid/view/VelocityTracker;

    .line 88
    iput-object v3, p0, Lcom/android/common/ui/EffectPage;->zb:Lcom/android/common/ui/ab;

    .line 89
    iput-object v3, p0, Lcom/android/common/ui/EffectPage;->zl:Lcom/android/common/ui/ac;

    .line 537
    new-instance v0, Lcom/android/common/ui/bh;

    invoke-direct {v0, p0}, Lcom/android/common/ui/bh;-><init>(Lcom/android/common/ui/EffectPage;)V

    iput-object v0, p0, Lcom/android/common/ui/EffectPage;->zr:Landroid/os/Handler;

    .line 112
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/ui/EffectPage;->zq:Landroid/widget/Scroller;

    .line 110
    return-void
.end method

.method private DG(I)Landroid/widget/ImageView;
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x2

    .line 484
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 486
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 487
    iget v2, p0, Lcom/android/common/ui/EffectPage;->zi:I

    iget v3, p0, Lcom/android/common/ui/EffectPage;->zi:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 488
    iget v2, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    if-ne p1, v2, :cond_27

    .line 489
    const v2, 0x7f0200a0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 493
    :goto_21
    iget-object v2, p0, Lcom/android/common/ui/EffectPage;->zh:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    return-object v1

    .line 491
    :cond_27
    const v2, 0x7f02009f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_21
.end method

.method private DH(II[Ljava/lang/CharSequence;I)V
    .registers 16

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 416
    mul-int/lit8 v1, p1, 0x3

    .line 417
    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v0, v0, 0x3

    .line 418
    iget v3, p0, Lcom/android/common/ui/EffectPage;->yP:I

    if-le v0, v3, :cond_e

    .line 419
    iget v0, p0, Lcom/android/common/ui/EffectPage;->yP:I

    .line 421
    :cond_e
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v3

    mul-int v4, p1, v3

    move v3, v1

    .line 423
    :goto_15
    if-ge v3, v0, :cond_ac

    move v1, v2

    .line 424
    :goto_18
    iget v5, p0, Lcom/android/common/ui/EffectPage;->zo:I

    if-ge v1, v5, :cond_24

    .line 425
    iget v5, p0, Lcom/android/common/ui/EffectPage;->yP:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v3

    .line 426
    add-int/lit8 v6, p2, -0x1

    if-le v5, v6, :cond_28

    .line 423
    :cond_24
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_15

    .line 430
    :cond_28
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 431
    iget v7, p0, Lcom/android/common/ui/EffectPage;->yW:I

    iget v8, p0, Lcom/android/common/ui/EffectPage;->yT:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/common/ui/EffectPage;->yV:I

    iget v9, p0, Lcom/android/common/ui/EffectPage;->yT:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 430
    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 432
    iget v7, p0, Lcom/android/common/ui/EffectPage;->zd:I

    add-int/2addr v7, v4

    .line 433
    iget v8, p0, Lcom/android/common/ui/EffectPage;->yY:I

    iget v9, p0, Lcom/android/common/ui/EffectPage;->yW:I

    add-int/2addr v8, v9

    mul-int/lit8 v9, p1, 0x3

    sub-int v9, v3, v9

    mul-int/2addr v8, v9

    .line 432
    add-int/2addr v7, v8

    .line 434
    iget v8, p0, Lcom/android/common/ui/EffectPage;->yT:I

    .line 432
    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 435
    iget v7, p0, Lcom/android/common/ui/EffectPage;->zf:I

    iget v8, p0, Lcom/android/common/ui/EffectPage;->yY:I

    iget v9, p0, Lcom/android/common/ui/EffectPage;->yV:I

    add-int/2addr v8, v9

    mul-int/2addr v8, v1

    add-int/2addr v7, v8

    .line 436
    iget v8, p0, Lcom/android/common/ui/EffectPage;->yT:I

    .line 435
    sub-int/2addr v7, v8

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 438
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 439
    aget-object v8, p3, v5

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 441
    const v8, 0x800053

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 442
    iget v8, p0, Lcom/android/common/ui/EffectPage;->zx:I

    iget v9, p0, Lcom/android/common/ui/EffectPage;->zw:I

    invoke-virtual {v7, v8, v2, v2, v9}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 443
    iget v8, p0, Lcom/android/common/ui/EffectPage;->zz:I

    int-to-float v8, v8

    invoke-virtual {v7, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 444
    const/high16 v8, 0x41c80000    # 25.0f

    iget v9, p0, Lcom/android/common/ui/EffectPage;->zy:I

    invoke-virtual {v7, v8, v10, v10, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 445
    iget v8, p0, Lcom/android/common/ui/EffectPage;->yZ:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 446
    iget-object v8, p0, Lcom/android/common/ui/EffectPage;->yU:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    if-ne v5, p4, :cond_a0

    .line 448
    const v6, 0x7f0200b3

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 449
    iput-object v7, p0, Lcom/android/common/ui/EffectPage;->za:Landroid/widget/TextView;

    .line 451
    :cond_a0
    new-instance v6, Lcom/android/common/ui/bj;

    invoke-direct {v6, p0, v5, v7}, Lcom/android/common/ui/bj;-><init>(Lcom/android/common/ui/EffectPage;ILandroid/widget/TextView;)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_18

    .line 415
    :cond_ac
    return-void
.end method

.method private DI(II)V
    .registers 5

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zk:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 519
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zk:[Landroid/widget/ImageView;

    aget-object v0, v0, p2

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 517
    return-void
.end method

.method private DJ()V
    .registers 3

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zr:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 591
    return-void
.end method

.method private DK(I)I
    .registers 8

    .prologue
    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    move v3, v1

    .line 501
    :goto_4
    iget v4, p0, Lcom/android/common/ui/EffectPage;->yP:I

    if-ge v0, v4, :cond_a

    .line 502
    if-eqz v2, :cond_d

    .line 514
    :cond_a
    div-int/lit8 v0, v3, 0x3

    return v0

    :cond_d
    move v4, v1

    .line 505
    :goto_e
    iget v5, p0, Lcom/android/common/ui/EffectPage;->zo:I

    if-ge v4, v5, :cond_1a

    .line 506
    iget v5, p0, Lcom/android/common/ui/EffectPage;->yP:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v0

    if-ne p1, v5, :cond_1d

    .line 509
    const/4 v2, 0x1

    move v3, v0

    .line 501
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 505
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_e
.end method

.method private DL(I)V
    .registers 3

    .prologue
    .line 566
    iget v0, p0, Lcom/android/common/ui/EffectPage;->zp:I

    invoke-direct {p0, v0, p1}, Lcom/android/common/ui/EffectPage;->DW(II)V

    .line 567
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/android/common/ui/EffectPage;->DY(I)V

    .line 565
    return-void
.end method

.method private DM(IIF)V
    .registers 5

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zb:Lcom/android/common/ui/ab;

    if-eqz v0, :cond_9

    .line 609
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zb:Lcom/android/common/ui/ab;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/common/ui/ab;->tS(IIF)V

    .line 607
    :cond_9
    return-void
.end method

.method private DN(I)V
    .registers 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zb:Lcom/android/common/ui/ab;

    if-eqz v0, :cond_9

    .line 597
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zb:Lcom/android/common/ui/ab;

    invoke-interface {v0, p1}, Lcom/android/common/ui/ab;->tT(I)V

    .line 595
    :cond_9
    return-void
.end method

.method private DO()V
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zb:Lcom/android/common/ui/ab;

    if-eqz v0, :cond_9

    .line 615
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zb:Lcom/android/common/ui/ab;

    invoke-interface {v0}, Lcom/android/common/ui/ab;->tU()V

    .line 613
    :cond_9
    return-void
.end method

.method private DP(Lcom/android/common/ui/ae;)V
    .registers 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zl:Lcom/android/common/ui/ac;

    if-eqz v0, :cond_9

    .line 633
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zl:Lcom/android/common/ui/ac;

    invoke-interface {v0, p1}, Lcom/android/common/ui/ac;->tY(Lcom/android/common/ui/ae;)V

    .line 631
    :cond_9
    return-void
.end method

.method private DQ()V
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zb:Lcom/android/common/ui/ab;

    if-eqz v0, :cond_9

    .line 621
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zb:Lcom/android/common/ui/ab;

    invoke-interface {v0}, Lcom/android/common/ui/ab;->tV()V

    .line 619
    :cond_9
    return-void
.end method

.method private DR()V
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zb:Lcom/android/common/ui/ab;

    if-eqz v0, :cond_9

    .line 627
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zb:Lcom/android/common/ui/ab;

    invoke-interface {v0}, Lcom/android/common/ui/ab;->tW()V

    .line 625
    :cond_9
    return-void
.end method

.method private DS(IIF)V
    .registers 5

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zb:Lcom/android/common/ui/ab;

    if-eqz v0, :cond_9

    .line 603
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zb:Lcom/android/common/ui/ab;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/common/ui/ab;->tX(IIF)V

    .line 601
    :cond_9
    return-void
.end method

.method private DV()V
    .registers 5

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zm:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 406
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zm:Lcom/android/common/setting/ListPreference;

    iget-object v2, p0, Lcom/android/common/ui/EffectPage;->zm:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v2}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/common/setting/ListPreference;->Vr(Ljava/lang/String;)I

    move-result v2

    .line 408
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->yU:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 409
    const/4 v0, 0x0

    :goto_18
    iget v3, p0, Lcom/android/common/ui/EffectPage;->zB:I

    if-ge v0, v3, :cond_23

    .line 410
    array-length v3, v1

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/common/ui/EffectPage;->DH(II[Ljava/lang/CharSequence;I)V

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 412
    :cond_23
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->yU:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    neg-int v1, v1

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setX(F)V

    .line 404
    return-void
.end method

.method private DW(II)V
    .registers 9

    .prologue
    const v4, 0x3ecccccd    # 0.4f

    const/4 v1, 0x0

    .line 571
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zq:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 572
    iget v0, p0, Lcom/android/common/ui/EffectPage;->yX:I

    add-int/2addr v0, p1

    .line 573
    int-to-float v2, v0

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2e

    .line 574
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v0

    .line 581
    :goto_1c
    iget v2, p0, Lcom/android/common/ui/EffectPage;->yX:I

    sub-int v3, v0, v2

    .line 583
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zq:Landroid/widget/Scroller;

    if-nez p2, :cond_42

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    :goto_28
    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 570
    return-void

    .line 575
    :cond_2e
    int-to-float v0, v0

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    cmpg-float v0, v0, v2

    if-gez v0, :cond_40

    .line 576
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v0

    neg-int v0, v0

    goto :goto_1c

    :cond_40
    move v0, v1

    .line 578
    goto :goto_1c

    :cond_42
    move v5, p2

    .line 583
    goto :goto_28
.end method

.method private DX(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 479
    const-string/jumbo v0, "-"

    const-string/jumbo v1, "_"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {p1, v0, p3}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method private DY(I)V
    .registers 3

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/android/common/ui/EffectPage;->DJ()V

    .line 588
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zr:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 586
    return-void
.end method

.method private DZ(I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 523
    if-ltz p1, :cond_26

    iget v0, p0, Lcom/android/common/ui/EffectPage;->zB:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_26

    .line 524
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v0

    neg-int v0, v0

    mul-int/2addr v0, p1

    .line 525
    iget v1, p0, Lcom/android/common/ui/EffectPage;->yX:I

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v2

    iget v3, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 524
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zp:I

    .line 527
    iget v0, p0, Lcom/android/common/ui/EffectPage;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 528
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/common/ui/EffectPage;->DL(I)V

    .line 522
    :cond_26
    :goto_26
    return-void

    .line 530
    :cond_27
    invoke-direct {p0, v4}, Lcom/android/common/ui/EffectPage;->DL(I)V

    goto :goto_26
.end method

.method static synthetic Ea(Lcom/android/common/ui/EffectPage;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->za:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic Eb(Lcom/android/common/ui/EffectPage;)Lcom/android/common/setting/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zm:Lcom/android/common/setting/ListPreference;

    return-object v0
.end method

.method static synthetic Ec(Lcom/android/common/ui/EffectPage;)Landroid/widget/Scroller;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zq:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic Ed(Lcom/android/common/ui/EffectPage;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/EffectPage;->zt:I

    return v0
.end method

.method static synthetic Ee(Lcom/android/common/ui/EffectPage;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/EffectPage;->zB:I

    return v0
.end method

.method static synthetic Ef(Lcom/android/common/ui/EffectPage;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/EffectPage;->za:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic Eg(Lcom/android/common/ui/EffectPage;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/EffectPage;->zt:I

    return p1
.end method

.method static synthetic Eh(Lcom/android/common/ui/EffectPage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ui/EffectPage;->DJ()V

    return-void
.end method

.method static synthetic Ei(Lcom/android/common/ui/EffectPage;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/ui/EffectPage;->DN(I)V

    return-void
.end method

.method static synthetic Ej(Lcom/android/common/ui/EffectPage;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/common/ui/EffectPage;->DX(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Ek(Lcom/android/common/ui/EffectPage;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/ui/EffectPage;->DY(I)V

    return-void
.end method


# virtual methods
.method public DA()V
    .registers 1

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/common/ui/EffectPage;->DR()V

    .line 184
    return-void
.end method

.method public DB()V
    .registers 4

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->yU:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2e

    .line 392
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->yU:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/common/ui/EffectPage;->zm:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vz()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 393
    if-eqz v0, :cond_2e

    .line 394
    iget-object v1, p0, Lcom/android/common/ui/EffectPage;->za:Landroid/widget/TextView;

    if-eq v0, v1, :cond_2e

    .line 395
    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 396
    iget-object v1, p0, Lcom/android/common/ui/EffectPage;->za:Landroid/widget/TextView;

    if-eqz v1, :cond_2c

    .line 397
    iget-object v1, p0, Lcom/android/common/ui/EffectPage;->za:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 399
    :cond_2c
    iput-object v0, p0, Lcom/android/common/ui/EffectPage;->za:Landroid/widget/TextView;

    .line 390
    :cond_2e
    return-void
.end method

.method public DC(Z)V
    .registers 4

    .prologue
    .line 170
    if-eqz p1, :cond_6

    .line 171
    invoke-direct {p0}, Lcom/android/common/ui/EffectPage;->DQ()V

    .line 169
    :goto_5
    return-void

    .line 173
    :cond_6
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zm:Lcom/android/common/setting/ListPreference;

    iget-object v1, p0, Lcom/android/common/ui/EffectPage;->zm:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vr(Ljava/lang/String;)I

    move-result v0

    .line 174
    invoke-direct {p0, v0}, Lcom/android/common/ui/EffectPage;->DK(I)I

    move-result v0

    .line 175
    iget v1, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    if-ne v0, v1, :cond_1e

    .line 176
    invoke-direct {p0}, Lcom/android/common/ui/EffectPage;->DO()V

    goto :goto_5

    .line 178
    :cond_1e
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/common/ui/EffectPage;->mState:I

    .line 179
    invoke-direct {p0, v0}, Lcom/android/common/ui/EffectPage;->DZ(I)V

    goto :goto_5
.end method

.method public DD(Lcom/android/common/setting/ListPreference;F)V
    .registers 7

    .prologue
    const/4 v3, -0x1

    const/high16 v2, 0x40400000    # 3.0f

    .line 116
    iput-object p1, p0, Lcom/android/common/ui/EffectPage;->zm:Lcom/android/common/setting/ListPreference;

    .line 117
    invoke-virtual {p1}, Lcom/android/common/setting/ListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 118
    array-length v0, v0

    .line 120
    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yP:I

    .line 121
    iget v0, p0, Lcom/android/common/ui/EffectPage;->yP:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zB:I

    .line 124
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 127
    new-instance v1, Lcom/android/common/ui/bi;

    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/common/ui/bi;-><init>(Lcom/android/common/ui/EffectPage;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/common/ui/EffectPage;->yU:Landroid/widget/FrameLayout;

    .line 136
    iget-object v1, p0, Lcom/android/common/ui/EffectPage;->yU:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/android/common/ui/EffectPage;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 141
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 140
    const/4 v2, -0x2

    .line 139
    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 143
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 146
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/common/ui/EffectPage;->zh:Landroid/widget/LinearLayout;

    .line 147
    iget-object v1, p0, Lcom/android/common/ui/EffectPage;->zh:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/android/common/ui/EffectPage;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget v0, p0, Lcom/android/common/ui/EffectPage;->zB:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/common/ui/EffectPage;->zk:[Landroid/widget/ImageView;

    .line 151
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zm:Lcom/android/common/setting/ListPreference;

    iget-object v1, p0, Lcom/android/common/ui/EffectPage;->zm:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vr(Ljava/lang/String;)I

    move-result v0

    .line 152
    invoke-direct {p0, v0}, Lcom/android/common/ui/EffectPage;->DK(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    .line 154
    const/4 v0, 0x0

    :goto_86
    iget v1, p0, Lcom/android/common/ui/EffectPage;->zB:I

    if-ge v0, v1, :cond_9a

    .line 155
    iget v1, p0, Lcom/android/common/ui/EffectPage;->zB:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_97

    .line 156
    iget-object v1, p0, Lcom/android/common/ui/EffectPage;->zk:[Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/common/ui/EffectPage;->DG(I)Landroid/widget/ImageView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 154
    :cond_97
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 160
    :cond_9a
    invoke-virtual {p0, p2}, Lcom/android/common/ui/EffectPage;->Dz(F)V

    .line 115
    return-void
.end method

.method public DE(Lcom/android/common/ui/ab;)V
    .registers 2

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/common/ui/EffectPage;->zb:Lcom/android/common/ui/ab;

    .line 196
    return-void
.end method

.method public DF(Lcom/android/common/ui/ac;)V
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/common/ui/EffectPage;->zl:Lcom/android/common/ui/ac;

    .line 200
    return-void
.end method

.method public DT(II)V
    .registers 8

    .prologue
    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    .line 298
    invoke-direct {p0, p1, v4, v3}, Lcom/android/common/ui/EffectPage;->DM(IIF)V

    .line 300
    iget v0, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    .line 301
    iget v1, p0, Lcom/android/common/ui/EffectPage;->yX:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_48

    .line 302
    iget v1, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    .line 307
    :cond_1d
    :goto_1d
    iget v1, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    if-eq v0, v1, :cond_26

    .line 308
    iget v1, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/EffectPage;->DI(II)V

    .line 313
    :cond_26
    iput v4, p0, Lcom/android/common/ui/EffectPage;->yX:I

    .line 314
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->yU:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/common/ui/EffectPage;->yX:I

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v2

    iget v3, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setX(F)V

    .line 316
    iget v0, p0, Lcom/android/common/ui/EffectPage;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    .line 317
    invoke-direct {p0}, Lcom/android/common/ui/EffectPage;->DO()V

    .line 318
    iput v4, p0, Lcom/android/common/ui/EffectPage;->mState:I

    .line 320
    :cond_42
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->yU:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 297
    return-void

    .line 303
    :cond_48
    iget v1, p0, Lcom/android/common/ui/EffectPage;->yX:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1d

    .line 304
    iget v1, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    goto :goto_1d
.end method

.method public DU(II)V
    .registers 7

    .prologue
    .line 273
    const/4 v0, 0x0

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/common/ui/EffectPage;->DS(IIF)V

    .line 274
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->yU:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 275
    iget v0, p0, Lcom/android/common/ui/EffectPage;->yX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yX:I

    .line 277
    iget v0, p0, Lcom/android/common/ui/EffectPage;->zB:I

    iget v1, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/EffectPage;->yS:I

    sub-int/2addr v0, v1

    .line 278
    iget v1, p0, Lcom/android/common/ui/EffectPage;->yX:I

    if-ge v1, v0, :cond_29

    .line 279
    iput v0, p0, Lcom/android/common/ui/EffectPage;->yX:I

    .line 282
    :cond_29
    iget v0, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/EffectPage;->yS:I

    add-int/2addr v0, v1

    .line 283
    iget v1, p0, Lcom/android/common/ui/EffectPage;->yX:I

    if-le v1, v0, :cond_39

    .line 284
    iput v0, p0, Lcom/android/common/ui/EffectPage;->yX:I

    .line 287
    :cond_39
    iget v0, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    .line 288
    iget v1, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    iget v2, p0, Lcom/android/common/ui/EffectPage;->yX:I

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v3

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    .line 289
    iget v1, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    if-eq v0, v1, :cond_50

    .line 290
    iget v1, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/EffectPage;->DI(II)V

    .line 293
    :cond_50
    iget v0, p0, Lcom/android/common/ui/EffectPage;->yX:I

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yX:I

    .line 272
    return-void
.end method

.method public Dy()Lcom/android/common/ui/ae;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zj:Lcom/android/common/ui/ae;

    return-object v0
.end method

.method public Dz(F)V
    .registers 15

    .prologue
    const v9, 0x7f0d0062

    const v5, 0x7f0d0037

    const/4 v8, 0x3

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    const v4, 0x7f0d0039

    .line 209
    iget-wide v0, p0, Lcom/android/common/ui/EffectPage;->zn:D

    float-to-double v2, p1

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_b8

    .line 210
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/common/ui/EffectPage;->zn:D

    .line 211
    iget-wide v0, p0, Lcom/android/common/ui/EffectPage;->zn:D

    const-wide v2, 0x3ffc71c720000000L    # 1.7777777910232544

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_b9

    .line 212
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yY:I

    .line 213
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zd:I

    .line 214
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->ze:I

    .line 215
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zf:I

    .line 228
    :goto_57
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v0

    iget v1, p0, Lcom/android/common/ui/EffectPage;->zd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/EffectPage;->ze:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/EffectPage;->yY:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yW:I

    .line 231
    iget v0, p0, Lcom/android/common/ui/EffectPage;->yW:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/android/common/ui/EffectPage;->zn:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yV:I

    .line 232
    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v0

    iget v1, p0, Lcom/android/common/ui/EffectPage;->yV:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/EffectPage;->yY:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 233
    iget v1, p0, Lcom/android/common/ui/EffectPage;->zf:I

    .line 232
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zc:I

    .line 237
    invoke-direct {p0}, Lcom/android/common/ui/EffectPage;->DV()V

    .line 240
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zj:Lcom/android/common/ui/ae;

    if-nez v0, :cond_120

    .line 241
    new-instance v12, Lcom/android/common/ui/ae;

    .line 242
    new-instance v0, Lcom/android/common/ui/ad;

    iget v2, p0, Lcom/android/common/ui/EffectPage;->zd:I

    .line 243
    iget v3, p0, Lcom/android/common/ui/EffectPage;->ze:I

    .line 244
    iget v4, p0, Lcom/android/common/ui/EffectPage;->zf:I

    .line 245
    iget v5, p0, Lcom/android/common/ui/EffectPage;->zc:I

    move-object v1, p0

    .line 242
    invoke-direct/range {v0 .. v5}, Lcom/android/common/ui/ad;-><init>(Lcom/android/common/ui/EffectPage;IIII)V

    .line 246
    iget v4, p0, Lcom/android/common/ui/EffectPage;->yY:I

    .line 247
    iget v5, p0, Lcom/android/common/ui/EffectPage;->yW:I

    .line 248
    iget v6, p0, Lcom/android/common/ui/EffectPage;->yV:I

    .line 249
    iget v7, p0, Lcom/android/common/ui/EffectPage;->yS:I

    .line 252
    iget-wide v10, p0, Lcom/android/common/ui/EffectPage;->zn:D

    move-object v1, v12

    move-object v2, p0

    move-object v3, v0

    move v9, v8

    .line 241
    invoke-direct/range {v1 .. v11}, Lcom/android/common/ui/ae;-><init>(Lcom/android/common/ui/EffectPage;Lcom/android/common/ui/ad;IIIIIID)V

    iput-object v12, p0, Lcom/android/common/ui/EffectPage;->zj:Lcom/android/common/ui/ae;

    .line 264
    :goto_b3
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zj:Lcom/android/common/ui/ae;

    invoke-direct {p0, v0}, Lcom/android/common/ui/EffectPage;->DP(Lcom/android/common/ui/ae;)V

    .line 208
    :cond_b8
    return-void

    .line 216
    :cond_b9
    iget-wide v0, p0, Lcom/android/common/ui/EffectPage;->zn:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_f3

    .line 217
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yY:I

    .line 218
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zd:I

    .line 219
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->ze:I

    .line 220
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zf:I

    goto/16 :goto_57

    .line 222
    :cond_f3
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yY:I

    .line 223
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zd:I

    .line 224
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->ze:I

    .line 225
    invoke-virtual {p0}, Lcom/android/common/ui/EffectPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/EffectPage;->zf:I

    goto/16 :goto_57

    .line 254
    :cond_120
    iget-object v6, p0, Lcom/android/common/ui/EffectPage;->zj:Lcom/android/common/ui/ae;

    new-instance v0, Lcom/android/common/ui/ad;

    iget v2, p0, Lcom/android/common/ui/EffectPage;->zd:I

    .line 255
    iget v3, p0, Lcom/android/common/ui/EffectPage;->ze:I

    .line 256
    iget v4, p0, Lcom/android/common/ui/EffectPage;->zf:I

    .line 257
    iget v5, p0, Lcom/android/common/ui/EffectPage;->zc:I

    move-object v1, p0

    .line 254
    invoke-direct/range {v0 .. v5}, Lcom/android/common/ui/ad;-><init>(Lcom/android/common/ui/EffectPage;IIII)V

    iput-object v0, v6, Lcom/android/common/ui/ae;->zJ:Lcom/android/common/ui/ad;

    .line 258
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zj:Lcom/android/common/ui/ae;

    iget v1, p0, Lcom/android/common/ui/EffectPage;->yY:I

    iput v1, v0, Lcom/android/common/ui/ae;->zN:I

    .line 259
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zj:Lcom/android/common/ui/ae;

    iget v1, p0, Lcom/android/common/ui/EffectPage;->yW:I

    iput v1, v0, Lcom/android/common/ui/ae;->zO:I

    .line 260
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zj:Lcom/android/common/ui/ae;

    iget v1, p0, Lcom/android/common/ui/EffectPage;->yV:I

    iput v1, v0, Lcom/android/common/ui/ae;->zM:I

    .line 261
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zj:Lcom/android/common/ui/ae;

    iget-wide v2, p0, Lcom/android/common/ui/EffectPage;->zn:D

    iput-wide v2, v0, Lcom/android/common/ui/ae;->zP:D

    goto/16 :goto_b3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 326
    iget v0, p0, Lcom/android/common/ui/EffectPage;->zB:I

    if-ne v0, v4, :cond_c

    .line 327
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 329
    :cond_c
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zD:Landroid/view/VelocityTracker;

    if-nez v0, :cond_16

    .line 330
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/EffectPage;->zD:Landroid/view/VelocityTracker;

    .line 332
    :cond_16
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zD:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_a8

    .line 380
    :cond_2e
    :goto_2e
    iget-boolean v0, p0, Lcom/android/common/ui/EffectPage;->zg:Z

    if-nez v0, :cond_35

    .line 381
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 384
    :cond_35
    return v4

    .line 338
    :pswitch_36
    iput v0, p0, Lcom/android/common/ui/EffectPage;->zt:I

    .line 339
    iput v1, p0, Lcom/android/common/ui/EffectPage;->zu:I

    .line 340
    iget v0, p0, Lcom/android/common/ui/EffectPage;->zt:I

    iput v0, p0, Lcom/android/common/ui/EffectPage;->yR:I

    .line 341
    iput-boolean v3, p0, Lcom/android/common/ui/EffectPage;->zg:Z

    .line 342
    invoke-direct {p0}, Lcom/android/common/ui/EffectPage;->DJ()V

    goto :goto_2e

    .line 345
    :pswitch_44
    iget v2, p0, Lcom/android/common/ui/EffectPage;->zt:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/common/ui/EffectPage;->DU(II)V

    .line 346
    iput v0, p0, Lcom/android/common/ui/EffectPage;->zt:I

    .line 347
    iput v1, p0, Lcom/android/common/ui/EffectPage;->zu:I

    .line 348
    iput-boolean v4, p0, Lcom/android/common/ui/EffectPage;->zg:Z

    goto :goto_2e

    .line 352
    :pswitch_52
    iget-object v1, p0, Lcom/android/common/ui/EffectPage;->zD:Landroid/view/VelocityTracker;

    .line 353
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 354
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    .line 356
    iget v2, p0, Lcom/android/common/ui/EffectPage;->yO:I

    if-le v1, v2, :cond_88

    iget v2, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    if-lez v2, :cond_88

    .line 357
    iget v1, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/common/ui/EffectPage;->DZ(I)V

    .line 365
    :goto_6d
    iget v1, p0, Lcom/android/common/ui/EffectPage;->yR:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/common/ui/EffectPage;->yM:I

    if-ge v0, v1, :cond_7a

    .line 366
    iput-boolean v3, p0, Lcom/android/common/ui/EffectPage;->zg:Z

    .line 369
    :cond_7a
    iput v3, p0, Lcom/android/common/ui/EffectPage;->zt:I

    .line 370
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zD:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2e

    .line 371
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->zD:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 372
    iput-object v5, p0, Lcom/android/common/ui/EffectPage;->zD:Landroid/view/VelocityTracker;

    goto :goto_2e

    .line 358
    :cond_88
    iget v2, p0, Lcom/android/common/ui/EffectPage;->yO:I

    neg-int v2, v2

    if-ge v1, v2, :cond_9d

    iget v1, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    iget v2, p0, Lcom/android/common/ui/EffectPage;->zB:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_9d

    .line 359
    iget v1, p0, Lcom/android/common/ui/EffectPage;->yQ:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/common/ui/EffectPage;->DZ(I)V

    goto :goto_6d

    .line 361
    :cond_9d
    iget v1, p0, Lcom/android/common/ui/EffectPage;->zt:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/common/ui/EffectPage;->zp:I

    .line 362
    invoke-direct {p0, v3}, Lcom/android/common/ui/EffectPage;->DL(I)V

    goto :goto_6d

    .line 336
    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_36
        :pswitch_52
        :pswitch_44
        :pswitch_52
    .end packed-switch
.end method

.method public setVisibility(I)V
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->yU:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 191
    iget-object v0, p0, Lcom/android/common/ui/EffectPage;->yU:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 193
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 189
    return-void
.end method

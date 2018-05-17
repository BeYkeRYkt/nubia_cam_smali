.class public Lcom/android/common/ui/MySwitch;
.super Landroid/widget/CompoundButton;
.source "SourceFile"


# static fields
.field private static final qm:[I


# instance fields
.field private qA:Landroid/content/res/ColorStateList;

.field private qB:Ljava/lang/CharSequence;

.field private qC:Ljava/lang/CharSequence;

.field private qD:Landroid/text/TextPaint;

.field private qE:Landroid/graphics/drawable/Drawable;

.field private qF:I

.field private qG:Landroid/graphics/drawable/Drawable;

.field private qH:Landroid/graphics/drawable/Drawable;

.field private qI:I

.field private qJ:F

.field private qK:I

.field private qL:I

.field private qM:I

.field private qN:I

.field private qO:F

.field private qP:F

.field private qQ:Landroid/graphics/drawable/Drawable;

.field private qR:Landroid/graphics/drawable/Drawable;

.field private qS:Landroid/graphics/drawable/Drawable;

.field private qT:Landroid/view/VelocityTracker;

.field private qn:I

.field private qo:Landroid/text/Layout;

.field private qp:Landroid/text/Layout;

.field private qq:I

.field private qr:I

.field private qs:I

.field private qt:I

.field private qu:I

.field private qv:I

.field private qw:I

.field private qx:I

.field private qy:I

.field private final qz:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 87
    const v1, 0x10100a0

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 86
    sput-object v0, Lcom/android/common/ui/MySwitch;->qm:[I

    .line 29
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/common/ui/MySwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 95
    const v0, 0x7f01000c

    invoke-direct {p0, p1, p2, v0}, Lcom/android/common/ui/MySwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/MySwitch;->qT:Landroid/view/VelocityTracker;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/common/ui/MySwitch;->qD:Landroid/text/TextPaint;

    .line 102
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qD:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 105
    sget-object v0, Lcom/android/camera/k;->apa:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/MySwitch;->qS:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/MySwitch;->qR:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->vK()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 110
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qR:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/common/ui/MySwitch;->qQ:Landroid/graphics/drawable/Drawable;

    .line 116
    :goto_43
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/MySwitch;->qH:Landroid/graphics/drawable/Drawable;

    .line 117
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/MySwitch;->qG:Landroid/graphics/drawable/Drawable;

    .line 118
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->vJ()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 119
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qG:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/common/ui/MySwitch;->qE:Landroid/graphics/drawable/Drawable;

    .line 126
    :goto_5b
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/MySwitch;->qC:Ljava/lang/CharSequence;

    .line 127
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/MySwitch;->qB:Ljava/lang/CharSequence;

    .line 128
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/common/ui/MySwitch;->qK:I

    .line 129
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/common/ui/MySwitch;->qu:I

    .line 131
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/common/ui/MySwitch;->qt:I

    .line 133
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/common/ui/MySwitch;->qv:I

    .line 135
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 136
    if-eqz v1, :cond_94

    .line 137
    invoke-virtual {p0, p1, v1}, Lcom/android/common/ui/MySwitch;->vQ(Landroid/content/Context;I)V

    .line 139
    :cond_94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/common/ui/MySwitch;->qN:I

    .line 143
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/MySwitch;->qn:I

    .line 146
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->refreshDrawableState()V

    .line 147
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/MySwitch;->setChecked(Z)V

    .line 98
    return-void

    .line 112
    :cond_b2
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/MySwitch;->qQ:Landroid/graphics/drawable/Drawable;

    goto :goto_43

    .line 121
    :cond_ba
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/MySwitch;->qE:Landroid/graphics/drawable/Drawable;

    goto :goto_5b
.end method

.method private vH(Z)V
    .registers 2

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Lcom/android/common/ui/MySwitch;->setChecked(Z)V

    .line 522
    return-void
.end method

.method private vI(Landroid/view/MotionEvent;)V
    .registers 4

    .prologue
    .line 495
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 496
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 497
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 498
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 494
    return-void
.end method

.method private vJ()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qG:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qH:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private vK()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 202
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qS:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qR:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private vL()Z
    .registers 3

    .prologue
    .line 527
    iget v0, p0, Lcom/android/common/ui/MySwitch;->qJ:F

    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->vM()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private vM()I
    .registers 3

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qQ:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    .line 655
    const/4 v0, 0x0

    return v0

    .line 657
    :cond_6
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qQ:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 658
    iget v0, p0, Lcom/android/common/ui/MySwitch;->qy:I

    iget v1, p0, Lcom/android/common/ui/MySwitch;->qL:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private vN(FF)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 415
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qE:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 416
    iget v1, p0, Lcom/android/common/ui/MySwitch;->qx:I

    iget v2, p0, Lcom/android/common/ui/MySwitch;->qN:I

    sub-int/2addr v1, v2

    .line 417
    iget v2, p0, Lcom/android/common/ui/MySwitch;->qs:I

    iget v3, p0, Lcom/android/common/ui/MySwitch;->qJ:F

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/common/ui/MySwitch;->qN:I

    sub-int/2addr v2, v3

    .line 418
    iget v3, p0, Lcom/android/common/ui/MySwitch;->qL:I

    add-int/2addr v3, v2

    .line 419
    iget-object v4, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 418
    add-int/2addr v3, v4

    .line 419
    iget-object v4, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 418
    add-int/2addr v3, v4

    .line 419
    iget v4, p0, Lcom/android/common/ui/MySwitch;->qN:I

    .line 418
    add-int/2addr v3, v4

    .line 420
    iget v4, p0, Lcom/android/common/ui/MySwitch;->qq:I

    iget v5, p0, Lcom/android/common/ui/MySwitch;->qN:I

    add-int/2addr v4, v5

    .line 421
    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_43

    int-to-float v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_43

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_43

    int-to-float v1, v4

    cmpg-float v1, p2, v1

    if-gez v1, :cond_43

    const/4 v0, 0x1

    :cond_43
    return v0
.end method

.method private vO(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .registers 10

    .prologue
    .line 403
    if-nez p1, :cond_1f

    .line 404
    const-string/jumbo v1, ""

    .line 406
    :goto_5
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->qD:Landroid/text/TextPaint;

    .line 407
    iget-object v3, p0, Lcom/android/common/ui/MySwitch;->qD:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 408
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    .line 406
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    :cond_1f
    move-object v1, p1

    goto :goto_5
.end method

.method private vT(II)V
    .registers 4

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    packed-switch p1, :pswitch_data_12

    .line 198
    :goto_4
    invoke-virtual {p0, v0, p2}, Lcom/android/common/ui/MySwitch;->vS(Landroid/graphics/Typeface;I)V

    .line 182
    return-void

    .line 186
    :pswitch_8
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_4

    .line 190
    :pswitch_b
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_4

    .line 194
    :pswitch_e
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_4

    .line 184
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private vU(Landroid/view/MotionEvent;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 502
    iput v1, p0, Lcom/android/common/ui/MySwitch;->qM:I

    .line 503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_35

    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->isEnabled()Z

    move-result v0

    .line 505
    :goto_e
    invoke-direct {p0, p1}, Lcom/android/common/ui/MySwitch;->vI(Landroid/view/MotionEvent;)V

    .line 507
    if-eqz v0, :cond_3c

    .line 509
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qT:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 510
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qT:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 511
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/common/ui/MySwitch;->qn:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_37

    .line 512
    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_31

    move v1, v2

    .line 516
    :cond_31
    :goto_31
    invoke-direct {p0, v1}, Lcom/android/common/ui/MySwitch;->vH(Z)V

    .line 501
    :goto_34
    return-void

    :cond_35
    move v0, v1

    .line 503
    goto :goto_e

    .line 514
    :cond_37
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->vL()Z

    move-result v1

    goto :goto_31

    .line 518
    :cond_3c
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/MySwitch;->vH(Z)V

    goto :goto_34
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/android/common/ui/MySwitch;->vP(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 672
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 674
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getDrawableState()[I

    move-result-object v0

    .line 676
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qE:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 677
    :cond_10
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qQ:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qQ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 679
    :cond_19
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->invalidate()V

    .line 671
    return-void
.end method

.method public getCompoundPaddingRight()I
    .registers 3

    .prologue
    .line 646
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lcom/android/common/ui/MySwitch;->qy:I

    add-int/2addr v0, v1

    .line 647
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 648
    iget v1, p0, Lcom/android/common/ui/MySwitch;->qv:I

    add-int/2addr v0, v1

    .line 650
    :cond_14
    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4

    .prologue
    .line 663
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 664
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 665
    sget-object v1, Lcom/android/common/ui/MySwitch;->qm:[I

    invoke-static {v0, v1}, Lcom/android/common/ui/MySwitch;->mergeDrawableStates([I[I)[I

    .line 667
    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    .line 585
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 587
    iget v2, p0, Lcom/android/common/ui/MySwitch;->qs:I

    .line 588
    iget v3, p0, Lcom/android/common/ui/MySwitch;->qx:I

    .line 589
    iget v4, p0, Lcom/android/common/ui/MySwitch;->qw:I

    .line 590
    iget v5, p0, Lcom/android/common/ui/MySwitch;->qq:I

    .line 592
    const/4 v0, 0x0

    .line 593
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->vK()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 594
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->vL()Z

    move-result v0

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qS:Landroid/graphics/drawable/Drawable;

    :goto_1b
    iput-object v0, p0, Lcom/android/common/ui/MySwitch;->qQ:Landroid/graphics/drawable/Drawable;

    move v0, v1

    .line 597
    :cond_1e
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->vJ()Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 598
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->vL()Z

    move-result v0

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qH:Landroid/graphics/drawable/Drawable;

    :goto_2c
    iput-object v0, p0, Lcom/android/common/ui/MySwitch;->qE:Landroid/graphics/drawable/Drawable;

    .line 602
    :goto_2e
    if-eqz v1, :cond_33

    .line 603
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->refreshDrawableState()V

    .line 605
    :cond_33
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qQ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 606
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qQ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 608
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 610
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qQ:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 611
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    .line 612
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iget v2, p0, Lcom/android/common/ui/MySwitch;->qI:I

    add-int/2addr v1, v2

    .line 613
    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v2

    .line 614
    iget-object v4, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v5, v4

    iget v6, p0, Lcom/android/common/ui/MySwitch;->qI:I

    sub-int/2addr v4, v6

    .line 615
    invoke-virtual {p1, v0, v3, v2, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 617
    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->qE:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 618
    iget v2, p0, Lcom/android/common/ui/MySwitch;->qJ:F

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 619
    iget-object v3, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v3, v0, v3

    add-int/2addr v3, v2

    .line 620
    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/common/ui/MySwitch;->qL:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    .line 621
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    .line 622
    iget-object v5, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/common/ui/MySwitch;->qF:I

    add-int/2addr v5, v6

    .line 624
    iget-object v6, p0, Lcom/android/common/ui/MySwitch;->qE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3, v0, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 625
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 628
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qA:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_b4

    .line 629
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qD:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/android/common/ui/MySwitch;->qA:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getDrawableState()[I

    move-result-object v6

    .line 630
    iget-object v7, p0, Lcom/android/common/ui/MySwitch;->qA:Landroid/content/res/ColorStateList;

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    .line 629
    invoke-virtual {v5, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 632
    :cond_b4
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qD:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getDrawableState()[I

    move-result-object v5

    iput-object v5, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 634
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->vL()Z

    move-result v0

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qp:Landroid/text/Layout;

    .line 636
    :goto_c4
    if-eqz v0, :cond_e2

    .line 637
    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 638
    add-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 637
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 639
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 641
    :cond_e2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 584
    return-void

    .line 594
    :cond_e6
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qR:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1b

    .line 598
    :cond_ea
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qG:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2c

    .line 634
    :cond_ee
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qo:Landroid/text/Layout;

    goto :goto_c4

    :cond_f1
    move v1, v0

    goto/16 :goto_2e
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 550
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 552
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->vM()I

    move-result v0

    :cond_e
    int-to-float v0, v0

    iput v0, p0, Lcom/android/common/ui/MySwitch;->qJ:F

    .line 554
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getPaddingEnd()I

    move-result v1

    sub-int v2, v0, v1

    .line 555
    iget v0, p0, Lcom/android/common/ui/MySwitch;->qy:I

    sub-int v3, v2, v0

    .line 558
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    sparse-switch v0, :sswitch_data_60

    .line 561
    :sswitch_28
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getPaddingTop()I

    move-result v1

    .line 562
    iget v0, p0, Lcom/android/common/ui/MySwitch;->qr:I

    add-int/2addr v0, v1

    .line 577
    :goto_2f
    iput v3, p0, Lcom/android/common/ui/MySwitch;->qs:I

    .line 578
    iput v1, p0, Lcom/android/common/ui/MySwitch;->qx:I

    .line 579
    iput v0, p0, Lcom/android/common/ui/MySwitch;->qq:I

    .line 580
    iput v2, p0, Lcom/android/common/ui/MySwitch;->qw:I

    .line 549
    return-void

    .line 566
    :sswitch_38
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 567
    iget v1, p0, Lcom/android/common/ui/MySwitch;->qr:I

    div-int/lit8 v1, v1, 0x2

    .line 566
    sub-int v1, v0, v1

    .line 568
    iget v0, p0, Lcom/android/common/ui/MySwitch;->qr:I

    add-int/2addr v0, v1

    .line 569
    goto :goto_2f

    .line 572
    :sswitch_52
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 573
    iget v1, p0, Lcom/android/common/ui/MySwitch;->qr:I

    sub-int v1, v0, v1

    .line 574
    goto :goto_2f

    .line 558
    :sswitch_data_60
    .sparse-switch
        0x10 -> :sswitch_38
        0x30 -> :sswitch_28
        0x50 -> :sswitch_52
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .registers 7

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qp:Landroid/text/Layout;

    if-nez v0, :cond_c

    .line 352
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qC:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/common/ui/MySwitch;->vO(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/MySwitch;->qp:Landroid/text/Layout;

    .line 354
    :cond_c
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qo:Landroid/text/Layout;

    if-nez v0, :cond_18

    .line 355
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qB:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/common/ui/MySwitch;->vO(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/MySwitch;->qo:Landroid/text/Layout;

    .line 357
    :cond_18
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qQ:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 358
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qp:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qo:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 359
    iget v1, p0, Lcom/android/common/ui/MySwitch;->qu:I

    .line 360
    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/android/common/ui/MySwitch;->qK:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 359
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 363
    iget v0, p0, Lcom/android/common/ui/MySwitch;->qt:I

    if-gtz v0, :cond_8e

    .line 364
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qQ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 369
    :goto_50
    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->qE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/common/ui/MySwitch;->qL:I

    .line 370
    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->qE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/common/ui/MySwitch;->qF:I

    .line 372
    iput v1, p0, Lcom/android/common/ui/MySwitch;->qy:I

    .line 373
    iput v0, p0, Lcom/android/common/ui/MySwitch;->qr:I

    .line 375
    iget v1, p0, Lcom/android/common/ui/MySwitch;->qr:I

    iget v2, p0, Lcom/android/common/ui/MySwitch;->qF:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/common/ui/MySwitch;->qI:I

    .line 377
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 378
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getMeasuredHeight()I

    move-result v1

    .line 379
    if-ge v1, v0, :cond_8d

    .line 380
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_9e

    .line 381
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getMeasuredWidthAndState()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/common/ui/MySwitch;->setMeasuredDimension(II)V

    .line 350
    :cond_8d
    :goto_8d
    return-void

    .line 366
    :cond_8e
    iget v0, p0, Lcom/android/common/ui/MySwitch;->qt:I

    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/common/ui/MySwitch;->qz:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_50

    .line 383
    :cond_9e
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/common/ui/MySwitch;->setMeasuredDimension(II)V

    goto :goto_8d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 427
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qT:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 429
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_15

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 432
    :cond_15
    packed-switch v0, :pswitch_data_ac

    .line 491
    :cond_18
    :goto_18
    :pswitch_18
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 434
    :pswitch_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 436
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/MySwitch;->vN(FF)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 437
    iput v4, p0, Lcom/android/common/ui/MySwitch;->qM:I

    .line 438
    iput v0, p0, Lcom/android/common/ui/MySwitch;->qO:F

    .line 439
    iput v1, p0, Lcom/android/common/ui/MySwitch;->qP:F

    goto :goto_18

    .line 445
    :pswitch_38
    iget v0, p0, Lcom/android/common/ui/MySwitch;->qM:I

    packed-switch v0, :pswitch_data_b8

    goto :goto_18

    .line 451
    :pswitch_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 452
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 453
    iget v2, p0, Lcom/android/common/ui/MySwitch;->qO:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/common/ui/MySwitch;->qN:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_64

    .line 454
    iget v2, p0, Lcom/android/common/ui/MySwitch;->qP:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/common/ui/MySwitch;->qN:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_18

    .line 455
    :cond_64
    iput v5, p0, Lcom/android/common/ui/MySwitch;->qM:I

    .line 456
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 457
    iput v0, p0, Lcom/android/common/ui/MySwitch;->qO:F

    .line 458
    iput v1, p0, Lcom/android/common/ui/MySwitch;->qP:F

    .line 459
    return v4

    .line 465
    :pswitch_72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 466
    iget v1, p0, Lcom/android/common/ui/MySwitch;->qO:F

    sub-float v1, v0, v1

    .line 467
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/common/ui/MySwitch;->qJ:F

    add-float/2addr v1, v3

    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->vM()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 468
    iget v2, p0, Lcom/android/common/ui/MySwitch;->qJ:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_98

    .line 469
    iput v1, p0, Lcom/android/common/ui/MySwitch;->qJ:F

    .line 470
    iput v0, p0, Lcom/android/common/ui/MySwitch;->qO:F

    .line 471
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->invalidate()V

    .line 473
    :cond_98
    return v4

    .line 481
    :pswitch_99
    iget v0, p0, Lcom/android/common/ui/MySwitch;->qM:I

    if-ne v0, v5, :cond_a1

    .line 482
    invoke-direct {p0, p1}, Lcom/android/common/ui/MySwitch;->vU(Landroid/view/MotionEvent;)V

    .line 483
    return v4

    .line 485
    :cond_a1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/ui/MySwitch;->qM:I

    .line 486
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qT:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_18

    .line 432
    nop

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_99
        :pswitch_38
        :pswitch_99
    .end packed-switch

    .line 445
    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_18
        :pswitch_3e
        :pswitch_72
    .end packed-switch
.end method

.method public setChecked(Z)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 533
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->vK()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 534
    if-eqz p1, :cond_30

    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qS:Landroid/graphics/drawable/Drawable;

    :goto_c
    iput-object v0, p0, Lcom/android/common/ui/MySwitch;->qQ:Landroid/graphics/drawable/Drawable;

    move v0, v1

    .line 537
    :goto_f
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->vJ()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 538
    if-eqz p1, :cond_33

    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qH:Landroid/graphics/drawable/Drawable;

    :goto_19
    iput-object v0, p0, Lcom/android/common/ui/MySwitch;->qE:Landroid/graphics/drawable/Drawable;

    .line 541
    :goto_1b
    if-eqz v1, :cond_20

    .line 542
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->refreshDrawableState()V

    .line 543
    :cond_20
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 544
    if-eqz p1, :cond_29

    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->vM()I

    move-result v2

    :cond_29
    int-to-float v0, v2

    iput v0, p0, Lcom/android/common/ui/MySwitch;->qJ:F

    .line 545
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->invalidate()V

    .line 531
    return-void

    .line 534
    :cond_30
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qR:Landroid/graphics/drawable/Drawable;

    goto :goto_c

    .line 538
    :cond_33
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qG:Landroid/graphics/drawable/Drawable;

    goto :goto_19

    :cond_36
    move v1, v0

    goto :goto_1b

    :cond_38
    move v0, v2

    goto :goto_f
.end method

.method public vP(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qp:Landroid/text/Layout;

    .line 397
    :goto_8
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 395
    :cond_14
    :goto_14
    return-void

    .line 396
    :cond_15
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qo:Landroid/text/Layout;

    goto :goto_8

    .line 398
    :cond_18
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14
.end method

.method public vQ(Landroid/content/Context;I)V
    .registers 8

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 151
    sget-object v0, Lcom/android/camera/k;->apb:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_3c

    .line 158
    iput-object v1, p0, Lcom/android/common/ui/MySwitch;->qA:Landroid/content/res/ColorStateList;

    .line 164
    :goto_10
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 165
    if-eqz v1, :cond_2b

    .line 166
    int-to-float v2, v1

    iget-object v3, p0, Lcom/android/common/ui/MySwitch;->qD:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2b

    .line 167
    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->qD:Landroid/text/TextPaint;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 168
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->requestLayout()V

    .line 174
    :cond_2b
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 175
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 177
    invoke-direct {p0, v1, v2}, Lcom/android/common/ui/MySwitch;->vT(II)V

    .line 179
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    return-void

    .line 161
    :cond_3c
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/MySwitch;->qA:Landroid/content/res/ColorStateList;

    goto :goto_10
.end method

.method public vR(Landroid/graphics/Typeface;)V
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qD:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 269
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qD:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 271
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->requestLayout()V

    .line 272
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->invalidate()V

    .line 267
    :cond_13
    return-void
.end method

.method public vS(Landroid/graphics/Typeface;I)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 212
    if-lez p2, :cond_34

    .line 213
    if-nez p1, :cond_2b

    .line 214
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 219
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/common/ui/MySwitch;->vR(Landroid/graphics/Typeface;)V

    .line 221
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 222
    :goto_13
    not-int v0, v0

    and-int/2addr v0, p2

    .line 223
    iget-object v3, p0, Lcom/android/common/ui/MySwitch;->qD:Landroid/text/TextPaint;

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 224
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qD:Landroid/text/TextPaint;

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_32

    const/high16 v0, -0x41800000    # -0.25f

    :goto_27
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 211
    :goto_2a
    return-void

    .line 216
    :cond_2b
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_a

    :cond_30
    move v0, v1

    .line 221
    goto :goto_13

    :cond_32
    move v0, v2

    .line 224
    goto :goto_27

    .line 226
    :cond_34
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qD:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->qD:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/common/ui/MySwitch;->vR(Landroid/graphics/Typeface;)V

    goto :goto_2a
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 684
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qE:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->qQ:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_b

    const/4 v0, 0x0

    goto :goto_b
.end method

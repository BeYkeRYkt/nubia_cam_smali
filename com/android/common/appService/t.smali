.class public Lcom/android/common/appService/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private iA:Lcom/android/common/ui/EffectPage;

.field private iB:Lcom/android/common/ui/RotateImageView;

.field private iC:Lcom/android/common/appService/v;

.field private iD:Lcom/android/common/appService/w;

.field private iE:Lcom/android/common/effects/e;

.field private iF:Ljava/lang/String;

.field private iG:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private iH:Lcom/android/common/appService/u;

.field private iI:Lcom/android/common/setting/ListPreference;

.field private iJ:Lcom/android/common/appService/x;

.field private iK:Landroid/animation/AnimatorSet;

.field private ix:Lcom/android/common/appService/W;

.field private iy:Lcom/android/common/camerastate/a;

.field private iz:Lcom/android/common/appService/x;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/common/setting/ListPreference;Landroid/view/View;II)V
    .registers 9

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/common/appService/t;->ix:Lcom/android/common/appService/W;

    .line 46
    iput-object v1, p0, Lcom/android/common/appService/t;->iy:Lcom/android/common/camerastate/a;

    .line 47
    iput-object v1, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    .line 48
    iput-object v1, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    .line 50
    iput-object v1, p0, Lcom/android/common/appService/t;->iK:Landroid/animation/AnimatorSet;

    .line 56
    new-instance v0, Lcom/android/common/appService/w;

    invoke-direct {v0, p0, v1}, Lcom/android/common/appService/w;-><init>(Lcom/android/common/appService/t;Lcom/android/common/appService/w;)V

    iput-object v0, p0, Lcom/android/common/appService/t;->iD:Lcom/android/common/appService/w;

    .line 58
    iput-object v1, p0, Lcom/android/common/appService/t;->iI:Lcom/android/common/setting/ListPreference;

    .line 59
    iput-object v1, p0, Lcom/android/common/appService/t;->iH:Lcom/android/common/appService/u;

    .line 60
    iput-object v1, p0, Lcom/android/common/appService/t;->iC:Lcom/android/common/appService/v;

    .line 61
    iput-object v1, p0, Lcom/android/common/appService/t;->iz:Lcom/android/common/appService/x;

    .line 62
    iput-object v1, p0, Lcom/android/common/appService/t;->iJ:Lcom/android/common/appService/x;

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/common/appService/t;->iF:Ljava/lang/String;

    .line 272
    new-instance v0, Lcom/android/common/appService/al;

    invoke-direct {v0, p0}, Lcom/android/common/appService/al;-><init>(Lcom/android/common/appService/t;)V

    iput-object v0, p0, Lcom/android/common/appService/t;->iG:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 79
    if-nez p2, :cond_3e

    .line 80
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    invoke-virtual {p3, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void

    .line 84
    :cond_3e
    iput-object p1, p0, Lcom/android/common/appService/t;->ix:Lcom/android/common/appService/W;

    .line 85
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/t;->iy:Lcom/android/common/camerastate/a;

    .line 86
    iput-object p2, p0, Lcom/android/common/appService/t;->iI:Lcom/android/common/setting/ListPreference;

    .line 87
    iget-object v0, p0, Lcom/android/common/appService/t;->iI:Lcom/android/common/setting/ListPreference;

    invoke-direct {p0, p3, v0, p4}, Lcom/android/common/appService/t;->kZ(Landroid/view/View;Lcom/android/common/setting/ListPreference;I)V

    .line 88
    invoke-direct {p0, p3, p5}, Lcom/android/common/appService/t;->la(Landroid/view/View;I)V

    .line 78
    return-void
.end method

.method private kT()V
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/common/appService/t;->iK:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_16

    .line 219
    iget-object v0, p0, Lcom/android/common/appService/t;->iK:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 220
    iget-object v0, p0, Lcom/android/common/appService/t;->iK:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 222
    :cond_11
    iget-object v0, p0, Lcom/android/common/appService/t;->iK:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 217
    :cond_16
    return-void
.end method

.method private kU(Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/effects/e;->IN(Ljava/lang/String;Z)V

    .line 582
    iget-object v0, p0, Lcom/android/common/appService/t;->ix:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->aw()V

    .line 580
    return-void
.end method

.method private kV()V
    .registers 5

    .prologue
    const v3, 0x7f02009e

    const v2, 0x7f02009d

    .line 413
    iget-object v0, p0, Lcom/android/common/appService/t;->iF:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/appService/t;->iI:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 414
    const-string/jumbo v0, "none"

    iget-object v1, p0, Lcom/android/common/appService/t;->iF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string/jumbo v0, "none"

    iget-object v1, p0, Lcom/android/common/appService/t;->iI:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 413
    if-eqz v0, :cond_4a

    .line 415
    :cond_2e
    const-string/jumbo v0, "none"

    iget-object v1, p0, Lcom/android/common/appService/t;->iI:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 416
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 417
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/RotateImageView;->setBackgroundResource(I)V

    .line 429
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/android/common/appService/t;->iI:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/t;->iF:Ljava/lang/String;

    .line 412
    return-void

    .line 419
    :cond_53
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    goto :goto_4a

    .line 422
    :cond_59
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 423
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setBackgroundResource(I)V

    goto :goto_4a

    .line 425
    :cond_67
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    goto :goto_4a
.end method

.method private kX()Z
    .registers 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/common/appService/t;->iI:Lcom/android/common/setting/ListPreference;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private kY()Z
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private kZ(Landroid/view/View;Lcom/android/common/setting/ListPreference;I)V
    .registers 7

    .prologue
    .line 437
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/EffectPage;

    iput-object v0, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    .line 439
    iget-object v0, p0, Lcom/android/common/appService/t;->ix:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/common/ui/EffectPage;->setVisibility(I)V

    .line 441
    iget-object v1, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-virtual {v1, p2, v0}, Lcom/android/common/ui/EffectPage;->DD(Lcom/android/common/setting/ListPreference;F)V

    .line 442
    iget-object v0, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    new-instance v1, Lcom/android/common/appService/ao;

    invoke-direct {v1, p0}, Lcom/android/common/appService/ao;-><init>(Lcom/android/common/appService/t;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/EffectPage;->DE(Lcom/android/common/ui/ab;)V

    .line 494
    iget-object v0, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    new-instance v1, Lcom/android/common/appService/ap;

    invoke-direct {v1, p0}, Lcom/android/common/appService/ap;-><init>(Lcom/android/common/appService/t;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/EffectPage;->DF(Lcom/android/common/ui/ac;)V

    .line 436
    return-void
.end method

.method static synthetic lA(Lcom/android/common/appService/t;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/common/appService/t;->kY()Z

    move-result v0

    return v0
.end method

.method static synthetic lB(Lcom/android/common/appService/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/appService/t;->lf()V

    return-void
.end method

.method static synthetic lC(Lcom/android/common/appService/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/appService/t;->lh()V

    return-void
.end method

.method static synthetic lD(Lcom/android/common/appService/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/appService/t;->li()V

    return-void
.end method

.method private la(Landroid/view/View;I)V
    .registers 10

    .prologue
    const/4 v6, -0x2

    .line 506
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    .line 507
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/common/appService/Y;->tG(Landroid/view/View;)V

    .line 508
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcom/android/common/appService/aq;

    invoke-direct {v1, p0}, Lcom/android/common/appService/aq;-><init>(Lcom/android/common/appService/t;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    invoke-direct {p0}, Lcom/android/common/appService/t;->kV()V

    .line 532
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 533
    new-instance v0, Lcom/android/common/appService/x;

    .line 534
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move-object v1, p0

    .line 533
    invoke-direct/range {v0 .. v5}, Lcom/android/common/appService/x;-><init>(Lcom/android/common/appService/t;IIII)V

    iput-object v0, p0, Lcom/android/common/appService/t;->iz:Lcom/android/common/appService/x;

    .line 535
    new-instance v0, Lcom/android/common/appService/x;

    .line 538
    iget-object v1, p0, Lcom/android/common/appService/t;->ix:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 539
    iget-object v1, p0, Lcom/android/common/appService/t;->ix:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    move-object v1, p0

    move v2, v6

    move v3, v6

    .line 535
    invoke-direct/range {v0 .. v5}, Lcom/android/common/appService/x;-><init>(Lcom/android/common/appService/t;IIII)V

    iput-object v0, p0, Lcom/android/common/appService/t;->iJ:Lcom/android/common/appService/x;

    .line 505
    return-void
.end method

.method private lb()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    .line 227
    iget-object v0, p0, Lcom/android/common/appService/t;->iK:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_76

    .line 228
    const-wide/16 v0, 0x64

    .line 229
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e75c28f    # 0.24f

    const v4, 0x3db851ec    # 0.09f

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 230
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 232
    iget-object v4, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v9, [F

    fill-array-data v6, :array_78

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 233
    iget-object v5, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v9, [F

    fill-array-data v7, :array_80

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 234
    iget-object v6, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v9, [F

    fill-array-data v8, :array_88

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 236
    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 237
    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 239
    invoke-virtual {v5, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 240
    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 241
    invoke-virtual {v6, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/common/appService/t;->iK:Landroid/animation/AnimatorSet;

    .line 244
    iget-object v0, p0, Lcom/android/common/appService/t;->iK:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v5, v1, v2

    aput-object v6, v1, v9

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 246
    iget-object v0, p0, Lcom/android/common/appService/t;->iK:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/common/appService/an;

    invoke-direct {v1, p0}, Lcom/android/common/appService/an;-><init>(Lcom/android/common/appService/t;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 226
    :cond_76
    return-void

    .line 232
    nop

    :array_78
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    .line 233
    :array_80
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    .line 234
    :array_88
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private lc()V
    .registers 5

    .prologue
    .line 126
    new-instance v0, Lcom/android/common/effects/e;

    iget-object v1, p0, Lcom/android/common/appService/t;->ix:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/android/common/appService/t;->iI:Lcom/android/common/setting/ListPreference;

    .line 128
    iget-object v3, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    invoke-virtual {v3}, Lcom/android/common/ui/EffectPage;->Dy()Lcom/android/common/ui/ae;

    move-result-object v3

    .line 126
    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/effects/e;-><init>(Landroid/content/Context;Lcom/android/common/setting/ListPreference;Lcom/android/common/ui/ae;)V

    iput-object v0, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    .line 129
    iget-object v0, p0, Lcom/android/common/appService/t;->ix:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->ry(Lcom/android/common/appService/O;)V

    .line 130
    iget-object v0, p0, Lcom/android/common/appService/t;->ix:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    iget-object v1, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->atk(Lcom/android/common/a/b;)V

    .line 131
    iget-object v0, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    iget-object v1, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    invoke-virtual {v1}, Lcom/android/common/ui/EffectPage;->Dy()Lcom/android/common/ui/ae;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/effects/e;->IF(Lcom/android/common/ui/ae;)V

    .line 132
    iget-object v0, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    new-instance v1, Lcom/android/common/appService/am;

    invoke-direct {v1, p0}, Lcom/android/common/appService/am;-><init>(Lcom/android/common/appService/t;)V

    invoke-virtual {v0, v1}, Lcom/android/common/effects/e;->IG(Lcom/android/common/effects/f;)V

    .line 125
    return-void
.end method

.method private ld(Landroid/animation/Animator;)Z
    .registers 3

    .prologue
    .line 213
    if-eqz p1, :cond_f

    .line 214
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    .line 213
    :goto_c
    return v0

    .line 214
    :cond_d
    const/4 v0, 0x1

    goto :goto_c

    .line 213
    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private le()V
    .registers 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/common/appService/t;->iH:Lcom/android/common/appService/u;

    if-eqz v0, :cond_9

    .line 555
    iget-object v0, p0, Lcom/android/common/appService/t;->iH:Lcom/android/common/appService/u;

    invoke-interface {v0}, Lcom/android/common/appService/u;->lE()V

    .line 553
    :cond_9
    return-void
.end method

.method private lf()V
    .registers 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/common/appService/t;->iH:Lcom/android/common/appService/u;

    if-eqz v0, :cond_9

    .line 567
    iget-object v0, p0, Lcom/android/common/appService/t;->iH:Lcom/android/common/appService/u;

    invoke-interface {v0}, Lcom/android/common/appService/u;->lF()V

    .line 565
    :cond_9
    return-void
.end method

.method private lg()V
    .registers 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/common/appService/t;->iH:Lcom/android/common/appService/u;

    if-eqz v0, :cond_9

    .line 549
    iget-object v0, p0, Lcom/android/common/appService/t;->iH:Lcom/android/common/appService/u;

    invoke-interface {v0}, Lcom/android/common/appService/u;->lG()V

    .line 547
    :cond_9
    return-void
.end method

.method private lh()V
    .registers 3

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/android/common/appService/t;->le()V

    .line 587
    iget-object v0, p0, Lcom/android/common/appService/t;->iz:Lcom/android/common/appService/x;

    invoke-direct {p0, v0}, Lcom/android/common/appService/t;->lk(Lcom/android/common/appService/x;)V

    .line 588
    iget-object v0, p0, Lcom/android/common/appService/t;->iy:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/UIState;->afm:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amN(Lcom/android/common/camerastate/UIState;)V

    .line 585
    return-void
.end method

.method private li()V
    .registers 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/common/appService/t;->iJ:Lcom/android/common/appService/x;

    invoke-direct {p0, v0}, Lcom/android/common/appService/t;->lk(Lcom/android/common/appService/x;)V

    .line 593
    invoke-direct {p0}, Lcom/android/common/appService/t;->lg()V

    .line 591
    return-void
.end method

.method private lk(Lcom/android/common/appService/x;)V
    .registers 4

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 573
    iget v1, p1, Lcom/android/common/appService/x;->iO:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 574
    iget v1, p1, Lcom/android/common/appService/x;->iM:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 575
    iget v1, p1, Lcom/android/common/appService/x;->iP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 576
    iget v1, p1, Lcom/android/common/appService/x;->iN:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 577
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->requestLayout()V

    .line 571
    return-void
.end method

.method private lp()V
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    invoke-virtual {v0}, Lcom/android/common/ui/EffectPage;->DA()V

    .line 310
    return-void
.end method

.method static synthetic lr(Lcom/android/common/appService/t;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/t;->ix:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic ls(Lcom/android/common/appService/t;)Lcom/android/common/camerastate/a;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/t;->iy:Lcom/android/common/camerastate/a;

    return-object v0
.end method

.method static synthetic lt(Lcom/android/common/appService/t;)Lcom/android/common/ui/EffectPage;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    return-object v0
.end method

.method static synthetic lu(Lcom/android/common/appService/t;)Lcom/android/common/ui/RotateImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic lv(Lcom/android/common/appService/t;)Lcom/android/common/appService/v;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/t;->iC:Lcom/android/common/appService/v;

    return-object v0
.end method

.method static synthetic lw(Lcom/android/common/appService/t;)Lcom/android/common/appService/w;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/t;->iD:Lcom/android/common/appService/w;

    return-object v0
.end method

.method static synthetic lx(Lcom/android/common/appService/t;)Lcom/android/common/effects/e;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    return-object v0
.end method

.method static synthetic ly(Lcom/android/common/appService/t;)Lcom/android/common/setting/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/t;->iI:Lcom/android/common/setting/ListPreference;

    return-object v0
.end method

.method static synthetic lz(Lcom/android/common/appService/t;Lcom/android/common/effects/e;)Lcom/android/common/effects/e;
    .registers 2

    iput-object p1, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    return-object p1
.end method


# virtual methods
.method public kL()V
    .registers 3

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/android/common/appService/t;->kY()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 336
    invoke-direct {p0}, Lcom/android/common/appService/t;->kX()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 340
    iget-object v0, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/EffectPage;->setVisibility(I)V

    .line 342
    const-string/jumbo v0, "EffectPageManager"

    const-string/jumbo v1, "debug, excute click effect button"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-direct {p0}, Lcom/android/common/appService/t;->kV()V

    .line 344
    iget-object v0, p0, Lcom/android/common/appService/t;->iI:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/common/appService/t;->kU(Ljava/lang/String;Z)V

    .line 347
    iget-object v0, p0, Lcom/android/common/appService/t;->ix:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lcom/android/common/setting/o;->XU(I)V

    .line 334
    return-void

    .line 337
    :cond_35
    return-void
.end method

.method public kM(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Lcom/android/common/appService/t;->kX()Z

    move-result v0

    if-nez v0, :cond_8

    .line 101
    return-void

    .line 104
    :cond_8
    iget-object v0, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    if-eqz v0, :cond_1e

    .line 105
    iget-object v0, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    invoke-virtual {v0}, Lcom/android/common/ui/EffectPage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/appService/t;->iG:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    invoke-virtual {v0}, Lcom/android/common/effects/e;->release()V

    .line 107
    iput-object v2, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    .line 110
    :cond_1e
    iget-object v0, p0, Lcom/android/common/appService/t;->ix:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/effects/d;->IC(Landroid/content/res/Resources;)V

    .line 112
    invoke-direct {p0}, Lcom/android/common/appService/t;->lc()V

    .line 114
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 117
    if-eqz p1, :cond_44

    iget-object v0, p0, Lcom/android/common/appService/t;->iy:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_44

    .line 118
    invoke-direct {p0}, Lcom/android/common/appService/t;->lp()V

    .line 99
    :goto_43
    return-void

    .line 120
    :cond_44
    const-string/jumbo v0, "EffectPageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "function state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/appService/t;->iy:Lcom/android/common/camerastate/a;

    invoke-virtual {v2}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/android/common/appService/t;->lh()V

    goto :goto_43
.end method

.method public kN()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 315
    invoke-direct {p0}, Lcom/android/common/appService/t;->kX()Z

    move-result v0

    if-nez v0, :cond_8

    .line 316
    return v1

    .line 318
    :cond_8
    iget-object v0, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    if-eqz v0, :cond_13

    .line 319
    iget-object v0, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    invoke-virtual {v0}, Lcom/android/common/effects/e;->IH()Z

    move-result v0

    return v0

    .line 321
    :cond_13
    return v1
.end method

.method public kO()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 325
    invoke-direct {p0}, Lcom/android/common/appService/t;->kX()Z

    move-result v0

    if-nez v0, :cond_8

    .line 326
    return v1

    .line 328
    :cond_8
    iget-object v0, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    if-eqz v0, :cond_13

    .line 329
    iget-object v0, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    invoke-virtual {v0}, Lcom/android/common/effects/e;->II()Z

    move-result v0

    return v0

    .line 331
    :cond_13
    return v1
.end method

.method public kP()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 164
    invoke-direct {p0}, Lcom/android/common/appService/t;->kX()Z

    move-result v0

    if-nez v0, :cond_a

    .line 165
    return-void

    .line 168
    :cond_a
    iget-object v0, p0, Lcom/android/common/appService/t;->ix:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->rz(Lcom/android/common/appService/O;)V

    .line 170
    invoke-direct {p0}, Lcom/android/common/appService/t;->kT()V

    .line 172
    iget-object v0, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    invoke-virtual {v0}, Lcom/android/common/ui/EffectPage;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_29

    .line 173
    iget-object v0, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    invoke-virtual {v0}, Lcom/android/common/effects/e;->release()V

    .line 174
    iput-object v3, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    .line 181
    :goto_23
    iget-object v0, p0, Lcom/android/common/appService/t;->iD:Lcom/android/common/appService/w;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/w;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 163
    return-void

    .line 176
    :cond_29
    iget-object v0, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/EffectPage;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    invoke-virtual {v0}, Lcom/android/common/ui/EffectPage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/android/common/appService/t;->iG:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    goto :goto_23
.end method

.method public kQ(Lcom/android/common/appService/u;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/common/appService/t;->iH:Lcom/android/common/appService/u;

    .line 91
    return-void
.end method

.method public kR(F)V
    .registers 3

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/android/common/appService/t;->kX()Z

    move-result v0

    if-nez v0, :cond_7

    .line 303
    return-void

    .line 305
    :cond_7
    iget-object v0, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    if-eqz v0, :cond_10

    .line 306
    iget-object v0, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/EffectPage;->Dz(F)V

    .line 301
    :cond_10
    return-void
.end method

.method public kS(J)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_e

    .line 186
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_f

    .line 187
    :cond_e
    return-void

    .line 190
    :cond_f
    invoke-direct {p0}, Lcom/android/common/appService/t;->lb()V

    .line 192
    iget-object v0, p0, Lcom/android/common/appService/t;->iK:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/android/common/appService/t;->ld(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 193
    return-void

    .line 196
    :cond_1b
    cmp-long v0, p1, v2

    if-lez v0, :cond_2a

    .line 197
    iget-object v0, p0, Lcom/android/common/appService/t;->iK:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 202
    :goto_24
    iget-object v0, p0, Lcom/android/common/appService/t;->iK:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 184
    return-void

    .line 199
    :cond_2a
    iget-object v0, p0, Lcom/android/common/appService/t;->iK:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_24
.end method

.method public kW(Z)V
    .registers 4

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/common/appService/t;->kX()Z

    move-result v0

    if-nez v0, :cond_7

    .line 370
    return-void

    .line 372
    :cond_7
    if-eqz p1, :cond_1a

    .line 373
    iget-object v0, p0, Lcom/android/common/appService/t;->iy:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/UIState;->afm:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 374
    iget-object v0, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/EffectPage;->DC(Z)V

    .line 368
    :cond_19
    :goto_19
    return-void

    .line 377
    :cond_1a
    iget-object v0, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/EffectPage;->DC(Z)V

    goto :goto_19
.end method

.method public lj()V
    .registers 3

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/android/common/appService/t;->kY()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 356
    invoke-direct {p0}, Lcom/android/common/appService/t;->kX()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 360
    invoke-direct {p0}, Lcom/android/common/appService/t;->kV()V

    .line 361
    iget-object v0, p0, Lcom/android/common/appService/t;->iI:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/common/appService/t;->kU(Ljava/lang/String;Z)V

    .line 363
    iget-object v0, p0, Lcom/android/common/appService/t;->iA:Lcom/android/common/ui/EffectPage;

    invoke-virtual {v0}, Lcom/android/common/ui/EffectPage;->DB()V

    .line 365
    iget-object v0, p0, Lcom/android/common/appService/t;->ix:Lcom/android/common/appService/W;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 354
    return-void

    .line 357
    :cond_25
    return-void
.end method

.method public ll(Z)V
    .registers 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_9

    .line 399
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 397
    :cond_9
    return-void
.end method

.method public lm(Lcom/android/common/appService/v;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/common/appService/t;->iC:Lcom/android/common/appService/v;

    .line 95
    return-void
.end method

.method public ln(I)V
    .registers 3

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/android/common/appService/t;->kX()Z

    move-result v0

    if-nez v0, :cond_7

    .line 383
    return-void

    .line 385
    :cond_7
    if-eqz p1, :cond_c

    .line 386
    invoke-direct {p0}, Lcom/android/common/appService/t;->kT()V

    .line 389
    :cond_c
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_15

    .line 390
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 381
    :cond_15
    return-void
.end method

.method public lo(IZ)V
    .registers 4

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/android/common/appService/t;->kX()Z

    move-result v0

    if-nez v0, :cond_7

    .line 405
    return-void

    .line 407
    :cond_7
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_10

    .line 408
    iget-object v0, p0, Lcom/android/common/appService/t;->iB:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateImageView;->vn(IZ)V

    .line 403
    :cond_10
    return-void
.end method

.method public lq()V
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    if-eqz v0, :cond_b

    .line 207
    iget-object v0, p0, Lcom/android/common/appService/t;->ix:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/common/appService/t;->iE:Lcom/android/common/effects/e;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->rz(Lcom/android/common/appService/O;)V

    .line 209
    :cond_b
    invoke-direct {p0}, Lcom/android/common/appService/t;->lc()V

    .line 205
    return-void
.end method

.method public onBackPressed()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 289
    invoke-direct {p0}, Lcom/android/common/appService/t;->kX()Z

    move-result v2

    if-nez v2, :cond_9

    .line 290
    return v0

    .line 292
    :cond_9
    invoke-virtual {p0}, Lcom/android/common/appService/t;->kO()Z

    move-result v2

    .line 293
    if-eqz v2, :cond_20

    .line 294
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v3

    .line 295
    new-instance v4, Lcom/android/common/c/p;

    if-eqz v2, :cond_1e

    :goto_17
    invoke-direct {v4, p0, v0}, Lcom/android/common/c/p;-><init>(Lcom/android/common/appService/t;Z)V

    .line 294
    invoke-virtual {v3, v4}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 296
    return v1

    :cond_1e
    move v0, v1

    .line 295
    goto :goto_17

    .line 298
    :cond_20
    return v0
.end method

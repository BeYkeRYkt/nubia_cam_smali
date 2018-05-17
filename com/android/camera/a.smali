.class public Lcom/android/camera/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/cameraFamily/c;


# instance fields
.field private anY:Lcom/android/common/appService/W;

.field private anZ:Lcom/android/camera/cameraFamily/l;

.field private aoa:Lcom/android/common/ui/CameraSelectButton;

.field private aob:Landroid/view/View;

.field private aoc:I

.field private aod:Z

.field private aoe:Landroid/os/Handler;

.field private aof:Landroid/animation/ObjectAnimator;

.field private aog:Landroid/animation/AnimatorSet;

.field private aoh:Z

.field private aoi:Lcom/android/camera/b;

.field private aoj:Landroid/view/View;

.field private aok:Lcom/android/common/a/g;

.field private aol:Landroid/animation/ObjectAnimator;

.field private aom:Landroid/animation/AnimatorSet;

.field private aon:Ljava/util/ArrayList;

.field public aoo:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/common/appService/W;Lcom/android/common/a/g;Lcom/android/camera/cameraFamily/l;)V
    .registers 13

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/a;->aoc:I

    .line 59
    iput-object v2, p0, Lcom/android/camera/a;->aok:Lcom/android/common/a/g;

    .line 60
    iput-object v2, p0, Lcom/android/camera/a;->anZ:Lcom/android/camera/cameraFamily/l;

    .line 62
    iput-object v2, p0, Lcom/android/camera/a;->aob:Landroid/view/View;

    .line 63
    iput-object v2, p0, Lcom/android/camera/a;->aol:Landroid/animation/ObjectAnimator;

    .line 64
    iput-object v2, p0, Lcom/android/camera/a;->aof:Landroid/animation/ObjectAnimator;

    .line 65
    iput-object v2, p0, Lcom/android/camera/a;->aog:Landroid/animation/AnimatorSet;

    .line 66
    iput-object v2, p0, Lcom/android/camera/a;->aom:Landroid/animation/AnimatorSet;

    .line 71
    iput v1, p0, Lcom/android/camera/a;->aoo:I

    .line 73
    new-instance v0, Lcom/android/camera/l;

    invoke-direct {v0, p0}, Lcom/android/camera/l;-><init>(Lcom/android/camera/a;)V

    iput-object v0, p0, Lcom/android/camera/a;->aoe:Landroid/os/Handler;

    .line 412
    iput-boolean v1, p0, Lcom/android/camera/a;->aoh:Z

    .line 655
    iput-boolean v1, p0, Lcom/android/camera/a;->aod:Z

    .line 109
    iput-object p1, p0, Lcom/android/camera/a;->aoj:Landroid/view/View;

    .line 110
    iput-object p2, p0, Lcom/android/camera/a;->anY:Lcom/android/common/appService/W;

    .line 111
    iput-object p3, p0, Lcom/android/camera/a;->aok:Lcom/android/common/a/g;

    .line 112
    iput-object p4, p0, Lcom/android/camera/a;->anZ:Lcom/android/camera/cameraFamily/l;

    .line 113
    const v0, 0x7f100070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/CameraSelectButton;

    iput-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    .line 114
    const v0, 0x7f10006f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/a;->aob:Landroid/view/View;

    .line 115
    invoke-direct {p0}, Lcom/android/camera/a;->azB()V

    .line 116
    invoke-virtual {p0, v1}, Lcom/android/camera/a;->azP(Z)V

    .line 117
    const/4 v2, 0x1

    move-object v0, p0

    move v3, v1

    move-wide v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/a;->azT(IZZJJ)V

    .line 108
    return-void
.end method

.method static synthetic aAa(Lcom/android/camera/a;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/a;->aoc:I

    return v0
.end method

.method static synthetic aAb(Lcom/android/camera/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/a;->aod:Z

    return v0
.end method

.method static synthetic aAc(Lcom/android/camera/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/a;->aoe:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic aAd(Lcom/android/camera/a;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/a;->aoj:Landroid/view/View;

    return-object v0
.end method

.method static synthetic aAe(Lcom/android/camera/a;)Lcom/android/common/a/g;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/a;->aok:Lcom/android/common/a/g;

    return-object v0
.end method

.method static synthetic aAf(Lcom/android/camera/a;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/a;->aon:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic aAg(Lcom/android/camera/a;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/a;->aoc:I

    return p1
.end method

.method static synthetic aAh(Lcom/android/camera/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/a;->aod:Z

    return p1
.end method

.method static synthetic aAi(Lcom/android/camera/a;)Landroid/content/SharedPreferences;
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/a;->azy()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aAj(Lcom/android/camera/a;FF)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/camera/a;->azF(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic aAk(Lcom/android/camera/a;Lcom/android/common/cameradevice/g;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)Z
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/a;->azG(Lcom/android/common/cameradevice/g;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)Z

    move-result v0

    return v0
.end method

.method static synthetic aAl(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;)Lcom/android/common/cameradevice/g;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/camera/a;->azz(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;)Lcom/android/common/cameradevice/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aAm(Lcom/android/camera/a;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/a;->azH(Z)V

    return-void
.end method

.method static synthetic aAn(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/a;->azI(Lcom/android/common/appService/CameraMember;)V

    return-void
.end method

.method static synthetic aAo(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/a;->azJ(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)V

    return-void
.end method

.method private azB()V
    .registers 5

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/a;->anY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/a;->anY:Lcom/android/common/appService/W;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/a;->azu(Landroid/content/res/Resources;Lcom/android/common/appService/W;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/a;->aon:Ljava/util/ArrayList;

    .line 131
    iget-object v0, p0, Lcom/android/camera/a;->aon:Ljava/util/ArrayList;

    .line 132
    iget-object v1, p0, Lcom/android/camera/a;->anY:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 131
    invoke-direct {p0, v0, v1}, Lcom/android/camera/a;->azx(Ljava/util/ArrayList;Landroid/content/Intent;)I

    move-result v2

    .line 133
    iput v2, p0, Lcom/android/camera/a;->aoc:I

    .line 135
    iget-object v0, p0, Lcom/android/camera/a;->aon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    move v1, v0

    :goto_2e
    iget-object v0, p0, Lcom/android/camera/a;->aon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_46

    .line 137
    iget-object v0, p0, Lcom/android/camera/a;->aon:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/c;

    iget-object v0, v0, Lcom/android/camera/c;->aop:Ljava/lang/String;

    aput-object v0, v3, v1

    .line 136
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2e

    .line 139
    :cond_46
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v0, v3, v2}, Lcom/android/common/ui/CameraSelectButton;->xW([Ljava/lang/String;I)V

    .line 141
    invoke-direct {p0}, Lcom/android/camera/a;->azE()V

    .line 142
    iget v0, p0, Lcom/android/camera/a;->aoc:I

    invoke-direct {p0, v0}, Lcom/android/camera/a;->azQ(I)V

    .line 129
    return-void
.end method

.method private azC()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 532
    iget-object v0, p0, Lcom/android/camera/a;->aol:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1f

    .line 533
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    const-string/jumbo v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_3e

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/a;->aol:Landroid/animation/ObjectAnimator;

    .line 534
    iget-object v0, p0, Lcom/android/camera/a;->aol:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/camera/p;

    invoke-direct {v1, p0}, Lcom/android/camera/p;-><init>(Lcom/android/camera/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 558
    :cond_1f
    iget-object v0, p0, Lcom/android/camera/a;->aof:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_3d

    .line 559
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    const-string/jumbo v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_46

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/a;->aof:Landroid/animation/ObjectAnimator;

    .line 560
    iget-object v0, p0, Lcom/android/camera/a;->aof:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/camera/q;

    invoke-direct {v1, p0}, Lcom/android/camera/q;-><init>(Lcom/android/camera/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 531
    :cond_3d
    return-void

    .line 533
    :array_3e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 559
    :array_46
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private azD()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 586
    iget-object v0, p0, Lcom/android/camera/a;->aog:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_49

    .line 587
    iget-object v0, p0, Lcom/android/camera/a;->aoj:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_90

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 588
    iget-object v1, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    const-string/jumbo v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_98

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 589
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/camera/a;->aog:Landroid/animation/AnimatorSet;

    .line 590
    iget-object v2, p0, Lcom/android/camera/a;->aog:Landroid/animation/AnimatorSet;

    new-array v3, v4, [Landroid/animation/Animator;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 591
    iget-object v0, p0, Lcom/android/camera/a;->aog:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 592
    iget-object v0, p0, Lcom/android/camera/a;->aog:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/camera/r;

    invoke-direct {v1, p0}, Lcom/android/camera/r;-><init>(Lcom/android/camera/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 617
    :cond_49
    iget-object v0, p0, Lcom/android/camera/a;->aom:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_8f

    .line 618
    iget-object v0, p0, Lcom/android/camera/a;->aoj:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_a0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 619
    iget-object v1, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    const-string/jumbo v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_a8

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 620
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/camera/a;->aom:Landroid/animation/AnimatorSet;

    .line 621
    iget-object v2, p0, Lcom/android/camera/a;->aom:Landroid/animation/AnimatorSet;

    new-array v3, v4, [Landroid/animation/Animator;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 622
    iget-object v0, p0, Lcom/android/camera/a;->aom:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 623
    iget-object v0, p0, Lcom/android/camera/a;->aom:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/camera/s;

    invoke-direct {v1, p0}, Lcom/android/camera/s;-><init>(Lcom/android/camera/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 585
    :cond_8f
    return-void

    .line 587
    :array_90
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 588
    :array_98
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 618
    :array_a0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 619
    :array_a8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private azE()V
    .registers 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    new-instance v1, Lcom/android/camera/m;

    invoke-direct {v1, p0}, Lcom/android/camera/m;-><init>(Lcom/android/camera/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->xX(Landroid/view/View$OnTouchListener;)V

    .line 300
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    new-instance v1, Lcom/android/camera/n;

    invoke-direct {v1, p0}, Lcom/android/camera/n;-><init>(Lcom/android/camera/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->xY(Lcom/android/common/ui/C;)V

    .line 271
    return-void
.end method

.method private azF(FF)Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/android/camera/a;->anY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pj()[I

    move-result-object v0

    .line 264
    aget v1, v0, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_27

    aget v1, v0, v3

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_27

    .line 265
    const/4 v1, 0x2

    aget v1, v0, v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_27

    const/4 v1, 0x3

    aget v0, v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_27

    .line 266
    return v3

    .line 268
    :cond_27
    return v2
.end method

.method private azG(Lcom/android/common/cameradevice/g;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)Z
    .registers 6

    .prologue
    .line 391
    invoke-virtual {p1, p2}, Lcom/android/common/cameradevice/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 392
    if-eq p3, p4, :cond_f

    invoke-virtual {p1}, Lcom/android/common/cameradevice/g;->Kf()Z

    move-result v0

    .line 391
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c

    .line 392
    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private azH(Z)V
    .registers 4

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/camera/a;->aob:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/android/camera/a;->aoi:Lcom/android/camera/b;

    if-eqz v0, :cond_f

    .line 707
    iget-object v0, p0, Lcom/android/camera/a;->aoi:Lcom/android/camera/b;

    invoke-interface {v0, p1}, Lcom/android/camera/b;->aAp(Z)V

    .line 704
    :cond_f
    return-void
.end method

.method private azI(Lcom/android/common/appService/CameraMember;)V
    .registers 4

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/camera/a;->aob:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/android/camera/a;->aoi:Lcom/android/camera/b;

    if-eqz v0, :cond_10

    .line 700
    iget-object v0, p0, Lcom/android/camera/a;->aoi:Lcom/android/camera/b;

    invoke-interface {v0, p1}, Lcom/android/camera/b;->aAq(Lcom/android/common/appService/CameraMember;)V

    .line 697
    :cond_10
    return-void
.end method

.method private azJ(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)V
    .registers 5

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/camera/a;->aoi:Lcom/android/camera/b;

    if-eqz v0, :cond_9

    .line 713
    iget-object v0, p0, Lcom/android/camera/a;->aoi:Lcom/android/camera/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/b;->aAr(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)V

    .line 711
    :cond_9
    return-void
.end method

.method private azQ(I)V
    .registers 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/camera/a;->aon:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 397
    iget-object v0, p0, Lcom/android/camera/a;->aon:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 398
    :cond_c
    return-void

    .line 400
    :cond_d
    iget-object v0, p0, Lcom/android/camera/a;->aon:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/c;

    iget-object v0, v0, Lcom/android/camera/c;->aoq:Lcom/android/common/appService/CameraMember;

    sget-object v1, Lcom/android/common/appService/CameraMember;->jv:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_22

    .line 401
    iget-object v0, p0, Lcom/android/camera/a;->anZ:Lcom/android/camera/cameraFamily/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/cameraFamily/l;->axX(I)V

    .line 395
    :goto_21
    return-void

    .line 403
    :cond_22
    iget-object v0, p0, Lcom/android/camera/a;->anZ:Lcom/android/camera/cameraFamily/l;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/cameraFamily/l;->axX(I)V

    goto :goto_21
.end method

.method static synthetic azX(Lcom/android/camera/a;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/a;->anY:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic azY(Lcom/android/camera/a;)Lcom/android/camera/cameraFamily/l;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/a;->anZ:Lcom/android/camera/cameraFamily/l;

    return-object v0
.end method

.method static synthetic azZ(Lcom/android/camera/a;)Lcom/android/common/ui/CameraSelectButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    return-object v0
.end method

.method private azt(Lcom/android/common/custom/x;Ljava/util/ArrayList;Landroid/content/res/Resources;)V
    .registers 7

    .prologue
    .line 216
    invoke-interface {p1}, Lcom/android/common/custom/x;->acN()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 217
    invoke-interface {p1}, Lcom/android/common/custom/x;->adP()Z

    move-result v0

    .line 216
    if-eqz v0, :cond_23

    .line 218
    invoke-interface {p1}, Lcom/android/common/custom/x;->aeg()Z

    move-result v0

    if-eqz v0, :cond_24

    const v0, 0x7f0a04e3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_19
    new-instance v1, Lcom/android/camera/c;

    sget-object v2, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_23
    return-void

    .line 218
    :cond_24
    const v0, 0x7f0a04c6

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method private azu(Landroid/content/res/Resources;Lcom/android/common/appService/W;)Ljava/util/ArrayList;
    .registers 11

    .prologue
    const v7, 0x7f0a0472

    const v6, 0x7f0a02e9

    const v5, 0x7f0a0471

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-virtual {p2}, Lcom/android/common/appService/W;->pc()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 148
    invoke-virtual {p2}, Lcom/android/common/appService/W;->pd()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 150
    new-instance v1, Lcom/android/camera/c;

    sget-object v2, Lcom/android/common/appService/CameraMember;->jn:Lcom/android/common/appService/CameraMember;

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_28
    :goto_28
    return-object v0

    .line 151
    :cond_29
    invoke-virtual {p2}, Lcom/android/common/appService/W;->pe()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 153
    new-instance v1, Lcom/android/camera/c;

    sget-object v2, Lcom/android/common/appService/CameraMember;->jg:Lcom/android/common/appService/CameraMember;

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 156
    :cond_3e
    new-instance v1, Lcom/android/camera/c;

    sget-object v2, Lcom/android/common/appService/CameraMember;->jJ:Lcom/android/common/appService/CameraMember;

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 158
    :cond_4d
    invoke-virtual {p2}, Lcom/android/common/appService/W;->pf()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 160
    new-instance v1, Lcom/android/camera/c;

    sget-object v2, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 161
    :cond_62
    invoke-virtual {p2}, Lcom/android/common/appService/W;->pg()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 163
    new-instance v1, Lcom/android/camera/c;

    sget-object v2, Lcom/android/common/appService/CameraMember;->jt:Lcom/android/common/appService/CameraMember;

    const v3, 0x7f0a04c3

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 165
    :cond_7a
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/android/camera/a;->anY:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v2

    if-nez v2, :cond_9f

    .line 168
    new-instance v2, Lcom/android/camera/c;

    sget-object v3, Lcom/android/common/appService/CameraMember;->jv:Lcom/android/common/appService/CameraMember;

    const v4, 0x7f0a03fe

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_9f
    invoke-interface {v1}, Lcom/android/common/custom/x;->acM()Z

    move-result v2

    if-eqz v2, :cond_119

    .line 172
    invoke-interface {v1}, Lcom/android/common/custom/x;->adI()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 174
    new-instance v2, Lcom/android/camera/c;

    sget-object v3, Lcom/android/common/appService/CameraMember;->jq:Lcom/android/common/appService/CameraMember;

    const v4, 0x7f0a02eb

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_bc
    new-instance v2, Lcom/android/camera/c;

    sget-object v3, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v2, Lcom/android/camera/c;

    sget-object v3, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-direct {p0, v1, v0, p1}, Lcom/android/camera/a;->azt(Lcom/android/common/custom/x;Ljava/util/ArrayList;Landroid/content/res/Resources;)V

    .line 182
    new-instance v2, Lcom/android/camera/c;

    sget-object v3, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v1}, Lcom/android/common/custom/x;->adi()Z

    move-result v2

    if-eqz v2, :cond_100

    .line 185
    new-instance v2, Lcom/android/camera/c;

    sget-object v3, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    const v4, 0x7f0a02ea

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_100
    invoke-interface {v1}, Lcom/android/common/custom/x;->aef()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 189
    new-instance v1, Lcom/android/camera/c;

    sget-object v2, Lcom/android/common/appService/CameraMember;->jy:Lcom/android/common/appService/CameraMember;

    const v3, 0x7f0a02e5

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 192
    :cond_119
    invoke-interface {v1}, Lcom/android/common/custom/x;->acN()Z

    move-result v2

    if-eqz v2, :cond_154

    .line 193
    invoke-interface {v1}, Lcom/android/common/custom/x;->adP()Z

    move-result v2

    .line 192
    if-eqz v2, :cond_154

    .line 195
    new-instance v2, Lcom/android/camera/c;

    sget-object v3, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v2, Lcom/android/camera/c;

    sget-object v3, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v2, Lcom/android/camera/c;

    sget-object v3, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-direct {p0, v1, v0, p1}, Lcom/android/camera/a;->azt(Lcom/android/common/custom/x;Ljava/util/ArrayList;Landroid/content/res/Resources;)V

    goto/16 :goto_28

    .line 203
    :cond_154
    new-instance v1, Lcom/android/camera/c;

    sget-object v2, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v1, Lcom/android/camera/c;

    sget-object v2, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v1, Lcom/android/camera/c;

    sget-object v2, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/c;-><init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28
.end method

.method private azv()V
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/camera/a;->aol:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 518
    iget-object v0, p0, Lcom/android/camera/a;->aol:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 520
    :cond_9
    iget-object v0, p0, Lcom/android/camera/a;->aof:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_12

    .line 521
    iget-object v0, p0, Lcom/android/camera/a;->aof:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 523
    :cond_12
    iget-object v0, p0, Lcom/android/camera/a;->aom:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1b

    .line 524
    iget-object v0, p0, Lcom/android/camera/a;->aom:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 526
    :cond_1b
    iget-object v0, p0, Lcom/android/camera/a;->aog:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_24

    .line 527
    iget-object v0, p0, Lcom/android/camera/a;->aog:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 516
    :cond_24
    return-void
.end method

.method private azx(Ljava/util/ArrayList;Landroid/content/Intent;)I
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 225
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    .line 228
    iget-object v0, p0, Lcom/android/camera/a;->anY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    .line 231
    sget-object v1, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_15

    .line 232
    sget-object v1, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_23

    .line 233
    :cond_15
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->acN()Z

    move-result v1

    if-eqz v1, :cond_52

    :cond_23
    move-object v1, v0

    :goto_24
    move v2, v3

    .line 240
    :goto_25
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5c

    .line 241
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/c;

    iget-object v0, v0, Lcom/android/camera/c;->aoq:Lcom/android/common/appService/CameraMember;

    if-ne v1, v0, :cond_56

    .line 243
    const/4 v0, 0x1

    move v5, v0

    move v0, v2

    move v2, v5

    .line 247
    :goto_39
    if-nez v2, :cond_5a

    .line 248
    invoke-direct {p0}, Lcom/android/camera/a;->azy()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 249
    const-string/jumbo v2, "scroll_switcher_seleleted_family"

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v1

    .line 248
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 253
    :goto_51
    return v3

    .line 234
    :cond_52
    sget-object v0, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    move-object v1, v0

    .line 233
    goto :goto_24

    .line 240
    :cond_56
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    :cond_5a
    move v3, v0

    goto :goto_51

    :cond_5c
    move v2, v3

    move v0, v4

    goto :goto_39
.end method

.method private azy()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/camera/a;->anY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method private azz(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;)Lcom/android/common/cameradevice/g;
    .registers 7

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/camera/a;->anY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pn()Lcom/android/common/appService/y;

    move-result-object v0

    .line 728
    invoke-interface {v0, p1}, Lcom/android/common/appService/y;->kE(Lcom/android/common/appService/CameraMember;)Ljava/util/List;

    move-result-object v1

    .line 730
    if-eqz v1, :cond_32

    .line 731
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_32

    .line 732
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/cameradevice/g;

    .line 733
    invoke-virtual {v0, p2}, Lcom/android/common/cameradevice/g;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 734
    return-object v0

    .line 737
    :cond_2a
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/cameradevice/g;

    return-object v0

    .line 739
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No suituable camera id found!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public axh()V
    .registers 2

    .prologue
    .line 746
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/a;->azP(Z)V

    .line 745
    return-void
.end method

.method public axi()V
    .registers 5

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/camera/a;->anY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 752
    iget-object v0, p0, Lcom/android/camera/a;->anZ:Lcom/android/camera/cameraFamily/l;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/l;->axY()Z

    move-result v0

    .line 751
    if-eqz v0, :cond_37

    .line 753
    :cond_16
    const-string/jumbo v0, "MemberScrollerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cameraFamilyAnimating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/a;->anZ:Lcom/android/camera/cameraFamily/l;

    invoke-virtual {v2}, Lcom/android/camera/cameraFamily/l;->axY()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    return-void

    .line 756
    :cond_37
    iget-object v0, p0, Lcom/android/camera/a;->aoe:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 757
    iget-object v0, p0, Lcom/android/camera/a;->anZ:Lcom/android/camera/cameraFamily/l;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/l;->axV()Z

    move-result v0

    if-nez v0, :cond_57

    .line 758
    invoke-virtual {p0}, Lcom/android/camera/a;->azU()V

    .line 759
    iget-object v0, p0, Lcom/android/camera/a;->anZ:Lcom/android/camera/cameraFamily/l;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/l;->axZ()V

    .line 760
    iget-object v0, p0, Lcom/android/camera/a;->anY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/a;->azI(Lcom/android/common/appService/CameraMember;)V

    .line 750
    :goto_56
    return-void

    .line 762
    :cond_57
    invoke-direct {p0}, Lcom/android/camera/a;->azy()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "scroll_switcher_seleleted_family"

    .line 763
    sget-object v2, Lcom/android/common/appService/CameraMember;->ju:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v2

    .line 762
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/common/appService/CameraMember;->md(I)Lcom/android/common/appService/CameraMember;

    move-result-object v0

    .line 764
    iget-object v1, p0, Lcom/android/camera/a;->anY:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/a;->azz(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;)Lcom/android/common/cameradevice/g;

    move-result-object v1

    .line 765
    iget-object v2, p0, Lcom/android/camera/a;->anY:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/a;->anY:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/camera/a;->azG(Lcom/android/common/cameradevice/g;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 766
    invoke-virtual {p0}, Lcom/android/camera/a;->azV()V

    .line 768
    :cond_8b
    iget-object v1, p0, Lcom/android/camera/a;->anZ:Lcom/android/camera/cameraFamily/l;

    invoke-virtual {v1}, Lcom/android/camera/cameraFamily/l;->aya()V

    .line 770
    iget-object v1, p0, Lcom/android/camera/a;->anY:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/a;->azz(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;)Lcom/android/common/cameradevice/g;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jv:Lcom/android/common/appService/CameraMember;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/a;->azJ(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)V

    .line 771
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/a;->azH(Z)V

    goto :goto_56
.end method

.method public azA()I
    .registers 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/camera/a;->aoj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public azK()V
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    if-eqz v0, :cond_9

    .line 445
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v0}, Lcom/android/common/ui/CameraSelectButton;->xZ()V

    .line 443
    :cond_9
    return-void
.end method

.method public azL(Landroid/view/MotionEvent;)V
    .registers 3

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/camera/a;->anZ:Lcom/android/camera/cameraFamily/l;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/l;->axY()Z

    move-result v0

    if-nez v0, :cond_d

    .line 673
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/CameraSelectButton;->yc(Landroid/view/MotionEvent;)Z

    .line 671
    :cond_d
    return-void
.end method

.method public azM()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 456
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v0}, Lcom/android/common/ui/CameraSelectButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 457
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v0}, Lcom/android/common/ui/CameraSelectButton;->yb()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 455
    :cond_11
    :goto_11
    return-void

    .line 458
    :cond_12
    const-string/jumbo v0, "MemberScrollerManager"

    const-string/jumbo v1, "Recreate CameraSelectView"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/CameraSelectButton;->setVisibility(I)V

    goto :goto_11
.end method

.method azN()V
    .registers 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/camera/a;->aoe:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    iget-object v0, p0, Lcom/android/camera/a;->aoe:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 407
    return-void
.end method

.method public azO()V
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    if-eqz v0, :cond_9

    .line 451
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v0}, Lcom/android/common/ui/CameraSelectButton;->ya()V

    .line 449
    :cond_9
    return-void
.end method

.method public azP(Z)V
    .registers 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/CameraSelectButton;->setEnabled(Z)V

    .line 651
    return-void
.end method

.method public azR(Lcom/android/camera/b;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/camera/a;->aoi:Lcom/android/camera/b;

    .line 125
    return-void
.end method

.method public azS(Z)V
    .registers 2

    .prologue
    .line 413
    return-void
.end method

.method public azT(IZZJJ)V
    .registers 12

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 473
    iput p1, p0, Lcom/android/camera/a;->aoo:I

    .line 474
    if-nez p1, :cond_32

    .line 475
    iget v0, p0, Lcom/android/camera/a;->aoc:I

    invoke-direct {p0, v0}, Lcom/android/camera/a;->azQ(I)V

    .line 479
    :goto_d
    if-eqz p3, :cond_13

    cmp-long v0, p4, v2

    if-gez v0, :cond_38

    .line 480
    :cond_13
    invoke-direct {p0}, Lcom/android/camera/a;->azv()V

    .line 481
    iget-object v0, p0, Lcom/android/camera/a;->aoj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 482
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->setAlpha(F)V

    .line 483
    if-eqz p2, :cond_27

    .line 484
    iget-object v0, p0, Lcom/android/camera/a;->aoj:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 488
    :cond_27
    iget-object v0, p0, Lcom/android/camera/a;->aoa:Lcom/android/common/ui/CameraSelectButton;

    new-instance v1, Lcom/android/camera/o;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/o;-><init>(Lcom/android/camera/a;I)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->post(Ljava/lang/Runnable;)Z

    .line 472
    :goto_31
    return-void

    .line 477
    :cond_32
    iget-object v0, p0, Lcom/android/camera/a;->anZ:Lcom/android/camera/cameraFamily/l;

    invoke-virtual {v0, p1}, Lcom/android/camera/cameraFamily/l;->axX(I)V

    goto :goto_d

    .line 497
    :cond_38
    if-eqz p2, :cond_4b

    .line 498
    invoke-direct {p0}, Lcom/android/camera/a;->azD()V

    .line 499
    if-nez p1, :cond_48

    iget-object v0, p0, Lcom/android/camera/a;->aom:Landroid/animation/AnimatorSet;

    .line 504
    :goto_41
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 505
    return-void

    .line 499
    :cond_48
    iget-object v0, p0, Lcom/android/camera/a;->aog:Landroid/animation/AnimatorSet;

    goto :goto_41

    .line 501
    :cond_4b
    invoke-direct {p0}, Lcom/android/camera/a;->azC()V

    .line 502
    if-nez p1, :cond_53

    iget-object v0, p0, Lcom/android/camera/a;->aol:Landroid/animation/ObjectAnimator;

    goto :goto_41

    :cond_53
    iget-object v0, p0, Lcom/android/camera/a;->aof:Landroid/animation/ObjectAnimator;

    goto :goto_41

    .line 507
    :cond_56
    invoke-direct {p0}, Lcom/android/camera/a;->azv()V

    .line 508
    cmp-long v1, p6, v2

    if-lez v1, :cond_60

    .line 509
    invoke-virtual {v0, p6, p7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 511
    :cond_60
    invoke-virtual {v0, p4, p5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 512
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_31
.end method

.method public azU()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 432
    invoke-virtual {p0}, Lcom/android/camera/a;->azN()V

    .line 433
    iget-object v0, p0, Lcom/android/camera/a;->aok:Lcom/android/common/a/g;

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->ak(Z)V

    .line 434
    iget-object v0, p0, Lcom/android/camera/a;->aoe:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 435
    invoke-virtual {p0, v1}, Lcom/android/camera/a;->azS(Z)V

    .line 431
    return-void
.end method

.method public azV()V
    .registers 3

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/camera/a;->azN()V

    .line 440
    iget-object v0, p0, Lcom/android/camera/a;->aoe:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 438
    return-void
.end method

.method public azW()V
    .registers 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/camera/a;->azB()V

    .line 121
    return-void
.end method

.method public azw(J)V
    .registers 6

    .prologue
    const/4 v2, 0x4

    .line 657
    const-string/jumbo v0, "MemberScrollerManager"

    const-string/jumbo v1, "disableMemberScrollerForAWhile"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/android/camera/a;->aoe:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/a;->aod:Z

    .line 660
    iget-object v0, p0, Lcom/android/camera/a;->aoe:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 656
    return-void
.end method

.method public release()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 678
    iget-object v0, p0, Lcom/android/camera/a;->aoe:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 679
    iget-object v0, p0, Lcom/android/camera/a;->anZ:Lcom/android/camera/cameraFamily/l;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/l;->axU()V

    .line 681
    :cond_10
    iget-object v0, p0, Lcom/android/camera/a;->aoe:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 682
    iget-object v0, p0, Lcom/android/camera/a;->aok:Lcom/android/common/a/g;

    invoke-virtual {v0, v3}, Lcom/android/common/a/g;->ak(Z)V

    .line 684
    :cond_1e
    iget-object v0, p0, Lcom/android/camera/a;->aoe:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 685
    const-string/jumbo v0, "MemberScrollerManager"

    const-string/jumbo v1, "reset disableMemberScrollerForAWhile when release"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iput-boolean v3, p0, Lcom/android/camera/a;->aod:Z

    .line 688
    :cond_32
    iput-boolean v3, p0, Lcom/android/camera/a;->aoh:Z

    .line 689
    iget-object v0, p0, Lcom/android/camera/a;->aoe:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 690
    invoke-direct {p0}, Lcom/android/camera/a;->azv()V

    .line 691
    iput-object v2, p0, Lcom/android/camera/a;->aol:Landroid/animation/ObjectAnimator;

    .line 692
    iput-object v2, p0, Lcom/android/camera/a;->aom:Landroid/animation/AnimatorSet;

    .line 693
    iput-object v2, p0, Lcom/android/camera/a;->aof:Landroid/animation/ObjectAnimator;

    .line 694
    iput-object v2, p0, Lcom/android/camera/a;->aog:Landroid/animation/AnimatorSet;

    .line 677
    return-void
.end method

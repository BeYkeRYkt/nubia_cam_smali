.class public Lcom/android/common/independentFocusExposure/a;
.super Lcom/android/common/independentFocusExposure/h;
.source "SourceFile"


# instance fields
.field cO:Landroid/animation/AnimatorSet;

.field cP:Landroid/animation/AnimatorSet;

.field private cQ:Lcom/android/common/independentFocusExposure/f;

.field private cR:[I

.field private cS:[I

.field private cT:I

.field private cU:Ljava/lang/Runnable;

.field private cV:Ljava/lang/Runnable;

.field private cW:Ljava/lang/Runnable;

.field private cX:I

.field private cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

.field private cZ:Lcom/android/common/ui/RotateLayout;

.field private dA:Landroid/animation/PropertyValuesHolder;

.field private dB:Landroid/animation/PropertyValuesHolder;

.field private dC:Landroid/animation/PropertyValuesHolder;

.field private dD:Landroid/widget/RelativeLayout$LayoutParams;

.field private dE:I

.field private dF:I

.field private dG:I

.field private dH:I

.field private dI:I

.field private dJ:Lcom/android/common/ui/VerticalSeekBarForEv;

.field private dK:I

.field private dL:Lcom/android/common/ui/RotateLayout;

.field private da:Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

.field private db:Landroid/widget/TextView;

.field dc:Landroid/animation/AnimatorSet;

.field dd:Landroid/animation/AnimatorSet;

.field private de:Lcom/android/common/ui/RotateLayout;

.field private df:I

.field private dg:I

.field private dh:I

.field private di:Landroid/widget/RelativeLayout;

.field private dj:I

.field private dk:I

.field private final dl:Landroid/os/Handler;

.field private dm:Z

.field private dn:Z

.field private do:Z

.field private dp:Z

.field private dq:Z

.field private dr:I

.field private ds:Landroid/graphics/Matrix;

.field private dt:Ljava/util/List;

.field private du:Z

.field private dv:Z

.field private dw:Z

.field private dx:Landroid/animation/ObjectAnimator;

.field private dy:Landroid/animation/ObjectAnimator;

.field private dz:Landroid/animation/PropertyValuesHolder;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 8

    .prologue
    const/16 v5, 0x42

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/h;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    .line 51
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    .line 55
    invoke-static {v5}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    .line 56
    invoke-static {v5}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    .line 57
    const/16 v0, 0x168

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dh:I

    .line 58
    const/16 v0, 0x280

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dg:I

    .line 59
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cS:[I

    .line 60
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;->dN:Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->da:Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

    .line 61
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/a;->ds:Landroid/graphics/Matrix;

    .line 62
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dt:Ljava/util/List;

    .line 64
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/a;->du:Z

    .line 65
    iput v2, p0, Lcom/android/common/independentFocusExposure/a;->dE:I

    .line 67
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cR:[I

    .line 68
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dz:Landroid/animation/PropertyValuesHolder;

    .line 69
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dA:Landroid/animation/PropertyValuesHolder;

    .line 70
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dB:Landroid/animation/PropertyValuesHolder;

    .line 71
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dC:Landroid/animation/PropertyValuesHolder;

    .line 72
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dx:Landroid/animation/ObjectAnimator;

    .line 73
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dy:Landroid/animation/ObjectAnimator;

    .line 74
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    .line 75
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cO:Landroid/animation/AnimatorSet;

    .line 76
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cP:Landroid/animation/AnimatorSet;

    .line 77
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dc:Landroid/animation/AnimatorSet;

    .line 78
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dd:Landroid/animation/AnimatorSet;

    .line 79
    new-instance v0, Lcom/android/common/independentFocusExposure/e;

    invoke-direct {v0, p0, v1}, Lcom/android/common/independentFocusExposure/e;-><init>(Lcom/android/common/independentFocusExposure/a;Lcom/android/common/independentFocusExposure/e;)V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dl:Landroid/os/Handler;

    .line 80
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/a;->dm:Z

    .line 83
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/a;->dn:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/a;->dq:Z

    .line 88
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/a;->dp:Z

    .line 89
    new-instance v0, Lcom/android/common/independentFocusExposure/b;

    invoke-direct {v0, p0, v1}, Lcom/android/common/independentFocusExposure/b;-><init>(Lcom/android/common/independentFocusExposure/a;Lcom/android/common/independentFocusExposure/b;)V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cU:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/android/common/independentFocusExposure/c;

    invoke-direct {v0, p0, v1}, Lcom/android/common/independentFocusExposure/c;-><init>(Lcom/android/common/independentFocusExposure/a;Lcom/android/common/independentFocusExposure/c;)V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cV:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Lcom/android/common/independentFocusExposure/d;

    invoke-direct {v0, p0, v1}, Lcom/android/common/independentFocusExposure/d;-><init>(Lcom/android/common/independentFocusExposure/a;Lcom/android/common/independentFocusExposure/d;)V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cW:Ljava/lang/Runnable;

    .line 97
    iput v2, p0, Lcom/android/common/independentFocusExposure/a;->dG:I

    .line 98
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/a;->dv:Z

    .line 99
    iput v2, p0, Lcom/android/common/independentFocusExposure/a;->dk:I

    .line 100
    iput v2, p0, Lcom/android/common/independentFocusExposure/a;->dj:I

    .line 101
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->cT:I

    .line 104
    iput v2, p0, Lcom/android/common/independentFocusExposure/a;->dH:I

    .line 105
    iput v2, p0, Lcom/android/common/independentFocusExposure/a;->dI:I

    .line 107
    const/16 v0, 0x8c

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dK:I

    .line 110
    new-instance v0, Lcom/android/common/independentFocusExposure/f;

    invoke-direct {v0, p0, v1}, Lcom/android/common/independentFocusExposure/f;-><init>(Lcom/android/common/independentFocusExposure/a;Lcom/android/common/independentFocusExposure/f;)V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cQ:Lcom/android/common/independentFocusExposure/f;

    .line 111
    iput-boolean v3, p0, Lcom/android/common/independentFocusExposure/a;->dw:Z

    .line 112
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/a;->di:Landroid/widget/RelativeLayout;

    .line 115
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->ds:Landroid/graphics/Matrix;

    .line 116
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    .line 117
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dt:Ljava/util/List;

    if-nez v0, :cond_d1

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dt:Ljava/util/List;

    .line 119
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dt:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_d1
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ri()I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->cT:I

    .line 122
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->dl()V

    .line 123
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cu()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dW:I

    .line 124
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cu()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dX:I

    .line 114
    return-void
.end method

.method private cB()V
    .registers 13

    .prologue
    const-wide/16 v10, 0xdc

    const/4 v9, 0x2

    .line 410
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v1, "alpha"

    new-array v2, v9, [F

    fill-array-data v2, :array_94

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v2, "alpha"

    new-array v3, v9, [F

    fill-array-data v3, :array_9c

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 412
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v9, [F

    fill-array-data v4, :array_a4

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 413
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v4, "alpha"

    new-array v5, v9, [F

    fill-array-data v5, :array_ac

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 414
    iget-object v4, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    fill-array-data v6, :array_b4

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 415
    iget-object v5, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_bc

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 416
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/common/independentFocusExposure/a;->cO:Landroid/animation/AnimatorSet;

    .line 417
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/common/independentFocusExposure/a;->cO:Landroid/animation/AnimatorSet;

    .line 418
    iget-object v6, p0, Lcom/android/common/independentFocusExposure/a;->cO:Landroid/animation/AnimatorSet;

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    aput-object v2, v7, v9

    const/4 v0, 0x3

    aput-object v3, v7, v0

    .line 419
    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    .line 418
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 408
    return-void

    .line 410
    nop

    :array_94
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 411
    :array_9c
    .array-data 4
        0x3e800000    # 0.25f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 412
    :array_a4
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 413
    :array_ac
    .array-data 4
        0x3e800000    # 0.25f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 414
    :array_b4
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 415
    :array_bc
    .array-data 4
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cC()V
    .registers 13

    .prologue
    const-wide/16 v10, 0xdc

    const/4 v9, 0x2

    .line 424
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v1, "alpha"

    new-array v2, v9, [F

    fill-array-data v2, :array_94

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v2, "alpha"

    new-array v3, v9, [F

    fill-array-data v3, :array_9c

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 426
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v9, [F

    fill-array-data v4, :array_a4

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 427
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v4, "alpha"

    new-array v5, v9, [F

    fill-array-data v5, :array_ac

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 428
    iget-object v4, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    fill-array-data v6, :array_b4

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 429
    iget-object v5, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_bc

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 430
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/common/independentFocusExposure/a;->cP:Landroid/animation/AnimatorSet;

    .line 431
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/common/independentFocusExposure/a;->cP:Landroid/animation/AnimatorSet;

    .line 432
    iget-object v6, p0, Lcom/android/common/independentFocusExposure/a;->cP:Landroid/animation/AnimatorSet;

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    aput-object v2, v7, v9

    const/4 v0, 0x3

    aput-object v3, v7, v0

    .line 433
    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    .line 432
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 422
    return-void

    .line 424
    nop

    :array_94
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 425
    :array_9c
    .array-data 4
        0x3e800000    # 0.25f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 426
    :array_a4
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 427
    :array_ac
    .array-data 4
        0x3e800000    # 0.25f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 428
    :array_b4
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 429
    :array_bc
    .array-data 4
        0x3e800000    # 0.25f
        0x0
    .end array-data
.end method

.method private cE()V
    .registers 5

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->de:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 439
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dc:Landroid/animation/AnimatorSet;

    .line 440
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dc:Landroid/animation/AnimatorSet;

    .line 441
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dc:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 436
    return-void

    .line 438
    nop

    :array_26
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cF()V
    .registers 5

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->de:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 447
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dd:Landroid/animation/AnimatorSet;

    .line 448
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dd:Landroid/animation/AnimatorSet;

    .line 449
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dd:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 444
    return-void

    .line 446
    nop

    :array_26
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private cG(Landroid/graphics/Rect;I)Z
    .registers 8

    .prologue
    const/16 v4, 0x3e8

    const/16 v1, -0x3e8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 521
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_19

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_19

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_19

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_19

    if-ne p2, v3, :cond_19

    return v2

    .line 522
    :cond_19
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_2a

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_2a

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_2a

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_2a

    return v3

    .line 523
    :cond_2a
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_2f

    return v2

    .line 524
    :cond_2f
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_34

    return v2

    .line 525
    :cond_34
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v4, :cond_3c

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v4, :cond_3d

    :cond_3c
    return v2

    .line 526
    :cond_3d
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_44

    return v2

    .line 527
    :cond_44
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_4b

    return v2

    .line 528
    :cond_4b
    return v3
.end method

.method private cH()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 851
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v3, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne v0, v3, :cond_47

    .line 852
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v3

    if-ne v0, v3, :cond_45

    move v0, v1

    .line 853
    :goto_1d
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cx()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "pref_camera_exposure_disable_key"

    .line 854
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cu()Lcom/android/common/appService/W;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a0446

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 853
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 854
    const-string/jumbo v4, "off"

    .line 853
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    move v1, v2

    .line 855
    :cond_41
    if-eqz v0, :cond_44

    move v2, v1

    :cond_44
    return v2

    :cond_45
    move v0, v2

    .line 852
    goto :goto_1d

    :cond_47
    move v0, v2

    .line 851
    goto :goto_1d
.end method

.method private cI()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 312
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 313
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Lv()I

    move-result v1

    if-lez v1, :cond_16

    const/4 v0, 0x1

    .line 312
    :cond_16
    return v0
.end method

.method private cJ()Z
    .registers 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dA()Z

    move-result v0

    return v0
.end method

.method private cL()Z
    .registers 3

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afb:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_1c

    .line 643
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afc:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_1e

    .line 645
    :cond_1c
    const/4 v0, 0x1

    return v0

    .line 644
    :cond_1e
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afd:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_1c

    .line 647
    const/4 v0, 0x0

    return v0
.end method

.method private cN()Z
    .registers 3

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    .line 837
    sget-object v1, Lcom/android/common/appService/CameraMember;->jG:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_e

    .line 838
    sget-object v1, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_10

    .line 841
    :cond_e
    const/4 v0, 0x0

    return v0

    .line 839
    :cond_10
    sget-object v1, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_e

    .line 840
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cH()Z

    move-result v0

    .line 837
    if-nez v0, :cond_e

    .line 843
    const/4 v0, 0x1

    return v0
.end method

.method private cO(II)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0x17

    const/4 v1, 0x0

    .line 454
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/a;->cR:[I

    aget v2, v2, v1

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v4}, Lcom/android/common/h;->aoT(I)I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 455
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/a;->cR:[I

    aget v2, v2, v0

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v4}, Lcom/android/common/h;->aoT(I)I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 454
    :goto_24
    return v0

    :cond_25
    move v0, v1

    .line 455
    goto :goto_24

    :cond_27
    move v0, v1

    .line 454
    goto :goto_24
.end method

.method private cV(II)V
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 916
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->de:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 917
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->de:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v1}, Lcom/android/common/ui/RotateLayout;->getHeight()I

    move-result v1

    .line 918
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/a;->de:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v2}, Lcom/android/common/ui/RotateLayout;->getWidth()I

    move-result v2

    .line 919
    invoke-direct {p0, v2, v1}, Lcom/android/common/independentFocusExposure/a;->cy(II)I

    move-result v1

    .line 921
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cu()Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 922
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cu()Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 923
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cu()Lcom/android/common/appService/W;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 924
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cu()Lcom/android/common/appService/W;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 926
    iget-object v5, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v5}, Lcom/android/common/appService/W;->qv()I

    move-result v5

    sparse-switch v5, :sswitch_data_128

    .line 956
    :goto_6f
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->de:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->requestLayout()V

    .line 915
    return-void

    .line 928
    :sswitch_75
    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/android/common/independentFocusExposure/a;->dW:I

    if-le v2, v3, :cond_8d

    .line 929
    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cz()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    sub-int v1, v3, v1

    invoke-virtual {v0, v2, v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_6f

    .line 931
    :cond_8d
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cz()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    iget v3, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_6f

    .line 935
    :sswitch_9f
    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    sub-int/2addr v2, v1

    if-lez v2, :cond_b5

    .line 936
    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    sub-int v1, v2, v1

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cz()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_6f

    .line 938
    :cond_b5
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cz()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_6f

    .line 942
    :sswitch_c7
    iget v3, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    iget v5, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    add-int/2addr v3, v5

    add-int/2addr v3, v1

    iget-object v5, p0, Lcom/android/common/independentFocusExposure/a;->cS:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v3, v5

    sub-int v2, v4, v2

    if-ge v3, v2, :cond_e9

    .line 943
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cz()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    iget v3, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_6f

    .line 945
    :cond_e9
    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cz()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    sub-int v1, v3, v1

    invoke-virtual {v0, v2, v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_6f

    .line 949
    :sswitch_fb
    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    iget v4, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    add-int/2addr v2, v4

    add-int/2addr v2, v1

    if-ge v2, v3, :cond_116

    .line 950
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cz()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_6f

    .line 952
    :cond_116
    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    sub-int v1, v2, v1

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cz()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_6f

    .line 926
    :sswitch_data_128
    .sparse-switch
        0x0 -> :sswitch_75
        0x5a -> :sswitch_9f
        0xb4 -> :sswitch_c7
        0x10e -> :sswitch_fb
    .end sparse-switch
.end method

.method private cY()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 960
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dL:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 961
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dL:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v1}, Lcom/android/common/ui/RotateLayout;->getHeight()I

    move-result v1

    .line 962
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/a;->dL:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v2}, Lcom/android/common/ui/RotateLayout;->getWidth()I

    move-result v2

    .line 963
    invoke-direct {p0, v2, v1}, Lcom/android/common/independentFocusExposure/a;->cy(II)I

    move-result v2

    .line 965
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cu()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0020

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 966
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cu()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d001f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 967
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cu()Lcom/android/common/appService/W;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 968
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cu()Lcom/android/common/appService/W;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 970
    iget-object v5, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v5}, Lcom/android/common/appService/W;->qv()I

    move-result v5

    sparse-switch v5, :sswitch_data_156

    .line 1007
    :goto_70
    sget-boolean v1, Lcom/android/common/h;->ahq:Z

    if-eqz v1, :cond_7c

    .line 1008
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 1009
    const/16 v1, 0x9

    aput v12, v0, v1

    .line 1011
    :cond_7c
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dL:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->requestLayout()V

    .line 959
    return-void

    .line 972
    :sswitch_82
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    iget v4, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    add-int/2addr v1, v4

    add-int/2addr v1, v2

    if-ge v1, v3, :cond_9c

    .line 973
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cv()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_70

    .line 975
    :cond_9c
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cv()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_70

    .line 979
    :sswitch_ac
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/android/common/independentFocusExposure/a;->dW:I

    if-le v1, v3, :cond_c4

    .line 980
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cv()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    sub-int v2, v3, v2

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_70

    .line 982
    :cond_c4
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cv()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    iget v3, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_70

    .line 986
    :sswitch_d6
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_eb

    .line 987
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cv()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_70

    .line 989
    :cond_eb
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cv()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_70

    .line 993
    :sswitch_fe
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/ActivityBase;->atb()Lcom/android/common/appService/R;

    move-result-object v3

    .line 994
    invoke-virtual {v3}, Lcom/android/common/appService/R;->ox()I

    move-result v5

    .line 995
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 996
    invoke-virtual {v3, v6}, Lcom/android/common/appService/R;->oy([I)V

    .line 997
    invoke-virtual {v3}, Lcom/android/common/appService/R;->ot()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v10, v8

    if-nez v3, :cond_121

    .line 998
    aget v1, v6, v12

    sub-int v1, v4, v1

    sub-int/2addr v1, v5

    .line 1000
    :cond_121
    iget v3, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    iget v5, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    add-int/2addr v3, v5

    add-int/2addr v3, v2

    iget-object v5, p0, Lcom/android/common/independentFocusExposure/a;->cS:[I

    aget v5, v5, v12

    add-int/2addr v3, v5

    sub-int v1, v4, v1

    if-ge v3, v1, :cond_143

    .line 1001
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cv()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    iget v3, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_70

    .line 1003
    :cond_143
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cv()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    sub-int v2, v3, v2

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_70

    .line 970
    nop

    :sswitch_data_156
    .sparse-switch
        0x0 -> :sswitch_82
        0x5a -> :sswitch_ac
        0xb4 -> :sswitch_d6
        0x10e -> :sswitch_fe
    .end sparse-switch
.end method

.method private cZ()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    const/16 v7, 0x168

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 663
    const-string/jumbo v0, "scaleX"

    new-array v1, v5, [F

    fill-array-data v1, :array_ce

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dz:Landroid/animation/PropertyValuesHolder;

    .line 664
    const-string/jumbo v0, "scaleY"

    new-array v1, v5, [F

    fill-array-data v1, :array_d6

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dA:Landroid/animation/PropertyValuesHolder;

    .line 665
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    .line 666
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/a;->dz:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/a;->dA:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    .line 665
    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dx:Landroid/animation/ObjectAnimator;

    .line 668
    const-string/jumbo v0, "x"

    new-array v1, v5, [F

    invoke-static {v7}, Lcom/android/common/h;->aoT(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 669
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v3}, Lcom/android/common/ui/RotateLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 668
    sub-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v6

    .line 669
    invoke-static {v7}, Lcom/android/common/h;->aoT(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 670
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v3}, Lcom/android/common/ui/RotateLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 669
    sub-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v4

    .line 668
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dB:Landroid/animation/PropertyValuesHolder;

    .line 671
    const-string/jumbo v0, "y"

    new-array v1, v5, [F

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dj:I

    .line 672
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v3}, Lcom/android/common/ui/RotateLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 671
    sub-int/2addr v2, v3

    .line 672
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/a;->cS:[I

    aget v3, v3, v4

    .line 671
    sub-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v6

    .line 673
    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dj:I

    iget-object v3, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v3}, Lcom/android/common/ui/RotateLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/common/independentFocusExposure/a;->cS:[I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v4

    .line 671
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dC:Landroid/animation/PropertyValuesHolder;

    .line 674
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    .line 675
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/a;->dB:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/a;->dC:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    .line 674
    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dy:Landroid/animation/ObjectAnimator;

    .line 677
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 678
    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/a;->dx:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/a;->dy:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 679
    new-instance v1, Lcom/android/common/independentFocusExposure/u;

    invoke-direct {v1, p0}, Lcom/android/common/independentFocusExposure/u;-><init>(Lcom/android/common/independentFocusExposure/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 697
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 662
    return-void

    .line 663
    nop

    :array_ce
    .array-data 4
        0x40000000    # 2.0f
        0x40000000    # 2.0f
    .end array-data

    .line 664
    :array_d6
    .array-data 4
        0x40000000    # 2.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private cr(II)I
    .registers 3

    .prologue
    .line 404
    if-ge p1, p2, :cond_3

    return p2

    .line 405
    :cond_3
    return p1
.end method

.method private cs(IIFIIIILandroid/graphics/Rect;)V
    .registers 16

    .prologue
    const/4 v5, 0x0

    .line 482
    int-to-float v0, p1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 483
    int-to-float v1, p2

    mul-float/2addr v1, p3

    float-to-int v1, v1

    .line 484
    div-int/lit8 v2, v0, 0x2

    sub-int v2, p4, v2

    sub-int v3, p6, v0

    invoke-static {v2, v5, v3}, Lcom/android/common/h;->aoS(III)I

    move-result v2

    .line 485
    div-int/lit8 v3, v1, 0x2

    sub-int v3, p5, v3

    sub-int v4, p7, v1

    invoke-static {v3, v5, v4}, Lcom/android/common/h;->aoS(III)I

    move-result v3

    .line 487
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 488
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->ds:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 489
    invoke-static {v4, p8}, Lcom/android/common/h;->aqc(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 481
    return-void
.end method

.method private cv()I
    .registers 3

    .prologue
    .line 912
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->dK:I

    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private cx()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method private cy(II)I
    .registers 3

    .prologue
    .line 1037
    if-gt p1, p2, :cond_3

    .line 1038
    return p1

    .line 1040
    :cond_3
    return p2
.end method

.method private cz()I
    .registers 3

    .prologue
    .line 908
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->db:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private dc()V
    .registers 4

    .prologue
    .line 1015
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cx()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1016
    const-string/jumbo v1, "pref_camera_exposure_key"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1017
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1018
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dJ:Lcom/android/common/ui/VerticalSeekBarForEv;

    if-eqz v0, :cond_2d

    .line 1019
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dJ:Lcom/android/common/ui/VerticalSeekBarForEv;

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dJ:Lcom/android/common/ui/VerticalSeekBarForEv;

    invoke-virtual {v1}, Lcom/android/common/ui/VerticalSeekBarForEv;->getMax()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/ui/VerticalSeekBarForEv;->setProgress(I)V

    .line 1020
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->dg()V

    .line 1021
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dJ:Lcom/android/common/ui/VerticalSeekBarForEv;

    invoke-virtual {v0}, Lcom/android/common/ui/VerticalSeekBarForEv;->vv()V

    .line 1014
    :cond_2d
    return-void
.end method

.method private de()V
    .registers 3

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->dn:Z

    if-nez v0, :cond_22

    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->dn:Z

    .line 735
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->hm(I)V

    .line 740
    :goto_f
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 741
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 732
    return-void

    .line 737
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->dn:Z

    .line 738
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->hm(I)V

    goto :goto_f
.end method

.method private df()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 459
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    if-nez v0, :cond_7

    return-void

    .line 460
    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 461
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateLayout;->getLocationInWindow([I)V

    .line 462
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->cR:[I

    aget v2, v0, v4

    iget v3, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/common/independentFocusExposure/a;->cr(II)I

    move-result v2

    aput v2, v1, v4

    .line 463
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->cR:[I

    aget v0, v0, v5

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/common/independentFocusExposure/a;->cr(II)I

    move-result v0

    aput v0, v1, v5

    .line 458
    return-void
.end method

.method private dg()V
    .registers 3

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1033
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dJ:Lcom/android/common/ui/VerticalSeekBarForEv;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/VerticalSeekBarForEv;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1031
    return-void
.end method

.method private dl()V
    .registers 6

    .prologue
    .line 506
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 507
    iget-boolean v1, p0, Lcom/android/common/independentFocusExposure/a;->du:Z

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->cT:I

    iget v3, p0, Lcom/android/common/independentFocusExposure/a;->dh:I

    iget v4, p0, Lcom/android/common/independentFocusExposure/a;->dg:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/common/h;->aqa(Landroid/graphics/Matrix;ZIII)V

    .line 511
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->ds:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 505
    return-void
.end method

.method static synthetic dm(Lcom/android/common/independentFocusExposure/a;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cW:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic dn(Lcom/android/common/independentFocusExposure/a;)Lcom/android/common/ui/RotateLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic do(Lcom/android/common/independentFocusExposure/a;)Lcom/android/common/ui/RotateLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->de:Lcom/android/common/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic dp(Lcom/android/common/independentFocusExposure/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dl:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic dq(Lcom/android/common/independentFocusExposure/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    return v0
.end method

.method static synthetic dr(Lcom/android/common/independentFocusExposure/a;)I
    .registers 2

    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->dH:I

    return v0
.end method

.method static synthetic ds(Lcom/android/common/independentFocusExposure/a;)I
    .registers 2

    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->dI:I

    return v0
.end method

.method static synthetic dt(Lcom/android/common/independentFocusExposure/a;)Lcom/android/common/ui/RotateLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dL:Lcom/android/common/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic du(Lcom/android/common/independentFocusExposure/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    return p1
.end method

.method static synthetic dv(Lcom/android/common/independentFocusExposure/a;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/common/independentFocusExposure/a;->cV(II)V

    return-void
.end method

.method static synthetic dw(Lcom/android/common/independentFocusExposure/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cY()V

    return-void
.end method


# virtual methods
.method public cA()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 1078
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    if-eqz v0, :cond_a

    .line 1079
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->setVisibility(I)V

    .line 1081
    :cond_a
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dL:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_13

    .line 1082
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dL:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 1077
    :cond_13
    return-void
.end method

.method public cD(Landroid/app/Activity;Lcom/android/common/appService/R;)V
    .registers 5

    .prologue
    .line 138
    const v0, 0x7f1000d7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    .line 139
    const v0, 0x7f1000d8

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    .line 140
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    invoke-virtual {v0, p0}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->hl(Lcom/android/common/independentFocusExposure/a;)V

    .line 141
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->cg()V

    .line 143
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cJ()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    .line 146
    :cond_29
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cN()Z

    move-result v0

    if-nez v0, :cond_36

    .line 147
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->setVisibility(I)V

    .line 149
    :cond_36
    const v0, 0x7f1000da

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->db:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f1000d9

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->de:Lcom/android/common/ui/RotateLayout;

    .line 152
    const v0, 0x7f1000db

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dL:Lcom/android/common/ui/RotateLayout;

    .line 153
    const v0, 0x7f1000dc

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/VerticalSeekBarForEv;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dJ:Lcom/android/common/ui/VerticalSeekBarForEv;

    .line 154
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dJ:Lcom/android/common/ui/VerticalSeekBarForEv;

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/VerticalSeekBarForEv;->vu(Lcom/android/common/appService/W;)V

    .line 156
    const v0, 0x7f1000cc

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->di:Landroid/widget/RelativeLayout;

    .line 158
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cB()V

    .line 159
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cC()V

    .line 160
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cE()V

    .line 161
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cF()V

    .line 163
    invoke-virtual {p0, p2}, Lcom/android/common/independentFocusExposure/a;->dh(Lcom/android/common/appService/R;)V

    .line 137
    return-void
.end method

.method public cK()Z
    .registers 3

    .prologue
    .line 184
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->dG:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public cM(Z)V
    .registers 2

    .prologue
    .line 847
    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/a;->dv:Z

    .line 846
    return-void
.end method

.method public cP()Z
    .registers 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dJ:Lcom/android/common/ui/VerticalSeekBarForEv;

    if-nez v0, :cond_6

    .line 653
    const/4 v0, 0x1

    return v0

    .line 655
    :cond_6
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->dn:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dJ:Lcom/android/common/ui/VerticalSeekBarForEv;

    invoke-virtual {v0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dJ:Lcom/android/common/ui/VerticalSeekBarForEv;

    invoke-virtual {v1}, Lcom/android/common/ui/VerticalSeekBarForEv;->getMax()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_1c

    .line 657
    :cond_1a
    const/4 v0, 0x0

    return v0

    .line 656
    :cond_1c
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fV()Z

    move-result v0

    .line 655
    if-nez v0, :cond_1a

    .line 659
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->dw:Z

    return v0
.end method

.method public cQ()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 777
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    if-nez v0, :cond_6

    return-void

    .line 778
    :cond_6
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/a;->dn:Z

    .line 779
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/a;->dq:Z

    .line 780
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->hm(I)V

    .line 781
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 782
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/a;->dv:Z

    .line 776
    return-void
.end method

.method public cR()V
    .registers 3

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    if-eqz v0, :cond_10

    .line 860
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cP:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 861
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setAlpha(F)V

    .line 858
    :goto_f
    return-void

    .line 863
    :cond_10
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cO:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 864
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setAlpha(F)V

    goto :goto_f
.end method

.method public cS(Z)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 609
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_f

    .line 610
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_10

    .line 611
    :cond_f
    return-void

    :cond_10
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cN()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 614
    if-nez p1, :cond_2d

    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cP()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    if-eqz v0, :cond_2d

    .line 615
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cP:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 616
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setAlpha(F)V

    .line 619
    :cond_2d
    if-eqz p1, :cond_62

    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cP()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 620
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->hm(I)V

    .line 621
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    if-nez v0, :cond_52

    .line 622
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dL:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    .line 624
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->dc()V

    .line 625
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->pU(I)V

    .line 628
    :cond_52
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cL()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 629
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    invoke-virtual {v0, v2}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dL:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 606
    :cond_62
    :goto_62
    return-void

    .line 632
    :cond_63
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_62

    .line 633
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    invoke-virtual {v0, v3}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 635
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cZ()V

    goto :goto_62
.end method

.method public cT(Landroid/view/MotionEvent;)V
    .registers 15

    .prologue
    const/16 v12, 0xa

    const/16 v11, 0x8

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 196
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cI()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 197
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    if-nez v0, :cond_12

    .line 200
    :cond_11
    return-void

    .line 198
    :cond_12
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-eq v0, v11, :cond_11

    .line 199
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cN()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 206
    iput v3, p0, Lcom/android/common/independentFocusExposure/a;->dH:I

    .line 207
    iput v5, p0, Lcom/android/common/independentFocusExposure/a;->dI:I

    .line 208
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cN()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 209
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-ne v0, v11, :cond_43

    .line 210
    :cond_42
    return-void

    .line 212
    :cond_43
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->dp:Z

    if-nez v0, :cond_4a

    .line 213
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->df()V

    .line 214
    :cond_4a
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->dp:Z

    if-nez v0, :cond_55

    invoke-direct {p0, v3, v5}, Lcom/android/common/independentFocusExposure/a;->cO(II)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 215
    return-void

    .line 218
    :cond_55
    iput-boolean v10, p0, Lcom/android/common/independentFocusExposure/a;->dp:Z

    .line 219
    iput-boolean v10, p0, Lcom/android/common/independentFocusExposure/a;->dq:Z

    .line 221
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->dG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dG:I

    .line 222
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->dG:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7d

    .line 223
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cO:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 224
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dD:Landroid/widget/RelativeLayout$LayoutParams;

    .line 225
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->dV()Z

    move-result v0

    if-nez v0, :cond_1e3

    .line 226
    iput v9, p0, Lcom/android/common/independentFocusExposure/a;->dW:I

    .line 227
    iput v9, p0, Lcom/android/common/independentFocusExposure/a;->dX:I

    .line 239
    :cond_7d
    :goto_7d
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->dG:I

    if-le v0, v12, :cond_1b1

    .line 240
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_90

    .line 241
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v8}, Lcom/android/common/ui/RotateLayout;->setTranslationX(F)V

    .line 242
    :cond_90
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_9f

    .line 243
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v8}, Lcom/android/common/ui/RotateLayout;->setTranslationY(F)V

    .line 245
    :cond_9f
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->en()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 246
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/common/independentFocusExposure/i;->eo(Z)V

    .line 249
    :cond_b4
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->dm:Z

    if-nez v0, :cond_d9

    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    if-eqz v0, :cond_d9

    .line 250
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dl:Landroid/os/Handler;

    const-wide/16 v6, 0x0

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 251
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->ep()V

    .line 252
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fU()V

    .line 253
    iput-boolean v10, p0, Lcom/android/common/independentFocusExposure/a;->dm:Z

    .line 256
    :cond_d9
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cS:[I

    aget v0, v0, v9

    sub-int v0, v3, v0

    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 257
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dh:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    sub-int/2addr v1, v2

    .line 256
    invoke-static {v0, v9, v1}, Lcom/android/common/h;->aoS(III)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    .line 258
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cS:[I

    aget v0, v0, v10

    sub-int v0, v5, v0

    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 259
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dW:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dg:I

    iget v4, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/android/common/independentFocusExposure/a;->dX:I

    sub-int/2addr v2, v4

    .line 258
    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoS(III)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    .line 261
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dD:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    invoke-virtual {v0, v1, v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 262
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dD:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 263
    const/16 v1, 0xd

    aput v9, v0, v1

    .line 264
    const/16 v1, 0x9

    aput v10, v0, v1

    .line 265
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->requestLayout()V

    .line 266
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    invoke-virtual {v0, v9}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dL:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v9}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 268
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cY()V

    .line 269
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->dc()V

    .line 270
    iput-boolean v9, p0, Lcom/android/common/independentFocusExposure/a;->dw:Z

    .line 272
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    if-nez v0, :cond_15e

    .line 273
    invoke-direct {p0, v3, v5}, Lcom/android/common/independentFocusExposure/a;->cV(II)V

    .line 274
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dl:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 275
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->dG:I

    const/16 v1, 0xc

    if-ne v1, v0, :cond_15e

    .line 276
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->de:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15e

    .line 277
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->de:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_15e

    .line 282
    :cond_15e
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->dE:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dE:I

    .line 283
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cS:[I

    aget v0, v0, v9

    sub-int v4, v3, v0

    .line 284
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cS:[I

    aget v0, v0, v10

    sub-int v0, v5, v0

    .line 285
    iget v3, p0, Lcom/android/common/independentFocusExposure/a;->dW:I

    iget v5, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget v5, p0, Lcom/android/common/independentFocusExposure/a;->dg:I

    iget v6, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/common/independentFocusExposure/a;->dX:I

    sub-int/2addr v5, v6

    .line 284
    invoke-static {v0, v3, v5}, Lcom/android/common/h;->aoS(III)I

    move-result v5

    .line 286
    iget v6, p0, Lcom/android/common/independentFocusExposure/a;->dh:I

    iget v7, p0, Lcom/android/common/independentFocusExposure/a;->dg:I

    .line 287
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dt:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 283
    const/high16 v3, 0x3fc00000    # 1.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/common/independentFocusExposure/a;->cs(IIFIIIILandroid/graphics/Rect;)V

    .line 289
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->dE:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1a8

    .line 290
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0, v11}, Lcom/android/common/appService/W;->pU(I)V

    .line 292
    :cond_1a8
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eq()V

    .line 295
    :cond_1b1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v10, :cond_1e2

    .line 296
    const-string/jumbo v0, "CameraExposureService"

    const-string/jumbo v1, "CES -- touch up"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iput-boolean v9, p0, Lcom/android/common/independentFocusExposure/a;->dm:Z

    .line 298
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->dG:I

    if-le v0, v12, :cond_1d4

    .line 299
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cO:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 300
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dl:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 302
    :cond_1d4
    iput-boolean v9, p0, Lcom/android/common/independentFocusExposure/a;->dq:Z

    .line 303
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->dG:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1e0

    .line 304
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0, v11}, Lcom/android/common/appService/W;->pU(I)V

    .line 306
    :cond_1e0
    iput v9, p0, Lcom/android/common/independentFocusExposure/a;->dG:I

    .line 195
    :cond_1e2
    return-void

    .line 229
    :cond_1e3
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cu()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dW:I

    .line 230
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cu()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dX:I

    goto/16 :goto_7d
.end method

.method public cU(II)Z
    .registers 16

    .prologue
    const/16 v2, 0xa

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 320
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cI()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 321
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    if-nez v0, :cond_12

    .line 323
    :cond_11
    return v9

    .line 322
    :cond_12
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    .line 323
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cN()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 326
    invoke-static {v2}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    if-lt p1, v0, :cond_31

    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->dh:I

    invoke-static {v2}, Lcom/android/common/h;->aoT(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_32

    .line 327
    :cond_31
    return v9

    .line 329
    :cond_32
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->dV()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 330
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cu()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dW:I

    .line 331
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/a;->cu()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dX:I

    .line 332
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dW:I

    if-lt v0, v1, :cond_78

    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dg:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dX:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_79

    .line 333
    :cond_78
    return v9

    .line 336
    :cond_79
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dL:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v12}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    invoke-virtual {v0, v9}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->setVisibility(I)V

    .line 338
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    .line 339
    iget v6, p0, Lcom/android/common/independentFocusExposure/a;->dh:I

    iget v7, p0, Lcom/android/common/independentFocusExposure/a;->dg:I

    .line 340
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dt:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 338
    const/high16 v3, 0x3fc00000    # 1.5f

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/common/independentFocusExposure/a;->cs(IIFIIIILandroid/graphics/Rect;)V

    .line 341
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cO:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 342
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cP:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 376
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    if-eqz v0, :cond_10c

    .line 377
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dh:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    sub-int/2addr v1, v2

    invoke-static {v0, v9, v1}, Lcom/android/common/h;->aoS(III)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    .line 378
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dg:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    sub-int/2addr v1, v2

    invoke-static {v0, v9, v1}, Lcom/android/common/h;->aoS(III)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    .line 379
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 381
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    int-to-float v1, v1

    .line 379
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 382
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    int-to-float v1, v1

    .line 379
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 382
    const-wide/16 v2, 0x118

    .line 379
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->cU:Ljava/lang/Runnable;

    .line 379
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 392
    :goto_fc
    iput-boolean v9, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    .line 395
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->de:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v12}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 397
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cY()V

    .line 398
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->dc()V

    .line 399
    iput-boolean v11, p0, Lcom/android/common/independentFocusExposure/a;->dw:Z

    .line 400
    return v11

    .line 385
    :cond_10c
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dh:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->df:I

    sub-int/2addr v1, v2

    invoke-static {v0, v9, v1}, Lcom/android/common/h;->aoS(III)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    .line 386
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dg:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->cX:I

    sub-int/2addr v1, v2

    invoke-static {v0, v9, v1}, Lcom/android/common/h;->aoS(III)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    .line 387
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 388
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dr:I

    int-to-float v1, v1

    .line 387
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 389
    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dF:I

    int-to-float v1, v1

    .line 387
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 389
    const-wide/16 v2, 0x118

    .line 387
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->cU:Ljava/lang/Runnable;

    .line 387
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_fc
.end method

.method public cW()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 705
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    if-eqz v0, :cond_13

    .line 706
    const-string/jumbo v0, "CameraExposureService"

    const-string/jumbo v1, "Still in BigCAF mode, ignore longpress lock."

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    return-void

    .line 709
    :cond_13
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rS()V

    .line 713
    const-string/jumbo v0, "scaleX"

    new-array v1, v4, [F

    fill-array-data v1, :array_9a

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dz:Landroid/animation/PropertyValuesHolder;

    .line 714
    const-string/jumbo v0, "scaleY"

    new-array v1, v4, [F

    fill-array-data v1, :array_a2

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dA:Landroid/animation/PropertyValuesHolder;

    .line 715
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    .line 716
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/a;->dz:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/a;->dA:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    .line 715
    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dx:Landroid/animation/ObjectAnimator;

    .line 718
    const-string/jumbo v0, "scaleX"

    new-array v1, v4, [F

    fill-array-data v1, :array_aa

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 719
    const-string/jumbo v1, "scaleY"

    new-array v2, v4, [F

    fill-array-data v2, :array_b2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 720
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    new-array v3, v4, [Landroid/animation/PropertyValuesHolder;

    .line 721
    aput-object v0, v3, v5

    aput-object v1, v3, v6

    .line 720
    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 723
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 724
    new-array v2, v4, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/common/independentFocusExposure/a;->dx:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 725
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 727
    iput-boolean v5, p0, Lcom/android/common/independentFocusExposure/a;->dq:Z

    .line 728
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->de()V

    .line 729
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "lock_exposure"

    const-string/jumbo v2, "lock_exposure"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    return-void

    .line 713
    :array_9a
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data

    .line 714
    :array_a2
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data

    .line 718
    :array_aa
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 719
    :array_b2
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public cX()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 821
    const-string/jumbo v0, "CameraExposureService"

    const-string/jumbo v1, "onStatusRestore"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iput-boolean v3, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    .line 823
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/a;->dn:Z

    .line 824
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/a;->dv:Z

    .line 825
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/a;->dp:Z

    .line 826
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/a;->dq:Z

    .line 827
    iput-boolean v3, p0, Lcom/android/common/independentFocusExposure/a;->dw:Z

    .line 820
    return-void
.end method

.method public ch()Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->da:Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

    return-object v0
.end method

.method public ci(Landroid/graphics/Rect;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 471
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    .line 474
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 475
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->ds:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 476
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dt:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Lcom/android/common/h;->aqc(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 470
    return-void
.end method

.method public cj()Z
    .registers 2

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->dp:Z

    return v0
.end method

.method public ck()Lcom/android/common/ui/VerticalSeekBarForEv;
    .registers 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dJ:Lcom/android/common/ui/VerticalSeekBarForEv;

    return-object v0
.end method

.method public cl()Z
    .registers 2

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    return v0
.end method

.method public cm()I
    .registers 2

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->di:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b

    .line 1067
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->di:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    return v0

    .line 1069
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public cn()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    .line 798
    const-string/jumbo v0, "CameraExposureService"

    const-string/jumbo v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cJ()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 800
    iput-boolean v3, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    .line 801
    iput-boolean v3, p0, Lcom/android/common/independentFocusExposure/a;->dw:Z

    .line 804
    :cond_15
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->de:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_1e

    .line 805
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->de:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 807
    :cond_1e
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dL:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_27

    .line 808
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dL:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 810
    :cond_27
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    if-eqz v0, :cond_30

    .line 811
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    invoke-virtual {v0, v2}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->setVisibility(I)V

    .line 813
    :cond_30
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->dc()V

    .line 797
    return-void
.end method

.method public co()V
    .registers 2

    .prologue
    .line 1026
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acZ()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XI()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1027
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->dc()V

    .line 1025
    :cond_1d
    return-void
.end method

.method public cp()Z
    .registers 2

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->dn:Z

    return v0
.end method

.method public cq()V
    .registers 3

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-eq v0, v1, :cond_20

    .line 1052
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v1

    if-ne v0, v1, :cond_32

    .line 1053
    :cond_20
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->cQ:Lcom/android/common/independentFocusExposure/f;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->ry(Lcom/android/common/appService/O;)V

    .line 1054
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cQ:Lcom/android/common/independentFocusExposure/f;

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/f;->dx(I)V

    .line 1050
    :cond_32
    return-void
.end method

.method public ct()Z
    .registers 2

    .prologue
    .line 768
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->dn:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->dq:Z

    if-eqz v0, :cond_b

    :cond_8
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->dv:Z

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public cu()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    return-object v0
.end method

.method public cw()Ljava/util/List;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 493
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/a;->do:Z

    if-nez v0, :cond_28

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->cN()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 497
    :try_start_b
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dt:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v1, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dt:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget v0, v0, Landroid/hardware/Camera$Area;->weight:I

    invoke-direct {p0, v1, v0}, Lcom/android/common/independentFocusExposure/a;->cG(Landroid/graphics/Rect;I)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_24} :catch_29

    move-result v0

    if-nez v0, :cond_2a

    .line 498
    return-object v3

    .line 494
    :cond_28
    return-object v3

    .line 499
    :catch_29
    move-exception v0

    .line 502
    :cond_2a
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dt:Ljava/util/List;

    return-object v0
.end method

.method public da()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 869
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dl:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 870
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dl:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 868
    :cond_a
    return-void
.end method

.method public db()V
    .registers 3

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-eq v0, v1, :cond_20

    .line 1060
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v1

    if-ne v0, v1, :cond_27

    .line 1061
    :cond_20
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/a;->cQ:Lcom/android/common/independentFocusExposure/f;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->rz(Lcom/android/common/appService/O;)V

    .line 1058
    :cond_27
    return-void
.end method

.method public dd()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 188
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;->dN:Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/a;->dj(Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;)V

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/common/independentFocusExposure/a;->di(Z)V

    .line 190
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/a;->dm:Z

    .line 191
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/a;->dq:Z

    .line 192
    iput v1, p0, Lcom/android/common/independentFocusExposure/a;->dG:I

    .line 187
    return-void
.end method

.method public dh(Lcom/android/common/appService/R;)V
    .registers 5

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/android/common/appService/R;->ow()I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dh:I

    .line 129
    invoke-virtual {p1}, Lcom/android/common/appService/R;->ox()I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dg:I

    .line 130
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cS:[I

    invoke-virtual {p1, v0}, Lcom/android/common/appService/R;->oy([I)V

    .line 131
    iget v0, p0, Lcom/android/common/independentFocusExposure/a;->dh:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dk:I

    .line 132
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cS:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/common/independentFocusExposure/a;->dg:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/independentFocusExposure/a;->dj:I

    .line 133
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/a;->dl()V

    .line 134
    const-string/jumbo v0, "CameraExposureService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExposureFrameSize, mHalfWindowHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/independentFocusExposure/a;->dj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public di(Z)V
    .registers 2

    .prologue
    .line 467
    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/a;->dp:Z

    .line 466
    return-void
.end method

.method public dj(Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;)V
    .registers 4

    .prologue
    .line 171
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;->dM:Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

    if-ne p1, v0, :cond_17

    .line 172
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_17

    .line 173
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rV()Z

    move-result v0

    .line 171
    if-eqz v0, :cond_17

    .line 174
    return-void

    .line 176
    :cond_17
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/a;->da:Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

    .line 170
    return-void
.end method

.method public dk(I)V
    .registers 3

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    if-eqz v0, :cond_9

    .line 756
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cY:Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->setVisibility(I)V

    .line 758
    :cond_9
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dL:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_12

    .line 759
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->dL:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 754
    :cond_12
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_9

    .line 750
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/a;->cZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 748
    :cond_9
    return-void
.end method

.class public Lcom/android/common/independentFocusExposure/i;
.super Lcom/android/common/independentFocusExposure/h;
.source "SourceFile"


# instance fields
.field private dY:Lcom/android/common/independentFocusExposure/m;

.field private dZ:Z

.field private eA:Z

.field private eB:Z

.field private eC:Z

.field private eD:Z

.field private eE:Z

.field private eF:Landroid/animation/ObjectAnimator;

.field private eG:Landroid/animation/ObjectAnimator;

.field private eH:Lcom/android/common/independentFocusExposure/n;

.field private eI:Landroid/animation/PropertyValuesHolder;

.field private eJ:Landroid/animation/PropertyValuesHolder;

.field private eK:Landroid/animation/PropertyValuesHolder;

.field private eL:Landroid/animation/PropertyValuesHolder;

.field private eM:Landroid/widget/RelativeLayout$LayoutParams;

.field private eN:I

.field private eO:I

.field ea:Landroid/animation/AnimatorSet;

.field eb:Landroid/animation/AnimatorSet;

.field private ec:[I

.field private ed:[I

.field private ee:I

.field private ef:Ljava/lang/Runnable;

.field private eg:Ljava/lang/Runnable;

.field private eh:Ljava/util/List;

.field private ei:I

.field private ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

.field private ek:Lcom/android/common/ui/RotateLayout;

.field private el:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;

.field private em:I

.field private en:I

.field private eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

.field private ep:I

.field private eq:I

.field private er:I

.field private final es:Landroid/os/Handler;

.field private et:Z

.field private eu:Z

.field private ev:Z

.field private ew:Z

.field private ex:Z

.field private ey:I

.field private ez:Landroid/graphics/Matrix;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 8

    .prologue
    const/16 v5, 0x42

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/h;-><init>()V

    .line 54
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eA:Z

    .line 55
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/i;->ez:Landroid/graphics/Matrix;

    .line 56
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/i;->eh:Ljava/util/List;

    .line 57
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    .line 58
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    .line 59
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;->eQ:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->el:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;

    .line 61
    invoke-static {v5}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->ep:I

    .line 62
    invoke-static {v5}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->ei:I

    .line 63
    const/16 v0, 0x168

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->en:I

    .line 64
    const/16 v0, 0x280

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->em:I

    .line 65
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ed:[I

    .line 69
    iput v2, p0, Lcom/android/common/independentFocusExposure/i;->mState:I

    .line 75
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->ex:Z

    .line 76
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ec:[I

    .line 77
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/i;->eI:Landroid/animation/PropertyValuesHolder;

    .line 78
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/i;->eJ:Landroid/animation/PropertyValuesHolder;

    .line 79
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/i;->eK:Landroid/animation/PropertyValuesHolder;

    .line 80
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/i;->eL:Landroid/animation/PropertyValuesHolder;

    .line 81
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/i;->eF:Landroid/animation/ObjectAnimator;

    .line 82
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/i;->eG:Landroid/animation/ObjectAnimator;

    .line 83
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    .line 84
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ea:Landroid/animation/AnimatorSet;

    .line 85
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eb:Landroid/animation/AnimatorSet;

    .line 88
    iput-boolean v3, p0, Lcom/android/common/independentFocusExposure/i;->eB:Z

    .line 89
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->ew:Z

    .line 92
    new-instance v0, Lcom/android/common/independentFocusExposure/j;

    invoke-direct {v0, p0, v1}, Lcom/android/common/independentFocusExposure/j;-><init>(Lcom/android/common/independentFocusExposure/i;Lcom/android/common/independentFocusExposure/j;)V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ef:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Lcom/android/common/independentFocusExposure/k;

    invoke-direct {v0, p0, v1}, Lcom/android/common/independentFocusExposure/k;-><init>(Lcom/android/common/independentFocusExposure/i;Lcom/android/common/independentFocusExposure/k;)V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eg:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lcom/android/common/independentFocusExposure/l;

    invoke-direct {v0, p0, v1}, Lcom/android/common/independentFocusExposure/l;-><init>(Lcom/android/common/independentFocusExposure/i;Lcom/android/common/independentFocusExposure/l;)V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    .line 105
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->et:Z

    .line 107
    iput v2, p0, Lcom/android/common/independentFocusExposure/i;->eO:I

    .line 108
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eT:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 113
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eC:Z

    .line 114
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->dZ:Z

    .line 115
    iput v2, p0, Lcom/android/common/independentFocusExposure/i;->er:I

    .line 116
    iput v2, p0, Lcom/android/common/independentFocusExposure/i;->eq:I

    .line 117
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eE:Z

    .line 118
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eD:Z

    .line 119
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->ee:I

    .line 120
    new-instance v0, Lcom/android/common/independentFocusExposure/m;

    invoke-direct {v0, p0, v1}, Lcom/android/common/independentFocusExposure/m;-><init>(Lcom/android/common/independentFocusExposure/i;Lcom/android/common/independentFocusExposure/m;)V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dY:Lcom/android/common/independentFocusExposure/m;

    .line 124
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ez:Landroid/graphics/Matrix;

    .line 125
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    .line 126
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eh:Ljava/util/List;

    if-nez v0, :cond_b8

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eh:Ljava/util/List;

    .line 128
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eh:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_b8
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ri()I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->ee:I

    .line 131
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->eP()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->dW:I

    .line 132
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->eP()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->dX:I

    .line 123
    return-void
.end method

.method private eG()V
    .registers 3

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    .line 940
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->atq()Lcom/android/common/g/d;

    move-result-object v1

    .line 939
    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->atk(Lcom/android/common/a/b;)V

    .line 938
    return-void
.end method

.method private eH()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 961
    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->mState:I

    if-ne v0, v1, :cond_a

    .line 962
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sa()V

    .line 963
    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/common/independentFocusExposure/i;->fo(I)V

    .line 964
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/common/independentFocusExposure/i;->fn(Z)V

    .line 965
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sb()V

    .line 966
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 967
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 960
    return-void
.end method

.method private eI(II)I
    .registers 3

    .prologue
    .line 387
    if-ge p1, p2, :cond_3

    return p2

    .line 388
    :cond_3
    return p1
.end method

.method private eJ(IIFIIIILandroid/graphics/Rect;)V
    .registers 16

    .prologue
    const/4 v5, 0x0

    .line 440
    int-to-float v0, p1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 441
    int-to-float v1, p2

    mul-float/2addr v1, p3

    float-to-int v1, v1

    .line 442
    div-int/lit8 v2, v0, 0x2

    sub-int v2, p4, v2

    sub-int v3, p6, v0

    invoke-static {v2, v5, v3}, Lcom/android/common/h;->aoS(III)I

    move-result v2

    .line 443
    div-int/lit8 v3, v1, 0x2

    sub-int v3, p5, v3

    sub-int v4, p7, v1

    invoke-static {v3, v5, v4}, Lcom/android/common/h;->aoS(III)I

    move-result v3

    .line 445
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 446
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ez:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 447
    invoke-static {v4, p8}, Lcom/android/common/h;->aqc(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 439
    return-void
.end method

.method private eK()V
    .registers 2

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->eP()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rO()Z

    .line 1118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/i;->fo(I)V

    .line 1116
    return-void
.end method

.method private eM()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1190
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eW()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eE:Z

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eZ()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1189
    :cond_11
    :goto_11
    return-void

    .line 1191
    :cond_12
    const-string/jumbo v0, "CameraFocusService"

    const-string/jumbo v1, "force capture after caf focus for normal"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    invoke-direct {p0, v2}, Lcom/android/common/independentFocusExposure/i;->fn(Z)V

    .line 1194
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_2c

    .line 1195
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2d

    :cond_2c
    return-void

    .line 1197
    :cond_2d
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->px()V

    .line 1198
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eE:Z

    goto :goto_11
.end method

.method private eN()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1161
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eW()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6d

    .line 1162
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eD:Z

    .line 1161
    if-eqz v0, :cond_6d

    .line 1163
    const-string/jumbo v0, "CameraFocusService"

    const-string/jumbo v1, "force capture after auto focus for normal"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p0, v2}, Lcom/android/common/independentFocusExposure/i;->fo(I)V

    .line 1166
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    if-eqz v0, :cond_59

    .line 1167
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eb:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1168
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setAlpha(F)V

    .line 1173
    :goto_2d
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cR()V

    .line 1174
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->gl()V

    .line 1176
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    if-nez v0, :cond_4c

    .line 1177
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eT:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 1178
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->pU(I)V

    .line 1181
    :cond_4c
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_58

    .line 1182
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_66

    :cond_58
    return-void

    .line 1170
    :cond_59
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ea:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1171
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setAlpha(F)V

    goto :goto_2d

    .line 1184
    :cond_66
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->px()V

    .line 1185
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eD:Z

    .line 1160
    :cond_6d
    return-void
.end method

.method private eS()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method private eT()V
    .registers 13

    .prologue
    const-wide/16 v10, 0xdc

    const/4 v9, 0x2

    .line 393
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v1, "alpha"

    new-array v2, v9, [F

    fill-array-data v2, :array_94

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v2, "alpha"

    new-array v3, v9, [F

    fill-array-data v3, :array_9c

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 395
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v9, [F

    fill-array-data v4, :array_a4

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 396
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v4, "alpha"

    new-array v5, v9, [F

    fill-array-data v5, :array_ac

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 397
    iget-object v4, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    fill-array-data v6, :array_b4

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 398
    iget-object v5, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_bc

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 399
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/common/independentFocusExposure/i;->ea:Landroid/animation/AnimatorSet;

    .line 400
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/common/independentFocusExposure/i;->ea:Landroid/animation/AnimatorSet;

    .line 401
    iget-object v6, p0, Lcom/android/common/independentFocusExposure/i;->ea:Landroid/animation/AnimatorSet;

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    aput-object v2, v7, v9

    const/4 v0, 0x3

    aput-object v3, v7, v0

    .line 402
    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    .line 401
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 391
    return-void

    .line 393
    nop

    :array_94
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 394
    :array_9c
    .array-data 4
        0x3e800000    # 0.25f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 395
    :array_a4
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 396
    :array_ac
    .array-data 4
        0x3e800000    # 0.25f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 397
    :array_b4
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 398
    :array_bc
    .array-data 4
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private eU()V
    .registers 13

    .prologue
    const-wide/16 v10, 0xdc

    const/4 v9, 0x2

    .line 407
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v1, "alpha"

    new-array v2, v9, [F

    fill-array-data v2, :array_94

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v2, "alpha"

    new-array v3, v9, [F

    fill-array-data v3, :array_9c

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 409
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v9, [F

    fill-array-data v4, :array_a4

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 410
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v4, "alpha"

    new-array v5, v9, [F

    fill-array-data v5, :array_ac

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 411
    iget-object v4, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    fill-array-data v6, :array_b4

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 412
    iget-object v5, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_bc

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 413
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/common/independentFocusExposure/i;->eb:Landroid/animation/AnimatorSet;

    .line 414
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/common/independentFocusExposure/i;->eb:Landroid/animation/AnimatorSet;

    .line 415
    iget-object v6, p0, Lcom/android/common/independentFocusExposure/i;->eb:Landroid/animation/AnimatorSet;

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    aput-object v2, v7, v9

    const/4 v0, 0x3

    aput-object v3, v7, v0

    .line 416
    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    .line 415
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 405
    return-void

    .line 407
    nop

    :array_94
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 408
    :array_9c
    .array-data 4
        0x3e800000    # 0.25f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 409
    :array_a4
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 410
    :array_ac
    .array-data 4
        0x3e800000    # 0.25f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 411
    :array_b4
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 412
    :array_bc
    .array-data 4
        0x3e800000    # 0.25f
        0x0
    .end array-data
.end method

.method private eV(Landroid/graphics/Rect;I)Z
    .registers 8

    .prologue
    const/16 v4, 0x3e8

    const/16 v1, -0x3e8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 465
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

    .line 466
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

    .line 467
    :cond_2a
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_2f

    return v2

    .line 468
    :cond_2f
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_34

    return v2

    .line 469
    :cond_34
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v4, :cond_3c

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v4, :cond_3d

    :cond_3c
    return v2

    .line 470
    :cond_3d
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_44

    return v2

    .line 471
    :cond_44
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_4b

    return v2

    .line 472
    :cond_4b
    return v3
.end method

.method private eW()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1037
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne v1, v2, :cond_1c

    .line 1038
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v2

    if-ne v1, v2, :cond_1c

    const/4 v0, 0x1

    .line 1037
    :cond_1c
    return v0
.end method

.method private eX()Z
    .registers 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dA()Z

    move-result v0

    return v0
.end method

.method private eY()Z
    .registers 5

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eS()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_fengzhi_focus_key"

    .line 957
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->eP()Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a03e4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 956
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 957
    const-string/jumbo v1, "on"

    .line 956
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private eZ()Z
    .registers 2

    .prologue
    .line 1033
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->ady()Z

    move-result v0

    return v0
.end method

.method static synthetic fA(Lcom/android/common/independentFocusExposure/i;)Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    return-object v0
.end method

.method static synthetic fB(Lcom/android/common/independentFocusExposure/i;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic fC(Lcom/android/common/independentFocusExposure/i;Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;)Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;
    .registers 2

    iput-object p1, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    return-object p1
.end method

.method static synthetic fD(Lcom/android/common/independentFocusExposure/i;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    return p1
.end method

.method static synthetic fE(Lcom/android/common/independentFocusExposure/i;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/i;->eB:Z

    return p1
.end method

.method static synthetic fF(Lcom/android/common/independentFocusExposure/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eK()V

    return-void
.end method

.method static synthetic fG(Lcom/android/common/independentFocusExposure/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eM()V

    return-void
.end method

.method static synthetic fH(Lcom/android/common/independentFocusExposure/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eN()V

    return-void
.end method

.method private fa()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 287
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Lu()I

    move-result v1

    if-lez v1, :cond_16

    const/4 v0, 0x1

    .line 286
    :cond_16
    return v0
.end method

.method private fc()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1072
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eS()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1073
    return v3

    .line 1075
    :cond_9
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eS()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "maf_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1076
    if-eq v0, v2, :cond_18

    .line 1077
    const/4 v0, 0x1

    return v0

    .line 1079
    :cond_18
    return v3
.end method

.method private fd()Z
    .registers 3

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rK()Lcom/android/common/appService/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/s;->kG()Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    move-result-object v0

    .line 1068
    sget-object v1, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;->iv:Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    .line 1067
    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private fe()Z
    .registers 3

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afb:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_1c

    .line 648
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afc:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_1e

    .line 650
    :cond_1c
    const/4 v0, 0x1

    return v0

    .line 649
    :cond_1e
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afd:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_1c

    .line 652
    const/4 v0, 0x0

    return v0
.end method

.method private ff()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1042
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-eq v1, v2, :cond_15

    .line 1043
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    if-ne v1, v2, :cond_16

    .line 1042
    :cond_15
    :goto_15
    return v0

    .line 1044
    :cond_16
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jm:Lcom/android/common/appService/CameraMember;

    if-eq v1, v2, :cond_15

    .line 1045
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jF:Lcom/android/common/appService/CameraMember;

    if-eq v1, v2, :cond_15

    .line 1046
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jq:Lcom/android/common/appService/CameraMember;

    if-eq v1, v2, :cond_15

    .line 1047
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jk:Lcom/android/common/appService/CameraMember;

    if-eq v1, v2, :cond_15

    .line 1048
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    if-eq v1, v2, :cond_15

    .line 1049
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    if-eq v1, v2, :cond_15

    const/4 v0, 0x0

    goto :goto_15
.end method

.method private fg()Z
    .registers 3

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    .line 990
    sget-object v1, Lcom/android/common/appService/CameraMember;->jG:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_e

    .line 991
    sget-object v1, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_10

    .line 993
    :cond_e
    const/4 v0, 0x0

    return v0

    .line 992
    :cond_10
    sget-object v1, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_e

    .line 995
    const/4 v0, 0x1

    return v0
.end method

.method private fh()Z
    .registers 2

    .prologue
    .line 866
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acW()Z

    move-result v0

    return v0
.end method

.method private fi(II)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0x17

    const/4 v1, 0x0

    .line 421
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/i;->ec:[I

    aget v2, v2, v1

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v4}, Lcom/android/common/h;->aoT(I)I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 422
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/i;->ec:[I

    aget v2, v2, v0

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v4}, Lcom/android/common/h;->aoT(I)I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 421
    :goto_24
    return v0

    :cond_25
    move v0, v1

    .line 422
    goto :goto_24

    :cond_27
    move v0, v1

    .line 421
    goto :goto_24
.end method

.method private fk()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    const/16 v7, 0x168

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 657
    const-string/jumbo v0, "scaleX"

    new-array v1, v5, [F

    fill-array-data v1, :array_ce

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eI:Landroid/animation/PropertyValuesHolder;

    .line 658
    const-string/jumbo v0, "scaleY"

    new-array v1, v5, [F

    fill-array-data v1, :array_d6

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eJ:Landroid/animation/PropertyValuesHolder;

    .line 659
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    .line 660
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/i;->eI:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/i;->eJ:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    .line 659
    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eF:Landroid/animation/ObjectAnimator;

    .line 662
    const-string/jumbo v0, "x"

    new-array v1, v5, [F

    invoke-static {v7}, Lcom/android/common/h;->aoT(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 663
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v3}, Lcom/android/common/ui/RotateLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 662
    sub-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v6

    .line 663
    invoke-static {v7}, Lcom/android/common/h;->aoT(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 664
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v3}, Lcom/android/common/ui/RotateLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 663
    sub-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v4

    .line 662
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eK:Landroid/animation/PropertyValuesHolder;

    .line 665
    const-string/jumbo v0, "y"

    new-array v1, v5, [F

    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->eq:I

    .line 666
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v3}, Lcom/android/common/ui/RotateLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 665
    sub-int/2addr v2, v3

    .line 666
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/i;->ed:[I

    aget v3, v3, v4

    .line 665
    sub-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v6

    .line 666
    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->eq:I

    .line 667
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v3}, Lcom/android/common/ui/RotateLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 666
    sub-int/2addr v2, v3

    .line 667
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/i;->ed:[I

    aget v3, v3, v4

    .line 666
    sub-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v4

    .line 665
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eL:Landroid/animation/PropertyValuesHolder;

    .line 668
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    .line 669
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/i;->eK:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/i;->eL:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    .line 668
    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eG:Landroid/animation/ObjectAnimator;

    .line 671
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 672
    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/i;->eF:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/i;->eG:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 673
    new-instance v1, Lcom/android/common/independentFocusExposure/v;

    invoke-direct {v1, p0}, Lcom/android/common/independentFocusExposure/v;-><init>(Lcom/android/common/independentFocusExposure/i;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 691
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 656
    return-void

    .line 657
    nop

    :array_ce
    .array-data 4
        0x40000000    # 2.0f
        0x40000000    # 2.0f
    .end array-data

    .line 658
    :array_d6
    .array-data 4
        0x40000000    # 2.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private fl()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1203
    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eE:Z

    .line 1204
    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eD:Z

    .line 1205
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1206
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1207
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1202
    return-void
.end method

.method private fn(Z)V
    .registers 2

    .prologue
    .line 1029
    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/i;->dZ:Z

    .line 1028
    return-void
.end method

.method private fp()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 426
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    if-nez v0, :cond_7

    return-void

    .line 427
    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 428
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateLayout;->getLocationInWindow([I)V

    .line 429
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->ec:[I

    aget v2, v0, v4

    iget v3, p0, Lcom/android/common/independentFocusExposure/i;->ep:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/common/independentFocusExposure/i;->ep:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/common/independentFocusExposure/i;->eI(II)I

    move-result v2

    aput v2, v1, v4

    .line 430
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->ec:[I

    aget v0, v0, v5

    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->ep:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->ep:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/common/independentFocusExposure/i;->eI(II)I

    move-result v0

    aput v0, v1, v5

    .line 425
    return-void
.end method

.method private fu()V
    .registers 6

    .prologue
    .line 144
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 145
    iget-boolean v1, p0, Lcom/android/common/independentFocusExposure/i;->eA:Z

    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->ee:I

    iget v3, p0, Lcom/android/common/independentFocusExposure/i;->en:I

    iget v4, p0, Lcom/android/common/independentFocusExposure/i;->em:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/common/h;->aqa(Landroid/graphics/Matrix;ZIII)V

    .line 149
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->ez:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 143
    return-void
.end method

.method static synthetic fx(Lcom/android/common/independentFocusExposure/i;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ef:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic fy(Lcom/android/common/independentFocusExposure/i;)Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    return-object v0
.end method

.method static synthetic fz(Lcom/android/common/independentFocusExposure/i;)Lcom/android/common/ui/RotateLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    return-object v0
.end method


# virtual methods
.method public dW()Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->el:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;

    return-object v0
.end method

.method public dX()I
    .registers 2

    .prologue
    .line 481
    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->mState:I

    return v0
.end method

.method public dY()V
    .registers 3

    .prologue
    .line 1155
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eT:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 1156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    .line 1157
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 1154
    return-void
.end method

.method public dZ(Lcom/android/common/independentFocusExposure/n;)V
    .registers 3

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eH:Lcom/android/common/independentFocusExposure/n;

    if-nez v0, :cond_6

    .line 1244
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/i;->eH:Lcom/android/common/independentFocusExposure/n;

    .line 1242
    :cond_6
    return-void
.end method

.method public eA()Z
    .registers 3

    .prologue
    .line 194
    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->eO:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public eB()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 198
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;->eQ:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;

    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/i;->fr(Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;)V

    .line 199
    invoke-virtual {p0, v1}, Lcom/android/common/independentFocusExposure/i;->fq(Z)V

    .line 200
    iput v1, p0, Lcom/android/common/independentFocusExposure/i;->eO:I

    .line 201
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/i;->et:Z

    .line 197
    return-void
.end method

.method public eC()V
    .registers 3

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-eq v0, v1, :cond_20

    .line 593
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v1

    if-ne v0, v1, :cond_32

    .line 594
    :cond_20
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dY:Lcom/android/common/independentFocusExposure/m;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->ry(Lcom/android/common/appService/O;)V

    .line 595
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dY:Lcom/android/common/independentFocusExposure/m;

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/m;->dx(I)V

    .line 591
    :cond_32
    return-void
.end method

.method public eD()V
    .registers 3

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-eq v0, v1, :cond_20

    .line 601
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v1

    if-ne v0, v1, :cond_27

    .line 602
    :cond_20
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dY:Lcom/android/common/independentFocusExposure/m;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->rz(Lcom/android/common/appService/O;)V

    .line 599
    :cond_27
    return-void
.end method

.method public eE()V
    .registers 2

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eY()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->ff()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 934
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->ec()V

    .line 932
    :cond_f
    return-void
.end method

.method public eF()V
    .registers 4

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eY()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->ff()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->ek()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 925
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eS()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "maf_key"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 926
    if-lez v0, :cond_2a

    .line 927
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eG()V

    .line 923
    :cond_2a
    return-void
.end method

.method public eL()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1089
    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 1090
    :cond_c
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eK()V

    .line 1091
    return v2

    .line 1092
    :cond_10
    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->mState:I

    if-ne v0, v2, :cond_2b

    .line 1093
    const-string/jumbo v0, "CameraFocusService"

    const-string/jumbo v1, "delay capture when focusing"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const-wide/16 v2, 0x384

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1095
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/i;->fo(I)V

    .line 1096
    return v4

    .line 1097
    :cond_2b
    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->mState:I

    if-nez v0, :cond_33

    .line 1098
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eK()V

    .line 1099
    return v2

    .line 1101
    :cond_33
    return v4
.end method

.method public eO()Z
    .registers 2

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    return v0
.end method

.method public eP()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    return-object v0
.end method

.method public eQ()Z
    .registers 3

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eW:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    if-ne v0, v1, :cond_8

    .line 1023
    const/4 v0, 0x0

    return v0

    .line 1025
    :cond_8
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->dZ:Z

    return v0
.end method

.method public eR()Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;
    .registers 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    return-object v0
.end method

.method public ea()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1249
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eH:Lcom/android/common/independentFocusExposure/n;

    if-eqz v0, :cond_7

    .line 1250
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/i;->eH:Lcom/android/common/independentFocusExposure/n;

    .line 1248
    :cond_7
    return-void
.end method

.method public eb(Landroid/graphics/Rect;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1144
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    .line 1145
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eS:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 1147
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1148
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ez:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1149
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eh:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Lcom/android/common/h;->aqc(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 1150
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 1151
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eH()V

    .line 1143
    return-void
.end method

.method public ec()V
    .registers 3

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    .line 945
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->atq()Lcom/android/common/g/d;

    move-result-object v1

    .line 944
    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->atr(Lcom/android/common/a/b;)V

    .line 943
    return-void
.end method

.method public ed()Z
    .registers 2

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->ew:Z

    return v0
.end method

.method public ee()V
    .registers 3

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 1112
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1110
    :cond_b
    return-void
.end method

.method public ef(Ljava/util/ArrayList;)V
    .registers 8

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 889
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v5, v0, :cond_35

    .line 890
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_35

    .line 891
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cP()Z

    move-result v0

    .line 889
    if-eqz v0, :cond_35

    .line 892
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dK()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 907
    :cond_35
    :goto_35
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v5, v0, :cond_56

    .line 908
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_56

    .line 909
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eH:Lcom/android/common/independentFocusExposure/n;

    if-eqz v0, :cond_56

    .line 910
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eH:Lcom/android/common/independentFocusExposure/n;

    invoke-interface {v0}, Lcom/android/common/independentFocusExposure/n;->fI()V

    .line 888
    :cond_56
    return-void

    .line 894
    :cond_57
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    if-eqz v0, :cond_72

    .line 895
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/a;->dk(I)V

    .line 897
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/o;->gm(I)V

    .line 900
    :cond_72
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/h;->apH(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 901
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eh:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 902
    const-string/jumbo v0, "CameraFocusService"

    const-string/jumbo v1, "clear focus area"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eh:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 904
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    goto :goto_35
.end method

.method public eg()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 870
    const-string/jumbo v0, "CameraFocusService"

    const-string/jumbo v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/i;->fo(I)V

    .line 872
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eX()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 873
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->fc()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 874
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eW:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 881
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    if-eqz v0, :cond_28

    .line 882
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->setVisibility(I)V

    .line 884
    :cond_28
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->fl()V

    .line 885
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->eq()V

    .line 869
    return-void

    .line 876
    :cond_2f
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eT:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 877
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eB:Z

    .line 878
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    goto :goto_1e
.end method

.method public eh(Z)V
    .registers 6

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 722
    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eW:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    if-ne v0, v1, :cond_c

    .line 724
    :cond_b
    return-void

    .line 723
    :cond_c
    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eW:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    if-ne v0, v1, :cond_b

    .line 727
    :cond_14
    if-eqz p1, :cond_4f

    .line 728
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eT:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 729
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    .line 730
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cl()Z

    move-result v0

    if-nez v0, :cond_46

    .line 731
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    invoke-virtual {v0, v2}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->hk(I)V

    .line 733
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/RotateLayout;->setAlpha(F)V

    .line 734
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/RotateLayout;->setScaleX(F)V

    .line 735
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/RotateLayout;->setScaleY(F)V

    .line 736
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eB:Z

    .line 742
    :cond_46
    :goto_46
    iput v2, p0, Lcom/android/common/independentFocusExposure/i;->mState:I

    .line 743
    invoke-direct {p0, v2}, Lcom/android/common/independentFocusExposure/i;->fn(Z)V

    .line 744
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->fl()V

    .line 721
    return-void

    .line 739
    :cond_4f
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eW:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 740
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->setVisibility(I)V

    goto :goto_46
.end method

.method public ei()Ljava/util/List;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 451
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    if-eqz v0, :cond_6

    .line 452
    return-object v3

    .line 456
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eh:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v1, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eh:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget v0, v0, Landroid/hardware/Camera$Area;->weight:I

    invoke-direct {p0, v1, v0}, Lcom/android/common/independentFocusExposure/i;->eV(Landroid/graphics/Rect;I)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_23

    move-result v0

    if-nez v0, :cond_24

    .line 457
    return-object v3

    .line 458
    :catch_23
    move-exception v0

    .line 461
    :cond_24
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eh:Ljava/util/List;

    return-object v0
.end method

.method public ej()V
    .registers 3

    .prologue
    .line 1053
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->fd()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    if-eqz v0, :cond_b

    .line 1052
    :cond_a
    :goto_a
    return-void

    .line 1054
    :cond_b
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 1055
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_a

    .line 1056
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_a

    .line 1057
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->ek()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "edof"

    if-eq v0, v1, :cond_a

    .line 1058
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->ek()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "manual"

    if-eq v0, v1, :cond_a

    .line 1059
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eS:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 1060
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/i;->fo(I)V

    .line 1061
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 1062
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eH()V

    goto :goto_a
.end method

.method public ek()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1003
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 1004
    const-string/jumbo v0, "continuous-picture"

    .line 1005
    iget-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eC:Z

    if-eqz v2, :cond_d

    .line 1006
    const-string/jumbo v0, "edof"

    return-object v0

    .line 1007
    :cond_d
    sget-object v2, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eT:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    if-ne v1, v2, :cond_15

    .line 1008
    const-string/jumbo v0, "continuous-picture"

    .line 1018
    :cond_14
    :goto_14
    return-object v0

    .line 1009
    :cond_15
    sget-object v2, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eV:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    if-ne v1, v2, :cond_1d

    .line 1010
    const-string/jumbo v0, "macro"

    goto :goto_14

    .line 1011
    :cond_1d
    sget-object v2, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eS:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    if-ne v1, v2, :cond_25

    .line 1012
    const-string/jumbo v0, "auto"

    goto :goto_14

    .line 1013
    :cond_25
    sget-object v2, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eW:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    if-ne v1, v2, :cond_2d

    .line 1014
    const-string/jumbo v0, "manual"

    goto :goto_14

    .line 1015
    :cond_2d
    sget-object v2, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eU:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    if-ne v1, v2, :cond_14

    .line 1016
    const-string/jumbo v0, "edof"

    goto :goto_14
.end method

.method public el(Z)V
    .registers 8

    .prologue
    const/16 v5, 0x6d

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 810
    const-string/jumbo v0, "CameraFocusService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAutoFocus -- focused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->fh()Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz p1, :cond_a5

    .line 814
    :cond_33
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    if-nez v0, :cond_3f

    .line 815
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->hk(I)V

    .line 817
    :cond_3f
    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c0

    .line 818
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 819
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    if-eqz v0, :cond_a6

    .line 820
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eb:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 821
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setAlpha(F)V

    .line 826
    :goto_5a
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cR()V

    .line 827
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->gl()V

    .line 829
    if-eqz p1, :cond_b3

    .line 830
    invoke-virtual {p0, v3}, Lcom/android/common/independentFocusExposure/i;->fo(I)V

    .line 831
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    if-nez v0, :cond_75

    .line 839
    :cond_75
    :goto_75
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    if-nez v0, :cond_85

    .line 842
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 843
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 847
    :cond_85
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nd()Z

    move-result v0

    .line 848
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eW()Z

    move-result v1

    if-eqz v1, :cond_9b

    iget-boolean v1, p0, Lcom/android/common/independentFocusExposure/i;->eD:Z

    if-eqz v1, :cond_9b

    if-eqz v0, :cond_b7

    .line 862
    :cond_9b
    :goto_9b
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 809
    return-void

    .line 812
    :cond_a5
    return-void

    .line 823
    :cond_a6
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ea:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 824
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setAlpha(F)V

    goto :goto_5a

    .line 837
    :cond_b3
    invoke-virtual {p0, v4}, Lcom/android/common/independentFocusExposure/i;->fo(I)V

    goto :goto_75

    .line 849
    :cond_b7
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->px()V

    .line 850
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eD:Z

    goto :goto_9b

    .line 852
    :cond_c0
    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9b

    .line 853
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 854
    if-eqz p1, :cond_d5

    .line 855
    invoke-virtual {p0, v3}, Lcom/android/common/independentFocusExposure/i;->fo(I)V

    .line 859
    :goto_d1
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eK()V

    goto :goto_9b

    .line 857
    :cond_d5
    invoke-virtual {p0, v4}, Lcom/android/common/independentFocusExposure/i;->fo(I)V

    goto :goto_d1
.end method

.method public em()Z
    .registers 3

    .prologue
    .line 1126
    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public en()Z
    .registers 2

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eB:Z

    return v0
.end method

.method public eo(Z)V
    .registers 2

    .prologue
    .line 699
    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/i;->eB:Z

    .line 698
    return-void
.end method

.method public ep()V
    .registers 5

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eW:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    if-eq v0, v1, :cond_f

    .line 494
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 492
    :cond_f
    return-void
.end method

.method public eq()V
    .registers 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 382
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 380
    :cond_b
    return-void
.end method

.method public er(II)V
    .registers 12

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->fa()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 292
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    if-nez v0, :cond_b

    .line 296
    :cond_a
    return-void

    .line 293
    :cond_b
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eW:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    if-eq v0, v1, :cond_a

    .line 294
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a

    .line 295
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->fg()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 299
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    if-lt p1, v0, :cond_34

    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->en:I

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/android/common/h;->aoT(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_35

    .line 300
    :cond_34
    return-void

    .line 302
    :cond_35
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->dV()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 303
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->eP()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->dW:I

    .line 304
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->eP()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->dX:I

    .line 305
    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->ei:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/common/independentFocusExposure/i;->dW:I

    if-lt v0, v1, :cond_7b

    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->ei:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/common/independentFocusExposure/i;->em:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->dX:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_7c

    .line 306
    :cond_7b
    return-void

    .line 309
    :cond_7c
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ea:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 310
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eb:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 311
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->setVisibility(I)V

    .line 312
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    if-nez v0, :cond_98

    .line 313
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->hk(I)V

    .line 315
    :cond_98
    iget v1, p0, Lcom/android/common/independentFocusExposure/i;->ep:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->ei:I

    .line 316
    iget v6, p0, Lcom/android/common/independentFocusExposure/i;->en:I

    iget v7, p0, Lcom/android/common/independentFocusExposure/i;->em:I

    .line 317
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eh:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 315
    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/common/independentFocusExposure/i;->eJ(IIFIIIILandroid/graphics/Rect;)V

    .line 351
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    if-eqz v0, :cond_148

    .line 352
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 353
    const/high16 v1, 0x3f800000    # 1.0f

    .line 352
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 353
    const/high16 v1, 0x3f800000    # 1.0f

    .line 352
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 353
    iget v1, p0, Lcom/android/common/independentFocusExposure/i;->ep:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->en:I

    iget v3, p0, Lcom/android/common/independentFocusExposure/i;->ep:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/common/h;->aoS(III)I

    move-result v1

    int-to-float v1, v1

    .line 352
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 354
    iget v1, p0, Lcom/android/common/independentFocusExposure/i;->ei:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->em:I

    iget v3, p0, Lcom/android/common/independentFocusExposure/i;->ei:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/common/h;->aoS(III)I

    move-result v1

    int-to-float v1, v1

    .line 352
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 354
    const-wide/16 v2, 0x118

    .line 352
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->ef:Ljava/lang/Runnable;

    .line 352
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 362
    :goto_108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eB:Z

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    .line 365
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->eO()Z

    move-result v0

    if-nez v0, :cond_188

    .line 366
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eS:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 367
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/i;->fo(I)V

    .line 369
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 370
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eH()V

    .line 371
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adb()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 372
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->eq()V

    .line 373
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    const/16 v1, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 290
    :cond_147
    :goto_147
    return-void

    .line 357
    :cond_148
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 358
    iget v1, p0, Lcom/android/common/independentFocusExposure/i;->ep:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->en:I

    iget v3, p0, Lcom/android/common/independentFocusExposure/i;->ep:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/common/h;->aoS(III)I

    move-result v1

    int-to-float v1, v1

    .line 357
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 359
    iget v1, p0, Lcom/android/common/independentFocusExposure/i;->ei:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->em:I

    iget v3, p0, Lcom/android/common/independentFocusExposure/i;->ei:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/common/h;->aoS(III)I

    move-result v1

    int-to-float v1, v1

    .line 357
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 359
    const-wide/16 v2, 0x118

    .line 357
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/i;->ef:Ljava/lang/Runnable;

    .line 357
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_108

    .line 376
    :cond_188
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nd()Z

    goto :goto_147
.end method

.method public es()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x64

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x2

    .line 752
    iget-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    if-eqz v2, :cond_13

    .line 753
    const-string/jumbo v0, "CameraFocusService"

    const-string/jumbo v1, "Still in BigCAF mode, ignore longpress lock."

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    return-void

    .line 756
    :cond_13
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->rS()V

    .line 760
    const-string/jumbo v2, "scaleX"

    new-array v3, v6, [F

    fill-array-data v3, :array_ae

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/independentFocusExposure/i;->eI:Landroid/animation/PropertyValuesHolder;

    .line 761
    const-string/jumbo v2, "scaleY"

    new-array v3, v6, [F

    fill-array-data v3, :array_b6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/independentFocusExposure/i;->eJ:Landroid/animation/PropertyValuesHolder;

    .line 762
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    .line 763
    iget-object v4, p0, Lcom/android/common/independentFocusExposure/i;->eI:Landroid/animation/PropertyValuesHolder;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/android/common/independentFocusExposure/i;->eJ:Landroid/animation/PropertyValuesHolder;

    aput-object v4, v3, v0

    .line 762
    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/independentFocusExposure/i;->eF:Landroid/animation/ObjectAnimator;

    .line 765
    const-string/jumbo v2, "scaleX"

    new-array v3, v6, [F

    fill-array-data v3, :array_be

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 766
    const-string/jumbo v3, "scaleY"

    new-array v4, v6, [F

    fill-array-data v4, :array_c6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 767
    iget-object v4, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    new-array v5, v6, [Landroid/animation/PropertyValuesHolder;

    .line 768
    aput-object v2, v5, v1

    aput-object v3, v5, v0

    .line 767
    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 770
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 771
    new-array v4, v6, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/common/independentFocusExposure/i;->eF:Landroid/animation/ObjectAnimator;

    aput-object v5, v4, v1

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 772
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 773
    iget-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    if-eqz v2, :cond_a4

    .line 774
    iget-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    if-eqz v2, :cond_8e

    move v0, v1

    :cond_8e
    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/i;->fm(Z)V

    .line 777
    :goto_91
    invoke-direct {p0, v1}, Lcom/android/common/independentFocusExposure/i;->fn(Z)V

    .line 778
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "lock_focus"

    const-string/jumbo v2, "lock_focus"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return-void

    .line 776
    :cond_a4
    iget-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    if-eqz v2, :cond_a9

    move v0, v1

    :cond_a9
    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/i;->fm(Z)V

    goto :goto_91

    .line 760
    nop

    :array_ae
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data

    .line 761
    :array_b6
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data

    .line 765
    :array_be
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 766
    :array_c6
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public et(Z)V
    .registers 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 611
    invoke-direct {p0, p1}, Lcom/android/common/independentFocusExposure/i;->fn(Z)V

    .line 613
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_12

    .line 614
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_13

    :cond_12
    return-void

    .line 616
    :cond_13
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eE:Z

    if-eqz v0, :cond_19

    if-eqz p1, :cond_64

    .line 623
    :cond_19
    :goto_19
    if-nez p1, :cond_36

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cP()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    if-eqz v0, :cond_36

    .line 624
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eb:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 625
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setAlpha(F)V

    .line 629
    :cond_36
    if-eqz p1, :cond_63

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cP()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 630
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->hk(I)V

    .line 631
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    if-nez v0, :cond_58

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    .line 633
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->pU(I)V

    .line 635
    :cond_58
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->fe()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 636
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    invoke-virtual {v0, v3}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->setVisibility(I)V

    .line 606
    :cond_63
    :goto_63
    return-void

    .line 616
    :cond_64
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eZ()Z

    move-result v0

    if-nez v0, :cond_19

    .line 617
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 618
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->px()V

    .line 619
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eE:Z

    goto :goto_19

    .line 638
    :cond_79
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_63

    .line 639
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    invoke-virtual {v0, v2}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->setVisibility(I)V

    .line 640
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->fk()V

    goto :goto_63
.end method

.method public eu()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 949
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    if-nez v0, :cond_6

    return-void

    .line 950
    :cond_6
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->hk(I)V

    .line 951
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    .line 952
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eC:Z

    .line 948
    return-void
.end method

.method public ev(Landroid/app/Activity;Lcom/android/common/appService/R;)V
    .registers 4

    .prologue
    .line 167
    const v0, 0x7f1000d5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    .line 168
    const v0, 0x7f1000d6

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    .line 169
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    invoke-virtual {v0, p0}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->hi(Lcom/android/common/independentFocusExposure/i;)V

    .line 170
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->hj()V

    .line 171
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eX()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    .line 174
    :cond_29
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eT()V

    .line 175
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eU()V

    .line 177
    invoke-virtual {p0, p2}, Lcom/android/common/independentFocusExposure/i;->ew(Lcom/android/common/appService/R;)V

    .line 166
    return-void
.end method

.method public ew(Lcom/android/common/appService/R;)V
    .registers 5

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/android/common/appService/R;->ow()I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->en:I

    .line 158
    invoke-virtual {p1}, Lcom/android/common/appService/R;->ox()I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->em:I

    .line 159
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ed:[I

    invoke-virtual {p1, v0}, Lcom/android/common/appService/R;->oy([I)V

    .line 160
    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->en:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->er:I

    .line 161
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ed:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/common/independentFocusExposure/i;->em:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->eq:I

    .line 162
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->fu()V

    .line 163
    const-string/jumbo v0, "CameraFocusService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFocusFrameSize, mHalfWindowHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->eq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public ex()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 971
    const-string/jumbo v0, "CameraFocusService"

    const-string/jumbo v1, "onStatusRestore"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iput-boolean v3, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    .line 973
    iput-boolean v3, p0, Lcom/android/common/independentFocusExposure/i;->eB:Z

    .line 974
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    .line 975
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->ew:Z

    .line 976
    iput-boolean v2, p0, Lcom/android/common/independentFocusExposure/i;->eC:Z

    .line 977
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eT:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 978
    invoke-virtual {p0, v2}, Lcom/android/common/independentFocusExposure/i;->fo(I)V

    .line 979
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->fl()V

    .line 980
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->eq()V

    .line 970
    return-void
.end method

.method public ey(Z)V
    .registers 2

    .prologue
    .line 999
    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/i;->eC:Z

    .line 998
    return-void
.end method

.method public ez()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1105
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 1106
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1104
    :cond_a
    return-void
.end method

.method public fb()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1122
    iget v1, p0, Lcom/android/common/independentFocusExposure/i;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    iget v1, p0, Lcom/android/common/independentFocusExposure/i;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public fj(Landroid/view/MotionEvent;)V
    .registers 13

    .prologue
    const/16 v10, 0x8

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 205
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->fa()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 206
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    if-nez v0, :cond_10

    .line 210
    :cond_f
    return-void

    .line 207
    :cond_10
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eW:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    if-eq v0, v1, :cond_f

    .line 208
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_f

    .line 209
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->fg()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 216
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->ew:Z

    if-nez v0, :cond_3b

    .line 217
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->fp()V

    .line 218
    :cond_3b
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->ew:Z

    if-nez v0, :cond_46

    invoke-direct {p0, v3, v5}, Lcom/android/common/independentFocusExposure/i;->fi(II)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 219
    return-void

    .line 221
    :cond_46
    iput-boolean v9, p0, Lcom/android/common/independentFocusExposure/i;->ew:Z

    .line 223
    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->eO:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->eO:I

    .line 224
    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->eO:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7d

    .line 225
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ea:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 226
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    invoke-virtual {v0, v8}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->setVisibility(I)V

    .line 227
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    if-nez v0, :cond_69

    .line 228
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->hk(I)V

    .line 230
    :cond_69
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eM:Landroid/widget/RelativeLayout$LayoutParams;

    .line 232
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->dV()Z

    move-result v0

    if-nez v0, :cond_154

    .line 233
    iput v8, p0, Lcom/android/common/independentFocusExposure/i;->dW:I

    .line 234
    iput v8, p0, Lcom/android/common/independentFocusExposure/i;->dX:I

    .line 241
    :cond_7d
    :goto_7d
    iget v0, p0, Lcom/android/common/independentFocusExposure/i;->eO:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_101

    .line 242
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->et:Z

    if-nez v0, :cond_96

    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->ev:Z

    if-eqz v0, :cond_96

    .line 243
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const-wide/16 v6, 0x0

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    iput-boolean v9, p0, Lcom/android/common/independentFocusExposure/i;->et:Z

    .line 246
    :cond_96
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_a5

    .line 247
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setTranslationX(F)V

    .line 248
    :cond_a5
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_b4

    .line 249
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setTranslationY(F)V

    .line 251
    :cond_b4
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ed:[I

    aget v0, v0, v8

    sub-int v0, v3, v0

    iget v1, p0, Lcom/android/common/independentFocusExposure/i;->ep:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 252
    iget v1, p0, Lcom/android/common/independentFocusExposure/i;->en:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->ep:I

    sub-int/2addr v1, v2

    .line 251
    invoke-static {v0, v8, v1}, Lcom/android/common/h;->aoS(III)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->ey:I

    .line 253
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ed:[I

    aget v0, v0, v9

    sub-int v0, v5, v0

    iget v1, p0, Lcom/android/common/independentFocusExposure/i;->ei:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 254
    iget v1, p0, Lcom/android/common/independentFocusExposure/i;->dW:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->em:I

    iget v4, p0, Lcom/android/common/independentFocusExposure/i;->ei:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/android/common/independentFocusExposure/i;->dX:I

    sub-int/2addr v2, v4

    .line 253
    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoS(III)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->eN:I

    .line 256
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eM:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/android/common/independentFocusExposure/i;->ey:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->eN:I

    invoke-virtual {v0, v1, v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 257
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eM:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 258
    const/16 v1, 0xd

    aput v8, v0, v1

    .line 259
    const/16 v1, 0x9

    aput v9, v0, v1

    .line 260
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->requestLayout()V

    .line 264
    :cond_101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v9, :cond_153

    .line 265
    const-string/jumbo v0, "CameraFocusService"

    const-string/jumbo v1, "CFS -- touch up"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iput v8, p0, Lcom/android/common/independentFocusExposure/i;->eO:I

    .line 267
    iput-boolean v8, p0, Lcom/android/common/independentFocusExposure/i;->et:Z

    .line 268
    iget v1, p0, Lcom/android/common/independentFocusExposure/i;->ep:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/i;->ei:I

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ed:[I

    aget v0, v0, v8

    sub-int v4, v3, v0

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ed:[I

    aget v0, v0, v9

    sub-int/2addr v5, v0

    .line 269
    iget v6, p0, Lcom/android/common/independentFocusExposure/i;->en:I

    iget v7, p0, Lcom/android/common/independentFocusExposure/i;->em:I

    .line 270
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eh:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 268
    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/common/independentFocusExposure/i;->eJ(IIFIIIILandroid/graphics/Rect;)V

    .line 271
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ea:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 272
    iput-boolean v9, p0, Lcom/android/common/independentFocusExposure/i;->ex:Z

    .line 274
    invoke-virtual {p0, v9}, Lcom/android/common/independentFocusExposure/i;->fo(I)V

    .line 275
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->eO()Z

    move-result v0

    if-nez v0, :cond_180

    .line 276
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eS:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 277
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0, v10}, Lcom/android/common/appService/W;->pU(I)V

    .line 278
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eH()V

    .line 204
    :cond_153
    :goto_153
    return-void

    .line 236
    :cond_154
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->eP()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->dW:I

    .line 237
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/i;->eP()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/i;->dX:I

    goto/16 :goto_7d

    .line 280
    :cond_180
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nd()Z

    goto :goto_153
.end method

.method public fm(Z)V
    .registers 5

    .prologue
    .line 703
    const-string/jumbo v0, "CameraFocusService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAfLock flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eW:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    if-ne v0, v1, :cond_21

    .line 705
    return-void

    .line 708
    :cond_21
    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    .line 709
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eu:Z

    if-eqz v0, :cond_40

    .line 710
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->hk(I)V

    .line 711
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eU:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 716
    :goto_33
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 717
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sa()V

    .line 702
    return-void

    .line 713
    :cond_40
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ej:Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->hk(I)V

    .line 714
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eT:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    goto :goto_33
.end method

.method public fo(I)V
    .registers 4

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    iput p1, p0, Lcom/android/common/independentFocusExposure/i;->mState:I

    .line 475
    return-void
.end method

.method public fq(Z)V
    .registers 2

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/i;->ew:Z

    .line 433
    return-void
.end method

.method public fr(Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;)V
    .registers 4

    .prologue
    .line 181
    sget-object v0, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;->eP:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;

    if-ne p1, v0, :cond_17

    .line 182
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_17

    .line 183
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rV()Z

    move-result v0

    .line 181
    if-eqz v0, :cond_17

    .line 184
    return-void

    .line 186
    :cond_17
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/i;->el:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;

    .line 180
    return-void
.end method

.method public fs(Z)V
    .registers 2

    .prologue
    .line 485
    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/i;->ex:Z

    .line 484
    return-void
.end method

.method public ft(Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;)V
    .registers 2

    .prologue
    .line 920
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/i;->eo:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 919
    return-void
.end method

.method public fv(Z)V
    .registers 6

    .prologue
    .line 1137
    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/i;->eD:Z

    .line 1138
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eD:Z

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eW()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1139
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const-wide/16 v2, 0x384

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1136
    :cond_15
    return-void
.end method

.method public fw(Z)V
    .registers 6

    .prologue
    .line 1130
    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/i;->eE:Z

    .line 1131
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/i;->eE:Z

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/i;->eW()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1132
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->es:Landroid/os/Handler;

    const-wide/16 v2, 0x384

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1129
    :cond_15
    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_20

    .line 801
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_1b

    .line 802
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1b

    .line 803
    const/4 p1, 0x4

    .line 805
    :cond_1b
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/i;->ek:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 799
    :cond_20
    return-void
.end method

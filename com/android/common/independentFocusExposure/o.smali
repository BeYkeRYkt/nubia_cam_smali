.class public Lcom/android/common/independentFocusExposure/o;
.super Lcom/android/common/independentFocusExposure/h;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private fA:Z

.field private fB:Z

.field private fC:Z

.field private fD:[B

.field private fE:I

.field private fF:Landroid/graphics/Matrix;

.field private fG:Ljava/util/List;

.field private fH:Z

.field private fI:Lcom/android/common/independentFocusExposure/t;

.field private fJ:Z

.field private fK:Landroid/animation/ObjectAnimator;

.field private fL:Landroid/animation/ObjectAnimator;

.field private fM:Landroid/animation/PropertyValuesHolder;

.field private fN:Landroid/animation/PropertyValuesHolder;

.field private fO:Landroid/animation/PropertyValuesHolder;

.field private fP:Landroid/animation/PropertyValuesHolder;

.field private fQ:Landroid/widget/RelativeLayout$LayoutParams;

.field private fR:[B

.field private fS:Z

.field private fT:I

.field private fU:I

.field private fV:I

.field private fW:I

.field private fX:I

.field private fY:I

.field private fZ:I

.field private final fc:I

.field private final fd:I

.field private fe:I

.field private ff:I

.field private fg:Landroid/animation/AnimatorSet;

.field private fh:Landroid/animation/AnimatorSet;

.field private fi:I

.field private fj:[I

.field private fk:[F

.field private fl:[I

.field private fm:I

.field private fn:Ljava/lang/Runnable;

.field private fo:Ljava/lang/Runnable;

.field private fp:I

.field private fq:I

.field private fr:I

.field private fs:Lcom/android/common/independentFocusExposure/p;

.field private ft:I

.field private fu:I

.field private fv:I

.field private final fw:Landroid/os/Handler;

.field private fx:Z

.field private fy:Z

.field private fz:Z

.field private ga:I

.field private gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

.field private gc:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

.field private gd:Lcom/android/common/ui/RotateLayout;

.field private ge:I

.field private gf:I

.field private gg:I

.field private gh:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 8

    .prologue
    const/16 v5, 0x96

    const/16 v4, 0x42

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/h;-><init>()V

    .line 54
    iput-object v2, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    .line 55
    iput-object v2, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    .line 59
    invoke-static {v4}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->ge:I

    .line 60
    invoke-static {v4}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->ga:I

    .line 61
    const/16 v0, 0x168

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fq:I

    .line 62
    const/16 v0, 0x1e0

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fp:I

    .line 63
    const/16 v0, 0x3b

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->gh:I

    .line 64
    sget-object v0, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;->gj:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gc:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    .line 65
    iput-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fF:Landroid/graphics/Matrix;

    .line 66
    iput-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fG:Ljava/util/List;

    .line 67
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fH:Z

    .line 68
    iput v1, p0, Lcom/android/common/independentFocusExposure/o;->fX:I

    .line 70
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fj:[I

    .line 71
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fB:Z

    .line 73
    iput-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fR:[B

    .line 74
    invoke-static {v5}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fd:I

    .line 75
    invoke-static {v5}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fc:I

    .line 76
    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fd:I

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->ff:I

    .line 77
    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fc:I

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fe:I

    .line 78
    iput-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fD:[B

    .line 79
    iput-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fs:Lcom/android/common/independentFocusExposure/p;

    .line 80
    iput v1, p0, Lcom/android/common/independentFocusExposure/o;->ft:I

    .line 81
    iput v1, p0, Lcom/android/common/independentFocusExposure/o;->fW:I

    .line 82
    iput v1, p0, Lcom/android/common/independentFocusExposure/o;->fr:I

    .line 83
    iput v1, p0, Lcom/android/common/independentFocusExposure/o;->fi:I

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fk:[F

    .line 85
    iput v1, p0, Lcom/android/common/independentFocusExposure/o;->gf:I

    .line 86
    iput v1, p0, Lcom/android/common/independentFocusExposure/o;->gg:I

    .line 87
    iput v1, p0, Lcom/android/common/independentFocusExposure/o;->fV:I

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fC:Z

    .line 91
    new-instance v0, Lcom/android/common/independentFocusExposure/s;

    invoke-direct {v0, p0, v2}, Lcom/android/common/independentFocusExposure/s;-><init>(Lcom/android/common/independentFocusExposure/o;Lcom/android/common/independentFocusExposure/s;)V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fw:Landroid/os/Handler;

    .line 92
    iput-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fM:Landroid/animation/PropertyValuesHolder;

    .line 93
    iput-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fN:Landroid/animation/PropertyValuesHolder;

    .line 94
    iput-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fO:Landroid/animation/PropertyValuesHolder;

    .line 95
    iput-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fP:Landroid/animation/PropertyValuesHolder;

    .line 96
    iput-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fK:Landroid/animation/ObjectAnimator;

    .line 97
    iput-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fL:Landroid/animation/ObjectAnimator;

    .line 98
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fA:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fx:Z

    .line 102
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fg:Landroid/animation/AnimatorSet;

    .line 103
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fh:Landroid/animation/AnimatorSet;

    .line 104
    new-instance v0, Lcom/android/common/independentFocusExposure/q;

    invoke-direct {v0, p0, v2}, Lcom/android/common/independentFocusExposure/q;-><init>(Lcom/android/common/independentFocusExposure/o;Lcom/android/common/independentFocusExposure/q;)V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fn:Ljava/lang/Runnable;

    .line 105
    new-instance v0, Lcom/android/common/independentFocusExposure/r;

    invoke-direct {v0, p0, v2}, Lcom/android/common/independentFocusExposure/r;-><init>(Lcom/android/common/independentFocusExposure/o;Lcom/android/common/independentFocusExposure/r;)V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fo:Ljava/lang/Runnable;

    .line 109
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fl:[I

    .line 111
    iput v1, p0, Lcom/android/common/independentFocusExposure/o;->fZ:I

    .line 113
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fJ:Z

    .line 114
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fz:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fy:Z

    .line 117
    iput v1, p0, Lcom/android/common/independentFocusExposure/o;->fv:I

    .line 118
    iput v1, p0, Lcom/android/common/independentFocusExposure/o;->fu:I

    .line 119
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fm:I

    .line 120
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fS:Z

    .line 121
    new-instance v0, Lcom/android/common/independentFocusExposure/t;

    invoke-direct {v0, p0, v2}, Lcom/android/common/independentFocusExposure/t;-><init>(Lcom/android/common/independentFocusExposure/o;Lcom/android/common/independentFocusExposure/t;)V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fI:Lcom/android/common/independentFocusExposure/t;

    .line 124
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fF:Landroid/graphics/Matrix;

    .line 125
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    .line 126
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fG:Ljava/util/List;

    if-nez v0, :cond_e9

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fG:Ljava/util/List;

    .line 128
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fG:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_e9
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ri()I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fm:I

    .line 131
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gH()V

    .line 132
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/o;->fN()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->dW:I

    .line 133
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/o;->fN()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->dX:I

    .line 123
    return-void
.end method

.method private gD()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    const/16 v7, 0x168

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 157
    const-string/jumbo v0, "scaleX"

    new-array v1, v5, [F

    fill-array-data v1, :array_ce

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fM:Landroid/animation/PropertyValuesHolder;

    .line 158
    const-string/jumbo v0, "scaleY"

    new-array v1, v5, [F

    fill-array-data v1, :array_d6

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fN:Landroid/animation/PropertyValuesHolder;

    .line 159
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    .line 160
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fM:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fN:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    .line 159
    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fK:Landroid/animation/ObjectAnimator;

    .line 162
    const-string/jumbo v0, "x"

    new-array v1, v5, [F

    .line 163
    invoke-static {v7}, Lcom/android/common/h;->aoT(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v3}, Lcom/android/common/ui/RotateLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v6

    .line 164
    invoke-static {v7}, Lcom/android/common/h;->aoT(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v3}, Lcom/android/common/ui/RotateLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v4

    .line 162
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fO:Landroid/animation/PropertyValuesHolder;

    .line 165
    const-string/jumbo v0, "y"

    new-array v1, v5, [F

    .line 166
    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->fu:I

    iget-object v3, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v3}, Lcom/android/common/ui/RotateLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/common/independentFocusExposure/o;->fl:[I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v6

    .line 167
    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->fu:I

    iget-object v3, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v3}, Lcom/android/common/ui/RotateLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/common/independentFocusExposure/o;->fl:[I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v4

    .line 165
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fP:Landroid/animation/PropertyValuesHolder;

    .line 168
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    .line 169
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fO:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fP:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    .line 168
    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fL:Landroid/animation/ObjectAnimator;

    .line 171
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 172
    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fK:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fL:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 173
    new-instance v1, Lcom/android/common/independentFocusExposure/w;

    invoke-direct {v1, p0}, Lcom/android/common/independentFocusExposure/w;-><init>(Lcom/android/common/independentFocusExposure/o;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 156
    return-void

    .line 157
    nop

    :array_ce
    .array-data 4
        0x40000000    # 2.0f
        0x40000000    # 2.0f
    .end array-data

    .line 158
    :array_d6
    .array-data 4
        0x40000000    # 2.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private gE()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fG:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 458
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fG:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 459
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fG:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 460
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fG:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 456
    return-void
.end method

.method private gG()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    if-nez v0, :cond_7

    return-void

    .line 471
    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 472
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateLayout;->getLocationInWindow([I)V

    .line 473
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->fj:[I

    aget v2, v0, v4

    iget v3, p0, Lcom/android/common/independentFocusExposure/o;->ge:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/common/independentFocusExposure/o;->ge:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/common/independentFocusExposure/o;->gn(II)I

    move-result v2

    aput v2, v1, v4

    .line 474
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->fj:[I

    aget v0, v0, v5

    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->ge:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->ge:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/common/independentFocusExposure/o;->gn(II)I

    move-result v0

    aput v0, v1, v5

    .line 469
    return-void
.end method

.method private gH()V
    .registers 6

    .prologue
    .line 363
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 364
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gy()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 365
    iget-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fH:Z

    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->fm:I

    iget v3, p0, Lcom/android/common/independentFocusExposure/o;->fq:I

    iget v4, p0, Lcom/android/common/independentFocusExposure/o;->fp:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/common/h;->aqa(Landroid/graphics/Matrix;ZIII)V

    .line 371
    :goto_16
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->fF:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 362
    return-void

    .line 367
    :cond_1c
    iget-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fH:Z

    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->fq:I

    iget v3, p0, Lcom/android/common/independentFocusExposure/o;->fp:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/common/h;->aqa(Landroid/graphics/Matrix;ZIII)V

    goto :goto_16
.end method

.method static synthetic gK(Lcom/android/common/independentFocusExposure/o;)I
    .registers 2

    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fe:I

    return v0
.end method

.method static synthetic gL(Lcom/android/common/independentFocusExposure/o;)I
    .registers 2

    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->ff:I

    return v0
.end method

.method static synthetic gM(Lcom/android/common/independentFocusExposure/o;)Landroid/animation/AnimatorSet;
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fg:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic gN(Lcom/android/common/independentFocusExposure/o;)Landroid/animation/AnimatorSet;
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fh:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic gO(Lcom/android/common/independentFocusExposure/o;)I
    .registers 2

    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fi:I

    return v0
.end method

.method static synthetic gP(Lcom/android/common/independentFocusExposure/o;)[F
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fk:[F

    return-object v0
.end method

.method static synthetic gQ(Lcom/android/common/independentFocusExposure/o;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fn:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic gR(Lcom/android/common/independentFocusExposure/o;)I
    .registers 2

    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fr:I

    return v0
.end method

.method static synthetic gS(Lcom/android/common/independentFocusExposure/o;)I
    .registers 2

    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->ft:I

    return v0
.end method

.method static synthetic gT(Lcom/android/common/independentFocusExposure/o;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fw:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic gU(Lcom/android/common/independentFocusExposure/o;)I
    .registers 2

    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fW:I

    return v0
.end method

.method static synthetic gV(Lcom/android/common/independentFocusExposure/o;)Lcom/android/common/independentFocusExposure/MwbIndicatorView;
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    return-object v0
.end method

.method static synthetic gW(Lcom/android/common/independentFocusExposure/o;)Lcom/android/common/ui/RotateLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic gX(Lcom/android/common/independentFocusExposure/o;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/independentFocusExposure/o;->fe:I

    return p1
.end method

.method static synthetic gY(Lcom/android/common/independentFocusExposure/o;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/independentFocusExposure/o;->ff:I

    return p1
.end method

.method static synthetic gZ(Lcom/android/common/independentFocusExposure/o;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/independentFocusExposure/o;->fi:I

    return p1
.end method

.method private gn(II)I
    .registers 3

    .prologue
    .line 478
    if-ge p1, p2, :cond_3

    return p2

    .line 479
    :cond_3
    return p1
.end method

.method private go(IIFIIIILandroid/graphics/Rect;)V
    .registers 16

    .prologue
    const/4 v5, 0x0

    .line 339
    int-to-float v0, p1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 340
    int-to-float v1, p2

    mul-float/2addr v1, p3

    float-to-int v1, v1

    .line 341
    div-int/lit8 v2, v0, 0x2

    sub-int v2, p4, v2

    sub-int v3, p6, v0

    invoke-static {v2, v5, v3}, Lcom/android/common/h;->aoS(III)I

    move-result v2

    .line 342
    div-int/lit8 v3, v1, 0x2

    sub-int v3, p5, v3

    sub-int v4, p7, v1

    invoke-static {v3, v5, v4}, Lcom/android/common/h;->aoS(III)I

    move-result v3

    .line 344
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 345
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fF:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 346
    invoke-static {v4, p8}, Lcom/android/common/h;->aqc(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 338
    return-void
.end method

.method private gq()Lcom/android/common/independentFocusExposure/i;
    .registers 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    return-object v0
.end method

.method private gs()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method private gt()V
    .registers 13

    .prologue
    const-wide/16 v10, 0xdc

    const/4 v9, 0x2

    .line 768
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v1, "alpha"

    new-array v2, v9, [F

    fill-array-data v2, :array_b6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 769
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v2, "alpha"

    new-array v3, v9, [F

    fill-array-data v3, :array_be

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 770
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v9, [F

    fill-array-data v4, :array_c6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 771
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v4, "alpha"

    new-array v5, v9, [F

    fill-array-data v5, :array_ce

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 772
    iget-object v4, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    fill-array-data v6, :array_d6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 773
    iget-object v5, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_de

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 774
    iget-object v6, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v7, "alpha"

    new-array v8, v9, [F

    fill-array-data v8, :array_e6

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 775
    iget-object v6, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v7, "alpha"

    new-array v8, v9, [F

    fill-array-data v8, :array_ee

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 776
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/common/independentFocusExposure/o;->fg:Landroid/animation/AnimatorSet;

    .line 777
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/common/independentFocusExposure/o;->fg:Landroid/animation/AnimatorSet;

    .line 778
    iget-object v6, p0, Lcom/android/common/independentFocusExposure/o;->fg:Landroid/animation/AnimatorSet;

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    aput-object v2, v7, v9

    const/4 v0, 0x3

    aput-object v3, v7, v0

    .line 779
    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    .line 778
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 766
    return-void

    .line 768
    nop

    :array_b6
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 769
    :array_be
    .array-data 4
        0x3e800000    # 0.25f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 770
    :array_c6
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 771
    :array_ce
    .array-data 4
        0x3e800000    # 0.25f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 772
    :array_d6
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 773
    :array_de
    .array-data 4
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    .line 774
    :array_e6
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 775
    :array_ee
    .array-data 4
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private gu()V
    .registers 13

    .prologue
    const-wide/16 v10, 0xdc

    const/4 v9, 0x2

    .line 784
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v1, "alpha"

    new-array v2, v9, [F

    fill-array-data v2, :array_b6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 785
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v2, "alpha"

    new-array v3, v9, [F

    fill-array-data v3, :array_be

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 786
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v9, [F

    fill-array-data v4, :array_c6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 787
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v4, "alpha"

    new-array v5, v9, [F

    fill-array-data v5, :array_ce

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 788
    iget-object v4, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    fill-array-data v6, :array_d6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 789
    iget-object v5, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_de

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 790
    iget-object v6, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v7, "alpha"

    new-array v8, v9, [F

    fill-array-data v8, :array_e6

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 791
    iget-object v6, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const-string/jumbo v7, "alpha"

    new-array v8, v9, [F

    fill-array-data v8, :array_ee

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 792
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/common/independentFocusExposure/o;->fh:Landroid/animation/AnimatorSet;

    .line 793
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/common/independentFocusExposure/o;->fh:Landroid/animation/AnimatorSet;

    .line 794
    iget-object v6, p0, Lcom/android/common/independentFocusExposure/o;->fh:Landroid/animation/AnimatorSet;

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    aput-object v2, v7, v9

    const/4 v0, 0x3

    aput-object v3, v7, v0

    .line 795
    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    .line 794
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 782
    return-void

    .line 784
    nop

    :array_b6
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 785
    :array_be
    .array-data 4
        0x3e800000    # 0.25f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 786
    :array_c6
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 787
    :array_ce
    .array-data 4
        0x3e800000    # 0.25f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 788
    :array_d6
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 789
    :array_de
    .array-data 4
        0x3e800000    # 0.25f
        0x0
    .end array-data

    .line 790
    :array_e6
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    .line 791
    :array_ee
    .array-data 4
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private gv()Z
    .registers 2

    .prologue
    .line 625
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->ade()Z

    move-result v0

    return v0
.end method

.method private gw(Landroid/graphics/Rect;)Z
    .registers 7

    .prologue
    const/16 v4, 0x3e8

    const/4 v3, 0x1

    const/16 v1, -0x3e8

    const/4 v2, 0x0

    .line 386
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_23

    .line 387
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_23

    .line 388
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_23

    .line 389
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_23

    .line 390
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fG:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget v0, v0, Landroid/hardware/Camera$Area;->weight:I

    if-nez v0, :cond_23

    .line 391
    return v3

    .line 392
    :cond_23
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_28

    return v2

    .line 393
    :cond_28
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_2d

    return v2

    .line 394
    :cond_2d
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v4, :cond_35

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v4, :cond_36

    :cond_35
    return v2

    .line 395
    :cond_36
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_3d

    return v2

    .line 396
    :cond_3d
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_44

    return v2

    .line 397
    :cond_44
    return v3
.end method

.method private gx()Z
    .registers 6

    .prologue
    .line 696
    const-string/jumbo v0, "on"

    .line 698
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 699
    const-string/jumbo v2, "pref_camera_whitebalance_key"

    .line 700
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0269

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 698
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 701
    const-string/jumbo v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "point-measure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private gy()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 375
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/o;->fN()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_16

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private gz(II)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0x17

    const/4 v1, 0x0

    .line 465
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fj:[I

    aget v2, v2, v1

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v4}, Lcom/android/common/h;->aoT(I)I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 466
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fj:[I

    aget v2, v2, v0

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v4}, Lcom/android/common/h;->aoT(I)I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 465
    :goto_24
    return v0

    :cond_25
    move v0, v1

    .line 466
    goto :goto_24

    :cond_27
    move v0, v1

    .line 465
    goto :goto_24
.end method

.method static synthetic ha(Lcom/android/common/independentFocusExposure/o;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/independentFocusExposure/o;->fr:I

    return p1
.end method

.method static synthetic hb(Lcom/android/common/independentFocusExposure/o;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/independentFocusExposure/o;->ft:I

    return p1
.end method

.method static synthetic hc(Lcom/android/common/independentFocusExposure/o;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/o;->fy:Z

    return p1
.end method

.method static synthetic hd(Lcom/android/common/independentFocusExposure/o;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/o;->fA:Z

    return p1
.end method

.method static synthetic he(Lcom/android/common/independentFocusExposure/o;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/independentFocusExposure/o;->fW:I

    return p1
.end method

.method static synthetic hf(Lcom/android/common/independentFocusExposure/o;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gx()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public fJ(Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;)V
    .registers 4

    .prologue
    .line 217
    sget-object v0, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;->gi:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    if-ne p1, v0, :cond_17

    .line 218
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_17

    .line 219
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rV()Z

    move-result v0

    .line 217
    if-eqz v0, :cond_17

    .line 220
    return-void

    .line 222
    :cond_17
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/o;->gc:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    .line 216
    return-void
.end method

.method public fK()V
    .registers 3

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fw:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fy:Z

    .line 868
    return-void
.end method

.method public fL()V
    .registers 5

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 497
    const-string/jumbo v1, "MwbService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/common/independentFocusExposure/o;->fU:I

    .line 499
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fT:I

    .line 500
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/common/appService/k;->jP(Landroid/hardware/Camera$PreviewCallback;I)V

    .line 501
    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fU:I

    iget v1, p0, Lcom/android/common/independentFocusExposure/o;->fT:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fR:[B

    .line 502
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->fR:[B

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KW([B)V

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fS:Z

    .line 494
    return-void
.end method

.method public fM()V
    .registers 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 490
    return-void
.end method

.method public fN()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    return-object v0
.end method

.method public fO()Z
    .registers 2

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fB:Z

    return v0
.end method

.method public fP(Z)V
    .registers 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 196
    if-eqz p1, :cond_4a

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aeD()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 197
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gq()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->en()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 198
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cl()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 209
    :goto_28
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    return-void

    .line 199
    :cond_34
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setAlpha(F)V

    .line 201
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setScaleX(F)V

    .line 202
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setScaleY(F)V

    goto :goto_28

    .line 205
    :cond_4a
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/o;->fZ()V

    .line 206
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qM()V

    goto :goto_28
.end method

.method public fQ()V
    .registers 3

    .prologue
    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fA:Z

    .line 706
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    if-eqz v0, :cond_d

    .line 707
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->setVisibility(I)V

    .line 704
    :cond_d
    return-void
.end method

.method public fR()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 629
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    if-nez v0, :cond_6

    return v1

    .line 630
    :cond_6
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 631
    const/4 v0, 0x1

    return v0

    .line 633
    :cond_10
    return v1
.end method

.method public fS()Z
    .registers 2

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fC:Z

    return v0
.end method

.method public fT()[F
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fk:[F

    return-object v0
.end method

.method public fU()V
    .registers 5

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fw:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 711
    return-void
.end method

.method public fV()Z
    .registers 2

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fz:Z

    return v0
.end method

.method public fW(II)Z
    .registers 12

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_c

    .line 803
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    .line 805
    :cond_c
    const/4 v0, 0x0

    return v0

    .line 804
    :cond_e
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gx()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 808
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    if-lt p1, v0, :cond_27

    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fq:I

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/android/common/h;->aoT(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_29

    :cond_27
    const/4 v0, 0x0

    return v0

    .line 809
    :cond_29
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/o;->dV()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 810
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/o;->fN()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->dW:I

    .line 811
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/o;->fN()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->dX:I

    .line 812
    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->ge:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/common/independentFocusExposure/o;->dW:I

    if-lt v0, v1, :cond_6f

    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->ge:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/common/independentFocusExposure/o;->fp:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->dX:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_71

    :cond_6f
    const/4 v0, 0x0

    return v0

    .line 814
    :cond_71
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->setVisibility(I)V

    .line 815
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fC:Z

    .line 816
    iput p1, p0, Lcom/android/common/independentFocusExposure/o;->gf:I

    .line 817
    iput p2, p0, Lcom/android/common/independentFocusExposure/o;->gg:I

    .line 818
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gG()V

    .line 819
    const-string/jumbo v0, "MwbService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 820
    const-string/jumbo v2, " mCenterPosition[0] = "

    .line 819
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 820
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fj:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 819
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 820
    const-string/jumbo v2, " mCenterPosition[1] = "

    .line 819
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 820
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fj:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 819
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fg:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 823
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fh:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 824
    iget v1, p0, Lcom/android/common/independentFocusExposure/o;->ge:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->ga:I

    .line 825
    iget v6, p0, Lcom/android/common/independentFocusExposure/o;->fq:I

    iget v7, p0, Lcom/android/common/independentFocusExposure/o;->fp:I

    .line 826
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fG:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 824
    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/common/independentFocusExposure/o;->go(IIFIIIILandroid/graphics/Rect;)V

    .line 852
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fA:Z

    if-eqz v0, :cond_145

    .line 853
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 854
    const/high16 v1, 0x3f800000    # 1.0f

    .line 853
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 854
    const/high16 v1, 0x3f800000    # 1.0f

    .line 853
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 854
    iget v1, p0, Lcom/android/common/independentFocusExposure/o;->ge:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->fq:I

    iget v3, p0, Lcom/android/common/independentFocusExposure/o;->ge:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/common/h;->aoS(III)I

    move-result v1

    int-to-float v1, v1

    .line 853
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 855
    iget v1, p0, Lcom/android/common/independentFocusExposure/o;->ga:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->fp:I

    iget v3, p0, Lcom/android/common/independentFocusExposure/o;->ga:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/common/h;->aoS(III)I

    move-result v1

    int-to-float v1, v1

    .line 853
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 855
    const-wide/16 v2, 0x118

    .line 853
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 856
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->fn:Ljava/lang/Runnable;

    .line 853
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 863
    :goto_140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fA:Z

    .line 865
    const/4 v0, 0x1

    return v0

    .line 858
    :cond_145
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 859
    iget v1, p0, Lcom/android/common/independentFocusExposure/o;->ge:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->fq:I

    iget v3, p0, Lcom/android/common/independentFocusExposure/o;->ge:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/common/h;->aoS(III)I

    move-result v1

    int-to-float v1, v1

    .line 858
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 860
    iget v1, p0, Lcom/android/common/independentFocusExposure/o;->ga:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->fp:I

    iget v3, p0, Lcom/android/common/independentFocusExposure/o;->ga:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/common/h;->aoS(III)I

    move-result v1

    int-to-float v1, v1

    .line 858
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 860
    const-wide/16 v2, 0x118

    .line 858
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 861
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->fn:Ljava/lang/Runnable;

    .line 858
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_140
.end method

.method public fX()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 401
    sget-object v0, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;->gi:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->gc:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    if-ne v0, v1, :cond_a8

    .line 402
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fA:Z

    if-eqz v0, :cond_19

    .line 403
    const-string/jumbo v0, "MwbService"

    const-string/jumbo v1, "Still in BigCAF mode, ignore longpress lock."

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void

    .line 406
    :cond_19
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rS()V

    .line 410
    const-string/jumbo v0, "scaleX"

    new-array v1, v4, [F

    fill-array-data v1, :array_b4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fM:Landroid/animation/PropertyValuesHolder;

    .line 411
    const-string/jumbo v0, "scaleY"

    new-array v1, v4, [F

    fill-array-data v1, :array_bc

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fN:Landroid/animation/PropertyValuesHolder;

    .line 412
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    .line 413
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fM:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fN:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    .line 412
    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fK:Landroid/animation/ObjectAnimator;

    .line 415
    const-string/jumbo v0, "scaleX"

    new-array v1, v4, [F

    fill-array-data v1, :array_c4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 416
    const-string/jumbo v1, "scaleY"

    new-array v2, v4, [F

    fill-array-data v2, :array_cc

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 417
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    new-array v3, v4, [Landroid/animation/PropertyValuesHolder;

    .line 418
    aput-object v0, v3, v5

    aput-object v1, v3, v6

    .line 417
    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 420
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 421
    new-array v2, v4, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/common/independentFocusExposure/o;->fK:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 422
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 424
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fz:Z

    if-nez v0, :cond_a9

    .line 425
    iput-boolean v6, p0, Lcom/android/common/independentFocusExposure/o;->fz:Z

    .line 426
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->ce(I)V

    .line 427
    iput-boolean v5, p0, Lcom/android/common/independentFocusExposure/o;->fy:Z

    .line 432
    :goto_9b
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gv()Z

    move-result v0

    if-nez v0, :cond_a8

    .line 433
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 400
    :cond_a8
    return-void

    .line 429
    :cond_a9
    iput-boolean v5, p0, Lcom/android/common/independentFocusExposure/o;->fz:Z

    .line 430
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    const v1, 0x7f020119

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->ce(I)V

    goto :goto_9b

    .line 410
    :array_b4
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data

    .line 411
    :array_bc
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data

    .line 415
    :array_c4
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 416
    :array_cc
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public fY(Z)V
    .registers 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 669
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_10

    :cond_f
    return-void

    .line 671
    :cond_10
    if-nez p1, :cond_33

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cP()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gx()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fA:Z

    if-eqz v0, :cond_33

    .line 672
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fh:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 673
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setAlpha(F)V

    .line 677
    :cond_33
    if-eqz p1, :cond_6b

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cP()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gx()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 678
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    const v1, 0x7f02011a

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->ce(I)V

    .line 679
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fA:Z

    if-nez v0, :cond_5b

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fA:Z

    .line 681
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->pU(I)V

    .line 683
    :cond_5b
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_6b

    .line 684
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    invoke-virtual {v0, v2}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->setVisibility(I)V

    .line 685
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gD()V

    .line 668
    :cond_6b
    return-void
.end method

.method public fZ()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    if-nez v0, :cond_6

    return-void

    .line 450
    :cond_6
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fz:Z

    .line 451
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fy:Z

    .line 452
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fJ:Z

    .line 453
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    const v1, 0x7f020119

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->ce(I)V

    .line 447
    return-void
.end method

.method public gA()V
    .registers 5

    .prologue
    const/16 v1, 0x67

    .line 874
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gv()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 875
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fw:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 876
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fw:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 873
    :goto_14
    return-void

    .line 878
    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fy:Z

    goto :goto_14
.end method

.method public gB()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 637
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fS:Z

    if-eqz v0, :cond_e

    .line 638
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/appService/k;->jK(Landroid/hardware/Camera$PreviewCallback;)V

    .line 640
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fS:Z

    .line 641
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/o;->gF()V

    .line 642
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/o;->gJ(Z)V

    .line 643
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fs:Lcom/android/common/independentFocusExposure/p;

    if-eqz v0, :cond_28

    .line 644
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fs:Lcom/android/common/independentFocusExposure/p;

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/p;->hg()V

    .line 646
    :try_start_21
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fs:Lcom/android/common/independentFocusExposure/p;

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/p;->join()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_26} :catch_29

    .line 650
    :goto_26
    iput-object v1, p0, Lcom/android/common/independentFocusExposure/o;->fs:Lcom/android/common/independentFocusExposure/p;

    .line 636
    :cond_28
    return-void

    .line 647
    :catch_29
    move-exception v0

    goto :goto_26
.end method

.method public gC(Landroid/view/MotionEvent;)V
    .registers 13

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 245
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rV()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 246
    :cond_c
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 247
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 249
    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fZ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fZ:I

    .line 251
    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fZ:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3f

    .line 252
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fg:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 253
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/o;->dV()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 254
    iput v9, p0, Lcom/android/common/independentFocusExposure/o;->dW:I

    .line 255
    iput v9, p0, Lcom/android/common/independentFocusExposure/o;->dX:I

    .line 264
    :cond_3f
    :goto_3f
    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fZ:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_145

    .line 265
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setTranslationX(F)V

    .line 266
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setTranslationY(F)V

    .line 268
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gG()V

    .line 270
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fB:Z

    if-nez v0, :cond_88

    invoke-direct {p0, v3, v5}, Lcom/android/common/independentFocusExposure/o;->gz(II)Z

    move-result v0

    if-eqz v0, :cond_88

    return-void

    .line 257
    :cond_5d
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/o;->fN()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->dW:I

    .line 258
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/o;->fN()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->dX:I

    goto :goto_3f

    .line 271
    :cond_88
    iput-boolean v10, p0, Lcom/android/common/independentFocusExposure/o;->fB:Z

    .line 281
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fx:Z

    if-nez v0, :cond_9d

    .line 282
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fA:Z

    .line 281
    if-eqz v0, :cond_9d

    .line 283
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fw:Landroid/os/Handler;

    const-wide/16 v6, 0x0

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 284
    iput-boolean v10, p0, Lcom/android/common/independentFocusExposure/o;->fx:Z

    .line 287
    :cond_9d
    iput v3, p0, Lcom/android/common/independentFocusExposure/o;->gf:I

    .line 288
    iput v5, p0, Lcom/android/common/independentFocusExposure/o;->gg:I

    .line 290
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fQ:Landroid/widget/RelativeLayout$LayoutParams;

    .line 291
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fl:[I

    aget v0, v0, v9

    sub-int v0, v3, v0

    iget v1, p0, Lcom/android/common/independentFocusExposure/o;->ge:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 292
    iget v1, p0, Lcom/android/common/independentFocusExposure/o;->fq:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->ge:I

    sub-int/2addr v1, v2

    .line 291
    invoke-static {v0, v9, v1}, Lcom/android/common/h;->aoS(III)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fE:I

    .line 293
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fl:[I

    aget v0, v0, v10

    sub-int v0, v5, v0

    iget v1, p0, Lcom/android/common/independentFocusExposure/o;->ga:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 294
    iget v1, p0, Lcom/android/common/independentFocusExposure/o;->dW:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->fp:I

    iget v4, p0, Lcom/android/common/independentFocusExposure/o;->ga:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/android/common/independentFocusExposure/o;->dX:I

    sub-int/2addr v2, v4

    .line 293
    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoS(III)I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fY:I

    .line 296
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fQ:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/android/common/independentFocusExposure/o;->fE:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->fY:I

    invoke-virtual {v0, v1, v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 297
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fQ:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 298
    const/16 v1, 0xd

    aput v9, v0, v1

    .line 299
    const/16 v1, 0x9

    aput v10, v0, v1

    .line 300
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->requestLayout()V

    .line 302
    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fX:I

    .line 303
    iget v1, p0, Lcom/android/common/independentFocusExposure/o;->ge:I

    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->ga:I

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fl:[I

    aget v0, v0, v9

    sub-int v4, v3, v0

    .line 304
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fl:[I

    aget v0, v0, v10

    sub-int v0, v5, v0

    .line 305
    iget v3, p0, Lcom/android/common/independentFocusExposure/o;->dW:I

    iget v5, p0, Lcom/android/common/independentFocusExposure/o;->ge:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget v5, p0, Lcom/android/common/independentFocusExposure/o;->fp:I

    iget v6, p0, Lcom/android/common/independentFocusExposure/o;->ga:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/common/independentFocusExposure/o;->dX:I

    sub-int/2addr v5, v6

    .line 304
    invoke-static {v0, v3, v5}, Lcom/android/common/h;->aoS(III)I

    move-result v5

    .line 306
    iget v6, p0, Lcom/android/common/independentFocusExposure/o;->fq:I

    iget v7, p0, Lcom/android/common/independentFocusExposure/o;->fp:I

    .line 307
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fG:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 303
    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/common/independentFocusExposure/o;->go(IIFIIIILandroid/graphics/Rect;)V

    .line 308
    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fX:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_143

    .line 309
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gv()Z

    move-result v0

    if-eqz v0, :cond_150

    .line 312
    :cond_143
    :goto_143
    iput-boolean v9, p0, Lcom/android/common/independentFocusExposure/o;->fC:Z

    .line 315
    :cond_145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v10, :cond_14f

    .line 316
    iput v9, p0, Lcom/android/common/independentFocusExposure/o;->fZ:I

    .line 317
    iput-boolean v9, p0, Lcom/android/common/independentFocusExposure/o;->fx:Z

    .line 244
    :cond_14f
    return-void

    .line 310
    :cond_150
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    goto :goto_143
.end method

.method public gF()V
    .registers 4

    .prologue
    .line 655
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->fk:[F

    array-length v1, v1

    if-ge v0, v1, :cond_f

    .line 656
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->fk:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 654
    :cond_f
    return-void
.end method

.method public gI(Z)V
    .registers 2

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/o;->fB:Z

    .line 482
    return-void
.end method

.method public gJ(Z)V
    .registers 2

    .prologue
    .line 661
    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/o;->fC:Z

    .line 660
    return-void
.end method

.method public ga()Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gc:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    return-object v0
.end method

.method public gb(Landroid/app/Activity;Lcom/android/common/appService/R;)V
    .registers 4

    .prologue
    .line 146
    const v0, 0x7f1000d3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    .line 147
    const v0, 0x7f1000d4

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    .line 148
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->cg()V

    .line 149
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    invoke-virtual {v0, p0}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->cf(Lcom/android/common/independentFocusExposure/o;)V

    .line 150
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gt()V

    .line 151
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gu()V

    .line 153
    invoke-virtual {p0, p2}, Lcom/android/common/independentFocusExposure/o;->gc(Lcom/android/common/appService/R;)V

    .line 145
    return-void
.end method

.method public gc(Lcom/android/common/appService/R;)V
    .registers 4

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/android/common/appService/R;->ow()I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fq:I

    .line 138
    invoke-virtual {p1}, Lcom/android/common/appService/R;->ox()I

    move-result v0

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fp:I

    .line 139
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fl:[I

    invoke-virtual {p1, v0}, Lcom/android/common/appService/R;->oy([I)V

    .line 140
    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fq:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fv:I

    .line 141
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fl:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/common/independentFocusExposure/o;->fp:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fu:I

    .line 142
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gH()V

    .line 136
    return-void
.end method

.method public gd()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fA:Z

    .line 898
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fJ:Z

    .line 899
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fy:Z

    .line 900
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fz:Z

    .line 901
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/o;->gE()V

    .line 896
    return-void
.end method

.method public ge(Z)V
    .registers 2

    .prologue
    .line 905
    iput-boolean p1, p0, Lcom/android/common/independentFocusExposure/o;->fJ:Z

    .line 904
    return-void
.end method

.method public gf()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 923
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fw:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 924
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fw:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 922
    :cond_a
    return-void
.end method

.method public gg()Z
    .registers 3

    .prologue
    .line 234
    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fZ:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public gh()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 238
    sget-object v0, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;->gj:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/o;->fJ(Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;)V

    .line 239
    invoke-virtual {p0, v1}, Lcom/android/common/independentFocusExposure/o;->gI(Z)V

    .line 240
    iput v1, p0, Lcom/android/common/independentFocusExposure/o;->fZ:I

    .line 241
    iput-boolean v1, p0, Lcom/android/common/independentFocusExposure/o;->fx:Z

    .line 237
    return-void
.end method

.method public gi()V
    .registers 3

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-eq v0, v1, :cond_20

    .line 930
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v1

    if-ne v0, v1, :cond_32

    .line 931
    :cond_20
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->fI:Lcom/android/common/independentFocusExposure/t;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->ry(Lcom/android/common/appService/O;)V

    .line 932
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fI:Lcom/android/common/independentFocusExposure/t;

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/t;->dx(I)V

    .line 928
    :cond_32
    return-void
.end method

.method public gj()V
    .registers 3

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-eq v0, v1, :cond_20

    .line 938
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v1

    if-ne v0, v1, :cond_27

    .line 939
    :cond_20
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->dV:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->fI:Lcom/android/common/independentFocusExposure/t;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->rz(Lcom/android/common/appService/O;)V

    .line 936
    :cond_27
    return-void
.end method

.method public gk()V
    .registers 3

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    if-eqz v0, :cond_a

    .line 955
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->setVisibility(I)V

    .line 953
    :cond_a
    return-void
.end method

.method public gl()V
    .registers 3

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fA:Z

    if-eqz v0, :cond_10

    .line 914
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fh:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 915
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setAlpha(F)V

    .line 912
    :goto_f
    return-void

    .line 917
    :cond_10
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fg:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 918
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setAlpha(F)V

    goto :goto_f
.end method

.method public gm(I)V
    .registers 3

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    if-eqz v0, :cond_9

    .line 949
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gb:Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->setVisibility(I)V

    .line 947
    :cond_9
    return-void
.end method

.method public gp()Z
    .registers 2

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fz:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fy:Z

    if-eqz v0, :cond_b

    :cond_8
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fJ:Z

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public gr()Ljava/util/List;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 350
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/o;->fA:Z

    if-eqz v0, :cond_6

    .line 351
    return-object v2

    .line 354
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fG:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/common/independentFocusExposure/o;->gw(Landroid/graphics/Rect;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_18

    move-result v0

    if-nez v0, :cond_19

    .line 355
    return-object v2

    .line 356
    :catch_18
    move-exception v0

    .line 359
    :cond_19
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fG:Ljava/util/List;

    return-object v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 14

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 508
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fR:[B

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 509
    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fV:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/independentFocusExposure/o;->fV:I

    .line 510
    iget v0, p0, Lcom/android/common/independentFocusExposure/o;->fV:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_bf

    .line 512
    if-nez p1, :cond_16

    .line 513
    return-void

    .line 515
    :cond_16
    new-instance v0, Landroid/graphics/YuvImage;

    iget v3, p0, Lcom/android/common/independentFocusExposure/o;->fU:I

    iget v4, p0, Lcom/android/common/independentFocusExposure/o;->fT:I

    const/16 v2, 0x11

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 516
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 518
    iget v2, p0, Lcom/android/common/independentFocusExposure/o;->fU:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/common/independentFocusExposure/o;->fp:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 519
    iget v3, p0, Lcom/android/common/independentFocusExposure/o;->fT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/common/independentFocusExposure/o;->fq:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 520
    new-instance v4, Landroid/graphics/Rect;

    .line 521
    iget v5, p0, Lcom/android/common/independentFocusExposure/o;->gg:I

    iget v6, p0, Lcom/android/common/independentFocusExposure/o;->fc:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/common/independentFocusExposure/o;->fp:I

    iget v7, p0, Lcom/android/common/independentFocusExposure/o;->fc:I

    sub-int/2addr v6, v7

    invoke-static {v5, v10, v6}, Lcom/android/common/h;->aoS(III)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    .line 522
    iget v6, p0, Lcom/android/common/independentFocusExposure/o;->fq:I

    iget v7, p0, Lcom/android/common/independentFocusExposure/o;->gf:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/common/independentFocusExposure/o;->fd:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/common/independentFocusExposure/o;->fq:I

    iget v8, p0, Lcom/android/common/independentFocusExposure/o;->fd:I

    sub-int/2addr v7, v8

    invoke-static {v6, v10, v7}, Lcom/android/common/h;->aoS(III)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    .line 523
    iget v7, p0, Lcom/android/common/independentFocusExposure/o;->gg:I

    iget v8, p0, Lcom/android/common/independentFocusExposure/o;->fc:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/common/independentFocusExposure/o;->fc:I

    iget v9, p0, Lcom/android/common/independentFocusExposure/o;->fp:I

    invoke-static {v7, v8, v9}, Lcom/android/common/h;->aoS(III)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    float-to-int v2, v2

    .line 524
    iget v7, p0, Lcom/android/common/independentFocusExposure/o;->fq:I

    iget v8, p0, Lcom/android/common/independentFocusExposure/o;->gf:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/common/independentFocusExposure/o;->fd:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/common/independentFocusExposure/o;->fd:I

    iget v9, p0, Lcom/android/common/independentFocusExposure/o;->fq:I

    invoke-static {v7, v8, v9}, Lcom/android/common/h;->aoS(III)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v3, v7

    float-to-int v3, v3

    .line 520
    invoke-direct {v4, v5, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 526
    const/16 v2, 0x50

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 528
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/o;->fD:[B

    .line 529
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 530
    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 532
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->fD:[B

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/o;->fD:[B

    array-length v2, v2

    invoke-static {v1, v10, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->fs:Lcom/android/common/independentFocusExposure/p;

    if-nez v1, :cond_b8

    if-eqz v0, :cond_b8

    .line 535
    new-instance v1, Lcom/android/common/independentFocusExposure/p;

    invoke-direct {v1, p0}, Lcom/android/common/independentFocusExposure/p;-><init>(Lcom/android/common/independentFocusExposure/o;)V

    iput-object v1, p0, Lcom/android/common/independentFocusExposure/o;->fs:Lcom/android/common/independentFocusExposure/p;

    .line 536
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->fs:Lcom/android/common/independentFocusExposure/p;

    invoke-virtual {v1}, Lcom/android/common/independentFocusExposure/p;->start()V

    .line 539
    :cond_b8
    if-eqz v0, :cond_bf

    .line 540
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/o;->fs:Lcom/android/common/independentFocusExposure/p;

    invoke-virtual {v1, v0}, Lcom/android/common/independentFocusExposure/p;->hh(Landroid/graphics/Bitmap;)V

    .line 507
    :cond_bf
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_9

    .line 892
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/o;->gd:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 890
    :cond_9
    return-void
.end method

.class public Lcom/android/camera/cameraFamily/a;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/cameraFamily/f;


# static fields
.field private static final synthetic alF:[I


# instance fields
.field private alA:Landroid/animation/AnimatorSet;

.field private alB:Landroid/animation/AnimatorSet;

.field private alC:Lcom/android/common/ui/RotateImageView;

.field private alD:Landroid/animation/AnimatorSet;

.field private alE:[Landroid/view/View;

.field private alg:Z

.field private alh:Lcom/android/camera/cameraFamily/d;

.field private ali:Ljava/util/ArrayList;

.field private alj:Lcom/android/common/ui/RotateLayout;

.field private alk:Lcom/android/camera/cameraFamily/k;

.field private all:Landroid/view/ViewGroup;

.field private alm:Z

.field private aln:Landroid/widget/ImageView;

.field private alo:Landroid/view/View;

.field private alp:Lcom/android/camera/cameraFamily/e;

.field private alq:Landroid/os/Handler;

.field private alr:Landroid/animation/AnimatorSet;

.field private als:Ljava/lang/Thread;

.field private alt:Lcom/android/camera/cameraFamily/k;

.field private alu:Ljava/util/List;

.field private alv:Lcom/android/camera/cameraFamily/j;

.field private alw:Lcom/android/camera/c/c;

.field private alx:I

.field private aly:Lcom/android/common/ui/RotateImageView;

.field private alz:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/cameraFamily/a;->alm:Z

    .line 60
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->all:Landroid/view/ViewGroup;

    .line 61
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    .line 62
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alC:Lcom/android/common/ui/RotateImageView;

    .line 63
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->aly:Lcom/android/common/ui/RotateImageView;

    .line 64
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->aln:Landroid/widget/ImageView;

    .line 65
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alu:Ljava/util/List;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/cameraFamily/a;->alx:I

    .line 67
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alp:Lcom/android/camera/cameraFamily/e;

    .line 68
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alw:Lcom/android/camera/c/c;

    .line 69
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alj:Lcom/android/common/ui/RotateLayout;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/cameraFamily/a;->alg:Z

    .line 71
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alE:[Landroid/view/View;

    .line 72
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alt:Lcom/android/camera/cameraFamily/k;

    .line 73
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alk:Lcom/android/camera/cameraFamily/k;

    .line 75
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alD:Landroid/animation/AnimatorSet;

    .line 76
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alr:Landroid/animation/AnimatorSet;

    .line 77
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alz:Landroid/animation/AnimatorSet;

    .line 78
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alB:Landroid/animation/AnimatorSet;

    .line 79
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alA:Landroid/animation/AnimatorSet;

    .line 81
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alv:Lcom/android/camera/cameraFamily/j;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/android/camera/cameraFamily/a;->ali:Ljava/util/ArrayList;

    .line 85
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alh:Lcom/android/camera/cameraFamily/d;

    .line 89
    new-instance v0, Lcom/android/camera/cameraFamily/m;

    invoke-direct {v0, p0}, Lcom/android/camera/cameraFamily/m;-><init>(Lcom/android/camera/cameraFamily/a;)V

    iput-object v0, p0, Lcom/android/camera/cameraFamily/a;->alq:Landroid/os/Handler;

    .line 105
    new-instance v0, Lcom/android/camera/cameraFamily/n;

    invoke-direct {v0, p0}, Lcom/android/camera/cameraFamily/n;-><init>(Lcom/android/camera/cameraFamily/a;)V

    iput-object v0, p0, Lcom/android/camera/cameraFamily/a;->als:Ljava/lang/Thread;

    .line 118
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/cameraFamily/a;->alm:Z

    .line 60
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->all:Landroid/view/ViewGroup;

    .line 61
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    .line 62
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alC:Lcom/android/common/ui/RotateImageView;

    .line 63
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->aly:Lcom/android/common/ui/RotateImageView;

    .line 64
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->aln:Landroid/widget/ImageView;

    .line 65
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alu:Ljava/util/List;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/cameraFamily/a;->alx:I

    .line 67
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alp:Lcom/android/camera/cameraFamily/e;

    .line 68
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alw:Lcom/android/camera/c/c;

    .line 69
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alj:Lcom/android/common/ui/RotateLayout;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/cameraFamily/a;->alg:Z

    .line 71
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alE:[Landroid/view/View;

    .line 72
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alt:Lcom/android/camera/cameraFamily/k;

    .line 73
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alk:Lcom/android/camera/cameraFamily/k;

    .line 75
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alD:Landroid/animation/AnimatorSet;

    .line 76
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alr:Landroid/animation/AnimatorSet;

    .line 77
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alz:Landroid/animation/AnimatorSet;

    .line 78
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alB:Landroid/animation/AnimatorSet;

    .line 79
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alA:Landroid/animation/AnimatorSet;

    .line 81
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alv:Lcom/android/camera/cameraFamily/j;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/android/camera/cameraFamily/a;->ali:Ljava/util/ArrayList;

    .line 85
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alh:Lcom/android/camera/cameraFamily/d;

    .line 89
    new-instance v0, Lcom/android/camera/cameraFamily/m;

    invoke-direct {v0, p0}, Lcom/android/camera/cameraFamily/m;-><init>(Lcom/android/camera/cameraFamily/a;)V

    iput-object v0, p0, Lcom/android/camera/cameraFamily/a;->alq:Landroid/os/Handler;

    .line 105
    new-instance v0, Lcom/android/camera/cameraFamily/n;

    invoke-direct {v0, p0}, Lcom/android/camera/cameraFamily/n;-><init>(Lcom/android/camera/cameraFamily/a;)V

    iput-object v0, p0, Lcom/android/camera/cameraFamily/a;->als:Ljava/lang/Thread;

    .line 114
    return-void
.end method

.method private awC()V
    .registers 12

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x1

    const/16 v9, 0xff

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 263
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alE:[Landroid/view/View;

    if-nez v0, :cond_f

    .line 264
    :cond_e
    return-void

    .line 263
    :cond_f
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alE:[Landroid/view/View;

    array-length v0, v0

    if-eqz v0, :cond_e

    .line 266
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 267
    const-string/jumbo v1, "wlancamera"

    .line 266
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_49

    move v1, v2

    :goto_28
    move v4, v3

    move-object v0, v5

    .line 270
    :goto_2a
    iget-object v7, p0, Lcom/android/camera/cameraFamily/a;->alE:[Landroid/view/View;

    array-length v7, v7

    if-ge v4, v7, :cond_ab

    .line 271
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alE:[Landroid/view/View;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/cameraFamily/k;

    .line 272
    iget v7, v0, Lcom/android/camera/cameraFamily/k;->amj:I

    sget-object v8, Lcom/android/common/appService/CameraMember;->jQ:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v8}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v8

    if-ne v7, v8, :cond_4b

    move-object v10, v0

    move v0, v4

    move-object v4, v10

    .line 277
    :goto_46
    if-ne v0, v6, :cond_4e

    .line 278
    return-void

    :cond_49
    move v1, v3

    .line 266
    goto :goto_28

    .line 270
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 280
    :cond_4e
    iget-object v6, p0, Lcom/android/camera/cameraFamily/a;->alE:[Landroid/view/View;

    aget-object v0, v6, v0

    const v6, 0x7f100063

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 283
    if-eqz v1, :cond_8b

    .line 284
    const-string/jumbo v1, "yuweiwei"

    const-string/jumbo v2, "isShowGray"

    invoke-static {v1, v2}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 286
    const/16 v2, 0x33

    invoke-static {v2, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    iput-boolean v3, v4, Lcom/android/camera/cameraFamily/k;->aml:Z

    .line 294
    :goto_7c
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 295
    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 262
    return-void

    .line 289
    :cond_8b
    const-string/jumbo v1, "yuweiwei"

    const-string/jumbo v6, "not showgray"

    invoke-static {v1, v6}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f020051

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 291
    const/16 v6, 0x89

    invoke-static {v6, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    iput-boolean v2, v4, Lcom/android/camera/cameraFamily/k;->aml:Z

    goto :goto_7c

    :cond_ab
    move-object v4, v0

    move v0, v6

    goto :goto_46
.end method

.method static synthetic awD(Lcom/android/camera/cameraFamily/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/cameraFamily/a;->alg:Z

    return v0
.end method

.method static synthetic awE(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic awF(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/d;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alh:Lcom/android/camera/cameraFamily/d;

    return-object v0
.end method

.method static synthetic awG(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/ui/RotateLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alj:Lcom/android/common/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic awH(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/camerastate/a;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->adx:Lcom/android/common/camerastate/a;

    return-object v0
.end method

.method static synthetic awI(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/k;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alk:Lcom/android/camera/cameraFamily/k;

    return-object v0
.end method

.method static synthetic awJ(Lcom/android/camera/cameraFamily/a;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->aln:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic awK(Lcom/android/camera/cameraFamily/a;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic awL(Lcom/android/camera/cameraFamily/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alq:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic awM(Lcom/android/camera/cameraFamily/a;)Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->als:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic awN(Lcom/android/camera/cameraFamily/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/cameraFamily/a;->adv:Z

    return v0
.end method

.method static synthetic awO(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/c/c;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alw:Lcom/android/camera/c/c;

    return-object v0
.end method

.method static synthetic awP(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/ui/RotateImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->aly:Lcom/android/common/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic awQ(Lcom/android/camera/cameraFamily/a;)Landroid/animation/AnimatorSet;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alz:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic awR(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/ui/RotateImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alC:Lcom/android/common/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic awS(Lcom/android/camera/cameraFamily/a;)[Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alE:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic awT(Lcom/android/camera/cameraFamily/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/cameraFamily/a;->alg:Z

    return p1
.end method

.method static synthetic awU(Lcom/android/camera/cameraFamily/a;Lcom/android/camera/cameraFamily/k;)Lcom/android/camera/cameraFamily/k;
    .registers 2

    iput-object p1, p0, Lcom/android/camera/cameraFamily/a;->alk:Lcom/android/camera/cameraFamily/k;

    return-object p1
.end method

.method static synthetic awV(Lcom/android/camera/cameraFamily/a;Lcom/android/camera/cameraFamily/k;)Lcom/android/camera/cameraFamily/k;
    .registers 2

    iput-object p1, p0, Lcom/android/camera/cameraFamily/a;->alt:Lcom/android/camera/cameraFamily/k;

    return-object p1
.end method

.method static synthetic awW(Lcom/android/camera/cameraFamily/a;[Landroid/view/View;)[Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/android/camera/cameraFamily/a;->alE:[Landroid/view/View;

    return-object p1
.end method

.method static synthetic awX(Lcom/android/camera/cameraFamily/a;)[Landroid/view/View;
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->awt()[Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic awY(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/j;
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->awi()Lcom/android/camera/cameraFamily/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic awZ(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/camerastate/UIState;
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    return-object v0
.end method

.method private awe()V
    .registers 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alr:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_16

    .line 867
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alr:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 868
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alr:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 870
    :cond_11
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alr:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 872
    :cond_16
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alD:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2c

    .line 873
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alD:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 874
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alD:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 876
    :cond_27
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alD:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 878
    :cond_2c
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alz:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_42

    .line 879
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alz:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 880
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alz:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 882
    :cond_3d
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alz:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 884
    :cond_42
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alA:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_58

    .line 885
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alA:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 886
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alA:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 888
    :cond_53
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alA:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 890
    :cond_58
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alB:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_6e

    .line 891
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alB:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 892
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alB:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 894
    :cond_69
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alB:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 865
    :cond_6e
    return-void
.end method

.method private awg()I
    .registers 4

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/a;->aln()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "scroll_switcher_seleleted_family"

    sget-object v2, Lcom/android/common/appService/CameraMember;->ju:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private awi()Lcom/android/camera/cameraFamily/j;
    .registers 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alv:Lcom/android/camera/cameraFamily/j;

    if-nez v0, :cond_b

    .line 926
    new-instance v0, Lcom/android/camera/cameraFamily/j;

    invoke-direct {v0, p0}, Lcom/android/camera/cameraFamily/j;-><init>(Lcom/android/camera/cameraFamily/a;)V

    iput-object v0, p0, Lcom/android/camera/cameraFamily/a;->alv:Lcom/android/camera/cameraFamily/j;

    .line 928
    :cond_b
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alv:Lcom/android/camera/cameraFamily/j;

    return-object v0
.end method

.method private awj()V
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_15

    .line 360
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 361
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asg()V

    .line 358
    :cond_15
    return-void
.end method

.method private awk()V
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_15

    .line 368
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 369
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->ash()V

    .line 366
    :cond_15
    return-void
.end method

.method private awm()V
    .registers 27

    .prologue
    .line 613
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/cameraFamily/a;->alD:Landroid/animation/AnimatorSet;

    if-nez v4, :cond_104

    .line 614
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/cameraFamily/a;->alj:Lcom/android/common/ui/RotateLayout;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_35a

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 615
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/cameraFamily/a;->alj:Lcom/android/common/ui/RotateLayout;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_362

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 616
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/cameraFamily/a;->alj:Lcom/android/common/ui/RotateLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_36a

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 617
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/cameraFamily/a;->aln:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_372

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 619
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_37a

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 620
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_382

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 621
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_38a

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 623
    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v12, 0x3e75c28f    # 0.24f

    const v13, 0x3db851ec    # 0.09f

    const v14, 0x3e99999a    # 0.3f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 624
    new-instance v12, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v12}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 625
    const-wide/16 v14, 0xfa

    .line 626
    const-wide/16 v16, 0x96

    .line 627
    invoke-virtual {v4, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 628
    invoke-virtual {v4, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 629
    invoke-virtual {v5, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 630
    invoke-virtual {v5, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 631
    invoke-virtual {v6, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 632
    invoke-virtual {v6, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 633
    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 634
    invoke-virtual {v7, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 636
    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 637
    invoke-virtual {v8, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 638
    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 639
    invoke-virtual {v9, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 640
    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 641
    invoke-virtual {v10, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 643
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/cameraFamily/a;->alB:Landroid/animation/AnimatorSet;

    .line 644
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/cameraFamily/a;->alB:Landroid/animation/AnimatorSet;

    const/4 v12, 0x3

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v8, 0x1

    aput-object v9, v12, v8

    const/4 v8, 0x2

    aput-object v10, v12, v8

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 646
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/camera/cameraFamily/a;->alD:Landroid/animation/AnimatorSet;

    .line 647
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/cameraFamily/a;->alD:Landroid/animation/AnimatorSet;

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/Animator;

    .line 648
    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v4, 0x1

    aput-object v5, v9, v4

    const/4 v4, 0x2

    aput-object v6, v9, v4

    const/4 v4, 0x3

    aput-object v7, v9, v4

    .line 647
    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/cameraFamily/a;->alD:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/camera/cameraFamily/s;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/cameraFamily/s;-><init>(Lcom/android/camera/cameraFamily/a;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 683
    :cond_104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/cameraFamily/a;->alr:Landroid/animation/AnimatorSet;

    if-nez v4, :cond_359

    .line 684
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/cameraFamily/a;->alj:Lcom/android/common/ui/RotateLayout;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_392

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 685
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/cameraFamily/a;->alj:Lcom/android/common/ui/RotateLayout;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_39a

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 686
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/cameraFamily/a;->alj:Lcom/android/common/ui/RotateLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_3a2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 687
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/cameraFamily/a;->aln:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_3aa

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 689
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_3b2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 690
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_3ba

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 691
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_3c2

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 693
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    sget-object v12, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_3ca

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 694
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_3d2

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 695
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/cameraFamily/a;->alC:Lcom/android/common/ui/RotateImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    fill-array-data v15, :array_3da

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 696
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    sget-object v15, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_3e2

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 697
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    sget-object v16, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_3ea

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 699
    new-instance v16, Landroid/view/animation/PathInterpolator;

    const v17, 0x3e75c28f    # 0.24f

    const v18, 0x3db851ec    # 0.09f

    const v19, 0x3e99999a    # 0.3f

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-direct/range {v16 .. v20}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 700
    new-instance v17, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v17 .. v17}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 701
    const-wide/16 v18, 0x64

    .line 702
    const-wide/16 v20, 0xfa

    .line 703
    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 704
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 705
    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 706
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 707
    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 708
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 709
    new-instance v22, Landroid/animation/AnimatorSet;

    invoke-direct/range {v22 .. v22}, Landroid/animation/AnimatorSet;-><init>()V

    .line 710
    const-wide/16 v24, 0xa

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 711
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v4, v23, v24

    const/4 v4, 0x1

    aput-object v5, v23, v4

    const/4 v4, 0x2

    aput-object v6, v23, v4

    invoke-virtual/range {v22 .. v23}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 713
    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 714
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 716
    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 717
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 718
    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 719
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 720
    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 721
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 723
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3e800000    # 0.25f

    const v6, 0x3eeb851f    # 0.46f

    const v16, 0x3ee66666    # 0.45f

    const v18, 0x3f70a3d7    # 0.94f

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 724
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3f0ccccd    # 0.55f

    const v16, 0x3dae147b    # 0.085f

    const v18, 0x3f2e147b    # 0.68f

    const v19, 0x3f07ae14    # 0.53f

    move/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v5, v6, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 725
    invoke-virtual {v11, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 726
    const-wide/16 v18, 0x32

    move-wide/from16 v0, v18

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 727
    invoke-virtual {v12, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 728
    const-wide/16 v18, 0x32

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 729
    new-instance v4, Lcom/android/camera/cameraFamily/t;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/cameraFamily/t;-><init>(Lcom/android/camera/cameraFamily/a;)V

    invoke-virtual {v11, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 748
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 749
    const-wide/16 v16, 0x32

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 751
    const-wide/16 v16, 0x32

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 752
    const-wide/16 v16, 0xc8

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 753
    invoke-virtual {v11, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 754
    const-wide/16 v16, 0x32

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 755
    const-wide/16 v16, 0xc8

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 756
    invoke-virtual {v12, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 758
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/cameraFamily/a;->alA:Landroid/animation/AnimatorSet;

    .line 759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/cameraFamily/a;->alA:Landroid/animation/AnimatorSet;

    const-wide/16 v16, 0xa

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 760
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/cameraFamily/a;->alA:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const/4 v6, 0x1

    aput-object v9, v5, v6

    const/4 v6, 0x2

    aput-object v10, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/cameraFamily/a;->alA:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/camera/cameraFamily/u;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/cameraFamily/u;-><init>(Lcom/android/camera/cameraFamily/a;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 790
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/cameraFamily/a;->alz:Landroid/animation/AnimatorSet;

    .line 791
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/cameraFamily/a;->alz:Landroid/animation/AnimatorSet;

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/animation/Animator;

    .line 792
    const/4 v6, 0x0

    aput-object v13, v5, v6

    .line 793
    const/4 v6, 0x1

    aput-object v14, v5, v6

    const/4 v6, 0x2

    aput-object v15, v5, v6

    .line 794
    const/4 v6, 0x3

    aput-object v11, v5, v6

    const/4 v6, 0x4

    aput-object v12, v5, v6

    .line 791
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/cameraFamily/a;->alz:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/camera/cameraFamily/v;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/cameraFamily/v;-><init>(Lcom/android/camera/cameraFamily/a;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 822
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/cameraFamily/a;->alr:Landroid/animation/AnimatorSet;

    .line 823
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/cameraFamily/a;->alr:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    .line 824
    const/4 v6, 0x0

    aput-object v22, v5, v6

    const/4 v6, 0x1

    aput-object v7, v5, v6

    .line 823
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/cameraFamily/a;->alr:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/camera/cameraFamily/w;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/cameraFamily/w;-><init>(Lcom/android/camera/cameraFamily/a;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 612
    :cond_359
    return-void

    .line 614
    :array_35a
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 615
    :array_362
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 616
    :array_36a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 617
    :array_372
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 619
    :array_37a
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 620
    :array_382
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 621
    :array_38a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 684
    :array_392
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 685
    :array_39a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 686
    :array_3a2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 687
    :array_3aa
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 689
    :array_3b2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 690
    :array_3ba
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 691
    :array_3c2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 693
    :array_3ca
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    .line 694
    :array_3d2
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    .line 695
    :array_3da
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 696
    :array_3e2
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    .line 697
    :array_3ea
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private awn([Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 309
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alw:Lcom/android/camera/c/c;

    if-nez v0, :cond_20

    .line 310
    new-instance v0, Lcom/android/camera/c/c;

    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/cameraFamily/a;->adt:Lcom/android/common/appService/W;

    .line 311
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/a;->alm()I

    move-result v3

    .line 310
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/camera/c/c;-><init>(Landroid/content/Context;[Landroid/view/View;Lcom/android/common/appService/W;I)V

    iput-object v0, p0, Lcom/android/camera/cameraFamily/a;->alw:Lcom/android/camera/c/c;

    .line 312
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alw:Lcom/android/camera/c/c;

    new-instance v1, Lcom/android/camera/cameraFamily/q;

    invoke-direct {v1, p0}, Lcom/android/camera/cameraFamily/q;-><init>(Lcom/android/camera/cameraFamily/a;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/c/c;->azo(Lcom/android/camera/c/d;)V

    .line 352
    :cond_20
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alw:Lcom/android/camera/c/c;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/camera/c/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->all:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/cameraFamily/a;->alw:Lcom/android/camera/c/c;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 308
    return-void
.end method

.method private awo()V
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    new-instance v1, Lcom/android/camera/cameraFamily/p;

    invoke-direct {v1, p0}, Lcom/android/camera/cameraFamily/p;-><init>(Lcom/android/camera/cameraFamily/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 208
    return-void
.end method

.method private awp(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 197
    const v0, 0x7f10005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/cameraFamily/a;->all:Landroid/view/ViewGroup;

    .line 198
    const v0, 0x7f10005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/cameraFamily/a;->alj:Lcom/android/common/ui/RotateLayout;

    .line 199
    const v0, 0x7f10005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/cameraFamily/a;->aln:Landroid/widget/ImageView;

    .line 200
    const v0, 0x7f10005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    .line 201
    const v0, 0x7f100061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/cameraFamily/a;->alC:Lcom/android/common/ui/RotateImageView;

    .line 202
    const v0, 0x7f100060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/cameraFamily/a;->aly:Lcom/android/common/ui/RotateImageView;

    .line 203
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->all:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/camera/cameraFamily/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/cameraFamily/b;-><init>(Lcom/android/camera/cameraFamily/a;Lcom/android/camera/cameraFamily/b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->awo()V

    .line 205
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/ui/h;

    iget-object v1, p0, Lcom/android/camera/cameraFamily/a;->alj:Lcom/android/common/ui/RotateLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/cameraFamily/a;->aly:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/cameraFamily/a;->alC:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/camera/cameraFamily/a;->adw:[Lcom/android/common/ui/h;

    .line 196
    return-void
.end method

.method private awq()V
    .registers 3

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->awC()V

    .line 300
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alE:[Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/a;->awn([Landroid/view/View;)V

    .line 302
    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->aww()V

    .line 303
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alC:Lcom/android/common/ui/RotateImageView;

    .line 304
    iget-object v1, p0, Lcom/android/camera/cameraFamily/a;->alt:Lcom/android/camera/cameraFamily/k;

    iget v1, v1, Lcom/android/camera/cameraFamily/k;->amj:I

    invoke-static {v1}, Lcom/android/common/appService/CameraMember;->md(I)Lcom/android/common/appService/CameraMember;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/cameraFamily/a;->awh(Lcom/android/common/appService/CameraMember;)I

    move-result v1

    .line 303
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 305
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alo:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 298
    return-void
.end method

.method private awr(Landroid/animation/Animator;)Z
    .registers 3

    .prologue
    .line 899
    if-eqz p1, :cond_f

    .line 900
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    .line 899
    :goto_c
    return v0

    .line 900
    :cond_d
    const/4 v0, 0x1

    goto :goto_c

    .line 899
    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private awt()[Landroid/view/View;
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/a;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 226
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alp:Lcom/android/camera/cameraFamily/e;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/e;->axq()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/cameraFamily/a;->alu:Ljava/util/List;

    .line 229
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Landroid/view/View;

    .line 230
    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->awg()I

    move-result v0

    .line 231
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/cameraFamily/e;->axr(ILandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f4

    .line 232
    sget-object v0, Lcom/android/common/appService/CameraMember;->jm:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v0}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v0

    .line 233
    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/a;->awz(I)V

    move v2, v0

    :goto_3a
    move v3, v4

    .line 235
    :goto_3b
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_f3

    .line 236
    const v0, 0x7f040017

    invoke-virtual {v5, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v6, v3

    .line 238
    aget-object v0, v6, v3

    const v1, 0x7f100063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 239
    iget-object v1, p0, Lcom/android/camera/cameraFamily/a;->alu:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v7, "family_member_name"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/a;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 241
    iget-object v1, p0, Lcom/android/camera/cameraFamily/a;->alu:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v8, "family_member_icon_id"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 240
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    invoke-virtual {v1, v4, v4, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 243
    invoke-virtual {v0, v9, v1, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 244
    new-instance v1, Lcom/android/camera/cameraFamily/k;

    invoke-direct {v1}, Lcom/android/camera/cameraFamily/k;-><init>()V

    .line 245
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alu:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 246
    const-string/jumbo v7, "family_member_type"

    .line 245
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/android/camera/cameraFamily/k;->amj:I

    .line 247
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alu:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v7, "family_member_name"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/camera/cameraFamily/k;->mName:Ljava/lang/String;

    .line 248
    aget-object v0, v6, v3

    const v7, 0x7f100064

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/camera/cameraFamily/k;->amk:Landroid/widget/ImageView;

    .line 250
    iget v0, v1, Lcom/android/camera/cameraFamily/k;->amj:I

    if-ne v0, v2, :cond_eb

    .line 251
    iget-object v0, v1, Lcom/android/camera/cameraFamily/k;->amk:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alt:Lcom/android/camera/cameraFamily/k;

    .line 253
    iput-object v1, p0, Lcom/android/camera/cameraFamily/a;->alk:Lcom/android/camera/cameraFamily/k;

    .line 257
    :goto_e1
    aget-object v0, v6, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3b

    .line 255
    :cond_eb
    iget-object v0, v1, Lcom/android/camera/cameraFamily/k;->amk:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e1

    .line 259
    :cond_f3
    return-object v6

    :cond_f4
    move v2, v0

    goto/16 :goto_3a
.end method

.method public static awu()Lcom/android/camera/cameraFamily/a;
    .registers 2

    .prologue
    .line 385
    new-instance v0, Lcom/android/camera/cameraFamily/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/camera/cameraFamily/a;-><init>(I)V

    .line 386
    return-object v0
.end method

.method private awv()V
    .registers 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->ali:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/cameraFamily/c;

    .line 551
    if-eqz v0, :cond_6

    .line 552
    invoke-interface {v0}, Lcom/android/camera/cameraFamily/c;->axi()V

    goto :goto_6

    .line 549
    :cond_18
    return-void
.end method

.method private aww()V
    .registers 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->ali:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/cameraFamily/c;

    .line 543
    if-eqz v0, :cond_6

    .line 544
    invoke-interface {v0}, Lcom/android/camera/cameraFamily/c;->axh()V

    goto :goto_6

    .line 541
    :cond_18
    return-void
.end method

.method private awz(I)V
    .registers 4

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/a;->aln()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    const-string/jumbo v1, "scroll_switcher_seleleted_family"

    .line 379
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 378
    return-void
.end method

.method static synthetic axa(Lcom/android/camera/cameraFamily/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->awj()V

    return-void
.end method

.method static synthetic axb(Lcom/android/camera/cameraFamily/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->awk()V

    return-void
.end method

.method static synthetic axc(Lcom/android/camera/cameraFamily/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->awq()V

    return-void
.end method

.method static synthetic axd(Lcom/android/camera/cameraFamily/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->awv()V

    return-void
.end method

.method static synthetic axe(Lcom/android/camera/cameraFamily/a;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/cameraFamily/a;->awz(I)V

    return-void
.end method

.method static synthetic axf(Lcom/android/camera/cameraFamily/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->awC()V

    return-void
.end method

.method private static synthetic axg()[I
    .registers 3

    sget-object v0, Lcom/android/camera/cameraFamily/a;->alF:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/camera/cameraFamily/a;->alF:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/common/appService/CameraMember;->values()[Lcom/android/common/appService/CameraMember;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/common/appService/CameraMember;->jf:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_18} :catch_1f7

    :goto_18
    :try_start_18
    sget-object v1, Lcom/android/common/appService/CameraMember;->jg:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_22} :catch_1f4

    :goto_22
    :try_start_22
    sget-object v1, Lcom/android/common/appService/CameraMember;->jh:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_1f1

    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/android/common/appService/CameraMember;->ji:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_1ee

    :goto_35
    :try_start_35
    sget-object v1, Lcom/android/common/appService/CameraMember;->jj:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_3f} :catch_1eb

    :goto_3f
    :try_start_3f
    sget-object v1, Lcom/android/common/appService/CameraMember;->jk:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_48} :catch_1e8

    :goto_48
    :try_start_48
    sget-object v1, Lcom/android/common/appService/CameraMember;->jl:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_1e5

    :goto_52
    :try_start_52
    sget-object v1, Lcom/android/common/appService/CameraMember;->jm:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5b} :catch_1e2

    :goto_5b
    :try_start_5b
    sget-object v1, Lcom/android/common/appService/CameraMember;->jn:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_65} :catch_1df

    :goto_65
    :try_start_65
    sget-object v1, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_1dc

    :goto_6f
    :try_start_6f
    sget-object v1, Lcom/android/common/appService/CameraMember;->jp:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_1d9

    :goto_79
    :try_start_79
    sget-object v1, Lcom/android/common/appService/CameraMember;->jq:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_82} :catch_1d6

    :goto_82
    :try_start_82
    sget-object v1, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_8b} :catch_1d3

    :goto_8b
    :try_start_8b
    sget-object v1, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_94} :catch_1d0

    :goto_94
    :try_start_94
    sget-object v1, Lcom/android/common/appService/CameraMember;->jt:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9d} :catch_1cd

    :goto_9d
    :try_start_9d
    sget-object v1, Lcom/android/common/appService/CameraMember;->ju:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_1ca

    :goto_a7
    :try_start_a7
    sget-object v1, Lcom/android/common/appService/CameraMember;->jv:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_1c7

    :goto_b1
    :try_start_b1
    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bb} :catch_1c4

    :goto_bb
    :try_start_bb
    sget-object v1, Lcom/android/common/appService/CameraMember;->jx:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c5} :catch_1c1

    :goto_c5
    :try_start_c5
    sget-object v1, Lcom/android/common/appService/CameraMember;->jy:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_1be

    :goto_cf
    :try_start_cf
    sget-object v1, Lcom/android/common/appService/CameraMember;->jz:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_1bb

    :goto_d9
    :try_start_d9
    sget-object v1, Lcom/android/common/appService/CameraMember;->jA:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_e3} :catch_1b8

    :goto_e3
    :try_start_e3
    sget-object v1, Lcom/android/common/appService/CameraMember;->jB:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ed} :catch_1b5

    :goto_ed
    :try_start_ed
    sget-object v1, Lcom/android/common/appService/CameraMember;->jC:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f7} :catch_1b2

    :goto_f7
    :try_start_f7
    sget-object v1, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_101} :catch_1af

    :goto_101
    :try_start_101
    sget-object v1, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10b} :catch_1ac

    :goto_10b
    :try_start_10b
    sget-object v1, Lcom/android/common/appService/CameraMember;->jF:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_115} :catch_1a9

    :goto_115
    :try_start_115
    sget-object v1, Lcom/android/common/appService/CameraMember;->jG:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_11f} :catch_1a6

    :goto_11f
    :try_start_11f
    sget-object v1, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_1a4

    :goto_129
    :try_start_129
    sget-object v1, Lcom/android/common/appService/CameraMember;->jI:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_133} :catch_1a2

    :goto_133
    :try_start_133
    sget-object v1, Lcom/android/common/appService/CameraMember;->jJ:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_13d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_133 .. :try_end_13d} :catch_1a0

    :goto_13d
    :try_start_13d
    sget-object v1, Lcom/android/common/appService/CameraMember;->jK:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_147
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13d .. :try_end_147} :catch_19e

    :goto_147
    :try_start_147
    sget-object v1, Lcom/android/common/appService/CameraMember;->jL:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_151
    .catch Ljava/lang/NoSuchFieldError; {:try_start_147 .. :try_end_151} :catch_19c

    :goto_151
    :try_start_151
    sget-object v1, Lcom/android/common/appService/CameraMember;->jM:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_15b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_151 .. :try_end_15b} :catch_19a

    :goto_15b
    :try_start_15b
    sget-object v1, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_165
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15b .. :try_end_165} :catch_198

    :goto_165
    :try_start_165
    sget-object v1, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_16f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_165 .. :try_end_16f} :catch_196

    :goto_16f
    :try_start_16f
    sget-object v1, Lcom/android/common/appService/CameraMember;->jP:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_179
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16f .. :try_end_179} :catch_194

    :goto_179
    :try_start_179
    sget-object v1, Lcom/android/common/appService/CameraMember;->jQ:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_183
    .catch Ljava/lang/NoSuchFieldError; {:try_start_179 .. :try_end_183} :catch_192

    :goto_183
    :try_start_183
    sget-object v1, Lcom/android/common/appService/CameraMember;->jR:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_18d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_183 .. :try_end_18d} :catch_190

    :goto_18d
    sput-object v0, Lcom/android/camera/cameraFamily/a;->alF:[I

    return-object v0

    :catch_190
    move-exception v1

    goto :goto_18d

    :catch_192
    move-exception v1

    goto :goto_183

    :catch_194
    move-exception v1

    goto :goto_179

    :catch_196
    move-exception v1

    goto :goto_16f

    :catch_198
    move-exception v1

    goto :goto_165

    :catch_19a
    move-exception v1

    goto :goto_15b

    :catch_19c
    move-exception v1

    goto :goto_151

    :catch_19e
    move-exception v1

    goto :goto_147

    :catch_1a0
    move-exception v1

    goto :goto_13d

    :catch_1a2
    move-exception v1

    goto :goto_133

    :catch_1a4
    move-exception v1

    goto :goto_129

    :catch_1a6
    move-exception v1

    goto/16 :goto_11f

    :catch_1a9
    move-exception v1

    goto/16 :goto_115

    :catch_1ac
    move-exception v1

    goto/16 :goto_10b

    :catch_1af
    move-exception v1

    goto/16 :goto_101

    :catch_1b2
    move-exception v1

    goto/16 :goto_f7

    :catch_1b5
    move-exception v1

    goto/16 :goto_ed

    :catch_1b8
    move-exception v1

    goto/16 :goto_e3

    :catch_1bb
    move-exception v1

    goto/16 :goto_d9

    :catch_1be
    move-exception v1

    goto/16 :goto_cf

    :catch_1c1
    move-exception v1

    goto/16 :goto_c5

    :catch_1c4
    move-exception v1

    goto/16 :goto_bb

    :catch_1c7
    move-exception v1

    goto/16 :goto_b1

    :catch_1ca
    move-exception v1

    goto/16 :goto_a7

    :catch_1cd
    move-exception v1

    goto/16 :goto_9d

    :catch_1d0
    move-exception v1

    goto/16 :goto_94

    :catch_1d3
    move-exception v1

    goto/16 :goto_8b

    :catch_1d6
    move-exception v1

    goto/16 :goto_82

    :catch_1d9
    move-exception v1

    goto/16 :goto_79

    :catch_1dc
    move-exception v1

    goto/16 :goto_6f

    :catch_1df
    move-exception v1

    goto/16 :goto_65

    :catch_1e2
    move-exception v1

    goto/16 :goto_5b

    :catch_1e5
    move-exception v1

    goto/16 :goto_52

    :catch_1e8
    move-exception v1

    goto/16 :goto_48

    :catch_1eb
    move-exception v1

    goto/16 :goto_3f

    :catch_1ee
    move-exception v1

    goto/16 :goto_35

    :catch_1f1
    move-exception v1

    goto/16 :goto_2b

    :catch_1f4
    move-exception v1

    goto/16 :goto_22

    :catch_1f7
    move-exception v1

    goto/16 :goto_18
.end method


# virtual methods
.method protected ajt(IZ)V
    .registers 4

    .prologue
    .line 427
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->ajt(IZ)V

    .line 428
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alw:Lcom/android/camera/c/c;

    if-eqz v0, :cond_c

    .line 429
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alw:Lcom/android/camera/c/c;

    invoke-virtual {v0, p1}, Lcom/android/camera/c/c;->setOrientation(I)V

    .line 426
    :cond_c
    return-void
.end method

.method public awA(Lcom/android/camera/cameraFamily/e;)V
    .registers 2

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/camera/cameraFamily/a;->alp:Lcom/android/camera/cameraFamily/e;

    .line 192
    return-void
.end method

.method public awB(Z)V
    .registers 4

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->awm()V

    .line 578
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alD:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 579
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alr:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    .line 578
    if-nez v0, :cond_2b

    .line 580
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alz:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    .line 578
    if-nez v0, :cond_2b

    .line 581
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alA:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    .line 578
    if-nez v0, :cond_2b

    .line 582
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alB:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    .line 578
    if-eqz v0, :cond_2c

    .line 583
    :cond_2b
    return-void

    .line 585
    :cond_2c
    const-string/jumbo v0, "CameraFamilyFragment"

    const-string/jumbo v1, "showFamilyGrid"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->awe()V

    .line 587
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alD:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 588
    if-eqz p1, :cond_44

    .line 589
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alB:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 576
    :cond_44
    return-void
.end method

.method public awd(Lcom/android/camera/cameraFamily/c;)V
    .registers 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->ali:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 537
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->ali:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_d
    return-void
.end method

.method public awf()V
    .registers 1

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->awv()V

    .line 920
    return-void
.end method

.method public awh(Lcom/android/common/appService/CameraMember;)I
    .registers 5

    .prologue
    const v0, 0x7f02003c

    .line 473
    invoke-static {}, Lcom/android/camera/cameraFamily/a;->axg()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_56

    .line 532
    :goto_10
    :pswitch_10
    return v0

    .line 478
    :pswitch_11
    const v0, 0x7f020047

    .line 479
    goto :goto_10

    .line 481
    :pswitch_15
    const v0, 0x7f020031

    .line 482
    goto :goto_10

    .line 484
    :pswitch_19
    const v0, 0x7f020036

    .line 485
    goto :goto_10

    .line 487
    :pswitch_1d
    const v0, 0x7f020045

    .line 488
    goto :goto_10

    .line 490
    :pswitch_21
    const v0, 0x7f02004f

    .line 491
    goto :goto_10

    .line 493
    :pswitch_25
    const v0, 0x7f02004a

    .line 494
    goto :goto_10

    .line 496
    :pswitch_29
    const v0, 0x7f02002f

    .line 497
    goto :goto_10

    .line 499
    :pswitch_2d
    const v0, 0x7f02002c

    .line 500
    goto :goto_10

    .line 502
    :pswitch_31
    const v0, 0x7f020034

    .line 503
    goto :goto_10

    .line 505
    :pswitch_35
    const v0, 0x7f020041

    .line 506
    goto :goto_10

    .line 508
    :pswitch_39
    const v0, 0x7f020050

    .line 509
    goto :goto_10

    .line 511
    :pswitch_3d
    const v0, 0x7f02003a

    .line 512
    goto :goto_10

    .line 514
    :pswitch_41
    const v0, 0x7f020038

    .line 515
    goto :goto_10

    .line 517
    :pswitch_45
    const v0, 0x7f02003f

    .line 518
    goto :goto_10

    .line 520
    :pswitch_49
    const v0, 0x7f02004c

    .line 521
    goto :goto_10

    .line 523
    :pswitch_4d
    const v0, 0x7f020054

    .line 524
    goto :goto_10

    .line 526
    :pswitch_51
    const v0, 0x7f020043

    .line 527
    goto :goto_10

    .line 473
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_29
        :pswitch_15
        :pswitch_31
        :pswitch_19
        :pswitch_41
        :pswitch_3d
        :pswitch_10
        :pswitch_35
        :pswitch_51
        :pswitch_1d
        :pswitch_11
        :pswitch_25
        :pswitch_49
        :pswitch_21
        :pswitch_39
        :pswitch_45
        :pswitch_4d
    .end packed-switch
.end method

.method public awl(Z)V
    .registers 4

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->awm()V

    .line 595
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alr:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 596
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alD:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    .line 595
    if-nez v0, :cond_2b

    .line 597
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alz:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    .line 595
    if-nez v0, :cond_2b

    .line 598
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alA:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    .line 595
    if-nez v0, :cond_2b

    .line 599
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alB:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    .line 595
    if-eqz v0, :cond_2c

    .line 600
    :cond_2b
    return-void

    .line 602
    :cond_2c
    const-string/jumbo v0, "CameraFamilyFragment"

    const-string/jumbo v1, "hideFamilyGrid"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->awe()V

    .line 604
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alj:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_45

    .line 605
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alr:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 607
    :cond_45
    if-eqz p1, :cond_4c

    .line 608
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alA:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 593
    :cond_4c
    return-void
.end method

.method public aws()Z
    .registers 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alr:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/a;->awr(Landroid/animation/Animator;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 905
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alD:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/a;->awr(Landroid/animation/Animator;)Z

    move-result v0

    .line 904
    if-nez v0, :cond_27

    .line 906
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alz:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/a;->awr(Landroid/animation/Animator;)Z

    move-result v0

    .line 904
    if-nez v0, :cond_27

    .line 907
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alA:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/a;->awr(Landroid/animation/Animator;)Z

    move-result v0

    .line 904
    if-nez v0, :cond_27

    .line 908
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alB:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/a;->awr(Landroid/animation/Animator;)Z

    move-result v0

    .line 904
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x1

    goto :goto_26
.end method

.method public awx()V
    .registers 3

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/camera/cameraFamily/a;->adv:Z

    if-eqz v0, :cond_5

    .line 392
    return-void

    .line 394
    :cond_5
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alw:Lcom/android/camera/c/c;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/a;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 395
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alp:Lcom/android/camera/cameraFamily/e;

    new-instance v1, Lcom/android/camera/cameraFamily/r;

    invoke-direct {v1, p0}, Lcom/android/camera/cameraFamily/r;-><init>(Lcom/android/camera/cameraFamily/a;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/cameraFamily/e;->axn(Lcom/android/camera/cameraFamily/g;)V

    .line 390
    :cond_19
    return-void
.end method

.method public awy(Lcom/android/camera/cameraFamily/d;)V
    .registers 2

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/camera/cameraFamily/a;->alh:Lcom/android/camera/cameraFamily/d;

    .line 557
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/a;->aws()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 914
    const-string/jumbo v0, "CameraFamilyFragment"

    const-string/jumbo v1, "CameraFamily is Animating. Consume MotionEvent"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const/4 v0, 0x1

    return v0

    .line 917
    :cond_11
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/camera/cameraFamily/a;->adu:Z

    if-eqz v0, :cond_6

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_6
    const v0, 0x7f040016

    .line 129
    const/4 v1, 0x0

    .line 128
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/a;->awp(Landroid/view/View;)V

    .line 131
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/camera/cameraFamily/a;->adu:Z

    if-eqz v0, :cond_8

    .line 180
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroy()V

    .line 181
    return-void

    .line 183
    :cond_8
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alp:Lcom/android/camera/cameraFamily/e;

    invoke-virtual {v0, p0}, Lcom/android/camera/cameraFamily/e;->axp(Lcom/android/camera/cameraFamily/f;)V

    .line 184
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroy()V

    .line 178
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 165
    iget-boolean v0, p0, Lcom/android/camera/cameraFamily/a;->adu:Z

    if-eqz v0, :cond_8

    .line 166
    return-void

    .line 168
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->als:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_1c

    .line 172
    :goto_d
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alp:Lcom/android/camera/cameraFamily/e;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/e;->axo()V

    .line 173
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alq:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 174
    invoke-direct {p0}, Lcom/android/camera/cameraFamily/a;->awe()V

    .line 163
    return-void

    .line 169
    :catch_1c
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_d
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 136
    const-string/jumbo v0, "yuweiwei"

    const-string/jumbo v1, "CameraFamilyFragment onResume"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 138
    iget-boolean v0, p0, Lcom/android/camera/cameraFamily/a;->adu:Z

    if-eqz v0, :cond_11

    .line 139
    return-void

    .line 141
    :cond_11
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alp:Lcom/android/camera/cameraFamily/e;

    new-instance v1, Lcom/android/camera/cameraFamily/o;

    invoke-direct {v1, p0}, Lcom/android/camera/cameraFamily/o;-><init>(Lcom/android/camera/cameraFamily/a;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/cameraFamily/e;->axn(Lcom/android/camera/cameraFamily/g;)V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/cameraFamily/a;->alg:Z

    .line 135
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/android/camera/cameraFamily/a;->alm:Z

    .line 413
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->all:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alw:Lcom/android/camera/c/c;

    invoke-virtual {v0, p1}, Lcom/android/camera/c/c;->setEnabled(Z)V

    .line 415
    iget-object v0, p0, Lcom/android/camera/cameraFamily/a;->alw:Lcom/android/camera/c/c;

    invoke-virtual {v0, p1}, Lcom/android/camera/c/c;->setClickable(Z)V

    .line 411
    return-void
.end method

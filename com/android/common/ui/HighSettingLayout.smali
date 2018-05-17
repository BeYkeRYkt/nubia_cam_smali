.class public Lcom/android/common/ui/HighSettingLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/h;


# static fields
.field public static final xG:I

.field public static final xH:I

.field public static final xI:I

.field public static final xJ:I

.field public static final xK:I


# instance fields
.field private xL:Z

.field private xM:Landroid/view/animation/Animation;

.field private xN:Landroid/view/animation/Animation;

.field private xO:Lcom/android/common/camerastate/a;

.field private xP:I

.field private xQ:I

.field private xR:Ljava/util/List;

.field private xS:Lcom/android/common/ui/d;

.field private xT:I

.field private xU:I

.field private xV:I

.field private xW:Ljava/util/ArrayList;

.field private xX:I

.field private xY:[I

.field private xZ:Lcom/android/common/ui/V;

.field private ya:Landroid/graphics/Rect;

.field private yb:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/16 v0, 0x34

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/HighSettingLayout;->xG:I

    .line 27
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/HighSettingLayout;->xJ:I

    .line 28
    const/16 v0, 0x2d0

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/HighSettingLayout;->xK:I

    .line 32
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/HighSettingLayout;->xI:I

    .line 33
    const/16 v0, 0x23

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/HighSettingLayout;->xH:I

    .line 24
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xO:Lcom/android/common/camerastate/a;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->ya:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xW:Ljava/util/ArrayList;

    .line 77
    iput-boolean v2, p0, Lcom/android/common/ui/HighSettingLayout;->xL:Z

    .line 81
    iput v2, p0, Lcom/android/common/ui/HighSettingLayout;->xT:I

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xY:[I

    .line 487
    iput v2, p0, Lcom/android/common/ui/HighSettingLayout;->xX:I

    .line 90
    new-instance v0, Lcom/android/common/ui/V;

    invoke-direct {v0, p0, p1}, Lcom/android/common/ui/V;-><init>(Lcom/android/common/ui/HighSettingLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xZ:Lcom/android/common/ui/V;

    .line 91
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xZ:Lcom/android/common/ui/V;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/HighSettingLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xR:Ljava/util/List;

    .line 94
    invoke-virtual {p0, v2}, Lcom/android/common/ui/HighSettingLayout;->setWillNotDraw(Z)V

    .line 95
    invoke-direct {p0, p1}, Lcom/android/common/ui/HighSettingLayout;->Cv(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method private CA()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 479
    iget-object v1, p0, Lcom/android/common/ui/HighSettingLayout;->xO:Lcom/android/common/camerastate/a;

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    invoke-static {v0}, Lcom/android/common/h;->apf(Z)V

    .line 480
    invoke-virtual {p0}, Lcom/android/common/ui/HighSettingLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/common/ui/HighSettingLayout;->xL:Z

    if-eqz v0, :cond_1b

    .line 483
    :cond_13
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xO:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/UIState;->afp:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amN(Lcom/android/common/camerastate/UIState;)V

    .line 478
    :goto_1a
    return-void

    .line 480
    :cond_1b
    invoke-virtual {p0}, Lcom/android/common/ui/HighSettingLayout;->Cu()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 481
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xO:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/UIState;->afp:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amO(Lcom/android/common/camerastate/UIState;)V

    goto :goto_1a
.end method

.method private CC(I)V
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->yb:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    .line 320
    if-eq p1, v0, :cond_d

    .line 321
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->yb:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    :cond_d
    return-void
.end method

.method static synthetic CD(Lcom/android/common/ui/HighSettingLayout;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/ui/HighSettingLayout;->xL:Z

    return v0
.end method

.method static synthetic CE(Lcom/android/common/ui/HighSettingLayout;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/HighSettingLayout;->xP:I

    return v0
.end method

.method static synthetic CF(Lcom/android/common/ui/HighSettingLayout;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/HighSettingLayout;->xQ:I

    return v0
.end method

.method static synthetic CG(Lcom/android/common/ui/HighSettingLayout;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xR:Ljava/util/List;

    return-object v0
.end method

.method static synthetic CH(Lcom/android/common/ui/HighSettingLayout;)Lcom/android/common/ui/d;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xS:Lcom/android/common/ui/d;

    return-object v0
.end method

.method static synthetic CI(Lcom/android/common/ui/HighSettingLayout;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/HighSettingLayout;->xT:I

    return v0
.end method

.method static synthetic CJ(Lcom/android/common/ui/HighSettingLayout;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/HighSettingLayout;->xU:I

    return v0
.end method

.method static synthetic CK(Lcom/android/common/ui/HighSettingLayout;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/HighSettingLayout;->xV:I

    return v0
.end method

.method static synthetic CL(Lcom/android/common/ui/HighSettingLayout;)[I
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xY:[I

    return-object v0
.end method

.method static synthetic CM(Lcom/android/common/ui/HighSettingLayout;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->ya:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic CN(Lcom/android/common/ui/HighSettingLayout;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/HighSettingLayout;->xP:I

    return p1
.end method

.method static synthetic CO(Lcom/android/common/ui/HighSettingLayout;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/HighSettingLayout;->xQ:I

    return p1
.end method

.method static synthetic CP(Lcom/android/common/ui/HighSettingLayout;Lcom/android/common/ui/d;)Lcom/android/common/ui/d;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/HighSettingLayout;->xS:Lcom/android/common/ui/d;

    return-object p1
.end method

.method static synthetic CQ(Lcom/android/common/ui/HighSettingLayout;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/HighSettingLayout;->xT:I

    return p1
.end method

.method static synthetic CR(Lcom/android/common/ui/HighSettingLayout;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/HighSettingLayout;->xU:I

    return p1
.end method

.method static synthetic CS(Lcom/android/common/ui/HighSettingLayout;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/HighSettingLayout;->xV:I

    return p1
.end method

.method static synthetic CT(Lcom/android/common/ui/HighSettingLayout;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/common/ui/HighSettingLayout;->Cw()Z

    move-result v0

    return v0
.end method

.method static synthetic CU(Lcom/android/common/ui/HighSettingLayout;IILandroid/graphics/Rect;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/common/ui/HighSettingLayout;->Cz(IILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic CV(Lcom/android/common/ui/HighSettingLayout;Landroid/view/MotionEvent;)Lcom/android/common/ui/d;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/ui/HighSettingLayout;->Cq(Landroid/view/MotionEvent;)Lcom/android/common/ui/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic CW(Lcom/android/common/ui/HighSettingLayout;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/common/ui/HighSettingLayout;->Cs()I

    move-result v0

    return v0
.end method

.method static synthetic CX(Lcom/android/common/ui/HighSettingLayout;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/common/ui/HighSettingLayout;->Ct()I

    move-result v0

    return v0
.end method

.method static synthetic CY(Lcom/android/common/ui/HighSettingLayout;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ui/HighSettingLayout;->Co()V

    return-void
.end method

.method static synthetic CZ(Lcom/android/common/ui/HighSettingLayout;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/ui/HighSettingLayout;->Cx(Z)V

    return-void
.end method

.method private Co()V
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xY:[I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/HighSettingLayout;->getLocationInWindow([I)V

    .line 305
    return-void
.end method

.method private Cp()V
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xM:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 509
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xM:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 510
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xN:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 511
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xN:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 507
    return-void
.end method

.method private Cq(Landroid/view/MotionEvent;)Lcom/android/common/ui/d;
    .registers 9

    .prologue
    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 443
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xR:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 445
    instance-of v4, v0, Lcom/android/common/ui/k;

    if-nez v4, :cond_10

    .line 449
    invoke-virtual {v0}, Lcom/android/common/ui/d;->uv()[F

    move-result-object v4

    .line 450
    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    aget v6, v4, v6

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/common/ui/HighSettingLayout;->Cr(IIFF)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x2

    aget v4, v4, v6

    sub-float v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v5, Lcom/android/common/ui/HighSettingLayout;->xG:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_10

    .line 451
    return-object v0

    .line 454
    :cond_42
    const/4 v0, 0x0

    return-object v0
.end method

.method private Cr(IIFF)I
    .registers 7

    .prologue
    .line 458
    int-to-float v0, p1

    sub-float/2addr v0, p3

    .line 459
    int-to-float v1, p2

    sub-float/2addr v1, p4

    .line 460
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private Cs()I
    .registers 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/common/ui/HighSettingLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method private Ct()I
    .registers 4

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    iget-object v1, p0, Lcom/android/common/ui/HighSettingLayout;->xR:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 209
    instance-of v0, v0, Lcom/android/common/ui/k;

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_19
    move v1, v0

    goto :goto_8

    .line 210
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    goto :goto_19

    .line 212
    :cond_1e
    return v1
.end method

.method private Cv(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 104
    const v0, 0x7f050002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xM:Landroid/view/animation/Animation;

    .line 105
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xM:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/common/ui/be;

    invoke-direct {v1, p0}, Lcom/android/common/ui/be;-><init>(Lcom/android/common/ui/HighSettingLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 117
    const v0, 0x7f050001

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xN:Landroid/view/animation/Animation;

    .line 118
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xN:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/common/ui/bf;

    invoke-direct {v1, p0}, Lcom/android/common/ui/bf;-><init>(Lcom/android/common/ui/HighSettingLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 103
    return-void
.end method

.method private Cw()Z
    .registers 4

    .prologue
    .line 466
    const/4 v1, 0x1

    .line 467
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xR:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 468
    invoke-virtual {v0}, Lcom/android/common/ui/d;->uG()Z

    move-result v0

    if-nez v0, :cond_7

    .line 469
    const/4 v0, 0x0

    .line 473
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method

.method private Cx(Z)V
    .registers 3

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/common/ui/HighSettingLayout;->Cy(ZZ)V

    .line 64
    return-void
.end method

.method private Cy(ZZ)V
    .registers 5

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xW:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/U;

    .line 70
    if-eqz v0, :cond_6

    .line 71
    invoke-interface {v0, p1, p2}, Lcom/android/common/ui/U;->Db(ZZ)V

    goto :goto_6

    .line 68
    :cond_18
    return-void
.end method

.method private Cz(IILandroid/graphics/Rect;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 463
    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-le p1, v1, :cond_12

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-ge p1, v1, :cond_12

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-le p2, v1, :cond_12

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method static synthetic Da(Lcom/android/common/ui/HighSettingLayout;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/ui/HighSettingLayout;->CC(I)V

    return-void
.end method


# virtual methods
.method public CB(Z)V
    .registers 2

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/android/common/ui/HighSettingLayout;->xL:Z

    .line 302
    invoke-direct {p0}, Lcom/android/common/ui/HighSettingLayout;->CA()V

    .line 300
    return-void
.end method

.method public Ce()V
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xZ:Lcom/android/common/ui/V;

    invoke-virtual {v0}, Lcom/android/common/ui/V;->invalidate()V

    .line 220
    return-void
.end method

.method public Cf(Z)V
    .registers 3

    .prologue
    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/common/ui/HighSettingLayout;->Ci(ZZ)V

    .line 228
    return-void
.end method

.method public Cg()V
    .registers 4

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xR:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 499
    invoke-virtual {v0}, Lcom/android/common/ui/d;->uR()V

    .line 500
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/common/ui/d;->ve(Z)V

    .line 501
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/common/ui/d;->vh(Z)V

    goto :goto_6

    .line 503
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xS:Lcom/android/common/ui/d;

    .line 497
    return-void
.end method

.method public Ch(Z)V
    .registers 5

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xR:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 435
    iget-object v2, p0, Lcom/android/common/ui/HighSettingLayout;->xS:Lcom/android/common/ui/d;

    if-eq v0, v2, :cond_6

    .line 436
    invoke-virtual {v0, p1}, Lcom/android/common/ui/d;->vh(Z)V

    goto :goto_6

    .line 433
    :cond_1a
    return-void
.end method

.method public Ci(ZZ)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 238
    if-eqz p1, :cond_19

    .line 239
    invoke-direct {p0}, Lcom/android/common/ui/HighSettingLayout;->Cp()V

    .line 240
    invoke-virtual {p0, v1}, Lcom/android/common/ui/HighSettingLayout;->setVisibility(I)V

    .line 241
    if-eqz p2, :cond_14

    .line 242
    invoke-virtual {p0, v1}, Lcom/android/common/ui/HighSettingLayout;->CB(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xN:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/common/ui/HighSettingLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 237
    :goto_13
    return-void

    .line 245
    :cond_14
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/common/ui/HighSettingLayout;->Cx(Z)V

    goto :goto_13

    .line 248
    :cond_19
    invoke-direct {p0}, Lcom/android/common/ui/HighSettingLayout;->Cp()V

    .line 249
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/common/ui/HighSettingLayout;->setVisibility(I)V

    .line 250
    if-eqz p2, :cond_29

    .line 251
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xM:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/common/ui/HighSettingLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_13

    .line 253
    :cond_29
    invoke-direct {p0, v1, v1}, Lcom/android/common/ui/HighSettingLayout;->Cy(ZZ)V

    goto :goto_13
.end method

.method public Cj(Lcom/android/common/camerastate/a;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/common/ui/HighSettingLayout;->xO:Lcom/android/common/camerastate/a;

    .line 131
    return-void
.end method

.method public Ck(Lcom/android/common/ui/U;)V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xW:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 58
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xW:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_d
    return-void
.end method

.method public Cl(Ljava/util/List;Z)V
    .registers 14

    .prologue
    const/4 v0, 0x0

    .line 158
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    return-void

    .line 159
    :cond_a
    invoke-direct {p0}, Lcom/android/common/ui/HighSettingLayout;->Ct()I

    move-result v2

    .line 161
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0xc8

    div-int v1, v3, v1

    .line 162
    invoke-virtual {p0}, Lcom/android/common/ui/HighSettingLayout;->Cu()Z

    .line 163
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 164
    iget-object v4, p0, Lcom/android/common/ui/HighSettingLayout;->xR:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    move v0, v1

    :goto_33
    move v1, v0

    goto :goto_1e

    .line 165
    :cond_35
    invoke-virtual {p0}, Lcom/android/common/ui/HighSettingLayout;->Cu()Z

    move-result v4

    if-nez v4, :cond_3f

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/common/ui/d;->uZ(Z)V

    .line 166
    :cond_3f
    iget-object v4, p0, Lcom/android/common/ui/HighSettingLayout;->xR:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v0, p0}, Lcom/android/common/ui/d;->vb(Lcom/android/common/ui/HighSettingLayout;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/common/ui/HighSettingLayout;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/common/ui/HighSettingLayout;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/common/ui/HighSettingLayout;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/common/ui/HighSettingLayout;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/common/ui/d;->uK(IIII)V

    .line 170
    instance-of v4, v0, Lcom/android/common/ui/k;

    if-eqz v4, :cond_60

    move v0, v1

    goto :goto_33

    .line 171
    :cond_60
    add-int/lit8 v1, v1, 0x1

    .line 173
    iget v4, p0, Lcom/android/common/ui/HighSettingLayout;->xP:I

    int-to-float v4, v4

    .line 174
    iget v5, p0, Lcom/android/common/ui/HighSettingLayout;->xQ:I

    int-to-float v5, v5

    .line 175
    sget v6, Lcom/android/common/ui/HighSettingLayout;->xK:I

    add-int v7, v2, v1

    sget v8, Lcom/android/common/ui/HighSettingLayout;->xG:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 176
    iget v7, p0, Lcom/android/common/ui/HighSettingLayout;->xU:I

    sget v8, Lcom/android/common/ui/HighSettingLayout;->xJ:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sget v8, Lcom/android/common/ui/HighSettingLayout;->xK:I

    .line 177
    add-int v9, v2, v1

    sget v10, Lcom/android/common/ui/HighSettingLayout;->xG:I

    mul-int/2addr v9, v10

    .line 176
    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/android/common/h;->aps(FF)F

    move-result v7

    .line 172
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/common/ui/d;->uE(FFFF)V

    .line 179
    iget v4, p0, Lcom/android/common/ui/HighSettingLayout;->xX:I

    invoke-virtual {v0, v4}, Lcom/android/common/ui/d;->setOrientation(I)V

    move v0, v1

    goto :goto_33

    .line 157
    :cond_8e
    return-void
.end method

.method public Cm()Z
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xS:Lcom/android/common/ui/d;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public Cn()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 285
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xR:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 286
    invoke-virtual {v0}, Lcom/android/common/ui/d;->uT()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 287
    invoke-virtual {v0, v3}, Lcom/android/common/ui/d;->uV(Z)V

    goto :goto_7

    .line 290
    :cond_1d
    invoke-direct {p0}, Lcom/android/common/ui/HighSettingLayout;->Cs()I

    move-result v0

    if-nez v0, :cond_26

    .line 291
    invoke-virtual {p0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 284
    :cond_26
    return-void
.end method

.method public Cu()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 294
    iget-object v1, p0, Lcom/android/common/ui/HighSettingLayout;->xR:Ljava/util/List;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/common/ui/HighSettingLayout;->xR:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xZ:Lcom/android/common/ui/V;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/V;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 101
    const v0, 0x7f1000f7

    invoke-virtual {p0, v0}, Lcom/android/common/ui/HighSettingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->yb:Landroid/widget/TextView;

    .line 98
    return-void
.end method

.method public setVisibility(I)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 260
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 261
    invoke-direct {p0}, Lcom/android/common/ui/HighSettingLayout;->CA()V

    .line 262
    invoke-virtual {p0}, Lcom/android/common/ui/HighSettingLayout;->Cu()Z

    move-result v0

    if-nez v0, :cond_18

    .line 263
    const-string/jumbo v0, "HighSettingLayout"

    const-string/jumbo v1, "no render preference"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void

    .line 266
    :cond_18
    if-nez p1, :cond_3e

    .line 267
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xc8

    div-int/2addr v2, v0

    .line 268
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xR:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 269
    mul-int v4, v1, v2

    invoke-interface {v0, v4}, Lcom/android/common/ui/T;->uO(I)V

    .line 270
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    .line 273
    :cond_3e
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xR:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 274
    invoke-interface {v0}, Lcom/android/common/ui/T;->uQ()V

    goto :goto_44

    .line 276
    :cond_54
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xS:Lcom/android/common/ui/d;

    if-eqz v0, :cond_63

    .line 277
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xS:Lcom/android/common/ui/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/d;->ve(Z)V

    .line 278
    iput-object v3, p0, Lcom/android/common/ui/HighSettingLayout;->xS:Lcom/android/common/ui/d;

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/common/ui/HighSettingLayout;->Ch(Z)V

    .line 259
    :cond_63
    return-void
.end method

.method public vn(IZ)V
    .registers 6

    .prologue
    .line 491
    div-int/lit8 v0, p1, 0x5a

    iput v0, p0, Lcom/android/common/ui/HighSettingLayout;->xX:I

    .line 492
    iget-object v0, p0, Lcom/android/common/ui/HighSettingLayout;->xR:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 493
    iget v2, p0, Lcom/android/common/ui/HighSettingLayout;->xX:I

    invoke-virtual {v0, v2}, Lcom/android/common/ui/d;->setOrientation(I)V

    goto :goto_a

    .line 495
    :cond_1c
    invoke-virtual {p0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 489
    return-void
.end method

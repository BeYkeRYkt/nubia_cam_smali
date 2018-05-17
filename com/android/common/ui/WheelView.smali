.class public Lcom/android/common/ui/WheelView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final AT:I

.field private final AU:I

.field private final AV:I

.field private AW:I

.field private AX:Landroid/os/Handler;

.field private AY:I

.field private AZ:I

.field BA:[I

.field private BB:I

.field private Ba:Lcom/android/common/appService/W;

.field private Bb:I

.field private Bc:I

.field private Bd:I

.field private Be:[Ljava/lang/CharSequence;

.field Bf:[I

.field private Bg:Z

.field private Bh:I

.field Bi:Z

.field private Bj:Landroid/view/GestureDetector;

.field private Bk:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private Bl:I

.field Bm:Z

.field private Bn:Z

.field private Bo:I

.field private Bp:[I

.field private Bq:Lcom/android/common/ui/ak;

.field private Br:I

.field private Bs:Landroid/graphics/Paint;

.field private Bt:I

.field private Bu:I

.field private Bv:Landroid/widget/Scroller;

.field private Bw:I

.field private Bx:I

.field private By:I

.field private Bz:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xcc

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bx:I

    .line 36
    iput v2, p0, Lcom/android/common/ui/WheelView;->Bc:I

    .line 37
    iput-object v0, p0, Lcom/android/common/ui/WheelView;->Bq:Lcom/android/common/ui/ak;

    .line 41
    iput v2, p0, Lcom/android/common/ui/WheelView;->mState:I

    .line 42
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bz:I

    .line 43
    iput-object v0, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    .line 44
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/WheelView;->AW:I

    .line 45
    iput v2, p0, Lcom/android/common/ui/WheelView;->Bu:I

    .line 46
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bo:I

    .line 47
    iput v2, p0, Lcom/android/common/ui/WheelView;->BB:I

    .line 48
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bw:I

    .line 49
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bh:I

    .line 50
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bt:I

    .line 51
    const/16 v0, 0x30

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bl:I

    .line 52
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bb:I

    .line 53
    iput-boolean v1, p0, Lcom/android/common/ui/WheelView;->Bn:Z

    .line 54
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bd:I

    .line 59
    iput-boolean v1, p0, Lcom/android/common/ui/WheelView;->Bi:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/common/ui/WheelView;->Bm:Z

    .line 63
    iput v1, p0, Lcom/android/common/ui/WheelView;->AV:I

    .line 64
    iput v4, p0, Lcom/android/common/ui/WheelView;->AU:I

    .line 65
    iput-boolean v4, p0, Lcom/android/common/ui/WheelView;->Bg:Z

    .line 67
    const/16 v0, 0xff

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/WheelView;->AT:I

    .line 68
    iput v2, p0, Lcom/android/common/ui/WheelView;->Br:I

    .line 325
    new-instance v0, Lcom/android/common/ui/bk;

    invoke-direct {v0, p0}, Lcom/android/common/ui/bk;-><init>(Lcom/android/common/ui/WheelView;)V

    iput-object v0, p0, Lcom/android/common/ui/WheelView;->Bk:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 359
    iput v1, p0, Lcom/android/common/ui/WheelView;->AZ:I

    .line 360
    iput v1, p0, Lcom/android/common/ui/WheelView;->AY:I

    .line 361
    new-instance v0, Lcom/android/common/ui/bl;

    invoke-direct {v0, p0}, Lcom/android/common/ui/bl;-><init>(Lcom/android/common/ui/WheelView;)V

    iput-object v0, p0, Lcom/android/common/ui/WheelView;->AX:Landroid/os/Handler;

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/WheelView;->Bs:Landroid/graphics/Paint;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0xcc

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v2, p0, Lcom/android/common/ui/WheelView;->Bx:I

    .line 36
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bc:I

    .line 37
    iput-object v0, p0, Lcom/android/common/ui/WheelView;->Bq:Lcom/android/common/ui/ak;

    .line 41
    iput v1, p0, Lcom/android/common/ui/WheelView;->mState:I

    .line 42
    iput v2, p0, Lcom/android/common/ui/WheelView;->Bz:I

    .line 43
    iput-object v0, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    .line 44
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/WheelView;->AW:I

    .line 45
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bu:I

    .line 46
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bo:I

    .line 47
    iput v1, p0, Lcom/android/common/ui/WheelView;->BB:I

    .line 48
    iput v2, p0, Lcom/android/common/ui/WheelView;->Bw:I

    .line 49
    iput v2, p0, Lcom/android/common/ui/WheelView;->Bh:I

    .line 50
    iput v2, p0, Lcom/android/common/ui/WheelView;->Bt:I

    .line 51
    const/16 v0, 0x30

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bl:I

    .line 52
    iput v2, p0, Lcom/android/common/ui/WheelView;->Bb:I

    .line 53
    iput-boolean v2, p0, Lcom/android/common/ui/WheelView;->Bn:Z

    .line 54
    iput v2, p0, Lcom/android/common/ui/WheelView;->Bd:I

    .line 59
    iput-boolean v2, p0, Lcom/android/common/ui/WheelView;->Bi:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/common/ui/WheelView;->Bm:Z

    .line 63
    iput v2, p0, Lcom/android/common/ui/WheelView;->AV:I

    .line 64
    iput v3, p0, Lcom/android/common/ui/WheelView;->AU:I

    .line 65
    iput-boolean v3, p0, Lcom/android/common/ui/WheelView;->Bg:Z

    .line 67
    const/16 v0, 0xff

    invoke-static {v0, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/WheelView;->AT:I

    .line 68
    iput v1, p0, Lcom/android/common/ui/WheelView;->Br:I

    .line 325
    new-instance v0, Lcom/android/common/ui/bk;

    invoke-direct {v0, p0}, Lcom/android/common/ui/bk;-><init>(Lcom/android/common/ui/WheelView;)V

    iput-object v0, p0, Lcom/android/common/ui/WheelView;->Bk:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 359
    iput v2, p0, Lcom/android/common/ui/WheelView;->AZ:I

    .line 360
    iput v2, p0, Lcom/android/common/ui/WheelView;->AY:I

    .line 361
    new-instance v0, Lcom/android/common/ui/bl;

    invoke-direct {v0, p0}, Lcom/android/common/ui/bl;-><init>(Lcom/android/common/ui/WheelView;)V

    iput-object v0, p0, Lcom/android/common/ui/WheelView;->AX:Landroid/os/Handler;

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/common/ui/WheelView;->Bs:Landroid/graphics/Paint;

    .line 78
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/common/ui/WheelView;->Bk:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/common/ui/WheelView;->Bj:Landroid/view/GestureDetector;

    .line 79
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/ui/WheelView;->Bv:Landroid/widget/Scroller;

    .line 81
    sget-object v0, Lcom/android/camera/k;->apm:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_87

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/common/h;->aoT(I)I

    move-result v1

    iput v1, p0, Lcom/android/common/ui/WheelView;->AW:I

    .line 86
    :cond_87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    invoke-virtual {p0}, Lcom/android/common/ui/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bl:I

    .line 88
    new-instance v0, Lcom/android/common/ui/bm;

    invoke-direct {v0, p0}, Lcom/android/common/ui/bm;-><init>(Lcom/android/common/ui/WheelView;)V

    invoke-virtual {p0, v0}, Lcom/android/common/ui/WheelView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xcc

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bx:I

    .line 36
    iput v2, p0, Lcom/android/common/ui/WheelView;->Bc:I

    .line 37
    iput-object v0, p0, Lcom/android/common/ui/WheelView;->Bq:Lcom/android/common/ui/ak;

    .line 41
    iput v2, p0, Lcom/android/common/ui/WheelView;->mState:I

    .line 42
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bz:I

    .line 43
    iput-object v0, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    .line 44
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/WheelView;->AW:I

    .line 45
    iput v2, p0, Lcom/android/common/ui/WheelView;->Bu:I

    .line 46
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bo:I

    .line 47
    iput v2, p0, Lcom/android/common/ui/WheelView;->BB:I

    .line 48
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bw:I

    .line 49
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bh:I

    .line 50
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bt:I

    .line 51
    const/16 v0, 0x30

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bl:I

    .line 52
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bb:I

    .line 53
    iput-boolean v1, p0, Lcom/android/common/ui/WheelView;->Bn:Z

    .line 54
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bd:I

    .line 59
    iput-boolean v1, p0, Lcom/android/common/ui/WheelView;->Bi:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/common/ui/WheelView;->Bm:Z

    .line 63
    iput v1, p0, Lcom/android/common/ui/WheelView;->AV:I

    .line 64
    iput v4, p0, Lcom/android/common/ui/WheelView;->AU:I

    .line 65
    iput-boolean v4, p0, Lcom/android/common/ui/WheelView;->Bg:Z

    .line 67
    const/16 v0, 0xff

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/WheelView;->AT:I

    .line 68
    iput v2, p0, Lcom/android/common/ui/WheelView;->Br:I

    .line 325
    new-instance v0, Lcom/android/common/ui/bk;

    invoke-direct {v0, p0}, Lcom/android/common/ui/bk;-><init>(Lcom/android/common/ui/WheelView;)V

    iput-object v0, p0, Lcom/android/common/ui/WheelView;->Bk:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 359
    iput v1, p0, Lcom/android/common/ui/WheelView;->AZ:I

    .line 360
    iput v1, p0, Lcom/android/common/ui/WheelView;->AY:I

    .line 361
    new-instance v0, Lcom/android/common/ui/bl;

    invoke-direct {v0, p0}, Lcom/android/common/ui/bl;-><init>(Lcom/android/common/ui/WheelView;)V

    iput-object v0, p0, Lcom/android/common/ui/WheelView;->AX:Landroid/os/Handler;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/WheelView;->Bs:Landroid/graphics/Paint;

    .line 70
    return-void
.end method

.method static synthetic FA(Lcom/android/common/ui/WheelView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ui/WheelView;->Fj()V

    return-void
.end method

.method static synthetic FB(Lcom/android/common/ui/WheelView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ui/WheelView;->Fo()V

    return-void
.end method

.method static synthetic FC(Lcom/android/common/ui/WheelView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ui/WheelView;->Fq()V

    return-void
.end method

.method static synthetic FD(Lcom/android/common/ui/WheelView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/ui/WheelView;->Fs(I)V

    return-void
.end method

.method private Fj()V
    .registers 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/common/ui/WheelView;->AX:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object v0, p0, Lcom/android/common/ui/WheelView;->AX:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    return-void
.end method

.method private Fk(Landroid/content/res/Resources;I)[I
    .registers 11

    .prologue
    const v7, 0x3dcccccd    # 0.1f

    .line 442
    const v0, 0x7f0c0021

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 443
    const v0, 0x7f0c0022

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 444
    const v0, 0x7f0c0023

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 445
    new-array v4, p2, [I

    .line 446
    const/4 v0, 0x0

    :goto_1b
    if-ge v0, p2, :cond_40

    .line 447
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_31

    add-int/lit8 v5, v0, 0x1

    int-to-float v5, v5

    int-to-float v6, p2

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_36

    .line 448
    :cond_31
    aput v1, v4, v0

    .line 446
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 449
    :cond_36
    div-int/lit8 v5, p2, 0x2

    if-ne v0, v5, :cond_3d

    .line 450
    aput v3, v4, v0

    goto :goto_33

    .line 452
    :cond_3d
    aput v2, v4, v0

    goto :goto_33

    .line 455
    :cond_40
    return-object v4
.end method

.method private Fl(Landroid/content/res/Resources;I)[I
    .registers 10

    .prologue
    .line 427
    const v0, 0x7f0d0037

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 428
    const v0, 0x7f0d0045

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 429
    sub-int v0, v2, v1

    int-to-float v0, v0

    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    div-float v3, v0, v3

    .line 430
    new-array v4, p2, [I

    .line 431
    const/4 v0, 0x0

    :goto_19
    div-int/lit8 v5, p2, 0x2

    if-ge v0, v5, :cond_27

    .line 432
    int-to-float v5, v1

    int-to-float v6, v0

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, v4, v0

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 434
    :cond_27
    div-int/lit8 v0, p2, 0x2

    aput v2, v4, v0

    .line 435
    div-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_2f
    if-ge v0, p2, :cond_3b

    .line 436
    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v0

    aget v1, v4, v1

    aput v1, v4, v0

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 438
    :cond_3b
    return-object v4
.end method

.method private Fm(Landroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .registers 5

    .prologue
    .line 162
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/android/common/ui/WheelView;->Bs:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 164
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 165
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private Fn(I)V
    .registers 5

    .prologue
    .line 169
    iget v0, p0, Lcom/android/common/ui/WheelView;->AW:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/common/ui/WheelView;->Bo:I

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bu:I

    .line 170
    iget v0, p0, Lcom/android/common/ui/WheelView;->Bu:I

    iget-object v1, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    array-length v1, v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/WheelView;->BB:I

    .line 171
    iget v0, p0, Lcom/android/common/ui/WheelView;->Bu:I

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x0

    iget v1, p0, Lcom/android/common/ui/WheelView;->AW:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bw:I

    .line 172
    iget v0, p0, Lcom/android/common/ui/WheelView;->Bu:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/common/ui/WheelView;->AW:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bh:I

    .line 173
    const-string/jumbo v0, "WheelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "row length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/ui/WheelView;->Bu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/ui/WheelView;->Bw:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; end = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/ui/WheelView;->Bh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private Fo()V
    .registers 3

    .prologue
    .line 344
    iget v0, p0, Lcom/android/common/ui/WheelView;->AY:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/WheelView;->Fr(II)V

    .line 345
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/common/ui/WheelView;->Fs(I)V

    .line 343
    return-void
.end method

.method private Fp()V
    .registers 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/common/ui/WheelView;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_a

    .line 422
    iget-object v0, p0, Lcom/android/common/ui/WheelView;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 420
    :cond_a
    return-void
.end method

.method private Fq()V
    .registers 2

    .prologue
    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bu:I

    .line 460
    iget v0, p0, Lcom/android/common/ui/WheelView;->Bc:I

    iput v0, p0, Lcom/android/common/ui/WheelView;->Br:I

    .line 461
    invoke-virtual {p0}, Lcom/android/common/ui/WheelView;->postInvalidate()V

    .line 458
    return-void
.end method

.method private Fs(I)V
    .registers 4

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/common/ui/WheelView;->AX:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 350
    iget-object v0, p0, Lcom/android/common/ui/WheelView;->AX:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    iget-object v0, p0, Lcom/android/common/ui/WheelView;->AX:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 348
    return-void
.end method

.method static synthetic Ft(Lcom/android/common/ui/WheelView;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/WheelView;->AZ:I

    return v0
.end method

.method static synthetic Fu(Lcom/android/common/ui/WheelView;)Lcom/android/common/ui/ak;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/WheelView;->Bq:Lcom/android/common/ui/ak;

    return-object v0
.end method

.method static synthetic Fv(Lcom/android/common/ui/WheelView;)Landroid/widget/Scroller;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/WheelView;->Bv:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic Fw(Lcom/android/common/ui/WheelView;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/WheelView;->AZ:I

    return p1
.end method

.method static synthetic Fx(Lcom/android/common/ui/WheelView;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/WheelView;->Bx:I

    return p1
.end method

.method static synthetic Fy(Lcom/android/common/ui/WheelView;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/WheelView;->By:I

    return p1
.end method

.method static synthetic Fz(Lcom/android/common/ui/WheelView;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/WheelView;->Bz:I

    return p1
.end method


# virtual methods
.method public Fi(I)V
    .registers 4

    .prologue
    .line 129
    iput p1, p0, Lcom/android/common/ui/WheelView;->Bo:I

    .line 130
    invoke-virtual {p0}, Lcom/android/common/ui/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/common/ui/WheelView;->Bo:I

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/WheelView;->Fk(Landroid/content/res/Resources;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/WheelView;->BA:[I

    .line 131
    invoke-virtual {p0}, Lcom/android/common/ui/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/common/ui/WheelView;->Bo:I

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/WheelView;->Fl(Landroid/content/res/Resources;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/WheelView;->Bf:[I

    .line 132
    invoke-direct {p0}, Lcom/android/common/ui/WheelView;->Fq()V

    .line 128
    return-void
.end method

.method public Fr(II)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 399
    iget-object v0, p0, Lcom/android/common/ui/WheelView;->Bv:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 400
    iget v0, p0, Lcom/android/common/ui/WheelView;->Bt:I

    iget v2, p0, Lcom/android/common/ui/WheelView;->BB:I

    rem-int/2addr v0, v2

    iget v2, p0, Lcom/android/common/ui/WheelView;->BB:I

    add-int/2addr v0, v2

    .line 401
    iget v2, p0, Lcom/android/common/ui/WheelView;->BB:I

    .line 400
    rem-int/2addr v0, v2

    add-int/2addr v0, p1

    .line 402
    if-lez v0, :cond_40

    .line 403
    iget v2, p0, Lcom/android/common/ui/WheelView;->Bu:I

    rem-int v2, v0, v2

    iget v3, p0, Lcom/android/common/ui/WheelView;->Bu:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_39

    .line 404
    iget v2, p0, Lcom/android/common/ui/WheelView;->Bu:I

    iget v3, p0, Lcom/android/common/ui/WheelView;->Bu:I

    rem-int/2addr v0, v3

    sub-int v0, v2, v0

    add-int/2addr v0, p1

    move v2, v0

    .line 415
    :goto_28
    iput v1, p0, Lcom/android/common/ui/WheelView;->AZ:I

    .line 416
    iget-object v0, p0, Lcom/android/common/ui/WheelView;->Bv:Landroid/widget/Scroller;

    neg-int v3, v2

    if-eqz p2, :cond_64

    move v5, p2

    :goto_30
    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 417
    invoke-direct {p0, v1}, Lcom/android/common/ui/WheelView;->Fs(I)V

    .line 398
    return-void

    .line 406
    :cond_39
    iget v2, p0, Lcom/android/common/ui/WheelView;->Bu:I

    rem-int/2addr v0, v2

    sub-int v0, p1, v0

    move v2, v0

    goto :goto_28

    .line 408
    :cond_40
    iget v2, p0, Lcom/android/common/ui/WheelView;->Bu:I

    rem-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/common/ui/WheelView;->Bu:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_5d

    .line 409
    iget v2, p0, Lcom/android/common/ui/WheelView;->Bu:I

    iget v3, p0, Lcom/android/common/ui/WheelView;->Bu:I

    rem-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v0, v2, v0

    sub-int v0, p1, v0

    move v2, v0

    goto :goto_28

    .line 411
    :cond_5d
    iget v2, p0, Lcom/android/common/ui/WheelView;->Bu:I

    rem-int/2addr v0, v2

    sub-int v0, p1, v0

    move v2, v0

    goto :goto_28

    .line 416
    :cond_64
    const/16 v5, 0x190

    goto :goto_30
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .prologue
    const/4 v10, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    if-nez v0, :cond_14

    .line 179
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 180
    const-string/jumbo v0, "WheelView"

    const-string/jumbo v1, "There is no text to draw in WheelView"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void

    .line 183
    :cond_14
    iget v0, p0, Lcom/android/common/ui/WheelView;->Bu:I

    if-ne v0, v4, :cond_27

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bb:I

    .line 185
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/WheelView;->Fn(I)V

    .line 188
    :cond_27
    iget v0, p0, Lcom/android/common/ui/WheelView;->Br:I

    if-eq v0, v4, :cond_5c

    .line 189
    iget v0, p0, Lcom/android/common/ui/WheelView;->Br:I

    iget v2, p0, Lcom/android/common/ui/WheelView;->Bo:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    array-length v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    array-length v2, v2

    rem-int/2addr v0, v2

    .line 190
    iget v2, p0, Lcom/android/common/ui/WheelView;->Bo:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    array-length v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/android/common/ui/WheelView;->Bc:I

    .line 191
    neg-int v0, v0

    iget v2, p0, Lcom/android/common/ui/WheelView;->Bu:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bt:I

    .line 192
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bx:I

    .line 193
    iput v4, p0, Lcom/android/common/ui/WheelView;->Br:I

    .line 194
    iput v1, p0, Lcom/android/common/ui/WheelView;->AZ:I

    .line 195
    iput v1, p0, Lcom/android/common/ui/WheelView;->AY:I

    .line 196
    iget-object v0, p0, Lcom/android/common/ui/WheelView;->Bv:Landroid/widget/Scroller;

    invoke-virtual {v0, v10}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 200
    :cond_5c
    iget v0, p0, Lcom/android/common/ui/WheelView;->Bt:I

    iget v2, p0, Lcom/android/common/ui/WheelView;->BB:I

    rem-int/2addr v0, v2

    iget v2, p0, Lcom/android/common/ui/WheelView;->BB:I

    add-int/2addr v0, v2

    .line 201
    iget v2, p0, Lcom/android/common/ui/WheelView;->BB:I

    .line 200
    rem-int/2addr v0, v2

    .line 201
    iget v2, p0, Lcom/android/common/ui/WheelView;->Bx:I

    .line 200
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bt:I

    .line 202
    iget v0, p0, Lcom/android/common/ui/WheelView;->Bt:I

    iget v2, p0, Lcom/android/common/ui/WheelView;->Bu:I

    div-int/2addr v0, v2

    rsub-int/lit8 v0, v0, 0x0

    .line 203
    iget v2, p0, Lcom/android/common/ui/WheelView;->Bt:I

    iget v3, p0, Lcom/android/common/ui/WheelView;->Bu:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/common/ui/WheelView;->Bw:I

    add-int/2addr v2, v3

    .line 204
    iget-object v3, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    array-length v3, v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    array-length v3, v3

    rem-int v5, v0, v3

    .line 206
    iget v0, p0, Lcom/android/common/ui/WheelView;->Bu:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    .line 207
    iget v3, p0, Lcom/android/common/ui/WheelView;->Bu:I

    iget v4, p0, Lcom/android/common/ui/WheelView;->Bo:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/common/ui/WheelView;->Bw:I

    add-int/2addr v3, v4

    if-le v0, v3, :cond_a0

    .line 208
    iget v3, p0, Lcom/android/common/ui/WheelView;->Bw:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/android/common/ui/WheelView;->Bu:I

    iget v4, p0, Lcom/android/common/ui/WheelView;->Bo:I

    mul-int/2addr v3, v4

    rem-int/2addr v0, v3

    iget v3, p0, Lcom/android/common/ui/WheelView;->Bw:I

    add-int/2addr v0, v3

    .line 210
    :cond_a0
    iget v3, p0, Lcom/android/common/ui/WheelView;->Bu:I

    div-int v6, v0, v3

    move v0, v1

    move v1, v2

    .line 215
    :goto_a6
    iget v2, p0, Lcom/android/common/ui/WheelView;->Bo:I

    if-ge v0, v2, :cond_1df

    .line 216
    add-int v2, v5, v0

    iget-object v3, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    array-length v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    array-length v3, v3

    rem-int/2addr v2, v3

    .line 217
    iget-object v3, p0, Lcom/android/common/ui/WheelView;->Bp:[I

    aget v3, v3, v2

    if-nez v3, :cond_1c5

    .line 218
    add-int v3, v6, v0

    iget v4, p0, Lcom/android/common/ui/WheelView;->Bo:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/common/ui/WheelView;->Bo:I

    rem-int/2addr v3, v4

    .line 219
    iget-object v4, p0, Lcom/android/common/ui/WheelView;->Bs:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/common/ui/WheelView;->Bf:[I

    aget v3, v7, v3

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 224
    :goto_cc
    iget v3, p0, Lcom/android/common/ui/WheelView;->Bu:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/common/ui/WheelView;->Bs:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    aget-object v7, v7, v2

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 226
    iget v4, p0, Lcom/android/common/ui/WheelView;->Bu:I

    iget v7, p0, Lcom/android/common/ui/WheelView;->Bo:I

    mul-int/2addr v4, v7

    iget v7, p0, Lcom/android/common/ui/WheelView;->Bw:I

    add-int/2addr v4, v7

    if-le v3, v4, :cond_f8

    .line 227
    iget v3, p0, Lcom/android/common/ui/WheelView;->Bo:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    array-length v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    array-length v3, v3

    rem-int/2addr v2, v3

    .line 230
    :cond_f8
    iget v3, p0, Lcom/android/common/ui/WheelView;->Bu:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/common/ui/WheelView;->Bs:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    aget-object v7, v7, v2

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 231
    iget v4, p0, Lcom/android/common/ui/WheelView;->Bu:I

    iget v7, p0, Lcom/android/common/ui/WheelView;->Bo:I

    mul-int/2addr v4, v7

    iget v7, p0, Lcom/android/common/ui/WheelView;->Bw:I

    add-int/2addr v4, v7

    if-le v3, v4, :cond_125

    .line 232
    iget v4, p0, Lcom/android/common/ui/WheelView;->Bw:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/common/ui/WheelView;->Bu:I

    iget v7, p0, Lcom/android/common/ui/WheelView;->Bo:I

    mul-int/2addr v4, v7

    rem-int/2addr v3, v4

    iget v4, p0, Lcom/android/common/ui/WheelView;->Bw:I

    add-int/2addr v3, v4

    .line 235
    :cond_125
    iget v4, p0, Lcom/android/common/ui/WheelView;->Bw:I

    sub-int v4, v3, v4

    iget-object v7, p0, Lcom/android/common/ui/WheelView;->Bs:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    aget-object v8, v8, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    iget v7, p0, Lcom/android/common/ui/WheelView;->Bu:I

    div-int/2addr v4, v7

    .line 236
    iget v7, p0, Lcom/android/common/ui/WheelView;->Bo:I

    add-int/2addr v4, v7

    iget v7, p0, Lcom/android/common/ui/WheelView;->Bo:I

    rem-int/2addr v4, v7

    .line 239
    iget v7, p0, Lcom/android/common/ui/WheelView;->Bo:I

    div-int/lit8 v7, v7, 0x2

    if-ne v4, v7, :cond_16e

    iget v7, p0, Lcom/android/common/ui/WheelView;->Bc:I

    if-eq v2, v7, :cond_16e

    .line 240
    iput v2, p0, Lcom/android/common/ui/WheelView;->Bc:I

    .line 241
    iget-object v7, p0, Lcom/android/common/ui/WheelView;->Ba:Lcom/android/common/appService/W;

    if-eqz v7, :cond_15b

    .line 242
    iget-object v7, p0, Lcom/android/common/ui/WheelView;->Ba:Lcom/android/common/appService/W;

    invoke-virtual {v7}, Lcom/android/common/appService/W;->qf()V

    .line 243
    iput-boolean v10, p0, Lcom/android/common/ui/WheelView;->Bn:Z

    .line 245
    :cond_15b
    iget-object v7, p0, Lcom/android/common/ui/WheelView;->Bq:Lcom/android/common/ui/ak;

    if-eqz v7, :cond_16e

    .line 246
    iget-object v7, p0, Lcom/android/common/ui/WheelView;->Bq:Lcom/android/common/ui/ak;

    iget-object v8, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    iget v9, p0, Lcom/android/common/ui/WheelView;->Bc:I

    aget-object v8, v8, v9

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, p0, v8}, Lcom/android/common/ui/ak;->FF(Lcom/android/common/ui/WheelView;Ljava/lang/String;)V

    .line 249
    :cond_16e
    iget v7, p0, Lcom/android/common/ui/WheelView;->Bo:I

    div-int/lit8 v7, v7, 0x2

    if-ne v4, v7, :cond_1d1

    iget-boolean v7, p0, Lcom/android/common/ui/WheelView;->Bm:Z

    if-eqz v7, :cond_1d1

    if-nez v2, :cond_1d1

    .line 250
    iget-object v7, p0, Lcom/android/common/ui/WheelView;->Bs:Landroid/graphics/Paint;

    iget v8, p0, Lcom/android/common/ui/WheelView;->Bl:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 254
    :goto_182
    iget-object v7, p0, Lcom/android/common/ui/WheelView;->Bp:[I

    iget-object v8, p0, Lcom/android/common/ui/WheelView;->Bf:[I

    aget v8, v8, v4

    aput v8, v7, v2

    .line 256
    iget-boolean v7, p0, Lcom/android/common/ui/WheelView;->Bg:Z

    if-eqz v7, :cond_1dc

    .line 257
    iget-object v7, p0, Lcom/android/common/ui/WheelView;->BA:[I

    aget v4, v7, v4

    .line 261
    :goto_192
    iget-object v7, p0, Lcom/android/common/ui/WheelView;->Bs:Landroid/graphics/Paint;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    iget-object v4, p0, Lcom/android/common/ui/WheelView;->Be:[Ljava/lang/CharSequence;

    aget-object v2, v4, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    int-to-float v3, v3

    .line 265
    iget-object v4, p0, Lcom/android/common/ui/WheelView;->Bs:Landroid/graphics/Paint;

    invoke-direct {p0, v4, p1}, Lcom/android/common/ui/WheelView;->Fm(Landroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v4

    int-to-float v4, v4

    .line 266
    iget-object v7, p0, Lcom/android/common/ui/WheelView;->Bs:Landroid/graphics/Paint;

    .line 263
    invoke-virtual {p1, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 268
    iget v2, p0, Lcom/android/common/ui/WheelView;->Bu:I

    add-int/2addr v1, v2

    .line 269
    iget v2, p0, Lcom/android/common/ui/WheelView;->Bw:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/ui/WheelView;->Bu:I

    iget v3, p0, Lcom/android/common/ui/WheelView;->Bo:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/ui/WheelView;->Bu:I

    iget v3, p0, Lcom/android/common/ui/WheelView;->Bo:I

    mul-int/2addr v2, v3

    rem-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/ui/WheelView;->Bw:I

    add-int/2addr v1, v2

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a6

    .line 221
    :cond_1c5
    iget-object v3, p0, Lcom/android/common/ui/WheelView;->Bs:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/common/ui/WheelView;->Bp:[I

    aget v4, v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_cc

    .line 252
    :cond_1d1
    iget-object v7, p0, Lcom/android/common/ui/WheelView;->Bs:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/android/common/ui/WheelView;->Bf:[I

    aget v8, v8, v4

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_182

    .line 259
    :cond_1dc
    iget v4, p0, Lcom/android/common/ui/WheelView;->AT:I

    goto :goto_192

    .line 177
    :cond_1df
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 275
    iget-boolean v0, p0, Lcom/android/common/ui/WheelView;->Bg:Z

    if-nez v0, :cond_b

    .line 276
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 277
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_f4

    .line 311
    const-string/jumbo v0, "WheelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/android/common/ui/WheelView;->Bj:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_5c

    .line 315
    iget-boolean v0, p0, Lcom/android/common/ui/WheelView;->Bn:Z

    if-eqz v0, :cond_5c

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/common/ui/WheelView;->By:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bx:I

    .line 317
    iget v0, p0, Lcom/android/common/ui/WheelView;->Bx:I

    iput v0, p0, Lcom/android/common/ui/WheelView;->AY:I

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/common/ui/WheelView;->By:I

    .line 319
    invoke-direct {p0}, Lcom/android/common/ui/WheelView;->Fo()V

    .line 322
    :cond_5c
    return v3

    .line 279
    :pswitch_5d
    iput-boolean v1, p0, Lcom/android/common/ui/WheelView;->Bn:Z

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/common/ui/WheelView;->By:I

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bd:I

    .line 282
    iput v1, p0, Lcom/android/common/ui/WheelView;->Bx:I

    .line 283
    invoke-direct {p0}, Lcom/android/common/ui/WheelView;->Fj()V

    .line 284
    invoke-virtual {p0}, Lcom/android/common/ui/WheelView;->invalidate()V

    goto :goto_32

    .line 288
    :pswitch_76
    invoke-direct {p0}, Lcom/android/common/ui/WheelView;->Fp()V

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/common/ui/WheelView;->By:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/WheelView;->Bx:I

    .line 290
    iget v0, p0, Lcom/android/common/ui/WheelView;->Bx:I

    iput v0, p0, Lcom/android/common/ui/WheelView;->AY:I

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/common/ui/WheelView;->By:I

    .line 292
    iget v0, p0, Lcom/android/common/ui/WheelView;->Bd:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/common/ui/WheelView;->Bu:I

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a5

    .line 293
    iput-boolean v3, p0, Lcom/android/common/ui/WheelView;->Bn:Z

    .line 295
    :cond_a5
    invoke-virtual {p0}, Lcom/android/common/ui/WheelView;->invalidate()V

    goto :goto_32

    .line 298
    :pswitch_a9
    const-string/jumbo v0, "WheelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/common/ui/WheelView;->By:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/WheelView;->AY:I

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/common/ui/WheelView;->By:I

    .line 301
    invoke-direct {p0}, Lcom/android/common/ui/WheelView;->Fo()V

    goto/16 :goto_32

    .line 304
    :pswitch_dd
    iget-boolean v0, p0, Lcom/android/common/ui/WheelView;->Bn:Z

    if-nez v0, :cond_32

    .line 305
    iget v0, p0, Lcom/android/common/ui/WheelView;->Bb:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/WheelView;->AY:I

    .line 306
    iget v0, p0, Lcom/android/common/ui/WheelView;->Bb:I

    iput v0, p0, Lcom/android/common/ui/WheelView;->By:I

    .line 307
    invoke-direct {p0}, Lcom/android/common/ui/WheelView;->Fo()V

    goto/16 :goto_32

    .line 277
    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_dd
        :pswitch_76
        :pswitch_a9
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .registers 2

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/common/ui/WheelView;->Bg:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/common/ui/WheelView;->postInvalidate()V

    .line 156
    return-void
.end method

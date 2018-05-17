.class public Lcom/android/common/ui/nubiaWheelView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final rI:Lcom/android/common/ui/q;


# instance fields
.field height:I

.field private mValue:I

.field private rA:I

.field private rB:I

.field private rC:Landroid/graphics/Paint;

.field private rD:I

.field rE:[F

.field rF:[F

.field rG:[F

.field private rH:Z

.field private final rb:I

.field private final rc:I

.field private rd:Landroid/os/Handler;

.field private final re:I

.field private rf:Lcom/android/common/appService/W;

.field private rg:I

.field private rh:I

.field private ri:[Ljava/lang/String;

.field private rj:[I

.field private rk:Landroid/widget/Scroller;

.field private rl:Lcom/android/common/ui/p;

.field private rm:Landroid/view/GestureDetector;

.field private rn:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private ro:I

.field private rp:I

.field private rq:I

.field private rr:I

.field private rs:I

.field private rt:I

.field private ru:Lcom/android/common/ui/o;

.field private rv:Landroid/graphics/Paint;

.field private rw:I

.field private final rx:Landroid/util/SparseArray;

.field private final ry:[I

.field private rz:I

.field width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 518
    new-instance v0, Lcom/android/common/ui/q;

    invoke-direct {v0}, Lcom/android/common/ui/q;-><init>()V

    sput-object v0, Lcom/android/common/ui/nubiaWheelView;->rI:Lcom/android/common/ui/q;

    .line 27
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x7

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rv:Landroid/graphics/Paint;

    .line 36
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->ry:[I

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rx:Landroid/util/SparseArray;

    .line 43
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->ro:I

    .line 51
    iput v2, p0, Lcom/android/common/ui/nubiaWheelView;->rc:I

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->rb:I

    .line 53
    iput v2, p0, Lcom/android/common/ui/nubiaWheelView;->rp:I

    .line 54
    iput v2, p0, Lcom/android/common/ui/nubiaWheelView;->rh:I

    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_7c

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rj:[I

    .line 63
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rF:[F

    .line 64
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rG:[F

    .line 65
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rE:[F

    .line 67
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->width:I

    .line 68
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->height:I

    .line 99
    new-instance v0, Lcom/android/common/ui/at;

    invoke-direct {v0, p0}, Lcom/android/common/ui/at;-><init>(Lcom/android/common/ui/nubiaWheelView;)V

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rn:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 227
    new-instance v0, Lcom/android/common/ui/au;

    invoke-direct {v0, p0}, Lcom/android/common/ui/au;-><init>(Lcom/android/common/ui/nubiaWheelView;)V

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rd:Landroid/os/Handler;

    .line 72
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->re:I

    .line 70
    return-void

    .line 60
    nop

    :array_7c
    .array-data 4
        0x23
        0x41
        0x64
        0x96
        0xff
        0x96
        0x64
        0x41
        0x23
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x7

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rv:Landroid/graphics/Paint;

    .line 36
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->ry:[I

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rx:Landroid/util/SparseArray;

    .line 43
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->ro:I

    .line 51
    iput v2, p0, Lcom/android/common/ui/nubiaWheelView;->rc:I

    .line 52
    iput v3, p0, Lcom/android/common/ui/nubiaWheelView;->rb:I

    .line 53
    iput v2, p0, Lcom/android/common/ui/nubiaWheelView;->rp:I

    .line 54
    iput v2, p0, Lcom/android/common/ui/nubiaWheelView;->rh:I

    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_be

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rj:[I

    .line 63
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rF:[F

    .line 64
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rG:[F

    .line 65
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rE:[F

    .line 67
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->width:I

    .line 68
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->height:I

    .line 99
    new-instance v0, Lcom/android/common/ui/at;

    invoke-direct {v0, p0}, Lcom/android/common/ui/at;-><init>(Lcom/android/common/ui/nubiaWheelView;)V

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rn:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 227
    new-instance v0, Lcom/android/common/ui/au;

    invoke-direct {v0, p0}, Lcom/android/common/ui/au;-><init>(Lcom/android/common/ui/nubiaWheelView;)V

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rd:Landroid/os/Handler;

    .line 77
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/common/ui/nubiaWheelView;->rn:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rm:Landroid/view/GestureDetector;

    .line 78
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rk:Landroid/widget/Scroller;

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rC:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rC:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rv:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rv:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rv:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->rD:I

    .line 88
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->re:I

    .line 75
    return-void

    .line 60
    :array_be
    .array-data 4
        0x23
        0x41
        0x64
        0x96
        0xff
        0x96
        0x64
        0x41
        0x23
    .end array-data
.end method

.method static synthetic wA(Lcom/android/common/ui/nubiaWheelView;)Landroid/widget/Scroller;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rk:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic wB(Lcom/android/common/ui/nubiaWheelView;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rp:I

    return v0
.end method

.method static synthetic wC(Lcom/android/common/ui/nubiaWheelView;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/nubiaWheelView;->rp:I

    return p1
.end method

.method static synthetic wD(Lcom/android/common/ui/nubiaWheelView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/ui/nubiaWheelView;->wl(I)V

    return-void
.end method

.method static synthetic wE(Lcom/android/common/ui/nubiaWheelView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ui/nubiaWheelView;->wt()V

    return-void
.end method

.method static synthetic wF(Lcom/android/common/ui/nubiaWheelView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/ui/nubiaWheelView;->wx(I)V

    return-void
.end method

.method private wi()V
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rd:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 275
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rd:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    return-void
.end method

.method private wj([I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 331
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-lez v0, :cond_f

    .line 332
    add-int/lit8 v1, v0, -0x1

    aget v1, p1, v1

    aput v1, p1, v0

    .line 331
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 334
    :cond_f
    const/4 v0, 0x1

    aget v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    .line 335
    iget-boolean v1, p0, Lcom/android/common/ui/nubiaWheelView;->rH:Z

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    if-ge v0, v1, :cond_1e

    .line 336
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    .line 338
    :cond_1e
    aput v0, p1, v2

    .line 339
    invoke-direct {p0, v0}, Lcom/android/common/ui/nubiaWheelView;->wk(I)V

    .line 340
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rf:Lcom/android/common/appService/W;

    if-eqz v0, :cond_2c

    .line 341
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rf:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qf()V

    .line 330
    :cond_2c
    return-void
.end method

.method private wk(I)V
    .registers 5

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/common/ui/nubiaWheelView;->rx:Landroid/util/SparseArray;

    .line 150
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    if-eqz v0, :cond_b

    .line 152
    return-void

    .line 154
    :cond_b
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    if-lt p1, v0, :cond_13

    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    if-le p1, v0, :cond_1a

    .line 155
    :cond_13
    const-string/jumbo v0, ""

    .line 164
    :goto_16
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    return-void

    .line 157
    :cond_1a
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->ri:[Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 158
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    sub-int v0, p1, v0

    .line 159
    iget-object v2, p0, Lcom/android/common/ui/nubiaWheelView;->ri:[Ljava/lang/String;

    aget-object v0, v2, v0

    goto :goto_16

    .line 161
    :cond_27
    invoke-direct {p0, p1}, Lcom/android/common/ui/nubiaWheelView;->wm(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method private wl(I)V
    .registers 11

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 112
    if-lez p1, :cond_15

    .line 113
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rk:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 117
    :goto_11
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->invalidate()V

    .line 111
    return-void

    .line 115
    :cond_15
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rk:Landroid/widget/Scroller;

    const/high16 v7, -0x80000000

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_11
.end method

.method private wm(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rl:Lcom/android/common/ui/p;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rl:Lcom/android/common/ui/p;

    invoke-interface {v0, p1}, Lcom/android/common/ui/p;->wH(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private wo(I)I
    .registers 6

    .prologue
    .line 128
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    if-le p1, v0, :cond_14

    .line 129
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    iget v3, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 130
    :cond_14
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    if-ge p1, v0, :cond_27

    .line 131
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    iget v3, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 133
    :cond_27
    return p1
.end method

.method private wp([I)V
    .registers 4

    .prologue
    .line 316
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_f

    .line 317
    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    aput v1, p1, v0

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    :cond_f
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 320
    iget-boolean v1, p0, Lcom/android/common/ui/nubiaWheelView;->rH:Z

    if-eqz v1, :cond_20

    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    if-le v0, v1, :cond_20

    .line 321
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    .line 323
    :cond_20
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 324
    invoke-direct {p0, v0}, Lcom/android/common/ui/nubiaWheelView;->wk(I)V

    .line 325
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rf:Lcom/android/common/appService/W;

    if-eqz v0, :cond_31

    .line 326
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rf:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qf()V

    .line 315
    :cond_31
    return-void
.end method

.method private wq()V
    .registers 3

    .prologue
    .line 494
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/common/ui/nubiaWheelView;->setVerticalFadingEdgeEnabled(Z)V

    .line 495
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rD:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/common/ui/nubiaWheelView;->setFadingEdgeLength(I)V

    .line 493
    return-void
.end method

.method private wr()V
    .registers 5

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/android/common/ui/nubiaWheelView;->ws()V

    .line 472
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->ry:[I

    .line 473
    array-length v1, v0

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->rD:I

    mul-int/2addr v1, v2

    .line 474
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v1, v2, v1

    int-to-float v1, v1

    .line 475
    array-length v0, v0

    int-to-float v0, v0

    .line 476
    div-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/common/ui/nubiaWheelView;->rz:I

    .line 477
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rD:I

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->rz:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/common/ui/nubiaWheelView;->rw:I

    .line 478
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    div-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->ro:I

    .line 479
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->ro:I

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    .line 480
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rw:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->rs:I

    .line 481
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rw:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->rr:I

    .line 482
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->wn()V

    .line 470
    return-void
.end method

.method private ws()V
    .registers 6

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rx:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 169
    iget-object v2, p0, Lcom/android/common/ui/nubiaWheelView;->ry:[I

    .line 170
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->wg()I

    move-result v3

    .line 171
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/android/common/ui/nubiaWheelView;->ry:[I

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 172
    add-int/lit8 v1, v0, -0x3

    add-int/2addr v1, v3

    .line 173
    iget-boolean v4, p0, Lcom/android/common/ui/nubiaWheelView;->rH:Z

    if-eqz v4, :cond_1c

    .line 174
    invoke-direct {p0, v1}, Lcom/android/common/ui/nubiaWheelView;->wo(I)I

    move-result v1

    .line 176
    :cond_1c
    aput v1, v2, v0

    .line 177
    aget v1, v2, v0

    invoke-direct {p0, v1}, Lcom/android/common/ui/nubiaWheelView;->wk(I)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 167
    :cond_26
    return-void
.end method

.method private wt()V
    .registers 3

    .prologue
    .line 263
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rh:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wv(II)V

    .line 264
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/common/ui/nubiaWheelView;->wx(I)V

    .line 262
    return-void
.end method

.method private wu()V
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->ru:Lcom/android/common/ui/o;

    if-eqz v0, :cond_9

    .line 347
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->ru:Lcom/android/common/ui/o;

    invoke-interface {v0}, Lcom/android/common/ui/o;->wG()V

    .line 345
    :cond_9
    return-void
.end method

.method private wx(I)V
    .registers 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rd:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 269
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rd:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rd:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    return-void
.end method

.method private wy(IZ)V
    .registers 5

    .prologue
    .line 356
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->mValue:I

    if-ne v0, p1, :cond_5

    .line 357
    return-void

    .line 359
    :cond_5
    iget-boolean v0, p0, Lcom/android/common/ui/nubiaWheelView;->rH:Z

    if-eqz v0, :cond_18

    .line 360
    invoke-direct {p0, p1}, Lcom/android/common/ui/nubiaWheelView;->wo(I)I

    move-result v0

    .line 365
    :goto_d
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->mValue:I

    .line 366
    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->mValue:I

    .line 370
    invoke-direct {p0}, Lcom/android/common/ui/nubiaWheelView;->ws()V

    .line 371
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->invalidate()V

    .line 355
    return-void

    .line 362
    :cond_18
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 363
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_d
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .prologue
    const/16 v5, 0x88

    const/16 v6, 0xd

    const/4 v1, 0x0

    .line 438
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    .line 440
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getRight()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rs:I

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 441
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rr:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 442
    iget-object v2, p0, Lcom/android/common/ui/nubiaWheelView;->ry:[I

    .line 443
    const/4 v0, 0x0

    move v1, v0

    :goto_33
    array-length v0, v2

    if-ge v1, v0, :cond_68

    .line 444
    aget v0, v2, v1

    .line 445
    iget-object v3, p0, Lcom/android/common/ui/nubiaWheelView;->rv:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/common/ui/nubiaWheelView;->rG:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 446
    iget-object v3, p0, Lcom/android/common/ui/nubiaWheelView;->rv:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/common/ui/nubiaWheelView;->rF:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 447
    iget-object v3, p0, Lcom/android/common/ui/nubiaWheelView;->rv:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/common/ui/nubiaWheelView;->rj:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 448
    iget-object v3, p0, Lcom/android/common/ui/nubiaWheelView;->rx:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 450
    iget-object v3, p0, Lcom/android/common/ui/nubiaWheelView;->rE:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/android/common/ui/nubiaWheelView;->rv:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 443
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_33

    .line 437
    :cond_68
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .prologue
    .line 462
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 463
    if-eqz p1, :cond_b

    .line 464
    invoke-direct {p0}, Lcom/android/common/ui/nubiaWheelView;->wr()V

    .line 465
    invoke-direct {p0}, Lcom/android/common/ui/nubiaWheelView;->wq()V

    .line 461
    :cond_b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .prologue
    .line 456
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->width:I

    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/nubiaWheelView;->setMeasuredDimension(II)V

    .line 455
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_72

    .line 304
    :goto_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->rB:I

    .line 305
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rm:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_38

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rB:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->rA:I

    .line 307
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rA:I

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->rh:I

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->rB:I

    .line 309
    invoke-direct {p0}, Lcom/android/common/ui/nubiaWheelView;->wt()V

    .line 312
    :cond_38
    return v2

    .line 283
    :pswitch_39
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rk:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 284
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rk:Landroid/widget/Scroller;

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 285
    invoke-direct {p0}, Lcom/android/common/ui/nubiaWheelView;->wi()V

    .line 286
    return v2

    .line 288
    :cond_4a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->rB:I

    .line 289
    iput v3, p0, Lcom/android/common/ui/nubiaWheelView;->rA:I

    .line 290
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->invalidate()V

    goto :goto_b

    .line 293
    :pswitch_57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rB:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->rA:I

    .line 294
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rA:I

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->rh:I

    .line 295
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rA:I

    invoke-virtual {p0, v3, v0}, Lcom/android/common/ui/nubiaWheelView;->ww(II)V

    .line 296
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->invalidate()V

    goto :goto_b

    .line 300
    :pswitch_6e
    invoke-direct {p0}, Lcom/android/common/ui/nubiaWheelView;->wu()V

    goto :goto_b

    .line 281
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_39
        :pswitch_6e
        :pswitch_57
        :pswitch_6e
    .end packed-switch
.end method

.method public wa(I)V
    .registers 2

    .prologue
    .line 92
    iput p1, p0, Lcom/android/common/ui/nubiaWheelView;->width:I

    .line 91
    return-void
.end method

.method public wb(I)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 182
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    if-ne v1, p1, :cond_6

    .line 183
    return-void

    .line 185
    :cond_6
    if-gez p1, :cond_11

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_11
    iput p1, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    .line 189
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->mValue:I

    if-le v1, v2, :cond_1d

    .line 190
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    iput v1, p0, Lcom/android/common/ui/nubiaWheelView;->mValue:I

    .line 192
    :cond_1d
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/common/ui/nubiaWheelView;->ry:[I

    array-length v2, v2

    if-le v1, v2, :cond_28

    const/4 v0, 0x1

    .line 193
    :cond_28
    invoke-virtual {p0, v0}, Lcom/android/common/ui/nubiaWheelView;->wz(Z)V

    .line 194
    invoke-direct {p0}, Lcom/android/common/ui/nubiaWheelView;->ws()V

    .line 195
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->invalidate()V

    .line 181
    return-void
.end method

.method public wc(I)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 199
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    if-ne v1, p1, :cond_6

    .line 200
    return-void

    .line 202
    :cond_6
    if-gez p1, :cond_11

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_11
    iput p1, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    .line 206
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->mValue:I

    if-ge v1, v2, :cond_1d

    .line 207
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    iput v1, p0, Lcom/android/common/ui/nubiaWheelView;->mValue:I

    .line 209
    :cond_1d
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/common/ui/nubiaWheelView;->ry:[I

    array-length v2, v2

    if-le v1, v2, :cond_28

    const/4 v0, 0x1

    .line 210
    :cond_28
    invoke-virtual {p0, v0}, Lcom/android/common/ui/nubiaWheelView;->wz(Z)V

    .line 211
    invoke-direct {p0}, Lcom/android/common/ui/nubiaWheelView;->ws()V

    .line 212
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->invalidate()V

    .line 198
    return-void
.end method

.method public wd(Lcom/android/common/ui/o;)V
    .registers 2

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/common/ui/nubiaWheelView;->ru:Lcom/android/common/ui/o;

    .line 498
    return-void
.end method

.method public we()I
    .registers 2

    .prologue
    .line 486
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rs:I

    return v0
.end method

.method public wf()I
    .registers 2

    .prologue
    .line 490
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rr:I

    return v0
.end method

.method public wg()I
    .registers 2

    .prologue
    .line 216
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->mValue:I

    return v0
.end method

.method public wh(I)V
    .registers 3

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/common/ui/nubiaWheelView;->wy(IZ)V

    .line 351
    return-void
.end method

.method public wn()V
    .registers 15

    .prologue
    .line 418
    const v0, 0x3fc90fdb

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v0, v2, v0

    double-to-float v2, v0

    .line 419
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rw:I

    mul-int/lit8 v0, v0, 0x6

    int-to-float v3, v0

    .line 420
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rw:I

    mul-int/lit8 v0, v0, 0x3

    int-to-float v4, v0

    .line 421
    iget-object v5, p0, Lcom/android/common/ui/nubiaWheelView;->ry:[I

    .line 422
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    int-to-float v1, v0

    .line 423
    const/4 v0, 0x0

    :goto_1c
    array-length v6, v5

    if-ge v0, v6, :cond_91

    .line 424
    const v6, 0x40490fdb    # (float)Math.PI

    iget v7, p0, Lcom/android/common/ui/nubiaWheelView;->ro:I

    int-to-float v7, v7

    sub-float v7, v1, v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v3

    add-float/2addr v6, v2

    .line 425
    iget-object v7, p0, Lcom/android/common/ui/nubiaWheelView;->rG:[F

    iget v8, p0, Lcom/android/common/ui/nubiaWheelView;->rD:I

    int-to-double v8, v8

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v7, v0

    .line 426
    iget-object v7, p0, Lcom/android/common/ui/nubiaWheelView;->rG:[F

    aget v7, v7, v0

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_46

    .line 428
    iget-object v7, p0, Lcom/android/common/ui/nubiaWheelView;->rG:[F

    const/4 v8, 0x0

    aput v8, v7, v0

    .line 430
    :cond_46
    iget-object v7, p0, Lcom/android/common/ui/nubiaWheelView;->rE:[F

    iget v8, p0, Lcom/android/common/ui/nubiaWheelView;->ro:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    float-to-double v8, v8

    float-to-double v10, v6

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    float-to-double v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iget-object v10, p0, Lcom/android/common/ui/nubiaWheelView;->rG:[F

    aget v10, v10, v0

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    float-to-double v10, v10

    add-double/2addr v8, v10

    iget v10, p0, Lcom/android/common/ui/nubiaWheelView;->re:I

    int-to-double v10, v10

    sub-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v7, v0

    .line 431
    iget-object v7, p0, Lcom/android/common/ui/nubiaWheelView;->rF:[F

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    const-wide v10, 0x3fe999999999999aL    # 0.8

    add-double/2addr v8, v10

    double-to-float v6, v8

    iget v8, p0, Lcom/android/common/ui/nubiaWheelView;->rD:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/common/ui/nubiaWheelView;->rG:[F

    aget v9, v9, v0

    div-float/2addr v8, v9

    mul-float/2addr v6, v8

    aput v6, v7, v0

    .line 432
    iget v6, p0, Lcom/android/common/ui/nubiaWheelView;->rw:I

    int-to-float v6, v6

    add-float/2addr v1, v6

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 415
    :cond_91
    return-void
.end method

.method public wv(II)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rk:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 249
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->ro:I

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    sub-int v4, v0, v2

    .line 250
    if-eqz v4, :cond_2d

    .line 251
    iput v1, p0, Lcom/android/common/ui/nubiaWheelView;->rp:I

    .line 252
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->rw:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_21

    .line 253
    if-lez v4, :cond_2e

    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rw:I

    neg-int v0, v0

    :goto_20
    add-int/2addr v4, v0

    .line 255
    :cond_21
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->rk:Landroid/widget/Scroller;

    const/16 v5, 0x190

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 256
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->invalidate()V

    .line 259
    :cond_2d
    return-void

    .line 253
    :cond_2e
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rw:I

    goto :goto_20
.end method

.method public ww(II)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 376
    iget-object v0, p0, Lcom/android/common/ui/nubiaWheelView;->ry:[I

    .line 377
    iget-boolean v1, p0, Lcom/android/common/ui/nubiaWheelView;->rH:Z

    if-nez v1, :cond_15

    if-lez p2, :cond_15

    .line 378
    aget v1, v0, v4

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    if-gt v1, v2, :cond_15

    .line 379
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->ro:I

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    .line 380
    return-void

    .line 382
    :cond_15
    iget-boolean v1, p0, Lcom/android/common/ui/nubiaWheelView;->rH:Z

    if-nez v1, :cond_26

    if-gez p2, :cond_26

    .line 383
    aget v1, v0, v4

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    if-lt v1, v2, :cond_26

    .line 384
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->ro:I

    iput v0, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    .line 385
    return-void

    .line 387
    :cond_26
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    .line 388
    :cond_2b
    :goto_2b
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->ro:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->rz:I

    if-le v1, v2, :cond_b4

    .line 389
    const-string/jumbo v1, "jyzhou"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dec scrollUpdate mCurrentScrollOffset ,mInitialScrollOffset= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/common/ui/nubiaWheelView;->ro:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->rw:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    .line 391
    const-string/jumbo v1, "jyzhou"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dec 1 middle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-direct {p0, v0}, Lcom/android/common/ui/nubiaWheelView;->wj([I)V

    .line 393
    const-string/jumbo v1, "jyzhou"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dec 2 middle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    aget v1, v0, v4

    invoke-direct {p0, v1, v5}, Lcom/android/common/ui/nubiaWheelView;->wy(IZ)V

    .line 395
    iget-boolean v1, p0, Lcom/android/common/ui/nubiaWheelView;->rH:Z

    if-nez v1, :cond_2b

    aget v1, v0, v4

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    if-gt v1, v2, :cond_2b

    .line 396
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->ro:I

    iput v1, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    goto/16 :goto_2b

    .line 400
    :cond_b4
    :goto_b4
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->ro:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->rz:I

    neg-int v2, v2

    if-ge v1, v2, :cond_13e

    .line 401
    const-string/jumbo v1, "jyzhou"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inc scrollUpdate mCurrentScrollOffset ,mInitialScrollOffset= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/common/ui/nubiaWheelView;->ro:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->rw:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    .line 403
    const-string/jumbo v1, "jyzhou"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inc 1 middle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-direct {p0, v0}, Lcom/android/common/ui/nubiaWheelView;->wp([I)V

    .line 405
    const-string/jumbo v1, "jyzhou"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inc 2 middle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    aget v1, v0, v4

    invoke-direct {p0, v1, v5}, Lcom/android/common/ui/nubiaWheelView;->wy(IZ)V

    .line 407
    iget-boolean v1, p0, Lcom/android/common/ui/nubiaWheelView;->rH:Z

    if-nez v1, :cond_b4

    aget v1, v0, v4

    iget v2, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    if-lt v1, v2, :cond_b4

    .line 408
    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->ro:I

    iput v1, p0, Lcom/android/common/ui/nubiaWheelView;->rg:I

    goto/16 :goto_b4

    .line 411
    :cond_13e
    invoke-virtual {p0}, Lcom/android/common/ui/nubiaWheelView;->wn()V

    .line 374
    return-void
.end method

.method public wz(Z)V
    .registers 4

    .prologue
    .line 121
    iget v0, p0, Lcom/android/common/ui/nubiaWheelView;->rq:I

    iget v1, p0, Lcom/android/common/ui/nubiaWheelView;->rt:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/common/ui/nubiaWheelView;->ry:[I

    array-length v1, v1

    if-lt v0, v1, :cond_16

    const/4 v0, 0x1

    .line 122
    :goto_b
    if-eqz p1, :cond_f

    if-eqz v0, :cond_15

    :cond_f
    iget-boolean v0, p0, Lcom/android/common/ui/nubiaWheelView;->rH:Z

    if-eq p1, v0, :cond_15

    .line 123
    iput-boolean p1, p0, Lcom/android/common/ui/nubiaWheelView;->rH:Z

    .line 120
    :cond_15
    return-void

    .line 121
    :cond_16
    const/4 v0, 0x0

    goto :goto_b
.end method

.class public Lcom/android/ui/ScaleLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private bcf:I

.field private bcg:I

.field private bch:I

.field private bci:I

.field private bcj:F

.field private bck:F

.field private bcl:F

.field private bcm:I

.field private bcn:Landroid/graphics/PointF;

.field private bco:I

.field private bcp:I

.field private bcq:F

.field private bcr:F

.field private bcs:Landroid/widget/RelativeLayout;

.field private bct:I

.field private bcu:I

.field private bcv:F

.field private bcw:I

.field private bcx:I

.field private bcy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcp:I

    .line 24
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcx:I

    .line 25
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcy:I

    .line 28
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcw:I

    .line 29
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcm:I

    .line 31
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bcj:F

    .line 34
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bct:I

    .line 35
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcu:I

    .line 38
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bch:I

    .line 39
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bci:I

    .line 42
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    .line 43
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcf:I

    .line 46
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bck:F

    .line 47
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bcl:F

    .line 49
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bcq:F

    .line 50
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bcr:F

    .line 51
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bco:I

    .line 54
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bcv:F

    .line 56
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/ui/ScaleLayout;->bcn:Landroid/graphics/PointF;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ui/ScaleLayout;->bcs:Landroid/widget/RelativeLayout;

    .line 62
    invoke-direct {p0}, Lcom/android/ui/ScaleLayout;->btv()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcp:I

    .line 24
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcx:I

    .line 25
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcy:I

    .line 28
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcw:I

    .line 29
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcm:I

    .line 31
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bcj:F

    .line 34
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bct:I

    .line 35
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcu:I

    .line 38
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bch:I

    .line 39
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bci:I

    .line 42
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    .line 43
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcf:I

    .line 46
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bck:F

    .line 47
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bcl:F

    .line 49
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bcq:F

    .line 50
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bcr:F

    .line 51
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bco:I

    .line 54
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bcv:F

    .line 56
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/ui/ScaleLayout;->bcn:Landroid/graphics/PointF;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ui/ScaleLayout;->bcs:Landroid/widget/RelativeLayout;

    .line 67
    invoke-direct {p0}, Lcom/android/ui/ScaleLayout;->btv()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcp:I

    .line 24
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcx:I

    .line 25
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcy:I

    .line 28
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcw:I

    .line 29
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcm:I

    .line 31
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bcj:F

    .line 34
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bct:I

    .line 35
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcu:I

    .line 38
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bch:I

    .line 39
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bci:I

    .line 42
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    .line 43
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcf:I

    .line 46
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bck:F

    .line 47
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bcl:F

    .line 49
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bcq:F

    .line 50
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bcr:F

    .line 51
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bco:I

    .line 54
    iput v1, p0, Lcom/android/ui/ScaleLayout;->bcv:F

    .line 56
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/ui/ScaleLayout;->bcn:Landroid/graphics/PointF;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ui/ScaleLayout;->bcs:Landroid/widget/RelativeLayout;

    .line 72
    invoke-direct {p0}, Lcom/android/ui/ScaleLayout;->btv()V

    .line 70
    return-void
.end method

.method private btA()V
    .registers 7

    .prologue
    .line 122
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 123
    iget-object v1, p0, Lcom/android/ui/ScaleLayout;->bcs:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 122
    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget v1, p0, Lcom/android/ui/ScaleLayout;->bch:I

    iget v2, p0, Lcom/android/ui/ScaleLayout;->bci:I

    iget v3, p0, Lcom/android/ui/ScaleLayout;->bcw:I

    iget v4, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/ui/ScaleLayout;->bch:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/ui/ScaleLayout;->bcm:I

    iget v5, p0, Lcom/android/ui/ScaleLayout;->bcf:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/ui/ScaleLayout;->bci:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 125
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 127
    iget-object v0, p0, Lcom/android/ui/ScaleLayout;->bcs:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    return-void
.end method

.method private btB()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/ui/ScaleLayout;->bcs:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 113
    iget v1, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 114
    iget v1, p0, Lcom/android/ui/ScaleLayout;->bcf:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    iget-object v1, p0, Lcom/android/ui/ScaleLayout;->bcs:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    return-void
.end method

.method private btC()V
    .registers 7

    .prologue
    .line 144
    const-string/jumbo v0, "ScaleLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLayoutPoint mX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; mY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/ui/ScaleLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget v1, p0, Lcom/android/ui/ScaleLayout;->bcx:I

    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcy:I

    iget v3, p0, Lcom/android/ui/ScaleLayout;->bcx:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/ui/ScaleLayout;->bcy:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 147
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 149
    invoke-virtual {p0, v1}, Lcom/android/ui/ScaleLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-void
.end method

.method private btD(Landroid/view/MotionEvent;)F
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 294
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 295
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method private btE()V
    .registers 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/ui/ScaleLayout;->btw()V

    .line 205
    invoke-direct {p0}, Lcom/android/ui/ScaleLayout;->btx()V

    .line 206
    invoke-direct {p0}, Lcom/android/ui/ScaleLayout;->btA()V

    .line 203
    return-void
.end method

.method private btv()V
    .registers 4

    .prologue
    .line 76
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcw:I

    .line 77
    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcm:I

    .line 78
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bcm:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/ui/ScaleLayout;->bcw:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcj:F

    .line 79
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bcw:I

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcx:I

    .line 80
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bcm:I

    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcy:I

    .line 81
    const-string/jumbo v0, "ScaleLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init mWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcw:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    const-string/jumbo v2, "; mFScale = "

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcj:F

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private btw()V
    .registers 4

    .prologue
    .line 275
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bch:I

    iget v1, p0, Lcom/android/ui/ScaleLayout;->bct:I

    if-le v0, v1, :cond_b

    .line 276
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bct:I

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bch:I

    .line 274
    :cond_a
    :goto_a
    return-void

    .line 277
    :cond_b
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bch:I

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v1

    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/ui/ScaleLayout;->bct:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_a

    .line 278
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v0

    iget v1, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/ui/ScaleLayout;->bct:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bch:I

    goto :goto_a
.end method

.method private btx()V
    .registers 4

    .prologue
    .line 284
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bci:I

    iget v1, p0, Lcom/android/ui/ScaleLayout;->bcu:I

    if-le v0, v1, :cond_b

    .line 285
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bcu:I

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bci:I

    .line 283
    :cond_a
    :goto_a
    return-void

    .line 286
    :cond_b
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bci:I

    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v1

    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcf:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcu:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_a

    .line 287
    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v0

    iget v1, p0, Lcom/android/ui/ScaleLayout;->bcf:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/ui/ScaleLayout;->bcu:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bci:I

    goto :goto_a
.end method

.method private bty(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 300
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 301
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v1, v2

    .line 302
    new-instance v2, Landroid/graphics/PointF;

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private btz()V
    .registers 5

    .prologue
    .line 176
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    .line 177
    iget v1, p0, Lcom/android/ui/ScaleLayout;->bcf:I

    .line 178
    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    iget v3, p0, Lcom/android/ui/ScaleLayout;->bcp:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    .line 179
    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    iget v3, p0, Lcom/android/ui/ScaleLayout;->bcw:I

    if-le v2, v3, :cond_42

    .line 180
    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcw:I

    iput v2, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    .line 184
    :cond_15
    :goto_15
    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/ui/ScaleLayout;->bcj:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/ui/ScaleLayout;->bcf:I

    .line 185
    invoke-direct {p0}, Lcom/android/ui/ScaleLayout;->btB()V

    .line 187
    iget v2, p0, Lcom/android/ui/ScaleLayout;->bch:I

    iget v3, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bch:I

    .line 188
    invoke-direct {p0}, Lcom/android/ui/ScaleLayout;->btw()V

    .line 189
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bci:I

    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcf:I

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bci:I

    .line 190
    invoke-direct {p0}, Lcom/android/ui/ScaleLayout;->btx()V

    .line 191
    invoke-direct {p0}, Lcom/android/ui/ScaleLayout;->btA()V

    .line 175
    return-void

    .line 181
    :cond_42
    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v3

    if-ge v2, v3, :cond_15

    .line 182
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v2

    iput v2, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    goto :goto_15
.end method


# virtual methods
.method public bto()F
    .registers 3

    .prologue
    .line 310
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public btp()F
    .registers 3

    .prologue
    .line 325
    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/ui/ScaleLayout;->bcf:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public btq()I
    .registers 3

    .prologue
    .line 318
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bct:I

    iget v1, p0, Lcom/android/ui/ScaleLayout;->bch:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/ui/ScaleLayout;->bto()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public btr()I
    .registers 3

    .prologue
    .line 333
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bcu:I

    iget v1, p0, Lcom/android/ui/ScaleLayout;->bci:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/ui/ScaleLayout;->btp()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public bts(Landroid/view/MotionEvent;)V
    .registers 11

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_158

    .line 210
    :cond_e
    :goto_e
    :pswitch_e
    return-void

    .line 213
    :pswitch_f
    const-string/jumbo v0, "ScaleLayout"

    const-string/jumbo v1, "MotionEvent.ACTION_DOWN"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string/jumbo v0, "ScaleLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getActionIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bck:F

    .line 216
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcl:F

    .line 217
    const-string/jumbo v0, "ScaleLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFirstX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ui/ScaleLayout;->bck:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; mFirstY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcl:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 220
    :pswitch_6c
    const-string/jumbo v0, "ScaleLayout"

    const-string/jumbo v1, "MotionEvent.ACTION_UP"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 223
    :pswitch_76
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcq:F

    .line 224
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcr:F

    .line 225
    invoke-direct {p0, p1}, Lcom/android/ui/ScaleLayout;->btD(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcv:F

    .line 226
    invoke-direct {p0, p1}, Lcom/android/ui/ScaleLayout;->bty(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ui/ScaleLayout;->bcn:Landroid/graphics/PointF;

    .line 227
    const-string/jumbo v0, "ScaleLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MotionEvent.ACTION_POINTER_1_DOWN mSecondX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcq:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    const-string/jumbo v2, "; mSecondY = "

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcr:F

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    const-string/jumbo v2, "; mSpacing = "

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcv:F

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 231
    :pswitch_c6
    const-string/jumbo v0, "ScaleLayout"

    const-string/jumbo v1, "MotionEvent.ACTION_POINTER_1_UP"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 235
    :pswitch_d1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v5, :cond_e

    .line 236
    invoke-direct {p0, p1}, Lcom/android/ui/ScaleLayout;->btD(Landroid/view/MotionEvent;)F

    move-result v0

    .line 237
    iget v1, p0, Lcom/android/ui/ScaleLayout;->bcv:F

    sub-float v1, v0, v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/ui/ScaleLayout;->bcp:I

    .line 238
    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcv:F

    .line 243
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v1, p0, Lcom/android/ui/ScaleLayout;->bck:F

    sub-float/2addr v0, v1

    .line 244
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v2, p0, Lcom/android/ui/ScaleLayout;->bcl:F

    sub-float/2addr v1, v2

    .line 245
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v3, p0, Lcom/android/ui/ScaleLayout;->bcq:F

    sub-float/2addr v2, v3

    .line 246
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lcom/android/ui/ScaleLayout;->bcr:F

    sub-float/2addr v3, v4

    .line 247
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/android/ui/ScaleLayout;->bck:F

    .line 248
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lcom/android/ui/ScaleLayout;->bcl:F

    .line 249
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/android/ui/ScaleLayout;->bcq:F

    .line 250
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lcom/android/ui/ScaleLayout;->bcr:F

    .line 252
    mul-float/2addr v2, v0

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_123

    mul-float v2, v1, v3

    cmpg-float v2, v2, v6

    if-gez v2, :cond_133

    .line 253
    :cond_123
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bcp:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_12e

    .line 254
    return-void

    .line 255
    :cond_12e
    invoke-direct {p0}, Lcom/android/ui/ScaleLayout;->btz()V

    goto/16 :goto_e

    .line 258
    :cond_133
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_144

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_144

    .line 259
    return-void

    .line 261
    :cond_144
    iget v2, p0, Lcom/android/ui/ScaleLayout;->bch:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bch:I

    .line 262
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bci:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bci:I

    .line 263
    invoke-direct {p0}, Lcom/android/ui/ScaleLayout;->btE()V

    goto/16 :goto_e

    .line 211
    nop

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_f
        :pswitch_6c
        :pswitch_d1
        :pswitch_e
        :pswitch_e
        :pswitch_76
        :pswitch_c6
    .end packed-switch
.end method

.method public btt()F
    .registers 3

    .prologue
    .line 199
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    int-to-float v0, v0

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public btu()V
    .registers 3

    .prologue
    .line 97
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v0

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    .line 98
    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v0

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcf:I

    .line 99
    invoke-direct {p0}, Lcom/android/ui/ScaleLayout;->btB()V

    .line 100
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bcw:I

    iget v1, p0, Lcom/android/ui/ScaleLayout;->bcg:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bct:I

    .line 101
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bcm:I

    iget v1, p0, Lcom/android/ui/ScaleLayout;->bcf:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bcu:I

    .line 102
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bct:I

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bch:I

    .line 103
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bcu:I

    iput v0, p0, Lcom/android/ui/ScaleLayout;->bci:I

    .line 104
    invoke-direct {p0}, Lcom/android/ui/ScaleLayout;->btA()V

    .line 96
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 88
    const v0, 0x7f100082

    invoke-virtual {p0, v0}, Lcom/android/ui/ScaleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/ui/ScaleLayout;->bcs:Landroid/widget/RelativeLayout;

    .line 89
    invoke-direct {p0}, Lcom/android/ui/ScaleLayout;->btC()V

    .line 90
    invoke-virtual {p0}, Lcom/android/ui/ScaleLayout;->btu()V

    .line 86
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 136
    iget v0, p0, Lcom/android/ui/ScaleLayout;->bcw:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 137
    iget v1, p0, Lcom/android/ui/ScaleLayout;->bcm:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 135
    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 134
    return-void
.end method

.class public Lcom/android/common/ui/ApertureBladeView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private BC:Lcom/android/common/ui/al;

.field private BD:Landroid/graphics/Bitmap;

.field private BE:I

.field private BF:Landroid/graphics/Bitmap;

.field private BG:I

.field private BH:I

.field private BI:F

.field private BJ:F

.field private BK:F

.field private BL:Landroid/graphics/Paint;

.field private BM:Landroid/graphics/Path;

.field private BN:[Landroid/graphics/PointF;

.field private BO:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/high16 v2, 0x40a00000    # 5.0f

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/android/common/ui/ApertureBladeView;->BJ:F

    .line 36
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/common/ui/ApertureBladeView;->BK:F

    .line 37
    iput v2, p0, Lcom/android/common/ui/ApertureBladeView;->BI:F

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    .line 51
    const-string/jumbo v0, "ApertureView"

    const-string/jumbo v1, "txh new ApertureView"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/android/camera/k;->ape:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/common/ui/ApertureBladeView;->BO:I

    .line 54
    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/common/ui/ApertureBladeView;->BG:I

    .line 55
    const/4 v1, 0x1

    const v2, 0xffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/common/ui/ApertureBladeView;->BE:I

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-direct {p0}, Lcom/android/common/ui/ApertureBladeView;->FM()V

    .line 49
    return-void
.end method

.method private FL()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    iget v0, p0, Lcom/android/common/ui/ApertureBladeView;->BH:I

    iget v1, p0, Lcom/android/common/ui/ApertureBladeView;->BO:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_16

    .line 130
    const-string/jumbo v0, "ApertureView"

    const-string/jumbo v1, "the size of view is too small and Space is too large"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void

    .line 133
    :cond_16
    iget v0, p0, Lcom/android/common/ui/ApertureBladeView;->BJ:F

    iget v1, p0, Lcom/android/common/ui/ApertureBladeView;->BK:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/ApertureBladeView;->BI:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/ApertureBladeView;->BJ:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/ApertureBladeView;->BH:I

    iget v2, p0, Lcom/android/common/ui/ApertureBladeView;->BO:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 134
    iget-object v1, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v1, v1, v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 135
    iget-object v1, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v1, v1, v3

    const v2, 0x3f5db3d0

    mul-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 136
    iget-object v1, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v1, v1, v4

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 137
    iget-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v0, v0, v4

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 138
    iget-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 139
    iget-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 140
    iget-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 141
    iget-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 142
    iget-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 143
    iget-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 144
    iget-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 145
    iget-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 128
    return-void
.end method

.method private FM()V
    .registers 5

    .prologue
    const/4 v3, 0x6

    .line 61
    invoke-virtual {p0}, Lcom/android/common/ui/ApertureBladeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020003

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BF:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {p0}, Lcom/android/common/ui/ApertureBladeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020004

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BD:Landroid/graphics/Bitmap;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BL:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BL:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    const/4 v0, 0x0

    :goto_29
    if-ge v0, v3, :cond_37

    .line 66
    iget-object v1, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 68
    :cond_37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BM:Landroid/graphics/Path;

    .line 60
    return-void
.end method


# virtual methods
.method public FG(I)V
    .registers 6

    .prologue
    .line 194
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/ApertureBladeView;->BJ:F

    iget v2, p0, Lcom/android/common/ui/ApertureBladeView;->BK:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/ApertureBladeView;->BK:F

    add-float/2addr v0, v1

    .line 195
    const-string/jumbo v1, "ApertureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "txh progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", apert = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/common/ui/ApertureBladeView;->FJ(F)V

    .line 193
    return-void
.end method

.method public FH(F)V
    .registers 2

    .prologue
    .line 161
    iput p1, p0, Lcom/android/common/ui/ApertureBladeView;->BJ:F

    .line 160
    return-void
.end method

.method public FI(F)V
    .registers 2

    .prologue
    .line 165
    iput p1, p0, Lcom/android/common/ui/ApertureBladeView;->BK:F

    .line 164
    return-void
.end method

.method public FJ(F)V
    .registers 3

    .prologue
    .line 173
    iget v0, p0, Lcom/android/common/ui/ApertureBladeView;->BJ:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    .line 174
    iget p1, p0, Lcom/android/common/ui/ApertureBladeView;->BJ:F

    .line 176
    :cond_8
    iget v0, p0, Lcom/android/common/ui/ApertureBladeView;->BK:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    .line 177
    iget p1, p0, Lcom/android/common/ui/ApertureBladeView;->BK:F

    .line 179
    :cond_10
    iget v0, p0, Lcom/android/common/ui/ApertureBladeView;->BI:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_17

    .line 180
    return-void

    .line 182
    :cond_17
    iput p1, p0, Lcom/android/common/ui/ApertureBladeView;->BI:F

    .line 183
    invoke-virtual {p0}, Lcom/android/common/ui/ApertureBladeView;->invalidate()V

    .line 184
    iget-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BC:Lcom/android/common/ui/al;

    if-eqz v0, :cond_25

    .line 185
    iget-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BC:Lcom/android/common/ui/al;

    invoke-interface {v0, p1}, Lcom/android/common/ui/al;->FN(F)V

    .line 172
    :cond_25
    return-void
.end method

.method public FK(Lcom/android/common/ui/al;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/common/ui/ApertureBladeView;->BC:Lcom/android/common/ui/al;

    .line 189
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 108
    const-string/jumbo v0, "ApertureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "txh onDraw, getWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/ui/ApertureBladeView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", getHeight() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/ui/ApertureBladeView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    iget-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BD:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/common/ui/ApertureBladeView;->BL:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 111
    invoke-direct {p0}, Lcom/android/common/ui/ApertureBladeView;->FL()V

    .line 112
    invoke-virtual {p0}, Lcom/android/common/ui/ApertureBladeView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/common/ui/ApertureBladeView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    iget v0, p0, Lcom/android/common/ui/ApertureBladeView;->BJ:F

    iget v1, p0, Lcom/android/common/ui/ApertureBladeView;->BI:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/ApertureBladeView;->BJ:F

    iget v2, p0, Lcom/android/common/ui/ApertureBladeView;->BK:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 114
    iget-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BM:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 115
    iget v0, p0, Lcom/android/common/ui/ApertureBladeView;->BE:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 117
    const/4 v0, 0x0

    :goto_68
    const/4 v1, 0x6

    if-ge v0, v1, :cond_9c

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 119
    iget-object v1, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/common/ui/ApertureBladeView;->BN:[Landroid/graphics/PointF;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    neg-int v1, v0

    mul-int/lit8 v1, v1, 0x3c

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 121
    iget-object v1, p0, Lcom/android/common/ui/ApertureBladeView;->BF:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    iget-object v1, p0, Lcom/android/common/ui/ApertureBladeView;->BF:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/common/ui/ApertureBladeView;->BL:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 125
    :cond_9c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 107
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/16 v10, 0x64

    const/high16 v9, -0x80000000

    .line 73
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 74
    const-string/jumbo v0, "ApertureView"

    const-string/jumbo v1, "txh onMeasure"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 76
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 78
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 79
    invoke-virtual {p0}, Lcom/android/common/ui/ApertureBladeView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/ApertureBladeView;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v0

    .line 80
    invoke-virtual {p0}, Lcom/android/common/ui/ApertureBladeView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/ApertureBladeView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v0

    .line 81
    const-string/jumbo v0, "ApertureView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "txh onMeasure, widthSpecSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", heightSpecSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, "ApertureView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "txh paddX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", paddY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sub-int v0, v3, v5

    sub-int v7, v4, v6

    if-ge v0, v7, :cond_c9

    sub-int v0, v3, v5

    div-int/lit8 v0, v0, 0x2

    :goto_88
    iput v0, p0, Lcom/android/common/ui/ApertureBladeView;->BH:I

    .line 85
    const-string/jumbo v0, "ApertureView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "txh mCircleRadius = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/common/ui/ApertureBladeView;->BH:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-ne v1, v9, :cond_ce

    .line 87
    if-ne v2, v9, :cond_ce

    .line 88
    invoke-virtual {p0, v10, v10}, Lcom/android/common/ui/ApertureBladeView;->setMeasuredDimension(II)V

    .line 89
    rsub-int/lit8 v0, v5, 0x64

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/common/ui/ApertureBladeView;->BH:I

    .line 99
    :cond_b3
    :goto_b3
    iget v0, p0, Lcom/android/common/ui/ApertureBladeView;->BH:I

    if-ge v0, v12, :cond_b9

    .line 100
    iput v12, p0, Lcom/android/common/ui/ApertureBladeView;->BH:I

    .line 102
    :cond_b9
    iget-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BM:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 103
    iget-object v0, p0, Lcom/android/common/ui/ApertureBladeView;->BM:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/common/ui/ApertureBladeView;->BH:I

    int-to-float v1, v1

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v11, v11, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 72
    return-void

    .line 84
    :cond_c9
    sub-int v0, v4, v6

    div-int/lit8 v0, v0, 0x2

    goto :goto_88

    .line 90
    :cond_ce
    if-ne v1, v9, :cond_e5

    .line 91
    invoke-virtual {p0, v10, v4}, Lcom/android/common/ui/ApertureBladeView;->setMeasuredDimension(II)V

    .line 92
    rsub-int/lit8 v0, v5, 0x64

    sub-int v1, v4, v6

    if-ge v0, v1, :cond_e0

    rsub-int/lit8 v0, v5, 0x64

    div-int/lit8 v0, v0, 0x2

    :goto_dd
    iput v0, p0, Lcom/android/common/ui/ApertureBladeView;->BH:I

    goto :goto_b3

    .line 93
    :cond_e0
    sub-int v0, v4, v6

    div-int/lit8 v0, v0, 0x2

    goto :goto_dd

    .line 94
    :cond_e5
    if-ne v2, v9, :cond_b3

    .line 95
    invoke-virtual {p0, v3, v10}, Lcom/android/common/ui/ApertureBladeView;->setMeasuredDimension(II)V

    .line 96
    sub-int v0, v3, v5

    rsub-int/lit8 v1, v6, 0x64

    if-ge v0, v1, :cond_f7

    sub-int v0, v3, v5

    div-int/lit8 v0, v0, 0x2

    :goto_f4
    iput v0, p0, Lcom/android/common/ui/ApertureBladeView;->BH:I

    goto :goto_b3

    .line 97
    :cond_f7
    rsub-int/lit8 v0, v6, 0x64

    div-int/lit8 v0, v0, 0x2

    goto :goto_f4
.end method

.method public setBackgroundColor(I)V
    .registers 2

    .prologue
    .line 153
    iput p1, p0, Lcom/android/common/ui/ApertureBladeView;->BE:I

    .line 152
    return-void
.end method

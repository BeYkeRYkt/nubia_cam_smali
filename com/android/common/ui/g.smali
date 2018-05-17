.class public Lcom/android/common/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private pB:I

.field private pC:J

.field private pD:J

.field pE:Landroid/graphics/Bitmap;

.field private pF:Z

.field private pG:I

.field private pH:Z

.field pI:Landroid/graphics/Bitmap;

.field pJ:Ljava/lang/Boolean;

.field pK:Landroid/graphics/Bitmap;

.field private pL:I

.field pM:Landroid/graphics/Bitmap;

.field private pN:I

.field private pO:I

.field pP:Landroid/graphics/Rect;

.field private pQ:F

.field private pR:Landroid/graphics/RectF;

.field private pS:Landroid/graphics/Paint;

.field private pT:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/high16 v0, -0x1b000000

    iput v0, p0, Lcom/android/common/ui/g;->pB:I

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/g;->pP:Landroid/graphics/Rect;

    .line 27
    iput v1, p0, Lcom/android/common/ui/g;->pL:I

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/g;->pT:Landroid/graphics/Path;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/g;->pS:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/g;->pR:Landroid/graphics/RectF;

    .line 31
    iput v1, p0, Lcom/android/common/ui/g;->pG:I

    .line 32
    iput v1, p0, Lcom/android/common/ui/g;->pN:I

    .line 33
    iput v1, p0, Lcom/android/common/ui/g;->pO:I

    .line 34
    iput-boolean v1, p0, Lcom/android/common/ui/g;->pF:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/g;->pH:Z

    .line 36
    iput-wide v2, p0, Lcom/android/common/ui/g;->pD:J

    .line 37
    iput-wide v2, p0, Lcom/android/common/ui/g;->pC:J

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/g;->pJ:Ljava/lang/Boolean;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/common/ui/g;->vq(Landroid/content/res/Resources;)V

    .line 47
    const v0, 0x7f0d0045

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/g;->pQ:F

    .line 45
    return-void
.end method

.method private vo(Landroid/graphics/Canvas;II)V
    .registers 8

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    .line 138
    iget v0, p0, Lcom/android/common/ui/g;->pG:I

    if-nez v0, :cond_7

    .line 139
    return-void

    .line 142
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 143
    iget-object v0, p0, Lcom/android/common/ui/g;->pT:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 144
    iget-object v0, p0, Lcom/android/common/ui/g;->pR:Landroid/graphics/RectF;

    add-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    add-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 145
    iget-object v0, p0, Lcom/android/common/ui/g;->pT:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/common/ui/g;->pR:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v3, p0, Lcom/android/common/ui/g;->pG:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 146
    iget-object v0, p0, Lcom/android/common/ui/g;->pT:Landroid/graphics/Path;

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 147
    iget-object v0, p0, Lcom/android/common/ui/g;->pT:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 148
    iget-object v0, p0, Lcom/android/common/ui/g;->pT:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 150
    iget-object v0, p0, Lcom/android/common/ui/g;->pM:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/common/ui/g;->pM:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/common/ui/g;->pM:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v2, p3, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/common/ui/g;->pS:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 154
    iget v0, p0, Lcom/android/common/ui/g;->pG:I

    int-to-float v0, v0

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 155
    iget-object v0, p0, Lcom/android/common/ui/g;->pK:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/common/ui/g;->pK:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/common/ui/g;->pK:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v2, p3, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/common/ui/g;->pS:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 137
    return-void
.end method

.method private vq(Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 121
    new-instance v0, Lcom/android/common/ui/ar;

    invoke-direct {v0, p0, p1}, Lcom/android/common/ui/ar;-><init>(Lcom/android/common/ui/g;Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Lcom/android/common/ui/ar;->start()V

    .line 120
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 78
    iget-object v0, p0, Lcom/android/common/ui/g;->pJ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    .line 79
    return v1

    .line 82
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    .line 87
    iget v0, p0, Lcom/android/common/ui/g;->pG:I

    iget v5, p0, Lcom/android/common/ui/g;->pO:I

    if-eq v0, v5, :cond_dc

    .line 88
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    .line 89
    iget-wide v8, p0, Lcom/android/common/ui/g;->pC:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_d5

    .line 90
    iget-wide v8, p0, Lcom/android/common/ui/g;->pD:J

    sub-long/2addr v6, v8

    long-to-int v0, v6

    .line 91
    iget v5, p0, Lcom/android/common/ui/g;->pN:I

    .line 92
    iget-boolean v6, p0, Lcom/android/common/ui/g;->pF:Z

    if-eqz v6, :cond_d2

    .line 91
    :goto_2d
    mul-int/lit16 v0, v0, 0x10e

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v5

    .line 93
    iput v0, p0, Lcom/android/common/ui/g;->pG:I

    move v0, v1

    .line 102
    :goto_35
    iget-object v5, p0, Lcom/android/common/ui/g;->pS:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    .line 103
    iget-object v5, p0, Lcom/android/common/ui/g;->pS:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v5, p0, Lcom/android/common/ui/g;->pS:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 105
    iget-object v1, p0, Lcom/android/common/ui/g;->pE:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/common/ui/g;->pE:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v3, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/common/ui/g;->pE:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v6, v4, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/common/ui/g;->pS:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    iget-object v1, p0, Lcom/android/common/ui/g;->pS:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/common/ui/g;->pB:I

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v1, p0, Lcom/android/common/ui/g;->pS:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/common/ui/g;->pQ:F

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/common/ui/g;->pG:I

    mul-int/lit8 v5, v5, 0x64

    div-int/lit16 v5, v5, 0x168

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "%"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v5, p0, Lcom/android/common/ui/g;->pS:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/android/common/ui/g;->pP:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v2, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 111
    div-int/lit8 v2, v3, 0x2

    iget-object v5, p0, Lcom/android/common/ui/g;->pP:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    div-int/lit8 v5, v4, 0x2

    iget-object v6, p0, Lcom/android/common/ui/g;->pP:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/common/ui/g;->pS:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 113
    iget-object v1, p0, Lcom/android/common/ui/g;->pI:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/common/ui/g;->pI:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/common/ui/g;->pI:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v4, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/common/ui/g;->pS:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 115
    invoke-direct {p0, p1, v3, v4}, Lcom/android/common/ui/g;->vo(Landroid/graphics/Canvas;II)V

    .line 117
    return v0

    .line 92
    :cond_d2
    neg-int v0, v0

    goto/16 :goto_2d

    .line 96
    :cond_d5
    iget v0, p0, Lcom/android/common/ui/g;->pO:I

    iput v0, p0, Lcom/android/common/ui/g;->pG:I

    move v0, v2

    .line 97
    goto/16 :goto_35

    :cond_dc
    move v0, v2

    goto/16 :goto_35
.end method

.method public vp()Z
    .registers 3

    .prologue
    .line 70
    iget v0, p0, Lcom/android/common/ui/g;->pG:I

    const/16 v1, 0x168

    if-ne v1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public vr(IZ)V
    .registers 7

    .prologue
    const/16 v2, 0x64

    const/4 v0, 0x0

    .line 51
    iput p1, p0, Lcom/android/common/ui/g;->pL:I

    .line 52
    iget v1, p0, Lcom/android/common/ui/g;->pL:I

    if-le v1, v2, :cond_b

    .line 53
    iput v2, p0, Lcom/android/common/ui/g;->pL:I

    .line 55
    :cond_b
    iget v1, p0, Lcom/android/common/ui/g;->pL:I

    mul-int/lit16 v1, v1, 0x168

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/common/ui/g;->pO:I

    .line 56
    iput-boolean p2, p0, Lcom/android/common/ui/g;->pH:Z

    .line 57
    iget-boolean v1, p0, Lcom/android/common/ui/g;->pH:Z

    if-eqz v1, :cond_3c

    .line 58
    iget v1, p0, Lcom/android/common/ui/g;->pG:I

    iput v1, p0, Lcom/android/common/ui/g;->pN:I

    .line 59
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/common/ui/g;->pD:J

    .line 61
    iget v1, p0, Lcom/android/common/ui/g;->pO:I

    iget v2, p0, Lcom/android/common/ui/g;->pG:I

    sub-int/2addr v1, v2

    .line 62
    if-ltz v1, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    iput-boolean v0, p0, Lcom/android/common/ui/g;->pF:Z

    .line 63
    iget-wide v2, p0, Lcom/android/common/ui/g;->pD:J

    .line 64
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit16 v0, v0, 0x10e

    int-to-long v0, v0

    .line 63
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/common/ui/g;->pC:J

    .line 50
    :goto_3b
    return-void

    .line 66
    :cond_3c
    iget v0, p0, Lcom/android/common/ui/g;->pO:I

    iput v0, p0, Lcom/android/common/ui/g;->pG:I

    goto :goto_3b
.end method

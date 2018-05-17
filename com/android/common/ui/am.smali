.class public Lcom/android/common/ui/am;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private BP:Landroid/graphics/Path;

.field private BQ:Landroid/view/animation/AccelerateInterpolator;

.field private BR:F

.field private BS:F

.field private BT:Landroid/view/animation/DecelerateInterpolator;

.field private BU:F

.field private BV:F

.field BW:Ljava/lang/Boolean;

.field private BX:J

.field BY:Landroid/graphics/Bitmap;

.field BZ:Landroid/graphics/Bitmap;

.field Ca:Landroid/graphics/Bitmap;

.field private Cb:J

.field private Cc:J

.field private Cd:Landroid/graphics/RectF;

.field private Ce:Landroid/graphics/Paint;

.field private Cf:Landroid/graphics/Path;

.field private Cg:F

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/android/common/ui/am;->BR:F

    .line 29
    iput v0, p0, Lcom/android/common/ui/am;->BS:F

    .line 30
    iput v0, p0, Lcom/android/common/ui/am;->Cg:F

    .line 31
    iput-wide v2, p0, Lcom/android/common/ui/am;->Cb:J

    .line 32
    iput-wide v2, p0, Lcom/android/common/ui/am;->Cc:J

    .line 33
    iput-wide v2, p0, Lcom/android/common/ui/am;->BX:J

    .line 37
    iput v1, p0, Lcom/android/common/ui/am;->mState:I

    .line 39
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/am;->BT:Landroid/view/animation/DecelerateInterpolator;

    .line 40
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/am;->BQ:Landroid/view/animation/AccelerateInterpolator;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/am;->Ce:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/am;->Cf:Landroid/graphics/Path;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/am;->Cd:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/am;->BP:Landroid/graphics/Path;

    .line 51
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/am;->BW:Ljava/lang/Boolean;

    .line 54
    const v0, 0x7f0d006e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/am;->BU:F

    .line 55
    const v0, 0x7f0d0079

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/am;->BV:F

    .line 56
    invoke-direct {p0, p1}, Lcom/android/common/ui/am;->FT(Landroid/content/res/Resources;)V

    .line 53
    return-void
.end method

.method private FP()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x43960000    # 300.0f

    const/high16 v7, 0x41200000    # 10.0f

    const-wide/16 v8, 0x3e8

    const/high16 v6, 0x44480000    # 800.0f

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 142
    iget-wide v0, p0, Lcom/android/common/ui/am;->BX:J

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 143
    iput-wide v2, p0, Lcom/android/common/ui/am;->BX:J

    .line 145
    cmp-long v4, v0, v8

    if-lez v4, :cond_21

    .line 146
    const-wide/16 v0, 0x0

    .line 147
    iput-wide v2, p0, Lcom/android/common/ui/am;->Cb:J

    .line 148
    iput-wide v2, p0, Lcom/android/common/ui/am;->Cc:J

    .line 151
    :cond_21
    iget v4, p0, Lcom/android/common/ui/am;->mState:I

    if-nez v4, :cond_5b

    .line 152
    iget-wide v4, p0, Lcom/android/common/ui/am;->Cb:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_45

    .line 153
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/common/ui/am;->mState:I

    .line 154
    iput-wide v2, p0, Lcom/android/common/ui/am;->Cc:J

    .line 161
    :goto_33
    iget v2, p0, Lcom/android/common/ui/am;->BS:F

    const-wide/16 v4, 0xbe

    mul-long/2addr v0, v4

    div-long/2addr v0, v8

    long-to-float v0, v0

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/common/ui/am;->BS:F

    .line 162
    iget v0, p0, Lcom/android/common/ui/am;->BS:F

    iget v1, p0, Lcom/android/common/ui/am;->Cg:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/am;->BR:F

    .line 140
    :cond_44
    :goto_44
    return-void

    .line 156
    :cond_45
    iget-wide v4, p0, Lcom/android/common/ui/am;->Cb:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v6

    .line 157
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 158
    iget-object v3, p0, Lcom/android/common/ui/am;->BT:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v3, v2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v10

    add-float/2addr v2, v7

    iput v2, p0, Lcom/android/common/ui/am;->Cg:F

    goto :goto_33

    .line 163
    :cond_5b
    iget v4, p0, Lcom/android/common/ui/am;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_44

    .line 164
    iget-wide v4, p0, Lcom/android/common/ui/am;->Cc:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_7f

    .line 165
    iput v11, p0, Lcom/android/common/ui/am;->mState:I

    .line 166
    iput-wide v2, p0, Lcom/android/common/ui/am;->Cb:J

    .line 173
    :goto_6d
    iget v2, p0, Lcom/android/common/ui/am;->BR:F

    const-wide/16 v4, 0xbe

    mul-long/2addr v0, v4

    div-long/2addr v0, v8

    long-to-float v0, v0

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/common/ui/am;->BR:F

    .line 174
    iget v0, p0, Lcom/android/common/ui/am;->BR:F

    iget v1, p0, Lcom/android/common/ui/am;->Cg:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/am;->BS:F

    goto :goto_44

    .line 168
    :cond_7f
    iget-wide v4, p0, Lcom/android/common/ui/am;->Cc:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sub-float v2, v6, v2

    div-float/2addr v2, v6

    .line 169
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 170
    iget-object v3, p0, Lcom/android/common/ui/am;->BQ:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v3, v2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v10

    add-float/2addr v2, v7

    iput v2, p0, Lcom/android/common/ui/am;->Cg:F

    goto :goto_6d
.end method

.method private FQ(Landroid/graphics/Canvas;FF)V
    .registers 11

    .prologue
    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v1, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 182
    iget-object v0, p0, Lcom/android/common/ui/am;->Cf:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 183
    iget-object v0, p0, Lcom/android/common/ui/am;->Cd:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 184
    iget-object v0, p0, Lcom/android/common/ui/am;->Cf:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/common/ui/am;->Cd:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/common/ui/am;->BS:F

    iget v3, p0, Lcom/android/common/ui/am;->BR:F

    iget v4, p0, Lcom/android/common/ui/am;->BS:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 185
    iget-object v0, p0, Lcom/android/common/ui/am;->Cf:Landroid/graphics/Path;

    div-float v1, p2, v5

    div-float v2, p3, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    iget-object v0, p0, Lcom/android/common/ui/am;->Cf:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 187
    iget-object v0, p0, Lcom/android/common/ui/am;->Cf:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 188
    iget-object v0, p0, Lcom/android/common/ui/am;->Ca:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/common/ui/am;->Ca:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/android/common/ui/am;->Ca:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/android/common/ui/am;->Ce:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 192
    iget v0, p0, Lcom/android/common/ui/am;->BS:F

    add-float/2addr v0, v6

    div-float v1, p2, v5

    div-float v2, p3, v5

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 193
    iget-object v0, p0, Lcom/android/common/ui/am;->BY:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/common/ui/am;->BY:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/android/common/ui/am;->BY:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/android/common/ui/am;->Ce:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 197
    iget v0, p0, Lcom/android/common/ui/am;->BR:F

    add-float/2addr v0, v6

    div-float v1, p2, v5

    div-float v2, p3, v5

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 198
    iget-object v0, p0, Lcom/android/common/ui/am;->BY:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/common/ui/am;->BY:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/android/common/ui/am;->BY:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/android/common/ui/am;->Ce:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 179
    return-void
.end method

.method private FR(II)F
    .registers 6

    .prologue
    .line 114
    int-to-float v0, p1

    iget v1, p0, Lcom/android/common/ui/am;->BV:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_e

    int-to-float v0, p2

    iget v1, p0, Lcom/android/common/ui/am;->BV:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1b

    .line 115
    :cond_e
    int-to-float v0, p1

    iget v1, p0, Lcom/android/common/ui/am;->BV:F

    div-float/2addr v0, v1

    .line 116
    int-to-float v1, p2

    iget v2, p0, Lcom/android/common/ui/am;->BV:F

    div-float/2addr v1, v2

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 118
    return v0

    .line 120
    :cond_1b
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private FS(II)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 110
    iget-object v1, p0, Lcom/android/common/ui/am;->Ca:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt p1, v1, :cond_11

    iget-object v1, p0, Lcom/android/common/ui/am;->Ca:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private FT(Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 125
    new-instance v0, Lcom/android/common/ui/bn;

    invoke-direct {v0, p0, p1}, Lcom/android/common/ui/bn;-><init>(Lcom/android/common/ui/am;Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Lcom/android/common/ui/bn;->start()V

    .line 124
    return-void
.end method

.method private FU(II)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/am;->FR(II)F

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/android/common/ui/am;->Ca:Landroid/graphics/Bitmap;

    .line 96
    iget-object v2, p0, Lcom/android/common/ui/am;->Ca:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 97
    iget-object v3, p0, Lcom/android/common/ui/am;->Ca:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 95
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/am;->Ca:Landroid/graphics/Bitmap;

    .line 99
    iget-object v1, p0, Lcom/android/common/ui/am;->BZ:Landroid/graphics/Bitmap;

    .line 100
    iget-object v2, p0, Lcom/android/common/ui/am;->BZ:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 101
    iget-object v3, p0, Lcom/android/common/ui/am;->BZ:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 99
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/am;->BZ:Landroid/graphics/Bitmap;

    .line 103
    iget-object v1, p0, Lcom/android/common/ui/am;->BY:Landroid/graphics/Bitmap;

    .line 104
    iget-object v2, p0, Lcom/android/common/ui/am;->BY:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 105
    iget-object v3, p0, Lcom/android/common/ui/am;->BY:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 103
    invoke-static {v1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/am;->BY:Landroid/graphics/Bitmap;

    .line 93
    return-void
.end method


# virtual methods
.method public FO(II)Landroid/graphics/Path;
    .registers 8

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 60
    iget-object v0, p0, Lcom/android/common/ui/am;->BP:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 62
    iget-object v0, p0, Lcom/android/common/ui/am;->BP:Landroid/graphics/Path;

    int-to-float v1, p1

    div-float/2addr v1, v4

    int-to-float v2, p2

    div-float/2addr v2, v4

    iget v3, p0, Lcom/android/common/ui/am;->BU:F

    div-float/2addr v3, v4

    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/am;->FR(II)F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 63
    iget-object v0, p0, Lcom/android/common/ui/am;->BP:Landroid/graphics/Path;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .registers 9

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    .line 68
    iget-object v0, p0, Lcom/android/common/ui/am;->BW:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    .line 69
    return v6

    .line 71
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 73
    if-eqz v0, :cond_18

    if-nez v1, :cond_19

    .line 74
    :cond_18
    return v6

    .line 77
    :cond_19
    invoke-direct {p0}, Lcom/android/common/ui/am;->FP()V

    .line 79
    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/am;->FS(II)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 80
    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/am;->FU(II)V

    .line 83
    :cond_25
    iget-object v2, p0, Lcom/android/common/ui/am;->Ce:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 84
    iget-object v2, p0, Lcom/android/common/ui/am;->Ce:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v2, p0, Lcom/android/common/ui/am;->Ce:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 87
    iget-object v2, p0, Lcom/android/common/ui/am;->BZ:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/common/ui/am;->BZ:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/android/common/ui/am;->BZ:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v1, v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/common/ui/am;->Ce:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 89
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/common/ui/am;->FQ(Landroid/graphics/Canvas;FF)V

    .line 90
    return v6
.end method

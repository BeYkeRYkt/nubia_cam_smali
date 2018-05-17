.class public Lcom/android/common/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mStartTime:J

.field private mState:I

.field private sl:Landroid/graphics/RectF;

.field private sm:Z

.field private sn:Lcom/android/common/ui/VideoAnimation$Color;

.field private so:F

.field private sp:Ljava/lang/Boolean;

.field private sq:F

.field private sr:Landroid/graphics/Bitmap;

.field private ss:Landroid/graphics/Bitmap;

.field private st:F

.field private su:Z

.field private sv:Landroid/graphics/Bitmap;

.field private sw:Landroid/graphics/Bitmap;

.field private sx:Landroid/graphics/Paint;

.field private sy:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/w;->sp:Ljava/lang/Boolean;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/w;->sx:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/w;->sy:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/w;->sl:Landroid/graphics/RectF;

    .line 53
    iput-boolean v1, p0, Lcom/android/common/ui/w;->su:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/common/ui/w;->sm:Z

    .line 58
    iput v1, p0, Lcom/android/common/ui/w;->mState:I

    .line 76
    sget-object v0, Lcom/android/common/ui/VideoAnimation$Color;->sz:Lcom/android/common/ui/VideoAnimation$Color;

    iput-object v0, p0, Lcom/android/common/ui/w;->sn:Lcom/android/common/ui/VideoAnimation$Color;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/common/ui/w;->xk(Landroid/content/res/Resources;)V

    .line 80
    const v0, 0x7f0d006e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/w;->so:F

    .line 81
    const v0, 0x7f0d004d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/w;->st:F

    .line 82
    iget v0, p0, Lcom/android/common/ui/w;->so:F

    iget v1, p0, Lcom/android/common/ui/w;->st:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/w;->sq:F

    .line 78
    return-void
.end method

.method private xk(Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 177
    new-instance v0, Lcom/android/common/ui/az;

    invoke-direct {v0, p0, p1}, Lcom/android/common/ui/az;-><init>(Lcom/android/common/ui/w;Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Lcom/android/common/ui/az;->start()V

    .line 176
    return-void
.end method

.method static synthetic xn(Lcom/android/common/ui/w;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/w;->sp:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic xo(Lcom/android/common/ui/w;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/w;->sp:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic xp(Lcom/android/common/ui/w;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/w;->sr:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic xq(Lcom/android/common/ui/w;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/w;->ss:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic xr(Lcom/android/common/ui/w;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/w;->sv:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic xs(Lcom/android/common/ui/w;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/w;->sw:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/common/ui/w;->mStartTime:J

    .line 105
    iput-boolean v2, p0, Lcom/android/common/ui/w;->sm:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/common/ui/w;->su:Z

    .line 103
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .registers 14

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/common/ui/w;->sp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    .line 112
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    .line 118
    iget-boolean v0, p0, Lcom/android/common/ui/w;->su:Z

    if-eqz v0, :cond_2d

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 120
    iget-wide v6, p0, Lcom/android/common/ui/w;->mStartTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0xc8

    cmp-long v2, v6, v8

    if-ltz v2, :cond_63

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/ui/w;->mStartTime:J

    .line 125
    :goto_2a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/w;->su:Z

    .line 129
    :cond_2d
    sget-object v0, Lcom/android/common/ui/VideoAnimation$Color;->sA:Lcom/android/common/ui/VideoAnimation$Color;

    iget-object v1, p0, Lcom/android/common/ui/w;->sn:Lcom/android/common/ui/VideoAnimation$Color;

    if-ne v0, v1, :cond_6f

    .line 130
    iget-object v1, p0, Lcom/android/common/ui/w;->sv:Landroid/graphics/Bitmap;

    .line 131
    iget-object v0, p0, Lcom/android/common/ui/w;->sw:Landroid/graphics/Bitmap;

    .line 137
    :goto_37
    const/4 v2, 0x0

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 139
    iget-wide v8, p0, Lcom/android/common/ui/w;->mStartTime:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0xc8

    cmp-long v5, v8, v10

    if-ltz v5, :cond_8d

    .line 140
    iget v5, p0, Lcom/android/common/ui/w;->mState:I

    if-nez v5, :cond_74

    .line 141
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v4, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/ui/w;->sx:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v0, v2

    .line 173
    :goto_62
    return v0

    .line 123
    :cond_63
    iget-wide v6, p0, Lcom/android/common/ui/w;->mStartTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0xc8

    sub-long v6, v8, v6

    sub-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/common/ui/w;->mStartTime:J

    goto :goto_2a

    .line 133
    :cond_6f
    iget-object v1, p0, Lcom/android/common/ui/w;->sr:Landroid/graphics/Bitmap;

    .line 134
    iget-object v0, p0, Lcom/android/common/ui/w;->ss:Landroid/graphics/Bitmap;

    goto :goto_37

    .line 143
    :cond_74
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v4, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/ui/w;->sx:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v0, v2

    goto :goto_62

    .line 146
    :cond_8d
    iget-wide v8, p0, Lcom/android/common/ui/w;->mStartTime:J

    sub-long/2addr v6, v8

    long-to-float v1, v6

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v1, v2

    .line 147
    iget v2, p0, Lcom/android/common/ui/w;->mState:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_9d

    .line 148
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    .line 151
    :cond_9d
    iget v2, p0, Lcom/android/common/ui/w;->sq:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v2, v5

    mul-float/2addr v2, v1

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v2, v5

    .line 152
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    .line 153
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    .line 154
    iget-object v7, p0, Lcom/android/common/ui/w;->sl:Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 155
    int-to-float v7, v3

    sub-float v5, v7, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    .line 156
    int-to-float v7, v4

    sub-float v6, v7, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 157
    iget-object v7, p0, Lcom/android/common/ui/w;->sl:Landroid/graphics/RectF;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 159
    iget v5, p0, Lcom/android/common/ui/w;->st:F

    mul-float/2addr v2, v5

    .line 160
    float-to-double v6, v2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 161
    float-to-double v8, v2

    sub-double v8, v6, v8

    float-to-double v10, v1

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    .line 162
    iget-object v1, p0, Lcom/android/common/ui/w;->sy:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 163
    iget-object v1, p0, Lcom/android/common/ui/w;->sy:Landroid/graphics/Path;

    div-int/lit8 v2, v3, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v4, 0x2

    int-to-float v3, v3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v6, v4

    double-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    iget-object v1, p0, Lcom/android/common/ui/w;->sy:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 167
    iget-object v1, p0, Lcom/android/common/ui/w;->sl:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/common/ui/w;->sx:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 170
    const/4 v0, 0x1

    goto/16 :goto_62
.end method

.method public xl(Lcom/android/common/ui/VideoAnimation$Color;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/common/ui/w;->sn:Lcom/android/common/ui/VideoAnimation$Color;

    .line 85
    return-void
.end method

.method public xm(IZ)V
    .registers 5

    .prologue
    .line 90
    iget v0, p0, Lcom/android/common/ui/w;->mState:I

    if-ne v0, p1, :cond_5

    .line 91
    return-void

    .line 93
    :cond_5
    iput p1, p0, Lcom/android/common/ui/w;->mState:I

    .line 94
    iput-boolean p2, p0, Lcom/android/common/ui/w;->sm:Z

    .line 95
    iget-boolean v0, p0, Lcom/android/common/ui/w;->sm:Z

    if-nez v0, :cond_15

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/common/ui/w;->mStartTime:J

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/w;->su:Z

    .line 89
    :goto_14
    return-void

    .line 99
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/w;->su:Z

    goto :goto_14
.end method

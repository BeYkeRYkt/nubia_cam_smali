.class public Lcom/android/common/ui/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private sJ:F

.field private sK:F

.field private sL:Z

.field private sM:J

.field private sN:J

.field private sO:Landroid/graphics/Bitmap;

.field private sP:Landroid/graphics/Bitmap;

.field private sQ:Landroid/graphics/Bitmap;

.field private sR:Z

.field private sS:F

.field private sT:Lcom/android/common/B;

.field private sU:Lcom/android/common/a;

.field private sV:Lcom/android/common/a;

.field sW:F

.field sX:F

.field sY:F

.field private sZ:Z

.field private ta:Ljava/lang/Boolean;

.field tb:F

.field tc:F

.field private td:Landroid/graphics/Bitmap;

.field private te:Landroid/graphics/Bitmap;

.field private tf:F

.field private tg:F

.field private th:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 10

    .prologue
    const-wide/16 v6, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const v3, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/y;->ta:Ljava/lang/Boolean;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/y;->th:Landroid/graphics/Paint;

    .line 28
    iput v1, p0, Lcom/android/common/ui/y;->sK:F

    .line 29
    iput v1, p0, Lcom/android/common/ui/y;->sJ:F

    .line 64
    iput v1, p0, Lcom/android/common/ui/y;->sS:F

    .line 65
    iput v1, p0, Lcom/android/common/ui/y;->tf:F

    .line 66
    iput v1, p0, Lcom/android/common/ui/y;->tg:F

    .line 67
    iput-boolean v2, p0, Lcom/android/common/ui/y;->sR:Z

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/y;->sZ:Z

    .line 69
    iput-wide v6, p0, Lcom/android/common/ui/y;->sN:J

    .line 70
    iput-wide v6, p0, Lcom/android/common/ui/y;->sM:J

    .line 76
    iput-boolean v2, p0, Lcom/android/common/ui/y;->sL:Z

    .line 79
    invoke-direct {p0, p1}, Lcom/android/common/ui/y;->xE(Landroid/content/res/Resources;)V

    .line 80
    const v0, 0x7f0d006e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/y;->sW:F

    .line 81
    const v0, 0x7f0d003e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/y;->sY:F

    .line 82
    const v0, 0x7f0d0039

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/y;->sX:F

    .line 83
    iget v0, p0, Lcom/android/common/ui/y;->sY:F

    iget v1, p0, Lcom/android/common/ui/y;->sX:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lcom/android/common/ui/y;->tc:F

    .line 84
    iget v0, p0, Lcom/android/common/ui/y;->sW:F

    iget v1, p0, Lcom/android/common/ui/y;->sX:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lcom/android/common/ui/y;->tb:F

    .line 86
    new-instance v0, Lcom/android/common/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v3}, Lcom/android/common/a;-><init>(IF)V

    iput-object v0, p0, Lcom/android/common/ui/y;->sU:Lcom/android/common/a;

    .line 87
    iget-object v0, p0, Lcom/android/common/ui/y;->sU:Lcom/android/common/a;

    new-instance v1, Lcom/android/common/ui/aA;

    invoke-direct {v1, p0}, Lcom/android/common/ui/aA;-><init>(Lcom/android/common/ui/y;)V

    invoke-virtual {v0, v1}, Lcom/android/common/a;->asa(Lcom/android/common/A;)V

    .line 94
    new-instance v0, Lcom/android/common/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v3}, Lcom/android/common/a;-><init>(IF)V

    iput-object v0, p0, Lcom/android/common/ui/y;->sV:Lcom/android/common/a;

    .line 95
    iget-object v0, p0, Lcom/android/common/ui/y;->sV:Lcom/android/common/a;

    new-instance v1, Lcom/android/common/ui/aB;

    invoke-direct {v1, p0}, Lcom/android/common/ui/aB;-><init>(Lcom/android/common/ui/y;)V

    invoke-virtual {v0, v1}, Lcom/android/common/a;->asa(Lcom/android/common/A;)V

    .line 103
    new-instance v0, Lcom/android/common/B;

    const/high16 v1, 0x42840000    # 66.0f

    const/high16 v2, -0x3d7c0000    # -66.0f

    const/16 v3, 0xa

    const/16 v4, 0x2d

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/common/B;-><init>(IFFI)V

    iput-object v0, p0, Lcom/android/common/ui/y;->sT:Lcom/android/common/B;

    .line 104
    iget-object v0, p0, Lcom/android/common/ui/y;->sT:Lcom/android/common/B;

    new-instance v1, Lcom/android/common/ui/aC;

    invoke-direct {v1, p0}, Lcom/android/common/ui/aC;-><init>(Lcom/android/common/ui/y;)V

    invoke-virtual {v0, v1}, Lcom/android/common/B;->asa(Lcom/android/common/A;)V

    .line 78
    return-void
.end method

.method private xE(Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 231
    new-instance v0, Lcom/android/common/ui/aD;

    invoke-direct {v0, p0, p1}, Lcom/android/common/ui/aD;-><init>(Lcom/android/common/ui/y;Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Lcom/android/common/ui/aD;->start()V

    .line 230
    return-void
.end method

.method static synthetic xJ(Lcom/android/common/ui/y;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/ui/y;->sL:Z

    return v0
.end method

.method static synthetic xK(Lcom/android/common/ui/y;)Lcom/android/common/B;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/y;->sT:Lcom/android/common/B;

    return-object v0
.end method

.method static synthetic xL(Lcom/android/common/ui/y;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/y;->ta:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic xM(Lcom/android/common/ui/y;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/y;->sO:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic xN(Lcom/android/common/ui/y;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/y;->sP:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic xO(Lcom/android/common/ui/y;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/y;->sQ:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic xP(Lcom/android/common/ui/y;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/y;->ta:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic xQ(Lcom/android/common/ui/y;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/y;->td:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic xR(Lcom/android/common/ui/y;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/y;->te:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v8, 0x40400000    # 3.0f

    .line 163
    iget-object v2, p0, Lcom/android/common/ui/y;->ta:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_11

    .line 164
    return v1

    .line 166
    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    .line 172
    iget v4, p0, Lcom/android/common/ui/y;->sS:F

    iget v5, p0, Lcom/android/common/ui/y;->tg:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_40

    .line 173
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 174
    iget-wide v6, p0, Lcom/android/common/ui/y;->sM:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_f6

    .line 175
    iget-wide v6, p0, Lcom/android/common/ui/y;->sN:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 176
    iget v4, p0, Lcom/android/common/ui/y;->tf:F

    .line 177
    iget-boolean v5, p0, Lcom/android/common/ui/y;->sR:Z

    if-eqz v5, :cond_f3

    .line 176
    :goto_35
    mul-int/lit16 v0, v0, 0x1c2

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    add-float/2addr v0, v4

    .line 178
    add-float/2addr v0, v10

    rem-float/2addr v0, v10

    iput v0, p0, Lcom/android/common/ui/y;->sS:F

    move v0, v1

    .line 189
    :cond_40
    :goto_40
    iget-object v4, p0, Lcom/android/common/ui/y;->th:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    .line 190
    iget-object v4, p0, Lcom/android/common/ui/y;->sQ:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/common/ui/y;->sQ:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/common/ui/y;->sQ:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v6, v3, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/common/ui/y;->th:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    iget-object v4, p0, Lcom/android/common/ui/y;->th:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 194
    iget v1, p0, Lcom/android/common/ui/y;->sS:F

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v1, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 195
    iget v1, p0, Lcom/android/common/ui/y;->sS:F

    const/4 v4, 0x0

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v8

    if-lez v1, :cond_8c

    .line 196
    iget v1, p0, Lcom/android/common/ui/y;->sS:F

    sub-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v8

    if-gtz v1, :cond_fc

    .line 200
    :cond_8c
    iget-object v1, p0, Lcom/android/common/ui/y;->sO:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/common/ui/y;->sO:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/common/ui/y;->sO:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v3, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/common/ui/y;->th:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 205
    :goto_a9
    iget v1, p0, Lcom/android/common/ui/y;->sJ:F

    .line 213
    const/high16 v4, 0x42340000    # 45.0f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_140

    .line 214
    iget v1, p0, Lcom/android/common/ui/y;->sJ:F

    sub-float/2addr v1, v9

    .line 219
    :cond_b4
    :goto_b4
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x42340000    # 45.0f

    div-float/2addr v1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, p0, Lcom/android/common/ui/y;->tb:F

    mul-float/2addr v1, v4

    .line 220
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 221
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lcom/android/common/ui/y;->tc:F

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_14b

    .line 222
    iget-object v1, p0, Lcom/android/common/ui/y;->td:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/common/ui/y;->td:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/common/ui/y;->td:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/ui/y;->th:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 226
    :goto_ef
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 227
    return v0

    .line 177
    :cond_f3
    neg-int v0, v0

    goto/16 :goto_35

    .line 181
    :cond_f6
    iget v4, p0, Lcom/android/common/ui/y;->tg:F

    iput v4, p0, Lcom/android/common/ui/y;->sS:F

    goto/16 :goto_40

    .line 197
    :cond_fc
    iget v1, p0, Lcom/android/common/ui/y;->sS:F

    const/high16 v4, 0x43340000    # 180.0f

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v8

    if-lez v1, :cond_8c

    .line 198
    iget v1, p0, Lcom/android/common/ui/y;->sS:F

    const/high16 v4, 0x43870000    # 270.0f

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v8

    if-lez v1, :cond_8c

    .line 199
    iget v1, p0, Lcom/android/common/ui/y;->sS:F

    sub-float/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v8

    if-lez v1, :cond_8c

    .line 202
    iget-object v1, p0, Lcom/android/common/ui/y;->sP:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/common/ui/y;->sP:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/common/ui/y;->sP:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v3, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/common/ui/y;->th:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_a9

    .line 215
    :cond_140
    const/high16 v4, -0x3dcc0000    # -45.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_b4

    .line 216
    iget v1, p0, Lcom/android/common/ui/y;->sJ:F

    add-float/2addr v1, v9

    goto/16 :goto_b4

    .line 224
    :cond_14b
    iget-object v1, p0, Lcom/android/common/ui/y;->te:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/common/ui/y;->te:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/common/ui/y;->te:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/ui/y;->th:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_ef
.end method

.method public xF(F)V
    .registers 4

    .prologue
    .line 151
    iget v0, p0, Lcom/android/common/ui/y;->sJ:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    .line 152
    return-void

    .line 154
    :cond_e
    iput p1, p0, Lcom/android/common/ui/y;->sJ:F

    .line 150
    return-void
.end method

.method public xG(FZ)V
    .registers 7

    .prologue
    const/high16 v2, 0x43340000    # 180.0f

    .line 118
    iget v0, p0, Lcom/android/common/ui/y;->sK:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 119
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_16

    const v1, 0x43b38000    # 359.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    .line 120
    :cond_16
    return-void

    .line 122
    :cond_17
    iput p1, p0, Lcom/android/common/ui/y;->sK:F

    .line 123
    iput p1, p0, Lcom/android/common/ui/y;->tg:F

    .line 124
    iput-boolean p2, p0, Lcom/android/common/ui/y;->sZ:Z

    .line 125
    iget-boolean v0, p0, Lcom/android/common/ui/y;->sZ:Z

    if-eqz v0, :cond_67

    .line 126
    iget v0, p0, Lcom/android/common/ui/y;->sS:F

    iput v0, p0, Lcom/android/common/ui/y;->tf:F

    .line 127
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/ui/y;->sN:J

    .line 129
    iget v0, p0, Lcom/android/common/ui/y;->tg:F

    iget v1, p0, Lcom/android/common/ui/y;->sS:F

    sub-float/2addr v0, v1

    .line 130
    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_5d

    cmpg-float v1, v0, v2

    if-gez v1, :cond_5d

    .line 132
    :cond_39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/common/ui/y;->sR:Z

    .line 136
    :goto_3c
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4c

    .line 137
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float v0, v1, v0

    .line 139
    :cond_4c
    iget-wide v2, p0, Lcom/android/common/ui/y;->sN:J

    .line 140
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43e10000    # 450.0f

    div-float/2addr v0, v1

    float-to-long v0, v0

    .line 139
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/common/ui/y;->sM:J

    .line 117
    :goto_5c
    return-void

    .line 131
    :cond_5d
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_39

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/common/ui/y;->sR:Z

    goto :goto_3c

    .line 142
    :cond_67
    iget v0, p0, Lcom/android/common/ui/y;->tg:F

    iput v0, p0, Lcom/android/common/ui/y;->sS:F

    goto :goto_5c
.end method

.method public xH(F)V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/common/ui/y;->sV:Lcom/android/common/a;

    invoke-virtual {v0, p1}, Lcom/android/common/a;->asb(F)V

    .line 147
    return-void
.end method

.method public xI(FZ)V
    .registers 4

    .prologue
    .line 113
    iput-boolean p2, p0, Lcom/android/common/ui/y;->sL:Z

    .line 114
    iget-object v0, p0, Lcom/android/common/ui/y;->sU:Lcom/android/common/a;

    invoke-virtual {v0, p1}, Lcom/android/common/a;->asb(F)V

    .line 112
    return-void
.end method

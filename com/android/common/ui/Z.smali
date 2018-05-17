.class public Lcom/android/common/ui/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private yi:F

.field private yj:J

.field private yk:J

.field private yl:Z

.field private ym:Landroid/graphics/Bitmap;

.field private yn:F

.field private yo:F

.field private yp:Z

.field private yq:Ljava/lang/Boolean;

.field private yr:Landroid/graphics/Paint;

.field private ys:F

.field private yt:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/Z;->yq:Ljava/lang/Boolean;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/Z;->yr:Landroid/graphics/Paint;

    .line 16
    iput v1, p0, Lcom/android/common/ui/Z;->yo:F

    .line 20
    iput v1, p0, Lcom/android/common/ui/Z;->yi:F

    .line 21
    iput v1, p0, Lcom/android/common/ui/Z;->yn:F

    .line 22
    iput v1, p0, Lcom/android/common/ui/Z;->ys:F

    .line 23
    iput v1, p0, Lcom/android/common/ui/Z;->yt:F

    .line 24
    iput-boolean v2, p0, Lcom/android/common/ui/Z;->yl:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/Z;->yp:Z

    .line 26
    iput-wide v4, p0, Lcom/android/common/ui/Z;->yk:J

    .line 27
    iput-wide v4, p0, Lcom/android/common/ui/Z;->yj:J

    .line 30
    invoke-direct {p0, p1}, Lcom/android/common/ui/Z;->Dm(Landroid/content/res/Resources;)V

    .line 29
    return-void
.end method

.method private Dm(Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 111
    new-instance v0, Lcom/android/common/ui/bg;

    invoke-direct {v0, p0, p1}, Lcom/android/common/ui/bg;-><init>(Lcom/android/common/ui/Z;Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Lcom/android/common/ui/bg;->start()V

    .line 110
    return-void
.end method

.method static synthetic Dp(Lcom/android/common/ui/Z;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/Z;->yq:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic Dq(Lcom/android/common/ui/Z;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/Z;->ym:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic Dr(Lcom/android/common/ui/Z;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/Z;->yq:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public Dn(FZ)V
    .registers 7

    .prologue
    const/high16 v2, 0x43340000    # 180.0f

    .line 41
    iput p1, p0, Lcom/android/common/ui/Z;->yo:F

    .line 42
    iput p1, p0, Lcom/android/common/ui/Z;->yt:F

    .line 43
    iput-boolean p2, p0, Lcom/android/common/ui/Z;->yp:Z

    .line 44
    iget-boolean v0, p0, Lcom/android/common/ui/Z;->yp:Z

    if-eqz v0, :cond_52

    .line 45
    iget v0, p0, Lcom/android/common/ui/Z;->yn:F

    iput v0, p0, Lcom/android/common/ui/Z;->ys:F

    .line 46
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/ui/Z;->yk:J

    .line 48
    iget v0, p0, Lcom/android/common/ui/Z;->yt:F

    iget v1, p0, Lcom/android/common/ui/Z;->yn:F

    sub-float/2addr v0, v1

    .line 49
    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_48

    cmpg-float v1, v0, v2

    if-gez v1, :cond_48

    .line 51
    :cond_24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/common/ui/Z;->yl:Z

    .line 55
    :goto_27
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_37

    .line 56
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float v0, v1, v0

    .line 58
    :cond_37
    iget-wide v2, p0, Lcom/android/common/ui/Z;->yk:J

    .line 59
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x44340000    # 720.0f

    div-float/2addr v0, v1

    float-to-long v0, v0

    .line 58
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/common/ui/Z;->yj:J

    .line 40
    :goto_47
    return-void

    .line 50
    :cond_48
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_24

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/common/ui/Z;->yl:Z

    goto :goto_27

    .line 61
    :cond_52
    iget v0, p0, Lcom/android/common/ui/Z;->yt:F

    iput v0, p0, Lcom/android/common/ui/Z;->yn:F

    goto :goto_47
.end method

.method public Do(F)V
    .registers 4

    .prologue
    .line 34
    iget v0, p0, Lcom/android/common/ui/Z;->yi:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    .line 35
    return-void

    .line 37
    :cond_e
    iput p1, p0, Lcom/android/common/ui/Z;->yi:F

    .line 33
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .registers 14

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v11, 0x43b40000    # 360.0f

    const/high16 v10, 0x43340000    # 180.0f

    .line 67
    iget-object v2, p0, Lcom/android/common/ui/Z;->yq:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    .line 68
    return v1

    .line 70
    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    .line 75
    iget v2, p0, Lcom/android/common/ui/Z;->yn:F

    iget v5, p0, Lcom/android/common/ui/Z;->yt:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_3e

    .line 76
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    .line 77
    iget-wide v8, p0, Lcom/android/common/ui/Z;->yj:J

    cmp-long v2, v6, v8

    if-gez v2, :cond_82

    .line 78
    iget-wide v8, p0, Lcom/android/common/ui/Z;->yk:J

    sub-long/2addr v6, v8

    long-to-int v0, v6

    .line 79
    iget v2, p0, Lcom/android/common/ui/Z;->ys:F

    .line 80
    iget-boolean v5, p0, Lcom/android/common/ui/Z;->yl:Z

    if-eqz v5, :cond_80

    .line 79
    :goto_33
    mul-int/lit16 v0, v0, 0x2d0

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    add-float/2addr v0, v2

    .line 81
    add-float/2addr v0, v11

    rem-float/2addr v0, v11

    iput v0, p0, Lcom/android/common/ui/Z;->yn:F

    move v0, v1

    .line 91
    :cond_3e
    :goto_3e
    iget v2, p0, Lcom/android/common/ui/Z;->yn:F

    .line 92
    iget v5, p0, Lcom/android/common/ui/Z;->yi:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4e

    .line 93
    sub-float v2, v11, v2

    .line 94
    cmpg-float v5, v2, v10

    if-gez v5, :cond_87

    .line 95
    add-float/2addr v2, v10

    .line 102
    :cond_4e
    :goto_4e
    iget-object v5, p0, Lcom/android/common/ui/Z;->yr:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    div-int/lit8 v1, v3, 0x2

    int-to-float v1, v1

    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v2, v1, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 105
    iget-object v1, p0, Lcom/android/common/ui/Z;->ym:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/common/ui/Z;->ym:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/common/ui/Z;->ym:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v4, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/ui/Z;->yr:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 107
    return v0

    .line 80
    :cond_80
    neg-int v0, v0

    goto :goto_33

    .line 84
    :cond_82
    iget v2, p0, Lcom/android/common/ui/Z;->yt:F

    iput v2, p0, Lcom/android/common/ui/Z;->yn:F

    goto :goto_3e

    .line 97
    :cond_87
    sub-float/2addr v2, v10

    goto :goto_4e
.end method

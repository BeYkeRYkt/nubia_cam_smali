.class public Lcom/android/common/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field qf:Landroid/graphics/Bitmap;

.field qg:J

.field qh:Ljava/lang/Boolean;

.field qi:Z

.field qj:Landroid/graphics/Bitmap;

.field qk:J

.field ql:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/l;->qh:Ljava/lang/Boolean;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/l;->ql:Landroid/graphics/Paint;

    .line 20
    iput-boolean v1, p0, Lcom/android/common/ui/l;->qi:Z

    .line 21
    iput-wide v2, p0, Lcom/android/common/ui/l;->qg:J

    .line 22
    iput-wide v2, p0, Lcom/android/common/ui/l;->qk:J

    .line 26
    invoke-direct {p0, p1}, Lcom/android/common/ui/l;->vD(Landroid/content/res/Resources;)V

    .line 25
    return-void
.end method

.method private vC(II)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 103
    iget-object v1, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt p1, v1, :cond_11

    iget-object v1, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

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

.method private vD(Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 107
    new-instance v0, Lcom/android/common/ui/as;

    invoke-direct {v0, p0, p1}, Lcom/android/common/ui/as;-><init>(Lcom/android/common/ui/l;Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Lcom/android/common/ui/as;->start()V

    .line 106
    return-void
.end method

.method private vG(II)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 89
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 90
    int-to-float v1, p2

    iget-object v2, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    .line 93
    iget-object v2, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 94
    iget-object v3, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 92
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    .line 96
    iget-object v1, p0, Lcom/android/common/ui/l;->qj:Landroid/graphics/Bitmap;

    .line 97
    iget-object v2, p0, Lcom/android/common/ui/l;->qj:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 98
    iget-object v3, p0, Lcom/android/common/ui/l;->qj:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 96
    invoke-static {v1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/l;->qj:Landroid/graphics/Bitmap;

    .line 88
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .registers 15

    .prologue
    const/high16 v12, 0x42c80000    # 100.0f

    const v11, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f800000    # 1.0f

    const v10, 0x3e4ccccc    # 0.19999999f

    const/4 v3, 0x1

    .line 46
    iget-object v0, p0, Lcom/android/common/ui/l;->qh:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    .line 47
    return v3

    .line 49
    :cond_14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 53
    invoke-direct {p0, v4, v5}, Lcom/android/common/ui/l;->vC(II)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 54
    invoke-direct {p0, v4, v5}, Lcom/android/common/ui/l;->vG(II)V

    .line 57
    :cond_29
    const/4 v2, 0x0

    .line 58
    iget-boolean v0, p0, Lcom/android/common/ui/l;->qi:Z

    if-eqz v0, :cond_95

    .line 59
    iget-wide v8, p0, Lcom/android/common/ui/l;->qg:J

    sub-long/2addr v6, v8

    long-to-float v0, v6

    div-float/2addr v0, v12

    .line 60
    cmpl-float v6, v0, v1

    if-ltz v6, :cond_93

    move v0, v1

    .line 65
    :goto_38
    iget-object v6, p0, Lcom/android/common/ui/l;->ql:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 67
    mul-float v3, v10, v0

    sub-float v3, v1, v3

    mul-float/2addr v0, v10

    sub-float v0, v1, v0

    div-int/lit8 v1, v4, 0x2

    int-to-float v1, v1

    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v3, v0, v1, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 68
    iget-object v0, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v4, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v5, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v6, p0, Lcom/android/common/ui/l;->ql:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 82
    :goto_70
    iget-object v0, p0, Lcom/android/common/ui/l;->ql:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 83
    iget-object v0, p0, Lcom/android/common/ui/l;->qj:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/common/ui/l;->qj:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v4, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/common/ui/l;->qj:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v5, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/ui/l;->ql:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 85
    return v2

    :cond_93
    move v2, v3

    .line 63
    goto :goto_38

    .line 70
    :cond_95
    iget-boolean v0, p0, Lcom/android/common/ui/l;->qi:Z

    if-nez v0, :cond_e1

    iget-wide v0, p0, Lcom/android/common/ui/l;->qk:J

    sub-long v0, v6, v0

    const-wide/16 v8, 0x64

    cmp-long v0, v0, v8

    if-gez v0, :cond_e1

    .line 71
    iget-wide v0, p0, Lcom/android/common/ui/l;->qk:J

    sub-long v0, v6, v0

    long-to-float v0, v0

    div-float/2addr v0, v12

    .line 73
    iget-object v1, p0, Lcom/android/common/ui/l;->ql:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 75
    mul-float v1, v10, v0

    add-float/2addr v1, v11

    mul-float/2addr v0, v10

    add-float/2addr v0, v11

    div-int/lit8 v2, v4, 0x2

    int-to-float v2, v2

    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v1, v0, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 76
    iget-object v0, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v4, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v2, v5, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v6, p0, Lcom/android/common/ui/l;->ql:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v2, v3

    .line 70
    goto :goto_70

    .line 79
    :cond_e1
    iget-object v0, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v4, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v5, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v6, p0, Lcom/android/common/ui/l;->ql:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_70
.end method

.method public vE()V
    .registers 3

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/l;->qi:Z

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/ui/l;->qg:J

    .line 29
    return-void
.end method

.method public vF()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x64

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/l;->qi:Z

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    iget-wide v2, p0, Lcom/android/common/ui/l;->qg:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_19

    .line 38
    iget-wide v2, p0, Lcom/android/common/ui/l;->qg:J

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/common/ui/l;->qk:J

    .line 34
    :goto_18
    return-void

    .line 40
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/ui/l;->qk:J

    goto :goto_18
.end method

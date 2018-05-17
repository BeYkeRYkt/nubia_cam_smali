.class public Lcom/android/common/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ad:Landroid/graphics/Rect;

.field private ae:Landroid/graphics/Rect;

.field private af:J

.field private ag:Z

.field private ah:Ljava/lang/Object;

.field private ai:Landroid/graphics/Rect;

.field private aj:Landroid/view/animation/Interpolator;

.field private ak:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/common/a/k;->ak:Landroid/graphics/Rect;

    .line 10
    iput-object v0, p0, Lcom/android/common/a/k;->ai:Landroid/graphics/Rect;

    .line 11
    iput-object v0, p0, Lcom/android/common/a/k;->ae:Landroid/graphics/Rect;

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/common/a/k;->ad:Landroid/graphics/Rect;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/a/k;->ag:Z

    .line 15
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/common/a/k;->af:J

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/a/k;->ah:Ljava/lang/Object;

    .line 20
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/common/a/k;->aj:Landroid/view/animation/Interpolator;

    .line 19
    return-void
.end method

.method private aY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 90
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_1a

    .line 91
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-ne v1, v2, :cond_1a

    .line 92
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-ne v1, v2, :cond_1a

    .line 93
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v2, :cond_1a

    const/4 v0, 0x1

    .line 90
    :cond_1a
    return v0
.end method

.method private aZ()V
    .registers 3

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/a/k;->ag:Z

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/a/k;->af:J

    .line 84
    return-void
.end method


# virtual methods
.method public aV(Lcom/android/common/a/a;)Landroid/graphics/Rect;
    .registers 10

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/common/a/k;->ah:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_3
    iget-boolean v0, p0, Lcom/android/common/a/k;->ag:Z

    if-nez v0, :cond_b

    .line 57
    iget-object v0, p0, Lcom/android/common/a/k;->ak:Landroid/graphics/Rect;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_af

    monitor-exit v1

    return-object v0

    .line 60
    :cond_b
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 61
    iget-wide v4, p0, Lcom/android/common/a/k;->af:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-lez v0, :cond_98

    .line 62
    iget-wide v4, p0, Lcom/android/common/a/k;->af:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_98

    .line 63
    iget-wide v4, p0, Lcom/android/common/a/k;->af:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x12c

    cmp-long v0, v4, v6

    if-gtz v0, :cond_98

    .line 64
    iget-object v0, p0, Lcom/android/common/a/k;->aj:Landroid/view/animation/Interpolator;

    iget-wide v4, p0, Lcom/android/common/a/k;->af:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x43960000    # 300.0f

    div-float/2addr v2, v3

    invoke-interface {v0, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 65
    iget-object v2, p0, Lcom/android/common/a/k;->ad:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/common/a/k;->ae:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/a/k;->ai:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/common/a/k;->ae:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 66
    iget-object v2, p0, Lcom/android/common/a/k;->ad:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/common/a/k;->ae:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/a/k;->ai:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/common/a/k;->ae:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 67
    iget-object v2, p0, Lcom/android/common/a/k;->ad:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/common/a/k;->ae:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/a/k;->ai:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/common/a/k;->ae:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 68
    iget-object v2, p0, Lcom/android/common/a/k;->ad:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/common/a/k;->ae:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/a/k;->ai:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/common/a/k;->ae:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/a/a;->G(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/common/a/k;->ad:Landroid/graphics/Rect;
    :try_end_96
    .catchall {:try_start_b .. :try_end_96} :catchall_af

    monitor-exit v1

    return-object v0

    .line 73
    :cond_98
    const/4 v0, 0x0

    :try_start_99
    iput-boolean v0, p0, Lcom/android/common/a/k;->ag:Z

    .line 74
    iget-object v0, p0, Lcom/android/common/a/k;->ai:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/common/a/k;->ak:Landroid/graphics/Rect;

    .line 75
    iget-object v0, p0, Lcom/android/common/a/k;->ai:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/common/a/k;->ad:Landroid/graphics/Rect;

    .line 76
    iget-object v0, p0, Lcom/android/common/a/k;->ai:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/common/a/k;->ae:Landroid/graphics/Rect;

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/common/a/a;->G(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/common/a/k;->ak:Landroid/graphics/Rect;
    :try_end_ad
    .catchall {:try_start_99 .. :try_end_ad} :catchall_af

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_af
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public aW()Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/common/a/k;->ag:Z

    return v0
.end method

.method public aX(Landroid/graphics/Rect;Z)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 24
    iget-object v2, p0, Lcom/android/common/a/k;->ah:Ljava/lang/Object;

    monitor-enter v2

    .line 25
    const/4 v1, 0x0

    .line 26
    :try_start_5
    iget-object v3, p0, Lcom/android/common/a/k;->ak:Landroid/graphics/Rect;

    if-eqz v3, :cond_2b

    if-eqz p2, :cond_2b

    .line 31
    iget-object v3, p0, Lcom/android/common/a/k;->ai:Landroid/graphics/Rect;

    if-nez v3, :cond_17

    iget-object v3, p0, Lcom/android/common/a/k;->ak:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v3}, Lcom/android/common/a/k;->aY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 35
    :cond_17
    iget-object v3, p0, Lcom/android/common/a/k;->ai:Landroid/graphics/Rect;

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/android/common/a/k;->ai:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v3}, Lcom/android/common/a/k;->aY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_23
    move v0, v1

    .line 47
    :goto_24
    if-eqz v0, :cond_29

    .line 48
    invoke-direct {p0}, Lcom/android/common/a/k;->aZ()V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_3c

    :cond_29
    monitor-exit v2

    .line 50
    return v0

    .line 27
    :cond_2b
    :try_start_2b
    iput-object p1, p0, Lcom/android/common/a/k;->ak:Landroid/graphics/Rect;

    .line 28
    iput-object p1, p0, Lcom/android/common/a/k;->ai:Landroid/graphics/Rect;

    .line 29
    iput-object p1, p0, Lcom/android/common/a/k;->ad:Landroid/graphics/Rect;

    .line 30
    iput-object p1, p0, Lcom/android/common/a/k;->ae:Landroid/graphics/Rect;

    move v0, v1

    .line 26
    goto :goto_24

    .line 32
    :cond_35
    iput-object p1, p0, Lcom/android/common/a/k;->ai:Landroid/graphics/Rect;

    .line 33
    iget-object v1, p0, Lcom/android/common/a/k;->ak:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/common/a/k;->ae:Landroid/graphics/Rect;
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_3c

    goto :goto_24

    .line 24
    :catchall_3c
    move-exception v0

    monitor-exit v2

    throw v0

    .line 36
    :cond_3f
    :try_start_3f
    iput-object p1, p0, Lcom/android/common/a/k;->ai:Landroid/graphics/Rect;

    .line 37
    iget-object v1, p0, Lcom/android/common/a/k;->ad:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/common/a/k;->ae:Landroid/graphics/Rect;
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_3c

    goto :goto_24
.end method

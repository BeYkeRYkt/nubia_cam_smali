.class public Lcom/android/common/image3d/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private co:I

.field private cp:I

.field private cq:I

.field private cr:Z

.field private cs:[B

.field private ct:I

.field private cu:F

.field private cv:F


# direct methods
.method public constructor <init>(IIF)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/image3d/k;->cv:F

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/image3d/k;->cr:Z

    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/common/image3d/k;->cu:F

    .line 9
    iput v1, p0, Lcom/android/common/image3d/k;->co:I

    .line 10
    iput v1, p0, Lcom/android/common/image3d/k;->cq:I

    .line 11
    iput v1, p0, Lcom/android/common/image3d/k;->cp:I

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/image3d/k;->ct:I

    .line 13
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/common/image3d/k;->cs:[B

    .line 16
    iput p1, p0, Lcom/android/common/image3d/k;->cq:I

    .line 17
    iput p2, p0, Lcom/android/common/image3d/k;->co:I

    .line 18
    iput p3, p0, Lcom/android/common/image3d/k;->cu:F

    .line 15
    return-void
.end method


# virtual methods
.method public bS(FF)I
    .registers 9

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 69
    iget-object v1, p0, Lcom/android/common/image3d/k;->cs:[B

    monitor-enter v1

    .line 70
    const/4 v0, 0x0

    .line 72
    :try_start_7
    iget v2, p0, Lcom/android/common/image3d/k;->co:I

    packed-switch v2, :pswitch_data_76

    .line 86
    :goto_c
    iget-boolean v2, p0, Lcom/android/common/image3d/k;->cr:Z

    if-eqz v2, :cond_2f

    .line 87
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/common/image3d/k;->cr:Z

    .line 88
    iget v2, p0, Lcom/android/common/image3d/k;->cp:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/android/common/image3d/k;->cv:F

    .line 89
    iget v0, p0, Lcom/android/common/image3d/k;->cp:I
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_65

    monitor-exit v1

    return v0

    .line 74
    :pswitch_1d
    neg-float v0, p2

    :try_start_1e
    iget v2, p0, Lcom/android/common/image3d/k;->cu:F

    mul-float/2addr v0, v2

    .line 75
    goto :goto_c

    .line 77
    :pswitch_22
    iget v0, p0, Lcom/android/common/image3d/k;->cu:F

    mul-float/2addr v0, p2

    .line 78
    goto :goto_c

    .line 80
    :pswitch_26
    iget v0, p0, Lcom/android/common/image3d/k;->cu:F

    mul-float/2addr v0, p1

    .line 81
    goto :goto_c

    .line 83
    :pswitch_2a
    neg-float v0, p1

    iget v2, p0, Lcom/android/common/image3d/k;->cu:F

    mul-float/2addr v0, v2

    .line 84
    goto :goto_c

    .line 91
    :cond_2f
    iget v2, p0, Lcom/android/common/image3d/k;->cv:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4c

    .line 92
    iput v0, p0, Lcom/android/common/image3d/k;->cv:F

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/image3d/k;->cp:I

    .line 100
    :goto_3a
    iget v0, p0, Lcom/android/common/image3d/k;->ct:I

    if-eq v0, v5, :cond_44

    iget v0, p0, Lcom/android/common/image3d/k;->ct:I

    iget v2, p0, Lcom/android/common/image3d/k;->cp:I

    if-eq v0, v2, :cond_73

    .line 101
    :cond_44
    iget v0, p0, Lcom/android/common/image3d/k;->cp:I

    iput v0, p0, Lcom/android/common/image3d/k;->ct:I

    .line 102
    iget v0, p0, Lcom/android/common/image3d/k;->cp:I
    :try_end_4a
    .catchall {:try_start_1e .. :try_end_4a} :catchall_65

    monitor-exit v1

    return v0

    .line 94
    :cond_4c
    :try_start_4c
    iget v2, p0, Lcom/android/common/image3d/k;->cv:F

    iget v3, p0, Lcom/android/common/image3d/k;->cq:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sub-float/2addr v2, v4

    cmpl-float v2, v0, v2

    if-lez v2, :cond_68

    .line 95
    iget v2, p0, Lcom/android/common/image3d/k;->cq:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/common/image3d/k;->cv:F

    .line 96
    iget v0, p0, Lcom/android/common/image3d/k;->cq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/common/image3d/k;->cp:I
    :try_end_64
    .catchall {:try_start_4c .. :try_end_64} :catchall_65

    goto :goto_3a

    .line 69
    :catchall_65
    move-exception v0

    monitor-exit v1

    throw v0

    .line 98
    :cond_68
    :try_start_68
    iget v2, p0, Lcom/android/common/image3d/k;->cv:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/common/image3d/k;->cp:I
    :try_end_72
    .catchall {:try_start_68 .. :try_end_72} :catchall_65

    goto :goto_3a

    :cond_73
    monitor-exit v1

    .line 104
    return v5

    .line 72
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_22
        :pswitch_26
        :pswitch_2a
    .end packed-switch
.end method

.method public bT(I)V
    .registers 4

    .prologue
    .line 22
    iget-object v1, p0, Lcom/android/common/image3d/k;->cs:[B

    monitor-enter v1

    .line 23
    :try_start_3
    iput p1, p0, Lcom/android/common/image3d/k;->cp:I

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/image3d/k;->cr:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 21
    return-void

    .line 22
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

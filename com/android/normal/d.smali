.class Lcom/android/normal/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private baX:I

.field private baY:F

.field private baZ:Z

.field private bba:J

.field final synthetic bbb:Lcom/android/normal/b;


# direct methods
.method public constructor <init>(Lcom/android/normal/b;FI)V
    .registers 6

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/normal/d;->bbb:Lcom/android/normal/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/normal/d;->baZ:Z

    .line 653
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/normal/d;->bba:J

    .line 655
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/normal/d;->baY:F

    .line 656
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/normal/d;->baX:I

    .line 659
    iput p2, p0, Lcom/android/normal/d;->baY:F

    .line 660
    iput p3, p0, Lcom/android/normal/d;->baX:I

    .line 658
    return-void
.end method

.method private bso(FI)J
    .registers 6

    .prologue
    .line 675
    const-wide/16 v0, 0x0

    .line 676
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_d

    .line 677
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    float-to-long v0, v0

    .line 681
    :cond_c
    :goto_c
    return-wide v0

    .line 678
    :cond_d
    if-lez p2, :cond_c

    .line 679
    mul-int/lit16 v0, p2, 0x3e8

    int-to-long v0, v0

    goto :goto_c
.end method


# virtual methods
.method public bsp()V
    .registers 2

    .prologue
    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/normal/d;->baZ:Z

    .line 664
    monitor-enter p0

    .line 665
    :try_start_4
    invoke-virtual {p0}, Lcom/android/normal/d;->notify()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 662
    return-void

    .line 664
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 685
    iget v0, p0, Lcom/android/normal/d;->baY:F

    iget v1, p0, Lcom/android/normal/d;->baX:I

    invoke-direct {p0, v0, v1}, Lcom/android/normal/d;->bso(FI)J

    move-result-wide v2

    .line 687
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_3e

    .line 688
    return-void

    .line 695
    :cond_10
    iget-object v0, p0, Lcom/android/normal/d;->bbb:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsf(Lcom/android/normal/b;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/normal/d;->bba:J

    sub-long/2addr v0, v4

    long-to-double v0, v0

    long-to-double v4, v2

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 697
    iget-object v1, p0, Lcom/android/normal/d;->bbb:Lcom/android/normal/b;

    invoke-static {v1}, Lcom/android/normal/b;->bsh(Lcom/android/normal/b;)Lcom/android/normal/c;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/android/normal/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 701
    :try_start_37
    monitor-enter p0
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_38} :catch_51

    .line 702
    const-wide/16 v0, 0x64

    :try_start_3a
    invoke-virtual {p0, v0, v1}, Lcom/android/normal/d;->wait(J)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_4e

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_3e} :catch_51

    .line 692
    :cond_3e
    :goto_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/normal/d;->bba:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_56

    .line 693
    iget-boolean v0, p0, Lcom/android/normal/d;->baZ:Z

    if-nez v0, :cond_10

    .line 694
    return-void

    .line 701
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit p0

    throw v0
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_51} :catch_51

    .line 704
    :catch_51
    move-exception v0

    .line 705
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3e

    .line 711
    :cond_56
    iget-object v0, p0, Lcom/android/normal/d;->bbb:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsf(Lcom/android/normal/b;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 712
    iget-object v0, p0, Lcom/android/normal/d;->bbb:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsh(Lcom/android/normal/b;)Lcom/android/normal/c;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/normal/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 684
    :cond_71
    return-void
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 671
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/normal/d;->bba:J

    .line 672
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 670
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

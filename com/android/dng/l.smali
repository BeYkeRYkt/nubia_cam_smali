.class Lcom/android/dng/l;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private aAU:Z

.field private aAV:J

.field final synthetic aAW:Lcom/android/dng/j;


# direct methods
.method private constructor <init>(Lcom/android/dng/j;)V
    .registers 4

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/dng/l;->aAW:Lcom/android/dng/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dng/l;->aAU:Z

    .line 477
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/dng/l;->aAV:J

    .line 475
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dng/j;Lcom/android/dng/l;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/dng/l;-><init>(Lcom/android/dng/j;)V

    return-void
.end method


# virtual methods
.method public aQf()V
    .registers 2

    .prologue
    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dng/l;->aAU:Z

    .line 481
    monitor-enter p0

    .line 482
    :try_start_4
    invoke-virtual {p0}, Lcom/android/dng/l;->notify()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 479
    return-void

    .line 481
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 8

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    .line 495
    iget-object v2, p0, Lcom/android/dng/l;->aAW:Lcom/android/dng/j;

    invoke-static {v2}, Lcom/android/dng/j;->aPR(Lcom/android/dng/j;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v2

    .line 496
    const-string/jumbo v3, "DngFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string/jumbo v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    move-wide v2, v0

    .line 504
    :goto_35
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_74

    .line 505
    return-void

    .line 501
    :cond_3c
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    move-wide v2, v0

    goto :goto_35

    .line 512
    :cond_46
    iget-object v0, p0, Lcom/android/dng/l;->aAW:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPT(Lcom/android/dng/j;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/dng/l;->aAV:J

    sub-long/2addr v0, v4

    long-to-double v0, v0

    long-to-double v4, v2

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 514
    iget-object v1, p0, Lcom/android/dng/l;->aAW:Lcom/android/dng/j;

    invoke-static {v1}, Lcom/android/dng/j;->aPW(Lcom/android/dng/j;)Lcom/android/dng/k;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/android/dng/k;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 518
    :try_start_6d
    monitor-enter p0
    :try_end_6e
    .catch Ljava/lang/InterruptedException; {:try_start_6d .. :try_end_6e} :catch_87

    .line 519
    const-wide/16 v0, 0x64

    :try_start_70
    invoke-virtual {p0, v0, v1}, Lcom/android/dng/l;->wait(J)V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_84

    :try_start_73
    monitor-exit p0
    :try_end_74
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_74} :catch_87

    .line 509
    :cond_74
    :goto_74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/dng/l;->aAV:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_8c

    .line 510
    iget-boolean v0, p0, Lcom/android/dng/l;->aAU:Z

    if-nez v0, :cond_46

    .line 511
    return-void

    .line 518
    :catchall_84
    move-exception v0

    :try_start_85
    monitor-exit p0

    throw v0
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_87} :catch_87

    .line 521
    :catch_87
    move-exception v0

    .line 522
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_74

    .line 528
    :cond_8c
    iget-object v0, p0, Lcom/android/dng/l;->aAW:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPT(Lcom/android/dng/j;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 529
    iget-object v0, p0, Lcom/android/dng/l;->aAW:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPW(Lcom/android/dng/j;)Lcom/android/dng/k;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/dng/k;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 493
    :cond_a7
    return-void
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 488
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dng/l;->aAV:J

    .line 489
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 487
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

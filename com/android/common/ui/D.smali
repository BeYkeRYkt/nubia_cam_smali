.class Lcom/android/common/ui/D;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private tZ:Z

.field private ua:Landroid/view/SurfaceHolder;

.field final synthetic ub:Lcom/android/common/ui/CameraSelectButton;


# direct methods
.method public constructor <init>(Lcom/android/common/ui/CameraSelectButton;Landroid/view/SurfaceHolder;)V
    .registers 4

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/common/ui/D;->ub:Lcom/android/common/ui/CameraSelectButton;

    .line 477
    const-string/jumbo v0, "UpdateThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/D;->tZ:Z

    .line 478
    iput-object p2, p0, Lcom/android/common/ui/D;->ua:Landroid/view/SurfaceHolder;

    .line 476
    return-void
.end method


# virtual methods
.method public declared-synchronized quit()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 486
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/common/ui/D;->tZ:Z

    .line 487
    invoke-virtual {p0}, Lcom/android/common/ui/D;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 485
    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 492
    const-string/jumbo v0, "CameraSelectButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UpdateThread start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/ui/D;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_1e
    :goto_1e
    iget-boolean v0, p0, Lcom/android/common/ui/D;->tZ:Z

    if-eqz v0, :cond_5e

    .line 495
    monitor-enter p0

    .line 496
    :try_start_23
    iget-object v0, p0, Lcom/android/common/ui/D;->ub:Lcom/android/common/ui/CameraSelectButton;

    iget-object v1, p0, Lcom/android/common/ui/D;->ua:Landroid/view/SurfaceHolder;

    invoke-static {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->yr(Lcom/android/common/ui/CameraSelectButton;Landroid/view/SurfaceHolder;)Z
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_5b

    move-result v0

    .line 498
    if-nez v0, :cond_3a

    .line 499
    :try_start_2d
    iget-object v0, p0, Lcom/android/common/ui/D;->ub:Lcom/android/common/ui/CameraSelectButton;

    invoke-static {v0}, Lcom/android/common/ui/CameraSelectButton;->yp(Lcom/android/common/ui/CameraSelectButton;)Lcom/android/common/ui/B;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/B;->sendEmptyMessage(I)Z

    .line 500
    invoke-virtual {p0}, Lcom/android/common/ui/D;->wait()V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_3a} :catch_50
    .catchall {:try_start_2d .. :try_end_3a} :catchall_5b

    :cond_3a
    :goto_3a
    monitor-exit p0

    .line 506
    iget-boolean v0, p0, Lcom/android/common/ui/D;->tZ:Z

    if-eqz v0, :cond_1e

    .line 508
    const-wide/16 v0, 0x1e

    :try_start_41
    invoke-static {v0, v1}, Lcom/android/common/ui/D;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_1e

    .line 509
    :catch_45
    move-exception v0

    .line 510
    const-string/jumbo v0, "CameraSelectButton"

    const-string/jumbo v1, "get interrupted exception"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 502
    :catch_50
    move-exception v0

    .line 503
    :try_start_51
    const-string/jumbo v0, "CameraSelectButton"

    const-string/jumbo v1, "get interrupted exception"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_5b

    goto :goto_3a

    .line 495
    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 514
    :cond_5e
    const-string/jumbo v0, "CameraSelectButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UpdateThread exit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/ui/D;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/D;->ua:Landroid/view/SurfaceHolder;

    .line 491
    return-void
.end method

.method public declared-synchronized yy()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 482
    :try_start_1
    invoke-virtual {p0}, Lcom/android/common/ui/D;->notify()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 481
    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

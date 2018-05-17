.class public Lcom/android/common/cameradevice/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field MT:Landroid/os/ConditionVariable;

.field MU:Z

.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/common/cameradevice/f;-><init>(Z)V

    .line 10
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, "SyncConditionVariable"

    iput-object v0, p0, Lcom/android/common/cameradevice/f;->TAG:Ljava/lang/String;

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/cameradevice/f;->MU:Z

    .line 15
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, p1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/android/common/cameradevice/f;->MT:Landroid/os/ConditionVariable;

    .line 16
    iput-boolean p1, p0, Lcom/android/common/cameradevice/f;->MU:Z

    .line 14
    return-void
.end method


# virtual methods
.method public Kd()V
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/common/cameradevice/f;->MT:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 23
    return-void
.end method

.method public declared-synchronized Ke()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/android/common/cameradevice/f;->MT:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/cameradevice/f;->MU:Z

    .line 45
    invoke-virtual {p0}, Lcom/android/common/cameradevice/f;->notify()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    .line 42
    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 28
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/common/cameradevice/f;->MU:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5e

    if-nez v0, :cond_61

    .line 30
    :try_start_5
    iget-object v0, p0, Lcom/android/common/cameradevice/f;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " wait"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/common/cameradevice/f;->wait()V

    .line 32
    iget-object v0, p0, Lcom/android/common/cameradevice/f;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " wake up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_58} :catch_59
    .catchall {:try_start_5 .. :try_end_58} :catchall_5e

    goto :goto_1

    .line 34
    :catch_59
    move-exception v0

    .line 35
    :try_start_5a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_1

    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 38
    :cond_61
    :try_start_61
    iget-object v0, p0, Lcom/android/common/cameradevice/f;->MT:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/cameradevice/f;->MU:Z
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_5e

    monitor-exit p0

    .line 27
    return-void
.end method

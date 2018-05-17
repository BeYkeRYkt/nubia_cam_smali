.class public Lcom/android/common/appService/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private gW:Lcom/android/common/appService/W;

.field private gX:Z

.field private gY:Z


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/appService/a;->gW:Lcom/android/common/appService/W;

    .line 9
    iput-boolean v1, p0, Lcom/android/common/appService/a;->gX:Z

    .line 10
    iput-boolean v1, p0, Lcom/android/common/appService/a;->gY:Z

    .line 13
    iput-object p1, p0, Lcom/android/common/appService/a;->gW:Lcom/android/common/appService/W;

    .line 12
    return-void
.end method


# virtual methods
.method public hJ()V
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/common/appService/a;->gX:Z

    if-eqz v0, :cond_5

    .line 26
    return-void

    .line 29
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/appService/a;->gX:Z

    .line 30
    monitor-enter p0

    .line 31
    :try_start_9
    invoke-virtual {p0}, Lcom/android/common/appService/a;->notify()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    monitor-exit p0

    .line 35
    :try_start_d
    invoke-virtual {p0}, Lcom/android/common/appService/a;->join()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_14

    .line 24
    :goto_10
    return-void

    .line 30
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 36
    :catch_14
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_10
.end method

.method public hK()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/appService/a;->gY:Z

    .line 49
    monitor-enter p0

    .line 50
    :try_start_4
    invoke-virtual {p0}, Lcom/android/common/appService/a;->notify()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 47
    return-void

    .line 49
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hL()V
    .registers 2

    .prologue
    .line 42
    monitor-enter p0

    .line 43
    :try_start_1
    invoke-virtual {p0}, Lcom/android/common/appService/a;->notify()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 56
    :goto_0
    iget-boolean v0, p0, Lcom/android/common/appService/a;->gX:Z

    if-nez v0, :cond_34

    .line 57
    monitor-enter p0

    .line 58
    :try_start_5
    iget-boolean v0, p0, Lcom/android/common/appService/a;->gY:Z

    if-eqz v0, :cond_17

    .line 59
    iget-object v0, p0, Lcom/android/common/appService/a;->gW:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asi()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/appService/a;->gY:Z
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_31

    .line 63
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/android/common/appService/a;->wait()V

    .line 64
    iget-boolean v0, p0, Lcom/android/common/appService/a;->gX:Z
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1c} :catch_20
    .catchall {:try_start_17 .. :try_end_1c} :catchall_31

    if-eqz v0, :cond_24

    monitor-exit p0

    goto :goto_0

    .line 67
    :catch_20
    move-exception v0

    .line 68
    :try_start_21
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_31

    :cond_24
    monitor-exit p0

    .line 71
    iget-object v0, p0, Lcom/android/common/appService/a;->gW:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asi()V

    goto :goto_0

    .line 57
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :cond_34
    const-string/jumbo v0, "ParametersThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "end tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/appService/a;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public declared-synchronized start()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 18
    :try_start_1
    const-string/jumbo v0, "ParametersThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/appService/a;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/android/common/appService/a;->gW:Lcom/android/common/appService/W;

    if-eqz v0, :cond_26

    .line 20
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    :cond_26
    monitor-exit p0

    .line 17
    return-void

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

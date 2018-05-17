.class final Lcom/android/common/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic akD:Lcom/android/common/l;


# direct methods
.method constructor <init>(Lcom/android/common/l;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x3e8

    .line 55
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-static {v0}, Lcom/android/common/l;->aqG(Lcom/android/common/l;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 57
    :try_start_a
    iget-object v0, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/common/l;->aqO(Lcom/android/common/l;J)J

    .line 58
    iget-object v0, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-static {v0}, Lcom/android/common/l;->aqK(Lcom/android/common/l;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-static {v2}, Lcom/android/common/l;->aqI(Lcom/android/common/l;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-static {v2}, Lcom/android/common/l;->aqJ(Lcom/android/common/l;)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-ltz v0, :cond_53

    .line 59
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 60
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 61
    iget-object v1, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-static {v1}, Lcom/android/common/l;->aqJ(Lcom/android/common/l;)I

    move-result v1

    int-to-long v2, v1

    mul-long/2addr v2, v6

    long-to-int v1, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 62
    iget-object v1, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-static {v1}, Lcom/android/common/l;->aqE(Lcom/android/common/l;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    iget-object v0, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-static {v0}, Lcom/android/common/l;->aqJ(Lcom/android/common/l;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/common/l;->aqN(Lcom/android/common/l;I)I

    .line 65
    :cond_53
    iget-object v0, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-static {v0}, Lcom/android/common/l;->aqK(Lcom/android/common/l;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-static {v2}, Lcom/android/common/l;->aqI(Lcom/android/common/l;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-static {v2}, Lcom/android/common/l;->aqH(Lcom/android/common/l;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-static {v0}, Lcom/android/common/l;->aqH(Lcom/android/common/l;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-static {v1}, Lcom/android/common/l;->aqF(Lcom/android/common/l;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/android/common/l;->aqM(Lcom/android/common/l;J)J

    .line 67
    iget-object v0, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-static {v0}, Lcom/android/common/l;->aqE(Lcom/android/common/l;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    iget-object v0, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-static {v0}, Lcom/android/common/l;->aqG(Lcom/android/common/l;)Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_89} :catch_a6

    move-result v0

    if-nez v0, :cond_8d

    .line 54
    :cond_8c
    return-void

    .line 73
    :cond_8d
    :try_start_8d
    monitor-enter p0
    :try_end_8e
    .catch Ljava/lang/InterruptedException; {:try_start_8d .. :try_end_8e} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8e} :catch_a6

    .line 74
    :try_start_8e
    iget-object v0, p0, Lcom/android/common/L;->akD:Lcom/android/common/l;

    invoke-static {v0}, Lcom/android/common/l;->aqL(Lcom/android/common/l;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/common/L;->wait(J)V
    :try_end_97
    .catchall {:try_start_8e .. :try_end_97} :catchall_b5

    :try_start_97
    monitor-exit p0
    :try_end_98
    .catch Ljava/lang/InterruptedException; {:try_start_97 .. :try_end_98} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_98} :catch_a6

    goto/16 :goto_2

    .line 76
    :catch_9a
    move-exception v0

    .line 77
    :try_start_9b
    const-string/jumbo v1, "MyTimer"

    const-string/jumbo v2, "timer wait error"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a4} :catch_a6

    goto/16 :goto_2

    .line 80
    :catch_a6
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    const-string/jumbo v1, "MyTimer"

    const-string/jumbo v2, "MyTimer run failed!"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 73
    :catchall_b5
    move-exception v0

    :try_start_b6
    monitor-exit p0

    throw v0
    :try_end_b8
    .catch Ljava/lang/InterruptedException; {:try_start_b6 .. :try_end_b8} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b8} :catch_a6
.end method

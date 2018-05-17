.class final Lcom/android/camera/cameraFamily/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic amH:Lcom/android/camera/cameraFamily/e;


# direct methods
.method constructor <init>(Lcom/android/camera/cameraFamily/e;)V
    .registers 2

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/camera/cameraFamily/y;->amH:Lcom/android/camera/cameraFamily/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 555
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_84

    .line 586
    :cond_7
    :goto_7
    return v4

    .line 557
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/cameraFamily/y;->amH:Lcom/android/camera/cameraFamily/e;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/e;->axD(Lcom/android/camera/cameraFamily/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 558
    :try_start_f
    iget-object v0, p0, Lcom/android/camera/cameraFamily/y;->amH:Lcom/android/camera/cameraFamily/e;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/camera/cameraFamily/e;->axI(Lcom/android/camera/cameraFamily/e;Z)Z
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_44

    monitor-exit v1

    .line 560
    iget-object v0, p0, Lcom/android/camera/cameraFamily/y;->amH:Lcom/android/camera/cameraFamily/e;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/e;->axD(Lcom/android/camera/cameraFamily/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 561
    :try_start_1d
    iget-object v0, p0, Lcom/android/camera/cameraFamily/y;->amH:Lcom/android/camera/cameraFamily/e;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/cameraFamily/e;->axI(Lcom/android/camera/cameraFamily/e;Z)Z
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_47

    monitor-exit v1

    .line 564
    iget-object v0, p0, Lcom/android/camera/cameraFamily/y;->amH:Lcom/android/camera/cameraFamily/e;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/e;->axE(Lcom/android/camera/cameraFamily/e;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 565
    iget-object v0, p0, Lcom/android/camera/cameraFamily/y;->amH:Lcom/android/camera/cameraFamily/e;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/e;->axF(Lcom/android/camera/cameraFamily/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 566
    iget-object v0, p0, Lcom/android/camera/cameraFamily/y;->amH:Lcom/android/camera/cameraFamily/e;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/e;->axF(Lcom/android/camera/cameraFamily/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 557
    :catchall_44
    move-exception v0

    monitor-exit v1

    throw v0

    .line 560
    :catchall_47
    move-exception v0

    monitor-exit v1

    throw v0

    .line 571
    :pswitch_4a
    iget-object v0, p0, Lcom/android/camera/cameraFamily/y;->amH:Lcom/android/camera/cameraFamily/e;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/e;->axD(Lcom/android/camera/cameraFamily/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 572
    :try_start_51
    iget-object v0, p0, Lcom/android/camera/cameraFamily/y;->amH:Lcom/android/camera/cameraFamily/e;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/camera/cameraFamily/e;->axI(Lcom/android/camera/cameraFamily/e;Z)Z
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_7e

    monitor-exit v1

    .line 574
    iget-object v0, p0, Lcom/android/camera/cameraFamily/y;->amH:Lcom/android/camera/cameraFamily/e;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/e;->axK(Lcom/android/camera/cameraFamily/e;)V

    .line 576
    iget-object v0, p0, Lcom/android/camera/cameraFamily/y;->amH:Lcom/android/camera/cameraFamily/e;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/e;->axD(Lcom/android/camera/cameraFamily/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 577
    :try_start_64
    iget-object v0, p0, Lcom/android/camera/cameraFamily/y;->amH:Lcom/android/camera/cameraFamily/e;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/cameraFamily/e;->axI(Lcom/android/camera/cameraFamily/e;Z)Z
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_81

    monitor-exit v1

    .line 580
    iget-object v0, p0, Lcom/android/camera/cameraFamily/y;->amH:Lcom/android/camera/cameraFamily/e;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/e;->axF(Lcom/android/camera/cameraFamily/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 581
    iget-object v0, p0, Lcom/android/camera/cameraFamily/y;->amH:Lcom/android/camera/cameraFamily/e;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/e;->axF(Lcom/android/camera/cameraFamily/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 571
    :catchall_7e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 576
    :catchall_81
    move-exception v0

    monitor-exit v1

    throw v0

    .line 555
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_8
        :pswitch_4a
    .end packed-switch
.end method

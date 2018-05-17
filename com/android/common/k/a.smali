.class public Lcom/android/common/k/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private ZF:Lcom/android/common/CameraBufferManager;

.field private ZG:I

.field private ZH:Landroid/os/Handler;

.field private ZI:Z

.field private ZJ:Landroid/hardware/Camera$Size;

.field private ZK:I


# direct methods
.method public constructor <init>(Lcom/android/common/CameraBufferManager;Landroid/os/Handler;Landroid/hardware/Camera$Size;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0xa

    const/4 v1, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/common/k/a;->ZH:Landroid/os/Handler;

    .line 13
    iput v2, p0, Lcom/android/common/k/a;->ZK:I

    .line 14
    iput-object v0, p0, Lcom/android/common/k/a;->ZF:Lcom/android/common/CameraBufferManager;

    .line 16
    iput v1, p0, Lcom/android/common/k/a;->ZG:I

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/k/a;->ZI:Z

    .line 20
    iput-object p1, p0, Lcom/android/common/k/a;->ZF:Lcom/android/common/CameraBufferManager;

    .line 21
    iput-object p2, p0, Lcom/android/common/k/a;->ZH:Landroid/os/Handler;

    .line 22
    iput v2, p0, Lcom/android/common/k/a;->ZK:I

    .line 23
    iput-object p3, p0, Lcom/android/common/k/a;->ZJ:Landroid/hardware/Camera$Size;

    .line 24
    iput v1, p0, Lcom/android/common/k/a;->ZG:I

    .line 25
    invoke-virtual {p0}, Lcom/android/common/k/a;->start()V

    .line 19
    return-void
.end method


# virtual methods
.method public aga()V
    .registers 2

    .prologue
    .line 52
    monitor-enter p0

    .line 53
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/android/common/k/a;->ZK:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 51
    return-void

    .line 52
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public agb()V
    .registers 3

    .prologue
    .line 63
    monitor-enter p0

    .line 64
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/common/k/a;->ZK:I

    .line 65
    iget-object v0, p0, Lcom/android/common/k/a;->ZF:Lcom/android/common/CameraBufferManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/CameraBufferManager;->setStopWorkFlag(Z)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/k/a;->ZI:Z
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_16

    monitor-exit p0

    .line 69
    :try_start_e
    invoke-virtual {p0}, Lcom/android/common/k/a;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_19

    .line 73
    :goto_11
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/common/k/a;->ZK:I

    .line 62
    return-void

    .line 63
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :catch_19
    move-exception v0

    goto :goto_11
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    :goto_2
    iget v0, p0, Lcom/android/common/k/a;->ZK:I

    if-nez v0, :cond_12

    .line 34
    iget-boolean v0, p0, Lcom/android/common/k/a;->ZI:Z

    if-eqz v0, :cond_11

    .line 35
    iget-object v0, p0, Lcom/android/common/k/a;->ZH:Landroid/os/Handler;

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 31
    :cond_11
    return-void

    .line 39
    :cond_12
    iget v0, p0, Lcom/android/common/k/a;->ZK:I

    if-ne v0, v5, :cond_1d

    .line 40
    iput v4, p0, Lcom/android/common/k/a;->ZK:I

    .line 41
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/common/k/a;->ZG:I

    .line 42
    iput-boolean v5, p0, Lcom/android/common/k/a;->ZI:Z

    .line 44
    :cond_1d
    iget-object v0, p0, Lcom/android/common/k/a;->ZF:Lcom/android/common/CameraBufferManager;

    iget v1, p0, Lcom/android/common/k/a;->ZG:I

    iget-object v2, p0, Lcom/android/common/k/a;->ZJ:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v3, p0, Lcom/android/common/k/a;->ZJ:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/common/CameraBufferManager;->getSlowShuttleData(III)[B

    goto :goto_2
.end method

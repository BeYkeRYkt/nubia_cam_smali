.class public final Lcom/android/common/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# instance fields
.field private UU:Lcom/android/common/appService/W;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/e/b;->UU:Lcom/android/common/appService/W;

    .line 17
    iput-object p1, p0, Lcom/android/common/e/b;->UU:Lcom/android/common/appService/W;

    .line 16
    return-void
.end method

.method private Zb()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/common/e/b;->UU:Lcom/android/common/appService/W;

    return-object v0
.end method

.method private Zc()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/common/e/b;->Zb()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private Zd()J
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/common/e/b;->Zb()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pS()J

    move-result-wide v0

    return-wide v0
.end method

.method private Ze()J
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/common/e/b;->Zb()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qO()J

    move-result-wide v0

    return-wide v0
.end method

.method private Zf(J)V
    .registers 4

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/common/e/b;->Zb()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/common/appService/W;->qN(J)V

    .line 47
    return-void
.end method


# virtual methods
.method public onShutter()V
    .registers 7

    .prologue
    const/16 v3, 0x13

    const/4 v1, 0x0

    .line 21
    iget-object v0, p0, Lcom/android/common/e/b;->UU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rn()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 22
    iget-object v0, p0, Lcom/android/common/e/b;->UU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->atj(Z)V

    .line 23
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/e/b;->UU:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v1

    monitor-enter v1

    .line 24
    :try_start_23
    iget-object v0, p0, Lcom/android/common/e/b;->UU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/common/cameradevice/p;->MA(I)V

    .line 25
    iget-object v0, p0, Lcom/android/common/e/b;->UU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/common/cameradevice/p;->Mh(Z)V

    .line 26
    iget-object v0, p0, Lcom/android/common/e/b;->UU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v2, p0, Lcom/android/common/e/b;->UU:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_80

    monitor-exit v1

    .line 29
    invoke-direct {p0}, Lcom/android/common/e/b;->Zc()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36
    :cond_4e
    :goto_4e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/common/e/b;->Zf(J)V

    .line 37
    const-string/jumbo v0, "ShutterCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/common/e/b;->Ze()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/common/e/b;->Zd()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void

    .line 23
    :catchall_80
    move-exception v0

    monitor-exit v1

    throw v0

    .line 31
    :cond_83
    iget-object v0, p0, Lcom/android/common/e/b;->UU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ro()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 32
    iget-object v0, p0, Lcom/android/common/e/b;->UU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rp()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 33
    invoke-direct {p0}, Lcom/android/common/e/b;->Zc()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4e
.end method

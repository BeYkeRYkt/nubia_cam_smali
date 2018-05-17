.class Lcom/android/common/i/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# instance fields
.field final synthetic Zj:Lcom/android/common/i/i;


# direct methods
.method private constructor <init>(Lcom/android/common/i/i;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/common/i/j;->Zj:Lcom/android/common/i/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/i/i;Lcom/android/common/i/j;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/i/j;-><init>(Lcom/android/common/i/i;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .registers 7

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/common/i/j;->Zj:Lcom/android/common/i/i;

    invoke-static {v0}, Lcom/android/common/i/i;->afA(Lcom/android/common/i/i;)Lcom/android/common/cameradevice/j;

    move-result-object v1

    monitor-enter v1

    .line 129
    :try_start_7
    iget-object v0, p0, Lcom/android/common/i/j;->Zj:Lcom/android/common/i/i;

    invoke-static {v0}, Lcom/android/common/i/i;->afx(Lcom/android/common/i/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v2, :cond_24

    .line 130
    const-string/jumbo v0, "LongShotShutterCallback"

    const-string/jumbo v2, "not in QUALITY_MULTISHOOTING, return"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_53

    monitor-exit v1

    .line 131
    return-void

    .line 134
    :cond_24
    :try_start_24
    const-string/jumbo v0, "LongShotShutterCallback"

    const-string/jumbo v2, "longshot shutter"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/common/i/j;->Zj:Lcom/android/common/i/i;

    invoke-static {v0}, Lcom/android/common/i/i;->afx(Lcom/android/common/i/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/common/appService/W;->qN(J)V

    .line 138
    iget-object v0, p0, Lcom/android/common/i/j;->Zj:Lcom/android/common/i/i;

    invoke-static {v0}, Lcom/android/common/i/i;->afA(Lcom/android/common/i/i;)Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v2, p0, Lcom/android/common/i/j;->Zj:Lcom/android/common/i/i;

    invoke-static {v2}, Lcom/android/common/i/i;->afz(Lcom/android/common/i/i;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/common/i/j;->Zj:Lcom/android/common/i/i;

    invoke-static {v3}, Lcom/android/common/i/i;->afy(Lcom/android/common/i/i;)Lcom/android/common/i/k;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/android/common/cameradevice/j;->KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_51
    .catchall {:try_start_24 .. :try_end_51} :catchall_53

    monitor-exit v1

    .line 127
    return-void

    .line 128
    :catchall_53
    move-exception v0

    monitor-exit v1

    throw v0
.end method

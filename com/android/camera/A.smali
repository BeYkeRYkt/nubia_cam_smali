.class final Lcom/android/camera/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic apK:Lcom/android/camera/Camera;

.field final synthetic apL:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;Landroid/os/ConditionVariable;)V
    .registers 3

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/android/camera/A;->apK:Lcom/android/camera/Camera;

    iput-object p2, p0, Lcom/android/camera/A;->apL:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    .prologue
    .line 1375
    const-string/jumbo v0, "nubiaCamera"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    invoke-static {p2}, Lcn/nubia/gallery3d/data/a;->bMJ(Landroid/os/IBinder;)Lcn/nubia/gallery3d/data/CommonInterface;

    move-result-object v0

    .line 1378
    :try_start_d
    invoke-interface {v0}, Lcn/nubia/gallery3d/data/CommonInterface;->getCameraForSelection()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/m/a;->aaR:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_27

    .line 1382
    :goto_13
    const-string/jumbo v0, "nubiaCamera"

    const-string/jumbo v1, "unbindService cn.nubia.gallery3d.commonservice"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/android/camera/A;->apK:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1384
    iget-object v0, p0, Lcom/android/camera/A;->apL:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1374
    return-void

    .line 1379
    :catch_27
    move-exception v0

    .line 1380
    const-string/jumbo v1, "nubiaCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCameraForSelection fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 1370
    const-string/jumbo v0, "nubiaCamera"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    return-void
.end method

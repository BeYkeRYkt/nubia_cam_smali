.class final Lcom/android/common/cameradevice/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Od:Lcom/android/common/cameradevice/j;

.field final synthetic Oe:Landroid/hardware/Camera$ShutterCallback;

.field final synthetic Of:Landroid/hardware/Camera$PictureCallback;

.field final synthetic Og:Landroid/hardware/Camera$PictureCallback;

.field final synthetic Oh:Landroid/hardware/Camera$PictureCallback;

.field final synthetic Oi:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/common/cameradevice/j;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/common/cameradevice/t;->Od:Lcom/android/common/cameradevice/j;

    iput-object p2, p0, Lcom/android/common/cameradevice/t;->Oe:Landroid/hardware/Camera$ShutterCallback;

    iput-object p3, p0, Lcom/android/common/cameradevice/t;->Of:Landroid/hardware/Camera$PictureCallback;

    iput-object p4, p0, Lcom/android/common/cameradevice/t;->Og:Landroid/hardware/Camera$PictureCallback;

    iput-object p5, p0, Lcom/android/common/cameradevice/t;->Oh:Landroid/hardware/Camera$PictureCallback;

    iput-object p6, p0, Lcom/android/common/cameradevice/t;->Oi:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/android/common/cameradevice/t;->Od:Lcom/android/common/cameradevice/j;

    iget-object v0, v0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget-object v1, p0, Lcom/android/common/cameradevice/t;->Oe:Landroid/hardware/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/android/common/cameradevice/t;->Of:Landroid/hardware/Camera$PictureCallback;

    iget-object v3, p0, Lcom/android/common/cameradevice/t;->Og:Landroid/hardware/Camera$PictureCallback;

    iget-object v4, p0, Lcom/android/common/cameradevice/t;->Oh:Landroid/hardware/Camera$PictureCallback;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/common/cameradevice/e;->JJ(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_1d

    .line 519
    iget-object v0, p0, Lcom/android/common/cameradevice/t;->Od:Lcom/android/common/cameradevice/j;

    iget-object v0, v0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Ke()V

    .line 512
    return-void

    .line 515
    :catch_1d
    move-exception v0

    .line 516
    iget-object v1, p0, Lcom/android/common/cameradevice/t;->Od:Lcom/android/common/cameradevice/j;

    iget-object v1, v1, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v1}, Lcom/android/common/cameradevice/h;->Kq(Lcom/android/common/cameradevice/h;)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string/jumbo v1, "CameraManager"

    iget-object v2, p0, Lcom/android/common/cameradevice/t;->Oi:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_30
    throw v0
.end method

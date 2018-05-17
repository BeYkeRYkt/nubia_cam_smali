.class final Lcom/android/camera/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic apA:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

.field final synthetic apz:Lcom/android/camera/t;


# direct methods
.method constructor <init>(Lcom/android/camera/t;Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V
    .registers 3

    .prologue
    .line 664
    iput-object p1, p0, Lcom/android/camera/u;->apz:Lcom/android/camera/t;

    iput-object p2, p0, Lcom/android/camera/u;->apA:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/camera/u;->apz:Lcom/android/camera/t;

    iget-object v0, v0, Lcom/android/camera/t;->apx:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qy(Lcom/android/common/cameradevice/g;)V

    .line 669
    iget-object v0, p0, Lcom/android/camera/u;->apz:Lcom/android/camera/t;

    iget-object v0, v0, Lcom/android/camera/t;->apx:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/u;->apz:Lcom/android/camera/t;

    iget-object v1, v1, Lcom/android/camera/t;->apx:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/u;->apA:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Camera;->aBv(Lcom/android/camera/Camera;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V

    .line 666
    return-void
.end method

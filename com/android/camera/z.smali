.class final Lcom/android/camera/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic apH:Lcom/android/camera/x;

.field final synthetic apI:Lcom/android/common/appService/CameraMember;

.field final synthetic apJ:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;


# direct methods
.method constructor <init>(Lcom/android/camera/x;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V
    .registers 4

    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/camera/z;->apH:Lcom/android/camera/x;

    iput-object p2, p0, Lcom/android/camera/z;->apI:Lcom/android/common/appService/CameraMember;

    iput-object p3, p0, Lcom/android/camera/z;->apJ:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/camera/z;->apH:Lcom/android/camera/x;

    iget-object v0, v0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qy(Lcom/android/common/cameradevice/g;)V

    .line 762
    iget-object v0, p0, Lcom/android/camera/z;->apH:Lcom/android/camera/x;

    iget-object v0, v0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/z;->apI:Lcom/android/common/appService/CameraMember;

    iget-object v2, p0, Lcom/android/camera/z;->apJ:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Camera;->aBv(Lcom/android/camera/Camera;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V

    .line 763
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 759
    return-void
.end method

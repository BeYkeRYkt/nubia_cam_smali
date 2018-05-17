.class final Lcom/android/camera/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/K;


# instance fields
.field final synthetic apD:Lcom/android/camera/Camera;

.field final synthetic apE:Lcom/android/common/cameradevice/g;

.field final synthetic apF:Lcom/android/common/appService/CameraMember;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)V
    .registers 4

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    iput-object p2, p0, Lcom/android/camera/x;->apE:Lcom/android/common/cameradevice/g;

    iput-object p3, p0, Lcom/android/camera/x;->apF:Lcom/android/common/appService/CameraMember;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nT([ILcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V
    .registers 6

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBj(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/z;

    iget-object v2, p0, Lcom/android/camera/x;->apF:Lcom/android/common/appService/CameraMember;

    invoke-direct {v1, p0, v2, p2}, Lcom/android/camera/z;-><init>(Lcom/android/camera/x;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 755
    return-void
.end method

.method public nU()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 726
    iget-object v0, p0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBt(Lcom/android/camera/Camera;)V

    .line 727
    iget-object v0, p0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBu(Lcom/android/camera/Camera;)V

    .line 728
    iget-object v0, p0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBp(Lcom/android/camera/Camera;)V

    .line 729
    iget-object v0, p0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/x;->apE:Lcom/android/common/cameradevice/g;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qG(Lcom/android/common/cameradevice/g;)V

    .line 730
    iget-object v0, p0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qu()Lcom/android/common/setting/d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/x;->apE:Lcom/android/common/cameradevice/g;

    invoke-virtual {v1}, Lcom/android/common/cameradevice/g;->Kh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/d;->UI(I)V

    .line 731
    iget-object v0, p0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBl(Lcom/android/camera/Camera;)Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->ay()V

    .line 732
    iget-object v0, p0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBl(Lcom/android/camera/Camera;)Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/a/g;->aB(Z)V

    .line 733
    iget-object v0, p0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBl(Lcom/android/camera/Camera;)Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/a/g;->ak(Z)V

    .line 734
    iget-object v0, p0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBk(Lcom/android/camera/Camera;)Lcom/android/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/a;->azN()V

    .line 735
    iget-object v0, p0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBl(Lcom/android/camera/Camera;)Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->ap()Lcom/android/common/a/i;

    move-result-object v0

    .line 736
    new-instance v1, Lcom/android/camera/y;

    invoke-direct {v1, p0}, Lcom/android/camera/y;-><init>(Lcom/android/camera/x;)V

    .line 735
    invoke-virtual {v0, v1}, Lcom/android/common/a/i;->aR(Lcom/android/common/a/j;)V

    .line 725
    return-void
.end method

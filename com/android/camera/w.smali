.class final Lcom/android/camera/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic apC:Lcom/android/camera/v;


# direct methods
.method constructor <init>(Lcom/android/camera/v;)V
    .registers 2

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/camera/w;->apC:Lcom/android/camera/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 690
    const-string/jumbo v0, "nubiaCamera"

    const-string/jumbo v1, "Switch Camera id, firstFrameAvailable"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/android/camera/w;->apC:Lcom/android/camera/v;

    iget-object v0, v0, Lcom/android/camera/v;->apB:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 692
    return-void

    .line 694
    :cond_18
    iget-object v0, p0, Lcom/android/camera/w;->apC:Lcom/android/camera/v;

    iget-object v0, v0, Lcom/android/camera/v;->apB:Lcom/android/camera/Camera;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/Camera;->att(J)V

    .line 695
    iget-object v0, p0, Lcom/android/camera/w;->apC:Lcom/android/camera/v;

    iget-object v0, v0, Lcom/android/camera/v;->apB:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBi(Lcom/android/camera/Camera;)Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amL(Lcom/android/common/camerastate/FunctionState;)V

    .line 698
    iget-object v0, p0, Lcom/android/camera/w;->apC:Lcom/android/camera/v;

    iget-object v0, v0, Lcom/android/camera/v;->apB:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBj(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 699
    iget-object v0, p0, Lcom/android/camera/w;->apC:Lcom/android/camera/v;

    iget-object v0, v0, Lcom/android/camera/v;->apB:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hQ()V

    .line 700
    iget-object v0, p0, Lcom/android/camera/w;->apC:Lcom/android/camera/v;

    iget-object v0, v0, Lcom/android/camera/v;->apB:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qE(Z)V

    .line 689
    return-void
.end method

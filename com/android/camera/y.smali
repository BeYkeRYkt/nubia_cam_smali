.class final Lcom/android/camera/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/j;


# instance fields
.field final synthetic apG:Lcom/android/camera/x;


# direct methods
.method constructor <init>(Lcom/android/camera/x;)V
    .registers 2

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/camera/y;->apG:Lcom/android/camera/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aU()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x1f4

    .line 739
    const-string/jumbo v0, "nubiaCamera"

    const-string/jumbo v1, "Switch Camera Member, firstFrameAvailable"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/android/camera/y;->apG:Lcom/android/camera/x;

    iget-object v0, v0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBl(Lcom/android/camera/Camera;)Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->aj()V

    .line 742
    iget-object v0, p0, Lcom/android/camera/y;->apG:Lcom/android/camera/x;

    iget-object v0, v0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/Camera;->att(J)V

    .line 743
    iget-object v0, p0, Lcom/android/camera/y;->apG:Lcom/android/camera/x;

    iget-object v0, v0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBi(Lcom/android/camera/Camera;)Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amL(Lcom/android/common/camerastate/FunctionState;)V

    .line 746
    iget-object v0, p0, Lcom/android/camera/y;->apG:Lcom/android/camera/x;

    iget-object v0, v0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBj(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 747
    iget-object v0, p0, Lcom/android/camera/y;->apG:Lcom/android/camera/x;

    iget-object v0, v0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hQ()V

    .line 748
    iget-object v0, p0, Lcom/android/camera/y;->apG:Lcom/android/camera/x;

    iget-object v0, v0, Lcom/android/camera/x;->apD:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qE(Z)V

    .line 738
    return-void
.end method

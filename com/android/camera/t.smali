.class final Lcom/android/camera/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/K;


# instance fields
.field final synthetic apx:Lcom/android/camera/Camera;

.field final synthetic apy:I


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;I)V
    .registers 3

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/camera/t;->apx:Lcom/android/camera/Camera;

    iput p2, p0, Lcom/android/camera/t;->apy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nT([ILcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V
    .registers 5

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/camera/t;->apx:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBj(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/u;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/u;-><init>(Lcom/android/camera/t;Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 663
    return-void
.end method

.method public nU()V
    .registers 3

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/camera/t;->apx:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBt(Lcom/android/camera/Camera;)V

    .line 655
    iget-object v0, p0, Lcom/android/camera/t;->apx:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBu(Lcom/android/camera/Camera;)V

    .line 656
    iget-object v0, p0, Lcom/android/camera/t;->apx:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBp(Lcom/android/camera/Camera;)V

    .line 657
    iget-object v0, p0, Lcom/android/camera/t;->apx:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBr(Lcom/android/camera/Camera;)V

    .line 658
    iget-object v0, p0, Lcom/android/camera/t;->apx:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/t;->apy:I

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->aBo(Lcom/android/camera/Camera;I)V

    .line 653
    return-void
.end method

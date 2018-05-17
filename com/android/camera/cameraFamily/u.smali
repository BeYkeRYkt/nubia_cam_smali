.class final Lcom/android/camera/cameraFamily/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic amD:Lcom/android/camera/cameraFamily/a;


# direct methods
.method constructor <init>(Lcom/android/camera/cameraFamily/a;)V
    .registers 2

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/camera/cameraFamily/u;->amD:Lcom/android/camera/cameraFamily/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 784
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/camera/cameraFamily/u;->amD:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awF(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/d;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 779
    iget-object v0, p0, Lcom/android/camera/cameraFamily/u;->amD:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awF(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/cameraFamily/d;->axj()V

    .line 777
    :cond_11
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 771
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/camera/cameraFamily/u;->amD:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awF(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/d;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 766
    iget-object v0, p0, Lcom/android/camera/cameraFamily/u;->amD:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awF(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/cameraFamily/d;->axk()V

    .line 764
    :cond_11
    return-void
.end method

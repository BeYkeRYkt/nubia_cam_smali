.class final Lcom/android/camera/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic apt:Lcom/android/camera/a;


# direct methods
.method constructor <init>(Lcom/android/camera/a;)V
    .registers 2

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/camera/p;->apt:Lcom/android/camera/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/camera/p;->apt:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azZ(Lcom/android/camera/a;)Lcom/android/common/ui/CameraSelectButton;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->setAlpha(F)V

    .line 552
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/camera/p;->apt:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azZ(Lcom/android/camera/a;)Lcom/android/common/ui/CameraSelectButton;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->setAlpha(F)V

    .line 547
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 542
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/camera/p;->apt:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azZ(Lcom/android/camera/a;)Lcom/android/common/ui/CameraSelectButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->setVisibility(I)V

    .line 537
    return-void
.end method

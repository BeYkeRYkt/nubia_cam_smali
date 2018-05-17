.class final Lcom/android/camera/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic apw:Lcom/android/camera/a;


# direct methods
.method constructor <init>(Lcom/android/camera/a;)V
    .registers 2

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/camera/s;->apw:Lcom/android/camera/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 644
    iget-object v0, p0, Lcom/android/camera/s;->apw:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->aAd(Lcom/android/camera/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 645
    iget-object v0, p0, Lcom/android/camera/s;->apw:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azZ(Lcom/android/camera/a;)Lcom/android/common/ui/CameraSelectButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->setAlpha(F)V

    .line 643
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 638
    iget-object v0, p0, Lcom/android/camera/s;->apw:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->aAd(Lcom/android/camera/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 639
    iget-object v0, p0, Lcom/android/camera/s;->apw:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azZ(Lcom/android/camera/a;)Lcom/android/common/ui/CameraSelectButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->setAlpha(F)V

    .line 637
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 632
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 627
    iget-object v0, p0, Lcom/android/camera/s;->apw:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->aAd(Lcom/android/camera/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/android/camera/s;->apw:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azZ(Lcom/android/camera/a;)Lcom/android/common/ui/CameraSelectButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->setVisibility(I)V

    .line 626
    return-void
.end method

.class final Lcom/android/camera/cameraFamily/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic amB:Lcom/android/camera/cameraFamily/a;


# direct methods
.method constructor <init>(Lcom/android/camera/cameraFamily/a;)V
    .registers 2

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/camera/cameraFamily/s;->amB:Lcom/android/camera/cameraFamily/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 678
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 668
    iget-object v0, p0, Lcom/android/camera/cameraFamily/s;->amB:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awF(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/d;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 669
    iget-object v0, p0, Lcom/android/camera/cameraFamily/s;->amB:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awF(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/cameraFamily/d;->axl()V

    .line 671
    :cond_13
    iget-object v0, p0, Lcom/android/camera/cameraFamily/s;->amB:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awG(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setScaleX(F)V

    .line 672
    iget-object v0, p0, Lcom/android/camera/cameraFamily/s;->amB:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awG(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setScaleY(F)V

    .line 673
    iget-object v0, p0, Lcom/android/camera/cameraFamily/s;->amB:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awG(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setAlpha(F)V

    .line 674
    iget-object v0, p0, Lcom/android/camera/cameraFamily/s;->amB:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awJ(Lcom/android/camera/cameraFamily/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 667
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 663
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 655
    iget-object v0, p0, Lcom/android/camera/cameraFamily/s;->amB:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awG(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/android/camera/cameraFamily/s;->amB:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awJ(Lcom/android/camera/cameraFamily/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/android/camera/cameraFamily/s;->amB:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awF(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/d;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 658
    iget-object v0, p0, Lcom/android/camera/cameraFamily/s;->amB:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awF(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/cameraFamily/d;->axm()V

    .line 654
    :cond_24
    return-void
.end method

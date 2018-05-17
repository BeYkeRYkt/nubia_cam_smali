.class final Lcom/android/camera/cameraFamily/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic amE:Lcom/android/camera/cameraFamily/a;


# direct methods
.method constructor <init>(Lcom/android/camera/cameraFamily/a;)V
    .registers 2

    .prologue
    .line 795
    iput-object p1, p0, Lcom/android/camera/cameraFamily/v;->amE:Lcom/android/camera/cameraFamily/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 818
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 810
    iget-object v0, p0, Lcom/android/camera/cameraFamily/v;->amE:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awK(Lcom/android/camera/cameraFamily/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 811
    iget-object v0, p0, Lcom/android/camera/cameraFamily/v;->amE:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awK(Lcom/android/camera/cameraFamily/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 812
    iget-object v0, p0, Lcom/android/camera/cameraFamily/v;->amE:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awK(Lcom/android/camera/cameraFamily/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 813
    iget-object v0, p0, Lcom/android/camera/cameraFamily/v;->amE:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awP(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    .line 814
    iget-object v1, p0, Lcom/android/camera/cameraFamily/v;->amE:Lcom/android/camera/cameraFamily/a;

    iget-object v2, p0, Lcom/android/camera/cameraFamily/v;->amE:Lcom/android/camera/cameraFamily/a;

    invoke-static {v2}, Lcom/android/camera/cameraFamily/a;->awI(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/k;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/cameraFamily/k;->amj:I

    invoke-static {v2}, Lcom/android/common/appService/CameraMember;->md(I)Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/cameraFamily/a;->awh(Lcom/android/common/appService/CameraMember;)I

    move-result v1

    .line 813
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 809
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 805
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/camera/cameraFamily/v;->amE:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awP(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/android/camera/cameraFamily/v;->amE:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awR(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    .line 801
    iget-object v1, p0, Lcom/android/camera/cameraFamily/v;->amE:Lcom/android/camera/cameraFamily/a;

    iget-object v2, p0, Lcom/android/camera/cameraFamily/v;->amE:Lcom/android/camera/cameraFamily/a;

    invoke-static {v2}, Lcom/android/camera/cameraFamily/a;->awI(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/k;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/cameraFamily/k;->amj:I

    invoke-static {v2}, Lcom/android/common/appService/CameraMember;->md(I)Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/cameraFamily/a;->awh(Lcom/android/common/appService/CameraMember;)I

    move-result v1

    .line 800
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 798
    return-void
.end method

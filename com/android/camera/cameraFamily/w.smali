.class final Lcom/android/camera/cameraFamily/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic amF:Lcom/android/camera/cameraFamily/a;


# direct methods
.method constructor <init>(Lcom/android/camera/cameraFamily/a;)V
    .registers 2

    .prologue
    .line 825
    iput-object p1, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 859
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    const/16 v2, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    .line 840
    iget-object v0, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awG(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awJ(Lcom/android/camera/cameraFamily/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awG(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setAlpha(F)V

    .line 843
    iget-object v0, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awJ(Lcom/android/camera/cameraFamily/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 844
    iget-object v0, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awF(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/d;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 845
    iget-object v0, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awF(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/cameraFamily/d;->axj()V

    .line 847
    :cond_39
    iget-object v0, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awG(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setScaleX(F)V

    .line 848
    iget-object v0, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awG(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setScaleY(F)V

    .line 849
    iget-object v0, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awG(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setAlpha(F)V

    .line 850
    iget-object v0, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awJ(Lcom/android/camera/cameraFamily/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 852
    iget-object v0, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/a;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_83

    .line 853
    iget-object v0, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    iget-object v1, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    invoke-static {v1}, Lcom/android/camera/cameraFamily/a;->awI(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/cameraFamily/a;->awV(Lcom/android/camera/cameraFamily/a;Lcom/android/camera/cameraFamily/k;)Lcom/android/camera/cameraFamily/k;

    .line 854
    iget-object v0, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awQ(Lcom/android/camera/cameraFamily/a;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 839
    :cond_83
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 835
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awF(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/d;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 830
    iget-object v0, p0, Lcom/android/camera/cameraFamily/w;->amF:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awF(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/cameraFamily/d;->axk()V

    .line 828
    :cond_11
    return-void
.end method

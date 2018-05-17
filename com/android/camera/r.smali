.class final Lcom/android/camera/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic apv:Lcom/android/camera/a;


# direct methods
.method constructor <init>(Lcom/android/camera/a;)V
    .registers 2

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/camera/r;->apv:Lcom/android/camera/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 611
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    const/16 v1, 0x8

    .line 606
    iget-object v0, p0, Lcom/android/camera/r;->apv:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->aAd(Lcom/android/camera/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/android/camera/r;->apv:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azZ(Lcom/android/camera/a;)Lcom/android/common/ui/CameraSelectButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->setVisibility(I)V

    .line 605
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 600
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 595
    return-void
.end method

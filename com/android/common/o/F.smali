.class final Lcom/android/common/o/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic aeH:Lcom/android/common/o/l;


# direct methods
.method constructor <init>(Lcom/android/common/o/l;)V
    .registers 2

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/common/o/F;->aeH:Lcom/android/common/o/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 447
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/common/o/F;->aeH:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/android/common/o/F;->aeH:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 440
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 436
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 432
    return-void
.end method

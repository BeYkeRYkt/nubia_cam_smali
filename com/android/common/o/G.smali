.class final Lcom/android/common/o/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic aeI:Lcom/android/common/o/l;


# direct methods
.method constructor <init>(Lcom/android/common/o/l;)V
    .registers 2

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/common/o/G;->aeI:Lcom/android/common/o/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 475
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/common/o/G;->aeI:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 470
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 466
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/common/o/G;->aeI:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    return-void
.end method

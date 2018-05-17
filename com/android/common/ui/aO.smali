.class final Lcom/android/common/ui/aO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic DV:Lcom/android/common/ui/aN;


# direct methods
.method constructor <init>(Lcom/android/common/ui/aN;)V
    .registers 2

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/common/ui/aO;->DV:Lcom/android/common/ui/aN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/common/ui/F;->zL(Z)Z

    .line 297
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/common/ui/aO;->DV:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    const-string/jumbo v1, "show onAnimationEnd"

    invoke-static {v0, v1}, Lcom/android/common/ui/F;->zN(Lcom/android/common/ui/F;Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/common/ui/F;->zL(Z)Z

    .line 291
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 286
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 279
    iget-object v0, p0, Lcom/android/common/ui/aO;->DV:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    const-string/jumbo v1, "show onAnimationStart"

    invoke-static {v0, v1}, Lcom/android/common/ui/F;->zN(Lcom/android/common/ui/F;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/common/ui/aO;->DV:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0, v2}, Lcom/android/common/ui/F;->zP(Lcom/android/common/ui/F;Z)V

    .line 281
    iget-object v0, p0, Lcom/android/common/ui/aO;->DV:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0, v2}, Lcom/android/common/ui/F;->zI(Lcom/android/common/ui/F;Z)Z

    .line 282
    iget-object v0, p0, Lcom/android/common/ui/aO;->DV:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0}, Lcom/android/common/ui/F;->zF(Lcom/android/common/ui/F;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 278
    return-void
.end method

.class final Lcom/android/common/ui/aP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic DW:Lcom/android/common/ui/aN;


# direct methods
.method constructor <init>(Lcom/android/common/ui/aN;)V
    .registers 2

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/common/ui/aP;->DW:Lcom/android/common/ui/aN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 331
    invoke-static {v1}, Lcom/android/common/ui/F;->zL(Z)Z

    .line 332
    iget-object v0, p0, Lcom/android/common/ui/aP;->DW:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0, v1}, Lcom/android/common/ui/F;->zI(Lcom/android/common/ui/F;Z)Z

    .line 330
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lcom/android/common/ui/aP;->DW:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    const-string/jumbo v1, "hide onAnimationEnd"

    invoke-static {v0, v1}, Lcom/android/common/ui/F;->zN(Lcom/android/common/ui/F;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/common/ui/aP;->DW:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0}, Lcom/android/common/ui/F;->zF(Lcom/android/common/ui/F;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/android/common/ui/aP;->DW:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0, v2}, Lcom/android/common/ui/F;->zP(Lcom/android/common/ui/F;Z)V

    .line 323
    iget-object v0, p0, Lcom/android/common/ui/aP;->DW:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0}, Lcom/android/common/ui/F;->zC(Lcom/android/common/ui/F;)Lcom/android/common/ui/Y;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 324
    iget-object v0, p0, Lcom/android/common/ui/aP;->DW:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0}, Lcom/android/common/ui/F;->zC(Lcom/android/common/ui/F;)Lcom/android/common/ui/Y;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/ui/Y;->Dl()V

    .line 325
    :cond_34
    invoke-static {v2}, Lcom/android/common/ui/F;->zL(Z)Z

    .line 326
    iget-object v0, p0, Lcom/android/common/ui/aP;->DW:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0, v2}, Lcom/android/common/ui/F;->zI(Lcom/android/common/ui/F;Z)Z

    .line 319
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 314
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/common/ui/aP;->DW:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    const-string/jumbo v1, "hide onAnimationStart"

    invoke-static {v0, v1}, Lcom/android/common/ui/F;->zN(Lcom/android/common/ui/F;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/android/common/ui/aP;->DW:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-virtual {v0}, Lcom/android/common/ui/F;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/common/ui/aP;->DW:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-virtual {v0}, Lcom/android/common/ui/F;->zu()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 308
    iget-object v0, p0, Lcom/android/common/ui/aP;->DW:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    iget-object v0, v0, Lcom/android/common/ui/F;->vi:Lcom/android/common/setting/IconListPreference;

    iget-object v1, p0, Lcom/android/common/ui/aP;->DW:Lcom/android/common/ui/aN;

    iget-object v1, v1, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v1}, Lcom/android/common/ui/F;->zG(Lcom/android/common/ui/F;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/IconListPreference;->Vt(I)V

    .line 309
    iget-object v0, p0, Lcom/android/common/ui/aP;->DW:Lcom/android/common/ui/aN;

    iget-object v0, v0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    iget-object v1, p0, Lcom/android/common/ui/aP;->DW:Lcom/android/common/ui/aN;

    iget-object v1, v1, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    iget-object v1, v1, Lcom/android/common/ui/F;->vi:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/IconListPreference;->YP()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/ui/aP;->DW:Lcom/android/common/ui/aN;

    iget-object v2, v2, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v2}, Lcom/android/common/ui/F;->zG(Lcom/android/common/ui/F;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/common/ui/F;->setImageResource(I)V

    .line 305
    :cond_4a
    return-void
.end method

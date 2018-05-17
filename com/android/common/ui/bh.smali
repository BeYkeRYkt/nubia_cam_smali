.class final Lcom/android/common/ui/bh;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic Eq:Lcom/android/common/ui/EffectPage;


# direct methods
.method constructor <init>(Lcom/android/common/ui/EffectPage;)V
    .registers 2

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/common/ui/bh;->Eq:Lcom/android/common/ui/EffectPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 539
    iget-object v0, p0, Lcom/android/common/ui/bh;->Eq:Lcom/android/common/ui/EffectPage;

    invoke-virtual {v0}, Lcom/android/common/ui/EffectPage;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 540
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 541
    const-string/jumbo v0, "FunEffectPage"

    const-string/jumbo v1, "WheelView Context isDestroyed! clearMessage"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/android/common/ui/bh;->Eq:Lcom/android/common/ui/EffectPage;

    invoke-static {v0}, Lcom/android/common/ui/EffectPage;->Eh(Lcom/android/common/ui/EffectPage;)V

    .line 543
    return-void

    .line 546
    :cond_1e
    iget-object v0, p0, Lcom/android/common/ui/bh;->Eq:Lcom/android/common/ui/EffectPage;

    invoke-static {v0}, Lcom/android/common/ui/EffectPage;->Ec(Lcom/android/common/ui/EffectPage;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 547
    iget-object v0, p0, Lcom/android/common/ui/bh;->Eq:Lcom/android/common/ui/EffectPage;

    invoke-static {v0}, Lcom/android/common/ui/EffectPage;->Ec(Lcom/android/common/ui/EffectPage;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 548
    iget-object v1, p0, Lcom/android/common/ui/bh;->Eq:Lcom/android/common/ui/EffectPage;

    iget-object v2, p0, Lcom/android/common/ui/bh;->Eq:Lcom/android/common/ui/EffectPage;

    invoke-static {v2}, Lcom/android/common/ui/EffectPage;->Ed(Lcom/android/common/ui/EffectPage;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/common/ui/EffectPage;->DU(II)V

    .line 549
    iget-object v1, p0, Lcom/android/common/ui/bh;->Eq:Lcom/android/common/ui/EffectPage;

    invoke-static {v1, v0}, Lcom/android/common/ui/EffectPage;->Eg(Lcom/android/common/ui/EffectPage;I)I

    .line 553
    iget-object v1, p0, Lcom/android/common/ui/bh;->Eq:Lcom/android/common/ui/EffectPage;

    invoke-static {v1}, Lcom/android/common/ui/EffectPage;->Ec(Lcom/android/common/ui/EffectPage;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_6a

    .line 554
    iget-object v0, p0, Lcom/android/common/ui/bh;->Eq:Lcom/android/common/ui/EffectPage;

    invoke-static {v0}, Lcom/android/common/ui/EffectPage;->Ec(Lcom/android/common/ui/EffectPage;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    .line 555
    iget-object v1, p0, Lcom/android/common/ui/bh;->Eq:Lcom/android/common/ui/EffectPage;

    invoke-static {v1}, Lcom/android/common/ui/EffectPage;->Ec(Lcom/android/common/ui/EffectPage;)Landroid/widget/Scroller;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 557
    :cond_6a
    iget-object v1, p0, Lcom/android/common/ui/bh;->Eq:Lcom/android/common/ui/EffectPage;

    invoke-static {v1}, Lcom/android/common/ui/EffectPage;->Ec(Lcom/android/common/ui/EffectPage;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_7e

    .line 558
    iget-object v0, p0, Lcom/android/common/ui/bh;->Eq:Lcom/android/common/ui/EffectPage;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/common/ui/EffectPage;->Ek(Lcom/android/common/ui/EffectPage;I)V

    .line 538
    :goto_7d
    return-void

    .line 560
    :cond_7e
    iget-object v1, p0, Lcom/android/common/ui/bh;->Eq:Lcom/android/common/ui/EffectPage;

    iget-object v2, p0, Lcom/android/common/ui/bh;->Eq:Lcom/android/common/ui/EffectPage;

    invoke-static {v2}, Lcom/android/common/ui/EffectPage;->Ed(Lcom/android/common/ui/EffectPage;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0, v3}, Lcom/android/common/ui/EffectPage;->DT(II)V

    goto :goto_7d
.end method

.class final Lcom/android/common/ui/bl;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic Ew:Lcom/android/common/ui/WheelView;


# direct methods
.method constructor <init>(Lcom/android/common/ui/WheelView;)V
    .registers 2

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 363
    iget-object v0, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-virtual {v0}, Lcom/android/common/ui/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 364
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 365
    const-string/jumbo v0, "WheelView"

    const-string/jumbo v1, "WheelView Context isDestroyed! clearMessage"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-static {v0}, Lcom/android/common/ui/WheelView;->FA(Lcom/android/common/ui/WheelView;)V

    .line 367
    return-void

    .line 370
    :cond_1f
    iget-object v0, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-static {v0}, Lcom/android/common/ui/WheelView;->Fv(Lcom/android/common/ui/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 371
    iget-object v0, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-static {v0}, Lcom/android/common/ui/WheelView;->Fv(Lcom/android/common/ui/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 372
    iget-object v1, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    iget-object v2, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-static {v2}, Lcom/android/common/ui/WheelView;->Ft(Lcom/android/common/ui/WheelView;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/android/common/ui/WheelView;->Fx(Lcom/android/common/ui/WheelView;I)I

    .line 374
    iget-object v1, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-static {v1, v0}, Lcom/android/common/ui/WheelView;->Fw(Lcom/android/common/ui/WheelView;I)I

    .line 375
    iget-object v1, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-virtual {v1}, Lcom/android/common/ui/WheelView;->invalidate()V

    .line 379
    iget-object v1, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-static {v1}, Lcom/android/common/ui/WheelView;->Fv(Lcom/android/common/ui/WheelView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v4, :cond_6b

    .line 380
    iget-object v0, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-static {v0}, Lcom/android/common/ui/WheelView;->Fv(Lcom/android/common/ui/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    .line 381
    iget-object v0, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-static {v0}, Lcom/android/common/ui/WheelView;->Fv(Lcom/android/common/ui/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 383
    :cond_6b
    iget-object v0, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-static {v0}, Lcom/android/common/ui/WheelView;->Fv(Lcom/android/common/ui/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 384
    iget-object v0, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/common/ui/WheelView;->FD(Lcom/android/common/ui/WheelView;I)V

    .line 362
    :cond_7e
    :goto_7e
    return-void

    .line 385
    :cond_7f
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_89

    .line 386
    iget-object v0, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-static {v0}, Lcom/android/common/ui/WheelView;->FB(Lcom/android/common/ui/WheelView;)V

    goto :goto_7e

    .line 388
    :cond_89
    iget-object v0, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-static {v0, v3}, Lcom/android/common/ui/WheelView;->Fx(Lcom/android/common/ui/WheelView;I)I

    .line 389
    iget-object v0, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-static {v0, v3}, Lcom/android/common/ui/WheelView;->Fw(Lcom/android/common/ui/WheelView;I)I

    .line 390
    iget-object v0, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-static {v0, v3}, Lcom/android/common/ui/WheelView;->Fy(Lcom/android/common/ui/WheelView;I)I

    .line 391
    iget-object v0, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-static {v0, v3}, Lcom/android/common/ui/WheelView;->Fz(Lcom/android/common/ui/WheelView;I)I

    .line 392
    iget-object v0, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-static {v0}, Lcom/android/common/ui/WheelView;->Fu(Lcom/android/common/ui/WheelView;)Lcom/android/common/ui/ak;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 393
    iget-object v0, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-static {v0}, Lcom/android/common/ui/WheelView;->Fu(Lcom/android/common/ui/WheelView;)Lcom/android/common/ui/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/bl;->Ew:Lcom/android/common/ui/WheelView;

    invoke-interface {v0, v1}, Lcom/android/common/ui/ak;->FE(Lcom/android/common/ui/WheelView;)V

    goto :goto_7e
.end method

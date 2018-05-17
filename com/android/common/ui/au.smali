.class final Lcom/android/common/ui/au;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic Ds:Lcom/android/common/ui/nubiaWheelView;


# direct methods
.method constructor <init>(Lcom/android/common/ui/nubiaWheelView;)V
    .registers 2

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/common/ui/au;->Ds:Lcom/android/common/ui/nubiaWheelView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 229
    iget-object v0, p0, Lcom/android/common/ui/au;->Ds:Lcom/android/common/ui/nubiaWheelView;

    invoke-static {v0}, Lcom/android/common/ui/nubiaWheelView;->wA(Lcom/android/common/ui/nubiaWheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 230
    iget-object v0, p0, Lcom/android/common/ui/au;->Ds:Lcom/android/common/ui/nubiaWheelView;

    invoke-static {v0}, Lcom/android/common/ui/nubiaWheelView;->wA(Lcom/android/common/ui/nubiaWheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 231
    iget-object v1, p0, Lcom/android/common/ui/au;->Ds:Lcom/android/common/ui/nubiaWheelView;

    invoke-static {v1}, Lcom/android/common/ui/nubiaWheelView;->wB(Lcom/android/common/ui/nubiaWheelView;)I

    move-result v1

    if-nez v1, :cond_2b

    .line 232
    iget-object v1, p0, Lcom/android/common/ui/au;->Ds:Lcom/android/common/ui/nubiaWheelView;

    iget-object v2, p0, Lcom/android/common/ui/au;->Ds:Lcom/android/common/ui/nubiaWheelView;

    invoke-static {v2}, Lcom/android/common/ui/nubiaWheelView;->wA(Lcom/android/common/ui/nubiaWheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/common/ui/nubiaWheelView;->wC(Lcom/android/common/ui/nubiaWheelView;I)I

    .line 234
    :cond_2b
    iget-object v1, p0, Lcom/android/common/ui/au;->Ds:Lcom/android/common/ui/nubiaWheelView;

    iget-object v2, p0, Lcom/android/common/ui/au;->Ds:Lcom/android/common/ui/nubiaWheelView;

    invoke-static {v2}, Lcom/android/common/ui/nubiaWheelView;->wB(Lcom/android/common/ui/nubiaWheelView;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v3, v2}, Lcom/android/common/ui/nubiaWheelView;->ww(II)V

    .line 235
    iget-object v1, p0, Lcom/android/common/ui/au;->Ds:Lcom/android/common/ui/nubiaWheelView;

    invoke-static {v1, v0}, Lcom/android/common/ui/nubiaWheelView;->wC(Lcom/android/common/ui/nubiaWheelView;I)I

    .line 236
    iget-object v0, p0, Lcom/android/common/ui/au;->Ds:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0}, Lcom/android/common/ui/nubiaWheelView;->invalidate()V

    .line 237
    iget-object v0, p0, Lcom/android/common/ui/au;->Ds:Lcom/android/common/ui/nubiaWheelView;

    invoke-static {v0}, Lcom/android/common/ui/nubiaWheelView;->wA(Lcom/android/common/ui/nubiaWheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_56

    .line 238
    iget-object v0, p0, Lcom/android/common/ui/au;->Ds:Lcom/android/common/ui/nubiaWheelView;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wF(Lcom/android/common/ui/nubiaWheelView;I)V

    .line 228
    :goto_55
    return-void

    .line 239
    :cond_56
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_60

    .line 240
    iget-object v0, p0, Lcom/android/common/ui/au;->Ds:Lcom/android/common/ui/nubiaWheelView;

    invoke-static {v0}, Lcom/android/common/ui/nubiaWheelView;->wE(Lcom/android/common/ui/nubiaWheelView;)V

    goto :goto_55

    .line 242
    :cond_60
    iget-object v0, p0, Lcom/android/common/ui/au;->Ds:Lcom/android/common/ui/nubiaWheelView;

    invoke-static {v0, v3}, Lcom/android/common/ui/nubiaWheelView;->wC(Lcom/android/common/ui/nubiaWheelView;I)I

    goto :goto_55
.end method

.class final Lcom/android/gallery3d/ui/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic awY:Lcom/android/gallery3d/ui/l;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/l;)V
    .registers 2

    .prologue
    .line 2251
    iput-object p1, p0, Lcom/android/gallery3d/ui/x;->awY:Lcom/android/gallery3d/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/gallery3d/ui/x;->awY:Lcom/android/gallery3d/ui/l;

    invoke-static {v0}, Lcom/android/gallery3d/ui/l;->aLL(Lcom/android/gallery3d/ui/l;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 2255
    if-nez v0, :cond_16

    .line 2256
    iget-object v0, p0, Lcom/android/gallery3d/ui/x;->awY:Lcom/android/gallery3d/ui/l;

    invoke-static {v0}, Lcom/android/gallery3d/ui/l;->aLK(Lcom/android/gallery3d/ui/l;)Lcom/android/gallery3d/ui/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/m;->aLM()V

    .line 2257
    return-void

    .line 2259
    :cond_16
    iget-object v0, p0, Lcom/android/gallery3d/ui/x;->awY:Lcom/android/gallery3d/ui/l;

    invoke-static {v0}, Lcom/android/gallery3d/ui/l;->aLK(Lcom/android/gallery3d/ui/l;)Lcom/android/gallery3d/ui/m;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/x;->awY:Lcom/android/gallery3d/ui/l;

    invoke-static {v1}, Lcom/android/gallery3d/ui/l;->aLL(Lcom/android/gallery3d/ui/l;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/x;->awY:Lcom/android/gallery3d/ui/l;

    invoke-static {v2}, Lcom/android/gallery3d/ui/l;->aLL(Lcom/android/gallery3d/ui/l;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/m;->aLN(II)V

    .line 2260
    iget-object v0, p0, Lcom/android/gallery3d/ui/x;->awY:Lcom/android/gallery3d/ui/l;

    invoke-static {v0}, Lcom/android/gallery3d/ui/l;->aLJ(Lcom/android/gallery3d/ui/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2261
    iget-object v0, p0, Lcom/android/gallery3d/ui/x;->awY:Lcom/android/gallery3d/ui/l;

    invoke-static {v0}, Lcom/android/gallery3d/ui/l;->aLJ(Lcom/android/gallery3d/ui/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2253
    return-void
.end method

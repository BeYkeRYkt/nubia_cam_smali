.class final Lcom/android/common/ui/aL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic DM:Lcom/android/common/ui/MyVideoView;


# direct methods
.method constructor <init>(Lcom/android/common/ui/MyVideoView;)V
    .registers 2

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/common/ui/aL;->DM:Lcom/android/common/ui/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/android/common/ui/aL;->DM:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0, p3}, Lcom/android/common/ui/MyVideoView;->zd(Lcom/android/common/ui/MyVideoView;I)I

    .line 418
    iget-object v0, p0, Lcom/android/common/ui/aL;->DM:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0, p4}, Lcom/android/common/ui/MyVideoView;->zb(Lcom/android/common/ui/MyVideoView;I)I

    .line 419
    iget-object v0, p0, Lcom/android/common/ui/aL;->DM:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yW(Lcom/android/common/ui/MyVideoView;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4c

    move v0, v1

    .line 420
    :goto_16
    iget-object v3, p0, Lcom/android/common/ui/aL;->DM:Lcom/android/common/ui/MyVideoView;

    invoke-static {v3}, Lcom/android/common/ui/MyVideoView;->yY(Lcom/android/common/ui/MyVideoView;)I

    move-result v3

    if-ne v3, p3, :cond_27

    iget-object v3, p0, Lcom/android/common/ui/aL;->DM:Lcom/android/common/ui/MyVideoView;

    invoke-static {v3}, Lcom/android/common/ui/MyVideoView;->yX(Lcom/android/common/ui/MyVideoView;)I

    move-result v3

    if-ne v3, p4, :cond_27

    move v2, v1

    .line 421
    :cond_27
    iget-object v1, p0, Lcom/android/common/ui/aL;->DM:Lcom/android/common/ui/MyVideoView;

    invoke-static {v1}, Lcom/android/common/ui/MyVideoView;->yO(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_4b

    if-eqz v0, :cond_4b

    if-eqz v2, :cond_4b

    .line 422
    iget-object v0, p0, Lcom/android/common/ui/aL;->DM:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yT(Lcom/android/common/ui/MyVideoView;)I

    move-result v0

    if-eqz v0, :cond_46

    .line 423
    iget-object v0, p0, Lcom/android/common/ui/aL;->DM:Lcom/android/common/ui/MyVideoView;

    iget-object v1, p0, Lcom/android/common/ui/aL;->DM:Lcom/android/common/ui/MyVideoView;

    invoke-static {v1}, Lcom/android/common/ui/MyVideoView;->yT(Lcom/android/common/ui/MyVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MyVideoView;->yI(I)V

    .line 425
    :cond_46
    iget-object v0, p0, Lcom/android/common/ui/aL;->DM:Lcom/android/common/ui/MyVideoView;

    invoke-virtual {v0}, Lcom/android/common/ui/MyVideoView;->start()V

    .line 415
    :cond_4b
    return-void

    :cond_4c
    move v0, v2

    .line 419
    goto :goto_16
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/common/ui/aL;->DM:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0, p1}, Lcom/android/common/ui/MyVideoView;->zc(Lcom/android/common/ui/MyVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 432
    iget-object v0, p0, Lcom/android/common/ui/aL;->DM:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->zh(Lcom/android/common/ui/MyVideoView;)V

    .line 429
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/common/ui/aL;->DM:Lcom/android/common/ui/MyVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/ui/MyVideoView;->zc(Lcom/android/common/ui/MyVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 439
    iget-object v0, p0, Lcom/android/common/ui/aL;->DM:Lcom/android/common/ui/MyVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/common/ui/MyVideoView;->zi(Lcom/android/common/ui/MyVideoView;Z)V

    .line 435
    return-void
.end method

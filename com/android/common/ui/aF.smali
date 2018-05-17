.class final Lcom/android/common/ui/aF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic DG:Lcom/android/common/ui/MyVideoView;


# direct methods
.method constructor <init>(Lcom/android/common/ui/MyVideoView;)V
    .registers 2

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6

    .prologue
    const/4 v3, 0x3

    .line 242
    iget-object v0, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/common/ui/MyVideoView;->za(Lcom/android/common/ui/MyVideoView;I)I

    .line 259
    iget-object v0, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yS(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 260
    iget-object v0, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yS(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-static {v1}, Lcom/android/common/ui/MyVideoView;->yO(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 262
    :cond_1e
    iget-object v0, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/ui/MyVideoView;->zg(Lcom/android/common/ui/MyVideoView;I)I

    .line 263
    iget-object v0, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/ui/MyVideoView;->zf(Lcom/android/common/ui/MyVideoView;I)I

    .line 265
    iget-object v0, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yT(Lcom/android/common/ui/MyVideoView;)I

    move-result v0

    .line 266
    if-eqz v0, :cond_3d

    .line 267
    iget-object v1, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/MyVideoView;->yI(I)V

    .line 269
    :cond_3d
    iget-object v0, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yY(Lcom/android/common/ui/MyVideoView;)I

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yX(Lcom/android/common/ui/MyVideoView;)I

    move-result v0

    if-eqz v0, :cond_8c

    .line 271
    iget-object v0, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-virtual {v0}, Lcom/android/common/ui/MyVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-static {v1}, Lcom/android/common/ui/MyVideoView;->yY(Lcom/android/common/ui/MyVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-static {v2}, Lcom/android/common/ui/MyVideoView;->yX(Lcom/android/common/ui/MyVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 272
    iget-object v0, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yV(Lcom/android/common/ui/MyVideoView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-static {v1}, Lcom/android/common/ui/MyVideoView;->yY(Lcom/android/common/ui/MyVideoView;)I

    move-result v1

    if-ne v0, v1, :cond_8b

    iget-object v0, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yU(Lcom/android/common/ui/MyVideoView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-static {v1}, Lcom/android/common/ui/MyVideoView;->yX(Lcom/android/common/ui/MyVideoView;)I

    move-result v1

    if-ne v0, v1, :cond_8b

    .line 276
    iget-object v0, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yW(Lcom/android/common/ui/MyVideoView;)I

    move-result v0

    if-ne v0, v3, :cond_8b

    .line 277
    iget-object v0, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-virtual {v0}, Lcom/android/common/ui/MyVideoView;->start()V

    .line 241
    :cond_8b
    :goto_8b
    return-void

    .line 283
    :cond_8c
    iget-object v0, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yW(Lcom/android/common/ui/MyVideoView;)I

    move-result v0

    if-ne v0, v3, :cond_8b

    .line 284
    iget-object v0, p0, Lcom/android/common/ui/aF;->DG:Lcom/android/common/ui/MyVideoView;

    invoke-virtual {v0}, Lcom/android/common/ui/MyVideoView;->start()V

    goto :goto_8b
.end method

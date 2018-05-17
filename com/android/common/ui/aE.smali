.class final Lcom/android/common/ui/aE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field final synthetic DF:Lcom/android/common/ui/MyVideoView;


# direct methods
.method constructor <init>(Lcom/android/common/ui/MyVideoView;)V
    .registers 2

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/common/ui/aE;->DF:Lcom/android/common/ui/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 7

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/common/ui/aE;->DF:Lcom/android/common/ui/MyVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/ui/MyVideoView;->zg(Lcom/android/common/ui/MyVideoView;I)I

    .line 232
    iget-object v0, p0, Lcom/android/common/ui/aE;->DF:Lcom/android/common/ui/MyVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/ui/MyVideoView;->zf(Lcom/android/common/ui/MyVideoView;I)I

    .line 233
    iget-object v0, p0, Lcom/android/common/ui/aE;->DF:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yY(Lcom/android/common/ui/MyVideoView;)I

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/common/ui/aE;->DF:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yX(Lcom/android/common/ui/MyVideoView;)I

    move-result v0

    if-eqz v0, :cond_3c

    .line 234
    iget-object v0, p0, Lcom/android/common/ui/aE;->DF:Lcom/android/common/ui/MyVideoView;

    invoke-virtual {v0}, Lcom/android/common/ui/MyVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/aE;->DF:Lcom/android/common/ui/MyVideoView;

    invoke-static {v1}, Lcom/android/common/ui/MyVideoView;->yY(Lcom/android/common/ui/MyVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/common/ui/aE;->DF:Lcom/android/common/ui/MyVideoView;

    invoke-static {v2}, Lcom/android/common/ui/MyVideoView;->yX(Lcom/android/common/ui/MyVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 235
    iget-object v0, p0, Lcom/android/common/ui/aE;->DF:Lcom/android/common/ui/MyVideoView;

    invoke-virtual {v0}, Lcom/android/common/ui/MyVideoView;->requestLayout()V

    .line 230
    :cond_3c
    return-void
.end method

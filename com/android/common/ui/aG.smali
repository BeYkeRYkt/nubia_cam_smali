.class final Lcom/android/common/ui/aG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic DH:Lcom/android/common/ui/MyVideoView;


# direct methods
.method constructor <init>(Lcom/android/common/ui/MyVideoView;)V
    .registers 2

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/common/ui/aG;->DH:Lcom/android/common/ui/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .prologue
    const/4 v1, 0x5

    .line 293
    iget-object v0, p0, Lcom/android/common/ui/aG;->DH:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0, v1}, Lcom/android/common/ui/MyVideoView;->za(Lcom/android/common/ui/MyVideoView;I)I

    .line 294
    iget-object v0, p0, Lcom/android/common/ui/aG;->DH:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0, v1}, Lcom/android/common/ui/MyVideoView;->ze(Lcom/android/common/ui/MyVideoView;I)I

    .line 295
    iget-object v0, p0, Lcom/android/common/ui/aG;->DH:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yP(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 296
    iget-object v0, p0, Lcom/android/common/ui/aG;->DH:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yP(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/aG;->DH:Lcom/android/common/ui/MyVideoView;

    invoke-static {v1}, Lcom/android/common/ui/MyVideoView;->yO(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 292
    :cond_22
    return-void
.end method

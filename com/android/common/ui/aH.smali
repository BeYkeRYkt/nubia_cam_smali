.class final Lcom/android/common/ui/aH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field final synthetic DI:Lcom/android/common/ui/MyVideoView;


# direct methods
.method constructor <init>(Lcom/android/common/ui/MyVideoView;)V
    .registers 2

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/common/ui/aH;->DI:Lcom/android/common/ui/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/common/ui/aH;->DI:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yR(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 305
    iget-object v0, p0, Lcom/android/common/ui/aH;->DI:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yR(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 307
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

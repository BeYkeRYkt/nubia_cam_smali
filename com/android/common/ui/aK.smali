.class final Lcom/android/common/ui/aK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field final synthetic DL:Lcom/android/common/ui/MyVideoView;


# direct methods
.method constructor <init>(Lcom/android/common/ui/MyVideoView;)V
    .registers 2

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/common/ui/aK;->DL:Lcom/android/common/ui/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/common/ui/aK;->DL:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0, p2}, Lcom/android/common/ui/MyVideoView;->yZ(Lcom/android/common/ui/MyVideoView;I)I

    .line 362
    return-void
.end method

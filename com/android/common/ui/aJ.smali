.class final Lcom/android/common/ui/aJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic DK:Lcom/android/common/ui/aI;


# direct methods
.method constructor <init>(Lcom/android/common/ui/aI;)V
    .registers 2

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/common/ui/aJ;->DK:Lcom/android/common/ui/aI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/common/ui/aJ;->DK:Lcom/android/common/ui/aI;

    iget-object v0, v0, Lcom/android/common/ui/aI;->DJ:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yP(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 349
    iget-object v0, p0, Lcom/android/common/ui/aJ;->DK:Lcom/android/common/ui/aI;

    iget-object v0, v0, Lcom/android/common/ui/aI;->DJ:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yP(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/aJ;->DK:Lcom/android/common/ui/aI;

    iget-object v1, v1, Lcom/android/common/ui/aI;->DJ:Lcom/android/common/ui/MyVideoView;

    invoke-static {v1}, Lcom/android/common/ui/MyVideoView;->yO(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 344
    :cond_1d
    return-void
.end method

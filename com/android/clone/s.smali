.class final Lcom/android/clone/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic aTQ:Lcom/android/clone/k;


# direct methods
.method constructor <init>(Lcom/android/clone/k;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/clone/s;->aTQ:Lcom/android/clone/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/clone/s;->aTQ:Lcom/android/clone/k;

    invoke-static {v0}, Lcom/android/clone/k;->blb(Lcom/android/clone/k;)Lcom/android/common/ui/MyVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/MyVideoView;->start()V

    .line 52
    return-void
.end method

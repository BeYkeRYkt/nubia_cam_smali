.class final Lcom/android/videomaker/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic aNA:Lcom/android/videomaker/f;

.field final synthetic aNB:I


# direct methods
.method constructor <init>(Lcom/android/videomaker/f;I)V
    .registers 3

    .prologue
    .line 782
    iput-object p1, p0, Lcom/android/videomaker/w;->aNA:Lcom/android/videomaker/f;

    iput p2, p0, Lcom/android/videomaker/w;->aNB:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .prologue
    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/android/videomaker/w;->aNA:Lcom/android/videomaker/f;

    iget v1, p0, Lcom/android/videomaker/w;->aNB:I

    invoke-static {v0, v1}, Lcom/android/videomaker/f;->bcb(Lcom/android/videomaker/f;I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 785
    :goto_7
    return-void

    .line 789
    :catch_8
    move-exception v0

    .line 790
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7
.end method

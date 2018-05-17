.class final Lcom/android/videomaker/b/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aJW:Lcom/android/videomaker/b/b;


# direct methods
.method constructor <init>(Lcom/android/videomaker/b/b;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/videomaker/b/f;->aJW:Lcom/android/videomaker/b/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/videomaker/b/f;->aJW:Lcom/android/videomaker/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " handlerMessage what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  msg.arg1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/videomaker/b/b;->aYU(Lcom/android/videomaker/b/b;Ljava/lang/String;)V

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    .line 83
    const-string/jumbo v0, "VideoGenerator"

    const-string/jumbo v1, "UNKNOWN MESSAGE!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_36
    return-void

    .line 80
    :pswitch_37
    iget-object v0, p0, Lcom/android/videomaker/b/f;->aJW:Lcom/android/videomaker/b/b;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/videomaker/b/b;->aYM(I)V

    goto :goto_36

    .line 78
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_37
    .end packed-switch
.end method

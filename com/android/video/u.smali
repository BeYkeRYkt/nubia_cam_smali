.class final Lcom/android/video/u;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aIK:Lcom/android/video/n;


# direct methods
.method constructor <init>(Lcom/android/video/n;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/video/u;->aIK:Lcom/android/video/n;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/video/u;->aIK:Lcom/android/video/n;

    invoke-static {v0}, Lcom/android/video/n;->aXK(Lcom/android/video/n;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 150
    const-string/jumbo v0, "VideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fragment is puased ignore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void

    .line 153
    :cond_25
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    .line 148
    :goto_2a
    return-void

    .line 155
    :pswitch_2b
    iget-object v0, p0, Lcom/android/video/u;->aIK:Lcom/android/video/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/video/n;->aXN(Lcom/android/video/n;Z)Z

    goto :goto_2a

    .line 153
    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_2b
    .end packed-switch
.end method

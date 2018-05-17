.class final Lcom/android/clone/m;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aTK:Lcom/android/clone/a;


# direct methods
.method constructor <init>(Lcom/android/clone/a;)V
    .registers 2

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/clone/m;->aTK:Lcom/android/clone/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 175
    const-string/jumbo v0, "CloneViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage mIsDestroy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/clone/m;->aTK:Lcom/android/clone/a;

    invoke-static {v2}, Lcom/android/clone/a;->bjF(Lcom/android/clone/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 176
    const-string/jumbo v2, "; msg.what = "

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 176
    iget v2, p1, Landroid/os/Message;->what:I

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/android/clone/m;->aTK:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjF(Lcom/android/clone/a;)Z

    move-result v0

    if-eqz v0, :cond_36

    return-void

    .line 178
    :cond_36
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_8a

    .line 174
    :goto_3b
    return-void

    .line 180
    :pswitch_3c
    iget-object v0, p0, Lcom/android/clone/m;->aTK:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bkf(Lcom/android/clone/a;)V

    .line 181
    iget-object v0, p0, Lcom/android/clone/m;->aTK:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjs(Lcom/android/clone/a;)Lcom/android/clone/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/clone/j;->bkQ()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_54

    .line 182
    iget-object v0, p0, Lcom/android/clone/m;->aTK:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bkc(Lcom/android/clone/a;)V

    goto :goto_3b

    .line 184
    :cond_54
    iget-object v0, p0, Lcom/android/clone/m;->aTK:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bkb(Lcom/android/clone/a;)V

    goto :goto_3b

    .line 188
    :pswitch_5a
    iget-object v0, p0, Lcom/android/clone/m;->aTK:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bkc(Lcom/android/clone/a;)V

    .line 189
    iget-object v0, p0, Lcom/android/clone/m;->aTK:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bkf(Lcom/android/clone/a;)V

    goto :goto_3b

    .line 192
    :pswitch_65
    iget-object v0, p0, Lcom/android/clone/m;->aTK:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjJ(Lcom/android/clone/a;)Lcom/android/clone/b;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v2, p0, Lcom/android/clone/m;->aTK:Lcom/android/clone/a;

    invoke-static {v2}, Lcom/android/clone/a;->bjL(Lcom/android/clone/a;)I

    move-result v2

    iget-object v3, p0, Lcom/android/clone/m;->aTK:Lcom/android/clone/a;

    invoke-static {v3}, Lcom/android/clone/a;->bjK(Lcom/android/clone/a;)I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/android/clone/b;->bkn([BII)V

    .line 193
    iget-object v0, p0, Lcom/android/clone/m;->aTK:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bkf(Lcom/android/clone/a;)V

    .line 194
    iget-object v0, p0, Lcom/android/clone/m;->aTK:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bkg(Lcom/android/clone/a;)V

    goto :goto_3b

    .line 178
    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_5a
        :pswitch_65
    .end packed-switch
.end method

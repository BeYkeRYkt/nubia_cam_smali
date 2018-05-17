.class final Lcom/android/common/storagemanager/j;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aaQ:Lcom/android/common/storagemanager/f;


# direct methods
.method constructor <init>(Lcom/android/common/storagemanager/f;)V
    .registers 2

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/common/storagemanager/j;->aaQ:Lcom/android/common/storagemanager/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .prologue
    .line 281
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_52

    .line 280
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 283
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/common/storagemanager/c;

    .line 284
    if-nez v0, :cond_d

    .line 285
    return-void

    .line 287
    :cond_d
    iget-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    sget-object v2, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aai:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    if-ne v1, v2, :cond_1e

    .line 288
    iget-object v1, p0, Lcom/android/common/storagemanager/j;->aaQ:Lcom/android/common/storagemanager/f;

    invoke-static {v1}, Lcom/android/common/storagemanager/f;->agO(Lcom/android/common/storagemanager/f;)Lcom/android/common/storagemanager/b;

    move-result-object v1

    iget-object v2, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/common/storagemanager/b;->agm(Landroid/net/Uri;)Z

    .line 290
    :cond_1e
    iget-object v1, v0, Lcom/android/common/storagemanager/c;->aab:Lcom/android/common/b/f;

    if-eqz v1, :cond_5

    .line 291
    iget-object v1, v0, Lcom/android/common/storagemanager/c;->aab:Lcom/android/common/b/f;

    .line 292
    iget-object v2, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    .line 293
    iget-object v0, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 291
    invoke-interface {v1, v2, v0}, Lcom/android/common/b/f;->bl(Landroid/net/Uri;Lcom/android/common/storagemanager/StorageResult$StorageResultType;)V

    goto :goto_5

    .line 297
    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 298
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedList;

    .line 299
    :goto_34
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 300
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/storagemanager/h;

    .line 301
    const-string/jumbo v3, "capacity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v3, "enough"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v1, v4, v5, v3}, Lcom/android/common/storagemanager/h;->agP(JZ)V

    goto :goto_34

    .line 281
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_2c
    .end packed-switch
.end method

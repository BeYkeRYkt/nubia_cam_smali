.class Lcom/android/common/storagemanager/i;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aaP:Lcom/android/common/storagemanager/f;


# direct methods
.method public constructor <init>(Lcom/android/common/storagemanager/f;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/common/storagemanager/i;->aaP:Lcom/android/common/storagemanager/f;

    .line 309
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 308
    return-void
.end method

.method private agQ(J)V
    .registers 10

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/common/storagemanager/i;->aaP:Lcom/android/common/storagemanager/f;

    invoke-static {v0}, Lcom/android/common/storagemanager/f;->agM(Lcom/android/common/storagemanager/f;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 329
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 330
    const-string/jumbo v0, "capacity"

    invoke-virtual {v2, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 331
    const-string/jumbo v3, "enough"

    const-wide/32 v4, 0x6400000

    cmp-long v0, p1, v4

    if-lez v0, :cond_40

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 333
    iget-object v0, p0, Lcom/android/common/storagemanager/i;->aaP:Lcom/android/common/storagemanager/f;

    invoke-static {v0}, Lcom/android/common/storagemanager/f;->agN(Lcom/android/common/storagemanager/f;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcom/android/common/storagemanager/i;->aaP:Lcom/android/common/storagemanager/f;

    invoke-static {v0}, Lcom/android/common/storagemanager/f;->agN(Lcom/android/common/storagemanager/f;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 335
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 327
    return-void

    .line 331
    :cond_40
    const/4 v0, 0x0

    goto :goto_21
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 314
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    .line 313
    :goto_5
    return-void

    .line 316
    :pswitch_6
    iget-object v0, p0, Lcom/android/common/storagemanager/i;->aaP:Lcom/android/common/storagemanager/f;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agx()J

    move-result-wide v0

    .line 317
    iget-object v2, p0, Lcom/android/common/storagemanager/i;->aaP:Lcom/android/common/storagemanager/f;

    invoke-static {v2}, Lcom/android/common/storagemanager/f;->agN(Lcom/android/common/storagemanager/f;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 318
    const/4 v3, 0x2

    :try_start_14
    invoke-virtual {p0, v3}, Lcom/android/common/storagemanager/i;->removeMessages(I)V

    .line 319
    iget-object v3, p0, Lcom/android/common/storagemanager/i;->aaP:Lcom/android/common/storagemanager/f;

    invoke-static {v3}, Lcom/android/common/storagemanager/f;->agN(Lcom/android/common/storagemanager/f;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    .line 320
    invoke-direct {p0, v0, v1}, Lcom/android/common/storagemanager/i;->agQ(J)V
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_28

    :cond_26
    monitor-exit v2

    goto :goto_5

    .line 317
    :catchall_28
    move-exception v0

    monitor-exit v2

    throw v0

    .line 314
    nop

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

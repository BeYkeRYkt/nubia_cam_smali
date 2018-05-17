.class Lcom/android/common/cameradevice/o;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic NL:Lcom/android/common/cameradevice/n;


# direct methods
.method constructor <init>(Lcom/android/common/cameradevice/n;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/common/cameradevice/o;->NL:Lcom/android/common/cameradevice/n;

    .line 229
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 228
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 234
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 233
    :goto_5
    return-void

    .line 236
    :pswitch_6
    iget-object v0, p0, Lcom/android/common/cameradevice/o;->NL:Lcom/android/common/cameradevice/n;

    iget-object v1, v0, Lcom/android/common/cameradevice/n;->NK:Lcom/android/common/cameradevice/m;

    monitor-enter v1

    .line 242
    :try_start_b
    iget-object v0, p0, Lcom/android/common/cameradevice/o;->NL:Lcom/android/common/cameradevice/n;

    invoke-static {v0}, Lcom/android/common/cameradevice/n;->Nk(Lcom/android/common/cameradevice/n;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/common/cameradevice/o;->NL:Lcom/android/common/cameradevice/n;

    invoke-virtual {v0}, Lcom/android/common/cameradevice/n;->release()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit v1

    goto :goto_5

    .line 236
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 234
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

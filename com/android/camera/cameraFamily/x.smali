.class final Lcom/android/camera/cameraFamily/x;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic amG:Lcom/android/camera/cameraFamily/e;


# direct methods
.method constructor <init>(Lcom/android/camera/cameraFamily/e;)V
    .registers 2

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/camera/cameraFamily/x;->amG:Lcom/android/camera/cameraFamily/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 528
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    .line 527
    :goto_5
    return-void

    .line 530
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/cameraFamily/x;->amG:Lcom/android/camera/cameraFamily/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/cameraFamily/e;->axJ(Lcom/android/camera/cameraFamily/e;Z)Z

    .line 532
    iget-object v0, p0, Lcom/android/camera/cameraFamily/x;->amG:Lcom/android/camera/cameraFamily/e;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/e;->axH(Lcom/android/camera/cameraFamily/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/cameraFamily/g;

    .line 533
    if-eqz v0, :cond_16

    .line 534
    iget-object v2, p0, Lcom/android/camera/cameraFamily/x;->amG:Lcom/android/camera/cameraFamily/e;

    invoke-static {v2}, Lcom/android/camera/cameraFamily/e;->axG(Lcom/android/camera/cameraFamily/e;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/camera/cameraFamily/g;->axM(Ljava/util/List;)V

    goto :goto_16

    .line 537
    :cond_2e
    iget-object v0, p0, Lcom/android/camera/cameraFamily/x;->amG:Lcom/android/camera/cameraFamily/e;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/e;->axH(Lcom/android/camera/cameraFamily/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_5

    .line 528
    :pswitch_data_38
    .packed-switch 0x3
        :pswitch_6
    .end packed-switch
.end method

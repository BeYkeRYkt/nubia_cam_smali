.class final Lcom/android/camera/l;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic apo:Lcom/android/camera/a;


# direct methods
.method constructor <init>(Lcom/android/camera/a;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/camera/l;->apo:Lcom/android/camera/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 75
    const-string/jumbo v0, "MemberScrollerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_62

    .line 74
    :goto_22
    return-void

    .line 78
    :pswitch_23
    iget-object v0, p0, Lcom/android/camera/l;->apo:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->aAe(Lcom/android/camera/a;)Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->aj()V

    goto :goto_22

    .line 81
    :pswitch_2d
    iget-object v0, p0, Lcom/android/camera/l;->apo:Lcom/android/camera/a;

    invoke-virtual {v0, v3}, Lcom/android/camera/a;->azS(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/l;->apo:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->aAe(Lcom/android/camera/a;)Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/common/a/g;->ak(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/camera/l;->apo:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->aAc(Lcom/android/camera/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    .line 84
    const-wide/16 v2, 0xfa

    .line 83
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_22

    .line 87
    :pswitch_48
    iget-object v0, p0, Lcom/android/camera/l;->apo:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azY(Lcom/android/camera/a;)Lcom/android/camera/cameraFamily/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/l;->axU()V

    goto :goto_22

    .line 90
    :pswitch_52
    const-string/jumbo v0, "MemberScrollerManager"

    const-string/jumbo v1, "reset disableMemberScrollerForAWhile"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/l;->apo:Lcom/android/camera/a;

    invoke-static {v0, v3}, Lcom/android/camera/a;->aAh(Lcom/android/camera/a;Z)Z

    goto :goto_22

    .line 76
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_23
        :pswitch_2d
        :pswitch_48
        :pswitch_52
    .end packed-switch
.end method

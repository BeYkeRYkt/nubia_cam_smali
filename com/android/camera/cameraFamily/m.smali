.class final Lcom/android/camera/cameraFamily/m;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic amv:Lcom/android/camera/cameraFamily/a;


# direct methods
.method constructor <init>(Lcom/android/camera/cameraFamily/a;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/cameraFamily/m;->amv:Lcom/android/camera/cameraFamily/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/cameraFamily/m;->amv:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/a;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/camera/cameraFamily/m;->amv:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awE(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    return-void

    .line 92
    :cond_15
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 90
    :goto_1a
    return-void

    .line 94
    :pswitch_1b
    const-string/jumbo v0, "CameraFamilyFragment"

    const-string/jumbo v1, "first init views and state"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/cameraFamily/m;->amv:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->axf(Lcom/android/camera/cameraFamily/a;)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/cameraFamily/m;->amv:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->axc(Lcom/android/camera/cameraFamily/a;)V

    goto :goto_1a

    .line 92
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1b
    .end packed-switch
.end method

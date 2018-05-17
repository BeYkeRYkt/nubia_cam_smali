.class final Lcom/android/captureCamera/j;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic azw:Lcom/android/captureCamera/CaptureCameraService;


# direct methods
.method constructor <init>(Lcom/android/captureCamera/CaptureCameraService;)V
    .registers 2

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/captureCamera/j;->azw:Lcom/android/captureCamera/CaptureCameraService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 262
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_76

    .line 261
    :goto_5
    :pswitch_5
    return-void

    .line 267
    :pswitch_6
    iget-object v0, p0, Lcom/android/captureCamera/j;->azw:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOJ(Lcom/android/captureCamera/CaptureCameraService;)V

    goto :goto_5

    .line 270
    :pswitch_c
    iget-object v0, p0, Lcom/android/captureCamera/j;->azw:Lcom/android/captureCamera/CaptureCameraService;

    iget-object v1, p0, Lcom/android/captureCamera/j;->azw:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v1}, Lcom/android/captureCamera/CaptureCameraService;->aOo(Lcom/android/captureCamera/CaptureCameraService;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/captureCamera/CaptureCameraService;->aOz(Lcom/android/captureCamera/CaptureCameraService;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 271
    iget-object v0, p0, Lcom/android/captureCamera/j;->azw:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOt(Lcom/android/captureCamera/CaptureCameraService;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 272
    iget-object v0, p0, Lcom/android/captureCamera/j;->azw:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOo(Lcom/android/captureCamera/CaptureCameraService;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/captureCamera/j;->azw:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v1}, Lcom/android/captureCamera/CaptureCameraService;->aOt(Lcom/android/captureCamera/CaptureCameraService;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_5

    .line 275
    :pswitch_35
    iget-object v0, p0, Lcom/android/captureCamera/j;->azw:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOL(Lcom/android/captureCamera/CaptureCameraService;)V

    goto :goto_5

    .line 278
    :pswitch_3b
    iget-object v0, p0, Lcom/android/captureCamera/j;->azw:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOF(Lcom/android/captureCamera/CaptureCameraService;)V

    .line 279
    iget-object v0, p0, Lcom/android/captureCamera/j;->azw:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOs(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/captureCamera/f;->disable()V

    goto :goto_5

    .line 282
    :pswitch_4a
    iget-object v0, p0, Lcom/android/captureCamera/j;->azw:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOK(Lcom/android/captureCamera/CaptureCameraService;)V

    goto :goto_5

    .line 285
    :pswitch_50
    iget-object v0, p0, Lcom/android/captureCamera/j;->azw:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOE(Lcom/android/captureCamera/CaptureCameraService;)V

    goto :goto_5

    .line 288
    :pswitch_56
    const-string/jumbo v0, "CaptureCameraService"

    const-string/jumbo v1, "CAPTURE_WHILE_FOCUS_LONG"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/captureCamera/j;->azw:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOo(Lcom/android/captureCamera/CaptureCameraService;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 290
    iget-object v0, p0, Lcom/android/captureCamera/j;->azw:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOo(Lcom/android/captureCamera/CaptureCameraService;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 292
    :cond_70
    iget-object v0, p0, Lcom/android/captureCamera/j;->azw:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOD(Lcom/android/captureCamera/CaptureCameraService;)V

    goto :goto_5

    .line 262
    :pswitch_data_76
    .packed-switch 0x64
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_35
        :pswitch_3b
        :pswitch_4a
        :pswitch_50
        :pswitch_56
    .end packed-switch
.end method

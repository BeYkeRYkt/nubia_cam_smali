.class Lcom/android/dualcameracalibration/a;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic bbz:Lcom/android/dualcameracalibration/DualCameraCalibrationService;


# direct methods
.method constructor <init>(Lcom/android/dualcameracalibration/DualCameraCalibrationService;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/dualcameracalibration/a;->bbz:Lcom/android/dualcameracalibration/DualCameraCalibrationService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7c

    .line 133
    :goto_5
    return-void

    .line 136
    :pswitch_6
    iget-object v0, p0, Lcom/android/dualcameracalibration/a;->bbz:Lcom/android/dualcameracalibration/DualCameraCalibrationService;

    invoke-static {v0}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bsI(Lcom/android/dualcameracalibration/DualCameraCalibrationService;)Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string/jumbo v1, "DualCameraCalibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EEPROM\u4fe1\u606f\u5199\u5165\u7ed3\u679c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string/jumbo v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 139
    iget-object v1, p0, Lcom/android/dualcameracalibration/a;->bbz:Lcom/android/dualcameracalibration/DualCameraCalibrationService;

    const-string/jumbo v2, "WriteSuccess"

    invoke-static {v1, v2}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bsK(Lcom/android/dualcameracalibration/DualCameraCalibrationService;Ljava/lang/String;)V

    .line 143
    :goto_37
    iget-object v1, p0, Lcom/android/dualcameracalibration/a;->bbz:Lcom/android/dualcameracalibration/DualCameraCalibrationService;

    new-instance v2, Landroid/widget/Toast;

    iget-object v3, p0, Lcom/android/dualcameracalibration/a;->bbz:Lcom/android/dualcameracalibration/DualCameraCalibrationService;

    invoke-virtual {v3}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EEPROM\u4fe1\u606f\u5199\u5165\u7ed3\u679c\uff1a      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3, v0}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bsJ(Lcom/android/dualcameracalibration/DualCameraCalibrationService;Landroid/widget/Toast;ILjava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/dualcameracalibration/a;->bbz:Lcom/android/dualcameracalibration/DualCameraCalibrationService;

    invoke-static {v0}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bsG(Lcom/android/dualcameracalibration/DualCameraCalibrationService;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 145
    iget-object v0, p0, Lcom/android/dualcameracalibration/a;->bbz:Lcom/android/dualcameracalibration/DualCameraCalibrationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bsH(Lcom/android/dualcameracalibration/DualCameraCalibrationService;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 146
    iget-object v0, p0, Lcom/android/dualcameracalibration/a;->bbz:Lcom/android/dualcameracalibration/DualCameraCalibrationService;

    invoke-virtual {v0}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->stopSelf()V

    goto :goto_5

    .line 141
    :cond_72
    iget-object v1, p0, Lcom/android/dualcameracalibration/a;->bbz:Lcom/android/dualcameracalibration/DualCameraCalibrationService;

    const-string/jumbo v2, "WriteFail"

    invoke-static {v1, v2}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bsK(Lcom/android/dualcameracalibration/DualCameraCalibrationService;Ljava/lang/String;)V

    goto :goto_37

    .line 134
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

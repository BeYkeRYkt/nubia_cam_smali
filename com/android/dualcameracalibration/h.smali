.class Lcom/android/dualcameracalibration/h;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic bbX:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;


# direct methods
.method private constructor <init>(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/dualcameracalibration/h;->bbX:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;Lcom/android/dualcameracalibration/h;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/dualcameracalibration/h;-><init>(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    const/16 v2, 0x10e1

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x4d2

    if-ne v0, v1, :cond_e

    .line 59
    iget-object v0, p0, Lcom/android/dualcameracalibration/h;->bbX:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    invoke-static {v0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->btn(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)V

    .line 57
    :cond_d
    :goto_d
    return-void

    .line 60
    :cond_e
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_d

    .line 61
    iget-object v0, p0, Lcom/android/dualcameracalibration/h;->bbX:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    invoke-static {v0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->btj(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/android/dualcameracalibration/h;->bbX:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    invoke-static {v0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->btj(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_d

    .line 62
    iget-object v0, p0, Lcom/android/dualcameracalibration/h;->bbX:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    invoke-static {v0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bti(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rO()Z

    .line 63
    const-string/jumbo v0, "DualCameraCalibrationFragment"

    const-string/jumbo v1, "handle take picture"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/dualcameracalibration/h;->bbX:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    iget-object v1, p0, Lcom/android/dualcameracalibration/h;->bbX:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    invoke-static {v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->btl(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)Lcom/android/dualcameracalibration/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dualcameracalibration/h;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->btm(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;Landroid/os/Message;)Landroid/os/Message;

    .line 65
    iget-object v0, p0, Lcom/android/dualcameracalibration/h;->bbX:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    invoke-static {v0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->btk(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 67
    iget-object v0, p0, Lcom/android/dualcameracalibration/h;->bbX:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    invoke-static {v0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->btl(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)Lcom/android/dualcameracalibration/h;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dualcameracalibration/h;->bbX:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    invoke-static {v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->btk(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dualcameracalibration/h;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d
.end method

.class final Lcom/android/dualcameracalibration/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bcd:Lcom/android/dualcameracalibration/e;


# direct methods
.method constructor <init>(Lcom/android/dualcameracalibration/e;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/dualcameracalibration/k;->bcd:Lcom/android/dualcameracalibration/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 125
    const-string/jumbo v0, "DualCameraCalibrationCapture"

    const-string/jumbo v1, "getDualCameraControl().restartPreview()"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/dualcameracalibration/k;->bcd:Lcom/android/dualcameracalibration/e;

    iget-object v0, v0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dualcameracalibration/k;->bcd:Lcom/android/dualcameracalibration/e;

    iget-object v1, v1, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v1}, Lcom/android/dualcameracalibration/d;->bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sh(Lcom/android/common/cameradevice/g;)V

    .line 124
    return-void
.end method

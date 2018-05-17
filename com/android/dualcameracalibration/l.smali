.class final Lcom/android/dualcameracalibration/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bce:Lcom/android/dualcameracalibration/f;


# direct methods
.method constructor <init>(Lcom/android/dualcameracalibration/f;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/dualcameracalibration/l;->bce:Lcom/android/dualcameracalibration/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 169
    const-string/jumbo v0, "DualCameraCalibrationCapture"

    const-string/jumbo v1, "getDualCameraControl().restartPreview()"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/dualcameracalibration/l;->bce:Lcom/android/dualcameracalibration/f;

    iget-object v0, v0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dualcameracalibration/l;->bce:Lcom/android/dualcameracalibration/f;

    iget-object v1, v1, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v1}, Lcom/android/dualcameracalibration/d;->bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sh(Lcom/android/common/cameradevice/g;)V

    .line 168
    return-void
.end method

.class final Lcom/android/dualcameracalibration/i;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic bbY:Lcom/android/dualcameracalibration/DualCameraCalibrationService;

.field final synthetic bbZ:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/dualcameracalibration/DualCameraCalibrationService;Landroid/widget/Toast;)V
    .registers 3

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/dualcameracalibration/i;->bbY:Lcom/android/dualcameracalibration/DualCameraCalibrationService;

    iput-object p2, p0, Lcom/android/dualcameracalibration/i;->bbZ:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/dualcameracalibration/i;->bbZ:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 65
    return-void
.end method

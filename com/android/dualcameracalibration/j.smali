.class final Lcom/android/dualcameracalibration/j;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic bca:Lcom/android/dualcameracalibration/DualCameraCalibrationService;

.field final synthetic bcb:Landroid/widget/Toast;

.field final synthetic bcc:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/android/dualcameracalibration/DualCameraCalibrationService;Landroid/widget/Toast;Ljava/util/Timer;)V
    .registers 4

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/dualcameracalibration/j;->bca:Lcom/android/dualcameracalibration/DualCameraCalibrationService;

    iput-object p2, p0, Lcom/android/dualcameracalibration/j;->bcb:Landroid/widget/Toast;

    iput-object p3, p0, Lcom/android/dualcameracalibration/j;->bcc:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/dualcameracalibration/j;->bcb:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 74
    iget-object v0, p0, Lcom/android/dualcameracalibration/j;->bcc:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 72
    return-void
.end method

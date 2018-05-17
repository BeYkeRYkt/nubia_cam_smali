.class Lcom/android/captureCamera/f;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# instance fields
.field final synthetic azo:Lcom/android/captureCamera/CaptureCameraService;


# direct methods
.method public constructor <init>(Lcom/android/captureCamera/CaptureCameraService;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/captureCamera/f;->azo:Lcom/android/captureCamera/CaptureCameraService;

    .line 714
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 713
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 4

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/captureCamera/f;->azo:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOw(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/d;

    move-result-object v0

    .line 720
    iget-object v1, p0, Lcom/android/captureCamera/f;->azo:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v1}, Lcom/android/captureCamera/CaptureCameraService;->aOw(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/captureCamera/d;->aNx()I

    move-result v1

    .line 719
    invoke-static {p1, v1}, Lcom/android/common/h;->aqe(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/captureCamera/d;->setOrientation(I)V

    .line 718
    return-void
.end method

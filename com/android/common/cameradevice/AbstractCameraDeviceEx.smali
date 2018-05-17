.class public abstract Lcom/android/common/cameradevice/AbstractCameraDeviceEx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/cameradevice/e;


# instance fields
.field protected ML:Landroid/hardware/Camera;

.field protected MM:Lcom/android/common/cameradevice/j;

.field protected MN:Lcom/android/common/cameradevice/p;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->MM:Lcom/android/common/cameradevice/j;

    .line 21
    iput-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    .line 25
    iput-object p1, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    .line 24
    return-void
.end method


# virtual methods
.method public JA(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 93
    return-void
.end method

.method public JB(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 98
    return-void
.end method

.method public JC(Landroid/view/SurfaceHolder;)V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 67
    return-void
.end method

.method public JD(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 73
    return-void
.end method

.method public JE(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 135
    return-void
.end method

.method public JF()V
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 145
    return-void
.end method

.method public JG()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 78
    return-void
.end method

.method public JH()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 150
    return-void
.end method

.method public JI()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 83
    return-void
.end method

.method public JJ(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .registers 6

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 124
    return-void
.end method

.method public JK()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 52
    return-void
.end method

.method public Jm([B)V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 103
    return-void
.end method

.method public Jn(Landroid/hardware/Camera$AutoFocusCallback;)V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 108
    return-void
.end method

.method public Jo()V
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 113
    return-void
.end method

.method public Jp(Z)V
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 165
    return-void
.end method

.method public Jq()Landroid/hardware/Camera;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    return-object v0
.end method

.method public Jr()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 57
    return-void
.end method

.method public Js()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V

    .line 47
    return-void
.end method

.method public Jt(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 118
    return-void
.end method

.method public Ju(Lcom/android/common/cameradevice/j;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->MM:Lcom/android/common/cameradevice/j;

    .line 29
    return-void
.end method

.method public Jv(I)V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 62
    return-void
.end method

.method public Jw(Landroid/hardware/Camera$ErrorCallback;)V
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 155
    return-void
.end method

.method public Jx(Landroid/hardware/Camera$FaceDetectionListener;)V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 140
    return-void
.end method

.method public Jy(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 88
    return-void
.end method

.method public Jz(Lcom/android/common/cameradevice/p;)V
    .registers 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-interface {p1}, Lcom/android/common/cameradevice/p;->Lz()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 160
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->MN:Lcom/android/common/cameradevice/p;

    .line 41
    iget-object v0, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 42
    iput-object v1, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->ML:Landroid/hardware/Camera;

    .line 43
    iput-object v1, p0, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;->MM:Lcom/android/common/cameradevice/j;

    .line 39
    return-void
.end method

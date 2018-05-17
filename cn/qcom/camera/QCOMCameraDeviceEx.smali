.class public Lcn/qcom/camera/QCOMCameraDeviceEx;
.super Lcom/android/common/cameradevice/AbstractCameraDeviceEx;
.source "SourceFile"


# instance fields
.field private bte:Lcn/qcom/camera/d;

.field private btf:Lcn/qcom/camera/a;

.field private btg:Lcom/android/common/cameradevice/a;

.field private bth:Z


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/common/cameradevice/AbstractCameraDeviceEx;-><init>(Landroid/hardware/Camera;)V

    .line 62
    iput-object v1, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->btg:Lcom/android/common/cameradevice/a;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->bth:Z

    .line 99
    new-instance v0, Lcn/qcom/camera/d;

    invoke-direct {v0}, Lcn/qcom/camera/d;-><init>()V

    iput-object v0, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->bte:Lcn/qcom/camera/d;

    .line 103
    new-instance v0, Lcn/qcom/camera/a;

    invoke-direct {v0, p0, v1}, Lcn/qcom/camera/a;-><init>(Lcn/qcom/camera/QCOMCameraDeviceEx;Lcn/qcom/camera/a;)V

    iput-object v0, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->btf:Lcn/qcom/camera/a;

    .line 26
    return-void
.end method

.method static synthetic bQg(Lcn/qcom/camera/QCOMCameraDeviceEx;)Lcom/android/common/cameradevice/a;
    .registers 2

    iget-object v0, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->btg:Lcom/android/common/cameradevice/a;

    return-object v0
.end method

.method static synthetic bQh(Lcn/qcom/camera/QCOMCameraDeviceEx;)Z
    .registers 2

    iget-boolean v0, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->bth:Z

    return v0
.end method


# virtual methods
.method public JT([B)V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addRawImageCallbackBuffer([B)V

    .line 45
    return-void
.end method

.method public JU()V
    .registers 1

    .prologue
    .line 88
    return-void
.end method

.method public JV()Lcom/android/common/cameradevice/p;
    .registers 3

    .prologue
    .line 32
    iget-object v0, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->MN:Lcom/android/common/cameradevice/p;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lcn/qcom/camera/c;

    invoke-direct {v0}, Lcn/qcom/camera/c;-><init>()V

    iput-object v0, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->MN:Lcom/android/common/cameradevice/p;

    .line 35
    :cond_b
    iget-object v0, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->MN:Lcom/android/common/cameradevice/p;

    iget-object v1, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->MB(Landroid/hardware/Camera$Parameters;)V

    .line 36
    iget-object v0, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->MN:Lcom/android/common/cameradevice/p;

    return-object v0
.end method

.method public JW(Lcom/android/common/cameradevice/c;)V
    .registers 2

    .prologue
    .line 82
    return-void
.end method

.method public JX(Z)V
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->ML:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setLongshot(Z)V

    .line 40
    return-void
.end method

.method public JY(Lcom/android/common/cameradevice/q;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->bte:Lcn/qcom/camera/d;

    invoke-virtual {v1, p1}, Lcn/qcom/camera/d;->bQn(Lcom/android/common/cameradevice/q;)V

    .line 96
    iget-object v1, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->ML:Landroid/hardware/Camera;

    if-nez p1, :cond_e

    :goto_a
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 94
    return-void

    .line 96
    :cond_e
    iget-object v0, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->bte:Lcn/qcom/camera/d;

    goto :goto_a
.end method

.method public JZ(Lcom/android/common/cameradevice/s;Landroid/hardware/Camera$PictureCallback;)V
    .registers 3

    .prologue
    .line 51
    return-void
.end method

.method public Jx(Landroid/hardware/Camera$FaceDetectionListener;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->btf:Lcn/qcom/camera/a;

    invoke-virtual {v1, p1}, Lcn/qcom/camera/a;->bQj(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 59
    iget-object v1, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->ML:Landroid/hardware/Camera;

    if-nez p1, :cond_e

    :goto_a
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 57
    return-void

    .line 59
    :cond_e
    iget-object v0, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->btf:Lcn/qcom/camera/a;

    goto :goto_a
.end method

.method public Ka(Lcom/android/common/cameradevice/a;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->btg:Lcom/android/common/cameradevice/a;

    .line 65
    return-void
.end method

.method public Kb()V
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->bth:Z

    .line 70
    return-void
.end method

.method public Kc()V
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/qcom/camera/QCOMCameraDeviceEx;->bth:Z

    .line 76
    return-void
.end method

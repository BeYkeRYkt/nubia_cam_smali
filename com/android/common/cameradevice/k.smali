.class Lcom/android/common/cameradevice/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Nm:Lcom/android/common/cameradevice/s;

.field public Nn:Landroid/hardware/Camera$PictureCallback;

.field final synthetic No:Lcom/android/common/cameradevice/h;


# direct methods
.method constructor <init>(Lcom/android/common/cameradevice/h;Lcom/android/common/cameradevice/s;Landroid/hardware/Camera$PictureCallback;)V
    .registers 4

    .prologue
    .line 659
    iput-object p1, p0, Lcom/android/common/cameradevice/k;->No:Lcom/android/common/cameradevice/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-object p2, p0, Lcom/android/common/cameradevice/k;->Nm:Lcom/android/common/cameradevice/s;

    .line 661
    iput-object p3, p0, Lcom/android/common/cameradevice/k;->Nn:Landroid/hardware/Camera$PictureCallback;

    .line 659
    return-void
.end method

.class public Lcom/android/dng/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/V;


# instance fields
.field private final azA:Landroid/hardware/Camera$PictureCallback;

.field private azB:Landroid/hardware/Camera$PictureCallback;

.field private azC:Landroid/hardware/camera2/CaptureResult;

.field private azD:Landroid/hardware/camera2/CameraCharacteristics;

.field private final azE:Lcom/android/common/cameradevice/s;

.field private azF:Landroid/util/Size;

.field private azG:Landroid/hardware/Camera$ShutterCallback;

.field private azx:Lcom/android/common/appService/W;

.field private azy:Z

.field private azz:Landroid/hardware/Camera$PictureCallback;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dng/a;->azx:Lcom/android/common/appService/W;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dng/a;->azy:Z

    .line 80
    new-instance v0, Lcom/android/dng/p;

    invoke-direct {v0, p0}, Lcom/android/dng/p;-><init>(Lcom/android/dng/a;)V

    iput-object v0, p0, Lcom/android/dng/a;->azE:Lcom/android/common/cameradevice/s;

    .line 104
    new-instance v0, Lcom/android/dng/q;

    invoke-direct {v0, p0}, Lcom/android/dng/q;-><init>(Lcom/android/dng/a;)V

    iput-object v0, p0, Lcom/android/dng/a;->azA:Landroid/hardware/Camera$PictureCallback;

    .line 48
    iput-object p1, p0, Lcom/android/dng/a;->azx:Lcom/android/common/appService/W;

    .line 49
    new-instance v0, Lcom/android/common/e/b;

    invoke-direct {v0, p1}, Lcom/android/common/e/b;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/dng/a;->azG:Landroid/hardware/Camera$ShutterCallback;

    .line 50
    new-instance v0, Lcom/android/common/e/f;

    invoke-direct {v0, p1}, Lcom/android/common/e/f;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/dng/a;->azB:Landroid/hardware/Camera$PictureCallback;

    .line 51
    new-instance v0, Lcom/android/common/e/c;

    invoke-direct {v0, p1}, Lcom/android/common/e/c;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/dng/a;->azz:Landroid/hardware/Camera$PictureCallback;

    .line 47
    return-void
.end method

.method private aOM()Lcom/android/common/cameradevice/j;
    .registers 3

    .prologue
    .line 71
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dng/a;->azx:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method private aON()Z
    .registers 5

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/dng/a;->azx:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 76
    const-string/jumbo v1, "pref_camera_shutter_sound_key"

    .line 77
    iget-object v2, p0, Lcom/android/dng/a;->azx:Lcom/android/common/appService/W;

    const v3, 0x7f0a0330

    invoke-virtual {v2, v3}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "on"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic aOO(Lcom/android/dng/a;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/a;->azx:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic aOP(Lcom/android/dng/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/dng/a;->azy:Z

    return v0
.end method

.method static synthetic aOQ(Lcom/android/dng/a;)Landroid/hardware/camera2/CaptureResult;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/a;->azC:Landroid/hardware/camera2/CaptureResult;

    return-object v0
.end method

.method static synthetic aOR(Lcom/android/dng/a;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/a;->azD:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method static synthetic aOS(Lcom/android/dng/a;)Landroid/util/Size;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/a;->azF:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic aOT(Lcom/android/dng/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/dng/a;->azy:Z

    return p1
.end method


# virtual methods
.method public pa()Z
    .registers 7

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/dng/a;->aOM()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dng/a;->azE:Lcom/android/common/cameradevice/s;

    iget-object v2, p0, Lcom/android/dng/a;->azA:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/common/cameradevice/j;->KA(Lcom/android/common/cameradevice/s;Landroid/hardware/Camera$PictureCallback;)V

    .line 58
    invoke-direct {p0}, Lcom/android/dng/a;->aOM()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/dng/a;->aON()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KB(Z)V

    .line 60
    invoke-direct {p0}, Lcom/android/dng/a;->aOM()Lcom/android/common/cameradevice/j;

    move-result-object v1

    monitor-enter v1

    .line 61
    :try_start_1b
    invoke-direct {p0}, Lcom/android/dng/a;->aOM()Lcom/android/common/cameradevice/j;

    move-result-object v0

    .line 62
    iget-object v2, p0, Lcom/android/dng/a;->azG:Landroid/hardware/Camera$ShutterCallback;

    .line 63
    iget-object v3, p0, Lcom/android/dng/a;->azB:Landroid/hardware/Camera$PictureCallback;

    .line 65
    iget-object v4, p0, Lcom/android/dng/a;->azz:Landroid/hardware/Camera$PictureCallback;

    .line 64
    const/4 v5, 0x0

    .line 61
    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/android/common/cameradevice/j;->KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_2c

    monitor-exit v1

    .line 67
    const/4 v0, 0x1

    return v0

    .line 60
    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

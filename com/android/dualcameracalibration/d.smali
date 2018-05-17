.class public Lcom/android/dualcameracalibration/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/V;


# instance fields
.field private bbC:Lcom/android/common/appService/W;

.field private bbD:I

.field private bbE:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

.field private bbF:I

.field private bbG:Landroid/content/SharedPreferences;

.field private bbH:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/android/dualcameracalibration/d;->bbC:Lcom/android/common/appService/W;

    .line 33
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v0

    iput v0, p0, Lcom/android/dualcameracalibration/d;->bbF:I

    .line 34
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v0

    iput v0, p0, Lcom/android/dualcameracalibration/d;->bbD:I

    .line 36
    iput-object v1, p0, Lcom/android/dualcameracalibration/d;->bbE:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    .line 39
    iput-object v1, p0, Lcom/android/dualcameracalibration/d;->bbG:Landroid/content/SharedPreferences;

    .line 42
    iput v2, p0, Lcom/android/dualcameracalibration/d;->bbH:I

    .line 49
    iput-object p1, p0, Lcom/android/dualcameracalibration/d;->bbC:Lcom/android/common/appService/W;

    .line 50
    iput-object p2, p0, Lcom/android/dualcameracalibration/d;->bbE:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    .line 51
    iget-object v0, p0, Lcom/android/dualcameracalibration/d;->bbC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dualcameracalibration/d;->bbG:Landroid/content/SharedPreferences;

    .line 53
    iget-object v0, p0, Lcom/android/dualcameracalibration/d;->bbC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "dualcalibrationautotest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 54
    const-string/jumbo v0, "DualCameraCalibrationCapture"

    const-string/jumbo v1, "is auto(capture)"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/dualcameracalibration/d;->bbH:I

    .line 48
    :cond_4c
    return-void
.end method

.method private bsM(I)Lcom/android/common/cameradevice/j;
    .registers 3

    .prologue
    .line 63
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method private bsN([BLjava/lang/String;)V
    .registers 6

    .prologue
    .line 190
    const-string/jumbo v0, "DualCameraCalibrationCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveJpeg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 193
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 194
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 189
    return-void
.end method

.method static synthetic bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/dualcameracalibration/d;->bbC:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic bsP(Lcom/android/dualcameracalibration/d;)I
    .registers 2

    iget v0, p0, Lcom/android/dualcameracalibration/d;->bbD:I

    return v0
.end method

.method static synthetic bsQ(Lcom/android/dualcameracalibration/d;)Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;
    .registers 2

    iget-object v0, p0, Lcom/android/dualcameracalibration/d;->bbE:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    return-object v0
.end method

.method static synthetic bsR(Lcom/android/dualcameracalibration/d;)I
    .registers 2

    iget v0, p0, Lcom/android/dualcameracalibration/d;->bbF:I

    return v0
.end method

.method static synthetic bsS(Lcom/android/dualcameracalibration/d;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/android/dualcameracalibration/d;->bbG:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic bsT(Lcom/android/dualcameracalibration/d;)I
    .registers 2

    iget v0, p0, Lcom/android/dualcameracalibration/d;->bbH:I

    return v0
.end method

.method static synthetic bsU(Lcom/android/dualcameracalibration/d;I)I
    .registers 2

    iput p1, p0, Lcom/android/dualcameracalibration/d;->bbH:I

    return p1
.end method

.method static synthetic bsV(Lcom/android/dualcameracalibration/d;[BLjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/dualcameracalibration/d;->bsN([BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public pa()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 68
    const-string/jumbo v0, "DualCameraCalibrationCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSnapNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/dualcameracalibration/d;->bbH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget v0, p0, Lcom/android/dualcameracalibration/d;->bbH:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_25

    .line 70
    return v5

    .line 73
    :cond_25
    iget v0, p0, Lcom/android/dualcameracalibration/d;->bbH:I

    if-nez v0, :cond_56

    .line 74
    iget v0, p0, Lcom/android/dualcameracalibration/d;->bbF:I

    iget-object v1, p0, Lcom/android/dualcameracalibration/d;->bbC:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pC()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/h;->aoU(II)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/android/dualcameracalibration/d;->bbC:Lcom/android/common/appService/W;

    iget v2, p0, Lcom/android/dualcameracalibration/d;->bbF:I

    invoke-virtual {v1, v2}, Lcom/android/common/appService/W;->qm(I)Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->MJ(I)V

    .line 76
    iget-object v0, p0, Lcom/android/dualcameracalibration/d;->bbC:Lcom/android/common/appService/W;

    iget v1, p0, Lcom/android/dualcameracalibration/d;->bbD:I

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/common/setting/o;->XS(I)V

    .line 77
    iget-object v0, p0, Lcom/android/dualcameracalibration/d;->bbC:Lcom/android/common/appService/W;

    iget v1, p0, Lcom/android/dualcameracalibration/d;->bbF:I

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/common/setting/o;->XS(I)V

    .line 81
    :cond_56
    const-wide/16 v0, 0x1f4

    :try_start_58
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_f9

    .line 85
    :goto_5b
    const-string/jumbo v0, "BaseParametersSetter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "manual-focus-position=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dualcameracalibration/d;->bbC:Lcom/android/common/appService/W;

    iget v3, p0, Lcom/android/dualcameracalibration/d;->bbD:I

    invoke-virtual {v2, v3}, Lcom/android/common/appService/W;->qm(I)Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->Lz()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string/jumbo v3, "manual-focus-position"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v0, "BaseParametersSetter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "manual-focus-position=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dualcameracalibration/d;->bbC:Lcom/android/common/appService/W;

    iget v3, p0, Lcom/android/dualcameracalibration/d;->bbF:I

    invoke-virtual {v2, v3}, Lcom/android/common/appService/W;->qm(I)Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->Lz()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string/jumbo v3, "manual-focus-position"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v0, "DualCameraCalibrationCapture"

    const-string/jumbo v1, "take picture"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget v0, p0, Lcom/android/dualcameracalibration/d;->bbF:I

    invoke-direct {p0, v0}, Lcom/android/dualcameracalibration/d;->bsM(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/android/dualcameracalibration/f;

    invoke-direct {v1, p0, v4}, Lcom/android/dualcameracalibration/f;-><init>(Lcom/android/dualcameracalibration/d;Lcom/android/dualcameracalibration/f;)V

    .line 88
    invoke-virtual {v0, v4, v4, v4, v1}, Lcom/android/common/cameradevice/j;->KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 92
    iget v0, p0, Lcom/android/dualcameracalibration/d;->bbD:I

    invoke-direct {p0, v0}, Lcom/android/dualcameracalibration/d;->bsM(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    new-instance v1, Lcom/android/common/e/b;

    iget-object v2, p0, Lcom/android/dualcameracalibration/d;->bbC:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/e/b;-><init>(Lcom/android/common/appService/W;)V

    .line 95
    new-instance v2, Lcom/android/dualcameracalibration/e;

    invoke-direct {v2, p0, v4}, Lcom/android/dualcameracalibration/e;-><init>(Lcom/android/dualcameracalibration/d;Lcom/android/dualcameracalibration/e;)V

    .line 92
    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/android/common/cameradevice/j;->KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 96
    iget-object v0, p0, Lcom/android/dualcameracalibration/d;->bbC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 97
    iget-object v0, p0, Lcom/android/dualcameracalibration/d;->bbC:Lcom/android/common/appService/W;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->rb(I)V

    .line 98
    iget-object v0, p0, Lcom/android/dualcameracalibration/d;->bbC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rc()V

    .line 99
    const/4 v0, 0x1

    return v0

    .line 82
    :catch_f9
    move-exception v0

    goto/16 :goto_5b
.end method

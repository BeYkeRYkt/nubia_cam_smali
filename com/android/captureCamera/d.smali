.class public Lcom/android/captureCamera/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ayA:Landroid/content/Context;

.field private ayB:Landroid/os/Handler;

.field private ayC:I

.field private ayD:Landroid/content/SharedPreferences;

.field private ayE:J

.field private ayx:Landroid/hardware/Camera;

.field private ayy:Lcom/android/captureCamera/CaptureCameraState;

.field private ayz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/android/captureCamera/d;->ayA:Landroid/content/Context;

    .line 20
    iput-object v1, p0, Lcom/android/captureCamera/d;->ayx:Landroid/hardware/Camera;

    .line 21
    iput-object v1, p0, Lcom/android/captureCamera/d;->ayD:Landroid/content/SharedPreferences;

    .line 22
    sget-object v0, Lcom/android/captureCamera/CaptureCameraState;->azp:Lcom/android/captureCamera/CaptureCameraState;

    iput-object v0, p0, Lcom/android/captureCamera/d;->ayy:Lcom/android/captureCamera/CaptureCameraState;

    .line 23
    iput-object v1, p0, Lcom/android/captureCamera/d;->ayB:Landroid/os/Handler;

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/captureCamera/d;->ayE:J

    .line 25
    iput v2, p0, Lcom/android/captureCamera/d;->ayz:I

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/captureCamera/d;->ayC:I

    .line 70
    iput-object p1, p0, Lcom/android/captureCamera/d;->ayA:Landroid/content/Context;

    .line 72
    const-string/jumbo v0, "capture_camera_preferences"

    .line 71
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/d;->ayD:Landroid/content/SharedPreferences;

    .line 69
    return-void
.end method


# virtual methods
.method public aNA(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 121
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 122
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 123
    return v0
.end method

.method public aNB(Landroid/hardware/Camera;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/captureCamera/d;->ayx:Landroid/hardware/Camera;

    .line 75
    return-void
.end method

.method public aNC(Lcom/android/captureCamera/CaptureCameraState;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/captureCamera/d;->ayy:Lcom/android/captureCamera/CaptureCameraState;

    .line 65
    return-void
.end method

.method public aND(I)V
    .registers 2

    .prologue
    .line 32
    iput p1, p0, Lcom/android/captureCamera/d;->ayz:I

    .line 31
    return-void
.end method

.method public aNE(Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/captureCamera/d;->ayB:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method public aNF(J)V
    .registers 4

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/android/captureCamera/d;->ayE:J

    .line 57
    return-void
.end method

.method public aNG()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/captureCamera/d;->ayx:Landroid/hardware/Camera;

    if-nez v0, :cond_e

    .line 93
    const-string/jumbo v0, "CaptureCameraUtil"

    const-string/jumbo v1, "Util startPreview failed. mCamera is null!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void

    .line 96
    :cond_e
    iget-object v0, p0, Lcom/android/captureCamera/d;->ayx:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 91
    return-void
.end method

.method public aNs()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/captureCamera/d;->ayD:Landroid/content/SharedPreferences;

    if-nez v0, :cond_6

    .line 81
    return v2

    .line 82
    :cond_6
    iget-object v0, p0, Lcom/android/captureCamera/d;->ayD:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "capture_camera_id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public aNt()Lcom/android/captureCamera/CaptureCameraState;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/captureCamera/d;->ayy:Lcom/android/captureCamera/CaptureCameraState;

    return-object v0
.end method

.method public aNu()I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/android/captureCamera/d;->ayz:I

    return v0
.end method

.method public aNv()I
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x6

    return v0
.end method

.method public aNw()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/captureCamera/d;->ayB:Landroid/os/Handler;

    return-object v0
.end method

.method public aNx()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/android/captureCamera/d;->ayC:I

    return v0
.end method

.method public aNy()Landroid/hardware/Camera$Parameters;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/android/captureCamera/d;->ayx:Landroid/hardware/Camera;

    if-nez v0, :cond_6

    .line 87
    return-object v1

    .line 88
    :cond_6
    iget-object v0, p0, Lcom/android/captureCamera/d;->ayx:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public aNz()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-object v0, p0, Lcom/android/captureCamera/d;->ayD:Landroid/content/SharedPreferences;

    if-nez v0, :cond_6

    .line 101
    return v2

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/android/captureCamera/d;->ayD:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "capture_camera_exposure_on_off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setOrientation(I)V
    .registers 2

    .prologue
    .line 50
    iput p1, p0, Lcom/android/captureCamera/d;->ayC:I

    .line 49
    return-void
.end method

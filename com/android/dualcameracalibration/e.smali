.class Lcom/android/dualcameracalibration/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic bbI:Lcom/android/dualcameracalibration/d;


# direct methods
.method private constructor <init>(Lcom/android/dualcameracalibration/d;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dualcameracalibration/d;Lcom/android/dualcameracalibration/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/dualcameracalibration/e;-><init>(Lcom/android/dualcameracalibration/d;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 9

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qb(I)V

    .line 106
    iget-object v0, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsT(Lcom/android/dualcameracalibration/d;)I

    move-result v0

    if-nez v0, :cond_1c

    .line 108
    :try_start_14
    iget-object v0, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    const-string/jumbo v1, "AngleTestColor.JPEG"

    invoke-static {v0, p1, v1}, Lcom/android/dualcameracalibration/d;->bsV(Lcom/android/dualcameracalibration/d;[BLjava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_33

    .line 114
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qc()I

    move-result v0

    iget-object v1, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v1}, Lcom/android/dualcameracalibration/d;->bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qd()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 115
    return-void

    .line 109
    :catch_33
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    .line 117
    :cond_38
    const-string/jumbo v0, "DualCameraCalibrationCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSnapNum MyColorPictureCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v2}, Lcom/android/dualcameracalibration/d;->bsT(Lcom/android/dualcameracalibration/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsQ(Lcom/android/dualcameracalibration/d;)Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bsY()V

    .line 119
    iget-object v0, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 120
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 121
    iget-object v0, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsT(Lcom/android/dualcameracalibration/d;)I

    move-result v0

    if-nez v0, :cond_8e

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/dualcameracalibration/k;

    invoke-direct {v1, p0}, Lcom/android/dualcameracalibration/k;-><init>(Lcom/android/dualcameracalibration/e;)V

    .line 129
    const-wide/16 v2, 0x1f4

    .line 122
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    :cond_8e
    iget-object v0, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsT(Lcom/android/dualcameracalibration/d;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/dualcameracalibration/d;->bsU(Lcom/android/dualcameracalibration/d;I)I

    .line 133
    iget-object v0, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsS(Lcom/android/dualcameracalibration/d;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "steps_key"

    iget-object v2, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v2}, Lcom/android/dualcameracalibration/d;->bsT(Lcom/android/dualcameracalibration/d;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    iget-object v0, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsT(Lcom/android/dualcameracalibration/d;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_d1

    .line 135
    iget-object v0, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsS(Lcom/android/dualcameracalibration/d;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "steps_key"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    :goto_d0
    return-void

    .line 137
    :cond_d1
    iget-object v0, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v1}, Lcom/android/dualcameracalibration/d;->bsP(Lcom/android/dualcameracalibration/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/common/setting/o;->XS(I)V

    .line 138
    iget-object v0, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dualcameracalibration/e;->bbI:Lcom/android/dualcameracalibration/d;

    invoke-static {v1}, Lcom/android/dualcameracalibration/d;->bsR(Lcom/android/dualcameracalibration/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/common/setting/o;->XS(I)V

    goto :goto_d0
.end method

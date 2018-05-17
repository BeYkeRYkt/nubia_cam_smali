.class Lcom/android/dualcameracalibration/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic bbJ:Lcom/android/dualcameracalibration/d;


# direct methods
.method private constructor <init>(Lcom/android/dualcameracalibration/d;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dualcameracalibration/d;Lcom/android/dualcameracalibration/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/dualcameracalibration/f;-><init>(Lcom/android/dualcameracalibration/d;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 9

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 148
    iget-object v0, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qb(I)V

    .line 149
    iget-object v0, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsT(Lcom/android/dualcameracalibration/d;)I

    move-result v0

    if-nez v0, :cond_1c

    .line 151
    :try_start_14
    iget-object v0, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    const-string/jumbo v1, "AngleTestMono.JPEG"

    invoke-static {v0, p1, v1}, Lcom/android/dualcameracalibration/d;->bsV(Lcom/android/dualcameracalibration/d;[BLjava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_33

    .line 156
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qc()I

    move-result v0

    iget-object v1, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v1}, Lcom/android/dualcameracalibration/d;->bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qd()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 157
    return-void

    .line 152
    :catch_33
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    .line 160
    :cond_38
    const-string/jumbo v0, "DualCameraCalibrationCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSnapNum MyMonoPictureCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v2}, Lcom/android/dualcameracalibration/d;->bsT(Lcom/android/dualcameracalibration/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsQ(Lcom/android/dualcameracalibration/d;)Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bsY()V

    .line 162
    iget-object v0, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 163
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 164
    iget-object v0, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsT(Lcom/android/dualcameracalibration/d;)I

    move-result v0

    if-nez v0, :cond_8e

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/dualcameracalibration/l;

    invoke-direct {v1, p0}, Lcom/android/dualcameracalibration/l;-><init>(Lcom/android/dualcameracalibration/f;)V

    .line 173
    const-wide/16 v2, 0x1f4

    .line 165
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    :cond_8e
    iget-object v0, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsT(Lcom/android/dualcameracalibration/d;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/dualcameracalibration/d;->bsU(Lcom/android/dualcameracalibration/d;I)I

    .line 177
    iget-object v0, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsS(Lcom/android/dualcameracalibration/d;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "steps_key"

    iget-object v2, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v2}, Lcom/android/dualcameracalibration/d;->bsT(Lcom/android/dualcameracalibration/d;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    iget-object v0, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsT(Lcom/android/dualcameracalibration/d;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_d1

    .line 179
    iget-object v0, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsS(Lcom/android/dualcameracalibration/d;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "steps_key"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    :goto_d0
    return-void

    .line 181
    :cond_d1
    iget-object v0, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v1}, Lcom/android/dualcameracalibration/d;->bsP(Lcom/android/dualcameracalibration/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/common/setting/o;->XS(I)V

    .line 182
    iget-object v0, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v0}, Lcom/android/dualcameracalibration/d;->bsO(Lcom/android/dualcameracalibration/d;)Lcom/android/common/appService/W;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dualcameracalibration/f;->bbJ:Lcom/android/dualcameracalibration/d;

    invoke-static {v1}, Lcom/android/dualcameracalibration/d;->bsR(Lcom/android/dualcameracalibration/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/common/setting/o;->XS(I)V

    goto :goto_d0
.end method

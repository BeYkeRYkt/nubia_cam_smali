.class final Lcom/android/common/appService/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic nt:Lcom/android/common/appService/E;


# direct methods
.method constructor <init>(Lcom/android/common/appService/E;)V
    .registers 2

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/common/appService/ar;->nt:Lcom/android/common/appService/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 6

    .prologue
    .line 196
    const-string/jumbo v0, "GradienterCompassSensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AccelerometerSensor onAccuracyChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 12

    .prologue
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 205
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    cmpl-float v1, v1, v0

    if-lez v1, :cond_7e

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    cmpl-float v1, v1, v0

    if-lez v1, :cond_7e

    .line 206
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    div-double/2addr v0, v6

    div-double/2addr v0, v8

    double-to-float v0, v0

    .line 215
    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/android/common/appService/ar;->nt:Lcom/android/common/appService/E;

    invoke-static {v1, v0}, Lcom/android/common/appService/E;->mE(Lcom/android/common/appService/E;F)F

    .line 216
    iget-object v1, p0, Lcom/android/common/appService/ar;->nt:Lcom/android/common/appService/E;

    invoke-virtual {v1, v0}, Lcom/android/common/appService/E;->mw(F)V

    .line 219
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-double v0, v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    .line 220
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    mul-float/2addr v3, v4

    .line 219
    add-float/2addr v2, v3

    .line 221
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    mul-float/2addr v3, v4

    .line 219
    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    .line 221
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 219
    mul-double/2addr v0, v2

    div-double/2addr v0, v6

    div-double/2addr v0, v8

    double-to-float v0, v0

    .line 222
    iget-object v1, p0, Lcom/android/common/appService/ar;->nt:Lcom/android/common/appService/E;

    invoke-static {v1, v0}, Lcom/android/common/appService/E;->mD(Lcom/android/common/appService/E;F)F

    .line 223
    iget-object v1, p0, Lcom/android/common/appService/ar;->nt:Lcom/android/common/appService/E;

    invoke-virtual {v1, v0}, Lcom/android/common/appService/E;->mv(F)V

    .line 200
    return-void

    .line 207
    :cond_7e
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    cmpl-float v1, v1, v0

    if-lez v1, :cond_b5

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    cmpg-float v1, v1, v0

    if-gez v1, :cond_b5

    .line 208
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    div-double/2addr v0, v6

    div-double/2addr v0, v8

    const-wide v2, 0x4056800000000000L    # 90.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 207
    goto/16 :goto_31

    .line 209
    :cond_b5
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    cmpg-float v1, v1, v0

    if-gez v1, :cond_ec

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    cmpg-float v1, v1, v0

    if-gez v1, :cond_ec

    .line 210
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    div-double/2addr v0, v6

    div-double/2addr v0, v8

    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 209
    goto/16 :goto_31

    .line 211
    :cond_ec
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    cmpg-float v1, v1, v0

    if-gez v1, :cond_31

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    cmpl-float v1, v1, v0

    if-lez v1, :cond_31

    .line 212
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    div-double/2addr v0, v6

    div-double/2addr v0, v8

    const-wide v2, 0x4070e00000000000L    # 270.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    goto/16 :goto_31
.end method

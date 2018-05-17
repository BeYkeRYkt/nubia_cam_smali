.class public Lcom/android/common/image3d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private bK:Z

.field private bL:Lcom/android/common/image3d/f;

.field private bM:Landroid/hardware/Sensor;

.field private bN:I

.field private bO:Landroid/hardware/SensorManager;

.field private bP:F

.field private bQ:J

.field private bR:F

.field private bS:F

.field private bT:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/image3d/e;->bN:I

    .line 33
    iput-object v2, p0, Lcom/android/common/image3d/e;->bO:Landroid/hardware/SensorManager;

    .line 34
    iput-object v2, p0, Lcom/android/common/image3d/e;->bM:Landroid/hardware/Sensor;

    .line 35
    iput-object v2, p0, Lcom/android/common/image3d/e;->bL:Lcom/android/common/image3d/f;

    .line 37
    const v0, 0x3ca3d70a    # 0.02f

    iput v0, p0, Lcom/android/common/image3d/e;->bP:F

    .line 38
    iput v1, p0, Lcom/android/common/image3d/e;->bR:F

    .line 39
    iput v1, p0, Lcom/android/common/image3d/e;->bS:F

    .line 40
    iput v1, p0, Lcom/android/common/image3d/e;->bT:F

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/common/image3d/e;->bQ:J

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/image3d/e;->bK:Z

    .line 45
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/common/image3d/e;->bO:Landroid/hardware/SensorManager;

    .line 46
    iget-object v0, p0, Lcom/android/common/image3d/e;->bO:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/image3d/e;->bM:Landroid/hardware/Sensor;

    .line 44
    return-void
.end method

.method private by()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/android/common/image3d/e;->bR:F

    .line 81
    iput v0, p0, Lcom/android/common/image3d/e;->bS:F

    .line 82
    iput v0, p0, Lcom/android/common/image3d/e;->bT:F

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/common/image3d/e;->bQ:J

    .line 79
    return-void
.end method


# virtual methods
.method public bA(I)V
    .registers 2

    .prologue
    .line 54
    iput p1, p0, Lcom/android/common/image3d/e;->bN:I

    .line 53
    return-void
.end method

.method public bB(F)V
    .registers 5

    .prologue
    .line 58
    const-string/jumbo v0, "GyroscopeSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSensorEventOmegaMagnitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput p1, p0, Lcom/android/common/image3d/e;->bP:F

    .line 57
    return-void
.end method

.method public bw()V
    .registers 3

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/common/image3d/e;->bK:Z

    if-eqz v0, :cond_18

    .line 72
    const-string/jumbo v0, "GyroscopeSensor"

    const-string/jumbo v1, "closeGyroscopeSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/common/image3d/e;->bO:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/image3d/e;->bK:Z

    .line 75
    invoke-direct {p0}, Lcom/android/common/image3d/e;->by()V

    .line 70
    :cond_18
    return-void
.end method

.method public bx()V
    .registers 4

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/common/image3d/e;->bK:Z

    if-nez v0, :cond_19

    .line 64
    const-string/jumbo v0, "GyroscopeSensor"

    const-string/jumbo v1, "openGyroscopeSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/android/common/image3d/e;->bO:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/common/image3d/e;->bM:Landroid/hardware/Sensor;

    iget v2, p0, Lcom/android/common/image3d/e;->bN:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/image3d/e;->bK:Z

    .line 62
    :cond_19
    return-void
.end method

.method public bz(Lcom/android/common/image3d/f;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/common/image3d/e;->bL:Lcom/android/common/image3d/f;

    .line 49
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .prologue
    .line 87
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13

    .prologue
    const v10, 0x33761560

    const/4 v5, 0x0

    .line 95
    iget-wide v0, p0, Lcom/android/common/image3d/e;->bQ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_60

    .line 96
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 97
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v2, v1, v2

    .line 98
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v4, v1, v3

    .line 99
    mul-float v1, v0, v0

    mul-float v3, v2, v2

    add-float/2addr v1, v3

    mul-float v3, v4, v4

    add-float/2addr v1, v3

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 101
    iget v3, p0, Lcom/android/common/image3d/e;->bP:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_60

    .line 102
    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v8, p0, Lcom/android/common/image3d/e;->bQ:J

    sub-long/2addr v6, v8

    .line 106
    long-to-float v1, v6

    mul-float/2addr v0, v1

    mul-float/2addr v0, v10

    add-float v1, v5, v0

    .line 107
    long-to-float v0, v6

    mul-float/2addr v0, v2

    mul-float/2addr v0, v10

    add-float v3, v5, v0

    .line 108
    long-to-float v0, v6

    mul-float/2addr v0, v4

    mul-float/2addr v0, v10

    add-float/2addr v5, v0

    .line 109
    iget v0, p0, Lcom/android/common/image3d/e;->bR:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/image3d/e;->bR:F

    .line 110
    iget v0, p0, Lcom/android/common/image3d/e;->bS:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/common/image3d/e;->bS:F

    .line 111
    iget v0, p0, Lcom/android/common/image3d/e;->bT:F

    add-float/2addr v0, v5

    iput v0, p0, Lcom/android/common/image3d/e;->bT:F

    .line 112
    iget-object v0, p0, Lcom/android/common/image3d/e;->bL:Lcom/android/common/image3d/f;

    if-eqz v0, :cond_60

    .line 113
    iget-object v0, p0, Lcom/android/common/image3d/e;->bL:Lcom/android/common/image3d/f;

    iget v2, p0, Lcom/android/common/image3d/e;->bR:F

    iget v4, p0, Lcom/android/common/image3d/e;->bS:F

    iget v6, p0, Lcom/android/common/image3d/e;->bT:F

    invoke-interface/range {v0 .. v6}, Lcom/android/common/image3d/f;->bC(FFFFFF)V

    .line 117
    :cond_60
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/android/common/image3d/e;->bQ:J

    .line 93
    return-void
.end method

.class final Lcom/android/common/appService/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic nu:Lcom/android/common/appService/E;


# direct methods
.method constructor <init>(Lcom/android/common/appService/E;)V
    .registers 2

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/common/appService/as;->nu:Lcom/android/common/appService/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 6

    .prologue
    .line 231
    const-string/jumbo v0, "GradienterCompassSensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OrienationSensor onAccuracyChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/common/appService/as;->nu:Lcom/android/common/appService/E;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float v1, v2, v1

    invoke-static {v0, v1}, Lcom/android/common/appService/E;->mC(Lcom/android/common/appService/E;F)F

    .line 236
    iget-object v0, p0, Lcom/android/common/appService/as;->nu:Lcom/android/common/appService/E;

    iget-object v1, p0, Lcom/android/common/appService/as;->nu:Lcom/android/common/appService/E;

    invoke-static {v1}, Lcom/android/common/appService/E;->mB(Lcom/android/common/appService/E;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/E;->mu(F)V

    .line 234
    return-void
.end method

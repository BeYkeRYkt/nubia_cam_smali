.class public Lcom/android/common/appService/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private jU:Landroid/hardware/Sensor;

.field jV:Landroid/hardware/SensorEventListener;

.field private jW:Ljava/util/ArrayList;

.field private jX:F

.field private jY:F

.field private jZ:F

.field private ka:Z

.field private kb:Z

.field private kc:Landroid/hardware/Sensor;

.field kd:Landroid/hardware/SensorEventListener;

.field private ke:Ljava/util/ArrayList;

.field private kf:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/appService/E;->jU:Landroid/hardware/Sensor;

    .line 17
    iput-boolean v2, p0, Lcom/android/common/appService/E;->kb:Z

    .line 18
    iput-boolean v2, p0, Lcom/android/common/appService/E;->ka:Z

    .line 19
    iput v1, p0, Lcom/android/common/appService/E;->jZ:F

    .line 20
    iput v1, p0, Lcom/android/common/appService/E;->jY:F

    .line 21
    iput v1, p0, Lcom/android/common/appService/E;->jX:F

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/common/appService/E;->ke:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/common/appService/E;->jW:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Lcom/android/common/appService/ar;

    invoke-direct {v0, p0}, Lcom/android/common/appService/ar;-><init>(Lcom/android/common/appService/E;)V

    iput-object v0, p0, Lcom/android/common/appService/E;->jV:Landroid/hardware/SensorEventListener;

    .line 228
    new-instance v0, Lcom/android/common/appService/as;

    invoke-direct {v0, p0}, Lcom/android/common/appService/as;-><init>(Lcom/android/common/appService/E;)V

    iput-object v0, p0, Lcom/android/common/appService/E;->kd:Landroid/hardware/SensorEventListener;

    .line 12
    return-void
.end method

.method private mA()V
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/common/appService/E;->kf:Landroid/hardware/SensorManager;

    if-nez v0, :cond_e

    .line 113
    const-string/jumbo v0, "GradienterCompassSensorManager"

    const-string/jumbo v1, "not init or release!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

    .line 116
    :cond_e
    iget-boolean v0, p0, Lcom/android/common/appService/E;->kb:Z

    if-eqz v0, :cond_27

    .line 117
    const-string/jumbo v0, "GradienterCompassSensorManager"

    const-string/jumbo v1, "stopOrienationSensor"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/common/appService/E;->kf:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/common/appService/E;->kd:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/common/appService/E;->kc:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/appService/E;->kb:Z

    .line 111
    :cond_27
    return-void
.end method

.method static synthetic mB(Lcom/android/common/appService/E;)F
    .registers 2

    iget v0, p0, Lcom/android/common/appService/E;->jX:F

    return v0
.end method

.method static synthetic mC(Lcom/android/common/appService/E;F)F
    .registers 2

    iput p1, p0, Lcom/android/common/appService/E;->jX:F

    return p1
.end method

.method static synthetic mD(Lcom/android/common/appService/E;F)F
    .registers 2

    iput p1, p0, Lcom/android/common/appService/E;->jY:F

    return p1
.end method

.method static synthetic mE(Lcom/android/common/appService/E;F)F
    .registers 2

    iput p1, p0, Lcom/android/common/appService/E;->jZ:F

    return p1
.end method

.method private mx()V
    .registers 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/common/appService/E;->kf:Landroid/hardware/SensorManager;

    if-nez v0, :cond_e

    .line 73
    const-string/jumbo v0, "GradienterCompassSensorManager"

    const-string/jumbo v1, "not init or release!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 76
    :cond_e
    iget-boolean v0, p0, Lcom/android/common/appService/E;->ka:Z

    if-nez v0, :cond_28

    .line 77
    const-string/jumbo v0, "GradienterCompassSensorManager"

    const-string/jumbo v1, "startAccelerometerSensor"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/common/appService/E;->kf:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/common/appService/E;->jV:Landroid/hardware/SensorEventListener;

    .line 79
    iget-object v2, p0, Lcom/android/common/appService/E;->jU:Landroid/hardware/Sensor;

    .line 80
    const/4 v3, 0x2

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/appService/E;->ka:Z

    .line 71
    :cond_28
    return-void
.end method

.method private my()V
    .registers 5

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/common/appService/E;->kf:Landroid/hardware/SensorManager;

    if-nez v0, :cond_e

    .line 99
    const-string/jumbo v0, "GradienterCompassSensorManager"

    const-string/jumbo v1, "not init or release!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 102
    :cond_e
    iget-boolean v0, p0, Lcom/android/common/appService/E;->kb:Z

    if-nez v0, :cond_28

    .line 103
    const-string/jumbo v0, "GradienterCompassSensorManager"

    const-string/jumbo v1, "startOrienationSensor"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/common/appService/E;->kf:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/common/appService/E;->kd:Landroid/hardware/SensorEventListener;

    .line 105
    iget-object v2, p0, Lcom/android/common/appService/E;->kc:Landroid/hardware/Sensor;

    .line 106
    const/4 v3, 0x2

    .line 104
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/appService/E;->kb:Z

    .line 97
    :cond_28
    return-void
.end method

.method private mz()V
    .registers 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/common/appService/E;->kf:Landroid/hardware/SensorManager;

    if-nez v0, :cond_e

    .line 87
    const-string/jumbo v0, "GradienterCompassSensorManager"

    const-string/jumbo v1, "not init or release!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void

    .line 90
    :cond_e
    iget-boolean v0, p0, Lcom/android/common/appService/E;->ka:Z

    if-eqz v0, :cond_27

    .line 91
    const-string/jumbo v0, "GradienterCompassSensorManager"

    const-string/jumbo v1, "stopAccelerometerSensor"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/common/appService/E;->kf:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/common/appService/E;->jV:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/common/appService/E;->jU:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/appService/E;->ka:Z

    .line 85
    :cond_27
    return-void
.end method


# virtual methods
.method public mm(Lcom/android/common/appService/F;)V
    .registers 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/common/appService/E;->ke:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 133
    const-string/jumbo v0, "GradienterCompassSensorManager"

    const-string/jumbo v1, "removeOrientationListener"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/common/appService/E;->ke:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 135
    invoke-direct {p0}, Lcom/android/common/appService/E;->mz()V

    .line 131
    :cond_1c
    return-void
.end method

.method public mn(Lcom/android/common/appService/G;)V
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/common/appService/E;->jW:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 150
    const-string/jumbo v0, "GradienterCompassSensorManager"

    const-string/jumbo v1, "removeCompassListener"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/common/appService/E;->jW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 152
    invoke-direct {p0}, Lcom/android/common/appService/E;->mA()V

    .line 148
    :cond_1c
    return-void
.end method

.method public mo()F
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lcom/android/common/appService/E;->jX:F

    return v0
.end method

.method public mp(Lcom/android/common/appService/G;)V
    .registers 4

    .prologue
    .line 141
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/common/appService/E;->jW:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 140
    :cond_a
    :goto_a
    return-void

    .line 142
    :cond_b
    const-string/jumbo v0, "GradienterCompassSensorManager"

    const-string/jumbo v1, "addCompassListener"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/common/appService/E;->jW:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-direct {p0}, Lcom/android/common/appService/E;->my()V

    goto :goto_a
.end method

.method public mq()F
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcom/android/common/appService/E;->jY:F

    return v0
.end method

.method public mr()F
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Lcom/android/common/appService/E;->jZ:F

    return v0
.end method

.method public ms(Lcom/android/common/appService/F;)V
    .registers 4

    .prologue
    .line 124
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/common/appService/E;->ke:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 123
    :cond_a
    :goto_a
    return-void

    .line 125
    :cond_b
    const-string/jumbo v0, "GradienterCompassSensorManager"

    const-string/jumbo v1, "addOrientationListener"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/common/appService/E;->ke:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-direct {p0}, Lcom/android/common/appService/E;->mx()V

    goto :goto_a
.end method

.method public mt(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/common/appService/E;->kf:Landroid/hardware/SensorManager;

    if-nez v0, :cond_40

    .line 47
    const-string/jumbo v0, "GradienterCompassSensorManager"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/common/appService/E;->kf:Landroid/hardware/SensorManager;

    .line 49
    iget-object v0, p0, Lcom/android/common/appService/E;->kf:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/E;->jU:Landroid/hardware/Sensor;

    .line 50
    iget-object v0, p0, Lcom/android/common/appService/E;->kf:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/E;->kc:Landroid/hardware/Sensor;

    .line 51
    iget-object v0, p0, Lcom/android/common/appService/E;->ke:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 52
    invoke-direct {p0}, Lcom/android/common/appService/E;->mx()V

    .line 54
    :cond_35
    iget-object v0, p0, Lcom/android/common/appService/E;->jW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 55
    invoke-direct {p0}, Lcom/android/common/appService/E;->my()V

    .line 45
    :cond_40
    return-void
.end method

.method public mu(F)V
    .registers 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/common/appService/E;->jW:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/appService/G;

    .line 175
    if-eqz v0, :cond_6

    .line 176
    invoke-interface {v0, p1}, Lcom/android/common/appService/G;->mH(F)V

    goto :goto_6

    .line 173
    :cond_18
    return-void
.end method

.method public mv(F)V
    .registers 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/common/appService/E;->ke:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/appService/F;

    .line 167
    if-eqz v0, :cond_6

    .line 168
    invoke-interface {v0, p1}, Lcom/android/common/appService/F;->mF(F)V

    goto :goto_6

    .line 165
    :cond_18
    return-void
.end method

.method public mw(F)V
    .registers 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/common/appService/E;->ke:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/appService/F;

    .line 159
    if-eqz v0, :cond_6

    .line 160
    invoke-interface {v0, p1}, Lcom/android/common/appService/F;->mG(F)V

    goto :goto_6

    .line 157
    :cond_18
    return-void
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 61
    const-string/jumbo v0, "GradienterCompassSensorManager"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/android/common/appService/E;->mz()V

    .line 63
    invoke-direct {p0}, Lcom/android/common/appService/E;->mA()V

    .line 64
    iget-object v0, p0, Lcom/android/common/appService/E;->ke:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    iget-object v0, p0, Lcom/android/common/appService/E;->jW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    iput-object v2, p0, Lcom/android/common/appService/E;->kc:Landroid/hardware/Sensor;

    .line 67
    iput-object v2, p0, Lcom/android/common/appService/E;->jU:Landroid/hardware/Sensor;

    .line 68
    iput-object v2, p0, Lcom/android/common/appService/E;->kf:Landroid/hardware/SensorManager;

    .line 60
    return-void
.end method

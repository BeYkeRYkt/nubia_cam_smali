.class public Lcom/android/common/q/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static afG:Lcom/android/common/q/a;

.field private static afH:Ljava/lang/String;


# instance fields
.field private afI:F

.field private afJ:Lcom/android/common/q/b;

.field private afK:I

.field private afL:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string/jumbo v0, "/sys/class/leds/lcd-backlight/brightness"

    sput-object v0, Lcom/android/common/q/a;->afH:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "LcdLightManager"

    sput-object v0, Lcom/android/common/q/a;->TAG:Ljava/lang/String;

    .line 19
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/q/a;->afK:I

    .line 28
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/common/q/a;->afI:F

    .line 30
    return-void
.end method

.method public static amV()Lcom/android/common/q/a;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/common/q/a;->afG:Lcom/android/common/q/a;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Lcom/android/common/q/a;

    invoke-direct {v0}, Lcom/android/common/q/a;-><init>()V

    sput-object v0, Lcom/android/common/q/a;->afG:Lcom/android/common/q/a;

    .line 41
    :cond_b
    sget-object v0, Lcom/android/common/q/a;->afG:Lcom/android/common/q/a;

    return-object v0
.end method

.method private amX(III)F
    .registers 11

    .prologue
    const/16 v0, 0xff

    const/high16 v6, 0x437f0000    # 255.0f

    .line 92
    const/high16 v1, -0x40800000    # -1.0f

    .line 93
    if-ge p1, p2, :cond_48

    move v2, p2

    .line 94
    :goto_9
    packed-switch p3, :pswitch_data_60

    move v0, v1

    .line 111
    :goto_d
    sget-object v1, Lcom/android/common/q/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "A1 old_bright = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 112
    const-string/jumbo v3, " , new_bright "

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 113
    const-string/jumbo v3, " , affect "

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    const-string/jumbo v3, " , window bright value "

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return v0

    :cond_48
    move v2, p1

    .line 93
    goto :goto_9

    .line 96
    :pswitch_4a
    int-to-float v0, v2

    div-float/2addr v0, v6

    .line 97
    goto :goto_d

    .line 99
    :pswitch_4d
    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 100
    if-le v1, v0, :cond_5d

    .line 101
    :goto_57
    int-to-float v0, v0

    div-float/2addr v0, v6

    .line 102
    goto :goto_d

    .line 104
    :pswitch_5a
    const/high16 v0, 0x3f800000    # 1.0f

    .line 105
    goto :goto_d

    :cond_5d
    move v0, v1

    goto :goto_57

    .line 94
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4d
        :pswitch_5a
    .end packed-switch
.end method

.method private amZ(F)I
    .registers 3

    .prologue
    .line 171
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    .line 172
    const/4 v0, 0x0

    return v0

    .line 173
    :cond_8
    const/high16 v0, 0x43c80000    # 400.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    .line 174
    const/4 v0, 0x1

    return v0

    .line 176
    :cond_10
    const/4 v0, 0x2

    return v0
.end method

.method private ana(F)I
    .registers 3

    .prologue
    .line 199
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    .line 200
    const/16 v0, 0x3d

    .line 212
    :goto_8
    return v0

    .line 201
    :cond_9
    const/high16 v0, 0x43c80000    # 400.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_12

    .line 202
    const/16 v0, 0x64

    goto :goto_8

    .line 203
    :cond_12
    const/high16 v0, 0x44610000    # 900.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1b

    .line 204
    const/16 v0, 0x6e

    goto :goto_8

    .line 205
    :cond_1b
    const/high16 v0, 0x44fa0000    # 2000.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_24

    .line 206
    const/16 v0, 0x82

    goto :goto_8

    .line 207
    :cond_24
    const v0, 0x459c4000    # 5000.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2e

    .line 208
    const/16 v0, 0xaa

    goto :goto_8

    .line 210
    :cond_2e
    const/16 v0, 0xdf

    goto :goto_8
.end method

.method private anb(F)I
    .registers 3

    .prologue
    .line 181
    const/high16 v0, 0x43c80000    # 400.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    .line 182
    const/16 v0, 0x78

    .line 186
    :goto_8
    return v0

    .line 184
    :cond_9
    const/16 v0, 0xdf

    goto :goto_8
.end method

.method private anc(F)I
    .registers 3

    .prologue
    .line 190
    const/high16 v0, 0x43c80000    # 400.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    .line 191
    const/16 v0, 0xc8

    .line 195
    :goto_8
    return v0

    .line 193
    :cond_9
    const/16 v0, 0xe9

    goto :goto_8
.end method


# virtual methods
.method public amW()F
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/android/common/q/a;->afI:F

    return v0
.end method

.method public amY(Landroid/app/Activity;Lcom/android/common/q/b;)V
    .registers 6

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/q/a;->afK:I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_d} :catch_30

    .line 51
    :goto_d
    iget v0, p0, Lcom/android/common/q/a;->afK:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/q/a;->afI:F

    .line 53
    const-string/jumbo v0, "sensor"

    .line 52
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/common/q/a;->afL:Landroid/hardware/SensorManager;

    .line 54
    iget-object v0, p0, Lcom/android/common/q/a;->afL:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/common/q/a;->afL:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 56
    iput-object p2, p0, Lcom/android/common/q/a;->afJ:Lcom/android/common/q/b;

    .line 44
    return-void

    .line 47
    :catch_30
    move-exception v0

    goto :goto_d
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .prologue
    .line 63
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 69
    iget-object v0, p0, Lcom/android/common/q/a;->afJ:Lcom/android/common/q/b;

    if-eqz v0, :cond_34

    .line 71
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acG()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 72
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/common/q/a;->anb(F)I

    move-result v0

    .line 80
    :goto_1d
    iget v1, p0, Lcom/android/common/q/a;->afK:I

    .line 81
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/common/q/a;->amZ(F)I

    move-result v2

    .line 78
    invoke-direct {p0, v1, v0, v2}, Lcom/android/common/q/a;->amX(III)F

    move-result v0

    iput v0, p0, Lcom/android/common/q/a;->afI:F

    .line 82
    iget-object v0, p0, Lcom/android/common/q/a;->afJ:Lcom/android/common/q/b;

    iget v1, p0, Lcom/android/common/q/a;->afI:F

    invoke-interface {v0, v1}, Lcom/android/common/q/b;->and(F)V

    .line 84
    :cond_34
    iget-object v0, p0, Lcom/android/common/q/a;->afL:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3f

    .line 85
    iget-object v0, p0, Lcom/android/common/q/a;->afL:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 86
    iput-object v4, p0, Lcom/android/common/q/a;->afL:Landroid/hardware/SensorManager;

    .line 68
    :cond_3f
    return-void

    .line 73
    :cond_40
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acG()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_58

    .line 74
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/common/q/a;->anc(F)I

    move-result v0

    goto :goto_1d

    .line 76
    :cond_58
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/common/q/a;->ana(F)I

    move-result v0

    goto :goto_1d
.end method

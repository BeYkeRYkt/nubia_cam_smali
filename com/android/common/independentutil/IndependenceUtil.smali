.class public Lcom/android/common/independentutil/IndependenceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final agA:Z

.field public static final agB:Z

.field private static agC:Landroid/content/Context;

.field public static final agb:Z

.field public static final agc:Z

.field public static final agd:Z

.field public static final age:Z

.field public static final agf:Z

.field public static final agg:Z

.field public static final agh:Z

.field public static final agi:Z

.field public static final agj:Z

.field public static final agk:Z

.field public static final agl:Z

.field public static final agm:Z

.field public static final agn:Z

.field public static final ago:Z

.field public static final agp:Z

.field public static final agq:Z

.field public static final agr:Z

.field public static final ags:Z

.field public static final agt:Z

.field public static final agu:Z

.field public static final agv:Z

.field public static final agw:Z

.field public static final agx:Z

.field public static final agy:Z

.field public static final agz:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b2

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agu:Z

    .line 21
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->any()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    .line 22
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anF()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agy:Z

    .line 23
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anL()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agB:Z

    .line 24
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anJ()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agf:Z

    .line 25
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anM()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agg:Z

    .line 26
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anK()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agt:Z

    .line 27
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anV()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agA:Z

    .line 28
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anE()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agl:Z

    .line 29
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anO()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agm:Z

    .line 30
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anI()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agd:Z

    .line 31
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anP()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agn:Z

    .line 32
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anD()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->ago:Z

    .line 33
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anS()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agp:Z

    .line 34
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anz()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agj:Z

    .line 35
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anB()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agq:Z

    .line 36
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anR()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agh:Z

    .line 37
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anA()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->ags:Z

    .line 38
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anG()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agr:Z

    .line 39
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anH()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agz:Z

    .line 40
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anT()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->age:Z

    .line 41
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anN()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agw:Z

    .line 42
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anW()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agi:Z

    .line 43
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anQ()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agk:Z

    .line 44
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anU()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agx:Z

    .line 45
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anC()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agv:Z

    .line 46
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anX()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agc:Z

    .line 507
    const-string/jumbo v0, "nubiajpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 508
    const-string/jumbo v0, "IndependenceUtil"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 20
    :cond_b2
    const/4 v0, 0x0

    goto/16 :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static anA()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 237
    sget-boolean v2, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-eqz v2, :cond_15

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->acD()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 238
    return v0

    .line 242
    :cond_15
    :try_start_15
    const-string/jumbo v2, "android.hardware.Camera$Parameters"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 243
    const-string/jumbo v3, "setFocusPosition"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2f} :catch_30

    .line 247
    :goto_2f
    return v0

    .line 244
    :catch_30
    move-exception v0

    move v0, v1

    .line 245
    goto :goto_2f
.end method

.method private static anB()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    :try_start_2
    const-string/jumbo v2, "android.hardware.Camera$Parameters"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 216
    const-string/jumbo v3, "setAutoExposure"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_18

    .line 220
    :goto_17
    return v0

    .line 217
    :catch_18
    move-exception v0

    move v0, v1

    .line 218
    goto :goto_17
.end method

.method private static anC()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 375
    :try_start_2
    const-string/jumbo v2, "com.qualcomm.camera.QCFace"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 376
    const-string/jumbo v3, "getBlinkDetected"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 377
    const-string/jumbo v3, "getLeftRightDirection"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 378
    const-string/jumbo v3, "getUpDownDirection"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_4a

    move v2, v0

    .line 383
    :goto_25
    if-nez v2, :cond_50

    .line 385
    :try_start_27
    const-string/jumbo v2, "org.codeaurora.camera.QCFace"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 386
    const-string/jumbo v3, "getBlinkDetected"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 387
    const-string/jumbo v3, "getLeftRightDirection"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 388
    const-string/jumbo v3, "getUpDownDirection"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_49} :catch_4d

    .line 395
    :goto_49
    return v0

    .line 380
    :catch_4a
    move-exception v2

    move v2, v1

    .line 381
    goto :goto_25

    .line 390
    :catch_4d
    move-exception v0

    move v0, v1

    .line 391
    goto :goto_49

    :cond_50
    move v0, v2

    goto :goto_49
.end method

.method private static anD()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    :try_start_2
    const-string/jumbo v2, "android.hardware.Camera$Parameters"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 181
    const-string/jumbo v3, "getMaxContrast"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 182
    const-string/jumbo v3, "setContrast"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 186
    :goto_20
    return v0

    .line 183
    :catch_21
    move-exception v0

    move v0, v1

    .line 184
    goto :goto_20
.end method

.method private static anE()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    :try_start_2
    const-string/jumbo v2, "android.hardware.Camera$Parameters"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 133
    const-string/jumbo v3, "getSupportedDenoiseModes"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 134
    const-string/jumbo v3, "setDenoise"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 138
    :goto_20
    return v0

    .line 135
    :catch_21
    move-exception v0

    move v0, v1

    .line 136
    goto :goto_20
.end method

.method private static anF()Z
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x1

    .line 60
    :try_start_1
    const-string/jumbo v1, "android.opengl.EGL14"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_8

    .line 64
    :goto_7
    return v0

    .line 61
    :catch_8
    move-exception v0

    .line 62
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static anG()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 255
    :try_start_2
    const-string/jumbo v2, "android.hardware.Camera$Parameters"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 256
    const-string/jumbo v3, "getSupportedFaceDetectionModes"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 257
    const-string/jumbo v3, "setFaceDetectionMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 261
    :goto_20
    return v0

    .line 258
    :catch_21
    move-exception v0

    move v0, v1

    .line 259
    goto :goto_20
.end method

.method private static anH()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 265
    const/4 v0, 0x1

    .line 267
    :try_start_2
    const-string/jumbo v2, "android.hardware.Camera$Parameters"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 268
    const-string/jumbo v3, "getSupportedHistogramModes"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    .line 272
    :goto_12
    return v0

    .line 269
    :catch_13
    move-exception v0

    move v0, v1

    .line 270
    goto :goto_12
.end method

.method private static anI()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    :try_start_2
    const-string/jumbo v2, "android.hardware.Camera$Parameters"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 157
    const-string/jumbo v3, "getSupportedIsoValues"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 158
    const-string/jumbo v3, "setISOValue"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 162
    :goto_20
    return v0

    .line 159
    :catch_21
    move-exception v0

    move v0, v1

    .line 160
    goto :goto_20
.end method

.method private static anJ()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    :try_start_2
    const-class v2, Landroid/hardware/Camera;

    const-string/jumbo v3, "setLongshot"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    .line 85
    :goto_12
    return v0

    .line 82
    :catch_13
    move-exception v0

    move v0, v1

    .line 83
    goto :goto_12
.end method

.method private static anK()Z
    .registers 3

    .prologue
    .line 102
    const/4 v0, 0x1

    .line 104
    :try_start_1
    const-string/jumbo v1, "android.hardware.Camera$Parameters"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 105
    const-string/jumbo v2, "SCENE_MODE_HDR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    .line 109
    :goto_e
    return v0

    .line 106
    :catch_f
    move-exception v0

    .line 107
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static anL()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    :try_start_2
    const-string/jumbo v2, "cn.nubia.Motor.VibrationMotorFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 71
    const-string/jumbo v3, "createVibrationMotor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_18

    .line 75
    :goto_17
    return v0

    .line 72
    :catch_18
    move-exception v0

    move v0, v1

    .line 73
    goto :goto_17
.end method

.method private static anM()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    :try_start_2
    const-string/jumbo v2, "android.hardware.Camera"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 92
    const-string/jumbo v3, "openLegacy"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_1d

    .line 97
    :goto_1c
    return v0

    .line 93
    :catch_1d
    move-exception v0

    .line 95
    const-string/jumbo v2, "IndependenceUtil"

    const-string/jumbo v3, "isSupportedOpenLegacy failed!"

    invoke-static {v2, v3, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1c
.end method

.method private static anN()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 311
    const/4 v0, 0x1

    .line 313
    :try_start_2
    const-string/jumbo v2, "android.hardware.Camera$Parameters"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 314
    const-string/jumbo v3, "isPowerModeSupported"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    .line 318
    :goto_12
    return v0

    .line 315
    :catch_13
    move-exception v0

    move v0, v1

    .line 316
    goto :goto_12
.end method

.method private static anO()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    :try_start_2
    const-string/jumbo v2, "android.hardware.Camera$Parameters"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 145
    const-string/jumbo v3, "getSupportedRedeyeReductionModes"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 146
    const-string/jumbo v3, "setRedeyeReductionMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 150
    :goto_20
    return v0

    .line 147
    :catch_21
    move-exception v0

    move v0, v1

    .line 148
    goto :goto_20
.end method

.method private static anP()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    :try_start_2
    const-string/jumbo v2, "android.hardware.Camera$Parameters"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 169
    const-string/jumbo v3, "getMaxSaturation"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 170
    const-string/jumbo v3, "setSaturation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 174
    :goto_20
    return v0

    .line 171
    :catch_21
    move-exception v0

    move v0, v1

    .line 172
    goto :goto_20
.end method

.method private static anQ()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 415
    :try_start_2
    const-string/jumbo v2, "android.hardware.Camera$Parameters"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 416
    const-string/jumbo v3, "getSupportedSelectableZoneAf"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 417
    const-string/jumbo v3, "setSelectableZoneAf"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 421
    :goto_20
    return v0

    .line 418
    :catch_21
    move-exception v0

    move v0, v1

    .line 419
    goto :goto_20
.end method

.method private static anR()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    :try_start_2
    const-string/jumbo v2, "android.hardware.Camera$Parameters"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 228
    const-string/jumbo v3, "setZSLMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 229
    const-string/jumbo v3, "setCameraMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_26

    .line 233
    :goto_25
    return v0

    .line 230
    :catch_26
    move-exception v0

    move v0, v1

    .line 231
    goto :goto_25
.end method

.method private static anS()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 192
    :try_start_2
    const-string/jumbo v2, "android.hardware.Camera$Parameters"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 193
    const-string/jumbo v3, "getMaxSharpness"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 194
    const-string/jumbo v3, "setSharpness"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 198
    :goto_20
    return v0

    .line 195
    :catch_21
    move-exception v0

    move v0, v1

    .line 196
    goto :goto_20
.end method

.method private static anT()Z
    .registers 2

    .prologue
    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static anU()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 339
    :try_start_2
    const-string/jumbo v2, "com.qualcomm.camera.QCFace"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 340
    const-string/jumbo v3, "getSmileDegree"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_26

    move v2, v0

    .line 344
    :goto_13
    if-nez v2, :cond_2c

    .line 346
    :try_start_15
    const-string/jumbo v2, "org.codeaurora.camera.QCFace"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 347
    const-string/jumbo v3, "getSmileDegree"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_25} :catch_29

    .line 353
    :goto_25
    return v0

    .line 341
    :catch_26
    move-exception v2

    move v2, v1

    .line 342
    goto :goto_13

    .line 349
    :catch_29
    move-exception v0

    move v0, v1

    .line 350
    goto :goto_25

    :cond_2c
    move v0, v2

    goto :goto_25
.end method

.method private static anV()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 113
    const/4 v0, 0x1

    .line 115
    :try_start_2
    const-string/jumbo v2, "android.hardware.Camera$Parameters"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 116
    const-string/jumbo v3, "getTouchAfAec"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 117
    const-string/jumbo v3, "getSupportedTouchAfAec"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 118
    const-string/jumbo v3, "TOUCH_AF_AEC_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 119
    const-string/jumbo v3, "TOUCH_AF_AEC_ON"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_28

    .line 123
    :goto_27
    return v0

    .line 120
    :catch_28
    move-exception v0

    move v0, v1

    .line 121
    goto :goto_27
.end method

.method private static anW()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 325
    :try_start_2
    const-string/jumbo v2, "android.hardware.Camera$Parameters"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 326
    const-string/jumbo v3, "getSupportedVideoHighFrameRateModes"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 327
    const-string/jumbo v3, "setVideoHighFrameRate"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 328
    const-string/jumbo v3, "getVideoHighFrameRate"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 329
    const-string/jumbo v3, "getSupportedHfrSizes"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_33

    .line 333
    :goto_32
    return v0

    .line 330
    :catch_33
    move-exception v0

    move v0, v1

    .line 331
    goto :goto_32
.end method

.method private static anX()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 401
    :try_start_1
    const-string/jumbo v1, "android.media.MediaCodec"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 402
    const-string/jumbo v1, "android.media.MediaCodecInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 403
    const-string/jumbo v1, "android.media.MediaFormat"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 404
    const-string/jumbo v1, "android.media.MediaMuxer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    .line 409
    :goto_19
    return v0

    .line 406
    :catch_1a
    move-exception v0

    .line 407
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static anp()Z
    .registers 1

    .prologue
    .line 292
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aej()Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static anq(Landroid/hardware/Camera$Face;)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 359
    :try_start_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Face;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getSmileDegree"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1b} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1b} :catch_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1b} :catch_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1b} :catch_1d

    move-result v0

    .line 369
    :goto_1c
    return v0

    .line 366
    :catch_1d
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v0, v1

    goto :goto_1c

    .line 364
    :catch_23
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move v0, v1

    goto :goto_1c

    .line 362
    :catch_29
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v0, v1

    goto :goto_1c

    .line 360
    :catch_2f
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v1

    goto :goto_1c
.end method

.method public static anr()Z
    .registers 1

    .prologue
    .line 307
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agu:Z

    return v0
.end method

.method public static ans()Z
    .registers 1

    .prologue
    .line 284
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    return v0
.end method

.method public static ant()Z
    .registers 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 459
    sget-object v0, Lcom/android/common/independentutil/IndependenceUtil;->agC:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 460
    return v2

    .line 462
    :cond_7
    sget-object v0, Lcom/android/common/independentutil/IndependenceUtil;->agC:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 465
    :try_start_12
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v3, "getVolumePaths"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 466
    array-length v4, v0
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_2a} :catch_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_2a} :catch_5a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_2a} :catch_54
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_2a} :catch_4c

    move v3, v2

    move v1, v2

    :goto_2c
    if-ge v3, v4, :cond_51

    :try_start_2e
    aget-object v5, v0, v3

    .line 467
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "usb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_49

    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anw()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_44} :catch_67
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_44} :catch_69
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e .. :try_end_44} :catch_6b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2e .. :try_end_44} :catch_6d

    move-result v5

    if-eqz v5, :cond_49

    .line 468
    add-int/lit8 v1, v1, 0x1

    .line 466
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 477
    :catch_4c
    move-exception v0

    move v1, v2

    .line 478
    :goto_4e
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 480
    :cond_51
    :goto_51
    if-le v1, v8, :cond_66

    .line 481
    return v8

    .line 475
    :catch_54
    move-exception v0

    move v1, v2

    .line 476
    :goto_56
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_51

    .line 473
    :catch_5a
    move-exception v0

    move v1, v2

    .line 474
    :goto_5c
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_51

    .line 471
    :catch_60
    move-exception v0

    move v1, v2

    .line 472
    :goto_62
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_51

    .line 484
    :cond_66
    return v2

    .line 471
    :catch_67
    move-exception v0

    goto :goto_62

    .line 473
    :catch_69
    move-exception v0

    goto :goto_5c

    .line 475
    :catch_6b
    move-exception v0

    goto :goto_56

    .line 477
    :catch_6d
    move-exception v0

    goto :goto_4e
.end method

.method public static anu()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 426
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 427
    sget-object v0, Lcom/android/common/independentutil/IndependenceUtil;->agC:Landroid/content/Context;

    if-eqz v0, :cond_4f

    .line 428
    sget-object v0, Lcom/android/common/independentutil/IndependenceUtil;->agC:Landroid/content/Context;

    const-string/jumbo v3, "storage"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 430
    :try_start_19
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v5, "getVolumePaths"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 431
    array-length v5, v0

    move v3, v1

    :goto_32
    if-ge v3, v5, :cond_64

    aget-object v1, v0, v3

    .line 432
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "usb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_49

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_46} :catch_5f
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_46} :catch_5a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_19 .. :try_end_46} :catch_55
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19 .. :try_end_46} :catch_50

    move-result v6

    if-eqz v6, :cond_4d

    .line 431
    :cond_49
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_32

    :cond_4d
    move-object v0, v1

    :goto_4e
    move-object v2, v0

    .line 448
    :cond_4f
    :goto_4f
    return-object v2

    .line 443
    :catch_50
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4f

    .line 441
    :catch_55
    move-exception v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4f

    .line 439
    :catch_5a
    move-exception v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4f

    .line 437
    :catch_5f
    move-exception v0

    .line 438
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4f

    :cond_64
    move-object v0, v2

    goto :goto_4e
.end method

.method public static anv()Z
    .registers 1

    .prologue
    .line 503
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acu()Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static anw()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 491
    :try_start_1
    const-string/jumbo v0, "android.os.Environment"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 492
    const-string/jumbo v2, "getOtgStorageDirectory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_25

    .line 494
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    .line 499
    :goto_1e
    return-object v0

    .line 496
    :catch_1f
    move-exception v0

    .line 497
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-object v0, v1

    goto :goto_1e

    :cond_25
    move-object v0, v1

    goto :goto_1e
.end method

.method public static anx(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 49
    sput-object p0, Lcom/android/common/independentutil/IndependenceUtil;->agC:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private static any()Z
    .registers 2

    .prologue
    .line 53
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->getProductName()Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "Independence"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16
.end method

.method private static anz()Z
    .registers 3

    .prologue
    .line 202
    const/4 v0, 0x1

    .line 204
    :try_start_1
    const-string/jumbo v1, "android.hardware.Camera$Parameters"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 205
    const-string/jumbo v2, "KEY_QC_AE_BRACKET_HDR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    .line 209
    :goto_e
    return v0

    .line 206
    :catch_f
    move-exception v0

    .line 207
    const/4 v0, 0x0

    goto :goto_e
.end method

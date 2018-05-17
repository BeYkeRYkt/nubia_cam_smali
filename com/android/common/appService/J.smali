.class public Lcom/android/common/appService/J;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private kn:Landroid/app/Activity;

.field private ko:Lcom/android/common/appService/W;

.field private kp:Lcom/android/common/appService/K;

.field private volatile kq:Z

.field private kr:[I

.field private ks:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/common/appService/W;Lcom/android/common/appService/K;[I)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/appService/J;->kq:Z

    .line 18
    iput-object v2, p0, Lcom/android/common/appService/J;->ko:Lcom/android/common/appService/W;

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/common/appService/J;->ks:J

    .line 20
    iput-object v2, p0, Lcom/android/common/appService/J;->kp:Lcom/android/common/appService/K;

    .line 21
    iput-object v2, p0, Lcom/android/common/appService/J;->kn:Landroid/app/Activity;

    .line 22
    iput-object v2, p0, Lcom/android/common/appService/J;->kr:[I

    .line 37
    iput-object p1, p0, Lcom/android/common/appService/J;->kn:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Lcom/android/common/appService/J;->ko:Lcom/android/common/appService/W;

    .line 39
    iput-object p3, p0, Lcom/android/common/appService/J;->kp:Lcom/android/common/appService/K;

    .line 40
    iput-object p4, p0, Lcom/android/common/appService/J;->kr:[I

    .line 36
    return-void
.end method

.method private nP()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    iget-object v2, p0, Lcom/android/common/appService/J;->kn:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 114
    const-string/jumbo v3, "capture_service_camera_on"

    .line 112
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method private nQ(Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V
    .registers 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/common/appService/J;->kp:Lcom/android/common/appService/K;

    if-eqz v0, :cond_b

    .line 98
    iget-object v0, p0, Lcom/android/common/appService/J;->kp:Lcom/android/common/appService/K;

    iget-object v1, p0, Lcom/android/common/appService/J;->kr:[I

    invoke-interface {v0, v1, p1}, Lcom/android/common/appService/K;->nT([ILcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V

    .line 96
    :cond_b
    return-void
.end method

.method private nR()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/android/common/appService/J;->kp:Lcom/android/common/appService/K;

    if-eqz v0, :cond_a

    .line 55
    iget-object v0, p0, Lcom/android/common/appService/J;->kp:Lcom/android/common/appService/K;

    invoke-interface {v0}, Lcom/android/common/appService/K;->nU()V

    .line 58
    :cond_a
    iget-object v0, p0, Lcom/android/common/appService/J;->kr:[I

    if-eqz v0, :cond_13

    .line 59
    iget-object v0, p0, Lcom/android/common/appService/J;->kr:[I

    array-length v0, v0

    if-nez v0, :cond_19

    .line 60
    :cond_13
    sget-object v0, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->ku:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    invoke-direct {p0, v0}, Lcom/android/common/appService/J;->nQ(Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V

    .line 61
    return-void

    .line 65
    :cond_19
    :try_start_19
    iget-boolean v0, p0, Lcom/android/common/appService/J;->kq:Z

    if-eqz v0, :cond_1e

    return-void

    .line 66
    :cond_1e
    invoke-direct {p0}, Lcom/android/common/appService/J;->nS()V

    .line 68
    iget-boolean v0, p0, Lcom/android/common/appService/J;->kq:Z

    if-eqz v0, :cond_26

    return-void

    .line 70
    :cond_26
    iget-object v3, p0, Lcom/android/common/appService/J;->kr:[I

    array-length v4, v3

    move v2, v1

    :goto_2a
    if-ge v2, v4, :cond_73

    aget v5, v3, v2

    .line 71
    iget-object v0, p0, Lcom/android/common/appService/J;->kn:Landroid/app/Activity;

    invoke-static {v0, v5}, Lcom/android/common/h;->apX(Landroid/app/Activity;I)Lcom/android/common/cameradevice/j;

    .line 72
    iget-boolean v0, p0, Lcom/android/common/appService/J;->kq:Z

    if-eqz v0, :cond_38

    return-void

    .line 73
    :cond_38
    iget-object v0, p0, Lcom/android/common/appService/J;->ko:Lcom/android/common/appService/W;

    invoke-virtual {v0, v5}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->WJ()V

    .line 74
    iget-boolean v0, p0, Lcom/android/common/appService/J;->kq:Z

    if-eqz v0, :cond_46

    return-void

    .line 75
    :cond_46
    iget-object v0, p0, Lcom/android/common/appService/J;->ko:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qA()Lcom/android/common/setting/g;

    move-result-object v6

    .line 76
    iget-object v0, p0, Lcom/android/common/appService/J;->ko:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v7

    iget-object v0, p0, Lcom/android/common/appService/J;->ko:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v8

    .line 77
    iget-object v0, p0, Lcom/android/common/appService/J;->ko:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/common/appService/J;->ko:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    .line 75
    :goto_6a
    invoke-virtual {v6, v7, v5, v8, v0}, Lcom/android/common/setting/g;->UW(Landroid/content/Context;ILcom/android/common/appService/CameraMember;Z)V

    .line 70
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2a

    :cond_71
    move v0, v1

    .line 77
    goto :goto_6a

    .line 80
    :cond_73
    iget-boolean v0, p0, Lcom/android/common/appService/J;->kq:Z

    if-eqz v0, :cond_78

    return-void

    .line 82
    :cond_78
    iget-object v0, p0, Lcom/android/common/appService/J;->ko:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 84
    iget-boolean v0, p0, Lcom/android/common/appService/J;->kq:Z

    if-eqz v0, :cond_88

    return-void

    .line 85
    :cond_88
    sget-object v0, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kx:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    invoke-direct {p0, v0}, Lcom/android/common/appService/J;->nQ(Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V
    :try_end_8d
    .catch Lcom/android/common/cameradevice/CameraHardwareException; {:try_start_19 .. :try_end_8d} :catch_9e
    .catch Lcom/android/common/cameradevice/CameraDisabledException; {:try_start_19 .. :try_end_8d} :catch_8e

    .line 53
    :goto_8d
    return-void

    .line 90
    :catch_8e
    move-exception v0

    .line 91
    sget-object v1, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kv:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    invoke-direct {p0, v1}, Lcom/android/common/appService/J;->nQ(Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V

    .line 92
    const-string/jumbo v1, "CameraStartUpThread"

    const-string/jumbo v2, "disable"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8d

    .line 87
    :catch_9e
    move-exception v0

    .line 88
    sget-object v1, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kw:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    invoke-direct {p0, v1}, Lcom/android/common/appService/J;->nQ(Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V

    .line 89
    const-string/jumbo v1, "CameraStartUpThread"

    const-string/jumbo v2, "fail"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8d
.end method

.method private nS()V
    .registers 7

    .prologue
    const-wide/16 v4, 0xbb8

    .line 103
    :cond_2
    invoke-direct {p0}, Lcom/android/common/appService/J;->nP()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/common/appService/J;->ks:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    .line 106
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/common/appService/J;->ks:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_27

    .line 107
    const-string/jumbo v0, "CameraStartUpThread"

    const-string/jumbo v1, "Wait captureCamera release failed!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_27
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/appService/J;->kq:Z

    .line 43
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/appService/J;->ks:J

    .line 50
    invoke-direct {p0}, Lcom/android/common/appService/J;->nR()V

    .line 48
    return-void
.end method

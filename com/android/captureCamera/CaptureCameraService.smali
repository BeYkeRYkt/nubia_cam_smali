.class public Lcom/android/captureCamera/CaptureCameraService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final ayN:[I

.field private static final ayO:[I


# instance fields
.field private ayP:Landroid/hardware/Camera;

.field private ayQ:I

.field private ayR:Lcom/android/captureCamera/a;

.field private ayS:Landroid/content/Context;

.field private ayT:J

.field private ayU:I

.field private ayV:[I

.field private ayW:Landroid/hardware/Camera$AutoFocusCallback;

.field private ayX:Landroid/os/Handler;

.field private ayY:Lcom/android/captureCamera/b;

.field private ayZ:Z

.field private aza:Z

.field private azb:Z

.field private azc:Z

.field private azd:Lcom/android/common/r/a;

.field private aze:Lcom/android/captureCamera/f;

.field private azf:Landroid/hardware/Camera$Parameters;

.field private azg:Landroid/os/PowerManager;

.field private azh:Landroid/content/BroadcastReceiver;

.field private azi:Lcom/android/common/storagemanager/f;

.field private azj:Landroid/graphics/SurfaceTexture;

.field private azk:Lcom/android/common/storagemanager/h;

.field private azl:Lcom/android/captureCamera/d;

.field private azm:Landroid/os/Vibrator;

.field private azn:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 66
    filled-new-array {v4, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/CaptureCameraService;->ayO:[I

    .line 67
    const/4 v0, -0x1

    .line 68
    const/4 v1, 0x1

    .line 67
    filled-new-array {v2, v0, v3, v1, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/CaptureCameraService;->ayN:[I

    .line 45
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 70
    iput-boolean v3, p0, Lcom/android/captureCamera/CaptureCameraService;->ayZ:Z

    .line 71
    new-instance v0, Lcom/android/captureCamera/g;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/g;-><init>(Lcom/android/captureCamera/CaptureCameraService;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayW:Landroid/hardware/Camera$AutoFocusCallback;

    .line 80
    iput-boolean v3, p0, Lcom/android/captureCamera/CaptureCameraService;->azc:Z

    .line 81
    iput v3, p0, Lcom/android/captureCamera/CaptureCameraService;->ayQ:I

    .line 82
    iput-boolean v3, p0, Lcom/android/captureCamera/CaptureCameraService;->azb:Z

    .line 83
    const-wide/16 v0, 0x2bc

    iput-wide v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayT:J

    .line 84
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->ayV:[I

    .line 85
    iput v3, p0, Lcom/android/captureCamera/CaptureCameraService;->ayU:I

    .line 86
    iput-boolean v3, p0, Lcom/android/captureCamera/CaptureCameraService;->aza:Z

    .line 87
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->azj:Landroid/graphics/SurfaceTexture;

    .line 88
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    .line 89
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    .line 90
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->azg:Landroid/os/PowerManager;

    .line 91
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->azn:Landroid/os/PowerManager$WakeLock;

    .line 93
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    .line 94
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->ayY:Lcom/android/captureCamera/b;

    .line 96
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->azd:Lcom/android/common/r/a;

    .line 97
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->aze:Lcom/android/captureCamera/f;

    .line 98
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->ayR:Lcom/android/captureCamera/a;

    .line 99
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->azm:Landroid/os/Vibrator;

    .line 100
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->ayS:Landroid/content/Context;

    .line 101
    new-instance v0, Lcom/android/captureCamera/h;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/h;-><init>(Lcom/android/captureCamera/CaptureCameraService;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azh:Landroid/content/BroadcastReceiver;

    .line 127
    new-instance v0, Lcom/android/captureCamera/i;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/i;-><init>(Lcom/android/captureCamera/CaptureCameraService;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azk:Lcom/android/common/storagemanager/h;

    .line 260
    new-instance v0, Lcom/android/captureCamera/j;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/j;-><init>(Lcom/android/captureCamera/CaptureCameraService;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayX:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method private aNJ()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 616
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    if-nez v0, :cond_7

    .line 617
    return-void

    .line 618
    :cond_7
    iget-boolean v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayZ:Z

    if-nez v0, :cond_28

    .line 619
    const-string/jumbo v0, "CaptureCameraService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can\'t capture because mIsCanFocusCapture is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 620
    iget-boolean v2, p0, Lcom/android/captureCamera/CaptureCameraService;->ayZ:Z

    .line 619
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-void

    .line 623
    :cond_28
    const-string/jumbo v0, "CaptureCameraService"

    const-string/jumbo v1, "capture"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iput-boolean v3, p0, Lcom/android/captureCamera/CaptureCameraService;->ayZ:Z

    .line 625
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayX:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 626
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aNL()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    .line 628
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "ztemt_logo_type"

    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aNM()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 629
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    invoke-virtual {v0}, Lcom/android/captureCamera/d;->aNs()I

    move-result v0

    .line 630
    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    invoke-virtual {v1}, Lcom/android/captureCamera/d;->aNx()I

    move-result v1

    .line 629
    invoke-static {v0, v1}, Lcom/android/common/h;->aoU(II)I

    move-result v5

    .line 631
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 632
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 633
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    invoke-virtual {v0, v3}, Lcom/android/captureCamera/d;->aND(I)V

    .line 634
    iget-object v6, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    .line 637
    new-instance v0, Lcom/android/captureCamera/e;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azd:Lcom/android/common/r/a;

    invoke-interface {v1}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v1

    .line 638
    iget-object v3, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    iget-object v4, p0, Lcom/android/captureCamera/CaptureCameraService;->ayY:Lcom/android/captureCamera/b;

    move-object v2, p0

    .line 637
    invoke-direct/range {v0 .. v5}, Lcom/android/captureCamera/e;-><init>(Landroid/location/Location;Landroid/content/Context;Lcom/android/captureCamera/d;Lcom/android/captureCamera/b;I)V

    .line 634
    invoke-virtual {v6, v7, v7, v0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 639
    const-string/jumbo v0, "normal_3"

    const-string/jumbo v1, "CaptureCameraService"

    invoke-static {p0, v0, v1}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayX:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 615
    return-void
.end method

.method private aNK(Z)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 343
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 344
    const-string/jumbo v1, "isRunning"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 345
    if-eqz p1, :cond_2a

    .line 346
    const-string/jumbo v1, "runningReason"

    const-string/jumbo v2, "captureCamera start"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_1b
    const-string/jumbo v1, "content://com.android.camera.RunningStatusProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 351
    invoke-virtual {p0}, Lcom/android/captureCamera/CaptureCameraService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 342
    return-void

    .line 348
    :cond_2a
    const-string/jumbo v1, "runningReason"

    const-string/jumbo v2, "captureCamera stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private aNL()Landroid/hardware/Camera$Parameters;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 705
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    if-eqz v0, :cond_c

    .line 706
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0

    .line 707
    :cond_c
    return-object v1
.end method

.method private aNM()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 644
    new-instance v0, Lcom/android/common/setting/e;

    invoke-direct {v0, p0}, Lcom/android/common/setting/e;-><init>(Landroid/content/Context;)V

    .line 645
    const-string/jumbo v1, "on"

    const-string/jumbo v2, "pref_water_mark_key"

    const-string/jumbo v3, "on"

    invoke-virtual {v0, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 646
    const-string/jumbo v2, "on"

    const-string/jumbo v3, "pref_water_mark_time_key"

    const-string/jumbo v4, "off"

    invoke-virtual {v0, v3, v4}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 647
    if-nez v1, :cond_2c

    if-eqz v0, :cond_36

    .line 650
    :cond_2c
    if-eqz v1, :cond_30

    if-eqz v0, :cond_37

    .line 653
    :cond_30
    if-nez v1, :cond_39

    if-eqz v0, :cond_39

    .line 654
    const/4 v0, 0x2

    return v0

    .line 648
    :cond_36
    return v5

    .line 651
    :cond_37
    const/4 v0, 0x1

    return v0

    .line 656
    :cond_39
    if-eqz v1, :cond_3f

    if-eqz v0, :cond_3f

    .line 657
    const/4 v0, 0x3

    return v0

    .line 659
    :cond_3f
    return v5
.end method

.method private aNN()V
    .registers 3

    .prologue
    .line 355
    new-instance v0, Lcom/android/captureCamera/d;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    .line 356
    new-instance v0, Lcom/android/captureCamera/b;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayY:Lcom/android/captureCamera/b;

    .line 357
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    invoke-virtual {v0}, Lcom/android/captureCamera/d;->aNs()I

    move-result v0

    iput v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayQ:I

    .line 358
    new-instance v0, Lcom/android/common/r/d;

    invoke-direct {v0, p0}, Lcom/android/common/r/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azd:Lcom/android/common/r/a;

    .line 359
    new-instance v0, Lcom/android/captureCamera/f;

    invoke-direct {v0, p0, p0}, Lcom/android/captureCamera/f;-><init>(Lcom/android/captureCamera/CaptureCameraService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->aze:Lcom/android/captureCamera/f;

    .line 360
    new-instance v0, Lcom/android/captureCamera/a;

    invoke-direct {v0}, Lcom/android/captureCamera/a;-><init>()V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayR:Lcom/android/captureCamera/a;

    .line 361
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->ayX:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/captureCamera/d;->aNE(Landroid/os/Handler;)V

    .line 362
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/captureCamera/CaptureCameraService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azm:Landroid/os/Vibrator;

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayZ:Z

    .line 364
    new-instance v0, Lcom/android/common/storagemanager/f;

    invoke-direct {v0}, Lcom/android/common/storagemanager/f;-><init>()V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azi:Lcom/android/common/storagemanager/f;

    .line 365
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aOf()V

    .line 354
    return-void
.end method

.method private aNO()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 726
    invoke-virtual {p0}, Lcom/android/captureCamera/CaptureCameraService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 727
    const-string/jumbo v3, "capture_service_camera_on"

    .line 725
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method private aNP()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    :try_start_2
    invoke-virtual {p0}, Lcom/android/captureCamera/CaptureCameraService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 194
    const-string/jumbo v3, "device_provisioned"

    .line 193
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_12

    move-result v2

    if-ne v2, v0, :cond_10

    .line 198
    :goto_f
    return v0

    :cond_10
    move v0, v1

    .line 193
    goto :goto_f

    .line 195
    :catch_12
    move-exception v0

    .line 196
    const-string/jumbo v2, "CaptureCameraService"

    const-string/jumbo v3, "Setting not found"

    invoke-static {v2, v3, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_f
.end method

.method private aNQ()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 204
    :try_start_1
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayS:Landroid/content/Context;

    .line 205
    const-string/jumbo v2, "phone"

    .line 204
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 206
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_16

    move-result v0

    .line 207
    if-nez v0, :cond_14

    move v0, v1

    .line 215
    :goto_13
    return v0

    .line 210
    :cond_14
    const/4 v0, 0x1

    goto :goto_13

    .line 212
    :catch_16
    move-exception v0

    .line 213
    const-string/jumbo v2, "CaptureCameraService"

    const-string/jumbo v3, "isPhoneCalled failed!"

    invoke-static {v2, v3, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_13
.end method

.method private aNR()V
    .registers 5

    .prologue
    .line 699
    const-string/jumbo v0, "CaptureCameraService"

    const-string/jumbo v1, "onCaptureFinish"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azm:Landroid/os/Vibrator;

    if-eqz v0, :cond_14

    .line 701
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azm:Landroid/os/Vibrator;

    const-wide/16 v2, 0x2d

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 689
    :cond_14
    return-void
.end method

.method private aNS()V
    .registers 3

    .prologue
    .line 459
    :try_start_0
    iget v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayQ:I

    .line 460
    const/16 v1, 0x100

    .line 459
    invoke-static {v0, v1}, Landroid/hardware/Camera;->openLegacy(II)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    .line 457
    :goto_a
    return-void

    .line 461
    :catch_b
    move-exception v0

    .line 462
    const-string/jumbo v0, "CaptureCameraService"

    const-string/jumbo v1, "openLegacy failed. Using open instead"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayQ:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    goto :goto_a
.end method

.method private aNT()V
    .registers 3

    .prologue
    .line 380
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 381
    const-string/jumbo v1, "com.nubia_bt.capture"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string/jumbo v1, "stop_service_camera"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string/jumbo v1, "com.android.captureCamera.CaptureCameraService"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azh:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/captureCamera/CaptureCameraService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 379
    return-void
.end method

.method private aNU()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 411
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    if-nez v0, :cond_a

    .line 412
    invoke-direct {p0, v1}, Lcom/android/captureCamera/CaptureCameraService;->aNW(Z)V

    .line 413
    return-void

    .line 415
    :cond_a
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aNV()V

    .line 416
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 417
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 418
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    .line 419
    invoke-direct {p0, v1}, Lcom/android/captureCamera/CaptureCameraService;->aNW(Z)V

    .line 410
    return-void
.end method

.method private aNV()V
    .registers 4

    .prologue
    .line 489
    sget-boolean v0, Lcom/android/common/h;->ahs:Z

    if-eqz v0, :cond_1f

    .line 490
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    if-eqz v0, :cond_1f

    .line 491
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 492
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "snapshot-onoff"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 493
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 488
    :cond_1f
    return-void
.end method

.method private aNW(Z)V
    .registers 5

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/android/captureCamera/CaptureCameraService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 733
    const-string/jumbo v2, "capture_service_camera_on"

    .line 734
    if-eqz p1, :cond_e

    const/4 v0, 0x1

    .line 732
    :goto_a
    invoke-static {v1, v2, v0}, Lcom/android/common/h;->aqb(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 731
    return-void

    .line 735
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private aNX()V
    .registers 4

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    .line 527
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "denoise"

    const-string/jumbo v2, "denoise-on"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 525
    return-void
.end method

.method private aNY()V
    .registers 4

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    .line 476
    sget-boolean v0, Lcom/android/common/h;->ahs:Z

    if-eqz v0, :cond_1d

    .line 477
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "snapshot-onoff"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 482
    :goto_15
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 474
    return-void

    .line 479
    :cond_1d
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "ae-bracket-hdr"

    const-string/jumbo v2, "AE-Bracket"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "capture-burst-exposures"

    const-string/jumbo v2, "-12,0,12"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method private aNZ(I)V
    .registers 4

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    if-nez v0, :cond_5

    .line 519
    return-void

    .line 520
    :cond_5
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    .line 521
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 522
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 517
    return-void
.end method

.method static synthetic aOA(Lcom/android/captureCamera/CaptureCameraService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aNO()Z

    move-result v0

    return v0
.end method

.method static synthetic aOB(Lcom/android/captureCamera/CaptureCameraService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aNP()Z

    move-result v0

    return v0
.end method

.method static synthetic aOC(Lcom/android/captureCamera/CaptureCameraService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aNQ()Z

    move-result v0

    return v0
.end method

.method static synthetic aOD(Lcom/android/captureCamera/CaptureCameraService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aNJ()V

    return-void
.end method

.method static synthetic aOE(Lcom/android/captureCamera/CaptureCameraService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aNR()V

    return-void
.end method

.method static synthetic aOF(Lcom/android/captureCamera/CaptureCameraService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aNU()V

    return-void
.end method

.method static synthetic aOG(Lcom/android/captureCamera/CaptureCameraService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/captureCamera/CaptureCameraService;->aNW(Z)V

    return-void
.end method

.method static synthetic aOH(Lcom/android/captureCamera/CaptureCameraService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aOi()V

    return-void
.end method

.method static synthetic aOI(Lcom/android/captureCamera/CaptureCameraService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aOj()V

    return-void
.end method

.method static synthetic aOJ(Lcom/android/captureCamera/CaptureCameraService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aOl()V

    return-void
.end method

.method static synthetic aOK(Lcom/android/captureCamera/CaptureCameraService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aOm()V

    return-void
.end method

.method static synthetic aOL(Lcom/android/captureCamera/CaptureCameraService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aOn()V

    return-void
.end method

.method private aOa()V
    .registers 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    .line 534
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 531
    return-void
.end method

.method private aOb()V
    .registers 4

    .prologue
    .line 451
    const-string/jumbo v0, "CaptureCameraService"

    const-string/jumbo v1, "setMode camera_app_mode 18"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    .line 453
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "camera_app_mode"

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 454
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 450
    return-void
.end method

.method private aOc()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 587
    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 588
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v2, v1

    if-le v4, v5, :cond_5b

    .line 589
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    .line 590
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    :goto_26
    move v2, v1

    move v1, v0

    goto :goto_d

    .line 593
    :cond_29
    const-string/jumbo v0, "CaptureCameraService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPictureSize() width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 595
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 584
    return-void

    :cond_5b
    move v0, v1

    move v1, v2

    goto :goto_26
.end method

.method private aOd()V
    .registers 4

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    if-nez v0, :cond_5

    .line 499
    return-void

    .line 500
    :cond_5
    const/16 v0, 0x280

    .line 501
    const/16 v1, 0x1e0

    .line 512
    iget-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    .line 513
    iget-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 514
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 497
    return-void
.end method

.method private aOe(Z)V
    .registers 5

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/android/captureCamera/CaptureCameraService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 740
    const-string/jumbo v2, "capture_service_on"

    .line 741
    if-eqz p1, :cond_e

    const/4 v0, 0x1

    .line 739
    :goto_a
    invoke-static {v1, v2, v0}, Lcom/android/common/h;->aqb(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 738
    return-void

    .line 742
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private aOf()V
    .registers 5

    .prologue
    const v3, 0x7f0a03a9

    .line 369
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 370
    const-string/jumbo v1, "pref_camera_storage_path"

    .line 371
    invoke-virtual {p0, v3}, Lcom/android/captureCamera/CaptureCameraService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {p0, v3}, Lcom/android/captureCamera/CaptureCameraService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 373
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/common/f;->aoA(Z)V

    .line 368
    :goto_20
    return-void

    .line 375
    :cond_21
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/common/f;->aoA(Z)V

    goto :goto_20
.end method

.method private aOg()V
    .registers 3

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    .line 540
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->getProductName()Ljava/lang/String;

    .line 541
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    invoke-virtual {v0}, Lcom/android/captureCamera/d;->aNz()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    invoke-virtual {v0}, Lcom/android/captureCamera/d;->aNs()I

    move-result v0

    if-nez v0, :cond_31

    .line 542
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acI()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 546
    :cond_31
    const-string/jumbo v0, "on"

    invoke-direct {p0, v0}, Lcom/android/captureCamera/CaptureCameraService;->aOh(Ljava/lang/String;)V

    .line 547
    const-string/jumbo v0, "CaptureCameraService"

    const-string/jumbo v1, "setZSL on"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :goto_40
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 538
    return-void

    .line 543
    :cond_48
    const-string/jumbo v0, "off"

    invoke-direct {p0, v0}, Lcom/android/captureCamera/CaptureCameraService;->aOh(Ljava/lang/String;)V

    .line 544
    const-string/jumbo v0, "CaptureCameraService"

    const-string/jumbo v1, "setZSL off"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method private aOh(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 557
    sget-boolean v2, Lcom/android/common/h;->ahs:Z

    if-eqz v2, :cond_2d

    .line 558
    iget-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "zsd-mode"

    invoke-virtual {v2, v3, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "mtk-cam-mode"

    const-string/jumbo v4, "on"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    :goto_1c
    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 560
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "cap-mode"

    const-string/jumbo v2, "normal"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :goto_2a
    return-void

    :cond_2b
    move v0, v1

    .line 559
    goto :goto_1c

    .line 562
    :cond_2d
    iget-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "zsl"

    invoke-virtual {v2, v3, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "camera-mode"

    const-string/jumbo v4, "on"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    :goto_43
    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_2a

    :cond_47
    move v0, v1

    goto :goto_43
.end method

.method private aOi()V
    .registers 4

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aOk()V

    .line 424
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    invoke-virtual {v0}, Lcom/android/captureCamera/d;->aNs()I

    move-result v0

    iput v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayQ:I

    .line 425
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azj:Landroid/graphics/SurfaceTexture;

    .line 426
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    if-nez v0, :cond_1b

    .line 427
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aNS()V

    .line 430
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azj:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_60

    .line 434
    :goto_22
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    .line 435
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aOc()V

    .line 436
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aOd()V

    .line 437
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aNX()V

    .line 438
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aOa()V

    .line 439
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aOg()V

    .line 440
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aOb()V

    .line 442
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    invoke-virtual {v0}, Lcom/android/captureCamera/d;->aNz()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    invoke-virtual {v0}, Lcom/android/captureCamera/d;->aNs()I

    move-result v0

    if-nez v0, :cond_4f

    .line 443
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aNY()V

    .line 445
    :cond_4f
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 446
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/android/captureCamera/d;->aNB(Landroid/hardware/Camera;)V

    .line 447
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/captureCamera/CaptureCameraService;->aNW(Z)V

    .line 422
    return-void

    .line 431
    :catch_60
    move-exception v0

    .line 432
    const-string/jumbo v1, "CaptureCameraService"

    const-string/jumbo v2, "setPreviewTexture"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method private aOj()V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    invoke-virtual {v0}, Lcom/android/captureCamera/d;->aNt()Lcom/android/captureCamera/CaptureCameraState;

    move-result-object v0

    sget-object v1, Lcom/android/captureCamera/CaptureCameraState;->azp:Lcom/android/captureCamera/CaptureCameraState;

    if-ne v0, v1, :cond_29

    .line 222
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayR:Lcom/android/captureCamera/a;

    invoke-virtual {v0}, Lcom/android/captureCamera/a;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_29

    .line 223
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayR:Lcom/android/captureCamera/a;

    invoke-virtual {v0}, Lcom/android/captureCamera/a;->aNk()V

    .line 226
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayX:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 227
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->aze:Lcom/android/captureCamera/f;

    if-eqz v0, :cond_28

    .line 228
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->aze:Lcom/android/captureCamera/f;

    invoke-virtual {v0}, Lcom/android/captureCamera/f;->enable()V

    .line 218
    :cond_28
    :goto_28
    return-void

    .line 231
    :cond_29
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayR:Lcom/android/captureCamera/a;

    invoke-virtual {v0}, Lcom/android/captureCamera/a;->aNk()V

    goto :goto_28
.end method

.method private aOk()V
    .registers 3

    .prologue
    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "stop_camera_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/captureCamera/CaptureCameraService;->sendBroadcast(Landroid/content/Intent;)V

    .line 467
    return-void
.end method

.method private aOl()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 568
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    if-eqz v0, :cond_11

    .line 569
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 570
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 571
    iput-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    .line 573
    :cond_11
    iget v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayQ:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    .line 575
    :try_start_19
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azj:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_31

    .line 579
    :goto_20
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    .line 580
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aOc()V

    .line 581
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 567
    return-void

    .line 576
    :catch_31
    move-exception v0

    .line 577
    const-string/jumbo v1, "CaptureCameraService"

    const-string/jumbo v2, "setPreviewTexture"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method private aOm()V
    .registers 6

    .prologue
    const/16 v4, 0x67

    const/4 v2, 0x0

    .line 301
    iget v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayU:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayU:I

    .line 302
    iget v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayU:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_2f

    .line 303
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayV:[I

    iget v1, p0, Lcom/android/captureCamera/CaptureCameraService;->ayU:I

    aget v0, v0, v1

    .line 304
    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    invoke-virtual {v1}, Lcom/android/captureCamera/d;->aNv()I

    move-result v1

    .line 303
    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/captureCamera/CaptureCameraService;->aNZ(I)V

    .line 311
    iget v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayU:I

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->ayV:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3c

    .line 312
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayX:Landroid/os/Handler;

    .line 313
    iget-wide v2, p0, Lcom/android/captureCamera/CaptureCameraService;->ayT:J

    .line 312
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 300
    :goto_2e
    return-void

    .line 306
    :cond_2f
    invoke-direct {p0, v2}, Lcom/android/captureCamera/CaptureCameraService;->aNZ(I)V

    .line 307
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    sget-object v1, Lcom/android/captureCamera/CaptureCameraState;->azp:Lcom/android/captureCamera/CaptureCameraState;

    invoke-virtual {v0, v1}, Lcom/android/captureCamera/d;->aNC(Lcom/android/captureCamera/CaptureCameraState;)V

    .line 308
    iput-boolean v2, p0, Lcom/android/captureCamera/CaptureCameraService;->aza:Z

    .line 309
    return-void

    .line 315
    :cond_3c
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayX:Landroid/os/Handler;

    .line 316
    const-wide/16 v2, 0x276

    .line 315
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2e
.end method

.method private aOn()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 667
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayR:Lcom/android/captureCamera/a;

    invoke-virtual {v0}, Lcom/android/captureCamera/a;->getCount()I

    move-result v0

    if-ge v0, v4, :cond_a

    .line 668
    return-void

    .line 670
    :cond_a
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->ayS:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/captureCamera/d;->aNA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 671
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayR:Lcom/android/captureCamera/a;

    invoke-virtual {v0}, Lcom/android/captureCamera/a;->aNm()V

    .line 672
    const-string/jumbo v0, "CaptureCameraService"

    const-string/jumbo v1, "takePicture failed. It is screen on!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return-void

    .line 675
    :cond_27
    const-string/jumbo v0, "CaptureCameraService"

    const-string/jumbo v1, "takePicture"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayX:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 677
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    invoke-virtual {v0}, Lcom/android/captureCamera/d;->aNt()Lcom/android/captureCamera/CaptureCameraState;

    move-result-object v0

    sget-object v1, Lcom/android/captureCamera/CaptureCameraState;->azp:Lcom/android/captureCamera/CaptureCameraState;

    if-eq v0, v1, :cond_42

    .line 678
    return-void

    .line 679
    :cond_42
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayR:Lcom/android/captureCamera/a;

    invoke-virtual {v0}, Lcom/android/captureCamera/a;->aNl()V

    .line 680
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    sget-object v1, Lcom/android/captureCamera/CaptureCameraState;->azq:Lcom/android/captureCamera/CaptureCameraState;

    invoke-virtual {v0, v1}, Lcom/android/captureCamera/d;->aNC(Lcom/android/captureCamera/CaptureCameraState;)V

    .line 681
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/captureCamera/d;->aNF(J)V

    .line 683
    iput-boolean v4, p0, Lcom/android/captureCamera/CaptureCameraService;->ayZ:Z

    .line 684
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->ayW:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 685
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayX:Landroid/os/Handler;

    const/16 v1, 0x6b

    .line 686
    const-wide/16 v2, 0x384

    .line 685
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 663
    return-void
.end method

.method static synthetic aOo(Lcom/android/captureCamera/CaptureCameraService;)Landroid/hardware/Camera;
    .registers 2

    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayP:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic aOp(Lcom/android/captureCamera/CaptureCameraService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayS:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic aOq(Lcom/android/captureCamera/CaptureCameraService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayX:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic aOr(Lcom/android/captureCamera/CaptureCameraService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azc:Z

    return v0
.end method

.method static synthetic aOs(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/f;
    .registers 2

    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->aze:Lcom/android/captureCamera/f;

    return-object v0
.end method

.method static synthetic aOt(Lcom/android/captureCamera/CaptureCameraService;)Landroid/hardware/Camera$Parameters;
    .registers 2

    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic aOu(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/common/storagemanager/f;
    .registers 2

    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azi:Lcom/android/common/storagemanager/f;

    return-object v0
.end method

.method static synthetic aOv(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/common/storagemanager/h;
    .registers 2

    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azk:Lcom/android/common/storagemanager/h;

    return-object v0
.end method

.method static synthetic aOw(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/d;
    .registers 2

    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azl:Lcom/android/captureCamera/d;

    return-object v0
.end method

.method static synthetic aOx(Lcom/android/captureCamera/CaptureCameraService;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    iput-object p1, p0, Lcom/android/captureCamera/CaptureCameraService;->ayS:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic aOy(Lcom/android/captureCamera/CaptureCameraService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/captureCamera/CaptureCameraService;->azb:Z

    return p1
.end method

.method static synthetic aOz(Lcom/android/captureCamera/CaptureCameraService;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .registers 2

    iput-object p1, p0, Lcom/android/captureCamera/CaptureCameraService;->azf:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 327
    const-string/jumbo v0, "CaptureCameraService"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/captureCamera/CaptureCameraService;->aNW(Z)V

    .line 330
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aNN()V

    .line 332
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aNT()V

    .line 333
    invoke-direct {p0, v2}, Lcom/android/captureCamera/CaptureCameraService;->aOe(Z)V

    .line 334
    invoke-static {}, Lcom/android/common/h;->apy()Lcom/android/common/i;

    move-result-object v0

    if-nez v0, :cond_23

    .line 335
    invoke-static {p0}, Lcom/android/common/h;->apE(Landroid/content/Context;)V

    .line 337
    :cond_23
    invoke-direct {p0, v2}, Lcom/android/captureCamera/CaptureCameraService;->aNK(Z)V

    .line 338
    invoke-virtual {p0}, Lcom/android/captureCamera/CaptureCameraService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/appService/CameraMember;->mj(Landroid/content/res/Resources;)V

    .line 339
    iput-boolean v2, p0, Lcom/android/captureCamera/CaptureCameraService;->azc:Z

    .line 326
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 389
    const-string/jumbo v0, "CaptureCameraService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 391
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayX:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayX:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayX:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 394
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayX:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayX:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayX:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    iput-boolean v2, p0, Lcom/android/captureCamera/CaptureCameraService;->ayZ:Z

    .line 398
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->aNU()V

    .line 399
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->aze:Lcom/android/captureCamera/f;

    invoke-virtual {v0}, Lcom/android/captureCamera/f;->disable()V

    .line 401
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azh:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/captureCamera/CaptureCameraService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 402
    invoke-direct {p0, v2}, Lcom/android/captureCamera/CaptureCameraService;->aOe(Z)V

    .line 403
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->ayY:Lcom/android/captureCamera/b;

    invoke-virtual {v0}, Lcom/android/captureCamera/b;->aNo()V

    .line 404
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azd:Lcom/android/common/r/a;

    invoke-interface {v0}, Lcom/android/common/r/a;->release()V

    .line 405
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->azi:Lcom/android/common/storagemanager/f;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agB()V

    .line 406
    invoke-direct {p0, v2}, Lcom/android/captureCamera/CaptureCameraService;->aNK(Z)V

    .line 407
    iput-boolean v2, p0, Lcom/android/captureCamera/CaptureCameraService;->azc:Z

    .line 388
    return-void
.end method

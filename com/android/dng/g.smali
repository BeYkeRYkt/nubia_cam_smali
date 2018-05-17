.class public Lcom/android/dng/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/V;


# instance fields
.field private aAm:Lcom/android/common/appService/W;

.field private aAn:Lcom/android/common/e/c;

.field private aAo:Landroid/hardware/Camera$PictureCallback;

.field private aAp:Lcom/android/common/e/b;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/dng/n;

    invoke-direct {v0, p1}, Lcom/android/dng/n;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/dng/g;->aAo:Landroid/hardware/Camera$PictureCallback;

    .line 28
    new-instance v0, Lcom/android/common/e/c;

    invoke-direct {v0, p1}, Lcom/android/common/e/c;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/dng/g;->aAn:Lcom/android/common/e/c;

    .line 29
    new-instance v0, Lcom/android/common/e/b;

    invoke-direct {v0, p1}, Lcom/android/common/e/b;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/dng/g;->aAp:Lcom/android/common/e/b;

    .line 30
    iput-object p1, p0, Lcom/android/dng/g;->aAm:Lcom/android/common/appService/W;

    .line 26
    return-void
.end method

.method private aPv()Lcom/android/common/cameradevice/j;
    .registers 3

    .prologue
    .line 70
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dng/g;->aAm:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method private aPw()Z
    .registers 5

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/dng/g;->aAm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "pref_camera_shutter_sound_key"

    .line 76
    iget-object v2, p0, Lcom/android/dng/g;->aAm:Lcom/android/common/appService/W;

    const v3, 0x7f0a0330

    invoke-virtual {v2, v3}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string/jumbo v1, "on"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public pa()Z
    .registers 8

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    .line 35
    iget-object v0, p0, Lcom/android/dng/g;->aAm:Lcom/android/common/appService/W;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/dng/g;->aAm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    if-nez v0, :cond_10

    .line 36
    :cond_e
    const/4 v0, 0x0

    return v0

    .line 39
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/dng/g;->aAm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->WJ()V

    .line 40
    iget-object v0, p0, Lcom/android/dng/g;->aAm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "dng-data"

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->Lh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_86

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_86

    .line 42
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string/jumbo v1, "QCOMDngShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data1,2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dng/g;->aAm:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pv()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v1

    .line 45
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 46
    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 45
    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x6

    new-array v0, v0, [B

    .line 44
    invoke-virtual {v1, v0}, Lcom/android/common/cameradevice/j;->KD([B)V
    :try_end_86
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_86} :catch_a6

    .line 57
    :cond_86
    invoke-direct {p0}, Lcom/android/dng/g;->aPv()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/dng/g;->aPw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KB(Z)V

    .line 59
    invoke-direct {p0}, Lcom/android/dng/g;->aPv()Lcom/android/common/cameradevice/j;

    move-result-object v1

    monitor-enter v1

    .line 60
    :try_start_96
    invoke-direct {p0}, Lcom/android/dng/g;->aPv()Lcom/android/common/cameradevice/j;

    move-result-object v0

    .line 61
    iget-object v2, p0, Lcom/android/dng/g;->aAp:Lcom/android/common/e/b;

    .line 62
    iget-object v3, p0, Lcom/android/dng/g;->aAo:Landroid/hardware/Camera$PictureCallback;

    .line 64
    iget-object v4, p0, Lcom/android/dng/g;->aAn:Lcom/android/common/e/c;

    .line 63
    const/4 v5, 0x0

    .line 60
    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/android/common/cameradevice/j;->KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_a4
    .catchall {:try_start_96 .. :try_end_a4} :catchall_ea

    monitor-exit v1

    .line 66
    return v6

    .line 48
    :catch_a6
    move-exception v0

    .line 50
    :try_start_a7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/sdcard/camera_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".hprof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_c9} :catch_ca

    .line 54
    :goto_c9
    throw v0

    .line 51
    :catch_ca
    move-exception v1

    .line 52
    const-string/jumbo v2, "QCOMDngShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dump hprof fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c9

    .line 59
    :catchall_ea
    move-exception v0

    monitor-exit v1

    throw v0
.end method

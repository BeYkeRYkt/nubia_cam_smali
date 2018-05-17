.class public Lcom/android/captureCamera/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private ayH:Landroid/content/Context;

.field private ayI:Landroid/os/Handler;

.field private ayJ:Lcom/android/captureCamera/b;

.field private ayK:Landroid/location/Location;

.field private ayL:I

.field private ayM:Lcom/android/captureCamera/d;


# direct methods
.method public constructor <init>(Landroid/location/Location;Landroid/content/Context;Lcom/android/captureCamera/d;Lcom/android/captureCamera/b;I)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/captureCamera/e;->ayH:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/android/captureCamera/e;->ayJ:Lcom/android/captureCamera/b;

    .line 22
    iput-object v0, p0, Lcom/android/captureCamera/e;->ayM:Lcom/android/captureCamera/d;

    .line 23
    iput-object v0, p0, Lcom/android/captureCamera/e;->ayI:Landroid/os/Handler;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/captureCamera/e;->ayL:I

    .line 28
    iput-object p1, p0, Lcom/android/captureCamera/e;->ayK:Landroid/location/Location;

    .line 29
    iput-object p3, p0, Lcom/android/captureCamera/e;->ayM:Lcom/android/captureCamera/d;

    .line 30
    iput-object p2, p0, Lcom/android/captureCamera/e;->ayH:Landroid/content/Context;

    .line 31
    iput-object p4, p0, Lcom/android/captureCamera/e;->ayJ:Lcom/android/captureCamera/b;

    .line 32
    iget-object v0, p0, Lcom/android/captureCamera/e;->ayM:Lcom/android/captureCamera/d;

    invoke-virtual {v0}, Lcom/android/captureCamera/d;->aNw()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/e;->ayI:Landroid/os/Handler;

    .line 33
    iput p5, p0, Lcom/android/captureCamera/e;->ayL:I

    .line 27
    return-void
.end method

.method private aNH()Landroid/hardware/Camera$Parameters;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/captureCamera/e;->ayM:Lcom/android/captureCamera/d;

    invoke-virtual {v0}, Lcom/android/captureCamera/d;->aNy()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method private aNI()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/captureCamera/e;->ayM:Lcom/android/captureCamera/d;

    invoke-virtual {v0}, Lcom/android/captureCamera/d;->aNG()V

    .line 96
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 15

    .prologue
    const/4 v11, 0x0

    const/16 v3, 0x6a

    const/16 v2, 0x67

    const/4 v8, 0x0

    .line 38
    if-nez p1, :cond_19

    .line 39
    iget-object v0, p0, Lcom/android/captureCamera/e;->ayI:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 40
    const-string/jumbo v0, "CaptureCameraJpegCallback"

    const-string/jumbo v1, "onPictureTaken jpegData is null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void

    .line 44
    :cond_19
    iget-object v0, p0, Lcom/android/captureCamera/e;->ayM:Lcom/android/captureCamera/d;

    invoke-virtual {v0}, Lcom/android/captureCamera/d;->aNz()Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/android/captureCamera/e;->ayM:Lcom/android/captureCamera/d;

    invoke-virtual {v0}, Lcom/android/captureCamera/d;->aNs()I

    move-result v0

    if-nez v0, :cond_9e

    .line 45
    iget-object v0, p0, Lcom/android/captureCamera/e;->ayM:Lcom/android/captureCamera/d;

    iget-object v1, p0, Lcom/android/captureCamera/e;->ayM:Lcom/android/captureCamera/d;

    invoke-virtual {v1}, Lcom/android/captureCamera/d;->aNu()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/captureCamera/d;->aND(I)V

    .line 46
    iget-object v0, p0, Lcom/android/captureCamera/e;->ayM:Lcom/android/captureCamera/d;

    invoke-virtual {v0}, Lcom/android/captureCamera/d;->aNu()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_53

    .line 47
    iget-object v0, p0, Lcom/android/captureCamera/e;->ayI:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 48
    invoke-direct {p0}, Lcom/android/captureCamera/e;->aNI()V

    .line 49
    iget-object v0, p0, Lcom/android/captureCamera/e;->ayI:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 50
    iget-object v0, p0, Lcom/android/captureCamera/e;->ayM:Lcom/android/captureCamera/d;

    sget-object v1, Lcom/android/captureCamera/CaptureCameraState;->azp:Lcom/android/captureCamera/CaptureCameraState;

    invoke-virtual {v0, v1}, Lcom/android/captureCamera/d;->aNC(Lcom/android/captureCamera/CaptureCameraState;)V

    .line 58
    :cond_53
    :goto_53
    invoke-direct {p0}, Lcom/android/captureCamera/e;->aNH()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 60
    invoke-static {p1}, Lcom/android/common/c;->aob([B)I

    move-result v9

    .line 62
    iget v1, p0, Lcom/android/captureCamera/e;->ayL:I

    add-int/2addr v1, v9

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_b0

    .line 63
    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    .line 64
    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    .line 70
    :goto_6a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 71
    invoke-static {v2, v3}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v4

    .line 72
    sget-object v0, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v0}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v10

    .line 73
    iget-object v0, p0, Lcom/android/captureCamera/e;->ayM:Lcom/android/captureCamera/d;

    invoke-virtual {v0}, Lcom/android/captureCamera/d;->aNs()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_95

    .line 74
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adP()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 75
    sget-object v0, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v0}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v10

    .line 80
    :cond_95
    :goto_95
    iget-object v0, p0, Lcom/android/captureCamera/e;->ayJ:Lcom/android/captureCamera/b;

    iget-object v5, p0, Lcom/android/captureCamera/e;->ayK:Landroid/location/Location;

    move-object v1, p1

    invoke-virtual/range {v0 .. v11}, Lcom/android/captureCamera/b;->aNn([BJLjava/lang/String;Landroid/location/Location;IIIIILjava/lang/String;)V

    .line 37
    return-void

    .line 54
    :cond_9e
    iget-object v0, p0, Lcom/android/captureCamera/e;->ayI:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 55
    iget-object v0, p0, Lcom/android/captureCamera/e;->ayI:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 56
    iget-object v0, p0, Lcom/android/captureCamera/e;->ayM:Lcom/android/captureCamera/d;

    sget-object v1, Lcom/android/captureCamera/CaptureCameraState;->azp:Lcom/android/captureCamera/CaptureCameraState;

    invoke-virtual {v0, v1}, Lcom/android/captureCamera/d;->aNC(Lcom/android/captureCamera/CaptureCameraState;)V

    goto :goto_53

    .line 66
    :cond_b0
    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    .line 67
    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    goto :goto_6a

    .line 77
    :cond_b5
    sget-object v0, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v0}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v10

    goto :goto_95
.end method

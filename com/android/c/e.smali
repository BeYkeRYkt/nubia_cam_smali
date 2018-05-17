.class public Lcom/android/c/e;
.super Lcom/android/common/appService/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/common/appService/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected kC()Ljava/util/List;
    .registers 3

    .prologue
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    sget-object v1, Lcom/android/c/e;->ik:Lcom/android/common/cameradevice/g;

    if-eqz v1, :cond_e

    .line 22
    sget-object v1, Lcom/android/c/e;->ik:Lcom/android/common/cameradevice/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_e
    sget-object v1, Lcom/android/c/e;->il:Lcom/android/common/cameradevice/g;

    if-eqz v1, :cond_17

    .line 26
    sget-object v1, Lcom/android/c/e;->il:Lcom/android/common/cameradevice/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_17
    return-object v0
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 35
    invoke-static {}, Lcom/android/c/h;->aQA()Lcom/android/c/h;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 6

    .prologue
    .line 41
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    aget-object v0, v0, p2

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 42
    new-instance v0, Lcom/android/c/c;

    invoke-direct {v0, p1}, Lcom/android/c/c;-><init>(Lcom/android/common/appService/W;)V

    return-object v0

    .line 44
    :cond_15
    new-instance v0, Lcom/android/c/j;

    invoke-direct {v0, p1}, Lcom/android/c/j;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 50
    sget-object v0, Lcom/android/common/appService/CameraMember;->jJ:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

.class public Lcom/android/c/a;
.super Lcom/android/c/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected kC()Ljava/util/List;
    .registers 5

    .prologue
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    const/4 v0, 0x0

    :goto_6
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/m;->MU()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 29
    new-instance v2, Lcom/android/common/cameradevice/g;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Lcom/android/common/cameradevice/g;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 32
    :cond_1c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    :goto_23
    return-object v0

    :cond_24
    move-object v0, v1

    goto :goto_23
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 6

    .prologue
    .line 18
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    aget-object v0, v0, p2

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 19
    new-instance v0, Lcom/android/c/g;

    invoke-direct {v0, p1}, Lcom/android/c/g;-><init>(Lcom/android/common/appService/W;)V

    return-object v0

    .line 21
    :cond_15
    new-instance v0, Lcom/android/c/d;

    invoke-direct {v0, p1}, Lcom/android/c/d;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 37
    sget-object v0, Lcom/android/common/appService/CameraMember;->jn:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

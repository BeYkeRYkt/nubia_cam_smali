.class public Lcom/android/lightpainting/a;
.super Lcom/android/common/appService/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/common/appService/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected kC()Ljava/util/List;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    sget-object v2, Lcom/android/lightpainting/a;->ik:Lcom/android/common/cameradevice/g;

    if-eqz v2, :cond_f

    .line 24
    sget-object v2, Lcom/android/lightpainting/a;->ik:Lcom/android/common/cameradevice/g;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_f
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aeo()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 27
    sget-object v2, Lcom/android/lightpainting/a;->il:Lcom/android/common/cameradevice/g;

    if-eqz v2, :cond_26

    .line 28
    sget-object v2, Lcom/android/lightpainting/a;->il:Lcom/android/common/cameradevice/g;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_26
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 32
    sget-object v2, Lcom/android/lightpainting/a;->il:Lcom/android/common/cameradevice/g;

    if-eqz v2, :cond_35

    .line 33
    sget-object v2, Lcom/android/lightpainting/a;->il:Lcom/android/common/cameradevice/g;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_35
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3c

    :goto_3b
    return-object v0

    :cond_3c
    move-object v0, v1

    goto :goto_3b
.end method

.method public kD()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 57
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adf()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 58
    new-instance v0, Lcom/android/lightpainting/LightPaintingMemberConfig$1;

    invoke-direct {v0, p0}, Lcom/android/lightpainting/LightPaintingMemberConfig$1;-><init>(Lcom/android/lightpainting/a;)V

    return-object v0

    .line 64
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 42
    invoke-static {}, Lcom/android/lightpainting/c;->aFA()Lcom/android/lightpainting/c;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 6

    .prologue
    .line 48
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    aget-object v0, v0, p2

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 49
    new-instance v0, Lcom/android/lightpainting/d;

    invoke-direct {v0, p1}, Lcom/android/lightpainting/d;-><init>(Lcom/android/common/appService/W;)V

    return-object v0

    .line 51
    :cond_15
    new-instance v0, Lcom/android/lightpainting/b;

    invoke-direct {v0, p1}, Lcom/android/lightpainting/b;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 69
    sget-object v0, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

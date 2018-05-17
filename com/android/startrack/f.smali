.class public Lcom/android/startrack/f;
.super Lcom/android/common/appService/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/common/appService/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected kC()Ljava/util/List;
    .registers 3

    .prologue
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    sget-object v1, Lcom/android/startrack/f;->ik:Lcom/android/common/cameradevice/g;

    if-eqz v1, :cond_e

    .line 23
    sget-object v1, Lcom/android/startrack/f;->ik:Lcom/android/common/cameradevice/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_e
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aeo()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 27
    sget-object v1, Lcom/android/startrack/f;->il:Lcom/android/common/cameradevice/g;

    if-eqz v1, :cond_25

    .line 28
    sget-object v1, Lcom/android/startrack/f;->il:Lcom/android/common/cameradevice/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 32
    sget-object v1, Lcom/android/startrack/f;->il:Lcom/android/common/cameradevice/g;

    if-eqz v1, :cond_34

    .line 33
    sget-object v1, Lcom/android/startrack/f;->il:Lcom/android/common/cameradevice/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_34
    return-object v0
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 42
    invoke-static {}, Lcom/android/startrack/d;->bhG()Lcom/android/startrack/d;

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
    new-instance v0, Lcom/android/startrack/l;

    invoke-direct {v0, p1}, Lcom/android/startrack/l;-><init>(Lcom/android/common/appService/W;)V

    return-object v0

    .line 51
    :cond_15
    new-instance v0, Lcom/android/startrack/e;

    invoke-direct {v0, p1}, Lcom/android/startrack/e;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 57
    sget-object v0, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

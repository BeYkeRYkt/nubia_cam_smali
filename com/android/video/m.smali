.class public Lcom/android/video/m;
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
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    sget-object v2, Lcom/android/video/m;->ik:Lcom/android/common/cameradevice/g;

    if-eqz v2, :cond_f

    .line 22
    sget-object v2, Lcom/android/video/m;->ik:Lcom/android/common/cameradevice/g;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_f
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1f

    .line 26
    sget-object v2, Lcom/android/video/m;->il:Lcom/android/common/cameradevice/g;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_1f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    :goto_25
    return-object v0

    :cond_26
    move-object v0, v1

    goto :goto_25
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/video/k;->aWR(Z)Lcom/android/video/k;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 5

    .prologue
    .line 41
    new-instance v0, Lcom/android/video/b;

    invoke-direct {v0, p1}, Lcom/android/video/b;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 46
    sget-object v0, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

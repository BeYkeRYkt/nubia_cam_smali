.class public Lcom/android/video/l;
.super Lcom/android/video/m;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/video/m;-><init>()V

    return-void
.end method


# virtual methods
.method protected kC()Ljava/util/List;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 16
    sget-object v0, Lcom/android/video/l;->ik:Lcom/android/common/cameradevice/g;

    if-eqz v0, :cond_10

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    sget-object v1, Lcom/android/video/l;->ik:Lcom/android/common/cameradevice/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    return-object v0

    .line 20
    :cond_10
    sget-object v0, Lcom/android/video/l;->il:Lcom/android/common/cameradevice/g;

    if-eqz v0, :cond_1f

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    sget-object v1, Lcom/android/video/l;->il:Lcom/android/common/cameradevice/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-object v0

    .line 26
    :cond_1f
    return-object v1
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/video/k;->aWR(Z)Lcom/android/video/k;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 5

    .prologue
    .line 38
    new-instance v0, Lcom/android/video/a;

    invoke-direct {v0, p1}, Lcom/android/video/a;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 43
    sget-object v0, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

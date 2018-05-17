.class public Lcom/android/triaxial/c;
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
    .registers 3

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    sget-object v1, Lcom/android/triaxial/c;->ik:Lcom/android/common/cameradevice/g;

    if-eqz v1, :cond_e

    .line 45
    sget-object v1, Lcom/android/triaxial/c;->ik:Lcom/android/common/cameradevice/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_e
    sget-object v1, Lcom/android/triaxial/c;->il:Lcom/android/common/cameradevice/g;

    if-eqz v1, :cond_17

    .line 49
    sget-object v1, Lcom/android/triaxial/c;->il:Lcom/android/common/cameradevice/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_17
    return-object v0
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 24
    invoke-static {}, Lcom/android/triaxial/a;->aYa()Lcom/android/triaxial/a;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 5

    .prologue
    .line 30
    new-instance v0, Lcom/android/triaxial/b;

    invoke-direct {v0, p1}, Lcom/android/triaxial/b;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 35
    sget-object v0, Lcom/android/common/appService/CameraMember;->jL:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

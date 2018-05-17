.class public Lcom/android/dng/m;
.super Lcom/android/common/appService/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/common/appService/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected kC()Ljava/util/List;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    sget-object v2, Lcom/android/dng/m;->ik:Lcom/android/common/cameradevice/g;

    if-eqz v2, :cond_f

    .line 21
    sget-object v2, Lcom/android/dng/m;->ik:Lcom/android/common/cameradevice/g;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_f
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->adk()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 24
    sget-object v2, Lcom/android/dng/m;->in:Lcom/android/common/cameradevice/g;

    if-eqz v2, :cond_26

    .line 25
    sget-object v2, Lcom/android/dng/m;->in:Lcom/android/common/cameradevice/g;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_26
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2d

    :goto_2c
    return-object v0

    :cond_2d
    move-object v0, v1

    goto :goto_2c
.end method

.method public kD()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 51
    new-instance v0, Lcom/android/dng/DngMemberConfig$1;

    invoke-direct {v0, p0}, Lcom/android/dng/DngMemberConfig$1;-><init>(Lcom/android/dng/m;)V

    return-object v0
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 34
    invoke-static {}, Lcom/android/dng/h;->aPz()Lcom/android/dng/h;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 5

    .prologue
    .line 40
    new-instance v0, Lcom/android/dng/f;

    invoke-direct {v0, p1}, Lcom/android/dng/f;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 45
    sget-object v0, Lcom/android/common/appService/CameraMember;->jk:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

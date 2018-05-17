.class public Lcom/android/dualcameracalibration/c;
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 18
    sget-object v0, Lcom/android/dualcameracalibration/c;->im:Lcom/android/common/cameradevice/g;

    if-eqz v0, :cond_10

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    sget-object v1, Lcom/android/dualcameracalibration/c;->im:Lcom/android/common/cameradevice/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-object v0

    .line 24
    :cond_10
    return-object v1
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 30
    invoke-static {}, Lcom/android/dualcameracalibration/b;->bsL()Lcom/android/dualcameracalibration/b;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 5

    .prologue
    .line 36
    new-instance v0, Lcom/android/dualcameracalibration/g;

    invoke-direct {v0, p1}, Lcom/android/dualcameracalibration/g;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 41
    sget-object v0, Lcom/android/common/appService/CameraMember;->jl:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

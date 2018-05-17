.class public Lcom/android/d/a;
.super Lcom/android/common/appService/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/common/appService/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected kC()Ljava/util/List;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 34
    sget-object v0, Lcom/android/d/a;->im:Lcom/android/common/cameradevice/g;

    if-eqz v0, :cond_12

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/common/cameradevice/g;

    sget-object v1, Lcom/android/d/a;->im:Lcom/android/common/cameradevice/g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 37
    :cond_12
    return-object v1
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 5

    .prologue
    .line 18
    new-instance v0, Lcom/android/d/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/d/h;-><init>(I)V

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 5

    .prologue
    .line 24
    new-instance v0, Lcom/android/d/k;

    invoke-direct {v0, p1}, Lcom/android/d/k;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 29
    sget-object v0, Lcom/android/common/appService/CameraMember;->jz:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

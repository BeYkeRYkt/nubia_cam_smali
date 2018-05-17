.class public Lcom/android/b/b;
.super Lcom/android/common/appService/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/common/appService/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected kC()Ljava/util/List;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adQ()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 18
    sget-object v0, Lcom/android/b/b;->im:Lcom/android/common/cameradevice/g;

    if-eqz v0, :cond_1e

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    sget-object v1, Lcom/android/b/b;->im:Lcom/android/common/cameradevice/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-object v0

    .line 24
    :cond_1e
    return-object v1
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 30
    invoke-static {}, Lcom/android/b/c;->aQx()Lcom/android/b/c;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 5

    .prologue
    .line 36
    new-instance v0, Lcom/android/b/d;

    invoke-direct {v0, p1, p3}, Lcom/android/b/d;-><init>(Lcom/android/common/appService/W;Lcom/android/common/appService/CameraMember;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 41
    sget-object v0, Lcom/android/common/appService/CameraMember;->jf:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

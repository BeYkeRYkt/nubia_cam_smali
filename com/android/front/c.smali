.class public Lcom/android/front/c;
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
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    sget-object v2, Lcom/android/front/c;->ik:Lcom/android/common/cameradevice/g;

    if-eqz v2, :cond_f

    .line 23
    sget-object v2, Lcom/android/front/c;->ik:Lcom/android/common/cameradevice/g;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_f
    sget-object v2, Lcom/android/front/c;->il:Lcom/android/common/cameradevice/g;

    if-eqz v2, :cond_18

    .line 26
    sget-object v2, Lcom/android/front/c;->il:Lcom/android/common/cameradevice/g;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    :goto_1e
    return-object v0

    :cond_1f
    move-object v0, v1

    goto :goto_1e
.end method

.method public kD()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/android/front/FrontMemberConfig$1;

    invoke-direct {v0, p0}, Lcom/android/front/FrontMemberConfig$1;-><init>(Lcom/android/front/c;)V

    return-object v0
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 48
    invoke-static {}, Lcom/android/front/a;->ben()Lcom/android/front/a;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 5

    .prologue
    .line 54
    new-instance v0, Lcom/android/front/d;

    invoke-direct {v0, p1}, Lcom/android/front/d;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 59
    sget-object v0, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

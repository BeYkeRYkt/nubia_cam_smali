.class public Lcom/android/c/f;
.super Lcom/android/c/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected kC()Ljava/util/List;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 15
    sget-object v0, Lcom/android/c/f;->ik:Lcom/android/common/cameradevice/g;

    if-eqz v0, :cond_10

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    sget-object v1, Lcom/android/c/f;->ik:Lcom/android/common/cameradevice/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    return-object v0

    .line 20
    :cond_10
    return-object v1
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 5

    .prologue
    .line 27
    new-instance v0, Lcom/android/c/b;

    invoke-direct {v0, p1}, Lcom/android/c/b;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 32
    sget-object v0, Lcom/android/common/appService/CameraMember;->jg:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

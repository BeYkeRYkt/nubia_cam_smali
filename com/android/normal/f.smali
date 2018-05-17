.class public Lcom/android/normal/f;
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
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->adS()Z

    move-result v2

    if-nez v2, :cond_22

    .line 21
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->ado()Z

    move-result v2

    .line 19
    if-eqz v2, :cond_3b

    .line 22
    :cond_22
    sget-object v2, Lcom/android/normal/f;->im:Lcom/android/common/cameradevice/g;

    if-eqz v2, :cond_3b

    .line 23
    sget-object v2, Lcom/android/normal/f;->im:Lcom/android/common/cameradevice/g;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_2b
    :goto_2b
    sget-object v2, Lcom/android/normal/f;->il:Lcom/android/common/cameradevice/g;

    if-eqz v2, :cond_34

    .line 28
    sget-object v2, Lcom/android/normal/f;->il:Lcom/android/common/cameradevice/g;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_34
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_45

    :goto_3a
    return-object v0

    .line 24
    :cond_3b
    sget-object v2, Lcom/android/normal/f;->ik:Lcom/android/common/cameradevice/g;

    if-eqz v2, :cond_2b

    .line 25
    sget-object v2, Lcom/android/normal/f;->ik:Lcom/android/common/cameradevice/g;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_45
    move-object v0, v1

    .line 31
    goto :goto_3a
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/normal/h;->bss(Z)Lcom/android/normal/h;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 6

    .prologue
    .line 43
    new-instance v0, Lcom/android/normal/e;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/normal/f;->lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/normal/e;-><init>(Lcom/android/common/appService/W;Lcom/android/common/appService/CameraMember;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 48
    sget-object v0, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

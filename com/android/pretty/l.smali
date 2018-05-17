.class public Lcom/android/pretty/l;
.super Lcom/android/common/appService/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/common/appService/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected kC()Ljava/util/List;
    .registers 3

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->adQ()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 24
    sget-object v1, Lcom/android/pretty/l;->im:Lcom/android/common/cameradevice/g;

    if-eqz v1, :cond_26

    .line 25
    sget-object v1, Lcom/android/pretty/l;->im:Lcom/android/common/cameradevice/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_1c
    :goto_1c
    sget-object v1, Lcom/android/pretty/l;->il:Lcom/android/common/cameradevice/g;

    if-eqz v1, :cond_25

    .line 31
    sget-object v1, Lcom/android/pretty/l;->il:Lcom/android/common/cameradevice/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_25
    return-object v0

    .line 26
    :cond_26
    sget-object v1, Lcom/android/pretty/l;->ik:Lcom/android/common/cameradevice/g;

    if-eqz v1, :cond_1c

    .line 27
    sget-object v1, Lcom/android/pretty/l;->ik:Lcom/android/common/cameradevice/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c
.end method

.method public kD()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 50
    new-instance v0, Lcom/android/pretty/PrettyMemberConfig$1;

    invoke-direct {v0, p0}, Lcom/android/pretty/PrettyMemberConfig$1;-><init>(Lcom/android/pretty/l;)V

    return-object v0
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 39
    invoke-static {}, Lcom/android/pretty/f;->aSc()Lcom/android/pretty/f;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 5

    .prologue
    .line 45
    new-instance v0, Lcom/android/pretty/i;

    invoke-direct {v0, p1}, Lcom/android/pretty/i;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 59
    sget-object v0, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

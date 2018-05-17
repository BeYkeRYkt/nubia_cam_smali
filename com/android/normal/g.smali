.class public Lcom/android/normal/g;
.super Lcom/android/normal/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/common/appService/CameraMember;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/normal/e;-><init>(Lcom/android/common/appService/W;Lcom/android/common/appService/CameraMember;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected TB()I
    .registers 3

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/normal/g;->Tx()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0159

    invoke-virtual {p0, v1}, Lcom/android/normal/g;->Tb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 25
    const/4 v0, 0x0

    return v0

    .line 28
    :cond_13
    sget-boolean v0, Lcom/android/common/h;->ahs:Z

    if-eqz v0, :cond_19

    .line 29
    const/4 v0, 0x1

    return v0

    .line 31
    :cond_19
    const/16 v0, 0xd

    return v0
.end method

.method protected TV()I
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method protected Ti()Ljava/lang/String;
    .registers 4

    .prologue
    .line 45
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acS()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 46
    const-string/jumbo v0, "-1"

    invoke-virtual {p0}, Lcom/android/normal/g;->Tr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 45
    if-eqz v0, :cond_34

    .line 47
    invoke-virtual {p0}, Lcom/android/normal/g;->Ts()Z

    move-result v0

    .line 45
    if-eqz v0, :cond_34

    .line 48
    invoke-virtual {p0}, Lcom/android/normal/g;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 49
    const-string/jumbo v1, "pref_third_arith_hdr_key"

    .line 50
    const v2, 0x7f0a04c4

    invoke-virtual {p0, v2}, Lcom/android/normal/g;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_34
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Ts()Z
    .registers 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/normal/g;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 37
    const-string/jumbo v1, "pref_camera_interval_switch"

    .line 38
    const v2, 0x7f0a0477

    invoke-virtual {p0, v2}, Lcom/android/normal/g;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 40
    iget-object v0, p0, Lcom/android/normal/g;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    .line 39
    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x1

    goto :goto_27
.end method

.method protected UF()Z
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

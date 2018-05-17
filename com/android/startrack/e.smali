.class public Lcom/android/startrack/e;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected TB()I
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x2

    return v0
.end method

.method protected TF()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    const v0, 0x7f0a011d

    invoke-virtual {p0, v0}, Lcom/android/startrack/e;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TG()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acC()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 69
    const-string/jumbo v0, "fluorescent"

    return-object v0

    .line 71
    :cond_12
    const-string/jumbo v0, "manual-cct"

    return-object v0
.end method

.method protected TH()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected TR()I
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method protected TS()I
    .registers 4

    .prologue
    .line 35
    sget v0, Lcom/android/common/setting/j;->TQ:I

    .line 36
    invoke-virtual {p0}, Lcom/android/startrack/e;->UF()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 37
    invoke-virtual {p0}, Lcom/android/startrack/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "maf_key"

    .line 38
    sget v2, Lcom/android/common/setting/j;->TQ:I

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 41
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 42
    sget v0, Lcom/android/common/setting/j;->TQ:I

    .line 44
    :cond_1a
    return v0
.end method

.method protected TT()I
    .registers 4

    .prologue
    .line 62
    const/16 v0, 0xdac

    .line 63
    invoke-virtual {p0}, Lcom/android/startrack/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v1

    const-string/jumbo v2, "wb-manual-cct"

    invoke-virtual {v1, v2, v0}, Lcom/android/common/setting/e;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 64
    return v0
.end method

.method protected Tm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    const-string/jumbo v0, "manual"

    return-object v0
.end method

.method protected Tr()Ljava/lang/String;
    .registers 5

    .prologue
    .line 84
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adG()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 85
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_1b
    invoke-virtual {p0}, Lcom/android/startrack/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_slow_shutter_min_key"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/android/startrack/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v1

    const-string/jumbo v2, "pref_slow_shutter_sec_key"

    const-string/jumbo v3, "30"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/android/startrack/e;->Ta(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_47

    .line 91
    const-string/jumbo v0, "9"

    return-object v0

    .line 92
    :cond_47
    return-object v0
.end method

.method protected Tu()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method public UD()Z
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method protected UF()Z
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method protected Ul()I
    .registers 2

    .prologue
    .line 96
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adj()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 97
    iget-object v0, p0, Lcom/android/startrack/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nc()Z

    move-result v0

    .line 96
    if-eqz v0, :cond_1c

    .line 98
    const/4 v0, 0x1

    return v0

    .line 100
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method protected Uw()Ljava/lang/String;
    .registers 4

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/startrack/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_whitebalance_key"

    .line 59
    invoke-virtual {p0}, Lcom/android/startrack/e;->TG()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

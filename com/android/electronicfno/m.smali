.class public Lcom/android/electronicfno/m;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 17
    return-void
.end method

.method private bnO()Z
    .registers 4

    .prologue
    .line 81
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acF()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 82
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_11
    invoke-virtual {p0}, Lcom/android/electronicfno/m;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_anti_shake"

    .line 85
    const v2, 0x7f0a0267

    invoke-virtual {p0, v2}, Lcom/android/electronicfno/m;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected TB()I
    .registers 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/electronicfno/m;->bnO()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91
    const/16 v0, 0xb

    return v0

    .line 93
    :cond_9
    const/4 v0, 0x4

    return v0
.end method

.method protected TL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected TU()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    const-string/jumbo v0, "tripod"

    return-object v0
.end method

.method protected Tj()Ljava/lang/String;
    .registers 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/electronicfno/m;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "pref_camera_contrast_key"

    .line 55
    const v2, 0x7f0a013e

    invoke-virtual {p0, v2}, Lcom/android/electronicfno/m;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tk()Ljava/lang/String;
    .registers 4

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/electronicfno/m;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "pref_camera_sharpness_key"

    .line 62
    const v2, 0x7f0a013d

    invoke-virtual {p0, v2}, Lcom/android/electronicfno/m;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected To()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/electronicfno/m;->SY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Ts()Z
    .registers 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/electronicfno/m;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "pref_camera_interval_switch"

    .line 106
    const v2, 0x7f0a0477

    invoke-virtual {p0, v2}, Lcom/android/electronicfno/m;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 108
    iget-object v0, p0, Lcom/android/electronicfno/m;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    .line 107
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x1

    goto :goto_25
.end method

.method protected Tu()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Tv()I
    .registers 2

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/electronicfno/m;->bnO()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 113
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method protected UF()Z
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 3

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-nez v0, :cond_9

    .line 34
    invoke-super {p0}, Lcom/android/common/setting/c;->Ud()Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0

    .line 36
    :cond_9
    iget-object v0, p0, Lcom/android/electronicfno/m;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->YH()Lcom/android/common/custom/v;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/electronicfno/m;->Tv()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 37
    iget-object v0, p0, Lcom/android/electronicfno/m;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->YH()Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0

    .line 39
    :cond_1f
    iget-object v0, p0, Lcom/android/electronicfno/m;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yw()Lcom/android/common/custom/v;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-direct {p0}, Lcom/android/electronicfno/m;->bnO()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adu()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 46
    :cond_3b
    iget-object v0, p0, Lcom/android/electronicfno/m;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yw()Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0

    .line 40
    :cond_42
    iget-object v0, p0, Lcom/android/electronicfno/m;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yx()Lcom/android/common/custom/v;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 41
    iget-object v0, p0, Lcom/android/electronicfno/m;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yx()Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0

    .line 43
    :cond_51
    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-virtual {p0, v0, v1}, Lcom/android/electronicfno/m;->SZ(D)Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0
.end method

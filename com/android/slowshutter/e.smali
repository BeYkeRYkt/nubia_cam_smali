.class public Lcom/android/slowshutter/e;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected TB()I
    .registers 3

    .prologue
    const/16 v1, 0xf

    .line 78
    sget-boolean v0, Lcom/android/common/h;->ahs:Z

    if-eqz v0, :cond_13

    .line 79
    const-string/jumbo v0, "NX541J"

    invoke-static {v0}, Lcom/android/common/h;->apQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 80
    const/16 v0, 0xd

    return v0

    .line 82
    :cond_12
    return v1

    .line 86
    :cond_13
    return v1
.end method

.method protected TL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Tj()Ljava/lang/String;
    .registers 4

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/slowshutter/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 23
    const-string/jumbo v1, "pref_camera_contrast_key"

    .line 24
    const v2, 0x7f0a013e

    invoke-virtual {p0, v2}, Lcom/android/slowshutter/e;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tk()Ljava/lang/String;
    .registers 4

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/slowshutter/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "pref_camera_sharpness_key"

    .line 31
    const v2, 0x7f0a013d

    invoke-virtual {p0, v2}, Lcom/android/slowshutter/e;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tr()Ljava/lang/String;
    .registers 5

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/slowshutter/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_slow_shutter_min_key"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lcom/android/slowshutter/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v1

    const-string/jumbo v2, "pref_slow_shutter_sec_key"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/android/slowshutter/e;->Ta(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Ts()Z
    .registers 4

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/slowshutter/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 68
    const-string/jumbo v1, "pref_camera_interval_switch"

    .line 69
    const v2, 0x7f0a0477

    invoke-virtual {p0, v2}, Lcom/android/slowshutter/e;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 71
    iget-object v0, p0, Lcom/android/slowshutter/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    .line 70
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x1

    goto :goto_25
.end method

.method protected Tu()Ljava/lang/String;
    .registers 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/slowshutter/e;->Tr()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 37
    const-string/jumbo v0, "on"

    return-object v0

    .line 39
    :cond_11
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected UF()Z
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/android/dng/f;
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
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x6

    return v0
.end method

.method protected Tc()Lcom/android/common/setting/e;
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/dng/f;->Tm:Lcom/android/common/appService/W;

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->rA(I)Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method protected Ts()Z
    .registers 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/dng/f;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "pref_camera_interval_switch"

    .line 55
    const v2, 0x7f0a0477

    invoke-virtual {p0, v2}, Lcom/android/dng/f;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 57
    iget-object v0, p0, Lcom/android/dng/f;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    .line 56
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x1

    goto :goto_25
.end method

.method protected Tu()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    const-string/jumbo v0, "NX518J"

    invoke-static {v0}, Lcom/android/common/h;->apQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 41
    const-string/jumbo v0, "on"

    return-object v0

    .line 43
    :cond_d
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected UA()I
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method protected UF()Z
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method protected Ue()I
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/android/mono/b;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# instance fields
.field private arG:Lcom/android/common/appService/CameraMember;

.field private arH:Lcom/android/common/setting/ListPreference;

.field private arI:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/common/appService/CameraMember;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 16
    sget-object v0, Lcom/android/common/appService/CameraMember;->jt:Lcom/android/common/appService/CameraMember;

    iput-object v0, p0, Lcom/android/mono/b;->arG:Lcom/android/common/appService/CameraMember;

    .line 17
    iput-object v1, p0, Lcom/android/mono/b;->arH:Lcom/android/common/setting/ListPreference;

    .line 18
    iput-object v1, p0, Lcom/android/mono/b;->arI:Ljava/util/HashMap;

    .line 22
    iput-object p2, p0, Lcom/android/mono/b;->arG:Lcom/android/common/appService/CameraMember;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mono/b;->arI:Ljava/util/HashMap;

    .line 20
    return-void
.end method


# virtual methods
.method protected Ti()Ljava/lang/String;
    .registers 4

    .prologue
    .line 85
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 86
    invoke-virtual {p0}, Lcom/android/mono/b;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "pref_third_arith_hdr_key"

    .line 88
    const v2, 0x7f0a04c4

    invoke-virtual {p0, v2}, Lcom/android/mono/b;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_21
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected To()Ljava/lang/String;
    .registers 4

    .prologue
    .line 33
    iget v0, p0, Lcom/android/mono/b;->Tn:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 34
    invoke-super {p0}, Lcom/android/common/setting/c;->To()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_11
    iget-object v0, p0, Lcom/android/mono/b;->arH:Lcom/android/common/setting/ListPreference;

    if-nez v0, :cond_24

    .line 37
    iget-object v0, p0, Lcom/android/mono/b;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 38
    const-string/jumbo v1, "pref_camera_picture_ratio_key"

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mono/b;->arH:Lcom/android/common/setting/ListPreference;

    .line 40
    :cond_24
    iget-object v0, p0, Lcom/android/mono/b;->arH:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v0, p0, Lcom/android/mono/b;->arI:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    if-nez v0, :cond_41

    .line 45
    invoke-virtual {p0}, Lcom/android/mono/b;->Tp()Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-static {v1, v0}, Lcom/android/mono/b;->Tq(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v2, p0, Lcom/android/mono/b;->arI:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_41
    return-object v0
.end method

.method protected Tx()Ljava/lang/String;
    .registers 4

    .prologue
    const v2, 0x7f0a015a

    .line 54
    const-string/jumbo v0, "-1"

    invoke-virtual {p0}, Lcom/android/mono/b;->Tr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 55
    invoke-virtual {p0}, Lcom/android/mono/b;->Ts()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 56
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acS()Z

    move-result v0

    .line 54
    if-eqz v0, :cond_29

    .line 58
    :cond_24
    invoke-virtual {p0, v2}, Lcom/android/mono/b;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_29
    invoke-virtual {p0}, Lcom/android/mono/b;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_ae_bracket_hdr_key"

    .line 61
    invoke-virtual {p0, v2}, Lcom/android/mono/b;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Uj()Ljava/lang/String;
    .registers 4

    .prologue
    const v2, 0x7f0a0271

    .line 66
    const-string/jumbo v0, "-1"

    invoke-virtual {p0}, Lcom/android/mono/b;->Tr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 67
    invoke-virtual {p0}, Lcom/android/mono/b;->Ts()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 68
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acS()Z

    move-result v0

    .line 66
    if-eqz v0, :cond_29

    .line 70
    :cond_24
    invoke-virtual {p0, v2}, Lcom/android/mono/b;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_29
    invoke-virtual {p0}, Lcom/android/mono/b;->Tx()Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "HDR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 75
    const-string/jumbo v0, "hdr"

    .line 81
    :goto_39
    return-object v0

    .line 77
    :cond_3a
    invoke-virtual {p0}, Lcom/android/mono/b;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 78
    const-string/jumbo v1, "pref_camera_scenemode_key"

    .line 79
    invoke-virtual {p0, v2}, Lcom/android/mono/b;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

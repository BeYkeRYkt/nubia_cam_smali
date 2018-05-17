.class public Lcom/android/pretty/i;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# instance fields
.field private aDo:Lcom/android/common/setting/ListPreference;

.field private aDp:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 25
    iput-object v0, p0, Lcom/android/pretty/i;->aDp:Ljava/util/HashMap;

    .line 26
    iput-object v0, p0, Lcom/android/pretty/i;->aDo:Lcom/android/common/setting/ListPreference;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/pretty/i;->aDp:Ljava/util/HashMap;

    .line 28
    return-void
.end method

.method private aSA()Z
    .registers 3

    .prologue
    .line 250
    iget v0, p0, Lcom/android/pretty/i;->Tn:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 251
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adS()Z

    move-result v0

    if-nez v0, :cond_27

    .line 252
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adQ()Z

    move-result v0

    .line 250
    :goto_26
    return v0

    .line 251
    :cond_27
    const/4 v0, 0x1

    goto :goto_26

    .line 250
    :cond_29
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private aSB()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 304
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aeg()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 305
    const-string/jumbo v1, "on"

    invoke-virtual {p0}, Lcom/android/pretty/i;->Tc()Lcom/android/common/setting/e;

    move-result-object v2

    const-string/jumbo v3, "pref_pretty_switch"

    const v4, 0x7f0a0477

    invoke-virtual {p0, v4}, Lcom/android/pretty/i;->Tb(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 304
    if-nez v1, :cond_37

    .line 306
    iget-object v1, p0, Lcom/android/pretty/i;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/g;->Kf()Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v0, 0x0

    .line 304
    :cond_37
    return v0
.end method

.method private aSy()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/pretty/i;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    return-object v0
.end method

.method private aSz()Z
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/pretty/i;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pW()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected TA()Ljava/lang/String;
    .registers 3

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/pretty/i;->aSy()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_c

    .line 262
    const-string/jumbo v0, "ON"

    return-object v0

    .line 264
    :cond_c
    const-string/jumbo v0, "OFF"

    return-object v0
.end method

.method protected TB()I
    .registers 2

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/pretty/i;->aSz()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 165
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method protected TE()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aet()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 114
    invoke-direct {p0}, Lcom/android/pretty/i;->aSz()Z

    move-result v0

    .line 113
    if-nez v0, :cond_2c

    .line 115
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adK()Z

    move-result v0

    .line 113
    if-nez v0, :cond_2c

    .line 116
    invoke-direct {p0}, Lcom/android/pretty/i;->aSB()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 119
    const-string/jumbo v0, "on"

    return-object v0

    .line 117
    :cond_2c
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected TL()Ljava/lang/String;
    .registers 3

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/pretty/i;->aSy()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    .line 237
    invoke-direct {p0}, Lcom/android/pretty/i;->aSA()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 238
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-eq v0, v1, :cond_12

    .line 239
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_16

    .line 240
    :cond_12
    const-string/jumbo v0, "off"

    return-object v0

    .line 241
    :cond_16
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_1e

    .line 243
    const-string/jumbo v0, "off"

    return-object v0

    .line 245
    :cond_1e
    invoke-super {p0}, Lcom/android/common/setting/c;->TL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TR()I
    .registers 3

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/pretty/i;->aSx()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    iget-object v1, p0, Lcom/android/pretty/i;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/h;->apH(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 218
    const/4 v0, 0x0

    return v0

    .line 220
    :cond_12
    invoke-super {p0}, Lcom/android/common/setting/c;->TR()I

    move-result v0

    return v0
.end method

.method protected TX()I
    .registers 2

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/pretty/i;->aSB()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 282
    invoke-super {p0}, Lcom/android/common/setting/c;->TX()I

    move-result v0

    return v0

    .line 284
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method protected TY()I
    .registers 2

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/android/pretty/i;->aSB()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 298
    invoke-super {p0}, Lcom/android/common/setting/c;->TY()I

    move-result v0

    return v0

    .line 300
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method protected TZ()I
    .registers 2

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/pretty/i;->aSB()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 290
    invoke-super {p0}, Lcom/android/common/setting/c;->TZ()I

    move-result v0

    return v0

    .line 292
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method protected Tc()Lcom/android/common/setting/e;
    .registers 3

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/pretty/i;->aSA()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 228
    iget-object v0, p0, Lcom/android/pretty/i;->Tm:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/pretty/i;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->rA(I)Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0

    .line 230
    :cond_13
    invoke-super {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method protected Th()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    const-string/jumbo v0, "on"

    return-object v0
.end method

.method protected Tj()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    const-string/jumbo v0, "5"

    return-object v0
.end method

.method protected Tk()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    const-string/jumbo v0, "2"

    return-object v0
.end method

.method protected To()Ljava/lang/String;
    .registers 4

    .prologue
    .line 52
    iget v0, p0, Lcom/android/pretty/i;->Tn:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 53
    invoke-super {p0}, Lcom/android/common/setting/c;->To()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_11
    iget-object v0, p0, Lcom/android/pretty/i;->aDo:Lcom/android/common/setting/ListPreference;

    if-nez v0, :cond_24

    .line 56
    iget-object v0, p0, Lcom/android/pretty/i;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "pref_camera_picture_ratio_key"

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/pretty/i;->aDo:Lcom/android/common/setting/ListPreference;

    .line 60
    :cond_24
    invoke-direct {p0}, Lcom/android/pretty/i;->aSy()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_68

    .line 61
    const-string/jumbo v0, "4:3"

    move-object v1, v0

    .line 66
    :goto_30
    iget-object v0, p0, Lcom/android/pretty/i;->aDp:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    if-nez v0, :cond_47

    .line 70
    invoke-virtual {p0}, Lcom/android/pretty/i;->Tp()Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Lcom/android/pretty/i;->Tq(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v2, p0, Lcom/android/pretty/i;->aDp:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_47
    invoke-direct {p0}, Lcom/android/pretty/i;->aSy()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v1, v2, :cond_81

    .line 75
    invoke-direct {p0}, Lcom/android/pretty/i;->aSA()Z

    move-result v1

    .line 74
    if-eqz v1, :cond_81

    .line 76
    iget-object v1, p0, Lcom/android/pretty/i;->Tm:Lcom/android/common/appService/W;

    iget v2, p0, Lcom/android/pretty/i;->Tn:I

    invoke-virtual {v1, v2}, Lcom/android/common/appService/W;->qm(I)Lcom/android/common/cameradevice/p;

    move-result-object v1

    const-string/jumbo v2, "altek-back-sub-picturesize"

    invoke-interface {v1, v2}, Lcom/android/common/cameradevice/p;->Lh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_7c

    move-object v0, v1

    :goto_67
    return-object v0

    .line 63
    :cond_68
    invoke-virtual {p0}, Lcom/android/pretty/i;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 64
    const-string/jumbo v1, "pref_camera_picture_ratio_key"

    const v2, 0x7f0a0475

    invoke-virtual {p0, v2}, Lcom/android/pretty/i;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_30

    .line 77
    :cond_7c
    invoke-virtual {p0, v0}, Lcom/android/pretty/i;->UC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_67

    .line 79
    :cond_81
    return-object v0
.end method

.method protected Tx()Ljava/lang/String;
    .registers 4

    .prologue
    const v2, 0x7f0a015a

    .line 184
    const-string/jumbo v0, "-1"

    invoke-virtual {p0}, Lcom/android/pretty/i;->Tr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 185
    invoke-virtual {p0}, Lcom/android/pretty/i;->Ts()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 186
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acS()Z

    move-result v0

    .line 184
    if-eqz v0, :cond_29

    .line 188
    :cond_24
    invoke-virtual {p0, v2}, Lcom/android/pretty/i;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :cond_29
    invoke-virtual {p0}, Lcom/android/pretty/i;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_ae_bracket_hdr_key"

    .line 191
    invoke-virtual {p0, v2}, Lcom/android/pretty/i;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tz()I
    .registers 2

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/pretty/i;->aSz()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 157
    const/4 v0, 0x1

    return v0

    .line 159
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method protected UB()Ljava/lang/String;
    .registers 5

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/pretty/i;->aSz()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 174
    invoke-super {p0}, Lcom/android/common/setting/c;->UB()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :cond_b
    iget-object v0, p0, Lcom/android/pretty/i;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 177
    const-string/jumbo v1, "pref_camera_pretty_effect_key"

    .line 178
    iget-object v2, p0, Lcom/android/pretty/i;->Tm:Lcom/android/common/appService/W;

    const v3, 0x7f0a0412

    invoke-virtual {v2, v3}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected UG()Z
    .registers 5

    .prologue
    .line 311
    const v0, 0x7f0a0476

    invoke-virtual {p0, v0}, Lcom/android/pretty/i;->Tb(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {p0}, Lcom/android/pretty/i;->Tc()Lcom/android/common/setting/e;

    move-result-object v1

    const-string/jumbo v2, "pref_refocus_after_capture"

    .line 313
    const v3, 0x7f0a0477

    invoke-virtual {p0, v3}, Lcom/android/pretty/i;->Tb(I)Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected UH()Z
    .registers 2

    .prologue
    .line 124
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aet()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 125
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adK()Z

    move-result v0

    .line 124
    if-nez v0, :cond_2c

    .line 126
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acY()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 129
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 4

    .prologue
    const/16 v2, 0x3c0

    .line 40
    invoke-direct {p0}, Lcom/android/pretty/i;->aSy()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_28

    .line 41
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adt()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 42
    new-instance v0, Lcom/android/common/custom/v;

    const/16 v1, 0x2d0

    invoke-direct {v0, v2, v1}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v0

    .line 44
    :cond_20
    new-instance v0, Lcom/android/common/custom/v;

    const/16 v1, 0x500

    invoke-direct {v0, v1, v2}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v0

    .line 47
    :cond_28
    invoke-super {p0}, Lcom/android/common/setting/c;->Ud()Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0
.end method

.method protected Uh()I
    .registers 3

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/pretty/i;->aSy()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_b

    .line 270
    const/16 v0, 0x1e

    return v0

    .line 271
    :cond_b
    iget-object v0, p0, Lcom/android/pretty/i;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/g;->Kk()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 272
    iget-object v0, p0, Lcom/android/pretty/i;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/g;->Km()Z

    move-result v0

    .line 271
    if-eqz v0, :cond_33

    .line 273
    const-string/jumbo v0, "on"

    invoke-virtual {p0}, Lcom/android/pretty/i;->Tu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 271
    if-eqz v0, :cond_33

    .line 274
    const/16 v0, 0x1c

    return v0

    .line 276
    :cond_33
    const/4 v0, 0x0

    return v0
.end method

.method protected Uj()Ljava/lang/String;
    .registers 4

    .prologue
    const v2, 0x7f0a0271

    .line 196
    const-string/jumbo v0, "-1"

    invoke-virtual {p0}, Lcom/android/pretty/i;->Tr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 197
    invoke-virtual {p0}, Lcom/android/pretty/i;->Ts()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 198
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acS()Z

    move-result v0

    .line 196
    if-eqz v0, :cond_29

    .line 200
    :cond_24
    invoke-virtual {p0, v2}, Lcom/android/pretty/i;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 203
    :cond_29
    invoke-virtual {p0}, Lcom/android/pretty/i;->Tx()Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string/jumbo v1, "HDR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 205
    const-string/jumbo v0, "hdr"

    .line 211
    :goto_39
    return-object v0

    .line 207
    :cond_3a
    invoke-virtual {p0}, Lcom/android/pretty/i;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 208
    const-string/jumbo v1, "pref_camera_scenemode_key"

    .line 209
    invoke-virtual {p0, v2}, Lcom/android/pretty/i;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method protected Um()I
    .registers 2

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/pretty/i;->aSz()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 149
    const/16 v0, 0xa

    return v0

    .line 151
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method protected Un()Ljava/lang/String;
    .registers 4

    .prologue
    .line 134
    iget v0, p0, Lcom/android/pretty/i;->Tn:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-ne v0, v1, :cond_1f

    .line 135
    invoke-virtual {p0}, Lcom/android/pretty/i;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "pref_snapshot_mirror_key"

    .line 137
    const v2, 0x7f0a0384

    invoke-virtual {p0, v2}, Lcom/android/pretty/i;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_1f
    invoke-super {p0}, Lcom/android/common/setting/c;->Un()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Up()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected aSx()Lcom/android/common/appService/CameraMember;
    .registers 2

    .prologue
    .line 35
    sget-object v0, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

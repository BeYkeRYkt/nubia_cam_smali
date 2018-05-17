.class public Lcom/android/normal/e;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# instance fields
.field private bbc:Lcom/android/common/appService/CameraMember;

.field private bbd:Lcom/android/common/setting/ListPreference;

.field private bbe:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/common/appService/CameraMember;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 31
    sget-object v0, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    iput-object v0, p0, Lcom/android/normal/e;->bbc:Lcom/android/common/appService/CameraMember;

    .line 32
    iput-object v1, p0, Lcom/android/normal/e;->bbd:Lcom/android/common/setting/ListPreference;

    .line 33
    iput-object v1, p0, Lcom/android/normal/e;->bbe:Ljava/util/HashMap;

    .line 37
    iput-object p2, p0, Lcom/android/normal/e;->bbc:Lcom/android/common/appService/CameraMember;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/normal/e;->bbe:Ljava/util/HashMap;

    .line 35
    return-void
.end method

.method private bsq()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    return-object v0
.end method

.method private bsr()Z
    .registers 3

    .prologue
    .line 255
    iget v0, p0, Lcom/android/normal/e;->Tn:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 256
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adS()Z

    move-result v0

    if-nez v0, :cond_27

    .line 257
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adQ()Z

    move-result v0

    .line 255
    :goto_26
    return v0

    .line 256
    :cond_27
    const/4 v0, 0x1

    goto :goto_26

    .line 255
    :cond_29
    const/4 v0, 0x0

    goto :goto_26
.end method


# virtual methods
.method protected TA()Ljava/lang/String;
    .registers 3

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/android/normal/e;->bsq()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_c

    .line 277
    const-string/jumbo v0, "ON"

    return-object v0

    .line 279
    :cond_c
    const-string/jumbo v0, "OFF"

    return-object v0
.end method

.method protected TB()I
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rl()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 167
    const/16 v0, 0xc

    return v0

    .line 168
    :cond_b
    invoke-virtual {p0}, Lcom/android/normal/e;->Tr()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 169
    invoke-virtual {p0}, Lcom/android/normal/e;->Tx()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0159

    invoke-virtual {p0, v1}, Lcom/android/normal/e;->Tb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 173
    :cond_29
    const/4 v0, 0x0

    return v0

    .line 170
    :cond_2b
    iget-object v0, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_29

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method protected TL()Ljava/lang/String;
    .registers 3

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/normal/e;->bsq()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    .line 242
    invoke-direct {p0}, Lcom/android/normal/e;->bsr()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 243
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-eq v0, v1, :cond_12

    .line 244
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_16

    .line 245
    :cond_12
    const-string/jumbo v0, "off"

    return-object v0

    .line 246
    :cond_16
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qX()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 248
    :cond_22
    const-string/jumbo v0, "off"

    return-object v0

    .line 250
    :cond_26
    invoke-super {p0}, Lcom/android/common/setting/c;->TL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TM()I
    .registers 3

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/normal/e;->bsq()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_25

    .line 268
    iget-object v0, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_25

    .line 269
    const-string/jumbo v0, "none"

    invoke-virtual {p0}, Lcom/android/normal/e;->UB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 267
    if-eqz v0, :cond_25

    .line 270
    const/4 v0, 0x1

    return v0

    .line 272
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method protected TV()I
    .registers 3

    .prologue
    .line 300
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->ado()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 301
    invoke-direct {p0}, Lcom/android/normal/e;->bsq()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hc:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_28

    .line 302
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v0

    iget-object v1, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    if-ne v0, v1, :cond_28

    .line 303
    const/4 v0, 0x1

    return v0

    .line 305
    :cond_28
    invoke-super {p0}, Lcom/android/common/setting/c;->TV()I

    move-result v0

    return v0
.end method

.method protected Tc()Lcom/android/common/setting/e;
    .registers 3

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/normal/e;->bsr()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 223
    iget-object v0, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->rA(I)Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0

    .line 225
    :cond_13
    invoke-super {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method protected Th()Ljava/lang/String;
    .registers 4

    .prologue
    .line 136
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string/jumbo v1, "msm8998"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 137
    iget-object v0, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_1d

    .line 138
    const-string/jumbo v0, "off"

    return-object v0

    .line 140
    :cond_1d
    invoke-virtual {p0}, Lcom/android/normal/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_front_smile_shoot"

    .line 141
    const v2, 0x7f0a02dd

    invoke-virtual {p0, v2}, Lcom/android/normal/e;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v0

    iget-object v2, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pv()I

    move-result v2

    if-ne v0, v2, :cond_4f

    const/4 v0, 0x1

    .line 143
    :goto_40
    if-eqz v0, :cond_51

    const-string/jumbo v0, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 144
    const-string/jumbo v0, "on"

    return-object v0

    .line 142
    :cond_4f
    const/4 v0, 0x0

    goto :goto_40

    .line 146
    :cond_51
    invoke-virtual {p0}, Lcom/android/normal/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_facedetection_key"

    .line 147
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->acE()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    return-object v0
.end method

.method protected Ti()Ljava/lang/String;
    .registers 4

    .prologue
    .line 197
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acS()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 198
    const-string/jumbo v0, "-1"

    invoke-virtual {p0}, Lcom/android/normal/e;->Tr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 197
    if-eqz v0, :cond_23

    .line 199
    iget-object v0, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qX()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 206
    :cond_23
    const-string/jumbo v0, "off"

    return-object v0

    .line 200
    :cond_27
    invoke-virtual {p0}, Lcom/android/normal/e;->Ts()Z

    move-result v0

    .line 197
    if-eqz v0, :cond_23

    .line 202
    invoke-virtual {p0}, Lcom/android/normal/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 203
    const-string/jumbo v1, "pref_third_arith_hdr_key"

    .line 204
    const v2, 0x7f0a04c4

    invoke-virtual {p0, v2}, Lcom/android/normal/e;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tj()Ljava/lang/String;
    .registers 4

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/normal/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 122
    const-string/jumbo v1, "pref_camera_contrast_key"

    .line 123
    const v2, 0x7f0a013e

    invoke-virtual {p0, v2}, Lcom/android/normal/e;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tk()Ljava/lang/String;
    .registers 4

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/normal/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 129
    const-string/jumbo v1, "pref_camera_sharpness_key"

    .line 130
    const v2, 0x7f0a013d

    invoke-virtual {p0, v2}, Lcom/android/normal/e;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected To()Ljava/lang/String;
    .registers 4

    .prologue
    .line 48
    iget v0, p0, Lcom/android/normal/e;->Tn:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 49
    invoke-super {p0}, Lcom/android/common/setting/c;->To()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_11
    iget-object v0, p0, Lcom/android/normal/e;->bbd:Lcom/android/common/setting/ListPreference;

    if-nez v0, :cond_24

    .line 52
    iget-object v0, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 53
    const-string/jumbo v1, "pref_camera_picture_ratio_key"

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/normal/e;->bbd:Lcom/android/common/setting/ListPreference;

    .line 56
    :cond_24
    invoke-direct {p0}, Lcom/android/normal/e;->bsq()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_68

    .line 57
    const-string/jumbo v0, "4:3"

    move-object v1, v0

    .line 62
    :goto_30
    iget-object v0, p0, Lcom/android/normal/e;->bbe:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    if-nez v0, :cond_47

    .line 66
    invoke-virtual {p0}, Lcom/android/normal/e;->Tp()Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-static {v1, v0}, Lcom/android/normal/e;->Tq(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v2, p0, Lcom/android/normal/e;->bbe:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_47
    invoke-direct {p0}, Lcom/android/normal/e;->bsq()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v1, v2, :cond_81

    .line 71
    invoke-direct {p0}, Lcom/android/normal/e;->bsr()Z

    move-result v1

    .line 70
    if-eqz v1, :cond_81

    .line 72
    iget-object v1, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    iget v2, p0, Lcom/android/normal/e;->Tn:I

    invoke-virtual {v1, v2}, Lcom/android/common/appService/W;->qm(I)Lcom/android/common/cameradevice/p;

    move-result-object v1

    const-string/jumbo v2, "altek-back-sub-picturesize"

    invoke-interface {v1, v2}, Lcom/android/common/cameradevice/p;->Lh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_7c

    move-object v0, v1

    :goto_67
    return-object v0

    .line 59
    :cond_68
    invoke-virtual {p0}, Lcom/android/normal/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "pref_camera_picture_ratio_key"

    const v2, 0x7f0a0475

    invoke-virtual {p0, v2}, Lcom/android/normal/e;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_30

    .line 73
    :cond_7c
    invoke-virtual {p0, v0}, Lcom/android/normal/e;->UC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_67

    .line 75
    :cond_81
    return-object v0
.end method

.method protected Tu()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->adM()Z

    move-result v1

    .line 153
    invoke-virtual {p0}, Lcom/android/normal/e;->Tr()Ljava/lang/String;

    move-result-object v2

    .line 154
    const-string/jumbo v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_27

    .line 155
    if-eqz v1, :cond_27

    const/4 v0, 0x1

    .line 159
    :cond_27
    if-eqz v0, :cond_2d

    .line 160
    const-string/jumbo v0, "on"

    return-object v0

    .line 161
    :cond_2d
    invoke-super {p0}, Lcom/android/common/setting/c;->Tu()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tx()Ljava/lang/String;
    .registers 4

    .prologue
    const v2, 0x7f0a015a

    .line 88
    const-string/jumbo v0, "-1"

    invoke-virtual {p0}, Lcom/android/normal/e;->Tr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 89
    invoke-virtual {p0}, Lcom/android/normal/e;->Ts()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 90
    iget-object v0, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qX()Z

    move-result v0

    .line 88
    if-nez v0, :cond_2c

    .line 91
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acS()Z

    move-result v0

    .line 88
    if-eqz v0, :cond_31

    .line 93
    :cond_2c
    invoke-virtual {p0, v2}, Lcom/android/normal/e;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :cond_31
    invoke-virtual {p0}, Lcom/android/normal/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_ae_bracket_hdr_key"

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/normal/e;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected UB()Ljava/lang/String;
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    .line 80
    if-ne v0, v1, :cond_16

    .line 82
    const-string/jumbo v0, "none"

    return-object v0

    .line 84
    :cond_16
    invoke-super {p0}, Lcom/android/common/setting/c;->UB()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Ua()Ljava/lang/String;
    .registers 4

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/normal/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 187
    const-string/jumbo v1, "pref_live_photo_key"

    .line 188
    const v2, 0x7f0a0477

    invoke-virtual {p0, v2}, Lcom/android/normal/e;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 190
    const-string/jumbo v0, "nv12"

    return-object v0

    .line 192
    :cond_1f
    invoke-super {p0}, Lcom/android/common/setting/c;->Ua()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 4

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/normal/e;->bsq()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_12

    .line 179
    new-instance v0, Lcom/android/common/custom/v;

    const/16 v1, 0x500

    const/16 v2, 0x3c0

    invoke-direct {v0, v1, v2}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v0

    .line 181
    :cond_12
    invoke-super {p0}, Lcom/android/common/setting/c;->Ud()Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0
.end method

.method protected Ue()I
    .registers 3

    .prologue
    .line 230
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Lcom/android/common/custom/x;->adS()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 232
    invoke-direct {p0}, Lcom/android/normal/e;->bsq()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_18

    .line 233
    const/4 v0, 0x2

    return v0

    .line 235
    :cond_18
    invoke-super {p0}, Lcom/android/common/setting/c;->Ue()I

    move-result v0

    return v0
.end method

.method protected Uh()I
    .registers 4

    .prologue
    const/16 v2, 0x1c

    .line 284
    invoke-direct {p0}, Lcom/android/normal/e;->bsq()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_d

    .line 285
    const/16 v0, 0x1e

    return v0

    .line 286
    :cond_d
    invoke-direct {p0}, Lcom/android/normal/e;->bsq()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_16

    .line 287
    return v2

    .line 288
    :cond_16
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->ado()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 289
    invoke-virtual {p0}, Lcom/android/normal/e;->TV()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 290
    const/16 v0, 0x16

    return v0

    .line 291
    :cond_2e
    iget-object v0, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/g;->Kk()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 292
    iget-object v0, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/g;->Km()Z

    move-result v0

    .line 291
    if-eqz v0, :cond_54

    .line 293
    const-string/jumbo v0, "on"

    invoke-virtual {p0}, Lcom/android/normal/e;->Tu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 291
    if-eqz v0, :cond_54

    .line 294
    return v2

    .line 296
    :cond_54
    const/4 v0, 0x0

    return v0
.end method

.method protected Uj()Ljava/lang/String;
    .registers 4

    .prologue
    const v2, 0x7f0a0271

    .line 101
    const-string/jumbo v0, "-1"

    invoke-virtual {p0}, Lcom/android/normal/e;->Tr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 102
    invoke-virtual {p0}, Lcom/android/normal/e;->Ts()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 103
    iget-object v0, p0, Lcom/android/normal/e;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qX()Z

    move-result v0

    .line 101
    if-nez v0, :cond_2c

    .line 104
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acS()Z

    move-result v0

    .line 101
    if-eqz v0, :cond_31

    .line 106
    :cond_2c
    invoke-virtual {p0, v2}, Lcom/android/normal/e;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_31
    invoke-virtual {p0}, Lcom/android/normal/e;->Tx()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string/jumbo v1, "HDR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 111
    const-string/jumbo v0, "hdr"

    .line 117
    :goto_41
    return-object v0

    .line 113
    :cond_42
    invoke-virtual {p0}, Lcom/android/normal/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "pref_camera_scenemode_key"

    .line 115
    invoke-virtual {p0, v2}, Lcom/android/normal/e;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_41
.end method

.method protected Un()Ljava/lang/String;
    .registers 4

    .prologue
    .line 211
    iget v0, p0, Lcom/android/normal/e;->Tn:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-ne v0, v1, :cond_1f

    .line 212
    invoke-virtual {p0}, Lcom/android/normal/e;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 213
    const-string/jumbo v1, "pref_snapshot_mirror_key"

    .line 214
    const v2, 0x7f0a0384

    invoke-virtual {p0, v2}, Lcom/android/normal/e;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 216
    :cond_1f
    invoke-super {p0}, Lcom/android/common/setting/c;->Un()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

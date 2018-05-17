.class public abstract Lcom/android/common/setting/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected Tl:Lcom/android/common/setting/s;

.field protected Tm:Lcom/android/common/appService/W;

.field protected Tn:I

.field protected To:Landroid/media/CamcorderProfile;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/setting/c;->Tn:I

    .line 30
    iput-object v1, p0, Lcom/android/common/setting/c;->Tl:Lcom/android/common/setting/s;

    .line 499
    iput-object v1, p0, Lcom/android/common/setting/c;->To:Landroid/media/CamcorderProfile;

    .line 33
    iput-object p1, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    .line 32
    return-void
.end method

.method private TJ()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    return-object v0
.end method

.method protected static Tq(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 16

    .prologue
    const/4 v0, 0x0

    const-wide/16 v12, 0x0

    const/4 v3, 0x0

    .line 524
    const-string/jumbo v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 525
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-double v4, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-double v6, v1

    div-double v6, v4, v6

    .line 528
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    move-object v2, v3

    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 529
    cmpl-double v4, v6, v12

    if-eqz v4, :cond_4c

    .line 530
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v4

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v4

    div-double/2addr v8, v10

    .line 531
    sub-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double v4, v8, v10

    if-lez v4, :cond_4c

    move v0, v1

    move-object v1, v2

    :goto_49
    move-object v2, v1

    move v1, v0

    goto :goto_22

    .line 533
    :cond_4c
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v8

    .line 534
    if-le v4, v1, :cond_76

    move-object v1, v0

    move v0, v4

    .line 536
    goto :goto_49

    .line 539
    :cond_56
    if-nez v2, :cond_59

    :goto_58
    return-object v3

    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_58

    :cond_76
    move v0, v1

    move-object v1, v2

    goto :goto_49
.end method


# virtual methods
.method protected SY()Ljava/lang/String;
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/common/setting/c;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->YD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final SZ(D)Lcom/android/common/custom/v;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 578
    iget-object v0, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/setting/c;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v1}, Lcom/android/common/setting/s;->Yy()Ljava/util/List;

    move-result-object v1

    .line 577
    invoke-static {v0, v1, p1, p2}, Lcom/android/common/h;->apA(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 580
    if-nez v0, :cond_14

    .line 581
    return-object v2

    .line 583
    :cond_14
    new-instance v1, Lcom/android/common/custom/v;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    .line 584
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 583
    invoke-direct {v1, v2, v0}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v1
.end method

.method protected TA()Ljava/lang/String;
    .registers 2

    .prologue
    .line 596
    const-string/jumbo v0, "OFF"

    return-object v0
.end method

.method protected TB()I
    .registers 2

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method protected TC()Ljava/lang/String;
    .registers 3

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_12

    .line 565
    const-string/jumbo v0, "continuousshot"

    return-object v0

    .line 567
    :cond_12
    const-string/jumbo v0, "normal"

    return-object v0
.end method

.method protected TD()Ljava/lang/String;
    .registers 4

    .prologue
    const v2, 0x7f0a0364

    .line 306
    const-string/jumbo v0, "auto"

    invoke-virtual {p0}, Lcom/android/common/setting/c;->Uw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 307
    invoke-virtual {p0, v2}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 308
    :cond_15
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 309
    const-string/jumbo v1, "pref_camera_colorfilter_key"

    .line 310
    invoke-virtual {p0, v2}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TE()Ljava/lang/String;
    .registers 2

    .prologue
    .line 314
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected TF()Ljava/lang/String;
    .registers 2

    .prologue
    .line 379
    const v0, 0x7f0a0115

    invoke-virtual {p0, v0}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TG()Ljava/lang/String;
    .registers 2

    .prologue
    .line 383
    const v0, 0x7f0a0269

    invoke-virtual {p0, v0}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TH()Ljava/lang/String;
    .registers 2

    .prologue
    .line 387
    const-string/jumbo v0, "-1"

    return-object v0
.end method

.method protected TI()Ljava/lang/String;
    .registers 4

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_denoise_key"

    .line 166
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->acq()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TK()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 82
    const-string/jumbo v2, "pref_camera_exposure_key"

    .line 83
    const-string/jumbo v3, "0"

    .line 81
    invoke-virtual {v0, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_26

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 89
    :goto_15
    const-string/jumbo v2, "off"

    invoke-virtual {p0}, Lcom/android/common/setting/c;->TU()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    if-lez v0, :cond_25

    move v0, v1

    .line 92
    :cond_25
    return v0

    :cond_26
    move v0, v1

    goto :goto_15
.end method

.method protected TL()Ljava/lang/String;
    .registers 4

    .prologue
    const v2, 0x7f0a025d

    .line 96
    invoke-virtual {p0}, Lcom/android/common/setting/c;->UE()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 97
    invoke-virtual {p0}, Lcom/android/common/setting/c;->TU()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 98
    const-string/jumbo v0, "-1"

    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 99
    iget-object v0, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cp()Z

    move-result v0

    .line 96
    if-nez v0, :cond_3c

    .line 100
    const-string/jumbo v0, "point-measure"

    invoke-virtual {p0}, Lcom/android/common/setting/c;->Uw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 96
    if-eqz v0, :cond_40

    .line 101
    :cond_3c
    const-string/jumbo v0, "off"

    return-object v0

    .line 103
    :cond_40
    iget v0, p0, Lcom/android/common/setting/c;->Tn:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-ne v0, v1, :cond_6e

    .line 105
    iget-object v0, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rn()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Lcom/android/common/setting/c;->UE()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 108
    :cond_5a
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 109
    const-string/jumbo v1, "pref_camera_front_flashmode_key"

    .line 110
    invoke-virtual {p0, v2}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_6a
    const-string/jumbo v0, "on"

    return-object v0

    .line 113
    :cond_6e
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "pref_camera_flashmode_key"

    .line 115
    invoke-virtual {p0, v2}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TM()I
    .registers 2

    .prologue
    .line 588
    const/4 v0, 0x0

    return v0
.end method

.method protected TN()Ljava/lang/String;
    .registers 4

    .prologue
    const v2, 0x7f0a0115

    .line 182
    invoke-virtual {p0}, Lcom/android/common/setting/c;->TF()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Lcom/android/common/setting/c;->UF()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 184
    const-string/jumbo v0, "off"

    invoke-virtual {p0}, Lcom/android/common/setting/c;->TU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 185
    invoke-virtual {p0}, Lcom/android/common/setting/c;->UE()Z

    move-result v0

    .line 184
    if-eqz v0, :cond_25

    .line 186
    :cond_20
    invoke-virtual {p0, v2}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_24
    :goto_24
    return-object v0

    .line 188
    :cond_25
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_iso_key"

    .line 189
    invoke-virtual {p0, v2}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method protected TO()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 157
    const-string/jumbo v1, "pref_intelligent_noise_reduction_key"

    .line 156
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_22

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "denoise-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_22
    return-object v0
.end method

.method protected TP()I
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v0

    return v0
.end method

.method protected TQ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/common/setting/c;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->YB()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TR()I
    .registers 2

    .prologue
    .line 459
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->ada()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 460
    iget-object v0, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    invoke-static {v0}, Lcom/android/common/h;->apa(Lcom/android/common/appService/W;)I

    move-result v0

    .line 461
    return v0

    .line 463
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method protected TS()I
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 277
    invoke-virtual {p0}, Lcom/android/common/setting/c;->UF()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 278
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v1

    const-string/jumbo v2, "maf_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/common/setting/e;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 281
    :cond_12
    return v0
.end method

.method protected TT()I
    .registers 4

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/android/common/setting/c;->UF()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 137
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "wb-manual-cct"

    .line 138
    const v2, 0x7f0a03f2

    invoke-virtual {p0, v2}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 140
    :cond_1d
    return v0
.end method

.method protected TU()Ljava/lang/String;
    .registers 2

    .prologue
    .line 255
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected TV()I
    .registers 2

    .prologue
    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method protected TW()Ljava/lang/String;
    .registers 4

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 145
    const-string/jumbo v1, "pref_camera_pictureformat_key"

    .line 146
    const v2, 0x7f0a0174

    invoke-virtual {p0, v2}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TX()I
    .registers 4

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 341
    const-string/jumbo v1, "pref_camera_pretty_slimming_key"

    .line 342
    const v2, 0x7f0a046f

    invoke-virtual {p0, v2}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 340
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected TY()I
    .registers 4

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 327
    const-string/jumbo v1, "pref_camera_pretty_smooth_key"

    .line 328
    const v2, 0x7f0a046d

    invoke-virtual {p0, v2}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected TZ()I
    .registers 4

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 334
    const-string/jumbo v1, "pref_camera_pretty_toning_key"

    .line 335
    const v2, 0x7f0a046e

    invoke-virtual {p0, v2}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected Ta(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/android/common/setting/c;->TH()Ljava/lang/String;

    .line 395
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 397
    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 398
    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 399
    mul-int/lit8 v0, v0, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    :goto_1c
    const-string/jumbo v1, "0"

    invoke-static {v1, v0}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 411
    const-string/jumbo v0, "-1"

    .line 413
    :cond_28
    return-object v0

    .line 401
    :cond_29
    if-eqz v0, :cond_32

    .line 402
    mul-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 404
    :cond_32
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 405
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 406
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 407
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method protected Tb(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tc()Lcom/android/common/setting/e;
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    iget v1, p0, Lcom/android/common/setting/c;->Tn:I

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->rA(I)Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method protected Td()I
    .registers 2

    .prologue
    .line 515
    iget v0, p0, Lcom/android/common/setting/c;->Tn:I

    return v0
.end method

.method protected Te()Lcom/android/common/cameradevice/p;
    .registers 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/common/setting/c;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->YE()Lcom/android/common/cameradevice/p;

    move-result-object v0

    return-object v0
.end method

.method protected Tf()I
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method protected Tg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_demister_value"

    const-string/jumbo v2, "50"

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Th()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Ti()Ljava/lang/String;
    .registers 2

    .prologue
    .line 519
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Tj()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    const v0, 0x7f0a013e

    invoke-virtual {p0, v0}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tk()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    const v0, 0x7f0a013d

    invoke-virtual {p0, v0}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 219
    const-string/jumbo v1, "pref_camera_exposure_disable_key"

    .line 220
    const-string/jumbo v2, "off"

    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 222
    const v0, 0x7f0a014a

    invoke-virtual {p0, v0}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    :cond_1f
    return-object v0
.end method

.method protected Tm()Ljava/lang/String;
    .registers 3

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/common/setting/c;->TS()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 287
    const-string/jumbo v0, "manual"

    .line 298
    :goto_a
    return-object v0

    .line 288
    :cond_b
    iget v0, p0, Lcom/android/common/setting/c;->Tn:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v1

    if-ne v0, v1, :cond_23

    .line 289
    invoke-direct {p0}, Lcom/android/common/setting/c;->TJ()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_23

    .line 290
    const-string/jumbo v0, "manual"

    goto :goto_a

    .line 291
    :cond_23
    iget v0, p0, Lcom/android/common/setting/c;->Tn:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v1

    if-ne v0, v1, :cond_45

    .line 292
    invoke-direct {p0}, Lcom/android/common/setting/c;->TJ()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-eq v0, v1, :cond_41

    .line 293
    iget-object v0, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jz:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_45

    .line 294
    :cond_41
    const-string/jumbo v0, "af-mapping"

    goto :goto_a

    .line 296
    :cond_45
    iget-object v0, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->ek()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected Tn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->atl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 365
    const-string/jumbo v0, "flip-v"

    return-object v0

    .line 367
    :cond_12
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected To()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/common/setting/c;->TQ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tp()Ljava/util/List;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/common/setting/c;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yz()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected Tr()Ljava/lang/String;
    .registers 5

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/common/setting/c;->TH()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-virtual {p0}, Lcom/android/common/setting/c;->UF()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 353
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_slow_shutter_min_key"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v1

    const-string/jumbo v2, "pref_slow_shutter_sec_key"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-virtual {p0, v0, v1}, Lcom/android/common/setting/c;->Ta(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    :cond_2a
    return-object v0
.end method

.method protected Ts()Z
    .registers 2

    .prologue
    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method public Tt(ILcom/android/common/setting/s;)V
    .registers 3

    .prologue
    .line 37
    iput p1, p0, Lcom/android/common/setting/c;->Tn:I

    .line 38
    iput-object p2, p0, Lcom/android/common/setting/c;->Tl:Lcom/android/common/setting/s;

    .line 36
    return-void
.end method

.method protected Tu()Ljava/lang/String;
    .registers 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/common/setting/c;->UE()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acU()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 236
    :cond_14
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tr()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/android/common/setting/c;->TU()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 235
    if-eqz v0, :cond_32

    .line 237
    :cond_2e
    const-string/jumbo v0, "off"

    return-object v0

    .line 239
    :cond_32
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tv()I
    .registers 2

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method protected Tw()Ljava/lang/String;
    .registers 2

    .prologue
    .line 643
    const/4 v0, 0x0

    return-object v0
.end method

.method protected Tx()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    const v0, 0x7f0a015a

    invoke-virtual {p0, v0}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Ty()Ljava/lang/String;
    .registers 4

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 230
    const-string/jumbo v1, "pref_camera_antibanding_key"

    .line 231
    const v2, 0x7f0a016b

    invoke-virtual {p0, v2}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tz()I
    .registers 2

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method protected UA()I
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asV()Lcom/android/common/appService/T;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 606
    iget-object v0, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asV()Lcom/android/common/appService/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/T;->oO()I

    move-result v0

    return v0

    .line 608
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method protected UB()Ljava/lang/String;
    .registers 4

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 64
    const-string/jumbo v1, "pref_camera_ztemt_fun_effect"

    const v2, 0x7f0a0412

    invoke-virtual {p0, v2}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected UC(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 631
    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 632
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    return-object v0

    .line 633
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 634
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public UD()Z
    .registers 2

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method protected UE()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 505
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Uj()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hdr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 506
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tx()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0159

    invoke-virtual {p0, v2}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 505
    if-nez v1, :cond_2d

    .line 507
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Ti()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v0, 0x0

    .line 505
    :cond_2d
    return v0
.end method

.method protected UF()Z
    .registers 2

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method protected UG()Z
    .registers 2

    .prologue
    .line 647
    const/4 v0, 0x0

    return v0
.end method

.method protected UH()Z
    .registers 2

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method protected Ua()Ljava/lang/String;
    .registers 2

    .prologue
    .line 475
    const-string/jumbo v0, "yuv420sp"

    return-object v0
.end method

.method protected Ub()[I
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method protected Uc()I
    .registers 2

    .prologue
    .line 469
    const/4 v0, -0x1

    return v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 5

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Te()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 55
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v1

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v0, v0

    div-double v0, v2, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/common/setting/c;->SZ(D)Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0
.end method

.method protected Ue()I
    .registers 2

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method protected Uf()Z
    .registers 2

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method protected Ug()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    const-string/jumbo v0, "disable"

    return-object v0
.end method

.method protected Uh()I
    .registers 2

    .prologue
    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method protected Ui()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    const v0, 0x7f0a013f

    invoke-virtual {p0, v0}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Uj()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    const v0, 0x7f0a0271

    invoke-virtual {p0, v0}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Uk()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    const-string/jumbo v0, "auto"

    return-object v0
.end method

.method protected Ul()I
    .registers 2

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method protected Um()I
    .registers 2

    .prologue
    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method protected Un()Ljava/lang/String;
    .registers 2

    .prologue
    .line 347
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Uo()I
    .registers 2

    .prologue
    .line 627
    const/4 v0, 0x1

    return v0
.end method

.method protected Up()Ljava/lang/String;
    .registers 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->mZ(Lcom/android/common/appService/W;)[Ljava/lang/String;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_37

    .line 262
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_stabilization_key"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 263
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 264
    const-string/jumbo v1, "pref_camera_stabilization_key"

    .line 265
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aez()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 267
    :cond_33
    const-string/jumbo v0, "off"

    return-object v0

    .line 270
    :cond_37
    const-string/jumbo v0, "BaseParameterItems"

    const-string/jumbo v1, "Statibilization keys null, just use off"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Uq()Ljava/util/List;
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/common/setting/c;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->YA()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected Ur()Landroid/media/CamcorderProfile;
    .registers 2

    .prologue
    .line 501
    const/4 v0, 0x0

    return-object v0
.end method

.method protected Us()I
    .registers 2

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method protected Ut()Ljava/lang/String;
    .registers 2

    .prologue
    .line 492
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Uu()Ljava/lang/String;
    .registers 2

    .prologue
    .line 496
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Uv()[I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 478
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Te()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LU()Ljava/util/List;

    move-result-object v1

    .line 479
    const/4 v0, 0x2

    new-array v2, v0, [I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    aput v0, v2, v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2
.end method

.method protected Uw()Ljava/lang/String;
    .registers 4

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/common/setting/c;->TG()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lcom/android/common/setting/c;->UF()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 123
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 124
    const-string/jumbo v1, "pref_camera_whitebalance_key"

    .line 125
    const v2, 0x7f0a0269

    invoke-virtual {p0, v2}, Lcom/android/common/setting/c;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_1c
    return-object v0
.end method

.method protected Ux()Ljava/lang/String;
    .registers 2

    .prologue
    .line 318
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Uy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 612
    const-string/jumbo v0, "-1"

    return-object v0
.end method

.method protected Uz()I
    .registers 4

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/android/common/setting/c;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_zoom_function_key"

    .line 544
    const-string/jumbo v2, "on"

    .line 543
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 546
    iget-object v0, p0, Lcom/android/common/setting/c;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/setting/c;->Td()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/appService/CameraMember;->mg(Lcom/android/common/appService/CameraMember;I)Z

    move-result v0

    .line 545
    if-eqz v0, :cond_29

    .line 547
    const/4 v0, 0x1

    return v0

    .line 549
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.class public Lcn/qcom/camera/c;
.super Lcom/android/common/cameradevice/l;
.source "SourceFile"


# instance fields
.field private final btl:Ljava/util/List;

.field private btm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/common/cameradevice/l;-><init>()V

    .line 322
    const-string/jumbo v0, "normal"

    iput-object v0, p0, Lcn/qcom/camera/c;->btm:Ljava/lang/String;

    .line 323
    new-instance v0, Lcn/qcom/camera/QCOMParametersEx$1;

    invoke-direct {v0, p0}, Lcn/qcom/camera/QCOMParametersEx$1;-><init>(Lcn/qcom/camera/c;)V

    iput-object v0, p0, Lcn/qcom/camera/c;->btl:Ljava/util/List;

    .line 16
    return-void
.end method


# virtual methods
.method public Mw(I)V
    .registers 5

    .prologue
    .line 348
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "manual-wb-type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 349
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "wb-manual-cct"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 346
    return-void
.end method

.method public NA()Ljava/util/List;
    .registers 3

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFaceDetectionModes()Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 65
    :catch_7
    move-exception v0

    .line 66
    const-string/jumbo v0, "QcomParametersEx"

    const-string/jumbo v1, "not support ISO"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public NB()Ljava/util/List;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public NC()Ljava/util/List;
    .registers 3

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 356
    :try_start_1
    iget-object v1, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedRedeyeReductionModes()Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8
    .catchall {:try_start_1 .. :try_end_6} :catchall_a

    move-result-object v0

    .line 360
    return-object v0

    .line 357
    :catch_8
    move-exception v1

    .line 360
    return-object v0

    .line 359
    :catchall_a
    move-exception v1

    .line 360
    return-object v0
.end method

.method public ND()Ljava/util/List;
    .registers 2

    .prologue
    .line 388
    :try_start_0
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedSelectableZoneAf()Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 389
    :catch_7
    move-exception v0

    .line 392
    const/4 v0, 0x0

    return-object v0
.end method

.method public NE()I
    .registers 2

    .prologue
    .line 416
    const/4 v0, 0x3

    return v0
.end method

.method public NF(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 458
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "altek-3D-type"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public NG(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 309
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "ae-bracket-hdr"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public NH(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposure(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 153
    :goto_5
    return-void

    .line 156
    :catch_6
    move-exception v0

    .line 157
    const-string/jumbo v0, "QcomParametersEx"

    const-string/jumbo v1, "not support AutoExposure"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public NI(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 430
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "altek-bokeh-enable"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public NJ(I)V
    .registers 3

    .prologue
    .line 186
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 187
    const/4 p1, 0x0

    .line 189
    :cond_4
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 185
    return-void
.end method

.method public NK(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 339
    iput-object p1, p0, Lcn/qcom/camera/c;->btm:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public NL(I)V
    .registers 4

    .prologue
    .line 112
    if-ltz p1, :cond_f

    :try_start_2
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxContrast()I

    move-result v0

    if-gt p1, v0, :cond_f

    .line 113
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setContrast(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10

    .line 110
    :cond_f
    :goto_f
    return-void

    .line 115
    :catch_10
    move-exception v0

    .line 116
    const-string/jumbo v0, "QcomParametersEx"

    const-string/jumbo v1, "not supported Contrast"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public NM(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setDenoise(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public NN(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFaceDetectionMode(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public NO(I)V
    .registers 4

    .prologue
    .line 425
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "CM-Fusion-enable"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 424
    return-void
.end method

.method public NP(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 30
    :try_start_0
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setISOValue(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 28
    :goto_5
    return-void

    .line 31
    :catch_6
    move-exception v0

    .line 32
    const-string/jumbo v0, "QcomParametersEx"

    const-string/jumbo v1, "not support ISO"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public NQ(Ljava/util/List;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 288
    if-nez p1, :cond_1d

    .line 289
    invoke-virtual {p0}, Lcn/qcom/camera/c;->Lz()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string/jumbo v1, "mwb_area"

    invoke-static {v2}, Lcom/android/common/h;->api(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcn/qcom/camera/c;->Lz()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string/jumbo v1, "mwb_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 287
    :goto_1c
    return-void

    .line 292
    :cond_1d
    invoke-virtual {p0}, Lcn/qcom/camera/c;->Lz()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string/jumbo v1, "mwb_area"

    invoke-static {p1}, Lcom/android/common/h;->api(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcn/qcom/camera/c;->Lz()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string/jumbo v1, "mwb_switch"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_1c
.end method

.method public NR(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 226
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "preview-flip"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public NS(I)V
    .registers 4

    .prologue
    .line 314
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "raw_data_mode_key"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 313
    return-void
.end method

.method public NT(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 379
    :try_start_0
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRedeyeReductionMode(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 377
    :goto_5
    return-void

    .line 380
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public NU(I)V
    .registers 4

    .prologue
    .line 133
    if-ltz p1, :cond_f

    .line 134
    :try_start_2
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxSaturation()I

    move-result v0

    if-gt p1, v0, :cond_f

    .line 135
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setSaturation(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10

    .line 131
    :cond_f
    :goto_f
    return-void

    .line 137
    :catch_10
    move-exception v0

    .line 138
    const-string/jumbo v0, "QcomParametersEx"

    const-string/jumbo v1, "not supported Saturation"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public NV(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 408
    :try_start_0
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setSelectableZoneAf(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 406
    :goto_5
    return-void

    .line 409
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public NW(I)V
    .registers 4

    .prologue
    .line 88
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    mul-int/2addr v0, p1

    .line 90
    if-ltz v0, :cond_18

    .line 91
    :try_start_b
    iget-object v1, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v1

    if-gt v0, v1, :cond_18

    .line 92
    iget-object v1, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setSharpness(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19

    .line 87
    :cond_18
    :goto_18
    return-void

    .line 94
    :catch_19
    move-exception v0

    .line 95
    const-string/jumbo v0, "QcomParametersEx"

    const-string/jumbo v1, "not support Sharpness"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method public NX(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 256
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setVideoHighFrameRate(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public NY(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 277
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "video-hsr"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public NZ(II)V
    .registers 6

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "video-size"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public Nl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getISOValue()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 40
    :catch_7
    move-exception v0

    .line 41
    const-string/jumbo v0, "QcomParametersEx"

    const-string/jumbo v1, "not support ISO"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public Nm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZSLMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Nn()I
    .registers 3

    .prologue
    .line 440
    const-string/jumbo v0, "AL3200_SCID"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/qcom/camera/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public No(I)V
    .registers 4

    .prologue
    .line 435
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "AL3200_SCID"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 434
    return-void
.end method

.method public Np()Ljava/lang/String;
    .registers 3

    .prologue
    .line 272
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "video-hsr"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Nq(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 232
    const-string/jumbo v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 233
    rem-int/lit16 v0, p2, 0xb4

    if-eqz v0, :cond_19

    .line 234
    const-string/jumbo v0, "flip-h"

    .line 241
    :goto_10
    iget-object v1, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "video-flip"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void

    .line 236
    :cond_19
    const-string/jumbo v0, "flip-v"

    goto :goto_10

    .line 239
    :cond_1d
    const-string/jumbo v0, "off"

    goto :goto_10
.end method

.method public Nr(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 211
    const-string/jumbo v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 212
    rem-int/lit16 v0, p2, 0xb4

    if-nez v0, :cond_19

    .line 213
    const-string/jumbo v0, "flip-h"

    .line 220
    :goto_10
    iget-object v1, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "snapshot-picture-flip"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void

    .line 215
    :cond_19
    const-string/jumbo v0, "flip-v"

    goto :goto_10

    .line 218
    :cond_1d
    const-string/jumbo v0, "off"

    goto :goto_10
.end method

.method public Ns()Ljava/util/List;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoHighFrameRateModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Nt()Ljava/util/List;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedHfrSizes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Nu(I)V
    .registers 4

    .prologue
    .line 199
    invoke-virtual {p0}, Lcn/qcom/camera/c;->Lz()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->setFocusPosition(II)V

    .line 198
    return-void
.end method

.method public Nv()Ljava/lang/String;
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "ae-bracket-hdr"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Nw()I
    .registers 3

    .prologue
    .line 319
    const-string/jumbo v0, "raw_data_mode_key"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/qcom/camera/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Nx()Ljava/util/List;
    .registers 3

    .prologue
    .line 299
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "ae-bracket-hdr-values"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Lcom/android/common/h;->aqm(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public Ny()Ljava/util/List;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedAutoexposure()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Nz()Ljava/util/List;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedDenoiseModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Oa(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcn/qcom/camera/c;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZSLMode(Ljava/lang/String;)V

    .line 172
    return-void
.end method

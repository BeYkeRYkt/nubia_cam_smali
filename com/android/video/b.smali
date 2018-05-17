.class public Lcom/android/video/b;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# instance fields
.field private aGr:Lcom/android/common/cameradevice/r;

.field private aGs:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/video/b;->aGr:Lcom/android/common/cameradevice/r;

    .line 290
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/video/b;->aGs:I

    .line 37
    invoke-static {}, Lcom/android/common/cameradevice/d;->JO()Lcom/android/common/cameradevice/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/d;->JP()Lcom/android/common/cameradevice/r;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/b;->aGr:Lcom/android/common/cameradevice/r;

    .line 34
    return-void
.end method

.method private aVd(I)I
    .registers 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/video/b;->aGr:Lcom/android/common/cameradevice/r;

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->NX:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/r;->Oe(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;)I

    move-result v0

    if-eq p1, v0, :cond_14

    .line 390
    iget-object v0, p0, Lcom/android/video/b;->aGr:Lcom/android/common/cameradevice/r;

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->NY:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/r;->Oe(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;)I

    move-result v0

    if-ne p1, v0, :cond_1d

    .line 391
    :cond_14
    iget-object v0, p0, Lcom/android/video/b;->aGr:Lcom/android/common/cameradevice/r;

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NT:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/r;->Od(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;)I

    move-result v0

    return v0

    .line 392
    :cond_1d
    iget-object v0, p0, Lcom/android/video/b;->aGr:Lcom/android/common/cameradevice/r;

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->NZ:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/r;->Oe(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;)I

    move-result v0

    if-eq p1, v0, :cond_31

    .line 393
    iget-object v0, p0, Lcom/android/video/b;->aGr:Lcom/android/common/cameradevice/r;

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->Oa:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/r;->Oe(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;)I

    move-result v0

    if-ne p1, v0, :cond_3a

    .line 394
    :cond_31
    iget-object v0, p0, Lcom/android/video/b;->aGr:Lcom/android/common/cameradevice/r;

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NS:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/r;->Od(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;)I

    move-result v0

    return v0

    .line 395
    :cond_3a
    iget-object v0, p0, Lcom/android/video/b;->aGr:Lcom/android/common/cameradevice/r;

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->Ob:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/r;->Oe(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;)I

    move-result v0

    if-ne p1, v0, :cond_4d

    .line 396
    iget-object v0, p0, Lcom/android/video/b;->aGr:Lcom/android/common/cameradevice/r;

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NU:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/r;->Od(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;)I

    move-result v0

    return v0

    .line 398
    :cond_4d
    iget-object v0, p0, Lcom/android/video/b;->aGr:Lcom/android/common/cameradevice/r;

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NT:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/r;->Od(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;)I

    move-result v0

    return v0
.end method

.method private aVe(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;)I
    .registers 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/video/b;->aGr:Lcom/android/common/cameradevice/r;

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/r;->Od(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;)I

    move-result v0

    return v0
.end method

.method private aVf()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v0, p0, Lcom/android/video/b;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 319
    const-string/jumbo v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 321
    const-string/jumbo v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 322
    if-lez v0, :cond_2a

    .line 323
    invoke-virtual {p0}, Lcom/android/video/b;->Td()I

    move-result v1

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 325
    return v0

    .line 327
    :cond_28
    const/4 v0, 0x1

    return v0

    .line 330
    :cond_2a
    return v2

    .line 333
    :cond_2b
    const/4 v0, -0x1

    return v0
.end method

.method private aVg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/video/b;->Td()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 338
    invoke-virtual {p0}, Lcom/android/video/b;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_video_quality_key"

    .line 339
    const v2, 0x7f0a0141

    invoke-virtual {p0, v2}, Lcom/android/video/b;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 341
    :cond_21
    invoke-virtual {p0}, Lcom/android/video/b;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_front_video_quality_key"

    .line 342
    const v2, 0x7f0a0140

    invoke-virtual {p0, v2}, Lcom/android/video/b;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aVh(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 163
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adZ()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 164
    sget-object v0, Lcom/android/common/h;->ahr:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lcom/android/common/h;->ahr:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 165
    if-le p2, v0, :cond_1e

    .line 166
    return-object v3

    .line 169
    :cond_1e
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 170
    invoke-static {v0, p2, p3}, Lcom/android/common/h;->apc(Landroid/hardware/Camera$Size;II)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 171
    return-object v0

    .line 174
    :cond_35
    return-object v3
.end method

.method private aVi()Z
    .registers 3

    .prologue
    .line 354
    iget v0, p0, Lcom/android/video/b;->aGs:I

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NR:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    invoke-direct {p0, v1}, Lcom/android/video/b;->aVe(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method protected TB()I
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method protected TD()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    const v0, 0x7f0a0364

    invoke-virtual {p0, v0}, Lcom/android/video/b;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TE()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected TI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TL()Ljava/lang/String;
    .registers 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/video/b;->Ti()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 97
    invoke-virtual {p0}, Lcom/android/video/b;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 98
    const-string/jumbo v1, "pref_camera_video_flashmode_key"

    .line 99
    const v2, 0x7f0a025d

    invoke-virtual {p0, v2}, Lcom/android/video/b;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :cond_20
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected TN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    const v0, 0x7f0a0115

    invoke-virtual {p0, v0}, Lcom/android/video/b;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TR()I
    .registers 2

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method protected TS()I
    .registers 2

    .prologue
    .line 184
    const/4 v0, -0x1

    return v0
.end method

.method protected TT()I
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method protected TX()I
    .registers 2

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method protected TY()I
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method protected TZ()I
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method protected Tf()I
    .registers 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/common/setting/c;->Tf()I

    move-result v0

    return v0
.end method

.method protected Tg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/common/setting/c;->Tg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Th()Ljava/lang/String;
    .registers 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/video/b;->Td()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 52
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->add()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_1b
    invoke-super {p0}, Lcom/android/common/setting/c;->Th()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tj()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/android/common/setting/c;->Tj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tk()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/common/setting/c;->Tk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/common/setting/c;->Tl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/android/common/setting/c;->Tm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    invoke-super {p0}, Lcom/android/common/setting/c;->Tn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected To()Ljava/lang/String;
    .registers 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/video/b;->Ur()Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NR:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    invoke-direct {p0, v1}, Lcom/android/video/b;->aVe(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;)I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 59
    const-string/jumbo v0, "1920x1080"

    return-object v0

    .line 61
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/video/b;->Ur()Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/android/video/b;->Ur()Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    const-string/jumbo v0, "-1"

    return-object v0
.end method

.method protected Ts()Z
    .registers 2

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method protected Tu()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Tx()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    const v0, 0x7f0a015a

    invoke-virtual {p0, v0}, Lcom/android/video/b;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Ty()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    const v0, 0x7f0a016b

    invoke-virtual {p0, v0}, Lcom/android/video/b;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tz()I
    .registers 2

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method protected UB()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected UF()Z
    .registers 2

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method protected Ua()Ljava/lang/String;
    .registers 2

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/video/b;->aVi()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 276
    const-string/jumbo v0, "nv12-venus"

    return-object v0

    .line 278
    :cond_a
    const-string/jumbo v0, "nv12-venus"

    return-object v0
.end method

.method protected Ub()[I
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method protected Uc()I
    .registers 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/video/b;->Ur()Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    return v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 5

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/video/b;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yy()Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcom/android/video/b;->Ur()Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 71
    invoke-virtual {p0}, Lcom/android/video/b;->Ur()Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 68
    invoke-direct {p0, v0, v1, v2}, Lcom/android/video/b;->aVh(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_22

    .line 74
    new-instance v1, Lcom/android/common/custom/v;

    .line 75
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    .line 76
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 74
    invoke-direct {v1, v2, v0}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v1

    .line 78
    :cond_22
    const-string/jumbo v0, "VideoParameterItems"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use defined preview size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/video/b;->Ur()Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lcom/android/video/b;->Ur()Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    const-string/jumbo v2, " not supported or too large, use similar ratio preview size instead"

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/video/b;->Ur()Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/android/video/b;->Ur()Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/video/b;->SZ(D)Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0
.end method

.method protected Uf()Z
    .registers 2

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method protected Ui()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    const v0, 0x7f0a013f

    invoke-virtual {p0, v0}, Lcom/android/video/b;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Un()Ljava/lang/String;
    .registers 4

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/video/b;->Td()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 221
    invoke-virtual {p0}, Lcom/android/video/b;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 222
    const-string/jumbo v1, "pref_snapshot_mirror_key"

    .line 223
    const v2, 0x7f0a0384

    invoke-virtual {p0, v2}, Lcom/android/video/b;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 225
    :cond_21
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Up()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    const-string/jumbo v0, "on"

    return-object v0
.end method

.method protected Ur()Landroid/media/CamcorderProfile;
    .registers 4

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/video/b;->aVc()I

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/android/video/b;->To:Landroid/media/CamcorderProfile;

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/android/video/b;->aGs:I

    if-eq v1, v0, :cond_1c

    .line 378
    :cond_c
    iput v0, p0, Lcom/android/video/b;->aGs:I

    .line 379
    iget-object v0, p0, Lcom/android/video/b;->aGr:Lcom/android/common/cameradevice/r;

    invoke-virtual {p0}, Lcom/android/video/b;->Td()I

    move-result v1

    iget v2, p0, Lcom/android/video/b;->aGs:I

    invoke-virtual {v0, v1, v2}, Lcom/android/common/cameradevice/r;->Oc(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/b;->To:Landroid/media/CamcorderProfile;

    .line 381
    :cond_1c
    iget-object v0, p0, Lcom/android/video/b;->To:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method protected Us()I
    .registers 3

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/android/video/b;->aVi()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/video/b;->aGs:I

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NS:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    invoke-direct {p0, v1}, Lcom/android/video/b;->aVe(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;)I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 349
    :cond_10
    const/4 v0, 0x1

    return v0

    .line 351
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method protected Uu()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 358
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/video/b;->Td()I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_15

    move v0, v1

    .line 359
    :cond_15
    invoke-virtual {p0}, Lcom/android/video/b;->Tc()Lcom/android/common/setting/e;

    move-result-object v3

    .line 360
    if-eqz v0, :cond_4c

    const-string/jumbo v2, "pref_video_quality_key"

    .line 362
    :goto_1e
    if-eqz v0, :cond_50

    const v0, 0x7f0a0141

    invoke-virtual {p0, v0}, Lcom/android/video/b;->Tb(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_27
    invoke-virtual {v3, v2, v0}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->acH()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 365
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 364
    if-eqz v2, :cond_58

    .line 366
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 367
    aget-object v0, v0, v1

    .line 368
    return-object v0

    .line 361
    :cond_4c
    const-string/jumbo v2, "pref_front_video_quality_key"

    goto :goto_1e

    .line 363
    :cond_50
    const v0, 0x7f0a0140

    invoke-virtual {p0, v0}, Lcom/android/video/b;->Tb(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 370
    :cond_58
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Uv()[I
    .registers 4

    .prologue
    .line 282
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 283
    invoke-virtual {p0}, Lcom/android/video/b;->Ur()Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 284
    invoke-virtual {p0}, Lcom/android/video/b;->Ur()Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 282
    return-object v0
.end method

.method protected Uw()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    const v0, 0x7f0a0269

    invoke-virtual {p0, v0}, Lcom/android/video/b;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected aVc()I
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 293
    invoke-direct {p0}, Lcom/android/video/b;->aVf()I

    move-result v0

    .line 294
    const/4 v1, -0x1

    if-ne v0, v1, :cond_70

    .line 295
    invoke-direct {p0}, Lcom/android/video/b;->aVg()Ljava/lang/String;

    move-result-object v1

    .line 297
    const-string/jumbo v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 298
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acH()Z

    move-result v0

    .line 297
    if-eqz v0, :cond_a8

    .line 299
    const-string/jumbo v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 301
    aget-object v0, v2, v7

    .line 302
    iget-object v3, p0, Lcom/android/video/b;->aGr:Lcom/android/common/cameradevice/r;

    .line 303
    iget v4, p0, Lcom/android/video/b;->Tn:I

    invoke-virtual {p0}, Lcom/android/video/b;->Te()Lcom/android/common/cameradevice/p;

    move-result-object v5

    aget-object v6, v2, v8

    .line 302
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/common/cameradevice/r;->Ob(ILcom/android/common/cameradevice/p;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 301
    invoke-static {v0, v3}, Lcom/android/common/h;->apd(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 304
    aget-object v0, v2, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 305
    const-string/jumbo v1, "VideoParameterItems"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "qulity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";fps = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, v2, v8

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_70
    :goto_70
    return v0

    .line 307
    :cond_71
    aget-object v0, v2, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/video/b;->aVd(I)I

    move-result v0

    .line 308
    const-string/jumbo v2, "VideoParameterItems"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HFR quality("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") not supported, use nomal quality"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " instead"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    .line 311
    :cond_a8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_70
.end method

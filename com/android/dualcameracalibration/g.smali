.class public Lcom/android/dualcameracalibration/g;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 25
    return-void
.end method

.method private bsW()I
    .registers 4

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/g;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "steps_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected TB()I
    .registers 2

    .prologue
    .line 63
    const/16 v0, 0x10

    return v0
.end method

.method protected TM()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lcom/android/dualcameracalibration/g;->bsW()I

    move-result v0

    if-nez v0, :cond_8

    .line 105
    return v1

    .line 107
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method protected TN()Ljava/lang/String;
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/dualcameracalibration/g;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_22

    .line 127
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    instance-of v0, v0, Lcom/android/common/custom/e;

    if-eqz v0, :cond_1e

    .line 128
    const-string/jumbo v0, "ISO200"

    return-object v0

    .line 130
    :cond_1e
    const-string/jumbo v0, "ISO100"

    return-object v0

    .line 133
    :cond_22
    const v0, 0x7f0a0115

    invoke-virtual {p0, v0}, Lcom/android/dualcameracalibration/g;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TR()I
    .registers 2

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method protected TS()I
    .registers 4

    .prologue
    const/16 v2, 0x6e

    .line 82
    invoke-direct {p0}, Lcom/android/dualcameracalibration/g;->bsW()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 83
    const/16 v0, 0x78

    return v0

    .line 84
    :cond_c
    invoke-direct {p0}, Lcom/android/dualcameracalibration/g;->bsW()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 85
    return v2

    .line 86
    :cond_14
    invoke-direct {p0}, Lcom/android/dualcameracalibration/g;->bsW()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 87
    return v2

    .line 88
    :cond_1c
    invoke-direct {p0}, Lcom/android/dualcameracalibration/g;->bsW()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    .line 89
    const/16 v0, 0x82

    return v0

    .line 90
    :cond_26
    invoke-direct {p0}, Lcom/android/dualcameracalibration/g;->bsW()I

    move-result v0

    if-nez v0, :cond_2f

    .line 91
    const/16 v0, 0x8c

    return v0

    .line 93
    :cond_2f
    invoke-super {p0}, Lcom/android/common/setting/c;->TS()I

    move-result v0

    return v0
.end method

.method protected Tc()Lcom/android/common/setting/e;
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/dualcameracalibration/g;->Tm:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/dualcameracalibration/g;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->rA(I)Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method protected Tm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    const-string/jumbo v0, "manual"

    return-object v0
.end method

.method protected To()Ljava/lang/String;
    .registers 3

    .prologue
    .line 32
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    instance-of v0, v0, Lcom/android/common/custom/e;

    if-eqz v0, :cond_20

    .line 33
    iget v0, p0, Lcom/android/dualcameracalibration/g;->Tn:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 34
    const-string/jumbo v0, "4032x3024"

    return-object v0

    .line 36
    :cond_1c
    const-string/jumbo v0, "2688x2016"

    return-object v0

    .line 39
    :cond_20
    invoke-direct {p0}, Lcom/android/dualcameracalibration/g;->bsW()I

    move-result v0

    if-nez v0, :cond_2a

    .line 40
    const-string/jumbo v0, "1728x972"

    return-object v0

    .line 42
    :cond_2a
    const-string/jumbo v0, "4160x3120"

    return-object v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 4

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/dualcameracalibration/g;->bsW()I

    move-result v0

    if-nez v0, :cond_10

    .line 50
    new-instance v0, Lcom/android/common/custom/v;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v0

    .line 52
    :cond_10
    new-instance v0, Lcom/android/common/custom/v;

    const/16 v1, 0x5a0

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v0
.end method

.method protected Ue()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/dualcameracalibration/g;->bsW()I

    move-result v0

    if-nez v0, :cond_8

    .line 69
    return v1

    .line 71
    :cond_8
    const/4 v0, 0x2

    return v0
.end method

.method protected Uh()I
    .registers 2

    .prologue
    .line 113
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    instance-of v0, v0, Lcom/android/common/custom/e;

    if-eqz v0, :cond_f

    .line 114
    const/16 v0, 0x1d

    return v0

    .line 116
    :cond_f
    invoke-direct {p0}, Lcom/android/dualcameracalibration/g;->bsW()I

    move-result v0

    if-nez v0, :cond_18

    .line 117
    const/16 v0, 0x1b

    return v0

    .line 119
    :cond_18
    const/16 v0, 0x1c

    return v0
.end method

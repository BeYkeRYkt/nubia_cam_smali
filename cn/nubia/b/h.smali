.class public Lcn/nubia/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private bpu:Lcn/nubia/b/a;

.field private bpv:Lcom/android/common/appService/W;

.field private bpw:I


# direct methods
.method public constructor <init>(ILcom/android/common/appService/W;Lcn/nubia/b/a;)V
    .registers 5

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    .line 38
    iput-object p2, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    .line 39
    iput p1, p0, Lcn/nubia/b/h;->bpw:I

    .line 40
    iput-object p3, p0, Lcn/nubia/b/h;->bpu:Lcn/nubia/b/a;

    .line 37
    return-void
.end method

.method private bLP(ILjava/lang/String;)I
    .registers 5

    .prologue
    .line 82
    iget-object v0, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->qm(I)Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/common/cameradevice/p;->Lh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    const/4 v0, -0x1

    .line 84
    if-eqz v1, :cond_11

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 87
    :cond_11
    return v0
.end method

.method private bLQ()I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Lj()I

    move-result v0

    return v0
.end method

.method private bLR()I
    .registers 5

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 110
    const-string/jumbo v1, "pref_camera_pretty_slimming_key"

    .line 111
    iget-object v2, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    const v3, 0x7f0a046f

    invoke-virtual {v2, v3}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private bLS()I
    .registers 5

    .prologue
    .line 95
    iget-object v0, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 96
    const-string/jumbo v1, "pref_camera_pretty_smooth_key"

    .line 97
    iget-object v2, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    const v3, 0x7f0a046d

    invoke-virtual {v2, v3}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private bLT()I
    .registers 5

    .prologue
    .line 102
    iget-object v0, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "pref_camera_pretty_toning_key"

    .line 104
    iget-object v2, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    const v3, 0x7f0a046e

    invoke-virtual {v2, v3}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 11

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x0

    .line 45
    iget-object v0, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-nez v0, :cond_c

    .line 46
    if-nez p1, :cond_d

    .line 47
    :cond_c
    return-void

    .line 50
    :cond_d
    const-string/jumbo v0, "BigApertureRawPictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Raw onPictureTaken mCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/b/h;->bpw:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    iget v1, p0, Lcn/nubia/b/h;->bpw:I

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->WJ()V

    .line 52
    iget v0, p0, Lcn/nubia/b/h;->bpw:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-ne v0, v1, :cond_b8

    .line 55
    iget-object v0, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    if-eqz v0, :cond_70

    .line 56
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aeh()Z

    move-result v0

    .line 55
    if-eqz v0, :cond_70

    .line 57
    iget-object v0, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 58
    iget-object v0, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "pref_picture_artist_info"

    .line 60
    iget-object v2, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    const v3, 0x7f0a02da

    invoke-virtual {v2, v3}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 62
    :cond_70
    iget-object v0, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LC()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a0

    const/4 v0, 0x1

    .line 63
    :goto_7e
    if-eqz v0, :cond_a2

    .line 64
    iget-object v0, p0, Lcn/nubia/b/h;->bpu:Lcn/nubia/b/a;

    iget v1, p0, Lcn/nubia/b/h;->bpw:I

    const-string/jumbo v2, "cur-dac"

    invoke-direct {p0, v1, v2}, Lcn/nubia/b/h;->bLP(ILjava/lang/String;)I

    move-result v2

    .line 65
    invoke-direct {p0}, Lcn/nubia/b/h;->bLQ()I

    move-result v3

    .line 66
    invoke-direct {p0}, Lcn/nubia/b/h;->bLS()I

    move-result v4

    invoke-direct {p0}, Lcn/nubia/b/h;->bLT()I

    move-result v5

    invoke-direct {p0}, Lcn/nubia/b/h;->bLR()I

    move-result v6

    move-object v1, p1

    .line 64
    invoke-interface/range {v0 .. v7}, Lcn/nubia/b/a;->bKW([BIIIIILjava/lang/String;)V

    .line 44
    :cond_9f
    :goto_9f
    return-void

    .line 62
    :cond_a0
    const/4 v0, 0x0

    goto :goto_7e

    .line 68
    :cond_a2
    iget-object v0, p0, Lcn/nubia/b/h;->bpu:Lcn/nubia/b/a;

    iget v1, p0, Lcn/nubia/b/h;->bpw:I

    const-string/jumbo v2, "cur-dac"

    invoke-direct {p0, v1, v2}, Lcn/nubia/b/h;->bLP(ILjava/lang/String;)I

    move-result v2

    .line 69
    invoke-direct {p0}, Lcn/nubia/b/h;->bLQ()I

    move-result v3

    move-object v1, p1

    move v5, v4

    move v6, v4

    .line 68
    invoke-interface/range {v0 .. v7}, Lcn/nubia/b/a;->bKW([BIIIIILjava/lang/String;)V

    goto :goto_9f

    .line 72
    :cond_b8
    iget v0, p0, Lcn/nubia/b/h;->bpw:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v1

    if-ne v0, v1, :cond_9f

    .line 73
    iget-object v0, p0, Lcn/nubia/b/h;->bpv:Lcom/android/common/appService/W;

    iget v1, p0, Lcn/nubia/b/h;->bpw:I

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qm(I)Lcom/android/common/cameradevice/p;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "altek-back-sub-crop-size"

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->Lh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Lcn/nubia/bigAperture/a;->bIW(Ljava/lang/String;)Lcn/nubia/bigAperture/f;

    move-result-object v1

    .line 76
    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 77
    iget-object v2, p0, Lcn/nubia/b/h;->bpu:Lcn/nubia/b/a;

    iget v3, p0, Lcn/nubia/b/h;->bpw:I

    const-string/jumbo v4, "cur-dac-aux"

    invoke-direct {p0, v3, v4}, Lcn/nubia/b/h;->bLP(ILjava/lang/String;)I

    move-result v3

    invoke-interface {v2, p1, v3, v1, v0}, Lcn/nubia/b/a;->bKX([BILcn/nubia/bigAperture/f;Landroid/hardware/Camera$Size;)V

    goto :goto_9f
.end method

.class public Lcn/qcom/camera/QCOMCamcorderProfileEx;
.super Lcom/android/common/cameradevice/r;
.source "SourceFile"


# instance fields
.field private btq:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/common/cameradevice/r;-><init>()V

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/qcom/camera/QCOMCamcorderProfileEx;->btq:Landroid/util/SparseArray;

    .line 13
    return-void
.end method


# virtual methods
.method public Ob(ILcom/android/common/cameradevice/p;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7

    .prologue
    .line 34
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int v1, p1, v0

    .line 35
    iget-object v0, p0, Lcn/qcom/camera/QCOMCamcorderProfileEx;->btq:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 36
    if-nez v0, :cond_1e

    .line 38
    iget-object v0, p0, Lcn/qcom/camera/QCOMCamcorderProfileEx;->NP:[I

    const-string/jumbo v2, "h264"

    .line 37
    invoke-static {v0, p1, p2, p3, v2}, Lcn/qcom/camera/b;->bQk([IILcom/android/common/cameradevice/p;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 39
    iget-object v2, p0, Lcn/qcom/camera/QCOMCamcorderProfileEx;->btq:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    :cond_1e
    return-object v0
.end method

.method public Oc(II)Landroid/media/CamcorderProfile;
    .registers 4

    .prologue
    .line 46
    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0
.end method

.method protected Og()V
    .registers 7

    .prologue
    const/16 v5, 0x2710

    const/4 v4, 0x6

    const/4 v3, 0x5

    .line 18
    iget-object v0, p0, Lcn/qcom/camera/QCOMCamcorderProfileEx;->NO:[I

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NR:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    invoke-virtual {v1}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    .line 19
    iget-object v0, p0, Lcn/qcom/camera/QCOMCamcorderProfileEx;->NO:[I

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NT:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    invoke-virtual {v1}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->ordinal()I

    move-result v1

    aput v4, v0, v1

    .line 20
    iget-object v0, p0, Lcn/qcom/camera/QCOMCamcorderProfileEx;->NO:[I

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NS:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    invoke-virtual {v1}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->ordinal()I

    move-result v1

    aput v3, v0, v1

    .line 21
    iget-object v0, p0, Lcn/qcom/camera/QCOMCamcorderProfileEx;->NO:[I

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NU:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    invoke-virtual {v1}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->ordinal()I

    move-result v1

    aput v5, v0, v1

    .line 22
    iget-object v0, p0, Lcn/qcom/camera/QCOMCamcorderProfileEx;->NO:[I

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NV:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    invoke-virtual {v1}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 24
    iget-object v0, p0, Lcn/qcom/camera/QCOMCamcorderProfileEx;->NP:[I

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->NX:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;

    invoke-virtual {v1}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->ordinal()I

    move-result v1

    aput v4, v0, v1

    .line 25
    iget-object v0, p0, Lcn/qcom/camera/QCOMCamcorderProfileEx;->NP:[I

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->NY:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;

    invoke-virtual {v1}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->ordinal()I

    move-result v1

    aput v4, v0, v1

    .line 26
    iget-object v0, p0, Lcn/qcom/camera/QCOMCamcorderProfileEx;->NP:[I

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->NZ:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;

    invoke-virtual {v1}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->ordinal()I

    move-result v1

    aput v3, v0, v1

    .line 27
    iget-object v0, p0, Lcn/qcom/camera/QCOMCamcorderProfileEx;->NP:[I

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->Oa:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;

    invoke-virtual {v1}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->ordinal()I

    move-result v1

    aput v3, v0, v1

    .line 28
    iget-object v0, p0, Lcn/qcom/camera/QCOMCamcorderProfileEx;->NP:[I

    sget-object v1, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->Ob:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;

    invoke-virtual {v1}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->ordinal()I

    move-result v1

    aput v5, v0, v1

    .line 17
    return-void
.end method

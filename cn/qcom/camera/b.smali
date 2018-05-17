.class public Lcn/qcom/camera/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bQk([IILcom/android/common/cameradevice/p;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-interface {p2}, Lcom/android/common/cameradevice/p;->Ns()Ljava/util/List;

    move-result-object v0

    .line 21
    invoke-static {p3, v0}, Lcn/qcom/camera/b;->bQl(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 22
    return-object v2

    .line 24
    :cond_c
    invoke-interface {v0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 25
    invoke-interface {p2}, Lcom/android/common/cameradevice/p;->Nt()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 27
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    const/4 v1, 0x0

    array-length v4, p0

    :goto_25
    if-ge v1, v4, :cond_56

    aget v5, p0, v1

    .line 30
    invoke-static {p1, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v6

    if-nez v6, :cond_32

    .line 29
    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 33
    :cond_32
    invoke-static {p1, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v6

    .line 35
    iget v7, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    if-gt v7, v8, :cond_2f

    iget v7, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    if-gt v7, v8, :cond_2f

    .line 38
    iget v7, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    mul-int/2addr v6, v7

    mul-int/2addr v6, v2

    .line 39
    invoke-static {v6, p4}, Lcn/qcom/camera/b;->bQm(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 40
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 43
    :cond_56
    return-object v3
.end method

.method private static bQl(Ljava/lang/String;Ljava/util/List;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 47
    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static bQm(ILjava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 52
    sget-object v0, Lcom/android/common/cameradevice/r;->NN:Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 53
    invoke-static {}, Landroid/media/EncoderCapabilities;->getVideoEncoders()Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .line 55
    iget v4, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    if-ne v4, v2, :cond_15

    .line 56
    iget v2, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    .line 57
    iget v3, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    .line 56
    mul-int/2addr v2, v3

    .line 58
    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameRate:I

    .line 56
    mul-int/2addr v0, v2

    .line 59
    if-lez p0, :cond_33

    if-gt p0, v0, :cond_33

    .line 60
    const/4 v0, 0x1

    .line 65
    :goto_32
    return v0

    :cond_33
    move v0, v1

    .line 59
    goto :goto_32

    :cond_35
    move v0, v1

    goto :goto_32
.end method

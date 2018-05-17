.class public Lcn/qcom/camera/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$CameraMetaDataCallback;


# instance fields
.field private btn:Lcom/android/common/cameradevice/q;

.field private bto:Lcom/android/common/cameradevice/q;

.field private btp:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/qcom/camera/d;->btp:Ljava/util/ArrayList;

    .line 13
    iput-object v1, p0, Lcn/qcom/camera/d;->btn:Lcom/android/common/cameradevice/q;

    .line 14
    iput-object v1, p0, Lcn/qcom/camera/d;->bto:Lcom/android/common/cameradevice/q;

    .line 11
    return-void
.end method

.method private bQo([BI)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 45
    :goto_2
    const/4 v2, 0x4

    if-ge v0, v2, :cond_16

    .line 46
    rsub-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0x8

    .line 47
    rsub-int/lit8 v3, v0, 0x3

    add-int/2addr v3, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    add-int/2addr v1, v2

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 49
    :cond_16
    return v1
.end method


# virtual methods
.method public bQn(Lcom/android/common/cameradevice/q;)V
    .registers 2

    .prologue
    .line 17
    iput-object p1, p0, Lcn/qcom/camera/d;->btn:Lcom/android/common/cameradevice/q;

    .line 16
    return-void
.end method

.method public onCameraMetaData([BLandroid/hardware/Camera;)V
    .registers 7

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 22
    iget-object v1, p0, Lcn/qcom/camera/d;->btn:Lcom/android/common/cameradevice/q;

    iput-object v1, p0, Lcn/qcom/camera/d;->bto:Lcom/android/common/cameradevice/q;

    .line 23
    iget-object v1, p0, Lcn/qcom/camera/d;->bto:Lcom/android/common/cameradevice/q;

    if-eqz v1, :cond_4f

    .line 24
    array-length v1, p1

    if-lt v1, v2, :cond_4f

    .line 25
    invoke-direct {p0, p1, v0}, Lcn/qcom/camera/d;->bQo([BI)I

    move-result v1

    .line 27
    iget-object v2, p0, Lcn/qcom/camera/d;->btp:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lcn/qcom/camera/d;->bQo([BI)I

    move-result v1

    .line 29
    iget-object v2, p0, Lcn/qcom/camera/d;->btp:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    div-int/lit8 v1, v1, 0x4

    .line 31
    if-eqz v1, :cond_43

    .line 32
    :goto_2d
    if-ge v0, v1, :cond_43

    .line 33
    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x8

    invoke-direct {p0, p1, v2}, Lcn/qcom/camera/d;->bQo([BI)I

    move-result v2

    .line 34
    iget-object v3, p0, Lcn/qcom/camera/d;->btp:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 37
    :cond_43
    iget-object v0, p0, Lcn/qcom/camera/d;->bto:Lcom/android/common/cameradevice/q;

    iget-object v1, p0, Lcn/qcom/camera/d;->btp:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/q;->tK(Ljava/util/ArrayList;)V

    .line 38
    iget-object v0, p0, Lcn/qcom/camera/d;->btp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 21
    :cond_4f
    return-void
.end method

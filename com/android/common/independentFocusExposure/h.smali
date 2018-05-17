.class public Lcom/android/common/independentFocusExposure/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected dV:Lcom/android/common/appService/W;

.field protected dW:I

.field protected dX:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/android/common/independentFocusExposure/h;->dW:I

    .line 9
    iput v0, p0, Lcom/android/common/independentFocusExposure/h;->dX:I

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/h;->dV:Lcom/android/common/appService/W;

    .line 7
    return-void
.end method


# virtual methods
.method protected dV()Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    .line 15
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/h;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 16
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/h;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 17
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v1

    div-double/2addr v2, v6

    .line 19
    :goto_1c
    cmpl-double v1, v2, v4

    if-eqz v1, :cond_33

    .line 20
    const-wide v4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v1, v2, v4

    if-gez v1, :cond_34

    .line 22
    :cond_33
    :goto_33
    return v0

    .line 20
    :cond_34
    const/4 v0, 0x0

    goto :goto_33

    :cond_36
    move-wide v2, v4

    goto :goto_1c
.end method

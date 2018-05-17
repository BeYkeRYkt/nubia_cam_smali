.class public Lcom/android/multiexposure/a;
.super Lcom/android/multiexposure/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/multiexposure/c;-><init>(Lcom/android/common/appService/W;)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/multiexposure/a;->aqb:I

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/multiexposure/a;->aqc:I

    .line 14
    return-void
.end method


# virtual methods
.method public aBT()V
    .registers 3

    .prologue
    .line 26
    iget v0, p0, Lcom/android/multiexposure/a;->aqb:I

    if-nez v0, :cond_f

    .line 27
    iget-object v0, p0, Lcom/android/multiexposure/a;->aqd:Lcom/android/multiexposure/MultiExposure;

    invoke-virtual {v0}, Lcom/android/multiexposure/MultiExposure;->release()V

    .line 28
    iget-object v0, p0, Lcom/android/multiexposure/a;->aqd:Lcom/android/multiexposure/MultiExposure;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/MultiExposure;->setType(I)V

    .line 25
    :cond_f
    return-void
.end method

.method aBU([B)V
    .registers 3

    .prologue
    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/multiexposure/a;->aqb:I

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/multiexposure/a;->aqc:I

    .line 70
    invoke-super {p0, p1}, Lcom/android/multiexposure/c;->aBU([B)V

    .line 67
    return-void
.end method

.method public aBV([B)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 49
    iget v0, p0, Lcom/android/multiexposure/a;->aqb:I

    if-nez v0, :cond_28

    .line 50
    iget v0, p0, Lcom/android/multiexposure/a;->aqb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/multiexposure/a;->aqb:I

    .line 51
    iget v0, p0, Lcom/android/multiexposure/a;->aqc:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/multiexposure/a;->aqc:I

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/multiexposure/a;->aBW([B)V

    .line 53
    new-instance v0, Lcom/android/multiexposure/e;

    invoke-direct {v0, p0, v3}, Lcom/android/multiexposure/e;-><init>(Lcom/android/multiexposure/c;I)V

    iput-object v0, p0, Lcom/android/multiexposure/a;->aqg:Ljava/lang/Thread;

    .line 54
    iget-object v0, p0, Lcom/android/multiexposure/a;->aqh:Lcom/android/multiexposure/m;

    iget-object v1, p0, Lcom/android/multiexposure/a;->aqf:Landroid/graphics/Bitmap;

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1, v3}, Lcom/android/multiexposure/m;->aCu(ILandroid/graphics/Bitmap;I)V

    .line 55
    iget v0, p0, Lcom/android/multiexposure/a;->aqj:I

    iput v0, p0, Lcom/android/multiexposure/a;->aqi:I

    .line 48
    :goto_27
    return-void

    .line 57
    :cond_28
    invoke-virtual {p0}, Lcom/android/multiexposure/a;->aBX()V

    .line 58
    iget v0, p0, Lcom/android/multiexposure/a;->aqi:I

    iget v1, p0, Lcom/android/multiexposure/a;->aqj:I

    sub-int/2addr v0, v1

    .line 59
    iget v1, p0, Lcom/android/multiexposure/a;->aqk:I

    invoke-static {p1}, Lcom/android/common/c;->aob([B)I

    move-result v2

    sub-int/2addr v1, v2

    .line 58
    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 60
    new-instance v1, Lcom/android/multiexposure/f;

    invoke-direct {v1, p0}, Lcom/android/multiexposure/f;-><init>(Lcom/android/multiexposure/c;)V

    .line 61
    invoke-virtual {v1, p1, v0}, Lcom/android/multiexposure/f;->aCo([BI)V

    .line 62
    iput-object v1, p0, Lcom/android/multiexposure/a;->aql:Ljava/lang/Thread;

    goto :goto_27
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 6

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/android/multiexposure/c;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 36
    iget-object v0, p0, Lcom/android/multiexposure/a;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/multiexposure/a;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_14

    .line 37
    :cond_13
    return-void

    .line 39
    :cond_14
    iget-object v0, p0, Lcom/android/multiexposure/a;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/common/h;->aoQ(II)I

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/android/multiexposure/a;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 41
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {p1, v2, v1, v0}, Lcom/android/common/D;->avZ([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/multiexposure/a;->aqf:Landroid/graphics/Bitmap;

    .line 42
    const-string/jumbo v0, "BaseMultiExposure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MultiExposure  onPreviewFrame length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/android/multiexposure/a;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/appService/k;->jF(Landroid/hardware/Camera$PreviewCallback;)V

    .line 44
    iget-object v0, p0, Lcom/android/multiexposure/a;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->px()V

    .line 34
    return-void
.end method

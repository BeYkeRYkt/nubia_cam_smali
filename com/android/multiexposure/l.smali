.class public Lcom/android/multiexposure/l;
.super Lcom/android/multiexposure/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/multiexposure/c;-><init>(Lcom/android/common/appService/W;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/multiexposure/l;->aqb:I

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/multiexposure/l;->aqc:I

    .line 15
    return-void
.end method


# virtual methods
.method public aBT()V
    .registers 3

    .prologue
    .line 24
    iget v0, p0, Lcom/android/multiexposure/l;->aqb:I

    if-nez v0, :cond_f

    .line 26
    iget-object v0, p0, Lcom/android/multiexposure/l;->aqd:Lcom/android/multiexposure/MultiExposure;

    invoke-virtual {v0}, Lcom/android/multiexposure/MultiExposure;->release()V

    .line 27
    iget-object v0, p0, Lcom/android/multiexposure/l;->aqd:Lcom/android/multiexposure/MultiExposure;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/MultiExposure;->setType(I)V

    .line 23
    :cond_f
    return-void
.end method

.method aBU([B)V
    .registers 3

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/multiexposure/l;->aqb:I

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/multiexposure/l;->aqc:I

    .line 81
    invoke-super {p0, p1}, Lcom/android/multiexposure/c;->aBU([B)V

    .line 78
    return-void
.end method

.method public aBV([B)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    const-string/jumbo v0, "jyzhou"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processOrigionJpegData mNumTaken ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/multiexposure/l;->aqb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget v0, p0, Lcom/android/multiexposure/l;->aqb:I

    if-nez v0, :cond_60

    .line 59
    iget v0, p0, Lcom/android/multiexposure/l;->aqb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/multiexposure/l;->aqb:I

    .line 60
    iget v0, p0, Lcom/android/multiexposure/l;->aqc:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/multiexposure/l;->aqc:I

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/multiexposure/l;->aBW([B)V

    .line 62
    new-instance v0, Lcom/android/multiexposure/e;

    invoke-direct {v0, p0, v3}, Lcom/android/multiexposure/e;-><init>(Lcom/android/multiexposure/c;I)V

    iput-object v0, p0, Lcom/android/multiexposure/l;->aqg:Ljava/lang/Thread;

    .line 63
    iget-object v0, p0, Lcom/android/multiexposure/l;->aqh:Lcom/android/multiexposure/m;

    iget-object v1, p0, Lcom/android/multiexposure/l;->aqf:Landroid/graphics/Bitmap;

    invoke-interface {v0, v4, v1, v3}, Lcom/android/multiexposure/m;->aCu(ILandroid/graphics/Bitmap;I)V

    .line 64
    iget v0, p0, Lcom/android/multiexposure/l;->aqj:I

    iput v0, p0, Lcom/android/multiexposure/l;->aqi:I

    .line 65
    const-string/jumbo v0, "jyzhou"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processOrigionJpegData mFirstTimeRotation ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/multiexposure/l;->aqi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_5f
    :goto_5f
    return-void

    .line 66
    :cond_60
    iget v0, p0, Lcom/android/multiexposure/l;->aqb:I

    if-ne v0, v4, :cond_5f

    .line 67
    invoke-virtual {p0}, Lcom/android/multiexposure/l;->aBX()V

    .line 68
    iget v0, p0, Lcom/android/multiexposure/l;->aqi:I

    iget v1, p0, Lcom/android/multiexposure/l;->aqj:I

    sub-int/2addr v0, v1

    .line 69
    iget v1, p0, Lcom/android/multiexposure/l;->aqk:I

    invoke-static {p1}, Lcom/android/common/c;->aob([B)I

    move-result v2

    sub-int/2addr v1, v2

    .line 68
    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 70
    const-string/jumbo v1, "jyzhou"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processOrigionJpegData rotation,mCurrentRotation ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/multiexposure/l;->aqj:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Lcom/android/multiexposure/f;

    invoke-direct {v1, p0}, Lcom/android/multiexposure/f;-><init>(Lcom/android/multiexposure/c;)V

    .line 72
    invoke-virtual {v1, p1, v0}, Lcom/android/multiexposure/f;->aCo([BI)V

    .line 73
    iput-object v1, p0, Lcom/android/multiexposure/l;->aql:Ljava/lang/Thread;

    goto :goto_5f
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/android/multiexposure/c;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 37
    iget-object v0, p0, Lcom/android/multiexposure/l;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 38
    :cond_d
    iget-object v0, p0, Lcom/android/multiexposure/l;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/multiexposure/l;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 39
    :cond_1d
    return-void

    .line 41
    :cond_1e
    if-eqz p1, :cond_23

    array-length v0, p1

    if-gtz v0, :cond_24

    .line 42
    :cond_23
    return-void

    .line 44
    :cond_24
    const-string/jumbo v0, "jyzhou"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreviewFrame mNumTaken ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/multiexposure/l;->aqb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget v0, p0, Lcom/android/multiexposure/l;->aqb:I

    if-nez v0, :cond_62

    .line 46
    iget-object v0, p0, Lcom/android/multiexposure/l;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {v3, v0}, Lcom/android/common/h;->aoQ(II)I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/android/multiexposure/l;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 48
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {p1, v2, v1, v0}, Lcom/android/common/D;->avZ([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/multiexposure/l;->aqf:Landroid/graphics/Bitmap;

    .line 51
    :cond_62
    iget-object v0, p0, Lcom/android/multiexposure/l;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/appService/k;->jF(Landroid/hardware/Camera$PreviewCallback;)V

    .line 52
    iget-object v0, p0, Lcom/android/multiexposure/l;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->px()V

    .line 35
    return-void
.end method

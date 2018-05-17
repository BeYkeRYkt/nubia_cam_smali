.class public Lcom/android/multiexposure/k;
.super Lcom/android/multiexposure/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/multiexposure/c;-><init>(Lcom/android/common/appService/W;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/multiexposure/k;->aqb:I

    .line 13
    return-void
.end method


# virtual methods
.method public aBT()V
    .registers 3

    .prologue
    .line 20
    iget v0, p0, Lcom/android/multiexposure/k;->aqb:I

    if-nez v0, :cond_f

    .line 21
    iget-object v0, p0, Lcom/android/multiexposure/k;->aqd:Lcom/android/multiexposure/MultiExposure;

    invoke-virtual {v0}, Lcom/android/multiexposure/MultiExposure;->release()V

    .line 22
    iget-object v0, p0, Lcom/android/multiexposure/k;->aqd:Lcom/android/multiexposure/MultiExposure;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/MultiExposure;->setType(I)V

    .line 19
    :cond_f
    return-void
.end method

.method protected aBU([B)V
    .registers 4

    .prologue
    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/multiexposure/k;->aqb:I

    .line 76
    iget-object v0, p0, Lcom/android/multiexposure/k;->aqd:Lcom/android/multiexposure/MultiExposure;

    invoke-virtual {v0}, Lcom/android/multiexposure/MultiExposure;->release()V

    .line 77
    iget-object v0, p0, Lcom/android/multiexposure/k;->aqd:Lcom/android/multiexposure/MultiExposure;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/MultiExposure;->setType(I)V

    .line 78
    invoke-super {p0, p1}, Lcom/android/multiexposure/c;->aBU([B)V

    .line 74
    return-void
.end method

.method public aBV([B)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 84
    iget v0, p0, Lcom/android/multiexposure/k;->aqb:I

    if-nez v0, :cond_3e

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/multiexposure/k;->aBW([B)V

    .line 86
    new-instance v0, Lcom/android/multiexposure/e;

    invoke-direct {v0, p0, v3}, Lcom/android/multiexposure/e;-><init>(Lcom/android/multiexposure/c;I)V

    iput-object v0, p0, Lcom/android/multiexposure/k;->aqg:Ljava/lang/Thread;

    .line 87
    iget v0, p0, Lcom/android/multiexposure/k;->aqj:I

    iput v0, p0, Lcom/android/multiexposure/k;->aqi:I

    .line 97
    :goto_13
    iget v0, p0, Lcom/android/multiexposure/k;->aqb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/multiexposure/k;->aqb:I

    .line 98
    const-string/jumbo v0, "BaseMultiExposure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processOrigionJpegData numTaken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/multiexposure/k;->aqb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/multiexposure/k;->aqh:Lcom/android/multiexposure/m;

    iget-object v1, p0, Lcom/android/multiexposure/k;->aqf:Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1, v3}, Lcom/android/multiexposure/m;->aCu(ILandroid/graphics/Bitmap;I)V

    .line 83
    return-void

    .line 89
    :cond_3e
    invoke-virtual {p0}, Lcom/android/multiexposure/k;->aBX()V

    .line 90
    iget v0, p0, Lcom/android/multiexposure/k;->aqi:I

    iget v1, p0, Lcom/android/multiexposure/k;->aqj:I

    sub-int/2addr v0, v1

    .line 91
    iget v1, p0, Lcom/android/multiexposure/k;->aqk:I

    invoke-static {p1}, Lcom/android/common/c;->aob([B)I

    move-result v2

    sub-int/2addr v1, v2

    .line 90
    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/multiexposure/k;->aBW([B)V

    .line 93
    new-instance v1, Lcom/android/multiexposure/e;

    invoke-direct {v1, p0, v0}, Lcom/android/multiexposure/e;-><init>(Lcom/android/multiexposure/c;I)V

    iput-object v1, p0, Lcom/android/multiexposure/k;->aqg:Ljava/lang/Thread;

    goto :goto_13
.end method

.method public aCl()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 63
    iget v0, p0, Lcom/android/multiexposure/k;->aqb:I

    if-nez v0, :cond_6

    .line 64
    return-void

    .line 66
    :cond_6
    invoke-virtual {p0}, Lcom/android/multiexposure/k;->aBX()V

    .line 67
    new-instance v0, Lcom/android/multiexposure/f;

    invoke-direct {v0, p0}, Lcom/android/multiexposure/f;-><init>(Lcom/android/multiexposure/c;)V

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/multiexposure/f;->aCo([BI)V

    .line 69
    iput-object v0, p0, Lcom/android/multiexposure/k;->aql:Ljava/lang/Thread;

    .line 62
    return-void
.end method

.method public aCt([B)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 49
    iget v1, p0, Lcom/android/multiexposure/k;->aqb:I

    if-nez v1, :cond_8

    .line 50
    iput-object p1, p0, Lcom/android/multiexposure/k;->aqm:[B

    .line 48
    :cond_7
    return-void

    .line 52
    :cond_8
    array-length v1, p1

    .line 53
    invoke-virtual {p0}, Lcom/android/multiexposure/k;->aCc()I

    move-result v2

    .line 54
    :goto_d
    if-ge v0, v1, :cond_7

    .line 55
    iget-object v3, p0, Lcom/android/multiexposure/k;->aqm:[B

    iget-object v4, p0, Lcom/android/multiexposure/k;->aqm:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    .line 56
    rsub-int/lit8 v5, v2, 0x64

    .line 55
    mul-int/2addr v4, v5

    .line 56
    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    mul-int/2addr v5, v2

    .line 55
    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x64

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 7

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/android/multiexposure/c;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/multiexposure/k;->aCe()V

    .line 35
    iget-object v0, p0, Lcom/android/multiexposure/k;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 36
    iget-object v0, p0, Lcom/android/multiexposure/k;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_17

    .line 37
    :cond_16
    return-void

    .line 39
    :cond_17
    iget-object v0, p0, Lcom/android/multiexposure/k;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/multiexposure/k;->aCt([B)V

    .line 41
    iget-object v1, p0, Lcom/android/multiexposure/k;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/android/common/h;->aoQ(II)I

    move-result v1

    .line 42
    iget-object v2, p0, Lcom/android/multiexposure/k;->aqm:[B

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    .line 43
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 42
    invoke-static {v2, v3, v0, v1}, Lcom/android/common/D;->avZ([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/multiexposure/k;->aqf:Landroid/graphics/Bitmap;

    .line 44
    iget-object v0, p0, Lcom/android/multiexposure/k;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/appService/k;->jF(Landroid/hardware/Camera$PreviewCallback;)V

    .line 45
    iget-object v0, p0, Lcom/android/multiexposure/k;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->px()V

    .line 32
    return-void
.end method

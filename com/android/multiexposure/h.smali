.class public Lcom/android/multiexposure/h;
.super Lcom/android/multiexposure/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/multiexposure/c;-><init>(Lcom/android/common/appService/W;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/multiexposure/h;->aqb:I

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/multiexposure/h;->aqc:I

    .line 16
    return-void
.end method


# virtual methods
.method public aBT()V
    .registers 5

    .prologue
    .line 45
    iget v0, p0, Lcom/android/multiexposure/h;->aqb:I

    if-nez v0, :cond_52

    .line 46
    iget-object v0, p0, Lcom/android/multiexposure/h;->aqd:Lcom/android/multiexposure/MultiExposure;

    invoke-virtual {v0}, Lcom/android/multiexposure/MultiExposure;->release()V

    .line 47
    const-string/jumbo v0, "BaseMultiExposure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initBuffer mCurrentRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/multiexposure/h;->aqj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    const-string/jumbo v2, " mFirstPictureJpegOrientation = "

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    iget v2, p0, Lcom/android/multiexposure/h;->aqk:I

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    const-string/jumbo v2, ",case value:"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    iget v2, p0, Lcom/android/multiexposure/h;->aqj:I

    iget v3, p0, Lcom/android/multiexposure/h;->aqk:I

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget v0, p0, Lcom/android/multiexposure/h;->aqj:I

    iget v1, p0, Lcom/android/multiexposure/h;->aqk:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    sparse-switch v0, :sswitch_data_72

    .line 44
    :cond_52
    :goto_52
    return-void

    .line 52
    :sswitch_53
    iget-object v0, p0, Lcom/android/multiexposure/h;->aqd:Lcom/android/multiexposure/MultiExposure;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/MultiExposure;->setType(I)V

    goto :goto_52

    .line 55
    :sswitch_5b
    iget-object v0, p0, Lcom/android/multiexposure/h;->aqd:Lcom/android/multiexposure/MultiExposure;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/MultiExposure;->setType(I)V

    goto :goto_52

    .line 58
    :sswitch_62
    iget-object v0, p0, Lcom/android/multiexposure/h;->aqd:Lcom/android/multiexposure/MultiExposure;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/MultiExposure;->setType(I)V

    goto :goto_52

    .line 61
    :sswitch_69
    iget-object v0, p0, Lcom/android/multiexposure/h;->aqd:Lcom/android/multiexposure/MultiExposure;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/MultiExposure;->setType(I)V

    goto :goto_52

    .line 50
    nop

    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_53
        0x5a -> :sswitch_5b
        0xb4 -> :sswitch_69
        0x10e -> :sswitch_62
    .end sparse-switch
.end method

.method aBU([B)V
    .registers 3

    .prologue
    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/multiexposure/h;->aqb:I

    .line 114
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/multiexposure/h;->aqc:I

    .line 115
    invoke-super {p0, p1}, Lcom/android/multiexposure/c;->aBU([B)V

    .line 112
    return-void
.end method

.method public aBV([B)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 89
    iget v0, p0, Lcom/android/multiexposure/h;->aqb:I

    if-nez v0, :cond_4a

    .line 92
    invoke-virtual {p0}, Lcom/android/multiexposure/h;->aBT()V

    .line 93
    iget v0, p0, Lcom/android/multiexposure/h;->aqb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/multiexposure/h;->aqb:I

    .line 94
    iget v0, p0, Lcom/android/multiexposure/h;->aqc:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/multiexposure/h;->aqc:I

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/multiexposure/h;->aBW([B)V

    .line 96
    new-instance v0, Lcom/android/multiexposure/e;

    invoke-direct {v0, p0, v3}, Lcom/android/multiexposure/e;-><init>(Lcom/android/multiexposure/c;I)V

    iput-object v0, p0, Lcom/android/multiexposure/h;->aqg:Ljava/lang/Thread;

    .line 97
    iget-object v0, p0, Lcom/android/multiexposure/h;->aqh:Lcom/android/multiexposure/m;

    invoke-virtual {p0}, Lcom/android/multiexposure/h;->aCp()I

    move-result v1

    iget-object v2, p0, Lcom/android/multiexposure/h;->aqf:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/multiexposure/m;->aCu(ILandroid/graphics/Bitmap;I)V

    .line 98
    iget v0, p0, Lcom/android/multiexposure/h;->aqj:I

    iput v0, p0, Lcom/android/multiexposure/h;->aqi:I

    .line 99
    const-string/jumbo v0, "jyzhou"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processOrigionJpegData mFirstTimeRotation ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/multiexposure/h;->aqi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_49
    return-void

    .line 101
    :cond_4a
    invoke-virtual {p0}, Lcom/android/multiexposure/h;->aBX()V

    .line 102
    iget v0, p0, Lcom/android/multiexposure/h;->aqi:I

    iget v1, p0, Lcom/android/multiexposure/h;->aqj:I

    sub-int/2addr v0, v1

    .line 103
    iget v1, p0, Lcom/android/multiexposure/h;->aqk:I

    invoke-static {p1}, Lcom/android/common/c;->aob([B)I

    move-result v2

    sub-int/2addr v1, v2

    .line 102
    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 104
    new-instance v1, Lcom/android/multiexposure/f;

    invoke-direct {v1, p0}, Lcom/android/multiexposure/f;-><init>(Lcom/android/multiexposure/c;)V

    .line 105
    invoke-virtual {v1, p1, v0}, Lcom/android/multiexposure/f;->aCo([BI)V

    .line 106
    iput-object v1, p0, Lcom/android/multiexposure/h;->aql:Ljava/lang/Thread;

    .line 107
    const-string/jumbo v1, "jyzhou"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processOrigionJpegData rotation,mCurrentRotation ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/multiexposure/h;->aqj:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49
.end method

.method public aCp()I
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 25
    iget v0, p0, Lcom/android/multiexposure/h;->aqb:I

    if-nez v0, :cond_c

    .line 26
    iget v0, p0, Lcom/android/multiexposure/h;->aqi:I

    .line 31
    :goto_8
    sparse-switch v0, :sswitch_data_18

    .line 41
    return v1

    .line 28
    :cond_c
    iget v0, p0, Lcom/android/multiexposure/h;->aqj:I

    goto :goto_8

    .line 33
    :sswitch_f
    return v1

    .line 35
    :sswitch_10
    const/4 v0, 0x7

    return v0

    .line 37
    :sswitch_12
    const/4 v0, 0x6

    return v0

    .line 39
    :sswitch_14
    const/16 v0, 0x9

    return v0

    .line 31
    nop

    :sswitch_data_18
    .sparse-switch
        0x0 -> :sswitch_f
        0x5a -> :sswitch_10
        0xb4 -> :sswitch_14
        0x10e -> :sswitch_12
    .end sparse-switch
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/android/multiexposure/c;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 71
    iget-object v0, p0, Lcom/android/multiexposure/h;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/multiexposure/h;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_15

    .line 72
    :cond_14
    return-void

    .line 74
    :cond_15
    iget-object v0, p0, Lcom/android/multiexposure/h;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {v4, v0}, Lcom/android/common/h;->aoQ(II)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/android/multiexposure/h;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 76
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {p1, v2, v3, v0}, Lcom/android/common/D;->avZ([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    .line 78
    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    div-int/lit8 v1, v1, 0x2

    .line 77
    invoke-static {v0, v4, v4, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/multiexposure/h;->aqf:Landroid/graphics/Bitmap;

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    const-string/jumbo v0, "BaseMultiExposure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MultiExposure  onPreviewFrame length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    array-length v2, p1

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/multiexposure/h;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/appService/k;->jF(Landroid/hardware/Camera$PreviewCallback;)V

    .line 83
    iget-object v0, p0, Lcom/android/multiexposure/h;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->px()V

    .line 68
    return-void
.end method

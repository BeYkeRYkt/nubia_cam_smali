.class Lcom/android/pretty/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private aCC:Z

.field private aCD:[[B

.field final synthetic aCE:Lcom/android/pretty/a;


# direct methods
.method public constructor <init>(Lcom/android/pretty/a;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xa

    const/4 v0, 0x0

    .line 713
    iput-object p1, p0, Lcom/android/pretty/e;->aCE:Lcom/android/pretty/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 710
    iput-object v3, p0, Lcom/android/pretty/e;->aCD:[[B

    .line 711
    iput-boolean v0, p0, Lcom/android/pretty/e;->aCC:Z

    .line 714
    new-array v1, v2, [[B

    iput-object v1, p0, Lcom/android/pretty/e;->aCD:[[B

    .line 715
    :goto_11
    if-ge v0, v2, :cond_1a

    .line 716
    iget-object v1, p0, Lcom/android/pretty/e;->aCD:[[B

    aput-object v3, v1, v0

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 713
    :cond_1a
    return-void
.end method

.method private aRV([BI)V
    .registers 10

    .prologue
    const/16 v0, 0x10e

    const/16 v1, 0x5a

    .line 780
    iget-object v2, p0, Lcom/android/pretty/e;->aCE:Lcom/android/pretty/a;

    invoke-static {v2}, Lcom/android/pretty/a;->aRx(Lcom/android/pretty/a;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 781
    iget-object v3, p0, Lcom/android/pretty/e;->aCE:Lcom/android/pretty/a;

    invoke-static {v3}, Lcom/android/pretty/a;->aRF(Lcom/android/pretty/a;)Ljava/lang/String;

    move-result-object v3

    .line 784
    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 796
    :goto_21
    iget-object v3, p0, Lcom/android/pretty/e;->aCE:Lcom/android/pretty/a;

    invoke-static {v3}, Lcom/android/pretty/a;->aRx(Lcom/android/pretty/a;)Lcom/android/common/appService/W;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pC()I

    move-result v3

    .line 798
    const/16 v4, 0xa

    if-ge p2, v4, :cond_a1

    .line 799
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {p1, v4, v2}, Lcom/android/common/appService/j;->jx([BII)[B

    move-result-object v2

    .line 800
    iget-object v4, p0, Lcom/android/pretty/e;->aCE:Lcom/android/pretty/a;

    invoke-static {v4}, Lcom/android/pretty/a;->aRy(Lcom/android/pretty/a;)[Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v2, v5}, Lcom/android/common/appService/j;->jy([BI)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, p2

    .line 801
    iget-object v4, p0, Lcom/android/pretty/e;->aCE:Lcom/android/pretty/a;

    invoke-static {v4}, Lcom/android/pretty/a;->aRA(Lcom/android/pretty/a;)[Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v2, v5}, Lcom/android/common/appService/j;->jy([BI)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v4, p2

    .line 802
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/android/pretty/e;->aCE:Lcom/android/pretty/a;

    invoke-static {v4}, Lcom/android/pretty/a;->aRx(Lcom/android/pretty/a;)Lcom/android/common/appService/W;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/appService/W;->pv()I

    move-result v4

    aget-object v2, v2, v4

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d4

    .line 803
    if-eqz v3, :cond_71

    const/16 v2, 0xb4

    if-ne v2, v3, :cond_cc

    .line 814
    :cond_71
    :goto_71
    iget-object v1, p0, Lcom/android/pretty/e;->aCE:Lcom/android/pretty/a;

    invoke-static {v1}, Lcom/android/pretty/a;->aRy(Lcom/android/pretty/a;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/pretty/e;->aCE:Lcom/android/pretty/a;

    invoke-static {v2}, Lcom/android/pretty/a;->aRy(Lcom/android/pretty/a;)[Landroid/graphics/Bitmap;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-direct {p0}, Lcom/android/pretty/e;->aRW()Z

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/common/appService/j;->jz(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, p2

    .line 815
    iget-object v1, p0, Lcom/android/pretty/e;->aCE:Lcom/android/pretty/a;

    invoke-static {v1}, Lcom/android/pretty/a;->aRA(Lcom/android/pretty/a;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/pretty/e;->aCE:Lcom/android/pretty/a;

    invoke-static {v2}, Lcom/android/pretty/a;->aRA(Lcom/android/pretty/a;)[Landroid/graphics/Bitmap;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-direct {p0}, Lcom/android/pretty/e;->aRW()Z

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/common/appService/j;->jz(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, p2

    .line 779
    :cond_a1
    return-void

    .line 787
    :cond_a2
    const-string/jumbo v4, "BestPhotoService"

    const-string/jumbo v5, "need sending raw data to EffectAlgorithm"

    invoke-static {v4, v5}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    new-instance v4, Lcom/nubia/camera/common/Native/BufferCell;

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(I)V

    .line 789
    invoke-virtual {v4, p1}, Lcom/nubia/camera/common/Native/BufferCell;->btY([B)V

    .line 790
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5, v6, v3}, Lcom/nubia/camera/common/Native/EffectAlgorithm;->buc(Lcom/nubia/camera/common/Native/BufferCell;IILjava/lang/String;)V

    .line 791
    invoke-virtual {v4}, Lcom/nubia/camera/common/Native/BufferCell;->btX()[B

    move-result-object p1

    .line 792
    invoke-virtual {v4}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    goto/16 :goto_21

    .line 806
    :cond_cc
    invoke-direct {p0}, Lcom/android/pretty/e;->aRW()Z

    move-result v2

    if-nez v2, :cond_71

    move v0, v1

    .line 809
    goto :goto_71

    :cond_d4
    move v0, v1

    .line 812
    goto :goto_71
.end method

.method private aRW()Z
    .registers 5

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/pretty/e;->aCE:Lcom/android/pretty/a;

    invoke-static {v0}, Lcom/android/pretty/a;->aRE(Lcom/android/pretty/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 821
    const-string/jumbo v1, "pref_snapshot_mirror_key"

    .line 822
    iget-object v2, p0, Lcom/android/pretty/e;->aCE:Lcom/android/pretty/a;

    const v3, 0x7f0a0384

    invoke-static {v2, v3}, Lcom/android/pretty/a;->aRG(Lcom/android/pretty/a;I)Ljava/lang/String;

    move-result-object v2

    .line 820
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 822
    const-string/jumbo v1, "on"

    .line 820
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public aRX()V
    .registers 2

    .prologue
    .line 728
    monitor-enter p0

    .line 729
    :try_start_1
    invoke-virtual {p0}, Lcom/android/pretty/e;->notify()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 727
    return-void

    .line 728
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/pretty/e;->aCC:Z

    .line 722
    monitor-enter p0

    .line 723
    :try_start_4
    invoke-virtual {p0}, Lcom/android/pretty/e;->notify()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 720
    return-void

    .line 722
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public putData(I[B)V
    .registers 4

    .prologue
    .line 734
    if-ltz p1, :cond_a

    const/16 v0, 0xa

    if-ge p1, v0, :cond_a

    .line 735
    iget-object v0, p0, Lcom/android/pretty/e;->aCD:[[B

    aput-object p2, v0, p1

    .line 737
    :cond_a
    monitor-enter p0

    .line 738
    :try_start_b
    invoke-virtual {p0}, Lcom/android/pretty/e;->notify()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    monitor-exit p0

    .line 733
    return-void

    .line 737
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 744
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    move v5, v4

    move v3, v4

    .line 746
    :goto_8
    const/16 v0, 0xa

    if-ge v5, v0, :cond_10

    iget-boolean v0, p0, Lcom/android/pretty/e;->aCC:Z

    if-eqz v0, :cond_1d

    .line 772
    :cond_10
    if-eqz v3, :cond_8a

    .line 773
    iget-object v0, p0, Lcom/android/pretty/e;->aCE:Lcom/android/pretty/a;

    invoke-static {v0}, Lcom/android/pretty/a;->aRz(Lcom/android/pretty/a;)Lcom/android/pretty/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/pretty/b;->sendEmptyMessage(I)Z

    .line 743
    :goto_1c
    return-void

    :cond_1d
    move v2, v4

    .line 748
    :goto_1e
    if-nez v2, :cond_24

    iget-boolean v0, p0, Lcom/android/pretty/e;->aCC:Z

    if-eqz v0, :cond_28

    .line 746
    :cond_24
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_8

    .line 749
    :cond_28
    iget-object v0, p0, Lcom/android/pretty/e;->aCD:[[B

    aget-object v0, v0, v5

    if-eqz v0, :cond_5c

    .line 750
    const-string/jumbo v0, "BestPhotoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rawDataThread process "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/android/pretty/e;->aCD:[[B

    aget-object v0, v0, v5

    invoke-direct {p0, v0, v5}, Lcom/android/pretty/e;->aRV([BI)V

    .line 752
    iget-object v0, p0, Lcom/android/pretty/e;->aCD:[[B

    aput-object v8, v0, v5

    .line 754
    const/16 v0, 0x9

    if-ne v5, v0, :cond_94

    move v0, v1

    move v2, v1

    :goto_59
    move v3, v2

    move v2, v0

    goto :goto_1e

    .line 758
    :cond_5c
    iget-boolean v0, p0, Lcom/android/pretty/e;->aCC:Z

    if-nez v0, :cond_24

    .line 761
    monitor-enter p0

    .line 763
    :try_start_61
    const-string/jumbo v0, "BestPhotoService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rawDataThread wait "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Lcom/android/pretty/e;->wait()V
    :try_end_7e
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_7e} :catch_82
    .catchall {:try_start_61 .. :try_end_7e} :catchall_87

    :goto_7e
    monitor-exit p0

    move v0, v2

    move v2, v3

    goto :goto_59

    .line 765
    :catch_82
    move-exception v0

    .line 766
    :try_start_83
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_7e

    .line 761
    :catchall_87
    move-exception v0

    monitor-exit p0

    throw v0

    .line 775
    :cond_8a
    const-string/jumbo v0, "BestPhotoService"

    const-string/jumbo v1, "cancel rawthread"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_94
    move v0, v1

    move v2, v3

    goto :goto_59
.end method

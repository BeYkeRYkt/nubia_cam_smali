.class Lcom/android/videomaker/m;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private volatile aMM:Z

.field final synthetic aMN:Lcom/android/videomaker/j;


# direct methods
.method constructor <init>(Lcom/android/videomaker/j;)V
    .registers 3

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videomaker/m;->aMM:Z

    .line 491
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/16 v12, 0x2f

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 496
    const-string/jumbo v0, "ReadBufferThread.run!!!"

    invoke-static {v0}, Lcom/android/videomaker/j;->bdf(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bde(Lcom/android/videomaker/j;)Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    .line 499
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bde(Lcom/android/videomaker/j;)Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    .line 502
    const-wide/16 v0, 0x1f4

    :try_start_1d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_92

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/common/h;->apn(J)Ljava/lang/String;

    move-result-object v0

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v2}, Lcom/android/videomaker/j;->bcZ(Lcom/android/videomaker/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 511
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 514
    :cond_51
    :try_start_51
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_18a

    .line 515
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string/jumbo v1, "Cannot create file .nomedia"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_68} :catch_68

    .line 517
    :catch_68
    move-exception v0

    .line 518
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videomaker/j;->bdf(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcJ(Lcom/android/videomaker/j;)Lcom/android/common/CameraBufferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/CameraBufferManager;->releaseBuffer()V

    .line 521
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0, v10}, Lcom/android/videomaker/j;->bdd(Lcom/android/videomaker/j;Z)Z

    .line 522
    return-void

    .line 503
    :catch_92
    move-exception v0

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "InterruptedException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videomaker/j;->bdf(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcJ(Lcom/android/videomaker/j;)Lcom/android/common/CameraBufferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/CameraBufferManager;->releaseBuffer()V

    .line 506
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0, v10}, Lcom/android/videomaker/j;->bdd(Lcom/android/videomaker/j;Z)Z

    .line 507
    return-void

    .line 544
    :cond_b9
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcJ(Lcom/android/videomaker/j;)Lcom/android/common/CameraBufferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v1}, Lcom/android/videomaker/j;->bcK(Lcom/android/videomaker/j;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/common/CameraBufferManager;->getData(I)[B

    move-result-object v1

    .line 546
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 549
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcT(Lcom/android/videomaker/j;)I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    if-eqz v0, :cond_270

    .line 550
    new-instance v3, Lcom/nubia/camera/common/Native/BufferCell;

    invoke-direct {v3, v1}, Lcom/nubia/camera/common/Native/BufferCell;-><init>([B)V

    .line 551
    new-instance v4, Lcom/nubia/camera/common/Native/BufferCell;

    invoke-direct {v4, v1}, Lcom/nubia/camera/common/Native/BufferCell;-><init>([B)V

    .line 552
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcT(Lcom/android/videomaker/j;)I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_26c

    move v0, v6

    move v1, v7

    .line 556
    :goto_f2
    iget-object v2, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v2}, Lcom/android/videomaker/j;->bcT(Lcom/android/videomaker/j;)I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    rsub-int v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    invoke-static {v3, v4, v1, v0, v2}, Lcom/nubia/camera/common/Native/YUVAlgorithm;->btR(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;III)V

    .line 557
    invoke-virtual {v4}, Lcom/nubia/camera/common/Native/BufferCell;->btX()[B

    move-result-object v2

    .line 558
    invoke-virtual {v3}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 559
    invoke-virtual {v4}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    move v4, v0

    move v3, v1

    move-object v1, v2

    .line 561
    :goto_10e
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 563
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v11, v11, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v9}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 565
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/videomaker/j;->bdc(Lcom/android/videomaker/j;J)J

    .line 566
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcM(Lcom/android/videomaker/j;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v0

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/common/f;->aoz([BLjava/lang/String;)Z

    .line 570
    iget-object v1, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v1}, Lcom/android/videomaker/j;->bcX(Lcom/android/videomaker/j;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcK(Lcom/android/videomaker/j;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/videomaker/j;->bdb(Lcom/android/videomaker/j;I)I

    .line 573
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcN(Lcom/android/videomaker/j;)Z

    move-result v0

    if-eqz v0, :cond_18a

    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcQ(Lcom/android/videomaker/j;)Z

    move-result v0

    if-eqz v0, :cond_18a

    .line 574
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcS(Lcom/android/videomaker/j;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v1}, Lcom/android/videomaker/j;->bcV(Lcom/android/videomaker/j;)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 525
    :cond_18a
    iget-boolean v0, p0, Lcom/android/videomaker/m;->aMM:Z

    if-eqz v0, :cond_260

    .line 526
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcO(Lcom/android/videomaker/j;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 527
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcJ(Lcom/android/videomaker/j;)Lcom/android/common/CameraBufferManager;

    move-result-object v0

    if-eqz v0, :cond_1ac

    .line 528
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcJ(Lcom/android/videomaker/j;)Lcom/android/common/CameraBufferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/CameraBufferManager;->releaseBuffer()V

    .line 529
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0, v10}, Lcom/android/videomaker/j;->bdd(Lcom/android/videomaker/j;Z)Z

    .line 531
    :cond_1ac
    return-void

    .line 535
    :cond_1ad
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcI(Lcom/android/videomaker/j;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    .line 536
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcI(Lcom/android/videomaker/j;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-nez v0, :cond_1e9

    .line 537
    const-string/jumbo v0, "VideoMakerMultiShoot"

    const-string/jumbo v1, "Low space"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcL(Lcom/android/videomaker/j;)Lcom/android/videomaker/l;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/videomaker/l;->sendEmptyMessage(I)Z

    .line 539
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcJ(Lcom/android/videomaker/j;)Lcom/android/common/CameraBufferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/CameraBufferManager;->releaseBuffer()V

    .line 540
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0, v10}, Lcom/android/videomaker/j;->bdd(Lcom/android/videomaker/j;Z)Z

    .line 541
    return-void

    .line 543
    :cond_1e9
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcK(Lcom/android/videomaker/j;)I

    move-result v0

    iget-object v1, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v1}, Lcom/android/videomaker/j;->bcW(Lcom/android/videomaker/j;)I

    move-result v1

    if-ge v0, v1, :cond_1ff

    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcP(Lcom/android/videomaker/j;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 576
    :cond_1ff
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcQ(Lcom/android/videomaker/j;)Z

    move-result v0

    if-nez v0, :cond_18a

    .line 577
    const-string/jumbo v0, "releaseBuffer"

    invoke-static {v0}, Lcom/android/videomaker/j;->bdf(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcJ(Lcom/android/videomaker/j;)Lcom/android/common/CameraBufferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/CameraBufferManager;->releaseBuffer()V

    .line 579
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0, v5}, Lcom/android/videomaker/j;->bda(Lcom/android/videomaker/j;Lcom/android/common/CameraBufferManager;)Lcom/android/common/CameraBufferManager;

    .line 580
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0, v10}, Lcom/android/videomaker/j;->bdd(Lcom/android/videomaker/j;Z)Z

    .line 581
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcL(Lcom/android/videomaker/j;)Lcom/android/videomaker/l;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/videomaker/l;->sendEmptyMessage(I)Z

    .line 582
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcI(Lcom/android/videomaker/j;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rS()V

    .line 584
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcL(Lcom/android/videomaker/j;)Lcom/android/videomaker/l;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/videomaker/l;->removeMessages(I)V

    .line 585
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcL(Lcom/android/videomaker/j;)Lcom/android/videomaker/l;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/videomaker/l;->removeMessages(I)V

    .line 586
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcY(Lcom/android/videomaker/j;)I

    move-result v0

    iget-object v1, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v1}, Lcom/android/videomaker/j;->bcR(Lcom/android/videomaker/j;)I

    move-result v1

    if-ne v0, v1, :cond_261

    .line 587
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcL(Lcom/android/videomaker/j;)Lcom/android/videomaker/l;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/videomaker/l;->sendEmptyMessage(I)Z

    .line 495
    :cond_260
    :goto_260
    return-void

    .line 589
    :cond_261
    iget-object v0, p0, Lcom/android/videomaker/m;->aMN:Lcom/android/videomaker/j;

    invoke-static {v0}, Lcom/android/videomaker/j;->bcL(Lcom/android/videomaker/j;)Lcom/android/videomaker/l;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/videomaker/l;->sendEmptyMessage(I)Z

    goto :goto_260

    :cond_26c
    move v0, v7

    move v1, v6

    goto/16 :goto_f2

    :cond_270
    move v4, v7

    move v3, v6

    goto/16 :goto_10e
.end method

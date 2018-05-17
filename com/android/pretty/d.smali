.class Lcom/android/pretty/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private aCA:Z

.field final synthetic aCB:Lcom/android/pretty/a;

.field private aCu:I

.field private aCv:I

.field private aCw:I

.field private aCx:Z

.field private aCy:Ljava/lang/String;

.field private aCz:Lcom/nubia/camera/common/Native/BufferCell;


# direct methods
.method public constructor <init>(Lcom/android/pretty/a;Lcom/nubia/camera/common/Native/BufferCell;Ljava/lang/String;ZIII)V
    .registers 9

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/pretty/d;->aCB:Lcom/android/pretty/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/pretty/d;->aCx:Z

    .line 534
    iput-object p2, p0, Lcom/android/pretty/d;->aCz:Lcom/nubia/camera/common/Native/BufferCell;

    .line 535
    iput-object p3, p0, Lcom/android/pretty/d;->aCy:Ljava/lang/String;

    .line 536
    iput-boolean p4, p0, Lcom/android/pretty/d;->aCA:Z

    .line 537
    iput p5, p0, Lcom/android/pretty/d;->aCu:I

    .line 538
    iput p6, p0, Lcom/android/pretty/d;->aCw:I

    .line 539
    iput p7, p0, Lcom/android/pretty/d;->aCv:I

    .line 533
    return-void
.end method

.method private varargs aRP(Z[Lcom/nubia/camera/common/Native/BufferCell;)Z
    .registers 6

    .prologue
    .line 692
    if-eqz p1, :cond_12

    .line 693
    array-length v1, p2

    .line 694
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_12

    .line 695
    aget-object v2, p2, v0

    if-eqz v2, :cond_f

    .line 696
    aget-object v2, p2, v0

    invoke-virtual {v2}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 694
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 700
    :cond_12
    return p1
.end method

.method private aRQ(ILandroid/hardware/Camera$Size;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 16

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/pretty/d;->aCB:Lcom/android/pretty/a;

    invoke-static {v0}, Lcom/android/pretty/a;->aRx(Lcom/android/pretty/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pV()I

    move-result v0

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_aa

    .line 628
    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    .line 629
    iget v0, p2, Landroid/hardware/Camera$Size;->height:I

    .line 634
    :goto_13
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 635
    const-string/jumbo v3, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 636
    const-string/jumbo v3, "_data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string/jumbo v3, "_display_name"

    invoke-virtual {v2, v3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string/jumbo v3, "mime_type"

    const-string/jumbo v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string/jumbo v3, "orientation"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    const-string/jumbo v3, "_size"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    const-string/jumbo v3, "width"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const-string/jumbo v1, "height"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 645
    iget-object v0, p0, Lcom/android/pretty/d;->aCB:Lcom/android/pretty/a;

    invoke-static {v0}, Lcom/android/pretty/a;->aRx(Lcom/android/pretty/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v0

    .line 646
    if-eqz v0, :cond_a9

    .line 647
    const-string/jumbo v1, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 648
    const-string/jumbo v1, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 650
    :cond_a9
    return-object v2

    .line 631
    :cond_aa
    iget v1, p2, Landroid/hardware/Camera$Size;->height:I

    .line 632
    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    goto/16 :goto_13
.end method

.method private aRR(Lcom/nubia/camera/common/Native/BufferCell;Ljava/lang/String;ZIII)[B
    .registers 16

    .prologue
    .line 561
    const-string/jumbo v0, "none"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x0

    move v6, v0

    .line 563
    :goto_b
    if-nez v6, :cond_f

    if-eqz p3, :cond_4b

    .line 567
    :cond_f
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 572
    const-string/jumbo v0, "BestPhotoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFinalDataWithPrettyAndEffect jpegCell = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-static {p1, v7}, Lcom/nubia/camera/common/Native/CodecDataAlgorithm;->btW(Lcom/nubia/camera/common/Native/BufferCell;[I)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v8

    .line 574
    iget-boolean v0, p0, Lcom/android/pretty/d;->aCx:Z

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/nubia/camera/common/Native/BufferCell;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    .line 569
    const/4 v2, 0x0

    .line 574
    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 570
    const/4 v2, 0x0

    .line 574
    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/android/pretty/d;->aRP(Z[Lcom/nubia/camera/common/Native/BufferCell;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 575
    const/4 v0, 0x0

    return-object v0

    .line 561
    :cond_48
    const/4 v0, 0x1

    move v6, v0

    goto :goto_b

    .line 564
    :cond_4b
    invoke-virtual {p1}, Lcom/nubia/camera/common/Native/BufferCell;->btX()[B

    move-result-object v0

    return-object v0

    .line 578
    :cond_50
    const/4 v0, 0x0

    aget v0, v7, v0

    const/4 v1, 0x1

    aget v1, v7, v1

    invoke-static {v8, v0, v1}, Lcom/nubia/camera/common/Native/YUVAlgorithm;->btT(Lcom/nubia/camera/common/Native/BufferCell;II)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v0

    .line 580
    iget-boolean v1, p0, Lcom/android/pretty/d;->aCx:Z

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/nubia/camera/common/Native/BufferCell;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 570
    const/4 v3, 0x0

    .line 580
    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/android/pretty/d;->aRP(Z[Lcom/nubia/camera/common/Native/BufferCell;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 581
    const/4 v0, 0x0

    return-object v0

    .line 584
    :cond_71
    if-eqz p3, :cond_7f

    .line 585
    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/nubia/camera/common/Native/SFBEngineAlgorithm;->bub(Lcom/nubia/camera/common/Native/BufferCell;IIIII)V

    .line 588
    :cond_7f
    iget-boolean v1, p0, Lcom/android/pretty/d;->aCx:Z

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/nubia/camera/common/Native/BufferCell;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 570
    const/4 v3, 0x0

    .line 588
    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/android/pretty/d;->aRP(Z[Lcom/nubia/camera/common/Native/BufferCell;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 589
    const/4 v0, 0x0

    return-object v0

    .line 592
    :cond_96
    if-eqz v6, :cond_a1

    .line 593
    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v1, v2, p2}, Lcom/nubia/camera/common/Native/EffectAlgorithm;->buc(Lcom/nubia/camera/common/Native/BufferCell;IILjava/lang/String;)V

    .line 596
    :cond_a1
    iget-boolean v1, p0, Lcom/android/pretty/d;->aCx:Z

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/nubia/camera/common/Native/BufferCell;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 570
    const/4 v3, 0x0

    .line 596
    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/android/pretty/d;->aRP(Z[Lcom/nubia/camera/common/Native/BufferCell;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 597
    const/4 v0, 0x0

    return-object v0

    .line 600
    :cond_b8
    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v1, v2}, Lcom/nubia/camera/common/Native/YUVAlgorithm;->btS(Lcom/nubia/camera/common/Native/BufferCell;II)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v1

    .line 602
    iget-boolean v2, p0, Lcom/android/pretty/d;->aCx:Z

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/nubia/camera/common/Native/BufferCell;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/android/pretty/d;->aRP(Z[Lcom/nubia/camera/common/Native/BufferCell;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 603
    const/4 v0, 0x0

    return-object v0

    .line 606
    :cond_d8
    const/4 v2, 0x0

    aget v2, v7, v2

    const/4 v3, 0x1

    aget v3, v7, v3

    const/16 v4, 0x64

    invoke-static {v1, v2, v3, v4}, Lcom/nubia/camera/common/Native/CodecDataAlgorithm;->btV(Lcom/nubia/camera/common/Native/BufferCell;III)[B

    move-result-object v2

    .line 608
    invoke-virtual {v8}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 609
    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 610
    invoke-virtual {v1}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 612
    return-object v2
.end method

.method private aRS(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/common/appService/CameraMember;->me(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_27

    .line 619
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 620
    :cond_27
    return-object v0
.end method

.method private aRT([B)V
    .registers 16

    .prologue
    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 655
    invoke-static {v4, v5}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v9

    .line 656
    iget-object v0, p0, Lcom/android/pretty/d;->aCB:Lcom/android/pretty/a;

    invoke-static {v0}, Lcom/android/pretty/a;->aRx(Lcom/android/pretty/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pR()I

    move-result v0

    .line 657
    iget-object v1, p0, Lcom/android/pretty/d;->aCB:Lcom/android/pretty/a;

    invoke-static {v1}, Lcom/android/pretty/a;->aRx(Lcom/android/pretty/a;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 658
    invoke-static {p1}, Lcom/android/common/c;->aob([B)I

    move-result v2

    .line 659
    invoke-direct {p0, v0}, Lcom/android/pretty/d;->aRS(I)Ljava/lang/String;

    move-result-object v7

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 662
    new-instance v0, Lcom/android/common/b/c;

    .line 663
    iget-object v1, p0, Lcom/android/pretty/d;->aCB:Lcom/android/pretty/a;

    invoke-static {v1}, Lcom/android/pretty/a;->aRx(Lcom/android/pretty/a;)Lcom/android/common/appService/W;

    move-result-object v10

    .line 665
    invoke-direct {p0}, Lcom/android/pretty/d;->aRU()Landroid/util/SparseArray;

    move-result-object v12

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 668
    array-length v6, p1

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/pretty/d;->aRQ(ILandroid/hardware/Camera$Size;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    .line 670
    const/4 v11, 0x0

    move-object v3, v0

    move-object v4, v10

    move-object v5, p1

    move-object v6, v12

    move-object v7, v13

    move v10, v2

    .line 662
    invoke-direct/range {v3 .. v11}, Lcom/android/common/b/c;-><init>(Lcom/android/common/appService/W;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V

    .line 671
    iget-object v1, p0, Lcom/android/pretty/d;->aCB:Lcom/android/pretty/a;

    invoke-static {v1}, Lcom/android/pretty/a;->aRx(Lcom/android/pretty/a;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 653
    return-void
.end method

.method private aRU()Landroid/util/SparseArray;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 675
    iget-object v0, p0, Lcom/android/pretty/d;->aCB:Lcom/android/pretty/a;

    invoke-static {v0}, Lcom/android/pretty/a;->aRx(Lcom/android/pretty/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Nl()Ljava/lang/String;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lcom/android/pretty/d;->aCB:Lcom/android/pretty/a;

    invoke-static {v1}, Lcom/android/pretty/a;->aRx(Lcom/android/pretty/a;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v1

    .line 678
    if-eqz v1, :cond_31

    const-string/jumbo v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string/jumbo v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_31
    return-object v3

    .line 680
    :cond_32
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 681
    const-string/jumbo v3, "-1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 682
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 683
    sget v3, Lcom/android/common/exif/o;->PK:I

    new-instance v4, Lcom/android/common/exif/m;

    const v5, 0x3c23d70a    # 0.01f

    invoke-direct {v4, v1, v5}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 685
    :cond_51
    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 686
    sget v1, Lcom/android/common/exif/o;->PJ:I

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 688
    :cond_6c
    return-object v2
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/pretty/d;->aCx:Z

    .line 542
    return-void
.end method

.method public run()V
    .registers 8

    .prologue
    .line 548
    iget-object v1, p0, Lcom/android/pretty/d;->aCz:Lcom/nubia/camera/common/Native/BufferCell;

    .line 549
    iget-object v2, p0, Lcom/android/pretty/d;->aCy:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/pretty/d;->aCA:Z

    iget v4, p0, Lcom/android/pretty/d;->aCu:I

    iget v5, p0, Lcom/android/pretty/d;->aCw:I

    .line 550
    iget v6, p0, Lcom/android/pretty/d;->aCv:I

    move-object v0, p0

    .line 548
    invoke-direct/range {v0 .. v6}, Lcom/android/pretty/d;->aRR(Lcom/nubia/camera/common/Native/BufferCell;Ljava/lang/String;ZIII)[B

    move-result-object v0

    .line 551
    if-eqz v0, :cond_16

    .line 552
    invoke-direct {p0, v0}, Lcom/android/pretty/d;->aRT([B)V

    .line 554
    :cond_16
    iget-object v1, p0, Lcom/android/pretty/d;->aCB:Lcom/android/pretty/a;

    invoke-static {v1}, Lcom/android/pretty/a;->aRz(Lcom/android/pretty/a;)Lcom/android/pretty/b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/pretty/b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 546
    return-void
.end method

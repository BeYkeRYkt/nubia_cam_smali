.class public Lcom/android/common/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ahA:I

.field private static ahB:F

.field private static ahC:Z

.field public static ahq:Z

.field public static ahr:Landroid/graphics/Point;

.field public static final ahs:Z

.field public static final aht:I

.field private static ahu:Z

.field private static ahv:Z

.field private static ahw:Z

.field private static ahx:Lcom/android/common/i;

.field private static ahy:[I

.field private static ahz:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-static {}, Lcom/android/common/h;->apD()I

    move-result v0

    sput v0, Lcom/android/common/h;->aht:I

    .line 171
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/common/h;->ahB:F

    .line 179
    sput-boolean v1, Lcom/android/common/h;->ahC:Z

    .line 180
    sput-boolean v1, Lcom/android/common/h;->ahw:Z

    .line 181
    invoke-static {}, Lcom/android/common/h;->apI()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/h;->ahs:Z

    .line 183
    sput-boolean v1, Lcom/android/common/h;->ahq:Z

    .line 744
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/common/h;->ahy:[I

    .line 1026
    sput-boolean v1, Lcom/android/common/h;->ahv:Z

    .line 1727
    sput-boolean v1, Lcom/android/common/h;->ahu:Z

    .line 134
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aoN()I
    .registers 1

    .prologue
    .line 1517
    sget v0, Lcom/android/common/h;->ahA:I

    return v0
.end method

.method public static aoO()I
    .registers 1

    .prologue
    .line 1521
    sget v0, Lcom/android/common/h;->ahz:I

    return v0
.end method

.method public static aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1479
    if-nez p0, :cond_3

    .line 1480
    return-void

    .line 1481
    :cond_3
    invoke-static {}, Lcom/android/common/h;->apL()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1483
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    return-void
.end method

.method public static aoQ(II)I
    .registers 5

    .prologue
    .line 586
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 587
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 589
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 590
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p0

    rem-int/lit16 v0, v0, 0x168

    .line 591
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 595
    :goto_16
    return v0

    .line 593
    :cond_17
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, p0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_16
.end method

.method public static aoR(Landroid/view/View;Landroid/view/View;)[I
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 765
    sget-object v0, Lcom/android/common/h;->ahy:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 766
    sget-object v0, Lcom/android/common/h;->ahy:[I

    aget v0, v0, v4

    .line 767
    sget-object v1, Lcom/android/common/h;->ahy:[I

    aget v1, v1, v5

    .line 768
    sget-object v2, Lcom/android/common/h;->ahy:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 769
    sget-object v2, Lcom/android/common/h;->ahy:[I

    aget v3, v2, v4

    sub-int v0, v3, v0

    aput v0, v2, v4

    .line 770
    sget-object v0, Lcom/android/common/h;->ahy:[I

    aget v2, v0, v5

    sub-int v1, v2, v1

    aput v1, v0, v5

    .line 771
    sget-object v0, Lcom/android/common/h;->ahy:[I

    return-object v0
.end method

.method public static aoS(III)I
    .registers 3

    .prologue
    .line 566
    if-le p0, p2, :cond_3

    return p2

    .line 567
    :cond_3
    if-ge p0, p1, :cond_6

    return p1

    .line 568
    :cond_6
    return p0
.end method

.method public static aoT(I)I
    .registers 3

    .prologue
    .line 469
    sget v0, Lcom/android/common/h;->ahB:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static aoU(II)I
    .registers 5

    .prologue
    .line 902
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    aget-object v0, v0, p0

    .line 903
    const/4 v1, -0x1

    if-eq p1, v1, :cond_20

    .line 904
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 905
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 912
    :goto_19
    return v0

    .line 907
    :cond_1a
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_19

    .line 910
    :cond_20
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto :goto_19
.end method

.method public static aoV(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 849
    sget-object v1, Lcom/android/common/h;->ahx:Lcom/android/common/i;

    monitor-enter v1

    .line 850
    :try_start_3
    sget-object v0, Lcom/android/common/h;->ahx:Lcom/android/common/i;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/i;->aqq(J)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 849
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static aoW(DDLandroid/util/SparseArray;)V
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    .line 367
    sget v0, Lcom/android/common/exif/o;->PU:I

    invoke-static {p0, p1}, Lcom/android/common/exif/o;->QV(D)[Lcom/android/common/exif/m;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    sget v0, Lcom/android/common/exif/o;->PV:I

    invoke-static {p2, p3}, Lcom/android/common/exif/o;->QV(D)[Lcom/android/common/exif/m;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    sget v1, Lcom/android/common/exif/o;->PW:I

    .line 370
    cmpl-double v0, p0, v2

    if-ltz v0, :cond_2d

    const-string/jumbo v0, "N"

    .line 369
    :goto_1d
    invoke-virtual {p4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    sget v1, Lcom/android/common/exif/o;->PX:I

    .line 373
    cmpl-double v0, p2, v2

    if-ltz v0, :cond_31

    const-string/jumbo v0, "E"

    .line 372
    :goto_29
    invoke-virtual {p4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 366
    return-void

    .line 371
    :cond_2d
    const-string/jumbo v0, "S"

    goto :goto_1d

    .line 374
    :cond_31
    const-string/jumbo v0, "W"

    goto :goto_29
.end method

.method public static aoX(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 775
    if-nez p0, :cond_4

    return v4

    .line 777
    :cond_4
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 778
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 780
    :try_start_b
    const-string/jumbo v0, "r"

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 781
    if-nez v0, :cond_32

    .line 782
    const-string/jumbo v0, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to open URI. URI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_3a
    .catchall {:try_start_b .. :try_end_2e} :catchall_48

    .line 790
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 783
    return v4

    .line 785
    :cond_32
    :try_start_32
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_3a
    .catchall {:try_start_32 .. :try_end_35} :catchall_48

    .line 790
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 792
    const/4 v0, 0x1

    return v0

    .line 786
    :catch_3a
    move-exception v0

    .line 787
    :try_start_3b
    const-string/jumbo v2, "Util"

    const-string/jumbo v3, "Fail to open URI."

    invoke-static {v2, v3, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_48

    .line 790
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 788
    return v4

    .line 789
    :catchall_48
    move-exception v0

    .line 790
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 789
    throw v0
.end method

.method public static aoY(I)Z
    .registers 4

    .prologue
    .line 1749
    :try_start_0
    new-array v0, p0, [B
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_2} :catch_4

    .line 1754
    const/4 v0, 0x1

    return v0

    .line 1750
    :catch_4
    move-exception v0

    .line 1751
    const-string/jumbo v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "malloc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    const/4 v0, 0x0

    return v0
.end method

.method public static aoZ(JLjava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1530
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 1531
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1533
    return-object v0
.end method

.method public static apA(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .registers 16

    .prologue
    .line 622
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 623
    :cond_4
    const/4 v2, 0x0

    .line 624
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 632
    sget-object v3, Lcom/android/common/h;->ahr:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lcom/android/common/h;->ahr:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 636
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v10, v0

    move-object v1, v2

    move-wide v2, v10

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 637
    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v6, v6

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 638
    sub-double/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double v6, v6, v8

    if-lez v6, :cond_45

    move-wide v10, v2

    move-object v2, v1

    move-wide v0, v10

    :goto_41
    move-wide v10, v0

    move-object v1, v2

    move-wide v2, v10

    goto :goto_1d

    .line 639
    :cond_45
    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v6, v6, v2

    if-gez v6, :cond_9d

    .line 641
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v2, v1

    move-wide v10, v2

    move-object v2, v0

    move-wide v0, v10

    goto :goto_41

    .line 648
    :cond_5d
    if-nez v1, :cond_98

    .line 649
    const-string/jumbo v0, "Util"

    const-string/jumbo v2, "No preview size match the aspect ratio"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 651
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_71
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 652
    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v6, v6, v2

    if-gez v6, :cond_99

    .line 654
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v2, v1

    move-wide v10, v2

    move-object v2, v0

    move-wide v0, v10

    :goto_94
    move-wide v10, v0

    move-object v1, v2

    move-wide v2, v10

    goto :goto_71

    .line 658
    :cond_98
    return-object v1

    :cond_99
    move-wide v10, v2

    move-object v2, v1

    move-wide v0, v10

    goto :goto_94

    :cond_9d
    move-wide v10, v2

    move-object v2, v1

    move-wide v0, v10

    goto :goto_41
.end method

.method public static apB(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1392
    if-nez p0, :cond_d

    .line 1393
    const-string/jumbo v0, "Util"

    const-string/jumbo v1, "getPackageInfo() but context is null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    return-object v3

    .line 1396
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1398
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_19} :catch_1b

    move-result-object v0

    return-object v0

    .line 1399
    :catch_1b
    move-exception v0

    .line 1400
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1401
    return-object v3
.end method

.method public static apC(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 380
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 382
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    :try_start_f
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_f .. :try_end_12} :catch_27
    .catchall {:try_start_f .. :try_end_12} :catchall_2f

    move-result-object v0

    .line 383
    :try_start_13
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 384
    const-string/jumbo v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 385
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_13 .. :try_end_20} :catch_3a
    .catchall {:try_start_13 .. :try_end_20} :catchall_36

    move-result-object v6

    .line 389
    if-eqz v0, :cond_26

    .line 390
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_26
    :goto_26
    return-object v6

    .line 386
    :catch_27
    move-exception v0

    move-object v0, v6

    .line 389
    :goto_29
    if-eqz v0, :cond_26

    .line 390
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_26

    .line 388
    :catchall_2f
    move-exception v0

    .line 389
    :goto_30
    if-eqz v6, :cond_35

    .line 390
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_35
    throw v0

    :catchall_36
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_30

    .line 386
    :catch_3a
    move-exception v1

    goto :goto_29
.end method

.method private static apD()I
    .registers 4

    .prologue
    .line 1668
    :try_start_0
    const-string/jumbo v0, "nubia.smartkey.SmartKeySettings"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1669
    if-eqz v0, :cond_41

    .line 1670
    const-string/jumbo v1, "KEYCODE_SMART"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1671
    if-eqz v0, :cond_41

    .line 1672
    const-string/jumbo v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " SmartKeyValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_35} :catch_4e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_35} :catch_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_35} :catch_37

    move-result v0

    return v0

    .line 1680
    :catch_37
    move-exception v0

    .line 1681
    const-string/jumbo v0, "Util"

    const-string/jumbo v1, "initSmartKeyValue, IllegalAccessException"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    :cond_41
    :goto_41
    const/4 v0, -0x1

    return v0

    .line 1678
    :catch_43
    move-exception v0

    .line 1679
    const-string/jumbo v0, "Util"

    const-string/jumbo v1, "initSmartKeyValue, NoSuchFieldException"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    .line 1676
    :catch_4e
    move-exception v0

    .line 1677
    const-string/jumbo v0, "Util"

    const-string/jumbo v1, "initSmartKeyValue, ClassNotFoundException"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public static apE(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 190
    const-string/jumbo v1, "window"

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 191
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 192
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 194
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->adx()F

    move-result v2

    mul-float/2addr v1, v2

    sput v1, Lcom/android/common/h;->ahB:F

    .line 195
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    sput-object v1, Lcom/android/common/h;->ahr:Landroid/graphics/Point;

    .line 196
    sget-object v1, Lcom/android/common/h;->ahr:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 197
    sget-object v0, Lcom/android/common/h;->ahr:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lcom/android/common/h;->ahr:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_68

    sget-object v0, Lcom/android/common/h;->ahr:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_44
    sput v0, Lcom/android/common/h;->ahA:I

    .line 198
    sget-object v0, Lcom/android/common/h;->ahr:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lcom/android/common/h;->ahr:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_6d

    sget-object v0, Lcom/android/common/h;->ahr:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_54
    sput v0, Lcom/android/common/h;->ahz:I

    .line 199
    new-instance v0, Lcom/android/common/i;

    .line 200
    const v1, 0x7f0a0279

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-direct {v0, v1}, Lcom/android/common/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/h;->ahx:Lcom/android/common/i;

    .line 201
    invoke-static {p0}, Lcom/android/common/h;->aqj(Landroid/content/Context;)V

    .line 188
    return-void

    .line 197
    :cond_68
    sget-object v0, Lcom/android/common/h;->ahr:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_44

    .line 198
    :cond_6d
    sget-object v0, Lcom/android/common/h;->ahr:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_54
.end method

.method public static apF()Z
    .registers 1

    .prologue
    .line 1033
    sget-boolean v0, Lcom/android/common/h;->ahv:Z

    return v0
.end method

.method public static apG(Landroid/content/Context;)Z
    .registers 5

    .prologue
    .line 1072
    sget-object v0, Lcom/android/common/Util$State;->ahH:Lcom/android/common/Util$State;

    invoke-virtual {v0}, Lcom/android/common/Util$State;->ordinal()I

    .line 1073
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lightstate"

    sget-object v2, Lcom/android/common/Util$State;->ahH:Lcom/android/common/Util$State;

    invoke-virtual {v2}, Lcom/android/common/Util$State;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1074
    const-string/jumbo v1, "util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "torch state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    sget-object v1, Lcom/android/common/Util$State;->ahH:Lcom/android/common/Util$State;

    invoke-virtual {v1}, Lcom/android/common/Util$State;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_3a

    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method public static apH(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;)Z
    .registers 3

    .prologue
    .line 1779
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aeg()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1780
    sget-object v0, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    if-ne p0, v0, :cond_17

    .line 1781
    invoke-virtual {p1}, Lcom/android/common/cameradevice/g;->Kf()Z

    move-result v0

    .line 1779
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static apI()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1767
    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1768
    const-string/jumbo v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "product platform: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    if-eqz v2, :cond_3a

    .line 1770
    const-string/jumbo v3, "MT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_37

    const-string/jumbo v3, "mt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_38

    .line 1769
    :cond_37
    :goto_37
    return v0

    :cond_38
    move v0, v1

    .line 1770
    goto :goto_37

    :cond_3a
    move v0, v1

    .line 1769
    goto :goto_37
.end method

.method public static apJ(Landroid/content/Intent;)Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1509
    if-nez p0, :cond_4

    .line 1510
    return v1

    .line 1512
    :cond_4
    const-string/jumbo v0, "is_camera_key"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1513
    return v0
.end method

.method public static apK(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1412
    const-string/jumbo v0, "connectivity"

    .line 1411
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1413
    if-nez v0, :cond_d

    .line 1414
    return v1

    .line 1416
    :cond_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1417
    if-nez v0, :cond_14

    .line 1418
    return v1

    .line 1420
    :cond_14
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    return v0
.end method

.method public static apL()Z
    .registers 1

    .prologue
    .line 221
    sget-boolean v0, Lcom/android/common/h;->ahC:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/common/h;->ahw:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static apM(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1432
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1431
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1433
    const-string/jumbo v1, "firstapp"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1434
    if-nez v0, :cond_34

    .line 1435
    sput-boolean v3, Lcom/android/common/h;->ahw:Z

    .line 1439
    :goto_15
    const-string/jumbo v0, "chengjiaqi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsPermissionsGranted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/common/h;->ahw:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    sget-boolean v0, Lcom/android/common/h;->ahw:Z

    return v0

    .line 1437
    :cond_34
    sput-boolean v2, Lcom/android/common/h;->ahw:Z

    goto :goto_15
.end method

.method public static apN(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 1054
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1055
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    .line 1057
    :try_start_e
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1058
    const-string/jumbo v4, "isDeviceLocked"

    .line 1057
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1059
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_28} :catch_2a

    move-result v0

    .line 1060
    return v0

    .line 1061
    :catch_2a
    move-exception v1

    .line 1062
    const-string/jumbo v1, "Util"

    const-string/jumbo v4, "isDeviceLocked is not had"

    invoke-static {v1, v4}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    if-eqz v3, :cond_3b

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    :goto_3a
    return v0

    :cond_3b
    move v0, v2

    goto :goto_3a
.end method

.method public static apO(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 1048
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1049
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 1050
    return v0
.end method

.method public static apP()Z
    .registers 4

    .prologue
    .line 1568
    const-string/jumbo v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " isThirdpartyVdBeautySupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "persist.camera.vdbea.switch"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    const-string/jumbo v0, "persist.camera.vdbea.switch"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static apQ(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static apR(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1037
    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1038
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1039
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_28

    .line 1040
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1041
    return v3

    .line 1044
    :cond_28
    return v2
.end method

.method public static apS(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1078
    if-nez p0, :cond_4

    return v1

    .line 1079
    :cond_4
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1082
    :try_start_d
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "isUsbMassStorageConnected"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_27} :catch_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_27} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_27} :catch_2f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_27} :catch_29

    move-result v0

    .line 1096
    :goto_28
    return v0

    .line 1092
    :catch_29
    move-exception v0

    .line 1094
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v0, v1

    goto :goto_28

    .line 1089
    :catch_2f
    move-exception v0

    .line 1091
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move v0, v1

    goto :goto_28

    .line 1086
    :catch_35
    move-exception v0

    .line 1088
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v0, v1

    goto :goto_28

    .line 1083
    :catch_3b
    move-exception v0

    .line 1085
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v1

    goto :goto_28
.end method

.method public static apT(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1099
    if-nez p0, :cond_4

    return v1

    .line 1100
    :cond_4
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1103
    :try_start_d
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "isUsbMassStorageEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_27} :catch_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_27} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_27} :catch_2f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_27} :catch_29

    move-result v0

    .line 1117
    :goto_28
    return v0

    .line 1113
    :catch_29
    move-exception v0

    .line 1115
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v0, v1

    goto :goto_28

    .line 1110
    :catch_2f
    move-exception v0

    .line 1112
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move v0, v1

    goto :goto_28

    .line 1107
    :catch_35
    move-exception v0

    .line 1109
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v0, v1

    goto :goto_28

    .line 1104
    :catch_3b
    move-exception v0

    .line 1106
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v1

    goto :goto_28
.end method

.method public static apU(JZ)Ljava/lang/String;
    .registers 15

    .prologue
    .line 1203
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    .line 1204
    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    .line 1205
    const-wide/16 v4, 0x3c

    div-long v4, v2, v4

    .line 1206
    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v4

    sub-long v6, v2, v6

    .line 1207
    const-wide/16 v8, 0x3c

    mul-long/2addr v2, v8

    sub-long v2, v0, v2

    .line 1209
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1212
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-lez v9, :cond_34

    .line 1213
    const-wide/16 v10, 0xa

    cmp-long v9, v4, v10

    if-gez v9, :cond_2c

    .line 1214
    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1216
    :cond_2c
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1218
    const/16 v4, 0x3a

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1222
    :cond_34
    const-wide/16 v4, 0xa

    cmp-long v4, v6, v4

    if-gez v4, :cond_3f

    .line 1223
    const/16 v4, 0x30

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1225
    :cond_3f
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1226
    const/16 v4, 0x3a

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1229
    const-wide/16 v4, 0xa

    cmp-long v4, v2, v4

    if-gez v4, :cond_52

    .line 1230
    const/16 v4, 0x30

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1232
    :cond_52
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1235
    if-eqz p2, :cond_72

    .line 1236
    const/16 v2, 0x2e

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1237
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sub-long v0, p0, v0

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    .line 1238
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-gez v2, :cond_6f

    .line 1239
    const/16 v2, 0x30

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1241
    :cond_6f
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1244
    :cond_72
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apV(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1463
    if-nez p1, :cond_c

    .line 1464
    const-string/jumbo v0, "Util"

    const-string/jumbo v1, "onFragemntResume but context is null."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    return-void

    .line 1467
    :cond_c
    invoke-static {}, Lcom/android/common/h;->apL()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 1468
    :cond_13
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 1469
    invoke-static {p1}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 1462
    return-void
.end method

.method public static apW(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1448
    if-nez p1, :cond_c

    .line 1449
    const-string/jumbo v0, "Util"

    const-string/jumbo v1, "onFragemntResume but context is null."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    return-void

    .line 1452
    :cond_c
    invoke-static {}, Lcom/android/common/h;->apL()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 1453
    :cond_13
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 1454
    invoke-static {p1}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 1447
    return-void
.end method

.method public static apX(Landroid/app/Activity;I)Lcom/android/common/cameradevice/j;
    .registers 4

    .prologue
    .line 504
    const-string/jumbo v0, "device_policy"

    .line 503
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 505
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 506
    new-instance v0, Lcom/android/common/cameradevice/CameraDisabledException;

    invoke-direct {v0}, Lcom/android/common/cameradevice/CameraDisabledException;-><init>()V

    throw v0

    .line 510
    :cond_16
    :try_start_16
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/m;->MX(I)Lcom/android/common/cameradevice/j;
    :try_end_1d
    .catch Lcom/android/common/cameradevice/CameraHardwareException; {:try_start_16 .. :try_end_1d} :catch_1f

    move-result-object v0

    return-object v0

    .line 511
    :catch_1f
    move-exception v0

    .line 519
    throw v0
.end method

.method public static apY(FFLandroid/view/View;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 748
    if-nez p2, :cond_5

    return v1

    .line 749
    :cond_5
    sget-object v2, Lcom/android/common/h;->ahy:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 750
    sget-object v2, Lcom/android/common/h;->ahy:[I

    aget v2, v2, v1

    int-to-float v2, v2

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_3b

    sget-object v2, Lcom/android/common/h;->ahy:[I

    aget v2, v2, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-gez v2, :cond_3b

    .line 751
    sget-object v2, Lcom/android/common/h;->ahy:[I

    aget v2, v2, v0

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_3b

    sget-object v2, Lcom/android/common/h;->ahy:[I

    aget v2, v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_39

    .line 750
    :goto_38
    return v0

    :cond_39
    move v0, v1

    .line 751
    goto :goto_38

    :cond_3b
    move v0, v1

    .line 750
    goto :goto_38
.end method

.method public static varargs apZ(Landroid/view/MotionEvent;[Landroid/view/View;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 756
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_19

    .line 757
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aget-object v4, p1, v0

    invoke-static {v2, v3, v4}, Lcom/android/common/h;->apY(FFLandroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 758
    const/4 v1, 0x1

    .line 756
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 761
    :cond_19
    return v1
.end method

.method public static apa(Lcom/android/common/appService/W;)I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1790
    const-string/jumbo v0, "on"

    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v1

    const-string/jumbo v2, "pref_water_mark_key"

    const-string/jumbo v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1791
    const-string/jumbo v1, "on"

    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v2

    const-string/jumbo v3, "pref_water_mark_time_key"

    const-string/jumbo v4, "off"

    invoke-virtual {v2, v3, v4}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1792
    if-nez v0, :cond_2f

    if-eqz v1, :cond_39

    .line 1795
    :cond_2f
    if-eqz v0, :cond_33

    if-eqz v1, :cond_3a

    .line 1798
    :cond_33
    if-nez v0, :cond_3c

    if-eqz v1, :cond_3c

    .line 1799
    const/4 v0, 0x2

    return v0

    .line 1793
    :cond_39
    return v5

    .line 1796
    :cond_3a
    const/4 v0, 0x1

    return v0

    .line 1801
    :cond_3c
    if-eqz v0, :cond_42

    if-eqz v1, :cond_42

    .line 1802
    const/4 v0, 0x3

    return v0

    .line 1804
    :cond_42
    return v5
.end method

.method public static apb(Landroid/content/Context;I)Lcom/android/common/ui/RotateImageView;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1688
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adv()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1689
    return-object v2

    .line 1691
    :cond_10
    invoke-static {p0}, Lcom/android/common/h;->apN(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1692
    const-string/jumbo v0, "Util"

    const-string/jumbo v1, "getSpecificationView failed, because isScreenLocked."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    return-object v2

    .line 1695
    :cond_20
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-direct {v0, p0}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 1696
    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 1697
    new-instance v1, Lcom/android/common/h/n;

    invoke-direct {v1, p0, p1}, Lcom/android/common/h/n;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1698
    return-object v0
.end method

.method public static apc(Landroid/hardware/Camera$Size;II)Z
    .registers 11

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1704
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v3, :cond_1a

    .line 1705
    iget v0, p0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_1c

    move v0, v2

    .line 1706
    :goto_17
    if-nez v0, :cond_1e

    .line 1707
    return v1

    :cond_1a
    move v0, v2

    .line 1704
    goto :goto_17

    :cond_1c
    move v0, v1

    .line 1705
    goto :goto_17

    .line 1711
    :cond_1e
    iget v3, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v3, v3

    iget v4, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p1

    int-to-float v5, p2

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3a

    .line 1712
    :goto_37
    if-eqz v2, :cond_3c

    :goto_39
    return v0

    :cond_3a
    move v2, v1

    .line 1711
    goto :goto_37

    :cond_3c
    move v0, v1

    .line 1712
    goto :goto_39
.end method

.method public static apd(Ljava/lang/String;Ljava/util/List;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1763
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

.method public static ape(Landroid/util/SparseArray;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 348
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "modeExifTag"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    new-instance v1, Lcom/android/common/exif/o;

    invoke-direct {v1}, Lcom/android/common/exif/o;-><init>()V

    .line 350
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 352
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2e

    .line 353
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 357
    :cond_2e
    :try_start_2e
    invoke-virtual {v1, p1, v2}, Lcom/android/common/exif/o;->QU(Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_31} :catch_37
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    .line 347
    :goto_31
    return-void

    .line 360
    :catch_32
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 358
    :catch_37
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_31
.end method

.method public static apf(Z)V
    .registers 2

    .prologue
    .line 495
    if-nez p0, :cond_8

    .line 496
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 494
    :cond_8
    return-void
.end method

.method public static varargs apg([I)[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1834
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    new-array v2, v1, [B

    move v1, v0

    .line 1836
    :goto_7
    array-length v3, p0

    if-ge v0, v3, :cond_37

    .line 1837
    add-int/lit8 v3, v1, 0x1

    aget v4, p0, v0

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 1838
    add-int/lit8 v1, v3, 0x1

    aget v4, p0, v0

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1839
    add-int/lit8 v3, v1, 0x1

    aget v4, p0, v0

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 1840
    add-int/lit8 v1, v3, 0x1

    aget v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1836
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1842
    :cond_37
    return-object v2
.end method

.method public static aph(Ljava/lang/String;Landroid/util/SparseArray;)Ljava/io/ByteArrayOutputStream;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 286
    const-string/jumbo v0, "Util"

    const-string/jumbo v1, "addExifToFilePath"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v3, Lcom/android/common/exif/o;

    invoke-direct {v3}, Lcom/android/common/exif/o;-><init>()V

    .line 288
    sget v0, Lcom/android/common/exif/o;->PT:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 289
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 288
    invoke-virtual {v3, v0, v4, v5, v1}, Lcom/android/common/exif/o;->QS(IJLjava/util/TimeZone;)Z

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    const/4 v0, 0x0

    :goto_22
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_3a

    .line 293
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 295
    :cond_3a
    invoke-virtual {v3, v1}, Lcom/android/common/exif/o;->QT(Ljava/util/Collection;)V

    .line 297
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 300
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    if-eqz v0, :cond_ac

    .line 303
    :try_start_49
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_4e} :catch_99
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4e} :catch_88
    .catchall {:try_start_49 .. :try_end_4e} :catchall_a4

    .line 304
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v0, v6

    .line 305
    const v5, 0x7fffffff

    if-le v0, v5, :cond_67

    .line 306
    const-string/jumbo v0, "Util"

    const-string/jumbo v3, "this file is max"

    invoke-static {v0, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_61} :catch_d7
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_61} :catch_d9
    .catchall {:try_start_4e .. :try_end_61} :catchall_d5

    .line 321
    :try_start_61
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_65

    .line 307
    :goto_64
    return-object v2

    .line 322
    :catch_65
    move-exception v0

    goto :goto_64

    .line 309
    :cond_67
    :try_start_67
    new-array v0, v0, [B

    .line 310
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 311
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catch Ljava/io/FileNotFoundException; {:try_start_67 .. :try_end_6f} :catch_d7
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6f} :catch_d9
    .catchall {:try_start_67 .. :try_end_6f} :catchall_d5

    .line 312
    const/4 v1, 0x0

    .line 314
    :try_start_70
    invoke-virtual {v3, v0, v4}, Lcom/android/common/exif/o;->QL([BLjava/io/OutputStream;)V
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_70 .. :try_end_73} :catch_99
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_88
    .catchall {:try_start_70 .. :try_end_73} :catchall_a4

    .line 321
    :try_start_73
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_86

    .line 332
    :goto_76
    :try_start_76
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7b} :catch_b8
    .catchall {:try_start_76 .. :try_end_7b} :catchall_c8

    .line 333
    :try_start_7b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_82} :catch_d2
    .catchall {:try_start_7b .. :try_end_82} :catchall_cf

    .line 338
    :try_start_82
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_b6

    .line 342
    :goto_85
    return-object v4

    .line 322
    :catch_86
    move-exception v0

    goto :goto_76

    .line 317
    :catch_88
    move-exception v0

    move-object v1, v2

    .line 318
    :goto_8a
    :try_start_8a
    const-string/jumbo v3, "Util"

    const-string/jumbo v5, "Could not write EXIF"

    invoke-static {v3, v5, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_d5

    .line 321
    :try_start_93
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_76

    .line 322
    :catch_97
    move-exception v0

    goto :goto_76

    .line 315
    :catch_99
    move-exception v0

    move-object v1, v2

    .line 316
    :goto_9b
    :try_start_9b
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_d5

    .line 321
    :try_start_9e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_76

    .line 322
    :catch_a2
    move-exception v0

    goto :goto_76

    .line 319
    :catchall_a4
    move-exception v0

    move-object v1, v2

    .line 321
    :goto_a6
    :try_start_a6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_aa

    .line 319
    :goto_a9
    throw v0

    .line 322
    :catch_aa
    move-exception v1

    goto :goto_a9

    .line 326
    :cond_ac
    const-string/jumbo v0, "Util"

    const-string/jumbo v1, "file is null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    .line 339
    :catch_b6
    move-exception v0

    goto :goto_85

    .line 334
    :catch_b8
    move-exception v0

    .line 335
    :goto_b9
    :try_start_b9
    const-string/jumbo v1, "Util"

    const-string/jumbo v3, "Failed to write image"

    invoke-static {v1, v3, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c2
    .catchall {:try_start_b9 .. :try_end_c2} :catchall_c8

    .line 338
    :try_start_c2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_85

    .line 339
    :catch_c6
    move-exception v0

    goto :goto_85

    .line 336
    :catchall_c8
    move-exception v0

    .line 338
    :goto_c9
    :try_start_c9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cc} :catch_cd

    .line 336
    :goto_cc
    throw v0

    .line 339
    :catch_cd
    move-exception v1

    goto :goto_cc

    .line 336
    :catchall_cf
    move-exception v0

    move-object v2, v1

    goto :goto_c9

    .line 334
    :catch_d2
    move-exception v0

    move-object v2, v1

    goto :goto_b9

    .line 319
    :catchall_d5
    move-exception v0

    goto :goto_a6

    .line 315
    :catch_d7
    move-exception v0

    goto :goto_9b

    .line 317
    :catch_d9
    move-exception v0

    goto :goto_8a
.end method

.method public static api(Ljava/util/List;)Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x2c

    .line 961
    if-nez p0, :cond_8

    .line 962
    const-string/jumbo v0, "(0,0,0,0,0)"

    return-object v0

    .line 964
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 965
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5b

    .line 966
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 967
    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 968
    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 969
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 970
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 971
    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 973
    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 975
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 977
    iget v0, v0, Landroid/hardware/Camera$Area;->weight:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 978
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 979
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_57

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 965
    :cond_57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 981
    :cond_5b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apj(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4

    .prologue
    .line 862
    if-nez p0, :cond_3

    .line 863
    return-void

    .line 865
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 867
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 861
    return-void
.end method

.method public static apk([B)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1808
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1809
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1810
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1811
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1812
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 1814
    if-eqz p0, :cond_1d

    array-length v2, p0

    if-lez v2, :cond_1d

    .line 1816
    :try_start_16
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_1b} :catch_1f

    move-result-object v0

    .line 1829
    :goto_1c
    return-object v0

    :cond_1d
    move-object v0, v1

    .line 1814
    goto :goto_1c

    .line 1817
    :catch_1f
    move-exception v0

    .line 1818
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1820
    :try_start_23
    const-string/jumbo v0, "Util"

    const-string/jumbo v2, "dump hprof E"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/sdcard/2camera_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".hprof"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 1822
    const-string/jumbo v0, "Util"

    const-string/jumbo v2, "dump hprof X"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_57} :catch_59

    move-object v0, v1

    goto :goto_1c

    .line 1823
    :catch_59
    move-exception v0

    .line 1824
    const-string/jumbo v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dump hprof fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1c
.end method

.method public static apl(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 541
    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 542
    :cond_8
    return-object p0
.end method

.method public static apm(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 486
    if-nez p0, :cond_3

    return-void

    .line 488
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    .line 485
    :goto_6
    return-void

    .line 489
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public static apn(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 856
    sget-object v1, Lcom/android/common/h;->ahx:Lcom/android/common/i;

    monitor-enter v1

    .line 857
    :try_start_3
    sget-object v0, Lcom/android/common/h;->ahx:Lcom/android/common/i;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/i;->aqp(J)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 856
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static apo(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 546
    if-eq p0, p1, :cond_6

    if-nez p0, :cond_8

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static app(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 880
    const-wide/16 v0, 0x190

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/common/h;->apq(Landroid/view/View;FFJ)V

    .line 883
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 879
    return-void
.end method

.method public static apq(Landroid/view/View;FFJ)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 871
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 873
    :cond_8
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 874
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 875
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 876
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 870
    return-void
.end method

.method public static apr(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 887
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 891
    :cond_8
    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 892
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 893
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 894
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 895
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 886
    return-void
.end method

.method public static aps(FF)F
    .registers 4

    .prologue
    .line 1316
    div-float v0, p0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static apt(Landroid/app/Activity;)I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 735
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 737
    if-ltz v0, :cond_19

    .line 738
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MU()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 739
    return v0

    .line 741
    :cond_19
    return v2
.end method

.method public static apu(I)I
    .registers 2

    .prologue
    .line 599
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 600
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 601
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v0
.end method

.method public static apv(Lcom/android/common/appService/W;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1320
    const/4 v0, 0x0

    return-object v0
.end method

.method public static apw(Landroid/app/Activity;)I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 572
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 574
    packed-switch v0, :pswitch_data_1c

    .line 580
    return v1

    .line 575
    :pswitch_11
    return v1

    .line 576
    :pswitch_12
    const/16 v0, 0x5a

    return v0

    .line 577
    :pswitch_15
    const/16 v0, 0xb4

    return v0

    .line 578
    :pswitch_18
    const/16 v0, 0x10e

    return v0

    .line 574
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method public static apx()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1758
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acS()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "pref_third_arith_hdr_key"

    :goto_11
    return-object v0

    .line 1759
    :cond_12
    const-string/jumbo v0, "pref_camera_ae_bracket_hdr_key"

    goto :goto_11
.end method

.method public static apy()Lcom/android/common/i;
    .registers 1

    .prologue
    .line 225
    sget-object v0, Lcom/android/common/h;->ahx:Lcom/android/common/i;

    return-object v0
.end method

.method public static apz(Lcom/android/common/setting/PreferenceGroup;)[Ljava/lang/String;
    .registers 8

    .prologue
    .line 1573
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aev()[Ljava/lang/String;

    move-result-object v1

    .line 1575
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1576
    const/4 v0, 0x0

    array-length v3, v1

    :goto_13
    if-ge v0, v3, :cond_1f2

    aget-object v4, v1, v0

    .line 1577
    const-string/jumbo v5, "pref_shutter_key_into_camera_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1578
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/custom/x;->adz()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 1582
    :cond_2e
    const-string/jumbo v5, "pref_camera_best_photo_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1583
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/custom/x;->adN()Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 1587
    :cond_45
    const-string/jumbo v5, "pref_camera_storage_path"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 1588
    invoke-static {}, Lcom/android/common/s;->arv()Z

    move-result v5

    if-eqz v5, :cond_99

    .line 1591
    :cond_54
    const-string/jumbo v5, "pref_live_photo_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 1592
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/custom/x;->aed()Z

    move-result v5

    if-eqz v5, :cond_79

    .line 1593
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/custom/x;->aec()Z

    move-result v5

    .line 1591
    if-eqz v5, :cond_a3

    .line 1595
    :cond_79
    const-string/jumbo v4, "Util"

    const-string/jumbo v5, "remove KEY_LIVE_PHOTO_PREF"

    invoke-static {v4, v5}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    :cond_82
    :goto_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1581
    :cond_85
    const-string/jumbo v4, "Util"

    const-string/jumbo v5, "remove KEY_SHUTTER_KEY_ENTER_CAMERA"

    invoke-static {v4, v5}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    .line 1586
    :cond_8f
    const-string/jumbo v4, "Util"

    const-string/jumbo v5, "remove KEY_BEST_PHOTO"

    invoke-static {v4, v5}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    .line 1590
    :cond_99
    const-string/jumbo v4, "Util"

    const-string/jumbo v5, "remove KEY_CAMERA_STORAGE_PATH"

    invoke-static {v4, v5}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    .line 1596
    :cond_a3
    const-string/jumbo v5, "pref_intelligent_noise_reduction_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 1597
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/custom/x;->acO()Z

    move-result v5

    if-eqz v5, :cond_17e

    .line 1600
    :cond_ba
    const-string/jumbo v5, "pref_zoom_function_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 1601
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/custom/x;->acT()Z

    move-result v5

    if-eqz v5, :cond_189

    .line 1604
    :cond_d1
    const-string/jumbo v5, "pref_eis_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 1605
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/custom/x;->acL()Z

    move-result v5

    if-eqz v5, :cond_194

    .line 1608
    :cond_e8
    const-string/jumbo v5, "pref_water_mark_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ff

    .line 1609
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/custom/x;->ada()Z

    move-result v5

    if-eqz v5, :cond_19f

    .line 1612
    :cond_ff
    const-string/jumbo v5, "pref_water_mark_time_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_116

    .line 1613
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/custom/x;->adm()Z

    move-result v5

    if-eqz v5, :cond_1aa

    .line 1616
    :cond_116
    const-string/jumbo v5, "pref_fusion_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12d

    .line 1617
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/custom/x;->adS()Z

    move-result v5

    if-eqz v5, :cond_1b5

    .line 1620
    :cond_12d
    const-string/jumbo v5, "pref_thirdparty_vid_pretty_switch_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13c

    .line 1621
    invoke-static {}, Lcom/android/common/h;->apP()Z

    move-result v5

    if-eqz v5, :cond_1c0

    .line 1624
    :cond_13c
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/custom/x;->adQ()Z

    move-result v5

    if-nez v5, :cond_15c

    .line 1625
    const-string/jumbo v5, "pref_bokeh_level_adjustable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 1626
    const-string/jumbo v5, "pref_refocus_after_capture"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1624
    if-nez v5, :cond_82

    .line 1628
    :cond_15c
    const-string/jumbo v5, "pref_picture_artist_info"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_173

    .line 1629
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/custom/x;->aeh()Z

    move-result v5

    if-eqz v5, :cond_1cb

    .line 1631
    :cond_173
    invoke-virtual {p0, v4}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v5

    if-eqz v5, :cond_1d6

    .line 1632
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_82

    .line 1599
    :cond_17e
    const-string/jumbo v4, "Util"

    const-string/jumbo v5, "remove KEY_INTELLIGENT_NOISE_REDUCTION"

    invoke-static {v4, v5}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 1603
    :cond_189
    const-string/jumbo v4, "Util"

    const-string/jumbo v5, "remove KEY_ZOOM_FUCITON"

    invoke-static {v4, v5}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 1607
    :cond_194
    const-string/jumbo v4, "Util"

    const-string/jumbo v5, "remove KEY_EIS"

    invoke-static {v4, v5}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 1611
    :cond_19f
    const-string/jumbo v4, "Util"

    const-string/jumbo v5, "remove KEY_WATER_MARK"

    invoke-static {v4, v5}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 1615
    :cond_1aa
    const-string/jumbo v4, "Util"

    const-string/jumbo v5, "remove KEY_WATER_MARK_TIME"

    invoke-static {v4, v5}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 1619
    :cond_1b5
    const-string/jumbo v4, "Util"

    const-string/jumbo v5, "remove KEY_FUSION_KEY"

    invoke-static {v4, v5}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 1623
    :cond_1c0
    const-string/jumbo v4, "Util"

    const-string/jumbo v5, "remove KEY_THIRDPARTY_VD_BEAUTY_SWITCH"

    invoke-static {v4, v5}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 1630
    :cond_1cb
    const-string/jumbo v4, "Util"

    const-string/jumbo v5, "remove KEY_PICTURE_ARTIST_INFO"

    invoke-static {v4, v5}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 1634
    :cond_1d6
    const-string/jumbo v5, "Util"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\'s pref is null, removed"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 1638
    :cond_1f2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1639
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1640
    return-object v0
.end method

.method public static aqa(Landroid/graphics/Matrix;ZIII)V
    .registers 9

    .prologue
    const/high16 v3, 0x44fa0000    # 2000.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 839
    if-eqz p1, :cond_20

    const/4 v0, -0x1

    :goto_7
    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 841
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 844
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 845
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 837
    return-void

    .line 839
    :cond_20
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static aqb(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 1650
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 1651
    if-nez v0, :cond_e

    .line 1652
    const-string/jumbo v0, "Util"

    const-string/jumbo v1, "can\'t putSystemInt, because can\'t read sdk"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    return-void

    .line 1657
    :cond_e
    :try_start_e
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    .line 1649
    :goto_11
    return-void

    .line 1661
    :catch_12
    move-exception v0

    .line 1662
    const-string/jumbo v1, "Util"

    const-string/jumbo v2, "putSystemInt failed!"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public static aqc(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .registers 3

    .prologue
    .line 830
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 831
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 832
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 833
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 829
    return-void
.end method

.method public static aqd(IIIII)[I
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1545
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1546
    sparse-switch p4, :sswitch_data_2c

    .line 1560
    aput p2, v0, v2

    .line 1561
    aput p3, v0, v3

    .line 1564
    :goto_c
    return-object v0

    .line 1548
    :sswitch_d
    aput p3, v0, v2

    .line 1549
    sub-int v1, p0, p2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v3

    goto :goto_c

    .line 1552
    :sswitch_16
    sub-int v1, p0, p2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    .line 1553
    sub-int v1, p1, p3

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v3

    goto :goto_c

    .line 1556
    :sswitch_23
    sub-int v1, p1, p3

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    .line 1557
    aput p2, v0, v3

    goto :goto_c

    .line 1546
    :sswitch_data_2c
    .sparse-switch
        0x5a -> :sswitch_d
        0xb4 -> :sswitch_16
        0x10e -> :sswitch_23
    .end sparse-switch
.end method

.method public static aqe(II)I
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 606
    const/4 v2, -0x1

    if-ne p1, v2, :cond_10

    .line 613
    :cond_5
    :goto_5
    if-eqz v0, :cond_22

    .line 614
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0

    .line 609
    :cond_10
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 610
    rsub-int v3, v2, 0x168

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 611
    const/16 v3, 0x32

    if-ge v2, v3, :cond_5

    move v0, v1

    goto :goto_5

    .line 616
    :cond_22
    return p1
.end method

.method public static aqf(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    .line 1366
    if-nez p0, :cond_3

    .line 1367
    return-void

    .line 1368
    :cond_3
    const-string/jumbo v0, "Util"

    const-string/jumbo v1, "htw setBacklightOff..."

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    .line 1370
    const-string/jumbo v1, "backlight_key_level"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    .line 1371
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    .line 1365
    return-void
.end method

.method public static aqg(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    .line 1378
    if-nez p0, :cond_3

    .line 1379
    return-void

    .line 1380
    :cond_3
    const-string/jumbo v0, "Util"

    const-string/jumbo v1, "htw setBacklightOn..."

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    .line 1382
    const-string/jumbo v1, "backlight_key_level"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    .line 1383
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    .line 1377
    return-void
.end method

.method public static aqh(Landroid/content/Context;Lcom/android/common/cameradevice/p;Landroid/location/Location;)V
    .registers 13

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    .line 917
    invoke-interface {p1}, Lcom/android/common/cameradevice/p;->Ma()V

    .line 920
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v8

    invoke-interface {p1, v2, v3}, Lcom/android/common/cameradevice/p;->Mt(J)V

    .line 923
    if-eqz p2, :cond_66

    .line 924
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 925
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 926
    cmpl-double v1, v2, v6

    if-nez v1, :cond_22

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_67

    .line 928
    :cond_22
    :goto_22
    if-eqz v0, :cond_66

    .line 929
    const-string/jumbo v0, "Util"

    const-string/jumbo v1, "Set gps location"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-interface {p1, v2, v3}, Lcom/android/common/cameradevice/p;->Mq(D)V

    .line 931
    invoke-interface {p1, v4, v5}, Lcom/android/common/cameradevice/p;->Mr(D)V

    .line 932
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/common/cameradevice/p;->Ms(Ljava/lang/String;)V

    .line 933
    const-string/jumbo v0, "location"

    const-string/jumbo v1, "location"

    invoke-static {p0, v0, v1}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-virtual {p2}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 935
    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/android/common/cameradevice/p;->Mp(D)V

    .line 942
    :goto_54
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_66

    .line 945
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v8

    .line 946
    invoke-interface {p1, v0, v1}, Lcom/android/common/cameradevice/p;->Mt(J)V

    .line 915
    :cond_66
    return-void

    .line 926
    :cond_67
    const/4 v0, 0x0

    goto :goto_22

    .line 940
    :cond_69
    invoke-interface {p1, v6, v7}, Lcom/android/common/cameradevice/p;->Mp(D)V

    goto :goto_54
.end method

.method public static aqi(Z)V
    .registers 1

    .prologue
    .line 1029
    sput-boolean p0, Lcom/android/common/h;->ahv:Z

    .line 1028
    return-void
.end method

.method private static aqj(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 206
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 207
    const-string/jumbo v1, "user_experience_plan"

    const/4 v2, 0x0

    .line 206
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 208
    const-string/jumbo v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsOpenUmeng: flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    if-eqz v0, :cond_2d

    .line 210
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/common/h;->ahC:Z

    .line 204
    :goto_2c
    return-void

    .line 212
    :cond_2d
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/common/h;->ahC:Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_31

    goto :goto_2c

    .line 214
    :catch_31
    move-exception v0

    .line 215
    const-string/jumbo v1, "Util"

    const-string/jumbo v2, "setIsOpenUmeng failed"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    sput-boolean v4, Lcom/android/common/h;->ahC:Z

    goto :goto_2c
.end method

.method public static aqk(Landroid/app/Activity;I)Landroid/app/AlertDialog;
    .registers 5

    .prologue
    .line 525
    new-instance v0, Lcom/android/common/I;

    invoke-direct {v0, p0}, Lcom/android/common/I;-><init>(Landroid/app/Activity;)V

    .line 532
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 533
    const/4 v2, 0x0

    .line 532
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 534
    const v2, 0x7f0a03b6

    .line 532
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 536
    const v2, 0x7f0a0277

    .line 532
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static aql(Landroid/content/Context;IIIII)V
    .registers 7

    .prologue
    .line 428
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 429
    invoke-virtual {v0, p3, p4, p5}, Landroid/widget/Toast;->setGravity(III)V

    .line 430
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 427
    return-void
.end method

.method public static aqm(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1716
    if-nez p0, :cond_4

    return-object v0

    .line 1719
    :cond_4
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1721
    :goto_e
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1722
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1724
    :cond_1c
    return-object v1
.end method

.method public static aqn(Landroid/content/Context;J)V
    .registers 4

    .prologue
    .line 418
    if-nez p0, :cond_3

    .line 419
    return-void

    .line 422
    :cond_3
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 423
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 417
    return-void
.end method

.method public static aqo(Landroid/net/Uri;Landroid/content/Context;Z)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 796
    const-string/jumbo v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "viewUri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.camera.action.REVIEW"

    invoke-direct {v2, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 798
    const/high16 v1, 0x14000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 800
    const-string/jumbo v1, "cameraview"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 801
    const-string/jumbo v1, "camera_screen_light"

    invoke-static {}, Lcom/android/common/q/a;->amV()Lcom/android/common/q/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/q/a;->amW()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 802
    if-eqz p2, :cond_44

    .line 803
    const-string/jumbo v1, "wlancamera"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 806
    :cond_44
    :try_start_44
    const-string/jumbo v1, "cn.nubia.gallery3d"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    if-eqz p2, :cond_56

    .line 809
    move-object v0, p1

    check-cast v0, Lcom/android/common/ActivityBase;

    move-object v1, v0

    const/16 v3, 0x2711

    invoke-virtual {v1, v2, v3}, Lcom/android/common/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 795
    :goto_55
    return-void

    .line 811
    :cond_56
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_59
    .catch Landroid/content/ActivityNotFoundException; {:try_start_44 .. :try_end_59} :catch_5a

    goto :goto_55

    .line 813
    :catch_5a
    move-exception v1

    .line 815
    const/4 v1, 0x0

    :try_start_5c
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    check-cast p1, Lcom/android/common/ActivityBase;

    const/16 v1, 0x2711

    invoke-virtual {p1, v2, v1}, Lcom/android/common/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_66
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5c .. :try_end_66} :catch_67

    goto :goto_55

    .line 818
    :catch_67
    move-exception v1

    .line 819
    const-string/jumbo v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "review image fail. uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55
.end method

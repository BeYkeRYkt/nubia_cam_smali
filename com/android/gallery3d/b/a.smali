.class public Lcom/android/gallery3d/b/a;
.super Lcom/android/common/o/l;
.source "SourceFile"


# instance fields
.field private axg:Landroid/view/View;

.field private axh:Lcom/android/gallery3d/b/c;

.field private axi:Lcom/android/gallery3d/a/j;

.field private axj:Landroid/view/View$OnClickListener;

.field private axk:Landroid/view/ViewGroup;

.field private axl:Z

.field private axm:Lcom/android/gallery3d/ui/FilmStripView;

.field private axn:Lcom/android/gallery3d/b/d;

.field private axo:Z

.field private axp:Z

.field private axq:Z

.field private axr:Landroid/os/Handler;

.field private axs:Z

.field private axt:Lcom/android/common/ui/RotateLayout;

.field private axu:Lcom/android/gallery3d/b/b;

.field private axv:Landroid/view/View;

.field private axw:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 62
    new-instance v0, Lcom/android/gallery3d/b/d;

    invoke-direct {v0, p0, v2}, Lcom/android/gallery3d/b/d;-><init>(Lcom/android/gallery3d/b/a;Lcom/android/gallery3d/b/d;)V

    iput-object v0, p0, Lcom/android/gallery3d/b/a;->axn:Lcom/android/gallery3d/b/d;

    .line 64
    iput-boolean v1, p0, Lcom/android/gallery3d/b/a;->axp:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/b/a;->axo:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/gallery3d/b/a;->axl:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/gallery3d/b/a;->axq:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/gallery3d/b/a;->axs:Z

    .line 74
    new-instance v0, Lcom/android/gallery3d/b/e;

    invoke-direct {v0, p0, v2}, Lcom/android/gallery3d/b/e;-><init>(Lcom/android/gallery3d/b/a;Lcom/android/gallery3d/b/e;)V

    iput-object v0, p0, Lcom/android/gallery3d/b/a;->axr:Landroid/os/Handler;

    .line 79
    iput-object v2, p0, Lcom/android/gallery3d/b/a;->axh:Lcom/android/gallery3d/b/c;

    .line 197
    new-instance v0, Lcom/android/gallery3d/b/h;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/b/h;-><init>(Lcom/android/gallery3d/b/a;)V

    iput-object v0, p0, Lcom/android/gallery3d/b/a;->axj:Landroid/view/View$OnClickListener;

    .line 91
    return-void
.end method

.method public constructor <init>(ILcom/android/gallery3d/b/b;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 62
    new-instance v0, Lcom/android/gallery3d/b/d;

    invoke-direct {v0, p0, v2}, Lcom/android/gallery3d/b/d;-><init>(Lcom/android/gallery3d/b/a;Lcom/android/gallery3d/b/d;)V

    iput-object v0, p0, Lcom/android/gallery3d/b/a;->axn:Lcom/android/gallery3d/b/d;

    .line 64
    iput-boolean v1, p0, Lcom/android/gallery3d/b/a;->axp:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/b/a;->axo:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/gallery3d/b/a;->axl:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/gallery3d/b/a;->axq:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/gallery3d/b/a;->axs:Z

    .line 74
    new-instance v0, Lcom/android/gallery3d/b/e;

    invoke-direct {v0, p0, v2}, Lcom/android/gallery3d/b/e;-><init>(Lcom/android/gallery3d/b/a;Lcom/android/gallery3d/b/e;)V

    iput-object v0, p0, Lcom/android/gallery3d/b/a;->axr:Landroid/os/Handler;

    .line 79
    iput-object v2, p0, Lcom/android/gallery3d/b/a;->axh:Lcom/android/gallery3d/b/c;

    .line 197
    new-instance v0, Lcom/android/gallery3d/b/h;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/b/h;-><init>(Lcom/android/gallery3d/b/a;)V

    iput-object v0, p0, Lcom/android/gallery3d/b/a;->axj:Landroid/view/View$OnClickListener;

    .line 88
    iput-object p2, p0, Lcom/android/gallery3d/b/a;->axu:Lcom/android/gallery3d/b/b;

    .line 86
    return-void
.end method

.method public static aLP(Lcom/android/gallery3d/b/b;)Lcom/android/gallery3d/b/a;
    .registers 3

    .prologue
    .line 96
    new-instance v0, Lcom/android/gallery3d/b/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/gallery3d/b/a;-><init>(ILcom/android/gallery3d/b/b;)V

    .line 97
    return-object v0
.end method

.method private aLR()V
    .registers 3

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/android/gallery3d/b/a;->axs:Z

    if-eqz v0, :cond_23

    .line 501
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agE()Lcom/android/common/storagemanager/b;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/android/gallery3d/b/a;->axi:Lcom/android/gallery3d/a/j;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/j;->aHV()Landroid/net/Uri;

    move-result-object v1

    .line 501
    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/b;->agn(Landroid/net/Uri;)Z

    .line 503
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axi:Lcom/android/gallery3d/a/j;

    invoke-virtual {p0}, Lcom/android/gallery3d/b/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/j;->aHT(Landroid/content/Context;)Z

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/b/a;->axs:Z

    .line 499
    :cond_23
    return-void
.end method

.method private aLS()Lcom/android/common/m/a;
    .registers 14

    .prologue
    const/4 v6, 0x2

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 517
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agE()Lcom/android/common/storagemanager/b;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Lcom/android/common/storagemanager/b;->ago()I

    move-result v0

    if-gtz v0, :cond_15

    .line 519
    return-object v3

    .line 521
    :cond_15
    invoke-virtual {p0}, Lcom/android/gallery3d/b/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 524
    invoke-virtual {v1}, Lcom/android/common/storagemanager/b;->agp()Ljava/util/ArrayList;

    move-result-object v2

    .line 525
    invoke-virtual {v1}, Lcom/android/common/storagemanager/b;->agq()Ljava/util/ArrayList;

    move-result-object v4

    .line 526
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 527
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    move-object v10, v1

    move v1, v11

    .line 551
    :goto_39
    invoke-direct {p0, v0, v10, v1}, Lcom/android/gallery3d/b/a;->aLU(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/common/m/a;

    move-result-object v0

    return-object v0

    .line 530
    :cond_3e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 531
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    move-object v10, v1

    move v1, v12

    .line 532
    goto :goto_39

    .line 535
    :cond_53
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 536
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/net/Uri;

    .line 537
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "datetaken"

    aput-object v4, v2, v11

    const-string/jumbo v4, "date_modified"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 538
    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v4, "datetaken"

    aput-object v4, v6, v11

    const-string/jumbo v4, "date_modified"

    aput-object v4, v6, v12

    move-object v4, v0

    move-object v5, v10

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 539
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 540
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 541
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_b1

    .line 542
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-ltz v2, :cond_b4

    :cond_b1
    move-object v10, v1

    move v1, v12

    goto :goto_39

    :cond_b4
    move v1, v11

    .line 548
    goto :goto_39
.end method

.method private aLT(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/common/m/a;
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 566
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v3

    const-string/jumbo v0, "orientation"

    aput-object v0, v2, v1

    .line 568
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    :try_start_15
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_15 .. :try_end_18} :catch_52
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_18} :catch_41
    .catchall {:try_start_15 .. :try_end_18} :catchall_63

    move-result-object v1

    .line 569
    if-eqz v1, :cond_3b

    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 571
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 570
    invoke-static {p1, v2, v3, v0, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 572
    invoke-static {p2, p1}, Lcom/android/common/h;->aoX(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 573
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {p2, v0, v2}, Lcom/android/common/m/a;->agS(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/common/m/a;
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1b .. :try_end_3a} :catch_6d
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_3a} :catch_6f
    .catchall {:try_start_1b .. :try_end_3a} :catchall_6b

    move-result-object v6

    .line 581
    :cond_3b
    if-eqz v1, :cond_40

    .line 582
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 585
    :cond_40
    :goto_40
    return-object v6

    .line 578
    :catch_41
    move-exception v0

    move-object v1, v6

    .line 579
    :goto_43
    :try_start_43
    const-string/jumbo v2, "GalleryFragment"

    const-string/jumbo v3, "getThumbnailFromUri fail"

    invoke-static {v2, v3, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_6b

    .line 581
    if-eqz v1, :cond_40

    .line 582
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_40

    .line 576
    :catch_52
    move-exception v0

    move-object v1, v6

    .line 577
    :goto_54
    :try_start_54
    const-string/jumbo v2, "GalleryFragment"

    const-string/jumbo v3, "sql i/o exctption in thumbnail"

    invoke-static {v2, v3, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_6b

    .line 581
    if-eqz v1, :cond_40

    .line 582
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_40

    .line 580
    :catchall_63
    move-exception v0

    move-object v1, v6

    .line 581
    :goto_65
    if-eqz v1, :cond_6a

    .line 582
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 580
    :cond_6a
    throw v0

    :catchall_6b
    move-exception v0

    goto :goto_65

    .line 576
    :catch_6d
    move-exception v0

    goto :goto_54

    .line 578
    :catch_6f
    move-exception v0

    goto :goto_43
.end method

.method private aLU(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/common/m/a;
    .registers 5

    .prologue
    .line 555
    if-eqz p3, :cond_7

    .line 556
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/b/a;->aLT(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/common/m/a;

    move-result-object v0

    return-object v0

    .line 559
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/b/a;->aLV(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/common/m/a;

    move-result-object v0

    return-object v0
.end method

.method private aLV(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/common/m/a;
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 591
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v1

    .line 593
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    :try_start_f
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_f .. :try_end_12} :catch_48
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_12} :catch_37
    .catchall {:try_start_f .. :try_end_12} :catchall_59

    move-result-object v1

    .line 594
    if-eqz v1, :cond_31

    :try_start_15
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 596
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 595
    invoke-static {p1, v2, v3, v0, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 597
    invoke-static {p2, p1}, Lcom/android/common/h;->aoX(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 598
    const/4 v2, 0x0

    invoke-static {p2, v0, v2}, Lcom/android/common/m/a;->agS(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/common/m/a;
    :try_end_30
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_15 .. :try_end_30} :catch_63
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_30} :catch_65
    .catchall {:try_start_15 .. :try_end_30} :catchall_61

    move-result-object v6

    .line 606
    :cond_31
    if-eqz v1, :cond_36

    .line 607
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 610
    :cond_36
    :goto_36
    return-object v6

    .line 603
    :catch_37
    move-exception v0

    move-object v1, v6

    .line 604
    :goto_39
    :try_start_39
    const-string/jumbo v2, "GalleryFragment"

    const-string/jumbo v3, "getThumbnailFromUri fail"

    invoke-static {v2, v3, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_61

    .line 606
    if-eqz v1, :cond_36

    .line 607
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_36

    .line 601
    :catch_48
    move-exception v0

    move-object v1, v6

    .line 602
    :goto_4a
    :try_start_4a
    const-string/jumbo v2, "GalleryFragment"

    const-string/jumbo v3, "sql i/o exctption in thumbnail"

    invoke-static {v2, v3, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_61

    .line 606
    if-eqz v1, :cond_36

    .line 607
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_36

    .line 605
    :catchall_59
    move-exception v0

    move-object v1, v6

    .line 606
    :goto_5b
    if-eqz v1, :cond_60

    .line 607
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 605
    :cond_60
    throw v0

    :catchall_61
    move-exception v0

    goto :goto_5b

    .line 601
    :catch_63
    move-exception v0

    goto :goto_4a

    .line 603
    :catch_65
    move-exception v0

    goto :goto_39
.end method

.method private aLW()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axv:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 375
    :cond_b
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axr:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axr:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axr:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 373
    return-void
.end method

.method private aLX()V
    .registers 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axw:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 429
    iget-boolean v0, p0, Lcom/android/gallery3d/b/a;->axo:Z

    if-nez v0, :cond_11

    .line 430
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axk:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 427
    :cond_11
    return-void
.end method

.method private aLY(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 171
    const v0, 0x7f1000e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/FilmStripView;

    iput-object v0, p0, Lcom/android/gallery3d/b/a;->axm:Lcom/android/gallery3d/ui/FilmStripView;

    .line 172
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axm:Lcom/android/gallery3d/ui/FilmStripView;

    .line 173
    invoke-virtual {p0}, Lcom/android/gallery3d/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 172
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJs(I)V

    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axm:Lcom/android/gallery3d/ui/FilmStripView;

    iget-object v1, p0, Lcom/android/gallery3d/b/a;->axn:Lcom/android/gallery3d/b/d;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJr(Lcom/android/gallery3d/ui/g;)V

    .line 175
    new-instance v0, Lcom/android/gallery3d/a/j;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 176
    invoke-virtual {p0}, Lcom/android/gallery3d/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 175
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/j;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/gallery3d/b/a;->axi:Lcom/android/gallery3d/a/j;

    .line 177
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axm:Lcom/android/gallery3d/ui/FilmStripView;

    iget-object v1, p0, Lcom/android/gallery3d/b/a;->axi:Lcom/android/gallery3d/a/j;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJq(Lcom/android/gallery3d/a/p;)V

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    .line 179
    iget-object v1, p0, Lcom/android/gallery3d/b/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/storagemanager/f;->agE()Lcom/android/common/storagemanager/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/storagemanager/b;->agp()Ljava/util/ArrayList;

    move-result-object v1

    .line 178
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    .line 181
    iget-object v2, p0, Lcom/android/gallery3d/b/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/storagemanager/f;->agE()Lcom/android/common/storagemanager/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/storagemanager/b;->agq()Ljava/util/ArrayList;

    move-result-object v2

    .line 180
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    iget-object v2, p0, Lcom/android/gallery3d/b/a;->axi:Lcom/android/gallery3d/a/j;

    invoke-virtual {p0}, Lcom/android/gallery3d/b/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/gallery3d/a/j;->aIe(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 170
    return-void
.end method

.method private aLZ(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 392
    const v0, 0x7f1000ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/gallery3d/b/a;->axw:Landroid/view/ViewGroup;

    .line 393
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axw:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/gallery3d/b/k;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/b/k;-><init>(Lcom/android/gallery3d/b/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axw:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/gallery3d/b/l;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/b/l;-><init>(Lcom/android/gallery3d/b/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 391
    return-void
.end method

.method static synthetic aMA(Lcom/android/gallery3d/b/a;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/gallery3d/b/a;->aMe(I)V

    return-void
.end method

.method static synthetic aMB(Lcom/android/gallery3d/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/gallery3d/b/a;->aMf()V

    return-void
.end method

.method private aMa(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 186
    const v0, 0x7f1000ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/b/a;->axv:Landroid/view/View;

    .line 187
    const v0, 0x7f1000ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/b/a;->axj:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v0, 0x7f1000e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/b/a;->axg:Landroid/view/View;

    .line 189
    const v0, 0x7f1000e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/b/a;->axj:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v0, 0x7f1000e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/gallery3d/b/a;->axk:Landroid/view/ViewGroup;

    .line 191
    const v0, 0x7f1000e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/gallery3d/b/a;->axt:Lcom/android/common/ui/RotateLayout;

    .line 192
    invoke-direct {p0, p1}, Lcom/android/gallery3d/b/a;->aLZ(Landroid/view/View;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/android/gallery3d/b/a;->aLY(Landroid/view/View;)V

    .line 185
    return-void
.end method

.method private aMb()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 453
    iget-boolean v0, p0, Lcom/android/gallery3d/b/a;->axs:Z

    if-nez v0, :cond_6

    .line 454
    return-void

    .line 456
    :cond_6
    iput-boolean v1, p0, Lcom/android/gallery3d/b/a;->axs:Z

    .line 457
    invoke-direct {p0}, Lcom/android/gallery3d/b/a;->aLX()V

    .line 458
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agE()Lcom/android/common/storagemanager/b;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/android/gallery3d/b/a;->axi:Lcom/android/gallery3d/a/j;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/j;->aHV()Landroid/net/Uri;

    move-result-object v1

    .line 458
    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/b;->agn(Landroid/net/Uri;)Z

    .line 460
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axi:Lcom/android/gallery3d/a/j;

    invoke-virtual {p0}, Lcom/android/gallery3d/b/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/j;->aHT(Landroid/content/Context;)Z

    .line 461
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axi:Lcom/android/gallery3d/a/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/j;->aHY()I

    move-result v0

    if-gtz v0, :cond_32

    .line 462
    invoke-virtual {p0}, Lcom/android/gallery3d/b/a;->aLQ()V

    .line 452
    :cond_32
    return-void
.end method

.method private aMc()V
    .registers 3

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/android/gallery3d/b/a;->adv:Z

    if-eqz v0, :cond_5

    .line 510
    return-void

    .line 512
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/b/a;->aLS()Lcom/android/common/m/a;

    move-result-object v0

    .line 513
    invoke-virtual {p0}, Lcom/android/gallery3d/b/a;->all()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/m/c;->ahj(Lcom/android/common/m/a;)V

    .line 508
    return-void
.end method

.method private aMd(I)V
    .registers 7

    .prologue
    const/4 v4, 0x2

    .line 434
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axi:Lcom/android/gallery3d/a/j;

    invoke-virtual {p0}, Lcom/android/gallery3d/b/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/a/j;->aIc(Landroid/content/Context;I)V

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/b/a;->axs:Z

    .line 439
    iget-boolean v0, p0, Lcom/android/gallery3d/b/a;->axo:Z

    if-eqz v0, :cond_15

    .line 440
    invoke-direct {p0}, Lcom/android/gallery3d/b/a;->aMb()V

    .line 441
    return-void

    .line 443
    :cond_15
    invoke-direct {p0}, Lcom/android/gallery3d/b/a;->aMg()V

    .line 444
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axi:Lcom/android/gallery3d/a/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/j;->aHY()I

    move-result v0

    if-gtz v0, :cond_2c

    .line 447
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axr:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 448
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axr:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 433
    :cond_2c
    return-void
.end method

.method private aMe(I)V
    .registers 4

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axv:Landroid/view/View;

    const v1, 0x7f100071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 382
    iget-object v1, p0, Lcom/android/gallery3d/b/a;->axi:Lcom/android/gallery3d/a/j;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/a/j;->aHX(I)Lcom/android/gallery3d/a/h;

    move-result-object v1

    .line 383
    if-eqz v1, :cond_1b

    .line 384
    invoke-interface {v1}, Lcom/android/gallery3d/a/h;->aHx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    :goto_1a
    return-void

    .line 387
    :cond_1b
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a
.end method

.method private aMf()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axv:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 368
    :cond_a
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axr:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axr:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axr:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 366
    return-void
.end method

.method private aMg()V
    .registers 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axk:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axw:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 422
    return-void
.end method

.method static synthetic aMh(Lcom/android/gallery3d/b/a;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic aMi(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/b/c;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axh:Lcom/android/gallery3d/b/c;

    return-object v0
.end method

.method static synthetic aMj(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/a/j;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axi:Lcom/android/gallery3d/a/j;

    return-object v0
.end method

.method static synthetic aMk(Lcom/android/gallery3d/b/a;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axk:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic aMl(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/ui/FilmStripView;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axm:Lcom/android/gallery3d/ui/FilmStripView;

    return-object v0
.end method

.method static synthetic aMm(Lcom/android/gallery3d/b/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/gallery3d/b/a;->axo:Z

    return v0
.end method

.method static synthetic aMn(Lcom/android/gallery3d/b/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/gallery3d/b/a;->adv:Z

    return v0
.end method

.method static synthetic aMo(Lcom/android/gallery3d/b/a;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic aMp(Lcom/android/gallery3d/b/a;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axw:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic aMq(Lcom/android/gallery3d/b/a;Lcom/android/gallery3d/b/c;)Lcom/android/gallery3d/b/c;
    .registers 2

    iput-object p1, p0, Lcom/android/gallery3d/b/a;->axh:Lcom/android/gallery3d/b/c;

    return-object p1
.end method

.method static synthetic aMr(Lcom/android/gallery3d/b/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/gallery3d/b/a;->axl:Z

    return p1
.end method

.method static synthetic aMs(Lcom/android/gallery3d/b/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/gallery3d/b/a;->axo:Z

    return p1
.end method

.method static synthetic aMt(Lcom/android/gallery3d/b/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/gallery3d/b/a;->axq:Z

    return p1
.end method

.method static synthetic aMu(Lcom/android/gallery3d/b/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/gallery3d/b/a;->axs:Z

    return p1
.end method

.method static synthetic aMv(Lcom/android/gallery3d/b/a;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/gallery3d/b/a;->alm()I

    move-result v0

    return v0
.end method

.method static synthetic aMw(Lcom/android/gallery3d/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/gallery3d/b/a;->aLW()V

    return-void
.end method

.method static synthetic aMx(Lcom/android/gallery3d/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/gallery3d/b/a;->aLX()V

    return-void
.end method

.method static synthetic aMy(Lcom/android/gallery3d/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/gallery3d/b/a;->aMb()V

    return-void
.end method

.method static synthetic aMz(Lcom/android/gallery3d/b/a;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/gallery3d/b/a;->aMd(I)V

    return-void
.end method


# virtual methods
.method public aLQ()V
    .registers 3

    .prologue
    .line 479
    const-string/jumbo v0, "GalleryFragment"

    const-string/jumbo v1, "backToCamera"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-boolean v0, p0, Lcom/android/gallery3d/b/a;->axp:Z

    if-eqz v0, :cond_17

    .line 481
    const-string/jumbo v0, "GalleryFragment"

    const-string/jumbo v1, "fragment has remove!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void

    .line 485
    :cond_17
    invoke-direct {p0}, Lcom/android/gallery3d/b/a;->aLR()V

    .line 487
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axr:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axu:Lcom/android/gallery3d/b/b;

    invoke-interface {v0}, Lcom/android/gallery3d/b/b;->aBx()V

    .line 491
    invoke-direct {p0}, Lcom/android/gallery3d/b/a;->aMc()V

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/b/a;->axp:Z

    .line 478
    return-void
.end method

.method protected ajt(IZ)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 468
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->ajt(IZ)V

    .line 469
    iget-boolean v0, p0, Lcom/android/gallery3d/b/a;->adu:Z

    if-eqz v0, :cond_9

    return-void

    .line 470
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axt:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateLayout;->vn(IZ)V

    .line 471
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axi:Lcom/android/gallery3d/a/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/j;->aHY()I

    move-result v0

    if-gtz v0, :cond_17

    return-void

    .line 472
    :cond_17
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axm:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJf()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 473
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axm:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJc()Lcom/android/gallery3d/ui/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/h;->aKq()V

    .line 475
    :cond_28
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axr:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 467
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-boolean v0, p0, Lcom/android/gallery3d/b/a;->adu:Z

    if-eqz v0, :cond_6

    return v1

    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/android/gallery3d/b/a;->getView()Landroid/view/View;

    move-result-object v0

    .line 130
    if-nez v0, :cond_1a

    .line 131
    const-string/jumbo v0, "GalleryFragment"

    const-string/jumbo v1, "dispatchTouchEvent be called when view is null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 134
    :cond_1a
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_3a

    .line 141
    iget-boolean v0, p0, Lcom/android/gallery3d/b/a;->axs:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/gallery3d/b/a;->axq:Z

    if-eqz v0, :cond_30

    .line 151
    :cond_2b
    :goto_2b
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 142
    :cond_30
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axr:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    invoke-direct {p0}, Lcom/android/gallery3d/b/a;->aMb()V

    goto :goto_2b

    .line 146
    :cond_3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 147
    iget-boolean v0, p0, Lcom/android/gallery3d/b/a;->axl:Z

    if-eqz v0, :cond_2b

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axk:Landroid/view/ViewGroup;

    const v1, 0x7f020213

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_2b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 104
    iget-boolean v0, p0, Lcom/android/gallery3d/b/a;->adu:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_9
    const v0, 0x7f040034

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0}, Lcom/android/gallery3d/b/a;->aMa(Landroid/view/View;)V

    .line 108
    invoke-direct {p0}, Lcom/android/gallery3d/b/a;->aMf()V

    .line 110
    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 156
    sparse-switch p1, :sswitch_data_a

    .line 167
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 165
    :sswitch_8
    const/4 v0, 0x1

    return v0

    .line 156
    :sswitch_data_a
    .sparse-switch
        0x18 -> :sswitch_8
        0x19 -> :sswitch_8
        0x1b -> :sswitch_8
        0x4f -> :sswitch_8
        0x50 -> :sswitch_8
        0x55 -> :sswitch_8
        0x7e -> :sswitch_8
        0x7f -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/gallery3d/b/a;->adu:Z

    if-eqz v0, :cond_8

    .line 116
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 117
    return-void

    .line 119
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axh:Lcom/android/gallery3d/b/c;

    if-eqz v0, :cond_11

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/b/a;->axh:Lcom/android/gallery3d/b/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/b/c;->dismiss()V

    .line 122
    :cond_11
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 114
    return-void
.end method

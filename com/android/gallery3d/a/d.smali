.class public final Lcom/android/gallery3d/a/d;
.super Lcom/android/gallery3d/a/a;
.source "SourceFile"


# static fields
.field static final auX:Landroid/net/Uri;

.field static final auY:[Ljava/lang/String;


# instance fields
.field private auZ:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 520
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/a/d;->auX:Landroid/net/Uri;

    .line 534
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 535
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 536
    const-string/jumbo v1, "title"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 537
    const-string/jumbo v1, "mime_type"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 538
    const-string/jumbo v1, "datetaken"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 539
    const-string/jumbo v1, "date_modified"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 540
    const-string/jumbo v1, "_data"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 541
    const-string/jumbo v1, "width"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 542
    const-string/jumbo v1, "height"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 543
    const-string/jumbo v1, "resolution"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 544
    const-string/jumbo v1, "_size"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 545
    const-string/jumbo v1, "latitude"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 546
    const-string/jumbo v1, "longitude"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 547
    const-string/jumbo v1, "duration"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 534
    sput-object v0, Lcom/android/gallery3d/a/d;->auY:[Ljava/lang/String;

    .line 505
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDDJ)V
    .registers 22

    .prologue
    .line 557
    invoke-direct/range {p0 .. p17}, Lcom/android/gallery3d/a/a;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDD)V

    .line 559
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/android/gallery3d/a/d;->auZ:J

    .line 556
    return-void
.end method

.method static aHO(Landroid/database/Cursor;)Lcom/android/gallery3d/a/d;
    .registers 26

    .prologue
    .line 563
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 564
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 565
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 566
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 567
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 568
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 569
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 570
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 571
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 574
    :try_start_3d
    invoke-virtual {v13, v11}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_40} :catch_84

    .line 584
    const/16 v14, 0x18

    .line 583
    invoke-virtual {v13, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    .line 587
    if-eqz v12, :cond_4a

    if-nez v2, :cond_61

    .line 589
    :cond_4a
    const/16 v2, 0x12

    .line 588
    invoke-virtual {v13, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 590
    if-nez v2, :cond_a8

    const/4 v2, 0x0

    .line 592
    :goto_53
    const/16 v12, 0x13

    .line 591
    invoke-virtual {v13, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 593
    if-nez v12, :cond_ad

    const/4 v12, 0x0

    move/from16 v24, v12

    move v12, v2

    move/from16 v2, v24

    .line 595
    :cond_61
    :goto_61
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 596
    if-eqz v12, :cond_68

    if-nez v2, :cond_b7

    .line 598
    :cond_68
    const-string/jumbo v2, "CAM_LocalData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to retrieve dimension of video:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const/4 v2, 0x0

    return-object v2

    .line 575
    :catch_84
    move-exception v2

    .line 578
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 579
    const-string/jumbo v3, "CAM_LocalData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MediaMetadataRetriever.setDataSource() fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 580
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 579
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const/4 v2, 0x0

    return-object v2

    .line 590
    :cond_a8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_53

    .line 593
    :cond_ad
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move/from16 v24, v12

    move v12, v2

    move/from16 v2, v24

    goto :goto_61

    .line 601
    :cond_b7
    if-eqz v14, :cond_f7

    .line 602
    const-string/jumbo v13, "90"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_cb

    const-string/jumbo v13, "270"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 601
    if-eqz v13, :cond_f9

    :cond_cb
    move v13, v12

    move v12, v2

    .line 608
    :goto_cd
    const/16 v2, 0x9

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 609
    const/16 v2, 0xa

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    .line 610
    const/16 v2, 0xb

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 611
    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    .line 612
    new-instance v2, Lcom/android/gallery3d/a/d;

    invoke-direct/range {v2 .. v21}, Lcom/android/gallery3d/a/d;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDDJ)V

    .line 615
    return-object v2

    :cond_f7
    move v13, v2

    .line 602
    goto :goto_cd

    :cond_f9
    move v13, v2

    goto :goto_cd
.end method


# virtual methods
.method public aHB(I)Z
    .registers 3

    .prologue
    .line 636
    and-int/lit8 v0, p1, 0x3

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public aHC(I)Z
    .registers 3

    .prologue
    .line 631
    and-int/lit8 v0, p1, 0x3

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public aHH()Landroid/net/Uri;
    .registers 5

    .prologue
    .line 648
    sget-object v0, Lcom/android/gallery3d/a/d;->auX:Landroid/net/Uri;

    .line 649
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/gallery3d/a/d;->auB:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public aHI(Landroid/content/ContentResolver;)Lcom/android/gallery3d/a/h;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 660
    invoke-virtual {p0}, Lcom/android/gallery3d/a/d;->aHH()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/a/d;->auY:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 659
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 661
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 664
    invoke-static {v0}, Lcom/android/gallery3d/a/d;->aHO(Landroid/database/Cursor;)Lcom/android/gallery3d/a/d;

    move-result-object v0

    .line 665
    return-object v0

    .line 662
    :cond_1b
    return-object v3
.end method

.method public aHp(Landroid/content/Context;)Z
    .registers 8

    .prologue
    .line 641
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 642
    sget-object v1, Lcom/android/gallery3d/a/d;->auX:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/gallery3d/a/d;->auB:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 643
    invoke-super {p0, p1}, Lcom/android/gallery3d/a/a;->aHp(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected aHr(Landroid/widget/ImageView;IILandroid/content/ContentResolver;Lcom/android/gallery3d/a/p;)Lcom/android/gallery3d/a/f;
    .registers 7

    .prologue
    .line 712
    new-instance v0, Lcom/android/gallery3d/a/e;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/a/e;-><init>(Lcom/android/gallery3d/a/d;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method public aHy(Landroid/app/Activity;IILandroid/graphics/drawable/Drawable;Lcom/android/gallery3d/a/p;)Landroid/view/View;
    .registers 15

    .prologue
    const/16 v8, 0x11

    const/4 v1, -0x1

    const/4 v7, -0x2

    .line 674
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 675
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 678
    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/a/d;->aHq(Landroid/content/Context;Landroid/widget/ImageView;IILandroid/graphics/drawable/Drawable;Lcom/android/gallery3d/a/p;)Landroid/widget/ImageView;

    .line 682
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 683
    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 684
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 685
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 688
    new-instance v1, Lcom/android/gallery3d/a/s;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/a/s;-><init>(Lcom/android/gallery3d/a/d;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 698
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 699
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 700
    return-object v1
.end method

.method public aHz()I
    .registers 2

    .prologue
    .line 626
    const/4 v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Video:,data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/a/d;->auI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/a/d;->auH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 621
    const-string/jumbo v1, ","

    .line 620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 621
    iget v1, p0, Lcom/android/gallery3d/a/d;->auM:I

    .line 620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 621
    const-string/jumbo v1, "x"

    .line 620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 621
    iget v1, p0, Lcom/android/gallery3d/a/d;->auE:I

    .line 620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 621
    const-string/jumbo v1, ",date="

    .line 620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 621
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/gallery3d/a/d;->auD:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

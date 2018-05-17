.class Lcom/android/panorama/h;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field aPA:Z

.field aPB:I

.field aPC:J

.field aPD:Lcom/android/common/m/a;

.field final synthetic aPE:Lcom/android/panorama/d;

.field aPz:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/android/panorama/d;ZI)V
    .registers 7

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/panorama/h;->aPD:Lcom/android/common/m/a;

    .line 659
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/panorama/h;->aPB:I

    .line 664
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SaveOutputImageTask save image? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-static {p1}, Lcom/android/panorama/d;->bfD(Lcom/android/panorama/d;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 667
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    const-string/jumbo v1, "SaveOutputImageTask pic taking"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_3f
    iput-boolean p2, p0, Lcom/android/panorama/h;->aPA:Z

    .line 670
    iput p3, p0, Lcom/android/panorama/h;->aPB:I

    .line 671
    invoke-static {p1}, Lcom/android/panorama/d;->bfE(Lcom/android/panorama/d;)Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/panorama/h;->aPz:Landroid/location/Location;

    .line 662
    return-void
.end method

.method private bfS(Landroid/graphics/Rect;)Lcom/android/common/m/a;
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 725
    iget-object v0, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v0}, Lcom/android/panorama/d;->bfI(Lcom/android/panorama/d;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v0

    .line 727
    sget-object v1, Lcom/android/common/appService/CameraMember;->jy:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v1

    .line 726
    invoke-static {v0, v1}, Lcom/android/common/f;->aou(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 729
    new-array v2, v5, [I

    .line 730
    iget-object v3, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v3}, Lcom/android/panorama/d;->bfF(Lcom/android/panorama/d;)Lcom/morpho/core/MorphoPanoramaGP;

    move-result-object v3

    invoke-virtual {v3, v1, p1, v5, v2}, Lcom/morpho/core/MorphoPanoramaGP;->bui(Ljava/lang/String;Landroid/graphics/Rect;I[I)I

    move-result v2

    .line 731
    if-eqz v2, :cond_3f

    .line 732
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMorphoPanoramaGP saveOutputJpeg failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    return-object v4

    .line 735
    :cond_3f
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/panorama/h;->bfU(Ljava/lang/String;II)V

    .line 736
    iget-object v2, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v2}, Lcom/android/panorama/d;->bfy(Lcom/android/panorama/d;)Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_53

    return-object v4

    .line 737
    :cond_53
    iget-object v2, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v2}, Lcom/android/panorama/d;->bfy(Lcom/android/panorama/d;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/panorama/h;->bfT(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/m/a;->ahd(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/common/m/a;

    move-result-object v0

    return-object v0
.end method

.method private bfT(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/net/Uri;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 742
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 743
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string/jumbo v2, "_display_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string/jumbo v2, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 746
    const-string/jumbo v2, "mime_type"

    const-string/jumbo v3, "image/jpeg"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string/jumbo v2, "orientation"

    iget-object v3, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v3}, Lcom/android/panorama/d;->bfH(Lcom/android/panorama/d;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    const-string/jumbo v2, "_data"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string/jumbo v2, "width"

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 751
    const-string/jumbo v2, "height"

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 752
    iget-object v2, p0, Lcom/android/panorama/h;->aPz:Landroid/location/Location;

    if-eqz v2, :cond_95

    .line 753
    const-string/jumbo v2, "latitude"

    iget-object v3, p0, Lcom/android/panorama/h;->aPz:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 754
    const-string/jumbo v2, "longitude"

    iget-object v3, p0, Lcom/android/panorama/h;->aPz:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 757
    :cond_95
    iget-object v2, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v2}, Lcom/android/panorama/d;->bfy(Lcom/android/panorama/d;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a0} :catch_a2

    move-result-object v0

    .line 762
    :goto_a1
    return-object v0

    .line 758
    :catch_a2
    move-exception v0

    .line 759
    const-string/jumbo v2, "MorphoPanoramaAdapter"

    const-string/jumbo v3, "updateDataRes fail"

    invoke-static {v2, v3, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 760
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_a1
.end method

.method private bfU(Ljava/lang/String;II)V
    .registers 10

    .prologue
    const v4, 0x3c23d70a    # 0.01f

    .line 765
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 767
    const/4 v0, 0x1

    .line 768
    iget-object v2, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v2}, Lcom/android/panorama/d;->bfH(Lcom/android/panorama/d;)I

    move-result v2

    sparse-switch v2, :sswitch_data_a4

    .line 781
    :goto_12
    sget v2, Lcom/android/common/exif/o;->PS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 782
    sget v0, Lcom/android/common/exif/o;->PC:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 784
    sget v0, Lcom/android/common/exif/o;->PD:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 786
    sget v0, Lcom/android/common/exif/o;->PE:I

    new-instance v2, Lcom/android/common/exif/m;

    iget-object v3, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v3}, Lcom/android/panorama/d;->bfz(Lcom/android/panorama/d;)F

    move-result v3

    invoke-direct {v2, v3, v4}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 787
    sget v0, Lcom/android/common/exif/o;->PF:I

    new-instance v2, Lcom/android/common/exif/m;

    iget-object v3, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v3}, Lcom/android/panorama/d;->bfA(Lcom/android/panorama/d;)F

    move-result v3

    invoke-direct {v2, v3, v4}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 789
    sget v0, Lcom/android/common/exif/o;->PG:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 790
    sget v0, Lcom/android/common/exif/o;->PH:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 791
    iget-object v0, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v0}, Lcom/android/panorama/d;->bfv(Lcom/android/panorama/d;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 792
    sget v0, Lcom/android/common/exif/o;->PB:I

    iget-object v2, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v2}, Lcom/android/panorama/d;->bfv(Lcom/android/panorama/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 794
    :cond_82
    iget-object v0, p0, Lcom/android/panorama/h;->aPz:Landroid/location/Location;

    if-eqz v0, :cond_95

    .line 795
    iget-object v0, p0, Lcom/android/panorama/h;->aPz:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lcom/android/panorama/h;->aPz:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v1}, Lcom/android/common/h;->aoW(DDLandroid/util/SparseArray;)V

    .line 798
    :cond_95
    invoke-static {p1, v1}, Lcom/android/common/h;->aph(Ljava/lang/String;Landroid/util/SparseArray;)Ljava/io/ByteArrayOutputStream;

    .line 764
    return-void

    .line 770
    :sswitch_99
    const/4 v0, 0x6

    .line 771
    goto/16 :goto_12

    .line 773
    :sswitch_9c
    const/4 v0, 0x3

    .line 774
    goto/16 :goto_12

    .line 776
    :sswitch_9f
    const/16 v0, 0x8

    .line 777
    goto/16 :goto_12

    .line 768
    nop

    :sswitch_data_a4
    .sparse-switch
        0x5a -> :sswitch_99
        0xb4 -> :sswitch_9c
        0x10e -> :sswitch_9f
    .end sparse-switch
.end method


# virtual methods
.method protected varargs bfQ([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 7

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v0}, Lcom/android/panorama/d;->bfP(Lcom/android/panorama/d;)V

    .line 681
    iget-object v0, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v0}, Lcom/android/panorama/d;->bfF(Lcom/android/panorama/d;)Lcom/morpho/core/MorphoPanoramaGP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/morpho/core/MorphoPanoramaGP;->buf()I

    move-result v0

    .line 682
    iget-boolean v1, p0, Lcom/android/panorama/h;->aPA:Z

    if-eqz v1, :cond_60

    .line 683
    if-eqz v0, :cond_2f

    .line 684
    const-string/jumbo v1, "MorphoPanoramaAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "morhpo panorama gp end failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_2f
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 688
    iget-object v1, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v1}, Lcom/android/panorama/d;->bfF(Lcom/android/panorama/d;)Lcom/morpho/core/MorphoPanoramaGP;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/morpho/core/MorphoPanoramaGP;->bug(Landroid/graphics/Rect;)I

    move-result v1

    .line 689
    if-eqz v1, :cond_5a

    .line 690
    const-string/jumbo v2, "MorphoPanoramaAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "morhpo panorama gp getClippingRect failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :cond_5a
    invoke-direct {p0, v0}, Lcom/android/panorama/h;->bfS(Landroid/graphics/Rect;)Lcom/android/common/m/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/panorama/h;->aPD:Lcom/android/common/m/a;

    .line 695
    :cond_60
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bfR(Ljava/lang/Integer;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 710
    iget-object v0, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v0}, Lcom/android/panorama/d;->bfF(Lcom/android/panorama/d;)Lcom/morpho/core/MorphoPanoramaGP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/morpho/core/MorphoPanoramaGP;->buh()I

    .line 711
    iget-object v0, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v0, v2}, Lcom/android/panorama/d;->bfM(Lcom/android/panorama/d;Lcom/morpho/core/MorphoPanoramaGP;)Lcom/morpho/core/MorphoPanoramaGP;

    .line 713
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    const-string/jumbo v1, "SaveOutputImageTask onPostExecute"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/panorama/d;->bfL(Lcom/android/panorama/d;Z)Z

    .line 716
    iget-object v0, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v0}, Lcom/android/panorama/d;->bfG(Lcom/android/panorama/d;)Lcom/android/panorama/k;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 717
    iget-object v0, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v0}, Lcom/android/panorama/d;->bfG(Lcom/android/panorama/d;)Lcom/android/panorama/k;

    move-result-object v0

    iget-object v1, p0, Lcom/android/panorama/h;->aPD:Lcom/android/common/m/a;

    invoke-interface {v0, v1, v2}, Lcom/android/panorama/k;->beI(Lcom/android/common/m/a;[B)V

    .line 719
    :cond_31
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[MORTIME] PanoramaFinish time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/panorama/h;->aPC:J

    sub-long/2addr v2, v4

    .line 720
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 719
    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 678
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/panorama/h;->bfQ([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 709
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/panorama/h;->bfR(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 700
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    const-string/jumbo v1, "SaveOutputImageTask onPreExecute"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/panorama/h;->aPC:J

    .line 703
    iget-object v0, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v0}, Lcom/android/panorama/d;->bfG(Lcom/android/panorama/d;)Lcom/android/panorama/k;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 704
    iget-object v0, p0, Lcom/android/panorama/h;->aPE:Lcom/android/panorama/d;

    invoke-static {v0}, Lcom/android/panorama/d;->bfG(Lcom/android/panorama/d;)Lcom/android/panorama/k;

    move-result-object v0

    iget v1, p0, Lcom/android/panorama/h;->aPB:I

    invoke-interface {v0, v1}, Lcom/android/panorama/k;->beL(I)V

    .line 698
    :cond_22
    return-void
.end method

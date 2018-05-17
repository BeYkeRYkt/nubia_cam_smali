.class final Lcom/android/video/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/c;


# instance fields
.field final synthetic aHL:Lcom/android/video/d;


# direct methods
.method private constructor <init>(Lcom/android/video/d;)V
    .registers 2

    .prologue
    .line 995
    iput-object p1, p0, Lcom/android/video/h;->aHL:Lcom/android/video/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/video/d;Lcom/android/video/h;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/video/h;-><init>(Lcom/android/video/d;)V

    return-void
.end method

.method private aWP(Ljava/lang/String;Ljava/lang/String;JII)Landroid/content/ContentValues;
    .registers 14

    .prologue
    .line 1043
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1044
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const-string/jumbo v1, "_display_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string/jumbo v1, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1047
    const-string/jumbo v1, "mime_type"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-string/jumbo v1, "_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string/jumbo v1, "width"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1050
    const-string/jumbo v1, "height"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1051
    iget-object v1, p0, Lcom/android/video/h;->aHL:Lcom/android/video/d;

    invoke-static {v1}, Lcom/android/video/d;->aWq(Lcom/android/video/d;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v1

    .line 1052
    if-eqz v1, :cond_9f

    .line 1053
    const-string/jumbo v2, "latitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1054
    const-string/jumbo v2, "longitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1056
    :cond_9f
    return-object v0
.end method


# virtual methods
.method public W(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .registers 20

    .prologue
    .line 999
    const-string/jumbo v2, "VideoRecordManager"

    const-string/jumbo v3, "onPreviewDataCopy"

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v2, p0, Lcom/android/video/h;->aHL:Lcom/android/video/d;

    invoke-static {v2}, Lcom/android/video/d;->aWs(Lcom/android/video/d;)Lcom/android/video/e;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1001
    iget-object v2, p0, Lcom/android/video/h;->aHL:Lcom/android/video/d;

    invoke-static {v2}, Lcom/android/video/d;->aWs(Lcom/android/video/d;)Lcom/android/video/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/video/e;->aWL()V

    .line 1003
    :cond_1a
    iget-object v2, p0, Lcom/android/video/h;->aHL:Lcom/android/video/d;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/video/d;->aWx(Lcom/android/video/d;I)I

    .line 1004
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1005
    iget-object v2, p0, Lcom/android/video/h;->aHL:Lcom/android/video/d;

    invoke-static {v2}, Lcom/android/video/d;->aWC(Lcom/android/video/d;)Ljava/lang/String;

    move-result-object v4

    .line 1006
    invoke-static {v6, v7}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v5

    .line 1007
    iget-object v2, p0, Lcom/android/video/h;->aHL:Lcom/android/video/d;

    invoke-static {v2}, Lcom/android/video/d;->aWw(Lcom/android/video/d;)I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, p2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 1008
    iget-object v3, p0, Lcom/android/video/h;->aHL:Lcom/android/video/d;

    invoke-static {v3}, Lcom/android/video/d;->aWv(Lcom/android/video/d;)I

    move-result v3

    int-to-float v3, v3

    move/from16 v0, p3

    int-to-float v8, v0

    div-float/2addr v3, v8

    .line 1009
    div-int/lit8 v8, p2, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, p3, 0x2

    int-to-float v9, v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1011
    iget-object v8, p0, Lcom/android/video/h;->aHL:Lcom/android/video/d;

    invoke-static {v8}, Lcom/android/video/d;->aWq(Lcom/android/video/d;)Lcom/android/common/appService/W;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/common/appService/W;->qv()I

    move-result v8

    .line 1012
    int-to-float v9, v8

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1013
    iget-object v9, p0, Lcom/android/video/h;->aHL:Lcom/android/video/d;

    invoke-static {v9}, Lcom/android/video/d;->aWz(Lcom/android/video/d;)Z

    move-result v9

    if-eqz v9, :cond_6f

    iget-object v9, p0, Lcom/android/video/h;->aHL:Lcom/android/video/d;

    invoke-static {v9}, Lcom/android/video/d;->aWA(Lcom/android/video/d;)Z

    move-result v9

    if-eqz v9, :cond_d5

    .line 1017
    :cond_6f
    :goto_6f
    rem-int/lit16 v8, v8, 0xb4

    if-nez v8, :cond_df

    .line 1018
    move/from16 v0, p2

    int-to-float v8, v0

    mul-float/2addr v2, v8

    float-to-int v8, v2

    .line 1019
    move/from16 v0, p3

    int-to-float v2, v0

    mul-float/2addr v2, v3

    float-to-int v9, v2

    :goto_7d
    move-object v3, p0

    .line 1024
    invoke-direct/range {v3 .. v9}, Lcom/android/video/h;->aWP(Ljava/lang/String;Ljava/lang/String;JII)Landroid/content/ContentValues;

    move-result-object v12

    .line 1026
    new-instance v2, Lcom/android/common/b/b;

    .line 1027
    iget-object v3, p0, Lcom/android/video/h;->aHL:Lcom/android/video/d;

    invoke-static {v3}, Lcom/android/video/d;->aWq(Lcom/android/video/d;)Lcom/android/common/appService/W;

    move-result-object v3

    .line 1033
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1034
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1035
    iget-object v4, p0, Lcom/android/video/h;->aHL:Lcom/android/video/d;

    invoke-static {v4, v8, v9}, Lcom/android/video/d;->aWy(Lcom/android/video/d;II)Landroid/util/SparseArray;

    move-result-object v11

    .line 1032
    const/16 v8, 0x3c

    .line 1037
    const/4 v13, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object v9, v14

    .line 1026
    invoke-direct/range {v2 .. v13}, Lcom/android/common/b/b;-><init>(Lcom/android/common/appService/W;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;ILjava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/content/ContentValues;Lcom/android/common/b/f;)V

    .line 1038
    iget-object v3, p0, Lcom/android/video/h;->aHL:Lcom/android/video/d;

    invoke-static {v3}, Lcom/android/video/d;->aWq(Lcom/android/video/d;)Lcom/android/common/appService/W;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 998
    return-void

    .line 1014
    :cond_d5
    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_6f

    .line 1021
    :cond_df
    move/from16 v0, p3

    int-to-float v8, v0

    mul-float/2addr v3, v8

    float-to-int v8, v3

    .line 1022
    move/from16 v0, p2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v9, v2

    goto :goto_7d
.end method

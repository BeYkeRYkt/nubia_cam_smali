.class public Lcn/nubia/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private bpK:Lcn/nubia/b/a;

.field private bpL:Lcom/android/common/appService/W;

.field private bpM:I

.field private bpN:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(ILcom/android/common/appService/W;Lcn/nubia/b/a;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcn/nubia/b/k;->bpL:Lcom/android/common/appService/W;

    .line 52
    iput-object v0, p0, Lcn/nubia/b/k;->bpN:Landroid/graphics/Matrix;

    .line 53
    iput-object v0, p0, Lcn/nubia/b/k;->bpK:Lcn/nubia/b/a;

    .line 56
    iput-object p2, p0, Lcn/nubia/b/k;->bpL:Lcom/android/common/appService/W;

    .line 57
    iput p1, p0, Lcn/nubia/b/k;->bpM:I

    .line 58
    iput-object p3, p0, Lcn/nubia/b/k;->bpK:Lcn/nubia/b/a;

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/b/k;->bpN:Landroid/graphics/Matrix;

    .line 55
    return-void
.end method

.method private bMh(Landroid/hardware/Camera$Size;IJLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 14

    .prologue
    .line 118
    rem-int/lit16 v0, p2, 0xb4

    if-nez v0, :cond_b2

    .line 119
    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    .line 120
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    .line 126
    :goto_8
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 127
    const-string/jumbo v3, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    const-string/jumbo v3, "_data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string/jumbo v3, "_display_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v3, "mime_type"

    const-string/jumbo v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v3, "orientation"

    iget-object v4, p0, Lcn/nubia/b/k;->bpL:Lcom/android/common/appService/W;

    invoke-virtual {v4}, Lcom/android/common/appService/W;->pV()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string/jumbo v3, "width"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string/jumbo v1, "height"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    iget-object v0, p0, Lcn/nubia/b/k;->bpL:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_b1

    .line 139
    const-string/jumbo v1, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 140
    const-string/jumbo v1, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 142
    :cond_b1
    return-object v2

    .line 122
    :cond_b2
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    .line 123
    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    goto/16 :goto_8
.end method

.method private bMi(I)Landroid/util/SparseArray;
    .registers 7

    .prologue
    .line 147
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 148
    iget-object v1, p0, Lcn/nubia/b/k;->bpL:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v1

    .line 149
    const-string/jumbo v2, "pref_bigaperture_focus_length"

    const/high16 v3, 0x40000000    # 2.0f

    .line 148
    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 150
    sget v2, Lcom/android/common/exif/o;->PE:I

    new-instance v3, Lcom/android/common/exif/m;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const v4, 0x3c23d70a    # 0.01f

    invoke-direct {v3, v1, v4}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    sget v1, Lcom/android/common/exif/o;->PC:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget v1, Lcom/android/common/exif/o;->PD:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    sget v1, Lcom/android/common/exif/o;->PS:I

    invoke-static {p1}, Lcom/android/common/c;->aoc(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    return-object v0
.end method

.method private bMj()Ljava/lang/String;
    .registers 4

    .prologue
    .line 102
    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/b/k;->bpL:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v1

    invoke-static {v1}, Lcom/android/common/appService/CameraMember;->me(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_34

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 107
    :cond_34
    return-object v0
.end method

.method private bMk(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 111
    invoke-static {p1, p2}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bMl(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcn/nubia/b/k;->bpL:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bMm()Z
    .registers 5

    .prologue
    .line 160
    const v0, 0x7f0a0476

    invoke-direct {p0, v0}, Lcn/nubia/b/k;->bMl(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcn/nubia/b/k;->bpL:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v1

    const-string/jumbo v2, "pref_refocus_after_capture"

    const v3, 0x7f0a0477

    invoke-direct {p0, v3}, Lcn/nubia/b/k;->bMl(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic bMn(Lcn/nubia/b/k;)Lcn/nubia/b/a;
    .registers 2

    iget-object v0, p0, Lcn/nubia/b/k;->bpK:Lcn/nubia/b/a;

    return-object v0
.end method

.method static synthetic bMo(Lcn/nubia/b/k;)Z
    .registers 2

    invoke-direct {p0}, Lcn/nubia/b/k;->bMm()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 21

    .prologue
    .line 65
    if-eqz p1, :cond_b7

    .line 66
    const-string/jumbo v2, "BigAperturePostViewCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "postview onPictureTaken mCameraId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/b/k;->bpM:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/b/k;->bpL:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 69
    iget v15, v4, Landroid/hardware/Camera$Size;->width:I

    .line 70
    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    .line 71
    invoke-direct/range {p0 .. p0}, Lcn/nubia/b/k;->bMj()Ljava/lang/String;

    move-result-object v8

    .line 72
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/b/k;->bpL:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pS()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcn/nubia/b/k;->bMk(J)Ljava/lang/String;

    move-result-object v9

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/b/k;->bpL:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pV()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcn/nubia/b/k;->bMi(I)Landroid/util/SparseArray;

    move-result-object v17

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/b/k;->bpL:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->qv()I

    move-result v5

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/b/k;->bpL:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pS()J

    move-result-wide v6

    move-object/from16 v3, p0

    .line 75
    invoke-direct/range {v3 .. v9}, Lcn/nubia/b/k;->bMh(Landroid/hardware/Camera$Size;IJLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v13

    .line 81
    new-instance v2, Lcom/android/common/b/h;

    .line 82
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/b/k;->bpL:Lcom/android/common/appService/W;

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/b/k;->bpL:Lcom/android/common/appService/W;

    invoke-virtual {v4}, Lcom/android/common/appService/W;->pV()I

    move-result v10

    .line 85
    new-instance v14, Lcn/nubia/b/l;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcn/nubia/b/l;-><init>(Lcn/nubia/b/k;)V

    .line 84
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v4, p1

    move v5, v15

    move/from16 v6, v16

    move-object/from16 v7, v17

    .line 81
    invoke-direct/range {v2 .. v14}, Lcom/android/common/b/h;-><init>(Lcom/android/common/appService/W;[BIILandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/ContentValues;Lcom/android/common/b/f;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/b/k;->bpL:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    move-result-object v2

    .line 87
    sget-object v3, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaE:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    if-eq v2, v3, :cond_b6

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/b/k;->bpK:Lcn/nubia/b/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcn/nubia/b/a;->bKY(Landroid/net/Uri;Z)V

    .line 64
    :cond_b6
    :goto_b6
    return-void

    .line 92
    :cond_b7
    const-string/jumbo v2, "MonoCameraConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "postview received. data is null; cameraId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/b/k;->bpM:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b6
.end method

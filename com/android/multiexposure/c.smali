.class public abstract Lcom/android/multiexposure/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field protected aqb:I

.field protected aqc:I

.field public aqd:Lcom/android/multiexposure/MultiExposure;

.field protected aqe:Lcom/android/common/appService/W;

.field protected aqf:Landroid/graphics/Bitmap;

.field protected aqg:Ljava/lang/Thread;

.field protected aqh:Lcom/android/multiexposure/m;

.field protected aqi:I

.field public aqj:I

.field protected aqk:I

.field protected aql:Ljava/lang/Thread;

.field protected aqm:[B

.field protected aqn:Landroid/net/Uri;

.field public aqo:[B

.field protected aqp:I

.field protected aqq:I

.field protected aqr:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/multiexposure/c;->aqh:Lcom/android/multiexposure/m;

    .line 48
    iput v1, p0, Lcom/android/multiexposure/c;->aqb:I

    .line 49
    iput v1, p0, Lcom/android/multiexposure/c;->aqc:I

    .line 55
    iput v1, p0, Lcom/android/multiexposure/c;->aqj:I

    .line 56
    iput v1, p0, Lcom/android/multiexposure/c;->aqi:I

    .line 57
    iput v1, p0, Lcom/android/multiexposure/c;->aqk:I

    .line 65
    iput-object p1, p0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    .line 66
    new-instance v0, Lcom/android/multiexposure/MultiExposure;

    invoke-direct {v0}, Lcom/android/multiexposure/MultiExposure;-><init>()V

    iput-object v0, p0, Lcom/android/multiexposure/c;->aqd:Lcom/android/multiexposure/MultiExposure;

    .line 64
    return-void
.end method

.method private aCi(I)V
    .registers 5

    .prologue
    .line 69
    iput p1, p0, Lcom/android/multiexposure/c;->aqj:I

    .line 70
    const-string/jumbo v0, "BaseMultiExposure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public abstract aBT()V
.end method

.method aBU([B)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 392
    invoke-virtual {p0, p1}, Lcom/android/multiexposure/c;->aCf([B)V

    .line 393
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqh:Lcom/android/multiexposure/m;

    iget-object v1, p0, Lcom/android/multiexposure/c;->aqn:Landroid/net/Uri;

    invoke-interface {v0, p1, v1}, Lcom/android/multiexposure/m;->aCx([BLandroid/net/Uri;)V

    .line 394
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqf:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    .line 395
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqf:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 396
    iput-object v2, p0, Lcom/android/multiexposure/c;->aqf:Landroid/graphics/Bitmap;

    .line 398
    :cond_16
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqh:Lcom/android/multiexposure/m;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/multiexposure/m;->aCw(Z)V

    .line 391
    return-void
.end method

.method public aBV([B)V
    .registers 2

    .prologue
    .line 226
    return-void
.end method

.method public aBW([B)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqo:[B

    if-eqz v0, :cond_7

    .line 256
    iput-object v1, p0, Lcom/android/multiexposure/c;->aqo:[B

    .line 258
    :cond_7
    iput-object p1, p0, Lcom/android/multiexposure/c;->aqo:[B

    .line 254
    return-void
.end method

.method public aBX()V
    .registers 5

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqg:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    .line 308
    :try_start_4
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqg:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_9} :catch_a

    .line 305
    :cond_9
    :goto_9
    return-void

    .line 309
    :catch_a
    move-exception v0

    .line 310
    const-string/jumbo v1, "BaseMultiExposure"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitPutDataThread join "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public aBY()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/android/multiexposure/c;->aqi:I

    return v0
.end method

.method public aBZ()[B
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqo:[B

    return-object v0
.end method

.method public aCa()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lcom/android/multiexposure/c;->aqc:I

    return v0
.end method

.method public aCb()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/android/multiexposure/c;->aqb:I

    return v0
.end method

.method public aCc()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/android/multiexposure/c;->aqp:I

    return v0
.end method

.method public aCd()Z
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqf:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public aCe()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqf:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 237
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqf:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 238
    iput-object v1, p0, Lcom/android/multiexposure/c;->aqf:Landroid/graphics/Bitmap;

    .line 235
    :cond_c
    return-void
.end method

.method public aCf([B)V
    .registers 16

    .prologue
    const v12, 0x3c23d70a    # 0.01f

    .line 150
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    if-nez v0, :cond_17

    .line 151
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    if-nez v0, :cond_21

    .line 152
    :cond_17
    const-string/jumbo v0, "BaseMultiExposure"

    const-string/jumbo v1, "saveFinalJpegData return"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void

    .line 155
    :cond_21
    const-string/jumbo v0, "BaseMultiExposure"

    const-string/jumbo v1, "saveFinalJpegData"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 157
    invoke-static {v0, v1}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v2

    .line 158
    iget-object v3, p0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pF()I

    move-result v3

    invoke-static {v3}, Lcom/android/common/f;->aol(I)Ljava/lang/String;

    move-result-object v4

    .line 160
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 161
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 162
    array-length v5, p1

    const/4 v6, 0x0

    invoke-static {p1, v6, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 163
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 164
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 165
    iget-object v3, p0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v8

    .line 168
    iget-object v3, p0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/cameradevice/p;->Ln()F

    move-result v6

    .line 169
    iget-object v3, p0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pI()F

    move-result v9

    .line 170
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 171
    sget v10, Lcom/android/common/exif/o;->PC:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/common/custom/x;->aem()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    sget v10, Lcom/android/common/exif/o;->PD:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/common/custom/x;->aen()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    sget v10, Lcom/android/common/exif/o;->PE:I

    new-instance v11, Lcom/android/common/exif/m;

    invoke-direct {v11, v9, v12}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v3, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    sget v9, Lcom/android/common/exif/o;->PF:I

    new-instance v10, Lcom/android/common/exif/m;

    invoke-direct {v10, v6, v12}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v3, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    sget v6, Lcom/android/common/exif/o;->PS:I

    iget v9, p0, Lcom/android/multiexposure/c;->aqk:I

    invoke-static {v9}, Lcom/android/common/exif/o;->QR(I)S

    move-result v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    sget v6, Lcom/android/common/exif/o;->PG:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    sget v6, Lcom/android/common/exif/o;->PH:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    if-eqz v8, :cond_d0

    .line 179
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13, v3}, Lcom/android/common/h;->aoW(DDLandroid/util/SparseArray;)V

    .line 182
    :cond_d0
    new-instance v6, Landroid/content/ContentValues;

    const/16 v9, 0x9

    invoke-direct {v6, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 183
    const-string/jumbo v9, "title"

    invoke-virtual {v6, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string/jumbo v9, "_display_name"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string/jumbo v9, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    const-string/jumbo v0, "mime_type"

    const-string/jumbo v1, "image/jpeg"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string/jumbo v0, "orientation"

    iget v1, p0, Lcom/android/multiexposure/c;->aqk:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string/jumbo v0, "_data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, ".jpg"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v0, "_size"

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string/jumbo v0, "width"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string/jumbo v0, "height"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    if-eqz v8, :cond_178

    .line 194
    const-string/jumbo v0, "latitude"

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 195
    const-string/jumbo v0, "longitude"

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 198
    :cond_178
    new-instance v0, Lcom/android/common/b/c;

    iget-object v1, p0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 204
    iget v7, p0, Lcom/android/multiexposure/c;->aqk:I

    .line 205
    new-instance v8, Lcom/android/multiexposure/d;

    invoke-direct {v8, p0}, Lcom/android/multiexposure/d;-><init>(Lcom/android/multiexposure/c;)V

    move-object v2, p1

    .line 198
    invoke-direct/range {v0 .. v8}, Lcom/android/common/b/c;-><init>(Lcom/android/common/appService/W;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V

    .line 206
    iget-object v1, p0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 149
    return-void
.end method

.method public aCg(I)V
    .registers 2

    .prologue
    .line 73
    iput p1, p0, Lcom/android/multiexposure/c;->aqk:I

    .line 72
    return-void
.end method

.method public aCh(Lcom/android/multiexposure/m;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/multiexposure/c;->aqh:Lcom/android/multiexposure/m;

    .line 80
    return-void
.end method

.method public aCj()V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    iget-object v1, p0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/common/appService/k;->jG(Landroid/hardware/Camera$PreviewCallback;I)V

    .line 84
    return-void
.end method

.method public aCk()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/appService/k;->jF(Landroid/hardware/Camera$PreviewCallback;)V

    .line 88
    return-void
.end method

.method public aCl()V
    .registers 1

    .prologue
    .line 118
    return-void
.end method

.method public aCm()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqh:Lcom/android/multiexposure/m;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/multiexposure/m;->aCv(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 100
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/multiexposure/c;->aqr:I

    .line 101
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 102
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/multiexposure/c;->aqq:I

    .line 103
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qv()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/multiexposure/c;->aCi(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/multiexposure/c;->aBT()V

    .line 105
    invoke-virtual {p0}, Lcom/android/multiexposure/c;->aCj()V

    .line 96
    return-void
.end method

.method public aCn()V
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/multiexposure/c;->aql:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    .line 406
    :try_start_4
    iget-object v0, p0, Lcom/android/multiexposure/c;->aql:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_9} :catch_a

    .line 403
    :cond_9
    :goto_9
    return-void

    .line 407
    :catch_a
    move-exception v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9
.end method

.method varargs doInBackground([Ljava/lang/Object;)[B
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 380
    aget-object v0, p1, v1

    if-eqz v0, :cond_20

    .line 381
    iget-object v2, p0, Lcom/android/multiexposure/c;->aqd:Lcom/android/multiexposure/MultiExposure;

    aget-object v0, p1, v1

    check-cast v0, [B

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x2

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/multiexposure/MultiExposure;->putData([BII)V

    .line 383
    :cond_20
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqd:Lcom/android/multiexposure/MultiExposure;

    invoke-virtual {v0}, Lcom/android/multiexposure/MultiExposure;->getFinalData()[B

    move-result-object v0

    .line 384
    return-object v0
.end method

.method onPreExecute()V
    .registers 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqh:Lcom/android/multiexposure/m;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/multiexposure/m;->aCw(Z)V

    .line 368
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 3

    .prologue
    .line 229
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqd:Lcom/android/multiexposure/MultiExposure;

    if-eqz v0, :cond_9

    .line 144
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqd:Lcom/android/multiexposure/MultiExposure;

    invoke-virtual {v0}, Lcom/android/multiexposure/MultiExposure;->release()V

    .line 142
    :cond_9
    return-void
.end method

.method public setParameter(I)V
    .registers 4

    .prologue
    .line 135
    if-ltz p1, :cond_6

    const/16 v0, 0x64

    if-le p1, v0, :cond_7

    .line 136
    :cond_6
    return-void

    .line 137
    :cond_7
    iput p1, p0, Lcom/android/multiexposure/c;->aqp:I

    .line 138
    iget-object v0, p0, Lcom/android/multiexposure/c;->aqd:Lcom/android/multiexposure/MultiExposure;

    iget v1, p0, Lcom/android/multiexposure/c;->aqp:I

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/MultiExposure;->setParameter(I)V

    .line 134
    return-void
.end method

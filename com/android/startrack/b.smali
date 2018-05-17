.class public Lcom/android/startrack/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private aQT:Z

.field private aQU:Lcom/android/common/appService/W;

.field private aQV:Z

.field private aQW:Ljava/nio/ByteBuffer;

.field private aQX:Lcom/android/common/CameraBufferManager;

.field private aQY:Lcom/android/common/exif/o;

.field private aQZ:Z

.field private aRa:Z

.field private aRb:I

.field private aRc:[B

.field private aRd:I

.field private aRe:Landroid/location/Location;

.field private aRf:I

.field private aRg:Lcom/android/startrack/h;

.field private aRh:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/startrack/h;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/android/startrack/b;->aQV:Z

    .line 47
    iput-object v0, p0, Lcom/android/startrack/b;->aRc:[B

    .line 48
    iput-boolean v1, p0, Lcom/android/startrack/b;->aQZ:Z

    .line 49
    iput v1, p0, Lcom/android/startrack/b;->aRh:I

    .line 50
    iput v1, p0, Lcom/android/startrack/b;->aRb:I

    .line 52
    iput-object v0, p0, Lcom/android/startrack/b;->aQX:Lcom/android/common/CameraBufferManager;

    .line 55
    iput v1, p0, Lcom/android/startrack/b;->aRf:I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/startrack/b;->aQT:Z

    .line 58
    new-instance v0, Lcom/android/common/exif/o;

    invoke-direct {v0}, Lcom/android/common/exif/o;-><init>()V

    iput-object v0, p0, Lcom/android/startrack/b;->aQY:Lcom/android/common/exif/o;

    .line 59
    iput v1, p0, Lcom/android/startrack/b;->aRd:I

    .line 60
    iput-boolean v1, p0, Lcom/android/startrack/b;->aRa:Z

    .line 73
    iput v1, p0, Lcom/android/startrack/b;->aRh:I

    .line 74
    iput v1, p0, Lcom/android/startrack/b;->aRb:I

    .line 75
    iput-boolean v1, p0, Lcom/android/startrack/b;->aQZ:Z

    .line 76
    iput-object p1, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    .line 77
    new-instance v0, Lcom/android/common/CameraBufferManager;

    invoke-direct {v0}, Lcom/android/common/CameraBufferManager;-><init>()V

    iput-object v0, p0, Lcom/android/startrack/b;->aQX:Lcom/android/common/CameraBufferManager;

    .line 78
    iput v1, p0, Lcom/android/startrack/b;->aRf:I

    .line 79
    iput-object p2, p0, Lcom/android/startrack/b;->aRg:Lcom/android/startrack/h;

    .line 80
    iget-object v0, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/startrack/b;->aRe:Landroid/location/Location;

    .line 81
    invoke-virtual {p0}, Lcom/android/startrack/b;->start()V

    .line 72
    return-void
.end method

.method private bhA()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/android/startrack/b;->aQX:Lcom/android/common/CameraBufferManager;

    if-eqz v0, :cond_c

    .line 306
    iget-object v0, p0, Lcom/android/startrack/b;->aQX:Lcom/android/common/CameraBufferManager;

    invoke-virtual {v0}, Lcom/android/common/CameraBufferManager;->releaseBrightnessBuffer()V

    .line 307
    iput-object v1, p0, Lcom/android/startrack/b;->aQX:Lcom/android/common/CameraBufferManager;

    .line 304
    :cond_c
    return-void
.end method

.method private bhB()V
    .registers 13

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/startrack/b;->aQT:Z

    if-eqz v0, :cond_95

    .line 191
    const-string/jumbo v0, "StarTrackComposeThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save process image num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/startrack/b;->aRf:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/startrack/b;->aRg:Lcom/android/startrack/h;

    iget-object v3, v0, Lcom/android/startrack/h;->aRo:Ljava/lang/String;

    .line 193
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_34

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 197
    :cond_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 198
    invoke-static {v4, v5}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v2

    .line 199
    iget-object v0, p0, Lcom/android/startrack/b;->aRc:[B

    invoke-static {v0}, Lcom/android/common/c;->aob([B)I

    move-result v10

    .line 200
    iget-object v0, p0, Lcom/android/startrack/b;->aRc:[B

    array-length v0, v0

    int-to-long v6, v0

    .line 201
    invoke-direct {p0}, Lcom/android/startrack/b;->bhu()Landroid/util/SparseArray;

    move-result-object v0

    .line 207
    iget v8, p0, Lcom/android/startrack/b;->aRh:I

    .line 208
    iget v9, p0, Lcom/android/startrack/b;->aRb:I

    move-object v1, p0

    .line 202
    invoke-direct/range {v1 .. v10}, Lcom/android/startrack/b;->bht(Ljava/lang/String;Ljava/lang/String;JJIII)Landroid/content/ContentValues;

    move-result-object v9

    .line 210
    new-instance v1, Lcom/android/common/b/c;

    .line 211
    iget-object v4, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    .line 212
    iget-object v5, p0, Lcom/android/startrack/b;->aRc:[B

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 218
    new-instance v11, Lcom/android/startrack/c;

    const/4 v2, 0x0

    invoke-direct {v11, p0, v2}, Lcom/android/startrack/c;-><init>(Lcom/android/startrack/b;Lcom/android/startrack/c;)V

    move-object v3, v1

    move-object v6, v0

    .line 210
    invoke-direct/range {v3 .. v11}, Lcom/android/common/b/c;-><init>(Lcom/android/common/appService/W;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V

    .line 219
    iget-object v0, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 189
    :cond_95
    return-void
.end method

.method private bhC([B)V
    .registers 15

    .prologue
    const/4 v12, 0x0

    .line 312
    const-string/jumbo v0, "StarTrackComposeThread"

    const-string/jumbo v1, "saveStarTrackImage"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/startrack/b;->aRg:Lcom/android/startrack/h;

    iget-object v3, v0, Lcom/android/startrack/h;->aRp:Ljava/lang/String;

    .line 315
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 317
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 319
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 320
    invoke-static {v4, v5}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-direct {p0, p1}, Lcom/android/startrack/b;->bhr([B)[B

    move-result-object v0

    .line 322
    invoke-direct {p0, v0}, Lcom/android/startrack/b;->bhE([B)[B

    move-result-object v11

    .line 323
    array-length v0, v11

    int-to-long v6, v0

    .line 329
    iget v8, p0, Lcom/android/startrack/b;->aRh:I

    .line 330
    iget v9, p0, Lcom/android/startrack/b;->aRb:I

    .line 331
    iget v10, p0, Lcom/android/startrack/b;->aRd:I

    move-object v1, p0

    .line 324
    invoke-direct/range {v1 .. v10}, Lcom/android/startrack/b;->bht(Ljava/lang/String;Ljava/lang/String;JJIII)Landroid/content/ContentValues;

    move-result-object v6

    .line 332
    new-instance v0, Lcom/android/common/b/c;

    .line 333
    iget-object v1, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 340
    new-instance v8, Lcom/android/startrack/i;

    iget-object v2, p0, Lcom/android/startrack/b;->aRg:Lcom/android/startrack/h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v8, v2}, Lcom/android/startrack/i;-><init>(Lcom/android/startrack/h;)V

    .line 339
    const/4 v7, 0x0

    move-object v2, v11

    move-object v3, v12

    .line 332
    invoke-direct/range {v0 .. v8}, Lcom/android/common/b/c;-><init>(Lcom/android/common/appService/W;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V

    .line 341
    iget-object v1, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    move-result-object v0

    .line 343
    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaF:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    if-ne v0, v1, :cond_8c

    .line 344
    iget-object v0, p0, Lcom/android/startrack/b;->aRg:Lcom/android/startrack/h;

    iget-object v0, v0, Lcom/android/startrack/h;->aRn:Lcom/android/startrack/j;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Lcom/android/startrack/j;->sendEmptyMessage(I)Z

    .line 311
    :cond_8c
    return-void
.end method

.method private bhD(Landroid/util/SparseArray;)V
    .registers 5

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Nl()Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    .line 250
    :cond_14
    const-string/jumbo v1, "ISO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2c

    .line 251
    sget v1, Lcom/android/common/exif/o;->PJ:I

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    :goto_2b
    return-void

    .line 253
    :cond_2c
    sget v1, Lcom/android/common/exif/o;->PJ:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2b
.end method

.method private bhE([B)[B
    .registers 8

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/startrack/b;->aRf:I

    mul-int/2addr v0, v1

    .line 376
    iget-object v1, p0, Lcom/android/startrack/b;->aQY:Lcom/android/common/exif/o;

    sget v2, Lcom/android/common/exif/o;->PK:I

    new-instance v3, Lcom/android/common/exif/m;

    int-to-float v0, v0

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v3, v0, v4}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v1, v2, v3}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/android/startrack/b;->aQY:Lcom/android/common/exif/o;

    invoke-virtual {v1, v0}, Lcom/android/common/exif/o;->QQ(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 378
    iget-object v0, p0, Lcom/android/startrack/b;->aRe:Landroid/location/Location;

    if-eqz v0, :cond_3c

    .line 379
    iget-object v0, p0, Lcom/android/startrack/b;->aQY:Lcom/android/common/exif/o;

    iget-object v1, p0, Lcom/android/startrack/b;->aRe:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v1, p0, Lcom/android/startrack/b;->aRe:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/common/exif/o;->Rb(DD)Z

    .line 381
    :cond_3c
    iget-object v0, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Nl()Ljava/lang/String;

    move-result-object v0

    .line 382
    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 383
    const-string/jumbo v1, "ISO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_77

    .line 384
    iget-object v1, p0, Lcom/android/startrack/b;->aQY:Lcom/android/common/exif/o;

    iget-object v2, p0, Lcom/android/startrack/b;->aQY:Lcom/android/common/exif/o;

    sget v3, Lcom/android/common/exif/o;->PJ:I

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/exif/o;->QQ(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 389
    :cond_6e
    :goto_6e
    invoke-direct {p0, p1}, Lcom/android/startrack/b;->bhs([B)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 386
    :cond_77
    iget-object v1, p0, Lcom/android/startrack/b;->aQY:Lcom/android/common/exif/o;

    iget-object v2, p0, Lcom/android/startrack/b;->aQY:Lcom/android/common/exif/o;

    sget v3, Lcom/android/common/exif/o;->PJ:I

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/exif/o;->QQ(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    goto :goto_6e
.end method

.method private bhr([B)[B
    .registers 6

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    invoke-static {v0}, Lcom/android/common/h;->apa(Lcom/android/common/appService/W;)I

    move-result v0

    .line 349
    if-nez v0, :cond_9

    return-object p1

    .line 350
    :cond_9
    invoke-static {p1}, Lcom/android/common/h;->apk([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 351
    iget v2, p0, Lcom/android/startrack/b;->aRd:I

    .line 353
    iget-object v3, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 351
    invoke-static {v2, v0, v3, v1}, Lcom/android/common/w;->arH(IILandroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 355
    new-instance v0, Lcom/android/common/l/e;

    invoke-direct {v0}, Lcom/android/common/l/e;-><init>()V

    .line 356
    const/16 v0, 0x64

    invoke-static {v1, v0}, Lcom/android/common/l/b;->agg(Landroid/graphics/Bitmap;I)Lcom/android/common/l/e;

    move-result-object v0

    .line 357
    iget-boolean v1, v0, Lcom/android/common/l/e;->ZT:Z

    if-nez v1, :cond_35

    .line 358
    const-string/jumbo v0, "StarTrackComposeThread"

    const-string/jumbo v1, "because compress jpeg fialed, add water mark fail"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-object p1

    .line 361
    :cond_35
    iget-object v0, v0, Lcom/android/common/l/e;->ZS:[B

    return-object v0
.end method

.method private bhs([B)Ljava/io/ByteArrayOutputStream;
    .registers 6

    .prologue
    .line 280
    const-string/jumbo v0, "StarTrackComposeThread"

    const-string/jumbo v1, "createBaosWithExif"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 283
    :try_start_e
    iget-object v0, p0, Lcom/android/startrack/b;->aQY:Lcom/android/common/exif/o;

    invoke-virtual {v0, p1, v1}, Lcom/android/common/exif/o;->QL([BLjava/io/OutputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_14

    .line 287
    :goto_13
    return-object v1

    .line 284
    :catch_14
    move-exception v0

    .line 285
    const-string/jumbo v2, "startTrackcomposethread"

    const-string/jumbo v3, "Could not write EXIF"

    invoke-static {v2, v3, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method private bht(Ljava/lang/String;Ljava/lang/String;JJIII)Landroid/content/ContentValues;
    .registers 15

    .prologue
    .line 260
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 261
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string/jumbo v1, "_display_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string/jumbo v1, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 264
    const-string/jumbo v1, "mime_type"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string/jumbo v1, "orientation"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    const-string/jumbo v1, "_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo v1, "_size"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    const-string/jumbo v1, "width"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    const-string/jumbo v1, "height"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    const-string/jumbo v1, "StarTrackComposeThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "with:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/android/startrack/b;->aRe:Landroid/location/Location;

    if-eqz v1, :cond_d0

    .line 273
    const-string/jumbo v1, "latitude"

    iget-object v2, p0, Lcom/android/startrack/b;->aRe:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 274
    const-string/jumbo v1, "longitude"

    iget-object v2, p0, Lcom/android/startrack/b;->aRe:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 276
    :cond_d0
    return-object v0
.end method

.method private bhu()Landroid/util/SparseArray;
    .registers 7

    .prologue
    .line 236
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 237
    iget-object v1, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 239
    sget v2, Lcom/android/common/exif/o;->PK:I

    new-instance v3, Lcom/android/common/exif/m;

    int-to-float v1, v1

    const v4, 0x3c23d70a    # 0.01f

    invoke-direct {v3, v1, v4}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    invoke-direct {p0, v0}, Lcom/android/startrack/b;->bhD(Landroid/util/SparseArray;)V

    .line 241
    iget-object v1, p0, Lcom/android/startrack/b;->aRe:Landroid/location/Location;

    if-eqz v1, :cond_37

    .line 242
    iget-object v1, p0, Lcom/android/startrack/b;->aRe:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v1, p0, Lcom/android/startrack/b;->aRe:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v0}, Lcom/android/common/h;->aoW(DDLandroid/util/SparseArray;)V

    .line 244
    :cond_37
    return-object v0
.end method

.method private bhw([B)V
    .registers 3

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/android/startrack/b;->aRa:Z

    if-eqz v0, :cond_5

    .line 293
    return-void

    .line 296
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/startrack/b;->aQY:Lcom/android/common/exif/o;

    invoke-virtual {v0, p1}, Lcom/android/common/exif/o;->QH([B)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13

    .line 301
    iget-object v0, p0, Lcom/android/startrack/b;->aQY:Lcom/android/common/exif/o;

    invoke-virtual {v0}, Lcom/android/common/exif/o;->Ra()V

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/startrack/b;->aRa:Z

    .line 291
    return-void

    .line 297
    :catch_13
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 299
    return-void
.end method

.method private bhx([B)V
    .registers 5

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 179
    invoke-static {p1}, Lcom/android/common/c;->aob([B)I

    move-result v1

    .line 180
    iget-object v2, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pV()I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_22

    .line 181
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/startrack/b;->aRh:I

    .line 182
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/startrack/b;->aRb:I

    .line 176
    :goto_21
    return-void

    .line 184
    :cond_22
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/android/startrack/b;->aRh:I

    .line 185
    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/android/startrack/b;->aRb:I

    goto :goto_21
.end method


# virtual methods
.method public declared-synchronized bhv()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 109
    :try_start_1
    const-string/jumbo v0, "StarTrackComposeThread"

    const-string/jumbo v1, "set thread finish"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/startrack/b;->aQZ:Z

    .line 111
    invoke-virtual {p0}, Lcom/android/startrack/b;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    .line 108
    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bhy([B)Z
    .registers 5

    .prologue
    monitor-enter p0

    .line 97
    :try_start_1
    const-string/jumbo v0, "StarTrackComposeThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread putData mBusy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/startrack/b;->aQV:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-boolean v0, p0, Lcom/android/startrack/b;->aQV:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/startrack/b;->aRc:[B

    if-eqz v0, :cond_2d

    .line 99
    :cond_25
    iget-object v0, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rO()Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_35

    .line 100
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 102
    :cond_2d
    :try_start_2d
    iput-object p1, p0, Lcom/android/startrack/b;->aRc:[B

    .line 103
    invoke-virtual {p0}, Lcom/android/startrack/b;->notifyAll()V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_35

    .line 104
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bhz()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 64
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/startrack/b;->aRc:[B

    .line 65
    invoke-direct {p0}, Lcom/android/startrack/b;->bhA()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/startrack/b;->aQW:Ljava/nio/ByteBuffer;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/startrack/b;->aRg:Lcom/android/startrack/h;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/startrack/b;->aRa:Z

    .line 70
    const-string/jumbo v0, "StarTrackComposeThread"

    const-string/jumbo v1, "release all"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    .line 63
    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 116
    :goto_0
    monitor-enter p0

    .line 117
    :try_start_1
    iget-boolean v0, p0, Lcom/android/startrack/b;->aQZ:Z

    if-eqz v0, :cond_26

    .line 118
    const-string/jumbo v0, "StarTrackComposeThread"

    const-string/jumbo v1, " thread finishing"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/startrack/b;->aRc:[B

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/startrack/b;->aQV:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_af

    monitor-exit p0

    .line 170
    iget-object v0, p0, Lcom/android/startrack/b;->aRg:Lcom/android/startrack/h;

    if-eqz v0, :cond_22

    .line 171
    iget-object v0, p0, Lcom/android/startrack/b;->aRg:Lcom/android/startrack/h;

    iget-object v0, v0, Lcom/android/startrack/h;->aRn:Lcom/android/startrack/j;

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Lcom/android/startrack/j;->sendEmptyMessage(I)Z

    .line 173
    :cond_22
    invoke-virtual {p0}, Lcom/android/startrack/b;->bhz()V

    .line 114
    return-void

    .line 124
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/startrack/b;->aRc:[B

    if-nez v0, :cond_ab

    .line 125
    const-string/jumbo v0, "StarTrackComposeThread"

    const-string/jumbo v1, " jpeg is null, so wait"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/startrack/b;->aQV:Z
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_af

    .line 128
    :try_start_36
    invoke-virtual {p0}, Lcom/android/startrack/b;->wait()V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_39} :catch_3b
    .catchall {:try_start_36 .. :try_end_39} :catchall_af

    :goto_39
    monitor-exit p0

    goto :goto_0

    .line 130
    :catch_3b
    move-exception v0

    .line 131
    :try_start_3c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_af

    :goto_3f
    monitor-exit p0

    .line 138
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 143
    iget-object v0, p0, Lcom/android/startrack/b;->aQU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rO()Z

    .line 146
    :try_start_48
    iget-object v0, p0, Lcom/android/startrack/b;->aRc:[B

    invoke-direct {p0, v0}, Lcom/android/startrack/b;->bhx([B)V

    .line 147
    invoke-direct {p0}, Lcom/android/startrack/b;->bhB()V

    .line 148
    iget-object v0, p0, Lcom/android/startrack/b;->aRc:[B

    invoke-direct {p0, v0}, Lcom/android/startrack/b;->bhw([B)V

    .line 149
    iget-object v0, p0, Lcom/android/startrack/b;->aRc:[B

    invoke-static {v0}, Lcom/android/common/c;->aob([B)I

    move-result v0

    iput v0, p0, Lcom/android/startrack/b;->aRd:I

    .line 150
    iget-object v0, p0, Lcom/android/startrack/b;->aQX:Lcom/android/common/CameraBufferManager;

    iget-object v1, p0, Lcom/android/startrack/b;->aRc:[B

    array-length v1, v1

    .line 151
    iget-object v2, p0, Lcom/android/startrack/b;->aRc:[B

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/android/common/CameraBufferManager;->putBrightnessJpegData(I[B)V

    .line 152
    iget v0, p0, Lcom/android/startrack/b;->aRf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/startrack/b;->aRf:I

    .line 153
    const-string/jumbo v0, "StarTrackComposeThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " copy pixels to jni num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/startrack/b;->aRf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/startrack/b;->aQX:Lcom/android/common/CameraBufferManager;

    iget v1, p0, Lcom/android/startrack/b;->aRh:I

    iget v2, p0, Lcom/android/startrack/b;->aRb:I

    invoke-virtual {v0, v1, v2}, Lcom/android/common/CameraBufferManager;->getBrightnessJpegData(II)[B

    move-result-object v0

    .line 158
    invoke-direct {p0, v0}, Lcom/android/startrack/b;->bhC([B)V

    .line 159
    iget-object v1, p0, Lcom/android/startrack/b;->aRg:Lcom/android/startrack/h;

    iget v2, p0, Lcom/android/startrack/b;->aRd:I

    invoke-virtual {v1, v0, v2}, Lcom/android/startrack/h;->bhN([BI)V

    .line 160
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_a0} :catch_b2
    .catchall {:try_start_48 .. :try_end_a0} :catchall_b7

    .line 165
    :goto_a0
    monitor-enter p0

    .line 166
    const/4 v0, 0x0

    :try_start_a2
    iput-object v0, p0, Lcom/android/startrack/b;->aRc:[B

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/startrack/b;->aQV:Z
    :try_end_a7
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_a8

    goto :goto_39

    .line 165
    :catchall_a8
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    :cond_ab
    const/4 v0, 0x1

    :try_start_ac
    iput-boolean v0, p0, Lcom/android/startrack/b;->aQV:Z
    :try_end_ae
    .catchall {:try_start_ac .. :try_end_ae} :catchall_af

    goto :goto_3f

    .line 116
    :catchall_af
    move-exception v0

    monitor-exit p0

    throw v0

    .line 161
    :catch_b2
    move-exception v0

    .line 162
    :try_start_b3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b7

    goto :goto_a0

    .line 163
    :catchall_b7
    move-exception v0

    throw v0
.end method

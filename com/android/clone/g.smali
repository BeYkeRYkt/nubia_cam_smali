.class public Lcom/android/clone/g;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/clone/b;


# instance fields
.field private aTn:Lcom/android/clone/k;

.field private aTo:Lcom/android/clone/a;

.field private aTp:I

.field private aTq:I

.field private aTr:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 53
    iput v0, p0, Lcom/android/clone/g;->aTr:I

    .line 54
    iput v0, p0, Lcom/android/clone/g;->aTq:I

    .line 55
    iput-object v1, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    .line 56
    iput v0, p0, Lcom/android/clone/g;->aTp:I

    .line 57
    iput-object v1, p0, Lcom/android/clone/g;->aTn:Lcom/android/clone/k;

    .line 76
    return-void
.end method

.method public static bkF()Lcom/android/clone/g;
    .registers 2

    .prologue
    .line 98
    new-instance v0, Lcom/android/clone/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/clone/g;-><init>(I)V

    .line 99
    return-object v0
.end method

.method private bkI(Ljava/lang/String;Ljava/lang/String;JIILandroid/location/Location;)Landroid/content/ContentValues;
    .registers 13

    .prologue
    .line 275
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 276
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v1, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 278
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

    .line 279
    const-string/jumbo v1, "orientation"

    iget v2, p0, Lcom/android/clone/g;->aTp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    iget v1, p0, Lcom/android/clone/g;->aTp:I

    if-eqz v1, :cond_50

    iget v1, p0, Lcom/android/clone/g;->aTp:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_83

    .line 281
    :cond_50
    const-string/jumbo v1, "width"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const-string/jumbo v1, "height"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    :goto_64
    if-eqz p7, :cond_82

    .line 288
    const-string/jumbo v1, "latitude"

    invoke-virtual {p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 289
    const-string/jumbo v1, "longitude"

    invoke-virtual {p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 291
    :cond_82
    return-object v0

    .line 284
    :cond_83
    const-string/jumbo v1, "width"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string/jumbo v1, "height"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_64
.end method

.method private bkJ()V
    .registers 3

    .prologue
    .line 109
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/android/clone/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/clone/g;->aTr:I

    .line 112
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/clone/g;->aTq:I

    .line 108
    return-void
.end method

.method private bkK(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/clone/g;->bkJ()V

    .line 88
    new-instance v0, Lcom/android/clone/a;

    invoke-virtual {p0}, Lcom/android/clone/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Lcom/android/clone/g;->alw()Lcom/android/common/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/h/l;->acb()Lcom/android/common/h/i;

    move-result-object v2

    .line 88
    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/clone/a;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/clone/b;Lcom/android/common/ui/u;)V

    iput-object v0, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    .line 91
    iget-object v0, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iget v3, p0, Lcom/android/clone/g;->aTr:I

    iget v4, p0, Lcom/android/clone/g;->aTq:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/clone/a;->bjh(IIII)V

    .line 94
    iget-object v0, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    invoke-virtual {v0}, Lcom/android/clone/a;->biI()[Lcom/android/common/ui/h;

    move-result-object v0

    iput-object v0, p0, Lcom/android/clone/g;->adw:[Lcom/android/common/ui/h;

    .line 86
    return-void
.end method

.method private bkL([BII)V
    .registers 16

    .prologue
    const/4 v11, 0x0

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 209
    invoke-static {v4, v5}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v2

    .line 210
    iget-object v0, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pF()I

    move-result v0

    invoke-static {v0}, Lcom/android/common/f;->aol(I)Ljava/lang/String;

    move-result-object v3

    .line 211
    iget-object v0, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v8

    move-object v1, p0

    move v6, p2

    move v7, p3

    .line 212
    invoke-direct/range {v1 .. v8}, Lcom/android/clone/g;->bkI(Ljava/lang/String;Ljava/lang/String;JIILandroid/location/Location;)Landroid/content/ContentValues;

    move-result-object v6

    .line 219
    iget-object v0, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    invoke-static {v0}, Lcom/android/common/h;->apa(Lcom/android/common/appService/W;)I

    move-result v0

    if-eqz v0, :cond_83

    .line 220
    invoke-static {p1}, Lcom/android/common/h;->apk([B)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 221
    new-instance v0, Lcom/android/common/b/d;

    iget-object v1, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    .line 223
    invoke-direct {p0, v8, p2, p3}, Lcom/android/clone/g;->bkM(Landroid/location/Location;II)Landroid/util/SparseArray;

    move-result-object v10

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 226
    iget v7, p0, Lcom/android/clone/g;->aTp:I

    .line 227
    new-instance v8, Lcom/android/clone/h;

    invoke-direct {v8, p0, v11}, Lcom/android/clone/h;-><init>(Lcom/android/clone/g;Lcom/android/clone/h;)V

    move-object v2, v9

    move-object v3, v10

    .line 221
    invoke-direct/range {v0 .. v8}, Lcom/android/common/b/d;-><init>(Lcom/android/common/appService/W;Landroid/graphics/Bitmap;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V

    .line 228
    iget-object v1, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 241
    :goto_75
    invoke-virtual {p0}, Lcom/android/clone/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "clone"

    const-string/jumbo v2, "clone"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void

    .line 230
    :cond_83
    new-instance v0, Lcom/android/common/b/c;

    .line 231
    iget-object v1, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    .line 233
    invoke-direct {p0, v8, p2, p3}, Lcom/android/clone/g;->bkM(Landroid/location/Location;II)Landroid/util/SparseArray;

    move-result-object v9

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 237
    iget v7, p0, Lcom/android/clone/g;->aTp:I

    .line 238
    new-instance v8, Lcom/android/clone/h;

    invoke-direct {v8, p0, v11}, Lcom/android/clone/h;-><init>(Lcom/android/clone/g;Lcom/android/clone/h;)V

    move-object v2, p1

    move-object v3, v9

    .line 230
    invoke-direct/range {v0 .. v8}, Lcom/android/common/b/c;-><init>(Lcom/android/common/appService/W;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V

    .line 239
    iget-object v1, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    goto :goto_75
.end method

.method private bkM(Landroid/location/Location;II)Landroid/util/SparseArray;
    .registers 10

    .prologue
    const v5, 0x3c23d70a    # 0.01f

    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    if-nez v0, :cond_11

    .line 247
    :cond_10
    return-object v1

    .line 249
    :cond_11
    iget-object v0, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Ln()F

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pI()F

    move-result v1

    .line 252
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 253
    sget v3, Lcom/android/common/exif/o;->PS:I

    iget v4, p0, Lcom/android/clone/g;->aTp:I

    invoke-static {v4}, Lcom/android/common/exif/o;->QR(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    sget v3, Lcom/android/common/exif/o;->PC:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/common/custom/x;->aem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    sget v3, Lcom/android/common/exif/o;->PD:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/common/custom/x;->aen()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    sget v3, Lcom/android/common/exif/o;->PE:I

    new-instance v4, Lcom/android/common/exif/m;

    invoke-direct {v4, v1, v5}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    sget v1, Lcom/android/common/exif/o;->PF:I

    new-instance v3, Lcom/android/common/exif/m;

    invoke-direct {v3, v0, v5}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    iget v0, p0, Lcom/android/clone/g;->aTp:I

    if-eqz v0, :cond_75

    iget v0, p0, Lcom/android/clone/g;->aTp:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_95

    .line 261
    :cond_75
    sget v0, Lcom/android/common/exif/o;->PG:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    sget v0, Lcom/android/common/exif/o;->PH:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    :goto_87
    if-eqz p1, :cond_94

    .line 268
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5, v2}, Lcom/android/common/h;->aoW(DDLandroid/util/SparseArray;)V

    .line 270
    :cond_94
    return-object v2

    .line 264
    :cond_95
    sget v0, Lcom/android/common/exif/o;->PG:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    sget v0, Lcom/android/common/exif/o;->PH:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_87
.end method


# virtual methods
.method protected akC()V
    .registers 4

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/common/o/l;->akC()V

    .line 313
    iget-object v0, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    if-eqz v0, :cond_34

    .line 314
    const-string/jumbo v0, "CloneFragment"

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isNeedOpenPreview = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 316
    iget-object v2, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    invoke-virtual {v2}, Lcom/android/clone/a;->biV()Z

    move-result v2

    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    invoke-virtual {v0}, Lcom/android/clone/a;->biV()Z

    move-result v0

    if-nez v0, :cond_34

    .line 318
    iget-object v0, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pB()V

    .line 311
    :cond_34
    return-void
.end method

.method public bkG()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    if-eqz v0, :cond_9

    .line 82
    iget-object v0, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    invoke-virtual {v0}, Lcom/android/clone/a;->biY()V

    .line 80
    :cond_9
    return-void
.end method

.method public bkH()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_c

    .line 203
    iget-object v0, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pC()I

    move-result v0

    iput v0, p0, Lcom/android/clone/g;->aTp:I

    .line 201
    :cond_c
    return-void
.end method

.method public bkk()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pB()V

    .line 168
    return-void
.end method

.method public bkl()V
    .registers 1

    .prologue
    .line 155
    return-void
.end method

.method public bkm(Z)V
    .registers 4

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/clone/g;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_9

    .line 179
    return-void

    .line 181
    :cond_9
    invoke-virtual {p0}, Lcom/android/clone/g;->alq()V

    .line 182
    invoke-virtual {p0}, Lcom/android/clone/g;->aly()V

    .line 183
    if-nez p1, :cond_20

    .line 184
    iget-object v0, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 185
    iget-object v0, p0, Lcom/android/clone/g;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    .line 186
    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/g;->dy(Z)V

    .line 177
    :cond_20
    return-void
.end method

.method public bkn([BII)V
    .registers 4

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/clone/g;->bkL([BII)V

    .line 172
    return-void
.end method

.method public bko()V
    .registers 5

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/clone/g;->aTn:Lcom/android/clone/k;

    if-nez v0, :cond_15

    .line 160
    new-instance v0, Lcom/android/clone/k;

    .line 161
    invoke-virtual {p0}, Lcom/android/clone/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040022

    .line 162
    const v3, 0x7f0c000b

    .line 160
    invoke-direct {v0, v1, v2, v3}, Lcom/android/clone/k;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/clone/g;->aTn:Lcom/android/clone/k;

    .line 164
    :cond_15
    iget-object v0, p0, Lcom/android/clone/g;->aTn:Lcom/android/clone/k;

    invoke-virtual {v0}, Lcom/android/clone/k;->show()V

    .line 158
    return-void
.end method

.method public mY([B)Z
    .registers 3

    .prologue
    .line 192
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 193
    invoke-virtual {p0}, Lcom/android/clone/g;->alr()V

    .line 194
    invoke-virtual {p0}, Lcom/android/clone/g;->alz()V

    .line 195
    iget-object v0, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    if-eqz v0, :cond_16

    .line 196
    iget-object v0, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    invoke-virtual {v0, p1}, Lcom/android/clone/a;->biX([B)V

    .line 198
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public nD()Z
    .registers 3

    .prologue
    .line 325
    invoke-static {}, Lcom/android/clone/i;->bkN()Lcom/android/clone/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/clone/i;->bkP()Lcom/android/clone/CloneStatus$Status;

    move-result-object v0

    sget-object v1, Lcom/android/clone/CloneStatus$Status;->aTw:Lcom/android/clone/CloneStatus$Status;

    if-eq v0, v1, :cond_e

    .line 326
    const/4 v0, 0x1

    return v0

    .line 328
    :cond_e
    invoke-super {p0}, Lcom/android/common/o/l;->nD()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    invoke-virtual {v0}, Lcom/android/clone/a;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 305
    const/4 v0, 0x1

    return v0

    .line 307
    :cond_e
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onCreate(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 63
    iget-boolean v0, p0, Lcom/android/clone/g;->adu:Z

    if-eqz v0, :cond_9

    .line 64
    return-object v1

    .line 66
    :cond_9
    const-string/jumbo v0, "CloneFragment"

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const v0, 0x7f040021

    .line 68
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    if-nez v0, :cond_25

    .line 70
    const-string/jumbo v1, "CloneFragment"

    const-string/jumbo v2, "view == null"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_25
    invoke-direct {p0, v0}, Lcom/android/clone/g;->bkK(Landroid/view/View;)V

    .line 73
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/clone/g;->adu:Z

    if-eqz v0, :cond_8

    .line 145
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroy()V

    .line 146
    return-void

    .line 148
    :cond_8
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    if-eqz v0, :cond_14

    .line 150
    iget-object v0, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    invoke-virtual {v0}, Lcom/android/clone/a;->onDestroy()V

    .line 143
    :cond_14
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/clone/g;->adu:Z

    if-eqz v0, :cond_8

    .line 130
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 131
    return-void

    .line 133
    :cond_8
    iget-object v0, p0, Lcom/android/clone/g;->aTn:Lcom/android/clone/k;

    if-eqz v0, :cond_11

    .line 134
    iget-object v0, p0, Lcom/android/clone/g;->aTn:Lcom/android/clone/k;

    invoke-virtual {v0}, Lcom/android/clone/k;->cancel()V

    .line 136
    :cond_11
    iget-object v0, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    if-eqz v0, :cond_1a

    .line 137
    iget-object v0, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    invoke-virtual {v0}, Lcom/android/clone/a;->onPause()V

    .line 139
    :cond_1a
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 128
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/clone/g;->adu:Z

    if-eqz v0, :cond_8

    .line 118
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 119
    return-void

    .line 121
    :cond_8
    iget-object v0, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    if-eqz v0, :cond_11

    .line 122
    iget-object v0, p0, Lcom/android/clone/g;->aTo:Lcom/android/clone/a;

    invoke-virtual {v0}, Lcom/android/clone/a;->onResume()V

    .line 124
    :cond_11
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 116
    return-void
.end method

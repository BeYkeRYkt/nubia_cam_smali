.class Lcom/android/funeffect/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/c;


# instance fields
.field final synthetic aTY:Lcom/android/funeffect/d;


# direct methods
.method constructor <init>(Lcom/android/funeffect/d;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/funeffect/f;->aTY:Lcom/android/funeffect/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bll(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;
    .registers 15

    .prologue
    .line 226
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 227
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
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

    .line 229
    const-string/jumbo v1, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 230
    const-string/jumbo v1, "mime_type"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v1, "orientation"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
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

    .line 234
    const-string/jumbo v1, "width"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string/jumbo v1, "height"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    iget-object v1, p0, Lcom/android/funeffect/f;->aTY:Lcom/android/funeffect/d;

    invoke-static {v1}, Lcom/android/funeffect/d;->blj(Lcom/android/funeffect/d;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_a9

    .line 238
    const-string/jumbo v2, "latitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 239
    const-string/jumbo v2, "longitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 241
    :cond_a9
    return-object v0
.end method

.method private blm(I)Landroid/util/SparseArray;
    .registers 5

    .prologue
    .line 218
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 219
    sget v1, Lcom/android/common/exif/o;->PS:I

    invoke-static {p1}, Lcom/android/common/exif/o;->QR(I)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    sget v1, Lcom/android/common/exif/o;->PC:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    sget v1, Lcom/android/common/exif/o;->PD:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    return-object v0
.end method

.method private bln(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 210
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

    .line 211
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_27

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 214
    :cond_27
    return-object v0
.end method


# virtual methods
.method public W(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .registers 22

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/funeffect/f;->aTY:Lcom/android/funeffect/d;

    invoke-static {v2}, Lcom/android/funeffect/d;->blk(Lcom/android/funeffect/d;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 175
    return-void

    .line 177
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/funeffect/f;->aTY:Lcom/android/funeffect/d;

    invoke-static {v2}, Lcom/android/funeffect/d;->blj(Lcom/android/funeffect/d;)Lcom/android/common/appService/W;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/common/appService/W;->pz(I)V

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 180
    invoke-static {v6, v7}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v4

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/funeffect/f;->aTY:Lcom/android/funeffect/d;

    invoke-static {v2}, Lcom/android/funeffect/d;->blj(Lcom/android/funeffect/d;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pF()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/funeffect/f;->bln(I)Ljava/lang/String;

    move-result-object v5

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/funeffect/f;->aTY:Lcom/android/funeffect/d;

    invoke-static {v2}, Lcom/android/funeffect/d;->blj(Lcom/android/funeffect/d;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->qv()I

    move-result v2

    .line 183
    int-to-float v3, v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 185
    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_be

    move/from16 v9, p3

    move/from16 v8, p2

    .line 192
    :goto_4b
    new-instance v2, Lcom/android/common/b/b;

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/funeffect/f;->aTY:Lcom/android/funeffect/d;

    invoke-static {v3}, Lcom/android/funeffect/d;->blj(Lcom/android/funeffect/d;)Lcom/android/common/appService/W;

    move-result-object v14

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, "/"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, ".jpg"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 201
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/funeffect/f;->blm(I)Landroid/util/SparseArray;

    move-result-object v11

    .line 202
    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/funeffect/f;->bll(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;

    move-result-object v12

    .line 198
    const/16 v8, 0x3c

    .line 203
    const/4 v13, 0x0

    move-object v3, v14

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object v9, v15

    move-object/from16 v10, v16

    .line 192
    invoke-direct/range {v2 .. v13}, Lcom/android/common/b/b;-><init>(Lcom/android/common/appService/W;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;ILjava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/content/ContentValues;Lcom/android/common/b/f;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/funeffect/f;->aTY:Lcom/android/funeffect/d;

    invoke-static {v3}, Lcom/android/funeffect/d;->blj(Lcom/android/funeffect/d;)Lcom/android/common/appService/W;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/funeffect/f;->aTY:Lcom/android/funeffect/d;

    invoke-static {v2}, Lcom/android/funeffect/d;->blj(Lcom/android/funeffect/d;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    return-void

    :cond_be
    move/from16 v9, p2

    move/from16 v8, p3

    .line 190
    goto :goto_4b
.end method

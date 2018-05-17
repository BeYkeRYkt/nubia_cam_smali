.class public final Lcom/android/gallery3d/a/b;
.super Lcom/android/gallery3d/a/a;
.source "SourceFile"


# static fields
.field static final auN:Landroid/net/Uri;

.field private static final auO:[B

.field static final auP:[Ljava/lang/String;


# instance fields
.field private final auQ:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 246
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/a/b;->auN:Landroid/net/Uri;

    .line 253
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 254
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 255
    const-string/jumbo v1, "title"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 256
    const-string/jumbo v1, "mime_type"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 257
    const-string/jumbo v1, "datetaken"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 258
    const-string/jumbo v1, "date_modified"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 259
    const-string/jumbo v1, "_data"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 260
    const-string/jumbo v1, "orientation"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 261
    const-string/jumbo v1, "width"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 262
    const-string/jumbo v1, "height"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 263
    const-string/jumbo v1, "_size"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 264
    const-string/jumbo v1, "latitude"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 265
    const-string/jumbo v1, "longitude"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 253
    sput-object v0, Lcom/android/gallery3d/a/b;->auP:[Ljava/lang/String;

    .line 276
    const v0, 0x8000

    new-array v0, v0, [B

    sput-object v0, Lcom/android/gallery3d/a/b;->auO:[B

    .line 230
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJDD)V
    .registers 40

    .prologue
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    move/from16 v12, p11

    move/from16 v13, p12

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-wide/from16 v18, p17

    .line 285
    invoke-direct/range {v2 .. v19}, Lcom/android/gallery3d/a/a;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDD)V

    .line 287
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/a/b;->auQ:I

    .line 284
    return-void
.end method

.method static aHG(Landroid/database/Cursor;)Lcom/android/gallery3d/a/b;
    .registers 23

    .prologue
    .line 291
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 292
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 293
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 294
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 295
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 296
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 297
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 298
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 299
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 300
    if-lez v14, :cond_44

    if-gtz v15, :cond_8f

    .line 301
    :cond_44
    const-string/jumbo v2, "CAM_PhotoData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Zero dimension in ContentResolver for "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 302
    const-string/jumbo v16, ":"

    .line 301
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 302
    const-string/jumbo v14, "x"

    .line 301
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 304
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 305
    invoke-static {v12, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 306
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_ad

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_ad

    .line 307
    iget v14, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 308
    iget v15, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 326
    :cond_8f
    const/16 v2, 0x9

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 327
    const/16 v2, 0xa

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 328
    const/16 v2, 0xb

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .line 329
    new-instance v3, Lcom/android/gallery3d/a/b;

    invoke-direct/range {v3 .. v21}, Lcom/android/gallery3d/a/b;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJDD)V

    .line 332
    return-object v3

    .line 310
    :cond_ad
    const-string/jumbo v2, "CAM_PhotoData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Dimension decode failed for "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 312
    if-nez v2, :cond_f0

    .line 313
    const-string/jumbo v2, "CAM_PhotoData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PhotoData skipped. Decoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 314
    const-string/jumbo v4, "failed."

    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v2, 0x0

    return-object v2

    .line 317
    :cond_f0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 318
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 319
    if-eqz v14, :cond_fc

    if-nez v15, :cond_8f

    .line 320
    :cond_fc
    const-string/jumbo v2, "CAM_PhotoData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PhotoData skipped. Bitmap size 0 for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v2, 0x0

    return-object v2
.end method

.method static synthetic aHJ()[B
    .registers 1

    sget-object v0, Lcom/android/gallery3d/a/b;->auO:[B

    return-object v0
.end method

.method static synthetic aHK(Lcom/android/gallery3d/a/b;)I
    .registers 2

    iget v0, p0, Lcom/android/gallery3d/a/b;->auQ:I

    return v0
.end method


# virtual methods
.method public aHB(I)Z
    .registers 3

    .prologue
    .line 359
    and-int/lit8 v0, p1, 0x2

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
    .line 354
    and-int/lit8 v0, p1, 0x7

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
    .line 371
    sget-object v0, Lcom/android/gallery3d/a/b;->auN:Landroid/net/Uri;

    .line 372
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/gallery3d/a/b;->auB:J

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

    .line 383
    invoke-virtual {p0}, Lcom/android/gallery3d/a/b;->aHH()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/a/b;->auP:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 382
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 387
    invoke-static {v0}, Lcom/android/gallery3d/a/b;->aHG(Landroid/database/Cursor;)Lcom/android/gallery3d/a/b;

    move-result-object v0

    .line 388
    return-object v0

    .line 385
    :cond_1b
    return-object v3
.end method

.method public aHp(Landroid/content/Context;)Z
    .registers 8

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 365
    sget-object v1, Lcom/android/gallery3d/a/b;->auN:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/gallery3d/a/b;->auB:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 366
    invoke-super {p0, p1}, Lcom/android/gallery3d/a/a;->aHp(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected aHr(Landroid/widget/ImageView;IILandroid/content/ContentResolver;Lcom/android/gallery3d/a/p;)Lcom/android/gallery3d/a/f;
    .registers 13

    .prologue
    .line 400
    new-instance v0, Lcom/android/gallery3d/a/c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/a/c;-><init>(Lcom/android/gallery3d/a/b;Landroid/widget/ImageView;IILandroid/content/ContentResolver;Lcom/android/gallery3d/a/p;)V

    return-object v0
.end method

.method public aHv()I
    .registers 2

    .prologue
    .line 337
    iget v0, p0, Lcom/android/gallery3d/a/b;->auQ:I

    return v0
.end method

.method public aHz()I
    .registers 2

    .prologue
    .line 349
    const/4 v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Photo:,data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/a/b;->auI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/a/b;->auH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    const-string/jumbo v1, ","

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    iget v1, p0, Lcom/android/gallery3d/a/b;->auM:I

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    const-string/jumbo v1, "x"

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    iget v1, p0, Lcom/android/gallery3d/a/b;->auE:I

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    const-string/jumbo v1, ",orientation="

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    iget v1, p0, Lcom/android/gallery3d/a/b;->auQ:I

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 344
    const-string/jumbo v1, ",date="

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 344
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/gallery3d/a/b;->auD:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

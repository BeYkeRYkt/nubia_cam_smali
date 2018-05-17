.class public Lcom/android/common/m/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static aaR:Ljava/lang/String;

.field private static aaV:Ljava/lang/Object;


# instance fields
.field private aaS:Landroid/graphics/Bitmap;

.field private aaT:Z

.field private aaU:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/common/m/a;->aaV:Ljava/lang/Object;

    .line 71
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/common/m/a;->aaR:Ljava/lang/String;

    .line 54
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V
    .registers 5

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/m/a;->aaT:Z

    .line 74
    iput-object p1, p0, Lcom/android/common/m/a;->aaU:Landroid/net/Uri;

    .line 75
    invoke-static {p2, p3}, Lcom/android/common/D;->awa(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/m/a;->aaS:Landroid/graphics/Bitmap;

    .line 73
    return-void
.end method

.method public static agR(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/common/m/a;->agV(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static agS(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/common/m/a;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 369
    if-nez p0, :cond_d

    .line 370
    const-string/jumbo v0, "Thumbnail"

    const-string/jumbo v1, "Failed to create thumbnail from null uri"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-object v2

    .line 375
    :cond_d
    if-nez p1, :cond_18

    .line 376
    const-string/jumbo v0, "Thumbnail"

    const-string/jumbo v1, "create thumbnail with null bitmap"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_18
    new-instance v0, Lcom/android/common/m/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/common/m/a;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method public static agT([BIILandroid/net/Uri;)Lcom/android/common/m/a;
    .registers 9

    .prologue
    .line 321
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 322
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 325
    :try_start_7
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_c} :catch_12

    move-result-object v0

    .line 334
    invoke-static {p3, v0, p1}, Lcom/android/common/m/a;->agS(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/common/m/a;

    move-result-object v0

    return-object v0

    .line 326
    :catch_12
    move-exception v0

    .line 328
    :try_start_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/sdcard/camera_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".hprof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_35} :catch_36

    .line 332
    :goto_35
    throw v0

    .line 329
    :catch_36
    move-exception v1

    .line 330
    const-string/jumbo v2, "Thumbnail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpHprofData fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method public static agU(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/common/m/a;->agV(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static agV(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 348
    invoke-static {p0, p1}, Lcom/android/common/m/a;->ahf(Ljava/lang/String;Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    if-nez v0, :cond_11

    .line 351
    const-string/jumbo v0, "Thumbnail"

    const-string/jumbo v1, "createVideoThumbnailBitmap fail"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-object v2

    .line 356
    :cond_11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 357
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 358
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 359
    if-le v3, p2, :cond_34

    .line 360
    int-to-float v4, p2

    int-to-float v3, v3

    div-float v3, v4, v3

    .line 361
    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 362
    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 363
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 365
    :cond_34
    return-object v0
.end method

.method private static agY(Landroid/content/ContentResolver;)Lcom/android/common/m/b;
    .registers 11

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 218
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 220
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "limit"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 221
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v3, v4

    const-string/jumbo v1, "orientation"

    aput-object v1, v3, v5

    .line 222
    const-string/jumbo v1, "datetaken"

    aput-object v1, v3, v6

    .line 224
    const-string/jumbo v1, ""

    sget-object v4, Lcom/android/common/m/a;->aaR:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 225
    const-string/jumbo v4, "mime_type=\'image/jpeg\' AND _data like \'%/DCIM/Camera/%\'"

    .line 231
    :goto_38
    const-string/jumbo v6, "datetaken DESC,_id DESC"

    .line 234
    const/4 v5, 0x0

    move-object v1, p0

    :try_start_3d
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_40
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3d .. :try_end_40} :catch_70
    .catchall {:try_start_3d .. :try_end_40} :catchall_81

    move-result-object v8

    .line 235
    if-eqz v8, :cond_6a

    :try_start_43
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 236
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 237
    new-instance v1, Lcom/android/common/m/b;

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 238
    invoke-static {v7, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 237
    invoke-direct/range {v1 .. v7}, Lcom/android/common/m/b;-><init>(JIJLandroid/net/Uri;)V
    :try_end_61
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_43 .. :try_end_61} :catch_8f
    .catchall {:try_start_43 .. :try_end_61} :catchall_89

    .line 244
    if-eqz v8, :cond_66

    .line 245
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_66
    return-object v1

    .line 228
    :cond_67
    sget-object v4, Lcom/android/common/m/a;->aaR:Ljava/lang/String;

    goto :goto_38

    .line 244
    :cond_6a
    if-eqz v8, :cond_6f

    .line 245
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_6f
    :goto_6f
    return-object v9

    .line 240
    :catch_70
    move-exception v1

    move-object v1, v9

    .line 242
    :goto_72
    :try_start_72
    const-string/jumbo v2, "Thumbnail"

    const-string/jumbo v3, "sql i/o exctption in thumbnail"

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_8b

    .line 244
    if-eqz v1, :cond_6f

    .line 245
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6f

    .line 243
    :catchall_81
    move-exception v1

    move-object v8, v9

    .line 244
    :goto_83
    if-eqz v8, :cond_88

    .line 245
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_88
    throw v1

    :catchall_89
    move-exception v1

    goto :goto_83

    :catchall_8b
    move-exception v2

    move-object v8, v1

    move-object v1, v2

    goto :goto_83

    .line 240
    :catch_8f
    move-exception v1

    move-object v1, v8

    goto :goto_72
.end method

.method public static agZ(Landroid/content/ContentResolver;[Lcom/android/common/m/a;)I
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 174
    if-nez p0, :cond_6

    return v7

    .line 176
    :cond_6
    invoke-static {p0}, Lcom/android/common/m/a;->agY(Landroid/content/ContentResolver;)Lcom/android/common/m/b;

    move-result-object v0

    .line 177
    invoke-static {p0}, Lcom/android/common/m/a;->ahb(Landroid/content/ContentResolver;)Lcom/android/common/m/b;

    move-result-object v1

    .line 178
    if-nez v0, :cond_13

    if-nez v1, :cond_13

    return v7

    .line 184
    :cond_13
    if-eqz v0, :cond_54

    if-eqz v1, :cond_1f

    iget-wide v2, v0, Lcom/android/common/m/b;->aaW:J

    iget-wide v4, v1, Lcom/android/common/m/b;->aaW:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_54

    .line 185
    :cond_1f
    iget-wide v2, v0, Lcom/android/common/m/b;->aaX:J

    invoke-static {p0, v2, v3, v8, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 194
    :goto_25
    const-string/jumbo v2, "Thumbnail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lastMedia.uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/common/m/b;->aaY:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v2, v0, Lcom/android/common/m/b;->aaY:Landroid/net/Uri;

    invoke-static {v2, p0}, Lcom/android/common/h;->aoX(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 197
    iget-object v2, v0, Lcom/android/common/m/b;->aaY:Landroid/net/Uri;

    iget v0, v0, Lcom/android/common/m/b;->orientation:I

    invoke-static {v2, v1, v0}, Lcom/android/common/m/a;->agS(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/common/m/a;

    move-result-object v0

    aput-object v0, p1, v7

    .line 198
    return v8

    .line 189
    :cond_54
    iget-wide v2, v1, Lcom/android/common/m/b;->aaX:J

    invoke-static {p0, v2, v3, v8, v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 191
    goto :goto_25

    .line 200
    :cond_5e
    const/4 v0, 0x2

    return v0
.end method

.method public static aha(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/common/m/a;
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 124
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "last_thumb"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    sget-object v5, Lcom/android/common/m/a;->aaV:Ljava/lang/Object;

    monitor-enter v5

    .line 132
    :try_start_c
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_59
    .catchall {:try_start_c .. :try_end_11} :catchall_82

    .line 133
    :try_start_11
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1000

    invoke-direct {v3, v4, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_9c
    .catchall {:try_start_11 .. :try_end_18} :catchall_93

    .line 134
    :try_start_18
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_a0
    .catchall {:try_start_18 .. :try_end_1d} :catchall_97

    .line 135
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 136
    invoke-static {v6, p1}, Lcom/android/common/h;->aoX(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 137
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_31} :catch_a3
    .catchall {:try_start_1d .. :try_end_31} :catchall_9a

    .line 147
    :try_start_31
    invoke-static {v4}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 148
    invoke-static {v3}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 149
    invoke-static {v1}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_90

    monitor-exit v5

    .line 139
    return-object v2

    .line 141
    :cond_3c
    :try_start_3c
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_43} :catch_a3
    .catchall {:try_start_3c .. :try_end_43} :catchall_9a

    .line 147
    :try_start_43
    invoke-static {v4}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 148
    invoke-static {v3}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 149
    invoke-static {v1}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_90

    monitor-exit v5

    .line 152
    const/4 v1, 0x0

    invoke-static {v6, v0, v1}, Lcom/android/common/m/a;->agS(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/common/m/a;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_58

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/m/a;->ahh(Z)V

    .line 154
    :cond_58
    return-object v0

    .line 143
    :catch_59
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    .line 144
    :goto_5d
    :try_start_5d
    const-string/jumbo v6, "Thumbnail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Fail to load bitmap. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_9a

    .line 147
    :try_start_77
    invoke-static {v4}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 148
    invoke-static {v3}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 149
    invoke-static {v1}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_90

    monitor-exit v5

    .line 145
    return-object v2

    .line 146
    :catchall_82
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    .line 147
    :goto_86
    :try_start_86
    invoke-static {v4}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 148
    invoke-static {v3}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 149
    invoke-static {v1}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 146
    throw v0
    :try_end_90
    .catchall {:try_start_86 .. :try_end_90} :catchall_90

    .line 130
    :catchall_90
    move-exception v0

    monitor-exit v5

    throw v0

    .line 146
    :catchall_93
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_86

    :catchall_97
    move-exception v0

    move-object v1, v2

    goto :goto_86

    :catchall_9a
    move-exception v0

    goto :goto_86

    .line 143
    :catch_9c
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_5d

    :catch_a0
    move-exception v0

    move-object v1, v2

    goto :goto_5d

    :catch_a3
    move-exception v0

    goto :goto_5d
.end method

.method private static ahb(Landroid/content/ContentResolver;)Lcom/android/common/m/b;
    .registers 11

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 286
    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 288
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "limit"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 289
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v3, v4

    const-string/jumbo v1, "_data"

    aput-object v1, v3, v5

    .line 290
    const-string/jumbo v1, "datetaken"

    aput-object v1, v3, v6

    .line 292
    const-string/jumbo v1, ""

    sget-object v4, Lcom/android/common/m/a;->aaR:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 293
    const-string/jumbo v4, "_data like \'%/DCIM/Camera/%\'"

    .line 297
    :goto_38
    const-string/jumbo v6, "datetaken DESC,_id DESC"

    .line 301
    const/4 v5, 0x0

    move-object v1, p0

    :try_start_3d
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_40
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3d .. :try_end_40} :catch_8b
    .catchall {:try_start_3d .. :try_end_40} :catchall_9c

    move-result-object v8

    .line 302
    if-eqz v8, :cond_85

    :try_start_43
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 303
    const-string/jumbo v1, "Thumbnail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLastVideoThumbnail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 305
    new-instance v1, Lcom/android/common/m/b;

    const/4 v4, 0x2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 306
    invoke-static {v7, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 305
    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/common/m/b;-><init>(JIJLandroid/net/Uri;)V
    :try_end_7c
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_43 .. :try_end_7c} :catch_aa
    .catchall {:try_start_43 .. :try_end_7c} :catchall_a4

    .line 311
    if-eqz v8, :cond_81

    .line 312
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 305
    :cond_81
    return-object v1

    .line 295
    :cond_82
    sget-object v4, Lcom/android/common/m/a;->aaR:Ljava/lang/String;

    goto :goto_38

    .line 311
    :cond_85
    if-eqz v8, :cond_8a

    .line 312
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_8a
    :goto_8a
    return-object v9

    .line 308
    :catch_8b
    move-exception v1

    move-object v1, v9

    .line 309
    :goto_8d
    :try_start_8d
    const-string/jumbo v2, "Thumbnail"

    const-string/jumbo v3, "sql i/o exctption in thumbnail"

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_8d .. :try_end_96} :catchall_a6

    .line 311
    if-eqz v1, :cond_8a

    .line 312
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8a

    .line 310
    :catchall_9c
    move-exception v1

    move-object v8, v9

    .line 311
    :goto_9e
    if-eqz v8, :cond_a3

    .line 312
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 310
    :cond_a3
    throw v1

    :catchall_a4
    move-exception v1

    goto :goto_9e

    :catchall_a6
    move-exception v2

    move-object v8, v1

    move-object v1, v2

    goto :goto_9e

    .line 308
    :catch_aa
    move-exception v1

    move-object v1, v8

    goto :goto_8d
.end method

.method public static ahc(Ljava/lang/String;Landroid/net/Uri;II)Lcom/android/common/m/a;
    .registers 7

    .prologue
    .line 159
    const-string/jumbo v0, "Thumbnail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PATH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 161
    iput p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 162
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    invoke-static {p1, v0, p2}, Lcom/android/common/m/a;->agS(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/common/m/a;

    move-result-object v0

    .line 164
    return-object v0
.end method

.method public static ahd(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/common/m/a;
    .registers 11

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 254
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v3

    .line 255
    const-string/jumbo v0, "orientation"

    aput-object v0, v2, v1

    const-string/jumbo v0, "datetaken"

    aput-object v0, v2, v4

    .line 256
    const-string/jumbo v3, "mime_type=\'image/jpeg\' AND _data like \'%/DCIM/Camera/%\'"

    .line 258
    const-string/jumbo v5, "datetaken DESC,_id DESC"

    .line 261
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_1f
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1f .. :try_end_22} :catch_6f
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_22} :catch_5e
    .catchall {:try_start_1f .. :try_end_22} :catchall_80

    move-result-object v7

    .line 262
    if-eqz v7, :cond_58

    :try_start_25
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 263
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 264
    new-instance v0, Lcom/android/common/m/b;

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 265
    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object v6, p1

    .line 264
    invoke-direct/range {v0 .. v6}, Lcom/android/common/m/b;-><init>(JIJLandroid/net/Uri;)V

    .line 267
    iget-wide v2, v0, Lcom/android/common/m/b;->aaX:J

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 266
    invoke-static {p0, v2, v3, v1, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 268
    iget-object v2, v0, Lcom/android/common/m/b;->aaY:Landroid/net/Uri;

    invoke-static {v2, p0}, Lcom/android/common/h;->aoX(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 269
    iget-object v2, v0, Lcom/android/common/m/b;->aaY:Landroid/net/Uri;

    .line 270
    iget v0, v0, Lcom/android/common/m/b;->orientation:I

    .line 269
    invoke-static {v2, v1, v0}, Lcom/android/common/m/a;->agS(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/common/m/a;
    :try_end_57
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_25 .. :try_end_57} :catch_8d
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_57} :catch_8f
    .catchall {:try_start_25 .. :try_end_57} :catchall_88

    move-result-object v8

    .line 278
    :cond_58
    if-eqz v7, :cond_5d

    .line 279
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_5d
    :goto_5d
    return-object v8

    .line 275
    :catch_5e
    move-exception v0

    move-object v1, v8

    .line 276
    :goto_60
    :try_start_60
    const-string/jumbo v2, "Thumbnail"

    const-string/jumbo v3, "getThumbnailFromUri fail"

    invoke-static {v2, v3, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_8a

    .line 278
    if-eqz v1, :cond_5d

    .line 279
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5d

    .line 273
    :catch_6f
    move-exception v0

    move-object v7, v8

    .line 274
    :goto_71
    :try_start_71
    const-string/jumbo v1, "Thumbnail"

    const-string/jumbo v2, "sql i/o exctption in thumbnail"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_88

    .line 278
    if-eqz v7, :cond_5d

    .line 279
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5d

    .line 277
    :catchall_80
    move-exception v0

    move-object v7, v8

    .line 278
    :goto_82
    if-eqz v7, :cond_87

    .line 279
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_87
    throw v0

    :catchall_88
    move-exception v0

    goto :goto_82

    :catchall_8a
    move-exception v0

    move-object v7, v1

    goto :goto_82

    .line 273
    :catch_8d
    move-exception v0

    goto :goto_71

    .line 275
    :catch_8f
    move-exception v0

    move-object v1, v7

    goto :goto_60
.end method

.method private static ahf(Ljava/lang/String;Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 384
    :try_start_1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 385
    if-eqz p0, :cond_1e

    .line 386
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 390
    :goto_b
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 391
    if-nez v1, :cond_1a

    .line 392
    const-string/jumbo v2, "Thumbnail"

    const-string/jumbo v3, "getFrameAtTime fail: bitmap is null"

    invoke-static {v2, v3}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_1a
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 395
    return-object v1

    .line 388
    :cond_1e
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_21} :catch_22

    goto :goto_b

    .line 396
    :catch_22
    move-exception v0

    .line 397
    if-eqz v0, :cond_49

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 398
    const-string/jumbo v1, "Thumbnail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVideoFrame fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_49
    return-object v4
.end method


# virtual methods
.method public agW()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/common/m/a;->aaT:Z

    return v0
.end method

.method public agX()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/common/m/a;->aaS:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public ahe()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/common/m/a;->aaU:Landroid/net/Uri;

    return-object v0
.end method

.method public ahg(Ljava/io/File;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/android/common/m/a;->aaU:Landroid/net/Uri;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/common/m/a;->aaS:Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    .line 97
    :cond_9
    return-void

    .line 99
    :cond_a
    new-instance v5, Ljava/io/File;

    const-string/jumbo v0, "last_thumb"

    invoke-direct {v5, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    sget-object v6, Lcom/android/common/m/a;->aaV:Ljava/lang/Object;

    monitor-enter v6

    .line 105
    :try_start_15
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_46
    .catchall {:try_start_15 .. :try_end_1a} :catchall_74

    .line 106
    :try_start_1a
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v0, 0x1000

    invoke-direct {v3, v4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_8e
    .catchall {:try_start_1a .. :try_end_21} :catchall_81

    .line 107
    :try_start_21
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_92
    .catchall {:try_start_21 .. :try_end_26} :catchall_84

    .line 108
    :try_start_26
    iget-object v0, p0, Lcom/android/common/m/a;->aaU:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/common/m/a;->aaS:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5a

    invoke-virtual {v0, v2, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 110
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_3b} :catch_97
    .catchall {:try_start_26 .. :try_end_3b} :catchall_88

    .line 114
    :try_start_3b
    invoke-static {v4}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v3}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 116
    invoke-static {v1}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_71

    :goto_44
    monitor-exit v6

    .line 95
    return-void

    .line 111
    :catch_46
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 112
    :goto_49
    :try_start_49
    const-string/jumbo v4, "Thumbnail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Fail to store bitmap. path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_49 .. :try_end_67} :catchall_8b

    .line 114
    :try_start_67
    invoke-static {v3}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v2}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 116
    invoke-static {v1}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_71

    goto :goto_44

    .line 103
    :catchall_71
    move-exception v0

    monitor-exit v6

    throw v0

    .line 113
    :catchall_74
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    .line 114
    :goto_77
    :try_start_77
    invoke-static {v4}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v2}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 116
    invoke-static {v1}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 113
    throw v0
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_71

    :catchall_81
    move-exception v0

    move-object v1, v2

    goto :goto_77

    :catchall_84
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_77

    :catchall_88
    move-exception v0

    move-object v2, v3

    goto :goto_77

    :catchall_8b
    move-exception v0

    move-object v4, v3

    goto :goto_77

    .line 111
    :catch_8e
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_49

    :catch_92
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_49

    :catch_97
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_49
.end method

.method public ahh(Z)V
    .registers 2

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/common/m/a;->aaT:Z

    .line 86
    return-void
.end method

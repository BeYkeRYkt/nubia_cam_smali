.class public Lcom/android/common/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final agO:Ljava/lang/String;

.field public static agP:Landroid/net/Uri;

.field public static final agQ:Ljava/lang/String;

.field public static agR:Ljava/lang/String;

.field public static final agS:Ljava/lang/String;

.field public static agT:Ljava/lang/String;

.field private static agU:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52
    invoke-static {}, Lcom/android/common/s;->arr()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/f;->agO:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/common/f;->agO:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@78
    nop

    move-result-object v0

    const-string/jumbo v1, "/Camera"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@78
    nop

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@7
    nop

    move-result-object v0

    sput-object v0, Lcom/android/common/f;->agS:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/android/common/s;->ars()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/f;->agR:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/common/f;->agR:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@78
    nop

    move-result-object v0

    const-string/jumbo v1, "/Camera"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@78
    nop

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@7
    nop

    move-result-object v0

    sput-object v0, Lcom/android/common/f;->agT:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/common/f;->agU:Z

    .line 66
    sget-object v0, Lcom/android/common/f;->agS:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@58
    nop

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@4
    nop

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/f;->agQ:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/android/common/f;->agP:Landroid/net/Uri;

    .line 44
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aoA(Z)V
    .registers 1

    .prologue
    .line 334
    sput-boolean p0, Lcom/android/common/f;->agU:Z

    .line 333
    return-void
.end method

.method public static aoB(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/location/Location;I[BIIILjava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;)Landroid/net/Uri;
    .registers 20

    .prologue
    .line 120
    if-nez p10, :cond_f2

    .line 121
    move/from16 v0, p9

    move-object/from16 v1, p12

    invoke-static {v0, v1}, Lcom/android/common/f;->aot(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p10

    .line 122
    move/from16 v0, p9

    move-object/from16 v1, p12

    invoke-static {p3, v0, v1}, Lcom/android/common/f;->aov(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    const/4 v3, 0x0

    .line 139
    :try_start_27
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p10

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_37

    .line 141
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 142
    :cond_37
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3c} :catch_128
    .catchall {:try_start_27 .. :try_end_3c} :catchall_139

    .line 143
    :try_start_3c
    invoke-virtual {v4, p6}, Ljava/io/FileOutputStream;->write([B)V

    .line 144
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 146
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4f} :catch_15f
    .catchall {:try_start_3c .. :try_end_4f} :catchall_15c

    .line 152
    :try_start_4f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_125

    .line 156
    :goto_52
    if-eqz p11, :cond_59

    .line 160
    move-object/from16 v0, p11

    invoke-static {v0, v2}, Lcom/android/common/h;->ape(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 163
    :cond_59
    new-instance v3, Landroid/content/ContentValues;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 164
    const-string/jumbo v4, "datetaken"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string/jumbo v4, "_data"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v2, "title"

    invoke-virtual {v3, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    if-eqz p12, :cond_83

    const-string/jumbo v2, "jpeg"

    move-object/from16 v0, p12

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_140

    .line 168
    :cond_83
    const-string/jumbo v2, "_display_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_9d
    const-string/jumbo v2, "mime_type"

    const-string/jumbo v4, "image/jpeg"

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v2, "orientation"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string/jumbo v2, "_size"

    array-length v4, p6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string/jumbo v2, "width"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string/jumbo v2, "height"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    if-eqz p4, :cond_ed

    .line 180
    const-string/jumbo v2, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 181
    const-string/jumbo v2, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 184
    :cond_ed
    invoke-static {p0, v3}, Lcom/android/common/f;->aow(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 125
    :cond_f2
    if-eqz p12, :cond_ff

    const-string/jumbo v2, "jpeg"

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_121

    .line 126
    :cond_ff
    const-string/jumbo v2, ".jpg"

    .line 131
    :goto_102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    .line 128
    :cond_121
    const-string/jumbo v2, ".raw"

    goto :goto_102

    .line 153
    :catch_125
    move-exception v3

    goto/16 :goto_52

    .line 147
    :catch_128
    move-exception v2

    .line 148
    :goto_129
    :try_start_129
    const-string/jumbo v4, "CameraStorage"

    const-string/jumbo v5, "Failed to write image"

    invoke-static {v4, v5, v2}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_132
    .catchall {:try_start_129 .. :try_end_132} :catchall_139

    .line 149
    const/4 v2, 0x0

    .line 152
    :try_start_133
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_136} :catch_137

    .line 149
    :goto_136
    return-object v2

    .line 153
    :catch_137
    move-exception v3

    goto :goto_136

    .line 150
    :catchall_139
    move-exception v2

    .line 152
    :goto_13a
    :try_start_13a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_13d} :catch_13e

    .line 150
    :goto_13d
    throw v2

    .line 153
    :catch_13e
    move-exception v3

    goto :goto_13d

    .line 170
    :cond_140
    const-string/jumbo v2, "_display_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9d

    .line 150
    :catchall_15c
    move-exception v2

    move-object v3, v4

    goto :goto_13a

    .line 147
    :catch_15f
    move-exception v2

    move-object v3, v4

    goto :goto_129
.end method

.method public static aol(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/common/f;->aos(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aom()Ljava/lang/String;
    .registers 1

    .prologue
    .line 342
    sget-boolean v0, Lcom/android/common/f;->agU:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/common/f;->agT:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/android/common/f;->agS:Ljava/lang/String;

    goto :goto_6
.end method

.method public static aon(Landroid/content/ContentResolver;[BLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    .prologue
    .line 77
    invoke-static {p1, p2}, Lcom/android/common/f;->aoz([BLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_8
    invoke-static {p0, p3}, Lcom/android/common/f;->aow(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 81
    sget-object v0, Lcom/android/common/f;->agP:Landroid/net/Uri;

    return-object v0
.end method

.method public static aoo()V
    .registers 4

    .prologue
    .line 321
    new-instance v1, Ljava/io/File;

    sget-object v0, Lcom/android/common/f;->agO:Ljava/lang/String;

    const-string/jumbo v2, "100ANDRO"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    :goto_14
    if-nez v0, :cond_34

    .line 323
    const-string/jumbo v0, "CameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_34
    return-void

    .line 322
    :cond_35
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public static aop()J
    .registers 6

    .prologue
    const-wide/16 v4, -0x1

    .line 346
    invoke-static {}, Lcom/android/common/s;->art()Z

    move-result v0

    if-nez v0, :cond_b

    .line 347
    const-wide/16 v0, -0x3

    return-wide v0

    .line 348
    :cond_b
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/common/f;->agS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 350
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 351
    :cond_1b
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 357
    :try_start_27
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, Lcom/android/common/f;->agS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_36} :catch_5e

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0

    .line 352
    :cond_3a
    const-string/jumbo v0, "CameraStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/common/f;->agS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-wide v4

    .line 359
    :catch_5e
    move-exception v0

    .line 360
    const-string/jumbo v1, "CameraStorage"

    const-string/jumbo v2, "Fail to access external storage"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    return-wide v4
.end method

.method private static aoq()J
    .registers 6

    .prologue
    const-wide/16 v4, -0x1

    .line 366
    invoke-static {}, Lcom/android/common/s;->aru()Z

    move-result v0

    if-nez v0, :cond_b

    .line 367
    const-wide/16 v0, -0x3

    return-wide v0

    .line 368
    :cond_b
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/common/f;->agT:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 371
    :cond_1b
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 376
    :try_start_27
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, Lcom/android/common/f;->agT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_36} :catch_3b

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0

    .line 372
    :cond_3a
    return-wide v4

    .line 378
    :catch_3b
    move-exception v0

    .line 379
    const-string/jumbo v1, "CameraStorage"

    const-string/jumbo v2, "Fail to access sd storage"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    return-wide v4
.end method

.method public static aor()J
    .registers 2

    .prologue
    .line 311
    sget-boolean v0, Lcom/android/common/f;->agU:Z

    if-eqz v0, :cond_9

    .line 312
    invoke-static {}, Lcom/android/common/f;->aoq()J

    move-result-wide v0

    return-wide v0

    .line 313
    :cond_9
    invoke-static {}, Lcom/android/common/f;->aop()J

    move-result-wide v0

    return-wide v0
.end method

.method public static aos(II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 263
    const/4 v0, -0x1

    if-ne p0, v0, :cond_16

    .line 264
    invoke-static {}, Lcom/android/common/n;->aqP()Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 273
    :cond_15
    return-object v0

    .line 267
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/common/appService/CameraMember;->mf(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private static aot(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 277
    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    move-result-object v0

    .line 278
    if-eqz p1, :cond_f

    const-string/jumbo v1, "jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 281
    :cond_f
    const/4 v0, -0x1

    if-ne p0, v0, :cond_3a

    .line 282
    invoke-static {}, Lcom/android/common/n;->aqP()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_16
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_24

    .line 290
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 291
    :cond_24
    return-object v0

    .line 279
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 285
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/common/appService/CameraMember;->me(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public static aou(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 295
    invoke-static {p1}, Lcom/android/common/f;->aol(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static aov(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 301
    if-eqz p2, :cond_b

    const-string/jumbo v0, "jpeg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 302
    :cond_b
    const-string/jumbo v0, ".jpg"

    .line 306
    :goto_e
    invoke-static {p1, p2}, Lcom/android/common/f;->aot(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 304
    :cond_2e
    const-string/jumbo v0, ".raw"

    goto :goto_e
.end method

.method private static aow(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 223
    :try_start_1
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_a

    move-result-object v0

    .line 232
    :goto_7
    sput-object v0, Lcom/android/common/f;->agP:Landroid/net/Uri;

    .line 233
    return-object v0

    .line 224
    :catch_a
    move-exception v0

    .line 230
    const-string/jumbo v2, "CameraStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to write MediaStore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_7
.end method

.method public static aox()Z
    .registers 1

    .prologue
    .line 338
    sget-boolean v0, Lcom/android/common/f;->agU:Z

    return v0
.end method

.method public static aoy(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 99
    invoke-static {p0, p1}, Lcom/android/common/f;->aow(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 100
    sget-object v0, Lcom/android/common/f;->agP:Landroid/net/Uri;

    return-object v0
.end method

.method public static aoz([BLjava/lang/String;)Z
    .registers 6

    .prologue
    .line 204
    const/4 v2, 0x0

    .line 206
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_10
    .catchall {:try_start_1 .. :try_end_6} :catchall_22

    .line 207
    :try_start_6
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_2c
    .catchall {:try_start_6 .. :try_end_9} :catchall_2a

    .line 213
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_e

    .line 217
    :goto_c
    const/4 v0, 0x1

    return v0

    .line 214
    :catch_e
    move-exception v0

    goto :goto_c

    .line 208
    :catch_10
    move-exception v0

    move-object v1, v2

    .line 209
    :goto_12
    :try_start_12
    const-string/jumbo v2, "CameraStorage"

    const-string/jumbo v3, "Failed to write image"

    invoke-static {v2, v3, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_2a

    .line 210
    const/4 v0, 0x0

    .line 213
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    .line 210
    :goto_1f
    return v0

    .line 214
    :catch_20
    move-exception v1

    goto :goto_1f

    .line 211
    :catchall_22
    move-exception v0

    move-object v1, v2

    .line 213
    :goto_24
    :try_start_24
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    .line 211
    :goto_27
    throw v0

    .line 214
    :catch_28
    move-exception v1

    goto :goto_27

    .line 211
    :catchall_2a
    move-exception v0

    goto :goto_24

    .line 208
    :catch_2c
    move-exception v0

    goto :goto_12
.end method

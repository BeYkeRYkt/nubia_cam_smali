.class public Lcn/nubia/bigAperture/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bmA:[B

.field private bmB:Landroid/content/ContentResolver;

.field private bmC:Lcom/nubia/camera/common/Native/BufferCell;

.field private bmD:Lcn/nubia/bigAperture/b;

.field private final bmE:Z

.field private bmF:Lcn/nubia/bigAperture/c;

.field private bmG:Lcn/nubia/bigAperture/p;

.field private bmH:Lcn/nubia/bigAperture/l;

.field private bmw:Lcn/nubia/bigAperture/BigApertureTask;

.field private bmx:Lcn/nubia/bigAperture/BigApertureDataPacker;

.field private bmy:Lcn/nubia/bigAperture/e;

.field private bmz:Lcom/nubia/camera/common/Native/BufferCell;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcn/nubia/bigAperture/BigApertureTask;Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/b;[BLcn/nubia/bigAperture/c;Lcn/nubia/bigAperture/p;Lcn/nubia/bigAperture/l;Lcn/nubia/bigAperture/e;)V
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcn/nubia/bigAperture/d;->bmx:Lcn/nubia/bigAperture/BigApertureDataPacker;

    .line 34
    iput-object v0, p0, Lcn/nubia/bigAperture/d;->bmw:Lcn/nubia/bigAperture/BigApertureTask;

    .line 236
    const-string/jumbo v0, "ApertureBackground"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/bigAperture/d;->bmE:Z

    .line 47
    iput-object p1, p0, Lcn/nubia/bigAperture/d;->bmB:Landroid/content/ContentResolver;

    .line 48
    iput-object p2, p0, Lcn/nubia/bigAperture/d;->bmw:Lcn/nubia/bigAperture/BigApertureTask;

    .line 49
    iput-object p3, p0, Lcn/nubia/bigAperture/d;->bmz:Lcom/nubia/camera/common/Native/BufferCell;

    .line 50
    iput-object p4, p0, Lcn/nubia/bigAperture/d;->bmC:Lcom/nubia/camera/common/Native/BufferCell;

    .line 51
    iput-object p5, p0, Lcn/nubia/bigAperture/d;->bmD:Lcn/nubia/bigAperture/b;

    .line 52
    iput-object p6, p0, Lcn/nubia/bigAperture/d;->bmA:[B

    .line 53
    new-instance v0, Lcn/nubia/bigAperture/BigApertureDataPacker;

    invoke-direct {v0}, Lcn/nubia/bigAperture/BigApertureDataPacker;-><init>()V

    iput-object v0, p0, Lcn/nubia/bigAperture/d;->bmx:Lcn/nubia/bigAperture/BigApertureDataPacker;

    .line 54
    iput-object p7, p0, Lcn/nubia/bigAperture/d;->bmF:Lcn/nubia/bigAperture/c;

    .line 55
    iput-object p8, p0, Lcn/nubia/bigAperture/d;->bmG:Lcn/nubia/bigAperture/p;

    .line 56
    iput-object p9, p0, Lcn/nubia/bigAperture/d;->bmH:Lcn/nubia/bigAperture/l;

    .line 57
    iput-object p10, p0, Lcn/nubia/bigAperture/d;->bmy:Lcn/nubia/bigAperture/e;

    .line 46
    return-void
.end method

.method private bIY(Lcom/nubia/camera/common/Native/BufferCell;)V
    .registers 6

    .prologue
    .line 233
    iget-object v0, p0, Lcn/nubia/bigAperture/d;->bmw:Lcn/nubia/bigAperture/BigApertureTask;

    iget v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    iget-object v1, p0, Lcn/nubia/bigAperture/d;->bmw:Lcn/nubia/bigAperture/BigApertureTask;

    iget v1, v1, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    iget-object v2, p0, Lcn/nubia/bigAperture/d;->bmw:Lcn/nubia/bigAperture/BigApertureTask;

    iget v2, v2, Lcn/nubia/bigAperture/BigApertureTask;->bmY:I

    iget-object v3, p0, Lcn/nubia/bigAperture/d;->bmw:Lcn/nubia/bigAperture/BigApertureTask;

    iget v3, v3, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/nubia/camera/common/Native/PrettyWaterMarkEffect;->btP(Lcom/nubia/camera/common/Native/BufferCell;IIII)V

    .line 232
    return-void
.end method

.method private bIZ(Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/BigApertureTask;)[B
    .registers 9

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    iget v2, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    iget v3, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    const/4 v4, 0x0

    .line 82
    invoke-static {p1, v2, v3, v4}, Lcn/nubia/bigAperture/a;->bIN(Lcom/nubia/camera/common/Native/BufferCell;III)[B

    move-result-object v2

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[perf test] compressBigAperatureJpeg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/d;->bJb(Ljava/lang/String;)V

    .line 85
    return-object v2
.end method

.method private bJa(IIILcn/nubia/bigAperture/b;I)Landroid/content/ContentValues;
    .registers 12

    .prologue
    .line 217
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 219
    const-string/jumbo v1, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const-string/jumbo v1, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const-string/jumbo v1, "_size"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    const-string/jumbo v1, "datetaken"

    iget-wide v2, p4, Lcn/nubia/bigAperture/b;->bmr:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    const-string/jumbo v1, "orientation"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    return-object v0
.end method

.method private bJb(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 238
    iget-boolean v0, p0, Lcn/nubia/bigAperture/d;->bmE:Z

    if-eqz v0, :cond_a

    .line 239
    const-string/jumbo v0, "BigApertureStorageRequest"

    invoke-static {v0, p1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_a
    return-void
.end method

.method private bJd([B[B[BLcn/nubia/bigAperture/BigApertureTask;Lcn/nubia/bigAperture/b;Lcn/nubia/bigAperture/c;)Z
    .registers 33

    .prologue
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 104
    move-object/from16 v0, p4

    iget-object v4, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/bigAperture/d;->bmB:Landroid/content/ContentResolver;

    invoke-static {v4, v5}, Lcom/android/common/h;->aoX(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 105
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcn/nubia/bigAperture/a;->bIP(Ljava/io/File;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/bigAperture/d;->bmG:Lcn/nubia/bigAperture/p;

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcn/nubia/bigAperture/p;->bKz(Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 107
    const/4 v4, 0x0

    return v4

    .line 110
    :cond_29
    move-object/from16 v0, p5

    iget-object v4, v0, Lcn/nubia/bigAperture/b;->bms:Ljava/lang/String;

    invoke-static {v4}, Lcn/nubia/bigAperture/a;->bIR(Ljava/lang/String;)Z

    move-result v4

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/bigAperture/d;->bJf([B[BLcn/nubia/bigAperture/BigApertureTask;Z)[B

    move-result-object v6

    .line 115
    if-eqz p2, :cond_41

    .line 116
    if-nez v6, :cond_4c

    .line 118
    :cond_41
    const-string/jumbo v4, "BigApertureStorageRequest"

    const-string/jumbo v5, "some data is null, drop the data"

    invoke-static {v4, v5}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v4, 0x0

    return v4

    .line 117
    :cond_4c
    if-eqz p3, :cond_41

    .line 125
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/common/custom/x;->adr()Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 126
    move-object/from16 v0, p5

    iget-object v4, v0, Lcn/nubia/bigAperture/b;->bms:Ljava/lang/String;

    .line 127
    move-object/from16 v0, p4

    iget v8, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    move-object/from16 v0, p4

    iget v9, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    move-object/from16 v0, p4

    iget v10, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmM:I

    move-object/from16 v0, p4

    iget v11, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmN:I

    move-object/from16 v0, p4

    iget v12, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmO:I

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    .line 126
    invoke-static/range {v4 .. v12}, Lcn/nubia/arcsoft/b;->bMG(Ljava/lang/String;[B[B[BIIIII)V

    .line 136
    :goto_7b
    move-object/from16 v0, p2

    array-length v4, v0

    array-length v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p3

    array-length v5, v0

    add-int v7, v4, v5

    .line 141
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 142
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 143
    move-object/from16 v0, p1

    array-length v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 144
    move-object/from16 v0, p4

    iget-object v10, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    .line 146
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 147
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 150
    move-object/from16 v0, p4

    iget v9, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    move-object/from16 v4, p0

    move-object/from16 v8, p5

    .line 145
    invoke-direct/range {v4 .. v9}, Lcn/nubia/bigAperture/d;->bJa(IIILcn/nubia/bigAperture/b;I)Landroid/content/ContentValues;

    move-result-object v4

    .line 144
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcn/nubia/bigAperture/d;->bJg(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[perf test] saveDataToGallery: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v24

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcn/nubia/bigAperture/d;->bJb(Ljava/lang/String;)V

    .line 153
    const/4 v4, 0x1

    return v4

    .line 129
    :cond_d7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/bigAperture/d;->bmx:Lcn/nubia/bigAperture/BigApertureDataPacker;

    move-object/from16 v0, p5

    iget-object v8, v0, Lcn/nubia/bigAperture/b;->bms:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p2

    array-length v12, v0

    array-length v13, v6

    .line 132
    move-object/from16 v0, p4

    iget v14, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    move-object/from16 v0, p4

    iget v15, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    .line 133
    move-object/from16 v0, p4

    iget v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmP:I

    move/from16 v16, v0

    move-object/from16 v0, p4

    iget v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmQ:I

    move/from16 v17, v0

    move-object/from16 v0, p4

    iget v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    move/from16 v18, v0

    .line 134
    move-object/from16 v0, p4

    iget v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmS:I

    move/from16 v19, v0

    move-object/from16 v0, p6

    iget v0, v0, Lcn/nubia/bigAperture/c;->bmv:I

    move/from16 v20, v0

    move-object/from16 v0, p6

    iget v0, v0, Lcn/nubia/bigAperture/c;->bmu:F

    move/from16 v21, v0

    move-object/from16 v0, p6

    iget v0, v0, Lcn/nubia/bigAperture/c;->bmt:F

    move/from16 v22, v0

    move-object/from16 v9, p2

    move-object v10, v6

    move-object/from16 v11, p3

    .line 129
    invoke-virtual/range {v7 .. v22}, Lcn/nubia/bigAperture/BigApertureDataPacker;->bokehDataPack(Ljava/lang/String;[B[B[BIIIIIIIIIFF)V

    goto/16 :goto_7b
.end method

.method private bJe([B[BLjava/lang/String;Lcn/nubia/bigAperture/BigApertureTask;)V
    .registers 8

    .prologue
    .line 89
    sget-boolean v0, Lcn/nubia/bigAperture/BigApertureService;->bnS:Z

    if-eqz v0, :cond_58

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/nubia/bigAperture/a;->bIS(Ljava/io/File;)[B

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p4, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/blur.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/common/l/c;->agh(Ljava/lang/String;[B)Z

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p4, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/gallery_thumbnail.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/common/l/c;->agh(Ljava/lang/String;[B)Z

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p4, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/depth.yuv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/common/l/c;->agh(Ljava/lang/String;[B)Z

    .line 88
    :cond_58
    return-void
.end method

.method private bJf([B[BLcn/nubia/bigAperture/BigApertureTask;Z)[B
    .registers 11

    .prologue
    .line 158
    new-instance v1, Lcom/android/common/exif/o;

    invoke-direct {v1}, Lcom/android/common/exif/o;-><init>()V

    .line 160
    :try_start_5
    invoke-virtual {v1, p1}, Lcom/android/common/exif/o;->QH([B)V

    .line 163
    if-eqz p4, :cond_e3

    .line 164
    const-string/jumbo v0, "[aper, "

    .line 168
    :goto_d
    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmT:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmU:F

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 169
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/custom/x;->adr()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 170
    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmT:F

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmU:F

    const/4 v5, 0x1

    aput v4, v3, v5

    iget v4, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    invoke-static {v3, v4, v2}, Lcn/nubia/arcsoft/a;->bMx([FI[F)V

    .line 172
    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    const-string/jumbo v3, ", "

    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    const-string/jumbo v2, ", done"

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    const-string/jumbo v2, "; "

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    iget v2, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmV:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    const-string/jumbo v2, "]"

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {v1}, Lcom/android/common/exif/o;->QO()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_e8

    .line 180
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 181
    sget v2, Lcom/android/common/exif/o;->PI:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    sget v0, Lcom/android/common/exif/o;->PE:I

    new-instance v2, Lcom/android/common/exif/m;

    iget v3, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmW:F

    const v4, 0x3c23d70a    # 0.01f

    invoke-direct {v2, v3, v4}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    sget v0, Lcom/android/common/exif/o;->PS:I

    iget v2, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    invoke-static {v2}, Lcom/android/common/c;->aoc(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    sget v0, Lcom/android/common/exif/o;->PC:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    sget v0, Lcom/android/common/exif/o;->PD:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    iget-object v0, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmX:Ljava/lang/String;

    if-eqz v0, :cond_de

    .line 188
    sget v0, Lcom/android/common/exif/o;->PB:I

    iget-object v2, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmX:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    :cond_de
    invoke-static {p2, v1}, Lcom/android/common/l/a;->age([BLandroid/util/SparseArray;)[B

    move-result-object v0

    return-object v0

    .line 166
    :cond_e3
    const-string/jumbo v0, "[bper, "

    goto/16 :goto_d

    .line 192
    :cond_e8
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 194
    sget v3, Lcom/android/common/exif/o;->PI:I

    invoke-virtual {v1, v3, v0}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/exif/o;->QQ(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 195
    sget v0, Lcom/android/common/exif/o;->PE:I

    new-instance v3, Lcom/android/common/exif/m;

    iget v4, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmW:F

    const v5, 0x3c23d70a    # 0.01f

    invoke-direct {v3, v4, v5}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v1, v0, v3}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/exif/o;->QQ(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 196
    sget v0, Lcom/android/common/exif/o;->PS:I

    iget v3, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    invoke-static {v3}, Lcom/android/common/c;->aoc(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/exif/o;->QQ(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 198
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 199
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 200
    array-length v3, p2

    const/4 v4, 0x0

    invoke-static {p2, v4, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 201
    sget v3, Lcom/android/common/exif/o;->PG:I

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/common/exif/o;->QQ(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 202
    sget v3, Lcom/android/common/exif/o;->PH:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/exif/o;->QQ(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 203
    iget-object v0, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmX:Ljava/lang/String;

    if-eqz v0, :cond_156

    .line 204
    sget v0, Lcom/android/common/exif/o;->PB:I

    iget-object v3, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmX:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/exif/o;->QQ(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 206
    :cond_156
    invoke-virtual {v1, p2, v2}, Lcom/android/common/exif/o;->QL([BLjava/io/OutputStream;)V

    .line 207
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15c} :catch_15e

    move-result-object v0

    return-object v0

    .line 209
    :catch_15e
    move-exception v0

    .line 210
    const-string/jumbo v1, "BigApertureStorageRequest"

    const-string/jumbo v2, "updateExif fail"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    return-object p2
.end method

.method private bJg(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Lcn/nubia/bigAperture/d;->bmB:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 228
    return-void
.end method


# virtual methods
.method public bJc()V
    .registers 8

    .prologue
    .line 61
    iget-object v0, p0, Lcn/nubia/bigAperture/d;->bmz:Lcom/nubia/camera/common/Native/BufferCell;

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/d;->bIY(Lcom/nubia/camera/common/Native/BufferCell;)V

    .line 63
    iget-object v0, p0, Lcn/nubia/bigAperture/d;->bmz:Lcom/nubia/camera/common/Native/BufferCell;

    iget-object v1, p0, Lcn/nubia/bigAperture/d;->bmw:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {p0, v0, v1}, Lcn/nubia/bigAperture/d;->bIZ(Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/BigApertureTask;)[B

    move-result-object v1

    .line 64
    iget-object v0, p0, Lcn/nubia/bigAperture/d;->bmz:Lcom/nubia/camera/common/Native/BufferCell;

    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 66
    iget-object v0, p0, Lcn/nubia/bigAperture/d;->bmC:Lcom/nubia/camera/common/Native/BufferCell;

    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->btX()[B

    move-result-object v3

    .line 67
    iget-object v0, p0, Lcn/nubia/bigAperture/d;->bmC:Lcom/nubia/camera/common/Native/BufferCell;

    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 69
    iget-object v0, p0, Lcn/nubia/bigAperture/d;->bmD:Lcn/nubia/bigAperture/b;

    iget-object v0, v0, Lcn/nubia/bigAperture/b;->bms:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/bigAperture/d;->bmw:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {p0, v1, v3, v0, v2}, Lcn/nubia/bigAperture/d;->bJe([B[BLjava/lang/String;Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 71
    iget-object v2, p0, Lcn/nubia/bigAperture/d;->bmA:[B

    iget-object v4, p0, Lcn/nubia/bigAperture/d;->bmw:Lcn/nubia/bigAperture/BigApertureTask;

    .line 72
    iget-object v5, p0, Lcn/nubia/bigAperture/d;->bmD:Lcn/nubia/bigAperture/b;

    iget-object v6, p0, Lcn/nubia/bigAperture/d;->bmF:Lcn/nubia/bigAperture/c;

    move-object v0, p0

    .line 71
    invoke-direct/range {v0 .. v6}, Lcn/nubia/bigAperture/d;->bJd([B[B[BLcn/nubia/bigAperture/BigApertureTask;Lcn/nubia/bigAperture/b;Lcn/nubia/bigAperture/c;)Z

    move-result v0

    .line 74
    if-eqz v0, :cond_40

    .line 76
    iget-object v0, p0, Lcn/nubia/bigAperture/d;->bmy:Lcn/nubia/bigAperture/e;

    iget-object v1, p0, Lcn/nubia/bigAperture/d;->bmw:Lcn/nubia/bigAperture/BigApertureTask;

    iget-object v2, p0, Lcn/nubia/bigAperture/d;->bmA:[B

    iget-object v4, p0, Lcn/nubia/bigAperture/d;->bmH:Lcn/nubia/bigAperture/l;

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/nubia/bigAperture/e;->bJh(Lcn/nubia/bigAperture/BigApertureTask;[B[BLcn/nubia/bigAperture/l;)V

    .line 60
    :cond_40
    return-void
.end method

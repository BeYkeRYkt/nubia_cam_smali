.class public Lcn/nubia/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/b/d;
.implements Lcn/nubia/b/a;


# instance fields
.field boC:I

.field boD:I

.field boE:I

.field boF:I

.field boG:I

.field boH:Ljava/lang/String;

.field private boI:Ljava/lang/String;

.field boJ:[I

.field boK:[F

.field boL:I

.field boM:Z

.field private boN:Ljava/lang/Object;

.field boO:I

.field boP:I

.field boQ:Landroid/hardware/Camera$Size;

.field boR:I

.field private boS:[Z

.field boT:I

.field boU:Landroid/hardware/Camera$Size;

.field boV:Landroid/net/Uri;

.field final synthetic boW:Lcn/nubia/b/b;


# direct methods
.method public constructor <init>(Lcn/nubia/b/b;JILandroid/graphics/Rect;FFLandroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;I[I)V
    .registers 14

    .prologue
    .line 128
    iput-object p1, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/b/c;->boN:Ljava/lang/Object;

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcn/nubia/b/c;->boS:[Z

    .line 103
    const/16 v0, 0x10e

    iput v0, p0, Lcn/nubia/b/c;->boG:I

    .line 104
    const/16 v0, 0x4e

    iput v0, p0, Lcn/nubia/b/c;->boL:I

    .line 130
    iput p4, p0, Lcn/nubia/b/c;->boR:I

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcn/nubia/b/b;->bLi(Lcn/nubia/b/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcn/nubia/b/b;->bLg(Lcn/nubia/b/b;)Lcom/android/common/i;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/common/i;->aqq(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    iput-object v0, p0, Lcn/nubia/b/c;->boI:Ljava/lang/String;

    .line 133
    iput-object p8, p0, Lcn/nubia/b/c;->boQ:Landroid/hardware/Camera$Size;

    .line 134
    iput-object p9, p0, Lcn/nubia/b/c;->boU:Landroid/hardware/Camera$Size;

    .line 135
    iput-object p11, p0, Lcn/nubia/b/c;->boJ:[I

    .line 136
    invoke-direct {p0, p5, p6, p7, p4}, Lcn/nubia/b/c;->bLl(Landroid/graphics/Rect;FFI)[F

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/c;->boK:[F

    .line 137
    iput p10, p0, Lcn/nubia/b/c;->boO:I

    .line 138
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/b/c;->boI:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 129
    :cond_5f
    return-void
.end method

.method private bLk(Ljava/io/File;)V
    .registers 5

    .prologue
    .line 290
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 291
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 292
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 300
    :cond_f
    :goto_f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 289
    :goto_12
    return-void

    .line 293
    :cond_13
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 294
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 295
    const/4 v0, 0x0

    :goto_1e
    array-length v2, v1

    if-ge v0, v2, :cond_29

    .line 296
    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lcn/nubia/b/c;->bLk(Ljava/io/File;)V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 298
    :cond_29
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_f

    .line 302
    :cond_2d
    const-string/jumbo v0, "BigAperSaveTasks"

    const-string/jumbo v1, "file no exist"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method private bLl(Landroid/graphics/Rect;FFI)[F
    .registers 13

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x44fa0000    # 2000.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 259
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 260
    if-nez p1, :cond_16

    .line 261
    aput v1, v0, v6

    .line 262
    aput v1, v0, v7

    .line 283
    :goto_f
    const/4 v1, 0x2

    aput p2, v0, v1

    .line 284
    const/4 v1, 0x3

    aput p3, v0, v1

    .line 286
    return-object v0

    .line 264
    :cond_16
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 265
    neg-int v2, p4

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 266
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 267
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 268
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 269
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 270
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 271
    invoke-static {v1, v2}, Lcom/android/common/h;->aqc(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 272
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 273
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 274
    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 275
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 277
    add-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    .line 278
    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 280
    add-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    div-float/2addr v1, v5

    aput v1, v0, v6

    .line 281
    add-int/lit16 v1, v2, 0x3e8

    int-to-float v1, v1

    div-float/2addr v1, v5

    aput v1, v0, v7

    goto :goto_f
.end method

.method private bLn()V
    .registers 28

    .prologue
    .line 146
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/b/c;->boV:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/b/c;->boM:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/b/c;->boK:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/c;->bLo(Landroid/net/Uri;Z[F)V

    .line 149
    new-instance v1, Lcn/nubia/bigAperture/BigApertureTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/b/c;->boV:Landroid/net/Uri;

    .line 150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/b/c;->boI:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/b/c;->boQ:Landroid/hardware/Camera$Size;

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/b/c;->boQ:Landroid/hardware/Camera$Size;

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/b/c;->boU:Landroid/hardware/Camera$Size;

    iget v7, v2, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/b/c;->boU:Landroid/hardware/Camera$Size;

    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    .line 152
    move-object/from16 v0, p0

    iget v11, v0, Lcn/nubia/b/c;->boP:I

    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/b/c;->boT:I

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/b/c;->boK:[F

    const/4 v9, 0x0

    aget v13, v2, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/b/c;->boK:[F

    const/4 v9, 0x1

    aget v14, v2, v9

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/b/c;->boK:[F

    const/4 v9, 0x3

    aget v15, v2, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/b/c;->boK:[F

    const/4 v9, 0x2

    aget v16, v2, v9

    .line 155
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/b/c;->boR:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/b/c;->boD:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/b/c;->boE:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/b/c;->boC:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/b/c;->boF:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/b/c;->boH:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/b/c;->boO:I

    move/from16 v23, v0

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/b/c;->boJ:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/b/c;->boG:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/b/c;->boL:I

    move/from16 v26, v0

    .line 149
    const/4 v2, 0x0

    .line 152
    const/16 v9, 0x320

    const/16 v10, 0x258

    .line 149
    invoke-direct/range {v1 .. v26}, Lcn/nubia/bigAperture/BigApertureTask;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IIIIIIIIFFFFIIIIILjava/lang/String;I[III)V

    .line 157
    new-instance v2, Lcn/nubia/bigAperture/m;

    sget-boolean v3, Lcn/nubia/bigAperture/BigApertureService;->bnS:Z

    invoke-direct {v2, v3}, Lcn/nubia/bigAperture/m;-><init>(Z)V

    invoke-virtual {v2, v1}, Lcn/nubia/bigAperture/m;->bKy(Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    invoke-static {v2}, Lcn/nubia/b/b;->bLd(Lcn/nubia/b/b;)Lcn/nubia/bigAperture/BigApertureProcess;

    move-result-object v2

    invoke-interface {v2, v1}, Lcn/nubia/bigAperture/BigApertureProcess;->addTaskObject(Lcn/nubia/bigAperture/BigApertureTask;)Z
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b0} :catch_b1

    .line 144
    :goto_b0
    return-void

    .line 177
    :catch_b1
    move-exception v1

    .line 178
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 179
    const-string/jumbo v1, "BigAperSaveTasks"

    const-string/jumbo v2, "addTask fail"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b0
.end method

.method private bLo(Landroid/net/Uri;Z[F)V
    .registers 16

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 310
    iget-object v0, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    const-string/jumbo v1, "updateThumbnailRefocusState"

    invoke-static {v0, v1}, Lcn/nubia/b/b;->bLj(Lcn/nubia/b/b;Ljava/lang/String;)V

    .line 313
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v7

    const-string/jumbo v0, "datetaken"

    aput-object v0, v2, v8

    .line 314
    const-string/jumbo v3, "mime_type=\'image/jpeg\' AND _data like \'%/DCIM/Camera/%\'"

    .line 316
    const-string/jumbo v5, "datetaken DESC,_id DESC"

    .line 317
    iget-object v0, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    invoke-static {v0}, Lcn/nubia/b/b;->bLe(Lcn/nubia/b/b;)Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 319
    const-wide/16 v0, -0x1

    .line 320
    if-eqz v5, :cond_54

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_116

    .line 321
    const-string/jumbo v0, "_data"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 322
    const-string/jumbo v0, "datetaken"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move-wide v10, v0

    move-object v1, v2

    move-wide v2, v10

    .line 324
    :goto_4c
    if-eqz v5, :cond_51

    .line 325
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 328
    :cond_51
    if-nez v1, :cond_57

    .line 329
    return-void

    :cond_54
    move-wide v2, v0

    move-object v1, v4

    .line 320
    goto :goto_4c

    .line 332
    :cond_57
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 334
    iget-boolean v0, p0, Lcn/nubia/b/c;->boM:Z

    if-eqz v0, :cond_111

    const-string/jumbo v0, "[aper, "

    .line 335
    :goto_63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v6, p3, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 336
    const-string/jumbo v6, ", "

    .line 335
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 336
    aget v6, p3, v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    .line 335
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 337
    const-string/jumbo v6, ", undo"

    .line 335
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 338
    const-string/jumbo v6, "; "

    .line 335
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 338
    aget v6, p3, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    .line 335
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 339
    const-string/jumbo v6, "]"

    .line 335
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    sget v6, Lcom/android/common/exif/o;->PI:I

    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    sget v0, Lcom/android/common/exif/o;->PS:I

    iget v6, p0, Lcn/nubia/b/c;->boR:I

    invoke-static {v6}, Lcom/android/common/c;->aoc(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    sget v0, Lcom/android/common/exif/o;->PE:I

    new-instance v6, Lcom/android/common/exif/m;

    const/4 v7, 0x3

    aget v7, p3, v7

    const v8, 0x3c23d70a    # 0.01f

    invoke-direct {v6, v7, v8}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    sget v0, Lcom/android/common/exif/o;->PC:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/common/custom/x;->aem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    sget v0, Lcom/android/common/exif/o;->PD:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/common/custom/x;->aen()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    invoke-static {v1, v5}, Lcom/android/common/h;->aph(Ljava/lang/String;Landroid/util/SparseArray;)Ljava/io/ByteArrayOutputStream;

    .line 348
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 349
    const-string/jumbo v1, "datetaken"

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 350
    iget-object v1, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    invoke-static {v1}, Lcn/nubia/b/b;->bLe(Lcn/nubia/b/b;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/b/c;->boV:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 306
    return-void

    .line 334
    :cond_111
    const-string/jumbo v0, "[bper, "

    goto/16 :goto_63

    :cond_116
    move-wide v2, v0

    move-object v1, v4

    goto/16 :goto_4c
.end method


# virtual methods
.method public bKV([B)V
    .registers 9

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    const-string/jumbo v1, "onColorJpgReceived"

    invoke-static {v0, v1}, Lcn/nubia/b/b;->bLj(Lcn/nubia/b/b;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcn/nubia/b/c;->boI:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 249
    iget-object v0, p0, Lcn/nubia/b/c;->boS:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcn/nubia/b/c;->boV:Landroid/net/Uri;

    if-nez v0, :cond_2c

    .line 250
    iget-object v0, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    invoke-static {v0}, Lcn/nubia/b/b;->bLf(Lcn/nubia/b/b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v0, Lcn/nubia/b/e;

    iget-object v1, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcn/nubia/b/e;-><init>(Lcn/nubia/b/b;Lcn/nubia/b/d;I[BLjava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 246
    :cond_2b
    :goto_2b
    return-void

    .line 252
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/b/c;->boI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    invoke-static {v1}, Lcn/nubia/b/b;->bLc(Lcn/nubia/b/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 253
    iget-object v0, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    invoke-static {v0}, Lcn/nubia/b/b;->bLf(Lcn/nubia/b/b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v0, Lcn/nubia/b/e;

    iget-object v1, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/b/e;-><init>(Lcn/nubia/b/b;Lcn/nubia/b/d;I[BLjava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2b
.end method

.method public bKW([BIIIIILjava/lang/String;)V
    .registers 15

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 218
    iget-object v0, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    const-string/jumbo v1, "onColorYUVReceived"

    invoke-static {v0, v1}, Lcn/nubia/b/b;->bLj(Lcn/nubia/b/b;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcn/nubia/b/c;->boI:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 220
    iget-object v0, p0, Lcn/nubia/b/c;->boS:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcn/nubia/b/c;->boV:Landroid/net/Uri;

    if-nez v0, :cond_2c

    .line 221
    iget-object v0, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    invoke-static {v0}, Lcn/nubia/b/b;->bLf(Lcn/nubia/b/b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v0, Lcn/nubia/b/e;

    iget-object v1, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/b/e;-><init>(Lcn/nubia/b/b;Lcn/nubia/b/d;I[BLjava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 217
    :cond_2b
    :goto_2b
    return-void

    .line 223
    :cond_2c
    iput p2, p0, Lcn/nubia/b/c;->boP:I

    .line 224
    iput p3, p0, Lcn/nubia/b/c;->boF:I

    .line 225
    iput p4, p0, Lcn/nubia/b/c;->boD:I

    .line 226
    iput p5, p0, Lcn/nubia/b/c;->boE:I

    .line 227
    iput p6, p0, Lcn/nubia/b/c;->boC:I

    .line 228
    iput-object p7, p0, Lcn/nubia/b/c;->boH:Ljava/lang/String;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/b/c;->boI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    invoke-static {v1}, Lcn/nubia/b/b;->bLc(Lcn/nubia/b/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".yuv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 230
    iget-object v0, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    invoke-static {v0}, Lcn/nubia/b/b;->bLf(Lcn/nubia/b/b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v0, Lcn/nubia/b/e;

    iget-object v1, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/b/e;-><init>(Lcn/nubia/b/b;Lcn/nubia/b/d;I[BLjava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2b
.end method

.method public bKX([BILcn/nubia/bigAperture/f;Landroid/hardware/Camera$Size;)V
    .registers 14

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 203
    iget-object v0, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    const-string/jumbo v1, "onMonoYUVReceived"

    invoke-static {v0, v1}, Lcn/nubia/b/b;->bLj(Lcn/nubia/b/b;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcn/nubia/b/c;->boI:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 205
    iget-object v0, p0, Lcn/nubia/b/c;->boS:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcn/nubia/b/c;->boV:Landroid/net/Uri;

    if-nez v0, :cond_2c

    .line 206
    iget-object v0, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    invoke-static {v0}, Lcn/nubia/b/b;->bLf(Lcn/nubia/b/b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v0, Lcn/nubia/b/e;

    iget-object v1, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/b/e;-><init>(Lcn/nubia/b/b;Lcn/nubia/b/d;I[BLjava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 202
    :cond_2b
    :goto_2b
    return-void

    .line 208
    :cond_2c
    iput p2, p0, Lcn/nubia/b/c;->boT:I

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/b/c;->boI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    invoke-static {v1}, Lcn/nubia/b/b;->bLh(Lcn/nubia/b/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".yuv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 210
    iget-object v0, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    invoke-static {v0}, Lcn/nubia/b/b;->bLf(Lcn/nubia/b/b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v0, Lcn/nubia/b/e;

    iget-object v1, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    move-object v2, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcn/nubia/b/e;-><init>(Lcn/nubia/b/b;Lcn/nubia/b/d;I[BLjava/lang/String;Lcn/nubia/bigAperture/f;Landroid/hardware/Camera$Size;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2b
.end method

.method public bKY(Landroid/net/Uri;Z)V
    .registers 5

    .prologue
    .line 237
    iget-object v0, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    const-string/jumbo v1, "onThumbnailUpdated"

    invoke-static {v0, v1}, Lcn/nubia/b/b;->bLj(Lcn/nubia/b/b;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcn/nubia/b/c;->boI:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 239
    iput-object p1, p0, Lcn/nubia/b/c;->boV:Landroid/net/Uri;

    .line 240
    iput-boolean p2, p0, Lcn/nubia/b/c;->boM:Z

    .line 241
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/nubia/b/c;->bLm(I)V

    .line 236
    :cond_14
    return-void
.end method

.method public bLm(I)V
    .registers 5

    .prologue
    .line 185
    iget-object v0, p0, Lcn/nubia/b/c;->boW:Lcn/nubia/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataSaved type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/b/b;->bLj(Lcn/nubia/b/b;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcn/nubia/b/c;->boN:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_1c
    iget-object v0, p0, Lcn/nubia/b/c;->boS:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    .line 189
    iget-object v0, p0, Lcn/nubia/b/c;->boS:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcn/nubia/b/c;->boS:[Z

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcn/nubia/b/c;->boS:[Z

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_3d

    .line 191
    iget-object v0, p0, Lcn/nubia/b/c;->boV:Landroid/net/Uri;

    if-eqz v0, :cond_3f

    .line 192
    invoke-direct {p0}, Lcn/nubia/b/c;->bLn()V
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_53

    :cond_3d
    :goto_3d
    monitor-exit v1

    .line 184
    return-void

    .line 194
    :cond_3f
    :try_start_3f
    const-string/jumbo v0, "BigAperSaveTasks"

    const-string/jumbo v2, "addTask fail"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/b/c;->boI:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/nubia/b/c;->bLk(Ljava/io/File;)V
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_53

    goto :goto_3d

    .line 186
    :catchall_53
    move-exception v0

    monitor-exit v1

    throw v0
.end method

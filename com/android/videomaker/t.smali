.class public Lcom/android/videomaker/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bea(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 200
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_13
    .catchall {:try_start_1 .. :try_end_6} :catchall_1f

    .line 201
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 202
    const/4 v3, 0x0

    invoke-static {v0, v3, p1, p2}, Lcom/android/videomaker/t;->bef(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_27
    .catchall {:try_start_6 .. :try_end_e} :catchall_25

    move-result-object v0

    .line 207
    invoke-static {v1}, Lcom/android/videomaker/t;->bec(Ljava/io/Closeable;)V

    .line 202
    return-object v0

    .line 203
    :catch_13
    move-exception v0

    move-object v1, v2

    .line 204
    :goto_15
    :try_start_15
    const-string/jumbo v3, "Util"

    invoke-static {v3, v0}, Lcom/a/a;->bvs(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_25

    .line 207
    invoke-static {v1}, Lcom/android/videomaker/t;->bec(Ljava/io/Closeable;)V

    .line 205
    return-object v2

    .line 206
    :catchall_1f
    move-exception v0

    move-object v1, v2

    .line 207
    :goto_21
    invoke-static {v1}, Lcom/android/videomaker/t;->bec(Ljava/io/Closeable;)V

    .line 206
    throw v0

    :catchall_25
    move-exception v0

    goto :goto_21

    .line 203
    :catch_27
    move-exception v0

    goto :goto_15
.end method

.method public static beb(Lcom/android/videomaker/i;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 54
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/android/videomaker/i;->bci()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_17
    .catchall {:try_start_1 .. :try_end_a} :catchall_23

    .line 55
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 56
    const/4 v3, 0x0

    invoke-static {v0, v3, p0}, Lcom/android/videomaker/t;->bee(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;Lcom/android/videomaker/i;)Landroid/graphics/Bitmap;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_2b
    .catchall {:try_start_a .. :try_end_12} :catchall_29

    move-result-object v0

    .line 61
    invoke-static {v1}, Lcom/android/videomaker/t;->bec(Ljava/io/Closeable;)V

    .line 56
    return-object v0

    .line 57
    :catch_17
    move-exception v0

    move-object v1, v2

    .line 58
    :goto_19
    :try_start_19
    const-string/jumbo v3, "Util"

    invoke-static {v3, v0}, Lcom/a/a;->bvs(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_29

    .line 61
    invoke-static {v1}, Lcom/android/videomaker/t;->bec(Ljava/io/Closeable;)V

    .line 59
    return-object v2

    .line 60
    :catchall_23
    move-exception v0

    move-object v1, v2

    .line 61
    :goto_25
    invoke-static {v1}, Lcom/android/videomaker/t;->bec(Ljava/io/Closeable;)V

    .line 60
    throw v0

    :catchall_29
    move-exception v0

    goto :goto_25

    .line 57
    :catch_2b
    move-exception v0

    goto :goto_19
.end method

.method public static bec(Ljava/io/Closeable;)V
    .registers 4

    .prologue
    .line 272
    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 270
    :cond_5
    :goto_5
    return-void

    .line 273
    :catch_6
    move-exception v0

    .line 274
    const-string/jumbo v1, "Util"

    const-string/jumbo v2, "fail to close"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private static bed(F)I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 112
    float-to-int v0, p0

    .line 113
    if-gt v0, v1, :cond_5

    .line 114
    return v1

    .line 116
    :cond_5
    const/16 v1, 0x8

    if-gt v0, v1, :cond_e

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_d
    return v0

    .line 117
    :cond_e
    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    goto :goto_d
.end method

.method private static bee(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;Lcom/android/videomaker/i;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 67
    if-nez p1, :cond_8

    .line 68
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 69
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 70
    invoke-static {p0, v4, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 71
    invoke-virtual {p2}, Lcom/android/videomaker/i;->bcj()Lcom/android/videomaker/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/p;->bdt()I

    move-result v0

    .line 72
    invoke-virtual {p2}, Lcom/android/videomaker/i;->bcj()Lcom/android/videomaker/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videomaker/p;->bds()I

    move-result v1

    .line 73
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 74
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 75
    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    int-to-float v2, v3

    int-to-float v1, v1

    div-float v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 76
    invoke-static {v0}, Lcom/android/videomaker/t;->bed(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 79
    invoke-static {p0, v4, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    if-nez v0, :cond_3e

    .line 81
    return-object v4

    .line 83
    :cond_3e
    invoke-static {v0, p2}, Lcom/android/videomaker/t;->bej(Landroid/graphics/Bitmap;Lcom/android/videomaker/i;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method private static bef(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 214
    if-nez p1, :cond_9

    .line 215
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 216
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 217
    invoke-static {p0, v3, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 218
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 219
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 221
    int-to-float v2, p3

    int-to-float v0, v0

    div-float v0, v2, v0

    int-to-float v2, p3

    int-to-float v1, v1

    div-float v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 222
    invoke-static {v2}, Lcom/android/videomaker/t;->bed(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 223
    iput-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 225
    invoke-static {p0, v3, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 226
    if-nez v1, :cond_2e

    .line 227
    return-object v3

    .line 230
    :cond_2e
    if-eqz p2, :cond_49

    .line 231
    invoke-static {v1, p2}, Lcom/android/videomaker/t;->bel(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 238
    :goto_37
    const/16 v1, 0x190

    if-gt p3, v1, :cond_4b

    .line 239
    invoke-static {v0, p3, v4}, Lcom/android/videomaker/t;->bei(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 240
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/videomaker/t;->beh(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 241
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 242
    return-object v1

    :cond_49
    move-object v0, v1

    .line 234
    goto :goto_37

    .line 244
    :cond_4b
    invoke-static {v0, v2, v4}, Lcom/android/videomaker/t;->bek(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 245
    return-object v0
.end method

.method private static beg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 191
    if-nez v0, :cond_8

    .line 192
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 194
    :cond_8
    return-object v0
.end method

.method public static beh(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 173
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 174
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0}, Lcom/android/videomaker/t;->beg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 173
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 177
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 178
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 179
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 180
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    int-to-float v5, p1

    int-to-float v6, p1

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 183
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 184
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 186
    return-object v0
.end method

.method public static bei(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 153
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 154
    if-ne v0, p1, :cond_10

    if-ne v1, p1, :cond_10

    return-object p0

    .line 158
    :cond_10
    int-to-float v2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 160
    invoke-static {p0}, Lcom/android/videomaker/t;->beg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p1, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 162
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 163
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 164
    sub-int v2, p1, v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    sub-int v3, p1, v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 165
    invoke-virtual {v4, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 167
    invoke-virtual {v4, p0, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 168
    if-eqz p2, :cond_55

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    :cond_55
    return-object v1
.end method

.method private static bej(Landroid/graphics/Bitmap;Lcom/android/videomaker/i;)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/android/videomaker/i;->bcj()Lcom/android/videomaker/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/p;->bdt()I

    move-result v0

    .line 140
    invoke-virtual {p1}, Lcom/android/videomaker/i;->bcj()Lcom/android/videomaker/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videomaker/p;->bds()I

    move-result v1

    .line 141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 142
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 144
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v1, v1

    int-to-float v2, v3

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 145
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 147
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/videomaker/t;->bek(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    return-object v0
.end method

.method private static bek(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 123
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 124
    float-to-double v6, p1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v6, v8

    if-nez v0, :cond_13

    .line 125
    const p1, 0x3f666666    # 0.9f

    .line 127
    :cond_13
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 128
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 129
    int-to-float v0, p2

    div-int/lit8 v2, v3, 0x2

    int-to-float v2, v2

    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v0, v2, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 131
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    .line 130
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_35

    .line 133
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    :cond_35
    return-object v0
.end method

.method private static bel(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 250
    if-eqz p1, :cond_39

    .line 252
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 253
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 254
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    .line 253
    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 258
    :try_start_19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 257
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 258
    const/4 v6, 0x1

    move-object v0, p0

    .line 257
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    if-eq v0, p0, :cond_2e

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_2e} :catch_2f

    .line 262
    :cond_2e
    return-object v0

    .line 263
    :catch_2f
    move-exception v0

    .line 264
    const-string/jumbo v1, "Util"

    const-string/jumbo v2, "Failed to rotate thumbnail"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    :cond_39
    return-object p0
.end method

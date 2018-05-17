.class public Lcom/android/common/appService/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static jA(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 13

    .prologue
    const/4 v2, 0x1

    .line 174
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v0

    .line 175
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v6, v0

    .line 177
    if-gez p2, :cond_11

    move v1, v2

    .line 179
    :goto_a
    if-gez p1, :cond_20

    const/16 v0, 0x80

    .line 183
    :goto_e
    if-ge v0, v1, :cond_32

    .line 185
    return v1

    .line 178
    :cond_11
    mul-double v0, v4, v6

    int-to-double v8, p2

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v0

    goto :goto_a

    .line 180
    :cond_20
    int-to-double v8, p1

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 181
    int-to-double v8, p1

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 180
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_e

    .line 188
    :cond_32
    if-gez p2, :cond_37

    if-gez p1, :cond_37

    .line 189
    return v2

    .line 190
    :cond_37
    if-gez p1, :cond_3a

    .line 191
    return v1

    .line 193
    :cond_3a
    return v0
.end method

.method private static jB(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 5

    .prologue
    .line 156
    invoke-static {p0, p1, p2}, Lcom/android/common/appService/j;->jA(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    .line 160
    const/16 v0, 0x8

    if-gt v1, v0, :cond_e

    .line 161
    const/4 v0, 0x1

    .line 162
    :goto_9
    if-ge v0, v1, :cond_14

    .line 163
    shl-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 166
    :cond_e
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    .line 169
    :cond_14
    return v0
.end method

.method public static jC([BI)Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 112
    :try_start_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 114
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 116
    iget-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v1, :cond_17

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v1, v3, :cond_18

    .line 118
    :cond_17
    return-object v4

    .line 117
    :cond_18
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v1, v3, :cond_17

    .line 121
    const/4 v1, -0x1

    .line 120
    invoke-static {v0, v1, p1}, Lcom/android/common/appService/j;->jB(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 125
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 126
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_32
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_32} :catch_34

    move-result-object v0

    .line 128
    return-object v0

    .line 129
    :catch_34
    move-exception v0

    .line 130
    const-string/jumbo v1, "BitmapProcess"

    const-string/jumbo v2, "Got oom exception "

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    return-object v4
.end method

.method public static jD([BII)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 85
    :try_start_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 87
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 89
    iget-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v1, :cond_17

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v1, v3, :cond_18

    .line 91
    :cond_17
    return-object v4

    .line 90
    :cond_18
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v1, v3, :cond_17

    .line 93
    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 95
    :goto_1f
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v1, p1

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ge v1, v2, :cond_38

    .line 96
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_2c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2c} :catch_2d

    goto :goto_1f

    .line 105
    :catch_2d
    move-exception v0

    .line 106
    const-string/jumbo v1, "BitmapProcess"

    const-string/jumbo v2, "Got oom exception "

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    return-object v4

    .line 98
    :cond_38
    :try_start_38
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 102
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 103
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_38 .. :try_end_4d} :catch_2d

    move-result-object v0

    return-object v0
.end method

.method public static jE(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/common/appService/j;->jz(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static jx([BII)[B
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 18
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 19
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 21
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 22
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static jy([BI)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 27
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 28
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 29
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    return-object v0
.end method

.method public static jz(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 47
    if-nez p1, :cond_b

    if-eqz p2, :cond_51

    :cond_b
    if-eqz p0, :cond_51

    .line 48
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 51
    if-eqz p2, :cond_29

    .line 52
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 53
    if-eqz p1, :cond_1e

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_52

    .line 54
    :cond_1e
    invoke-virtual {v5, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 55
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 63
    :cond_29
    :goto_29
    if-eqz p1, :cond_3b

    .line 65
    int-to-float v0, p1

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    .line 65
    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 71
    :cond_3b
    :try_start_3b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 70
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    if-eq p0, v0, :cond_51

    .line 73
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_50
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3b .. :try_end_50} :catch_80

    move-object p0, v0

    .line 80
    :cond_51
    :goto_51
    return-object p0

    .line 56
    :cond_52
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_5a

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_66

    .line 57
    :cond_5a
    invoke-virtual {v5, v3, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 58
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_29

    .line 60
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :catch_80
    move-exception v0

    .line 77
    const-string/jumbo v1, "BitmapProcess"

    const-string/jumbo v2, "Have no memory to rotate. Return the original bitmap."

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_51
.end method

.class Lcom/android/gallery3d/ui/k;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic aws:Lcom/android/gallery3d/ui/j;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/j;)V
    .registers 2

    .prologue
    .line 2144
    iput-object p1, p0, Lcom/android/gallery3d/ui/k;->aws:Lcom/android/gallery3d/ui/j;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/j;Lcom/android/gallery3d/ui/k;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/k;-><init>(Lcom/android/gallery3d/ui/j;)V

    return-void
.end method

.method private aLC(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 2214
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method protected varargs aLD([Lcom/android/gallery3d/ui/i;)Ljava/lang/Void;
    .registers 16

    .prologue
    .line 2147
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/k;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 2148
    :cond_8
    const/4 v0, 0x0

    aget-object v7, p1, v0

    .line 2149
    iget-object v0, p0, Lcom/android/gallery3d/ui/k;->aws:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJD(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/a/p;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/a/p;->aHW(I)Lcom/android/gallery3d/a/g;

    move-result-object v0

    .line 2150
    invoke-interface {v0}, Lcom/android/gallery3d/a/g;->aHH()Landroid/net/Uri;

    move-result-object v2

    .line 2151
    invoke-interface {v0}, Lcom/android/gallery3d/a/g;->aHv()I

    move-result v3

    .line 2152
    iget-object v0, p0, Lcom/android/gallery3d/ui/k;->aws:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJA(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2153
    invoke-virtual {v7}, Lcom/android/gallery3d/ui/i;->aKC()Landroid/graphics/RectF;

    move-result-object v8

    .line 2156
    :try_start_33
    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 2157
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2158
    const/4 v0, 0x1

    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2159
    const/4 v0, 0x0

    invoke-static {v5, v0, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2160
    iget v1, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2161
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2162
    const/16 v9, 0x5a

    if-eq v3, v9, :cond_4f

    const/16 v9, 0x10e

    if-ne v3, v9, :cond_53

    .line 2163
    :cond_4f
    iget v1, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2164
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2166
    :cond_53
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 2169
    new-instance v9, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 2170
    iget-object v11, p0, Lcom/android/gallery3d/ui/k;->aws:Lcom/android/gallery3d/ui/j;

    iget-object v11, v11, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v11}, Lcom/android/gallery3d/ui/FilmStripView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 2171
    iget-object v12, p0, Lcom/android/gallery3d/ui/k;->aws:Lcom/android/gallery3d/ui/j;

    iget-object v12, v12, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v12}, Lcom/android/gallery3d/ui/FilmStripView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 2169
    invoke-direct {v9, v5, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2172
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2174
    iget v10, v8, Landroid/graphics/RectF;->left:F

    neg-float v10, v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget v11, v8, Landroid/graphics/RectF;->top:F

    neg-float v11, v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 2176
    int-to-float v10, v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float/2addr v10, v11

    int-to-float v11, v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v12

    div-float/2addr v11, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 2178
    neg-int v10, v1

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v0, v11

    invoke-virtual {v5, v10, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2179
    rsub-int v0, v3, 0x168

    rem-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v0, v10, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 2180
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v0, v10

    iget v10, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v5, v0, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2181
    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2183
    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    .line 2184
    const/4 v0, 0x0

    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2185
    int-to-float v0, v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2186
    invoke-direct {p0, v9}, Lcom/android/gallery3d/ui/k;->aLC(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0, v6}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2187
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 2188
    if-eqz v3, :cond_1b2

    .line 2189
    int-to-float v1, v3

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 2191
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2192
    const/4 v6, 0x1

    .line 2190
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 2195
    :goto_107
    new-instance v2, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 2196
    iget-object v4, p0, Lcom/android/gallery3d/ui/k;->aws:Lcom/android/gallery3d/ui/j;

    iget-object v4, v4, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/FilmStripView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 2197
    iget-object v6, p0, Lcom/android/gallery3d/ui/k;->aws:Lcom/android/gallery3d/ui/j;

    iget-object v6, v6, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/FilmStripView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 2195
    invoke-direct {v2, v0, v3, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2198
    iget v0, v8, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v3, v8, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 2199
    invoke-static {v7}, Lcom/android/gallery3d/ui/i;->aKQ(Lcom/android/gallery3d/ui/i;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v0, v3

    .line 2200
    invoke-static {v7}, Lcom/android/gallery3d/ui/i;->aKQ(Lcom/android/gallery3d/ui/i;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    .line 2201
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 2199
    invoke-virtual {v5, v0, v3, v4, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 2202
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2204
    invoke-static {v7}, Lcom/android/gallery3d/ui/i;->aKQ(Lcom/android/gallery3d/ui/i;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/o;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/o;->aLO(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    :try_end_170
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_170} :catch_192
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_170} :catch_172

    .line 2210
    :goto_170
    const/4 v0, 0x0

    return-object v0

    .line 2207
    :catch_172
    move-exception v0

    .line 2208
    const-string/jumbo v1, "FilmStripView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_170

    .line 2205
    :catch_192
    move-exception v0

    .line 2206
    const-string/jumbo v1, "FilmStripView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FileNotFoundException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_170

    :cond_1b2
    move-object v1, v0

    goto/16 :goto_107
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 2146
    check-cast p1, [Lcom/android/gallery3d/ui/i;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/k;->aLD([Lcom/android/gallery3d/ui/i;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

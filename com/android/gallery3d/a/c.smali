.class final Lcom/android/gallery3d/a/c;
.super Lcom/android/gallery3d/a/f;
.source "SourceFile"


# instance fields
.field private final auR:Lcom/android/gallery3d/a/p;

.field private final auS:I

.field private final auT:I

.field private auU:Z

.field private final auV:Landroid/content/ContentResolver;

.field final synthetic auW:Lcom/android/gallery3d/a/b;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/b;Landroid/widget/ImageView;IILandroid/content/ContentResolver;Lcom/android/gallery3d/a/p;)V
    .registers 7

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/a/f;-><init>(Lcom/android/gallery3d/a/a;Landroid/widget/ImageView;)V

    .line 416
    iput p3, p0, Lcom/android/gallery3d/a/c;->auT:I

    .line 417
    iput p4, p0, Lcom/android/gallery3d/a/c;->auS:I

    .line 418
    iput-object p5, p0, Lcom/android/gallery3d/a/c;->auV:Landroid/content/ContentResolver;

    .line 419
    iput-object p6, p0, Lcom/android/gallery3d/a/c;->auR:Lcom/android/gallery3d/a/p;

    .line 414
    return-void
.end method


# virtual methods
.method protected varargs aHL([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 425
    iget-object v0, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    iget v0, v0, Lcom/android/gallery3d/a/b;->auM:I

    iget v3, p0, Lcom/android/gallery3d/a/c;->auT:I

    if-gt v0, v3, :cond_13

    iget-object v0, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    iget v0, v0, Lcom/android/gallery3d/a/b;->auE:I

    iget v3, p0, Lcom/android/gallery3d/a/c;->auS:I

    if-le v0, v3, :cond_b0

    .line 426
    :cond_13
    iget-object v0, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    iget v0, v0, Lcom/android/gallery3d/a/b;->auE:I

    int-to-float v0, v0

    iget v3, p0, Lcom/android/gallery3d/a/c;->auS:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 427
    iget-object v3, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    iget v3, v3, Lcom/android/gallery3d/a/b;->auM:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/gallery3d/a/c;->auT:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 428
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 438
    :goto_31
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 439
    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 440
    iget-object v4, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    iget-object v4, v4, Lcom/android/gallery3d/a/b;->auI:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 441
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v4, :cond_b2

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v4, :cond_b2

    .line 442
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 443
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 449
    :goto_4b
    if-lez v4, :cond_b5

    if-lez v3, :cond_b5

    .line 450
    iget-object v5, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    iget v5, v5, Lcom/android/gallery3d/a/b;->auM:I

    if-ne v4, v5, :cond_5b

    iget-object v5, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    iget v5, v5, Lcom/android/gallery3d/a/b;->auE:I

    if-eq v3, v5, :cond_b5

    .line 451
    :cond_5b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 452
    const-string/jumbo v1, "width"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    const-string/jumbo v1, "height"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    iget-object v1, p0, Lcom/android/gallery3d/a/c;->auV:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    invoke-virtual {v3}, Lcom/android/gallery3d/a/b;->aHH()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 455
    iput-boolean v2, p0, Lcom/android/gallery3d/a/c;->auU:Z

    .line 456
    const-string/jumbo v0, "CAM_PhotoData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/b;->aHH()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has been updated with"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 457
    const-string/jumbo v2, " correct size!"

    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return-object v6

    :cond_b0
    move v0, v2

    .line 425
    goto :goto_31

    :cond_b2
    move v3, v1

    move v4, v1

    .line 441
    goto :goto_4b

    .line 461
    :cond_b5
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 462
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 463
    invoke-static {}, Lcom/android/gallery3d/a/b;->aHJ()[B

    move-result-object v0

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 464
    invoke-virtual {p0}, Lcom/android/gallery3d/a/c;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_10e

    iget-object v0, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/b;->aHD()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 467
    iget-object v0, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    iget-object v0, v0, Lcom/android/gallery3d/a/b;->auI:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 469
    iget-object v2, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    invoke-static {v2}, Lcom/android/gallery3d/a/b;->aHK(Lcom/android/gallery3d/a/b;)I

    move-result v2

    if-eqz v2, :cond_10d

    if-eqz v0, :cond_10d

    .line 470
    invoke-virtual {p0}, Lcom/android/gallery3d/a/c;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_10f

    iget-object v2, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/b;->aHD()Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 473
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 474
    iget-object v2, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    invoke-static {v2}, Lcom/android/gallery3d/a/b;->aHK(Lcom/android/gallery3d/a/b;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 475
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 477
    :cond_10d
    return-object v0

    .line 465
    :cond_10e
    return-object v6

    .line 471
    :cond_10f
    return-object v6
.end method

.method protected aHM(Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 490
    const-string/jumbo v0, "CAM_PhotoData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCancelled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    iget-object v2, v2, Lcom/android/gallery3d/a/b;->auI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-super {p0, p1}, Lcom/android/gallery3d/a/f;->onCancelled(Ljava/lang/Object;)V

    .line 489
    return-void
.end method

.method protected aHN(Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 482
    invoke-super {p0, p1}, Lcom/android/gallery3d/a/f;->aHN(Landroid/graphics/Bitmap;)V

    .line 483
    iget-boolean v0, p0, Lcom/android/gallery3d/a/c;->auU:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/gallery3d/a/c;->auR:Lcom/android/gallery3d/a/p;

    if-eqz v0, :cond_18

    .line 484
    iget-object v0, p0, Lcom/android/gallery3d/a/c;->auR:Lcom/android/gallery3d/a/p;

    iget-object v1, p0, Lcom/android/gallery3d/a/c;->auV:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/gallery3d/a/c;->auW:Lcom/android/gallery3d/a/b;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/b;->aHH()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/a/p;->aIb(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 481
    :cond_18
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 423
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/c;->aHL([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 489
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/c;->aHM(Landroid/graphics/Bitmap;)V

    return-void
.end method

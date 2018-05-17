.class final Lcom/android/gallery3d/a/e;
.super Lcom/android/gallery3d/a/f;
.source "SourceFile"


# instance fields
.field final synthetic ava:Lcom/android/gallery3d/a/d;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/d;Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/gallery3d/a/e;->ava:Lcom/android/gallery3d/a/d;

    .line 718
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/a/f;-><init>(Lcom/android/gallery3d/a/a;Landroid/widget/ImageView;)V

    .line 717
    return-void
.end method


# virtual methods
.method protected varargs aHP([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 723
    invoke-virtual {p0}, Lcom/android/gallery3d/a/e;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/android/gallery3d/a/e;->ava:Lcom/android/gallery3d/a/d;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/d;->aHD()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 726
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 729
    :try_start_14
    iget-object v1, p0, Lcom/android/gallery3d/a/e;->ava:Lcom/android/gallery3d/a/d;

    iget-object v1, v1, Lcom/android/gallery3d/a/d;->auI:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v1

    .line 731
    invoke-virtual {p0}, Lcom/android/gallery3d/a/e;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_3b

    iget-object v3, p0, Lcom/android/gallery3d/a/e;->ava:Lcom/android/gallery3d/a/d;

    invoke-virtual {v3}, Lcom/android/gallery3d/a/d;->aHD()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 732
    if-eqz v1, :cond_35

    .line 733
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_34} :catch_40

    move-result-object v0

    .line 735
    :cond_35
    if-nez v0, :cond_3b

    .line 736
    :try_start_37
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_3a} :catch_64

    move-result-object v0

    .line 743
    :cond_3b
    :goto_3b
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 744
    return-object v0

    .line 724
    :cond_3f
    return-object v0

    .line 739
    :catch_40
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 740
    :goto_44
    const-string/jumbo v3, "CAM_LocalData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MediaMetadataRetriever.setDataSource() fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 741
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3b

    .line 739
    :catch_64
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_44
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 722
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/e;->aHP([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

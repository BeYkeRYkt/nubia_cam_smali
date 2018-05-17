.class abstract Lcom/android/gallery3d/a/f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field protected avb:Landroid/widget/ImageView;

.field final synthetic avc:Lcom/android/gallery3d/a/a;


# direct methods
.method protected constructor <init>(Lcom/android/gallery3d/a/a;Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/gallery3d/a/f;->avc:Lcom/android/gallery3d/a/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 770
    iput-object p2, p0, Lcom/android/gallery3d/a/f;->avb:Landroid/widget/ImageView;

    .line 769
    return-void
.end method


# virtual methods
.method protected aHN(Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/gallery3d/a/f;->avc:Lcom/android/gallery3d/a/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/a;->aHD()Z

    move-result v0

    if-nez v0, :cond_29

    .line 776
    const-string/jumbo v0, "CAM_LocalData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/a/f;->avc:Lcom/android/gallery3d/a/a;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/a;->aHD()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    return-void

    .line 779
    :cond_29
    if-nez p1, :cond_4a

    .line 780
    const-string/jumbo v0, "CAM_LocalData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed decoding bitmap for file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/a/f;->avc:Lcom/android/gallery3d/a/a;

    iget-object v2, v2, Lcom/android/gallery3d/a/a;->auI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    return-void

    .line 783
    :cond_4a
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 784
    iget-object v1, p0, Lcom/android/gallery3d/a/f;->avb:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 785
    iget-object v1, p0, Lcom/android/gallery3d/a/f;->avb:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 774
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 774
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/f;->aHN(Landroid/graphics/Bitmap;)V

    return-void
.end method

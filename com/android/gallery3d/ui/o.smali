.class public Lcom/android/gallery3d/ui/o;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private awD:Landroid/graphics/Bitmap;

.field private awE:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public aLO(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .registers 3

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/gallery3d/ui/o;->awD:Landroid/graphics/Bitmap;

    .line 58
    iput-object p2, p0, Lcom/android/gallery3d/ui/o;->awE:Landroid/graphics/RectF;

    .line 59
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/o;->postInvalidate()V

    .line 56
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 35
    const-string/jumbo v0, "GalleryImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "canvas "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36
    const-string/jumbo v2, " view "

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/o;->getWidth()I

    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36
    const-string/jumbo v2, " "

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/o;->getHeight()I

    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 37
    const-string/jumbo v2, " Scale "

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/o;->getScaleX()F

    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 37
    const-string/jumbo v2, " "

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/o;->getScaleY()F

    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/o;->awE:Landroid/graphics/RectF;

    if-eqz v0, :cond_be

    .line 40
    const-string/jumbo v0, "GalleryImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mZoomRect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/o;->awE:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    const-string/jumbo v2, " "

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/android/gallery3d/ui/o;->awE:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    const-string/jumbo v2, " "

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/android/gallery3d/ui/o;->awE:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    const-string/jumbo v2, " "

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/android/gallery3d/ui/o;->awE:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_be
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/o;->getScaleX()F

    move-result v0

    .line 44
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/o;->getScaleY()F

    move-result v1

    .line 45
    iget-object v2, p0, Lcom/android/gallery3d/ui/o;->awD:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_f4

    .line 46
    cmpl-float v2, v0, v3

    if-lez v2, :cond_f4

    .line 47
    cmpl-float v2, v1, v3

    if-lez v2, :cond_f4

    .line 48
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/gallery3d/ui/o;->awE:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    div-float/2addr v3, v0

    .line 49
    iget-object v4, p0, Lcom/android/gallery3d/ui/o;->awE:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    div-float/2addr v4, v1

    .line 50
    iget-object v5, p0, Lcom/android/gallery3d/ui/o;->awE:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    div-float v0, v5, v0

    .line 51
    iget-object v5, p0, Lcom/android/gallery3d/ui/o;->awE:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    div-float v1, v5, v1

    .line 48
    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/o;->awD:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/gallery3d/ui/o;->awE:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v6, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 33
    :cond_f4
    return-void
.end method

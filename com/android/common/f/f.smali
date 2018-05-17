.class Lcom/android/common/f/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private VQ:I

.field private VR:Ljava/lang/String;

.field private final VS:I

.field private final VT:I

.field private final VU:Lcom/android/common/f/a;


# direct methods
.method public constructor <init>(IILcom/android/common/f/a;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/android/common/f/f;->VT:I

    .line 20
    iput p2, p0, Lcom/android/common/f/f;->VS:I

    .line 21
    iput-object p3, p0, Lcom/android/common/f/f;->VU:Lcom/android/common/f/a;

    .line 22
    iput-object p4, p0, Lcom/android/common/f/f;->VR:Ljava/lang/String;

    .line 23
    iput p5, p0, Lcom/android/common/f/f;->VQ:I

    .line 18
    return-void
.end method


# virtual methods
.method public aaI(Landroid/graphics/Bitmap;)V
    .registers 13

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 28
    if-nez p1, :cond_5

    return-void

    .line 29
    :cond_5
    iget-object v0, p0, Lcom/android/common/f/f;->VU:Lcom/android/common/f/a;

    iget v2, p0, Lcom/android/common/f/f;->VT:I

    iget v3, p0, Lcom/android/common/f/f;->VS:I

    iget-object v4, p0, Lcom/android/common/f/f;->VR:Ljava/lang/String;

    iget v5, p0, Lcom/android/common/f/f;->VQ:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/common/f/a;->ZX(IILjava/lang/String;I)Z

    .line 31
    iget-object v0, p0, Lcom/android/common/f/f;->VU:Lcom/android/common/f/a;

    invoke-virtual {v0}, Lcom/android/common/f/a;->ZZ()Landroid/view/Surface;

    move-result-object v7

    .line 33
    const/4 v0, 0x0

    :try_start_19
    invoke-virtual {v7, v0}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1c} :catch_70
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_19 .. :try_end_1c} :catch_61
    .catchall {:try_start_19 .. :try_end_1c} :catchall_7f

    move-result-object v0

    .line 34
    :try_start_1d
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    .line 35
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    .line 36
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 37
    const/high16 v1, -0x1000000

    .line 38
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v8

    int-to-float v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 41
    if-eqz p1, :cond_53

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 46
    if-ge v1, v8, :cond_9c

    .line 47
    sub-int v1, v8, v1

    div-int/lit8 v1, v1, 0x2

    move v2, v1

    .line 49
    :goto_47
    if-le v9, v3, :cond_9a

    .line 50
    sub-int v1, v9, v3

    div-int/lit8 v1, v1, 0x2

    .line 53
    :goto_4d
    int-to-float v2, v2

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 55
    :cond_53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_56} :catch_90
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1d .. :try_end_56} :catch_95
    .catchall {:try_start_1d .. :try_end_56} :catchall_8b

    .line 63
    if-eqz v0, :cond_5b

    .line 64
    invoke-virtual {v7, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 66
    :cond_5b
    iget-object v0, p0, Lcom/android/common/f/f;->VU:Lcom/android/common/f/a;

    invoke-virtual {v0}, Lcom/android/common/f/a;->aaf()V

    .line 26
    :goto_60
    return-void

    .line 60
    :catch_61
    move-exception v0

    .line 61
    :goto_62
    :try_start_62
    invoke-virtual {v0}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_7f

    .line 63
    if-eqz v1, :cond_6a

    .line 64
    invoke-virtual {v7, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 66
    :cond_6a
    iget-object v0, p0, Lcom/android/common/f/f;->VU:Lcom/android/common/f/a;

    invoke-virtual {v0}, Lcom/android/common/f/a;->aaf()V

    goto :goto_60

    .line 58
    :catch_70
    move-exception v0

    .line 59
    :goto_71
    :try_start_71
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_7f

    .line 63
    if-eqz v1, :cond_79

    .line 64
    invoke-virtual {v7, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 66
    :cond_79
    iget-object v0, p0, Lcom/android/common/f/f;->VU:Lcom/android/common/f/a;

    invoke-virtual {v0}, Lcom/android/common/f/a;->aaf()V

    goto :goto_60

    .line 62
    :catchall_7f
    move-exception v0

    .line 63
    :goto_80
    if-eqz v1, :cond_85

    .line 64
    invoke-virtual {v7, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 66
    :cond_85
    iget-object v1, p0, Lcom/android/common/f/f;->VU:Lcom/android/common/f/a;

    invoke-virtual {v1}, Lcom/android/common/f/a;->aaf()V

    .line 62
    throw v0

    :catchall_8b
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_80

    .line 58
    :catch_90
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_71

    .line 60
    :catch_95
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_62

    :cond_9a
    move v1, v6

    goto :goto_4d

    :cond_9c
    move v2, v6

    goto :goto_47
.end method

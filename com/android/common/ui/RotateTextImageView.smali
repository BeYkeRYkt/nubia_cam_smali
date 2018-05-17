.class public Lcom/android/common/ui/RotateTextImageView;
.super Lcom/android/common/ui/RotateImageView;
.source "SourceFile"


# instance fields
.field private yJ:Ljava/lang/String;

.field private yK:Landroid/content/res/ColorStateList;

.field private yL:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v1, p0, Lcom/android/common/ui/RotateTextImageView;->yJ:Ljava/lang/String;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/RotateTextImageView;->yL:I

    .line 39
    iput-object v1, p0, Lcom/android/common/ui/RotateTextImageView;->yK:Landroid/content/res/ColorStateList;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object v1, p0, Lcom/android/common/ui/RotateTextImageView;->yJ:Ljava/lang/String;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/RotateTextImageView;->yL:I

    .line 39
    iput-object v1, p0, Lcom/android/common/ui/RotateTextImageView;->yK:Landroid/content/res/ColorStateList;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/RotateTextImageView;->Dx(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method private Dt(Landroid/graphics/Paint;)F
    .registers 4

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 120
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v1, v0

    return v0
.end method

.method private Du(Landroid/graphics/Paint;)F
    .registers 4

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 128
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->leading:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v1, v0

    return v0
.end method

.method private Dv(Landroid/graphics/Paint;Ljava/lang/String;)F
    .registers 4

    .prologue
    .line 112
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private Dw(IILjava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 13

    .prologue
    const/4 v4, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    .line 95
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 94
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 98
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    int-to-float v3, p5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 100
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 102
    int-to-float v3, p1

    invoke-direct {p0, v2, p3}, Lcom/android/common/ui/RotateTextImageView;->Dv(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    .line 103
    int-to-float v4, p2

    invoke-direct {p0, v2}, Lcom/android/common/ui/RotateTextImageView;->Dt(Landroid/graphics/Paint;)F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-direct {p0, v2}, Lcom/android/common/ui/RotateTextImageView;->Du(Landroid/graphics/Paint;)F

    move-result v5

    add-float/2addr v4, v5

    .line 104
    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 105
    return-object v0
.end method

.method private Dx(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .prologue
    .line 52
    sget-object v0, Lcom/android/camera/k;->apl:[I

    .line 51
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 54
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/RotateTextImageView;->yJ:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/android/common/ui/RotateTextImageView;->yJ:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_54
    .catchall {:try_start_7 .. :try_end_f} :catchall_64

    if-nez v0, :cond_17

    .line 69
    if-eqz v6, :cond_16

    .line 70
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    :cond_16
    return-void

    .line 59
    :cond_17
    const/4 v0, 0x2

    const/16 v1, 0xf

    .line 58
    :try_start_1a
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/RotateTextImageView;->yL:I

    .line 61
    const/4 v0, 0x1

    .line 60
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/RotateTextImageView;->yK:Landroid/content/res/ColorStateList;

    .line 62
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 63
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/common/ui/RotateTextImageView;->yJ:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/android/common/ui/RotateTextImageView;->yK:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getDrawableState()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 65
    iget v5, p0, Lcom/android/common/ui/RotateTextImageView;->yL:I

    move-object v0, p0

    .line 62
    invoke-direct/range {v0 .. v5}, Lcom/android/common/ui/RotateTextImageView;->Dw(IILjava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/RotateTextImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4e} :catch_54
    .catchall {:try_start_1a .. :try_end_4e} :catchall_64

    .line 69
    if-eqz v6, :cond_53

    .line 70
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    :cond_53
    :goto_53
    return-void

    .line 66
    :catch_54
    move-exception v0

    .line 67
    :try_start_55
    const-string/jumbo v1, "RotateTextImageView"

    const-string/jumbo v2, "readAttr failed"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_64

    .line 69
    if-eqz v6, :cond_53

    .line 70
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_53

    .line 68
    :catchall_64
    move-exception v0

    .line 69
    if-eqz v6, :cond_6a

    .line 70
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    :cond_6a
    throw v0
.end method


# virtual methods
.method public Ds(I)V
    .registers 8

    .prologue
    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/RotateTextImageView;->yJ:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/common/ui/RotateTextImageView;->yJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "@0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 80
    return-void

    .line 81
    :cond_2a
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 82
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/common/ui/RotateTextImageView;->yJ:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/android/common/ui/RotateTextImageView;->yK:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextImageView;->getDrawableState()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 84
    iget v5, p0, Lcom/android/common/ui/RotateTextImageView;->yL:I

    move-object v0, p0

    .line 81
    invoke-direct/range {v0 .. v5}, Lcom/android/common/ui/RotateTextImageView;->Dw(IILjava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/RotateTextImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_52

    .line 76
    :goto_51
    return-void

    .line 85
    :catch_52
    move-exception v0

    .line 86
    const-string/jumbo v1, "RotateTextImageView"

    const-string/jumbo v2, "setText failed"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_51
.end method

.class public Lcom/android/common/ui/RotateImageView;
.super Lcom/android/common/ui/aj;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/h;


# instance fields
.field private uh:Z

.field private ui:Lcom/android/common/ui/I;

.field private uj:Landroid/graphics/Bitmap;

.field private uk:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/common/ui/aj;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/android/common/ui/I;

    invoke-direct {v0}, Lcom/android/common/ui/I;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/RotateImageView;->ui:Lcom/android/common/ui/I;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/RotateImageView;->uh:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lcom/android/common/ui/I;

    invoke-direct {v0}, Lcom/android/common/ui/I;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/RotateImageView;->ui:Lcom/android/common/ui/I;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/RotateImageView;->uh:Z

    .line 48
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 69
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    if-nez v0, :cond_9

    return-void

    .line 72
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 73
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 74
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v1

    .line 76
    if-eqz v2, :cond_1c

    if-nez v1, :cond_1d

    :cond_1c
    return-void

    .line 78
    :cond_1d
    iget-object v3, p0, Lcom/android/common/ui/RotateImageView;->ui:Lcom/android/common/ui/I;

    invoke-virtual {v3}, Lcom/android/common/ui/I;->Ai()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 79
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->invalidate()V

    .line 82
    :cond_28
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getPaddingStart()I

    move-result v3

    .line 83
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getPaddingTop()I

    move-result v4

    .line 84
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getPaddingEnd()I

    move-result v5

    .line 85
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getPaddingBottom()I

    move-result v6

    .line 86
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v3

    sub-int v5, v7, v5

    .line 87
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v4

    sub-int v6, v7, v6

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v7

    .line 92
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_67

    .line 93
    if-lt v5, v2, :cond_56

    if-ge v6, v1, :cond_67

    .line 94
    :cond_56
    int-to-float v8, v5

    int-to-float v9, v2

    div-float/2addr v8, v9

    int-to-float v9, v6

    int-to-float v10, v1

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 95
    int-to-float v9, v5

    div-float/2addr v9, v11

    int-to-float v10, v6

    div-float/2addr v10, v11

    invoke-virtual {p1, v8, v8, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 97
    :cond_67
    int-to-float v3, v3

    int-to-float v5, v5

    div-float/2addr v5, v11

    add-float/2addr v3, v5

    int-to-float v4, v4

    int-to-float v5, v6

    div-float/2addr v5, v11

    add-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 98
    iget-object v3, p0, Lcom/android/common/ui/RotateImageView;->ui:Lcom/android/common/ui/I;

    invoke-virtual {v3}, Lcom/android/common/ui/I;->Ag()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 99
    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v11

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v11

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 100
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 68
    return-void
.end method

.method public vn(IZ)V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/common/ui/RotateImageView;->ui:Lcom/android/common/ui/I;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/I;->Ah(IZ)V

    .line 64
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->invalidate()V

    .line 62
    return-void
.end method

.method public yB(Landroid/graphics/Bitmap;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 116
    if-nez p1, :cond_1c

    .line 117
    iput-object v1, p0, Lcom/android/common/ui/RotateImageView;->uj:Landroid/graphics/Bitmap;

    .line 118
    iput-object v1, p0, Lcom/android/common/ui/RotateImageView;->uk:[Landroid/graphics/drawable/Drawable;

    .line 119
    iget-boolean v0, p0, Lcom/android/common/ui/RotateImageView;->uh:Z

    if-eqz v0, :cond_13

    .line 120
    const v0, 0x7f0202c6

    invoke-virtual {p0, v0}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 125
    :goto_12
    return-void

    .line 122
    :cond_13
    invoke-virtual {p0, v1}, Lcom/android/common/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    goto :goto_12

    .line 128
    :cond_1c
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 129
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 130
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getPaddingStart()I

    move-result v2

    .line 129
    sub-int/2addr v1, v2

    .line 130
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getPaddingEnd()I

    move-result v2

    .line 129
    sub-int/2addr v1, v2

    .line 131
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getPaddingTop()I

    move-result v2

    .line 131
    sub-int/2addr v0, v2

    .line 132
    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getPaddingBottom()I

    move-result v2

    .line 131
    sub-int/2addr v0, v2

    .line 133
    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/RotateImageView;->uj:Landroid/graphics/Bitmap;

    .line 135
    iget-boolean v0, p0, Lcom/android/common/ui/RotateImageView;->uh:Z

    if-eqz v0, :cond_4a

    .line 136
    iget-object v0, p0, Lcom/android/common/ui/RotateImageView;->uj:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/common/ui/RotateImageView;->yD(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/RotateImageView;->uj:Landroid/graphics/Bitmap;

    .line 139
    :cond_4a
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/common/ui/RotateImageView;->uk:[Landroid/graphics/drawable/Drawable;

    .line 140
    iget-object v0, p0, Lcom/android/common/ui/RotateImageView;->uk:[Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/common/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/common/ui/RotateImageView;->uj:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v1, v0, v4

    .line 141
    iget-object v0, p0, Lcom/android/common/ui/RotateImageView;->uk:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/common/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 113
    return-void
.end method

.method public yC(Z)V
    .registers 2

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/common/ui/RotateImageView;->uh:Z

    .line 109
    return-void
.end method

.method public yD(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 16

    .prologue
    const v13, -0xbdbdbe

    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 165
    if-gt v7, v8, :cond_5b

    .line 166
    div-int/lit8 v0, v7, 0x2

    int-to-float v4, v0

    .line 168
    int-to-float v2, v7

    .line 170
    int-to-float v3, v7

    .line 174
    int-to-float v1, v7

    .line 175
    int-to-float v0, v7

    move v6, v4

    move v8, v7

    move v4, v5

    .line 189
    :goto_19
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 190
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 193
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 194
    new-instance v10, Landroid/graphics/Rect;

    float-to-int v4, v4

    float-to-int v11, v5

    float-to-int v3, v3

    .line 195
    float-to-int v2, v2

    .line 194
    invoke-direct {v10, v4, v11, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 196
    new-instance v2, Landroid/graphics/Rect;

    float-to-int v3, v5

    float-to-int v4, v5

    .line 197
    float-to-int v1, v1

    float-to-int v0, v0

    .line 196
    invoke-direct {v2, v3, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 198
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 199
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    invoke-virtual {v8, v12, v12, v12, v12}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 202
    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    invoke-virtual {v8, v0, v6, v6, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 205
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 206
    invoke-virtual {v8, p1, v10, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 207
    return-object v7

    .line 177
    :cond_5b
    div-int/lit8 v0, v8, 0x2

    int-to-float v6, v0

    .line 178
    sub-int v0, v7, v8

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 180
    int-to-float v0, v7

    sub-float v3, v0, v4

    .line 182
    int-to-float v2, v8

    .line 186
    int-to-float v1, v8

    .line 187
    int-to-float v0, v8

    move v7, v8

    goto :goto_19
.end method

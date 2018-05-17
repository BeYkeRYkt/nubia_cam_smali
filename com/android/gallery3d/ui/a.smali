.class public Lcom/android/gallery3d/ui/a;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private avy:I

.field private avz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 40
    iput v0, p0, Lcom/android/gallery3d/ui/a;->avz:I

    .line 41
    iput v0, p0, Lcom/android/gallery3d/ui/a;->avy:I

    .line 151
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/a;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 152
    new-instance v0, Lcom/android/gallery3d/ui/p;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/p;-><init>(Lcom/android/gallery3d/ui/a;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/a;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 149
    return-void
.end method

.method public static aIB(Landroid/graphics/RectF;II)Landroid/graphics/RectF;
    .registers 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 202
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 203
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v2, p1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3a

    .line 204
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iget v2, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v4

    div-float/2addr v2, v6

    sub-float/2addr v0, v2

    .line 213
    :goto_1b
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v4, p2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_50

    .line 214
    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    sub-float/2addr v2, v4

    .line 223
    :goto_2e
    cmpl-float v4, v0, v1

    if-nez v4, :cond_36

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_39

    .line 224
    :cond_36
    invoke-virtual {v3, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 226
    :cond_39
    return-object v3

    .line 206
    :cond_3a
    iget v0, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_44

    .line 207
    iget v0, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_1b

    .line 208
    :cond_44
    iget v0, v3, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_68

    .line 209
    int-to-float v0, p1

    iget v2, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_1b

    .line 216
    :cond_50
    iget v2, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_5a

    .line 217
    iget v2, v3, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    goto :goto_2e

    .line 218
    :cond_5a
    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, p2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_66

    .line 219
    int-to-float v2, p2

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v4

    goto :goto_2e

    :cond_66
    move v2, v1

    goto :goto_2e

    :cond_68
    move v0, v1

    goto :goto_1b
.end method

.method static synthetic aIC(Lcom/android/gallery3d/ui/a;)I
    .registers 2

    iget v0, p0, Lcom/android/gallery3d/ui/a;->avy:I

    return v0
.end method

.method static synthetic aID(Lcom/android/gallery3d/ui/a;)I
    .registers 2

    iget v0, p0, Lcom/android/gallery3d/ui/a;->avz:I

    return v0
.end method

.method static synthetic aIE(Lcom/android/gallery3d/ui/a;I)I
    .registers 2

    iput p1, p0, Lcom/android/gallery3d/ui/a;->avy:I

    return p1
.end method

.method static synthetic aIF(Lcom/android/gallery3d/ui/a;I)I
    .registers 2

    iput p1, p0, Lcom/android/gallery3d/ui/a;->avz:I

    return p1
.end method

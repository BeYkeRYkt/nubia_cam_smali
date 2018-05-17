.class public Lcom/android/common/image3d/Image3dView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private br:Landroid/graphics/Rect;

.field private bs:Landroid/graphics/Bitmap;

.field private bt:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/common/image3d/Image3dView;->bt:Landroid/graphics/Rect;

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/common/image3d/Image3dView;->br:Landroid/graphics/Rect;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/image3d/Image3dView;->bs:Landroid/graphics/Bitmap;

    .line 19
    invoke-direct {p0, p1}, Lcom/android/common/image3d/Image3dView;->bm(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/common/image3d/Image3dView;->bt:Landroid/graphics/Rect;

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/common/image3d/Image3dView;->br:Landroid/graphics/Rect;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/image3d/Image3dView;->bs:Landroid/graphics/Bitmap;

    .line 25
    invoke-direct {p0, p1}, Lcom/android/common/image3d/Image3dView;->bm(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/common/image3d/Image3dView;->bt:Landroid/graphics/Rect;

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/common/image3d/Image3dView;->br:Landroid/graphics/Rect;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/image3d/Image3dView;->bs:Landroid/graphics/Bitmap;

    .line 31
    invoke-direct {p0, p1}, Lcom/android/common/image3d/Image3dView;->bm(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private bm(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 35
    return-void
.end method


# virtual methods
.method public bn(Landroid/graphics/Bitmap;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 40
    if-nez p1, :cond_4

    .line 41
    return-void

    .line 43
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 46
    invoke-virtual {p0}, Lcom/android/common/image3d/Image3dView;->getWidth()I

    move-result v2

    .line 47
    invoke-virtual {p0}, Lcom/android/common/image3d/Image3dView;->getHeight()I

    move-result v3

    .line 49
    iget-object v4, p0, Lcom/android/common/image3d/Image3dView;->bt:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 50
    iget-object v4, p0, Lcom/android/common/image3d/Image3dView;->bt:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 51
    iget-object v4, p0, Lcom/android/common/image3d/Image3dView;->bt:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 52
    iget-object v4, p0, Lcom/android/common/image3d/Image3dView;->bt:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 54
    int-to-float v4, v2

    int-to-float v5, v0

    div-float/2addr v4, v5

    int-to-float v5, v3

    int-to-float v6, v1

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 55
    iget-object v5, p0, Lcom/android/common/image3d/Image3dView;->br:Landroid/graphics/Rect;

    int-to-float v6, v0

    mul-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 56
    iget-object v5, p0, Lcom/android/common/image3d/Image3dView;->br:Landroid/graphics/Rect;

    int-to-float v6, v1

    mul-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 57
    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 58
    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 60
    iget-object v4, p0, Lcom/android/common/image3d/Image3dView;->br:Landroid/graphics/Rect;

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v4, Landroid/graphics/Rect;->left:I

    .line 61
    iget-object v2, p0, Lcom/android/common/image3d/Image3dView;->br:Landroid/graphics/Rect;

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 63
    iget-object v2, p0, Lcom/android/common/image3d/Image3dView;->br:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/common/image3d/Image3dView;->br:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 64
    iget-object v0, p0, Lcom/android/common/image3d/Image3dView;->br:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/common/image3d/Image3dView;->br:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 66
    iput-object p1, p0, Lcom/android/common/image3d/Image3dView;->bs:Landroid/graphics/Bitmap;

    .line 67
    invoke-virtual {p0}, Lcom/android/common/image3d/Image3dView;->invalidate()V

    .line 39
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v0, p0, Lcom/android/common/image3d/Image3dView;->bs:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    .line 74
    iget-object v0, p0, Lcom/android/common/image3d/Image3dView;->bs:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/common/image3d/Image3dView;->bt:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/common/image3d/Image3dView;->br:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 71
    :cond_e
    return-void
.end method

.class public Lcom/android/panorama/PanoPreviewView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final aNI:I

.field private static final aNJ:[I


# instance fields
.field private final aNK:I

.field private final aNL:I

.field private aNM:Landroid/animation/ValueAnimator;

.field private aNN:I

.field private aNO:Landroid/graphics/Rect;

.field private aNP:I

.field private aNQ:I

.field private aNR:I

.field private aNS:[Landroid/graphics/drawable/Drawable;

.field private aNT:I

.field private aNU:Landroid/graphics/Rect;

.field private aNV:Landroid/graphics/Rect;

.field private aNW:Landroid/graphics/Paint;

.field private aNX:I

.field private aNY:I

.field private aNZ:I

.field private aOa:I

.field private aOb:I

.field private aOc:Ljava/lang/String;

.field private aOd:Landroid/graphics/Paint;

.field private aOe:Landroid/graphics/Rect;

.field private aOf:I

.field private aOg:I

.field private aOh:Landroid/graphics/Bitmap;

.field private aOi:Landroid/graphics/Bitmap;

.field private aOj:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 32
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/panorama/PanoPreviewView;->aNI:I

    .line 39
    const v0, 0x7f020218

    .line 40
    const v1, 0x7f02021a

    .line 41
    const v2, 0x7f02021b

    .line 42
    const v3, 0x7f020216

    .line 38
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/panorama/PanoPreviewView;->aNJ:[I

    .line 29
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const v5, -0x66000001

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v0, p0, Lcom/android/panorama/PanoPreviewView;->aNX:I

    .line 45
    new-array v1, v7, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNS:[Landroid/graphics/drawable/Drawable;

    .line 47
    const/16 v1, 0x438

    iput v1, p0, Lcom/android/panorama/PanoPreviewView;->aOg:I

    .line 48
    const/16 v1, 0x5a0

    iput v1, p0, Lcom/android/panorama/PanoPreviewView;->aOf:I

    .line 49
    const/16 v1, 0x438

    iput v1, p0, Lcom/android/panorama/PanoPreviewView;->aOa:I

    .line 50
    const/16 v1, 0x5a0

    iput v1, p0, Lcom/android/panorama/PanoPreviewView;->aNZ:I

    .line 51
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/panorama/PanoPreviewView;->aOb:I

    .line 58
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNW:Landroid/graphics/Paint;

    .line 59
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aOd:Landroid/graphics/Paint;

    .line 60
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aOe:Landroid/graphics/Rect;

    .line 62
    const/high16 v1, 0x38000000

    iput v1, p0, Lcom/android/panorama/PanoPreviewView;->aNT:I

    .line 63
    const v1, 0x47ffffff

    iput v1, p0, Lcom/android/panorama/PanoPreviewView;->aNN:I

    .line 72
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/common/h;->aoT(I)I

    move-result v1

    iput v1, p0, Lcom/android/panorama/PanoPreviewView;->aNL:I

    .line 73
    iput v5, p0, Lcom/android/panorama/PanoPreviewView;->aNK:I

    .line 74
    iput v0, p0, Lcom/android/panorama/PanoPreviewView;->aNY:I

    .line 78
    iput v0, p0, Lcom/android/panorama/PanoPreviewView;->aNR:I

    .line 316
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aOj:[I

    .line 83
    :goto_53
    if-ge v0, v7, :cond_68

    .line 84
    iget-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNS:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/panorama/PanoPreviewView;->aNJ:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 86
    :cond_68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOc:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNW:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/panorama/PanoPreviewView;->aNT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOd:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOd:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOd:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 91
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOd:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/panorama/PanoPreviewView;->aNL:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOd:Landroid/graphics/Paint;

    invoke-static {v6}, Lcom/android/common/h;->aoT(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOd:Landroid/graphics/Paint;

    const/high16 v1, 0x41c80000    # 25.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 81
    return-void
.end method

.method private bes(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 263
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 264
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 265
    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 266
    iget v0, p2, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 267
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOh:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 268
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOh:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 269
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 270
    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 272
    packed-switch p4, :pswitch_data_92

    .line 290
    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 291
    mul-int/lit8 v0, v0, -0x2

    .line 292
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/panorama/PanoPreviewView;->aNX:I

    .line 295
    :goto_48
    iget v3, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v3

    iget v3, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 297
    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aNY:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_5d

    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aNY:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_8b

    .line 298
    :cond_5d
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    .line 302
    :goto_63
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 303
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 304
    sub-int v4, v1, v0

    sub-int v5, v3, v0

    add-int/2addr v1, v0

    add-int/2addr v0, v3

    invoke-virtual {v2, v4, v5, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 305
    return-object v2

    .line 275
    :pswitch_75
    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 276
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/panorama/PanoPreviewView;->aNX:I

    goto :goto_48

    .line 279
    :pswitch_7c
    mul-int/lit8 v1, v1, -0x2

    .line 280
    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 281
    iput v5, p0, Lcom/android/panorama/PanoPreviewView;->aNX:I

    goto :goto_48

    .line 284
    :pswitch_84
    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 286
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/panorama/PanoPreviewView;->aNX:I

    goto :goto_48

    .line 300
    :cond_8b
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    goto :goto_63

    .line 272
    :pswitch_data_92
    .packed-switch 0x3
        :pswitch_84
        :pswitch_75
        :pswitch_7c
    .end packed-switch
.end method

.method private bet(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Bitmap;I)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 350
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNO:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNW:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 351
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOi:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 353
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNS:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/panorama/PanoPreviewView;->aNX:I

    aget-object v0, v0, v1

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 354
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNS:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/panorama/PanoPreviewView;->aNX:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNU:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 355
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNS:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/panorama/PanoPreviewView;->aNX:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 349
    return-void
.end method

.method private beu(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Bitmap;I)V
    .registers 16

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 358
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 359
    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aNY:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/panorama/PanoPreviewView;->aNP:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/panorama/PanoPreviewView;->aNQ:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 360
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNW:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 363
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 364
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 365
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    .line 366
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 367
    div-int/lit8 v4, v3, 0x2

    sub-int v4, v0, v4

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p1, p3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 368
    iget-object v4, p0, Lcom/android/panorama/PanoPreviewView;->aNS:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v9

    invoke-virtual {v4, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 369
    iget-object v4, p0, Lcom/android/panorama/PanoPreviewView;->aNS:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v10

    invoke-virtual {v4, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 370
    iget-object v4, p0, Lcom/android/panorama/PanoPreviewView;->aNS:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v9

    div-int/lit8 v5, v3, 0x2

    sub-int v5, v0, v5

    sub-int/2addr v5, v2

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v6, v2, 0x2

    sub-int v6, v1, v6

    div-int/lit8 v7, v3, 0x2

    sub-int v7, v0, v7

    div-int/lit8 v8, v2, 0x2

    sub-int/2addr v7, v8

    div-int/lit8 v8, v2, 0x2

    add-int/2addr v8, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    iget-object v4, p0, Lcom/android/panorama/PanoPreviewView;->aNS:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v10

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v0

    div-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    div-int/lit8 v6, v2, 0x2

    sub-int v6, v1, v6

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v0, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 372
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNS:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v9

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 373
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNS:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v10

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 357
    return-void
.end method

.method private bev(Landroid/graphics/Canvas;ILandroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 161
    sparse-switch p2, :sswitch_data_c4

    .line 175
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sget v2, Lcom/android/panorama/PanoPreviewView;->aNI:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 178
    :goto_16
    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aNR:I

    if-nez v0, :cond_2f

    .line 179
    const v0, -0x66000001

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOc:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 182
    :cond_2f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 183
    const/16 v0, -0x55cd

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v0, v2, :cond_af

    .line 185
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v2, v0

    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aOg:I

    int-to-float v3, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 159
    :goto_53
    return-void

    .line 163
    :sswitch_54
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 164
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    sget v2, Lcom/android/panorama/PanoPreviewView;->aNI:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_16

    .line 167
    :sswitch_72
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 168
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    sget v2, Lcom/android/panorama/PanoPreviewView;->aNI:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_16

    .line 171
    :sswitch_90
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 172
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    sget v2, Lcom/android/panorama/PanoPreviewView;->aNI:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_16

    .line 187
    :cond_af
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aOf:I

    int-to-float v6, v0

    move-object v2, p1

    move v4, v1

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_53

    .line 161
    nop

    :sswitch_data_c4
    .sparse-switch
        0x5a -> :sswitch_90
        0xb4 -> :sswitch_72
        0x10e -> :sswitch_54
    .end sparse-switch
.end method

.method private bew(III)I
    .registers 5

    .prologue
    .line 136
    mul-int v0, p3, p1

    div-int/2addr v0, p2

    .line 137
    return v0
.end method

.method private bex(I)Landroid/graphics/Rect;
    .registers 9

    .prologue
    .line 194
    sparse-switch p1, :sswitch_data_70

    .line 215
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 218
    :goto_a
    iput-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNO:Landroid/graphics/Rect;

    .line 219
    return-object v0

    .line 196
    :sswitch_d
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 197
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 199
    iget v3, p0, Lcom/android/panorama/PanoPreviewView;->aNQ:I

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    div-int/lit8 v4, v2, 0x2

    sub-int v4, v2, v4

    div-int/lit8 v5, v1, 0x2

    sub-int v5, v3, v5

    div-int/lit8 v6, v2, 0x2

    add-int/2addr v2, v6

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    invoke-direct {v0, v4, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_a

    .line 203
    :sswitch_2f
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 204
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 205
    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aNP:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v3, v0, v2

    .line 206
    iget v4, p0, Lcom/android/panorama/PanoPreviewView;->aNQ:I

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    div-int/lit8 v5, v2, 0x2

    sub-int v5, v3, v5

    div-int/lit8 v6, v1, 0x2

    sub-int v6, v4, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    invoke-direct {v0, v5, v6, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_a

    .line 210
    :sswitch_57
    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aNQ:I

    iget-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, v0, v1

    .line 211
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 212
    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_a

    .line 194
    nop

    :sswitch_data_70
    .sparse-switch
        0x5a -> :sswitch_2f
        0xb4 -> :sswitch_57
        0x10e -> :sswitch_d
    .end sparse-switch
.end method

.method private bey()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOh:Landroid/graphics/Bitmap;

    if-nez v0, :cond_d

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    .line 146
    return-void

    .line 149
    :cond_d
    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aNY:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_4d

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/panorama/PanoPreviewView;->aOf:I

    iget-object v2, p0, Lcom/android/panorama/PanoPreviewView;->aOh:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    .line 151
    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aNP:I

    iget-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    .line 156
    :goto_2b
    iget-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/panorama/PanoPreviewView;->aNP:I

    iget-object v3, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/panorama/PanoPreviewView;->aNQ:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sget v3, Lcom/android/panorama/PanoPreviewView;->aNI:I

    mul-int/lit8 v3, v3, 0x6

    sub-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 143
    return-void

    .line 153
    :cond_4d
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/panorama/PanoPreviewView;->aOg:I

    iget-object v2, p0, Lcom/android/panorama/PanoPreviewView;->aOh:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    .line 154
    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aNQ:I

    iget-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2b
.end method


# virtual methods
.method public beA(Landroid/graphics/Bitmap;Landroid/graphics/Point;I)V
    .registers 6

    .prologue
    .line 252
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/panorama/PanoPreviewView;->aNR:I

    .line 253
    iput-object p1, p0, Lcom/android/panorama/PanoPreviewView;->aOi:Landroid/graphics/Bitmap;

    .line 254
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOi:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNO:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p2, v1, p3}, Lcom/android/panorama/PanoPreviewView;->bes(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNU:Landroid/graphics/Rect;

    .line 255
    invoke-virtual {p0}, Lcom/android/panorama/PanoPreviewView;->invalidate()V

    .line 251
    return-void
.end method

.method public beB([B)V
    .registers 16

    .prologue
    const/4 v3, 0x0

    .line 318
    iput v3, p0, Lcom/android/panorama/PanoPreviewView;->aNR:I

    .line 322
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOh:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 323
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOh:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 324
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOj:[I

    if-nez v0, :cond_19

    .line 325
    mul-int v0, v5, v13

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOj:[I

    .line 327
    :cond_19
    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aNY:I

    add-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v7, v0, 0x168

    .line 329
    iget v1, p0, Lcom/android/panorama/PanoPreviewView;->aOa:I

    .line 330
    iget v2, p0, Lcom/android/panorama/PanoPreviewView;->aNZ:I

    .line 332
    iget-object v4, p0, Lcom/android/panorama/PanoPreviewView;->aOj:[I

    .line 334
    iget v6, p0, Lcom/android/panorama/PanoPreviewView;->aOb:I

    move-object v0, p1

    .line 328
    invoke-static/range {v0 .. v7}, Lcom/android/panorama/PanoramaJni;->yuv2rgb([BIII[IIII)I

    .line 338
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOh:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 339
    iget-object v6, p0, Lcom/android/panorama/PanoPreviewView;->aOh:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/android/panorama/PanoPreviewView;->aOj:[I

    move v8, v3

    move v9, v5

    move v10, v3

    move v11, v3

    move v12, v5

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 346
    :cond_3f
    invoke-virtual {p0}, Lcom/android/panorama/PanoPreviewView;->invalidate()V

    .line 317
    return-void
.end method

.method public beC()V
    .registers 5

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/panorama/PanoPreviewView;->beD()V

    .line 378
    const/4 v0, 0x0

    const/16 v1, 0xc8

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNM:Landroid/animation/ValueAnimator;

    .line 379
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNM:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 380
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNM:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 381
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNM:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 382
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNM:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 376
    return-void
.end method

.method public beD()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNM:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 386
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNM:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 387
    iput-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNM:Landroid/animation/ValueAnimator;

    .line 384
    :cond_c
    return-void
.end method

.method public bez()V
    .registers 2

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aOj:[I

    .line 312
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 308
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/panorama/PanoPreviewView;->aNR:I

    .line 309
    invoke-virtual {p0}, Lcom/android/panorama/PanoPreviewView;->invalidate()V

    .line 307
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 229
    iget-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNM:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_11

    .line 230
    iget-object v0, p0, Lcom/android/panorama/PanoPreviewView;->aNM:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 231
    :cond_11
    iget-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNW:Landroid/graphics/Paint;

    .line 232
    iget v1, p0, Lcom/android/panorama/PanoPreviewView;->aNY:I

    iget-object v2, p0, Lcom/android/panorama/PanoPreviewView;->aNO:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/panorama/PanoPreviewView;->aOd:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/panorama/PanoPreviewView;->bev(Landroid/graphics/Canvas;ILandroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 233
    iget v1, p0, Lcom/android/panorama/PanoPreviewView;->aNR:I

    packed-switch v1, :pswitch_data_32

    .line 222
    :goto_21
    return-void

    .line 235
    :pswitch_22
    iget-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/panorama/PanoPreviewView;->aOh:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/panorama/PanoPreviewView;->beu(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Bitmap;I)V

    goto :goto_21

    .line 238
    :pswitch_2a
    iget-object v1, p0, Lcom/android/panorama/PanoPreviewView;->aNO:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/panorama/PanoPreviewView;->aOi:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/panorama/PanoPreviewView;->bet(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Bitmap;I)V

    goto :goto_21

    .line 233
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_22
        :pswitch_2a
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/16 v0, 0xa

    const/4 v4, 0x0

    .line 99
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 100
    sub-int v1, p4, p2

    iput v1, p0, Lcom/android/panorama/PanoPreviewView;->aOg:I

    .line 101
    sub-int v1, p5, p3

    iput v1, p0, Lcom/android/panorama/PanoPreviewView;->aOf:I

    .line 106
    iget v1, p0, Lcom/android/panorama/PanoPreviewView;->aOa:I

    iget v2, p0, Lcom/android/panorama/PanoPreviewView;->aOg:I

    const/4 v3, 0x6

    invoke-direct {p0, v1, v2, v3}, Lcom/android/panorama/PanoPreviewView;->bew(III)I

    move-result v1

    iput v1, p0, Lcom/android/panorama/PanoPreviewView;->aOb:I

    .line 107
    iget v1, p0, Lcom/android/panorama/PanoPreviewView;->aNY:I

    add-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v1, v1, 0x168

    .line 108
    sparse-switch v1, :sswitch_data_6e

    move v1, v0

    .line 123
    :goto_24
    iget-object v2, p0, Lcom/android/panorama/PanoPreviewView;->aOh:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2f

    .line 124
    iget-object v2, p0, Lcom/android/panorama/PanoPreviewView;->aOh:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    iput-object v5, p0, Lcom/android/panorama/PanoPreviewView;->aOh:Landroid/graphics/Bitmap;

    .line 127
    :cond_2f
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/panorama/PanoPreviewView;->aOh:Landroid/graphics/Bitmap;

    .line 129
    iget v2, p0, Lcom/android/panorama/PanoPreviewView;->aOg:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/panorama/PanoPreviewView;->aNP:I

    .line 130
    iget v2, p0, Lcom/android/panorama/PanoPreviewView;->aOf:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/panorama/PanoPreviewView;->aNQ:I

    .line 131
    new-instance v2, Landroid/graphics/Rect;

    mul-int/lit8 v1, v1, 0x7

    invoke-direct {v2, v4, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/panorama/PanoPreviewView;->aNV:Landroid/graphics/Rect;

    .line 132
    invoke-direct {p0}, Lcom/android/panorama/PanoPreviewView;->bey()V

    .line 133
    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aNY:I

    invoke-direct {p0, v0}, Lcom/android/panorama/PanoPreviewView;->bex(I)Landroid/graphics/Rect;

    .line 98
    return-void

    .line 111
    :sswitch_55
    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aOa:I

    iget v1, p0, Lcom/android/panorama/PanoPreviewView;->aOb:I

    div-int v1, v0, v1

    .line 112
    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aNZ:I

    iget v2, p0, Lcom/android/panorama/PanoPreviewView;->aOb:I

    div-int/2addr v0, v2

    goto :goto_24

    .line 116
    :sswitch_61
    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aNZ:I

    iget v1, p0, Lcom/android/panorama/PanoPreviewView;->aOb:I

    div-int v1, v0, v1

    .line 117
    iget v0, p0, Lcom/android/panorama/PanoPreviewView;->aOa:I

    iget v2, p0, Lcom/android/panorama/PanoPreviewView;->aOb:I

    div-int/2addr v0, v2

    goto :goto_24

    .line 108
    nop

    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_55
        0x5a -> :sswitch_61
        0xb4 -> :sswitch_55
        0x10e -> :sswitch_61
    .end sparse-switch
.end method

.method public setPreviewSize(II)V
    .registers 3

    .prologue
    .line 140
    iput p2, p0, Lcom/android/panorama/PanoPreviewView;->aNZ:I

    .line 141
    iput p1, p0, Lcom/android/panorama/PanoPreviewView;->aOa:I

    .line 139
    return-void
.end method

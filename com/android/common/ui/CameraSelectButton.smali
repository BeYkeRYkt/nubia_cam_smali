.class public Lcom/android/common/ui/CameraSelectButton;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final tr:I

.field private static final ts:I


# instance fields
.field private tA:I

.field private tB:I

.field private tC:I

.field private tD:I

.field private tE:I

.field private tF:I

.field private tG:Lcom/android/common/ui/B;

.field private tH:Z

.field private tI:[I

.field private tJ:Z

.field private tK:Z

.field private tL:I

.field private tM:Landroid/widget/Scroller;

.field private tN:I

.field private tO:I

.field private tP:I

.field private tQ:I

.field private tR:I

.field private tS:Landroid/graphics/Paint;

.field private tT:I

.field private tU:[I

.field private tV:[I

.field private tW:Lcom/android/common/ui/D;

.field private tX:Landroid/view/View$OnTouchListener;

.field private tt:Landroid/graphics/PorterDuffXfermode;

.field private tu:I

.field private tv:Landroid/graphics/Bitmap;

.field private tw:Landroid/graphics/Paint;

.field private tx:Z

.field private ty:Lcom/android/common/ui/C;

.field private tz:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/CameraSelectButton;->ts:I

    .line 39
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/CameraSelectButton;->tr:I

    .line 30
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .prologue
    const/16 v6, 0x12c

    const/4 v5, 0x1

    const v4, -0x30000001

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    .line 53
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tI:[I

    .line 54
    iput v6, p0, Lcom/android/common/ui/CameraSelectButton;->tF:I

    .line 55
    sget v1, Lcom/android/common/ui/CameraSelectButton;->ts:I

    iput v1, p0, Lcom/android/common/ui/CameraSelectButton;->tT:I

    .line 56
    sget v1, Lcom/android/common/ui/CameraSelectButton;->tr:I

    iput v1, p0, Lcom/android/common/ui/CameraSelectButton;->tR:I

    .line 57
    iput v4, p0, Lcom/android/common/ui/CameraSelectButton;->tQ:I

    .line 58
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/common/ui/CameraSelectButton;->tA:I

    .line 60
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tt:Landroid/graphics/PorterDuffXfermode;

    .line 64
    iput-object v3, p0, Lcom/android/common/ui/CameraSelectButton;->tW:Lcom/android/common/ui/D;

    .line 65
    iput-object v3, p0, Lcom/android/common/ui/CameraSelectButton;->tX:Landroid/view/View$OnTouchListener;

    .line 66
    iput-boolean v5, p0, Lcom/android/common/ui/CameraSelectButton;->tJ:Z

    .line 68
    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->tL:I

    .line 69
    iput-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->tK:Z

    .line 70
    iput-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->tH:Z

    .line 73
    new-instance v1, Lcom/android/common/ui/B;

    invoke-direct {v1, p0, v3}, Lcom/android/common/ui/B;-><init>(Lcom/android/common/ui/CameraSelectButton;Lcom/android/common/ui/B;)V

    iput-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tG:Lcom/android/common/ui/B;

    .line 245
    const/16 v1, 0x21c

    iput v1, p0, Lcom/android/common/ui/CameraSelectButton;->tu:I

    .line 135
    sget-object v1, Lcom/android/camera/k;->apd:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 137
    :goto_55
    if-ge v0, v2, :cond_81

    .line 138
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 139
    packed-switch v3, :pswitch_data_ca

    .line 137
    :goto_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 141
    :pswitch_61
    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/common/ui/CameraSelectButton;->tF:I

    goto :goto_5e

    .line 144
    :pswitch_68
    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/android/common/ui/CameraSelectButton;->tQ:I

    goto :goto_5e

    .line 147
    :pswitch_6f
    sget v3, Lcom/android/common/ui/CameraSelectButton;->tr:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/common/ui/CameraSelectButton;->tR:I

    goto :goto_5e

    .line 150
    :pswitch_78
    sget v3, Lcom/android/common/ui/CameraSelectButton;->ts:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/common/ui/CameraSelectButton;->tT:I

    goto :goto_5e

    .line 156
    :cond_81
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tS:Landroid/graphics/Paint;

    .line 158
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tS:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->tQ:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tS:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 160
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tS:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->tT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 161
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tS:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 162
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tS:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tw:Landroid/graphics/Paint;

    .line 164
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tw:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tt:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 165
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020056

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tv:Landroid/graphics/Bitmap;

    .line 132
    return-void

    .line 139
    nop

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_61
        :pswitch_6f
        :pswitch_68
        :pswitch_78
    .end packed-switch
.end method

.method private yd(I)I
    .registers 9

    .prologue
    const/4 v1, -0x1

    .line 405
    if-lez p1, :cond_32

    const/4 v0, 0x1

    .line 406
    :goto_4
    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->tU:[I

    iget v3, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    aget v2, v2, v3

    add-int v3, v2, p1

    .line 407
    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    :goto_e
    iget-object v4, p0, Lcom/android/common/ui/CameraSelectButton;->tz:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_36

    if-le v2, v1, :cond_36

    .line 408
    iget-object v4, p0, Lcom/android/common/ui/CameraSelectButton;->tU:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/common/ui/CameraSelectButton;->tV:[I

    aget v5, v5, v2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/common/ui/CameraSelectButton;->tU:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/android/common/ui/CameraSelectButton;->tV:[I

    aget v6, v6, v2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/common/ui/CameraSelectButton;->yi(III)Z

    move-result v4

    .line 409
    if-eqz v4, :cond_34

    return v2

    :cond_32
    move v0, v1

    .line 405
    goto :goto_4

    .line 407
    :cond_34
    add-int/2addr v2, v0

    goto :goto_e

    .line 411
    :cond_36
    return v1
.end method

.method private ye(I)I
    .registers 6

    .prologue
    .line 248
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->tu:I

    int-to-double v0, v0

    int-to-float v2, p1

    iget v3, p0, Lcom/android/common/ui/CameraSelectButton;->tu:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 249
    return v0
.end method

.method private yf(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 269
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tz:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_6e

    .line 270
    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tM:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->tB:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->tU:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 271
    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->tB:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/common/ui/CameraSelectButton;->yh(III)F

    move-result v2

    .line 272
    cmpl-float v3, v2, v5

    if-lez v3, :cond_63

    .line 273
    iget v3, p0, Lcom/android/common/ui/CameraSelectButton;->tB:I

    invoke-direct {p0, v1, v3}, Lcom/android/common/ui/CameraSelectButton;->ym(II)F

    move-result v1

    .line 274
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->save(I)I

    .line 275
    iget-object v3, p0, Lcom/android/common/ui/CameraSelectButton;->tS:Landroid/graphics/Paint;

    const/high16 v4, 0x43480000    # 200.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x32

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 276
    iget v3, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    if-ne v0, v3, :cond_66

    .line 277
    iget-object v3, p0, Lcom/android/common/ui/CameraSelectButton;->tS:Landroid/graphics/Paint;

    const/16 v4, -0x55cd

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    :goto_3f
    iget v3, p0, Lcom/android/common/ui/CameraSelectButton;->tC:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v4, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 282
    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->tS:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getAlpha()F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 283
    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->tz:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/android/common/ui/CameraSelectButton;->tC:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/ui/CameraSelectButton;->tS:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 284
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 269
    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 279
    :cond_66
    iget-object v3, p0, Lcom/android/common/ui/CameraSelectButton;->tS:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/common/ui/CameraSelectButton;->tQ:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3f

    .line 289
    :cond_6e
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tv:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tw:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 266
    return-void
.end method

.method private yg(Landroid/view/SurfaceHolder;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 419
    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tM:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 422
    :try_start_7
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_1b
    .catchall {:try_start_7 .. :try_end_a} :catchall_22

    move-result-object v0

    .line 423
    :try_start_b
    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->tA:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 424
    invoke-direct {p0, v0}, Lcom/android/common/ui/CameraSelectButton;->yf(Landroid/graphics/Canvas;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_1b
    .catchall {:try_start_b .. :try_end_15} :catchall_2c

    .line 427
    if-eqz v0, :cond_1a

    .line 428
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 431
    :cond_1a
    :goto_1a
    return v1

    .line 425
    :catch_1b
    move-exception v2

    .line 427
    if-eqz v0, :cond_1a

    .line 428
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_1a

    .line 426
    :catchall_22
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 427
    :goto_26
    if-eqz v1, :cond_2b

    .line 428
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 426
    :cond_2b
    throw v0

    :catchall_2c
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_26
.end method

.method private yh(III)F
    .registers 6

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tV:[I

    aget v0, v0, p1

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    .line 260
    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tV:[I

    aget v1, v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    .line 261
    invoke-direct {p0, v0, p3}, Lcom/android/common/ui/CameraSelectButton;->ym(II)F

    move-result v0

    float-to-int v0, v0

    .line 262
    invoke-direct {p0, v1, p3}, Lcom/android/common/ui/CameraSelectButton;->ym(II)F

    move-result v1

    float-to-int v1, v1

    .line 263
    sub-int v0, v1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tV:[I

    aget v1, v1, p1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 264
    return v0
.end method

.method private yi(III)Z
    .registers 5

    .prologue
    .line 414
    if-lt p1, p2, :cond_6

    if-ge p1, p3, :cond_6

    .line 415
    const/4 v0, 0x1

    return v0

    .line 416
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private yj(II)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 375
    iget-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->tx:Z

    if-eqz v0, :cond_22

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_22

    .line 376
    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    .line 377
    invoke-direct {p0, p2}, Lcom/android/common/ui/CameraSelectButton;->ye(I)I

    move-result v0

    .line 378
    invoke-direct {p0, v0}, Lcom/android/common/ui/CameraSelectButton;->yd(I)I

    move-result v0

    .line 379
    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    if-ne v0, v2, :cond_23

    .line 380
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    invoke-interface {v0, v1}, Lcom/android/common/ui/C;->ys(I)V

    .line 374
    :cond_22
    :goto_22
    return-void

    .line 382
    :cond_23
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3f

    :goto_26
    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    .line 383
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    if-eq v1, v0, :cond_42

    .line 384
    iput-boolean v3, p0, Lcom/android/common/ui/CameraSelectButton;->tx:Z

    .line 385
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    invoke-direct {p0, v1, v0}, Lcom/android/common/ui/CameraSelectButton;->yn(II)V

    .line 386
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    if-eqz v0, :cond_22

    .line 387
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    invoke-interface {v0, v1, v2}, Lcom/android/common/ui/C;->yu(II)V

    goto :goto_22

    .line 382
    :cond_3f
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    goto :goto_26

    .line 388
    :cond_42
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    if-nez v0, :cond_50

    .line 389
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    if-eqz v0, :cond_22

    .line 390
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    invoke-interface {v0}, Lcom/android/common/ui/C;->yt()V

    goto :goto_22

    .line 391
    :cond_50
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tz:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_22

    .line 392
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    if-eqz v0, :cond_22

    .line 393
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    invoke-interface {v0}, Lcom/android/common/ui/C;->yv()V

    goto :goto_22
.end method

.method private yk(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 351
    iget-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->tx:Z

    if-eqz v0, :cond_2b

    .line 352
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    .line 353
    const/16 v1, 0x64

    if-le p1, v1, :cond_2c

    .line 354
    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    if-lez v1, :cond_2c

    .line 355
    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    .line 359
    :cond_15
    :goto_15
    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    if-eq v0, v1, :cond_40

    .line 360
    iput-boolean v3, p0, Lcom/android/common/ui/CameraSelectButton;->tx:Z

    .line 361
    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/CameraSelectButton;->yn(II)V

    .line 362
    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    if-eqz v1, :cond_2b

    .line 363
    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    invoke-interface {v1, v0, v2}, Lcom/android/common/ui/C;->yu(II)V

    .line 350
    :cond_2b
    :goto_2b
    return-void

    .line 356
    :cond_2c
    const/16 v1, -0x64

    if-ge p1, v1, :cond_15

    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->tz:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_15

    .line 357
    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    goto :goto_15

    .line 364
    :cond_40
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    if-nez v0, :cond_4e

    .line 365
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    if-eqz v0, :cond_2b

    .line 366
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    invoke-interface {v0}, Lcom/android/common/ui/C;->yt()V

    goto :goto_2b

    .line 367
    :cond_4e
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tz:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 368
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    if-eqz v0, :cond_2b

    .line 369
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    invoke-interface {v0}, Lcom/android/common/ui/C;->yv()V

    goto :goto_2b
.end method

.method private yl()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tz:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tV:[I

    .line 197
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tz:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tU:[I

    .line 198
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tV:[I

    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tS:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->tz:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    .line 199
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tU:[I

    aput v3, v0, v3

    .line 200
    const/4 v0, 0x1

    :goto_23
    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tz:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_55

    .line 201
    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tV:[I

    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->tS:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/common/ui/CameraSelectButton;->tz:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v0

    .line 202
    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tU:[I

    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->tU:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    .line 203
    iget-object v3, p0, Lcom/android/common/ui/CameraSelectButton;->tV:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/common/ui/CameraSelectButton;->tV:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 202
    add-int/2addr v2, v3

    .line 204
    iget v3, p0, Lcom/android/common/ui/CameraSelectButton;->tR:I

    .line 202
    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 195
    :cond_55
    return-void
.end method

.method private ym(II)F
    .registers 7

    .prologue
    .line 253
    sub-int v0, p1, p2

    .line 254
    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->tu:I

    int-to-double v2, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->tu:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 255
    int-to-float v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private yn(II)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tU:[I

    aget v0, v0, p1

    neg-int v1, v0

    .line 228
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tU:[I

    aget v0, v0, p1

    iget-object v3, p0, Lcom/android/common/ui/CameraSelectButton;->tU:[I

    aget v3, v3, p2

    sub-int v3, v0, v3

    .line 231
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tM:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_39

    .line 232
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tM:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    sub-int v0, v1, v0

    add-int/2addr v3, v0

    .line 233
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tM:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 239
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tM:Landroid/widget/Scroller;

    iget v5, p0, Lcom/android/common/ui/CameraSelectButton;->tF:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 240
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tW:Lcom/android/common/ui/D;

    if-eqz v0, :cond_38

    .line 241
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tW:Lcom/android/common/ui/D;

    invoke-virtual {v0}, Lcom/android/common/ui/D;->yy()V

    .line 226
    :cond_38
    return-void

    .line 234
    :cond_39
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    if-eqz v0, :cond_27

    .line 235
    const-string/jumbo v0, "CameraSelectButton"

    const-string/jumbo v4, "scroll anim start "

    invoke-static {v0, v4}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    invoke-interface {v0, p2}, Lcom/android/common/ui/C;->yx(I)V

    goto :goto_27
.end method

.method static synthetic yo(Lcom/android/common/ui/CameraSelectButton;)Lcom/android/common/ui/C;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    return-object v0
.end method

.method static synthetic yp(Lcom/android/common/ui/CameraSelectButton;)Lcom/android/common/ui/B;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tG:Lcom/android/common/ui/B;

    return-object v0
.end method

.method static synthetic yq(Lcom/android/common/ui/CameraSelectButton;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    return v0
.end method

.method static synthetic yr(Lcom/android/common/ui/CameraSelectButton;Landroid/view/SurfaceHolder;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/ui/CameraSelectButton;->yg(Landroid/view/SurfaceHolder;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 441
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/android/common/ui/CameraSelectButton;->yc(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 435
    return-void
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/common/ui/CameraSelectButton;->setZOrderOnTop(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 116
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .prologue
    .line 295
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    .line 296
    sub-int v0, p4, p2

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->tB:I

    .line 297
    sub-int v0, p5, p3

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->tC:I

    .line 298
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->tB:I

    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->tu:I

    .line 299
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tI:[I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/CameraSelectButton;->getLocationOnScreen([I)V

    .line 294
    return-void
.end method

.method public setAlpha(F)V
    .registers 4

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getAlpha()F

    move-result v0

    .line 189
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 190
    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tW:Lcom/android/common/ui/D;

    if-eqz v1, :cond_1c

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    .line 191
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tW:Lcom/android/common/ui/D;

    invoke-virtual {v0}, Lcom/android/common/ui/D;->yy()V

    .line 187
    :cond_1c
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .prologue
    .line 170
    iput p1, p0, Lcom/android/common/ui/CameraSelectButton;->tL:I

    .line 172
    iget-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->tK:Z

    if-nez v0, :cond_9

    .line 173
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 169
    :cond_9
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .prologue
    .line 453
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .prologue
    .line 458
    new-instance v0, Lcom/android/common/ui/D;

    invoke-direct {v0, p0, p1}, Lcom/android/common/ui/D;-><init>(Lcom/android/common/ui/CameraSelectButton;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tW:Lcom/android/common/ui/D;

    .line 459
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tW:Lcom/android/common/ui/D;

    invoke-virtual {v0}, Lcom/android/common/ui/D;->start()V

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->tH:Z

    .line 457
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 465
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tW:Lcom/android/common/ui/D;

    if-eqz v0, :cond_c

    .line 466
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tW:Lcom/android/common/ui/D;

    invoke-virtual {v0}, Lcom/android/common/ui/D;->quit()V

    .line 467
    iput-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tW:Lcom/android/common/ui/D;

    .line 469
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->tH:Z

    .line 464
    return-void
.end method

.method public xW([Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 209
    iput p2, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    .line 210
    iput-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->tz:[Ljava/lang/String;

    .line 211
    invoke-direct {p0}, Lcom/android/common/ui/CameraSelectButton;->yl()V

    .line 212
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tM:Landroid/widget/Scroller;

    .line 213
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tM:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tU:[I

    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    aget v1, v1, v2

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 214
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 215
    invoke-direct {p0}, Lcom/android/common/ui/CameraSelectButton;->yl()V

    .line 216
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tM:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tU:[I

    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->tN:I

    aget v1, v1, v2

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 217
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tW:Lcom/android/common/ui/D;

    if-eqz v0, :cond_42

    .line 218
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tW:Lcom/android/common/ui/D;

    invoke-virtual {v0}, Lcom/android/common/ui/D;->yy()V

    .line 208
    :cond_42
    return-void
.end method

.method public xX(Landroid/view/View$OnTouchListener;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->tX:Landroid/view/View$OnTouchListener;

    .line 128
    return-void
.end method

.method public xY(Lcom/android/common/ui/C;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->ty:Lcom/android/common/ui/C;

    .line 124
    return-void
.end method

.method public xZ()V
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->tK:Z

    .line 177
    return-void
.end method

.method public ya()V
    .registers 2

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->tK:Z

    .line 183
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->tL:I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/CameraSelectButton;->setVisibility(I)V

    .line 181
    return-void
.end method

.method public yb()Z
    .registers 2

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->tH:Z

    return v0
.end method

.method public yc(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 308
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 309
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 310
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tX:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->tX:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 308
    if-eqz v0, :cond_1b

    .line 311
    :cond_1a
    return v1

    .line 313
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_80

    .line 338
    :cond_22
    :goto_22
    return v3

    .line 315
    :pswitch_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->tO:I

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->tP:I

    .line 317
    iput v1, p0, Lcom/android/common/ui/CameraSelectButton;->tE:I

    .line 318
    iput v1, p0, Lcom/android/common/ui/CameraSelectButton;->tD:I

    .line 319
    iput-boolean v3, p0, Lcom/android/common/ui/CameraSelectButton;->tx:Z

    goto :goto_22

    .line 323
    :pswitch_38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->tO:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->tE:I

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->tP:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->tD:I

    .line 325
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->tD:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_22

    .line 326
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->tE:I

    invoke-direct {p0, v0}, Lcom/android/common/ui/CameraSelectButton;->yk(I)V

    goto :goto_22

    .line 331
    :pswitch_5c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->tI:[I

    aget v1, v1, v3

    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->tC:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->tC:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_22

    .line 332
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->tE:I

    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->tO:I

    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->tB:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/CameraSelectButton;->yj(II)V

    goto :goto_22

    .line 313
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_23
        :pswitch_5c
        :pswitch_38
        :pswitch_5c
    .end packed-switch
.end method

.class public Lcom/android/pretty/WaterDropSeekbar;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/h;


# static fields
.field private static final aDI:I

.field private static final aDO:I


# instance fields
.field private aDD:I

.field private aDE:F

.field private aDF:F

.field private aDG:F

.field private aDH:F

.field private aDJ:I

.field private aDK:F

.field private aDL:F

.field private aDM:F

.field private aDN:F

.field private aDP:F

.field private aDQ:F

.field aDR:Z

.field aDS:I

.field aDT:Lcom/android/pretty/m;

.field aDU:I

.field aDV:Landroid/graphics/Paint;

.field aDW:Lcom/android/pretty/n;

.field private aDX:Ljava/lang/String;

.field aDY:Landroid/graphics/Rect;

.field aDZ:Landroid/graphics/Bitmap;

.field aEa:Landroid/graphics/Paint;

.field aEb:I

.field aEc:I

.field aEd:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xff

    .line 36
    const/16 v0, 0x4c

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/pretty/WaterDropSeekbar;->aDI:I

    .line 45
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/pretty/WaterDropSeekbar;->aDO:I

    .line 24
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEa:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDY:Landroid/graphics/Rect;

    .line 31
    const/high16 v0, 0x33000000

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDD:I

    .line 51
    const/16 v0, -0x55cd

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDJ:I

    .line 60
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    .line 61
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEc:I

    .line 62
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    .line 63
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEb:I

    .line 65
    iput-boolean v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDR:Z

    .line 66
    iput v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDU:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/pretty/WaterDropSeekbar;->aTf(Landroid/content/res/Resources;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEa:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDY:Landroid/graphics/Rect;

    .line 31
    const/high16 v0, 0x33000000

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDD:I

    .line 51
    const/16 v0, -0x55cd

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDJ:I

    .line 60
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    .line 61
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEc:I

    .line 62
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    .line 63
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEb:I

    .line 65
    iput-boolean v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDR:Z

    .line 66
    iput v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDU:I

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/pretty/WaterDropSeekbar;->aTf(Landroid/content/res/Resources;)V

    .line 88
    return-void
.end method

.method private aSY()V
    .registers 4

    .prologue
    .line 347
    iget v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEb:I

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aEc:I

    div-int/2addr v0, v1

    .line 348
    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    .line 346
    return-void
.end method

.method private aSZ()V
    .registers 3

    .prologue
    .line 343
    iget v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aEb:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aEc:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    .line 342
    return-void
.end method

.method private aTa(Landroid/graphics/Canvas;F)V
    .registers 7

    .prologue
    .line 228
    sget-boolean v0, Lcom/android/common/h;->ahq:Z

    if-eqz v0, :cond_3d

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDF:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p2

    .line 233
    :goto_d
    iget-object v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDG:F

    .line 236
    iget v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aDH:F

    iget-object v3, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 238
    iget-object v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 239
    iget v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    if-eqz v2, :cond_3c

    iget v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    iget v3, p0, Lcom/android/pretty/WaterDropSeekbar;->aEc:I

    if-eq v2, v3, :cond_3c

    .line 240
    iget v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    invoke-direct {p0, v2}, Lcom/android/pretty/WaterDropSeekbar;->aTe(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/pretty/WaterDropSeekbar;->aDO:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 224
    :cond_3c
    return-void

    .line 231
    :cond_3d
    iget v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDF:F

    add-float/2addr v0, p2

    goto :goto_d
.end method

.method private aTb(Landroid/graphics/Canvas;)V
    .registers 10

    .prologue
    .line 301
    sget-boolean v0, Lcom/android/common/h;->ahq:Z

    if-eqz v0, :cond_65

    .line 302
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 303
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aDF:F

    sub-float v3, v0, v2

    .line 304
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 305
    iget v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aDF:F

    .line 313
    :goto_13
    iget-object v4, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    .line 314
    iget-object v4, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 315
    iget-object v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    iget-object v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/pretty/WaterDropSeekbar;->aDK:F

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 317
    iget-object v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 318
    iget-object v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/pretty/WaterDropSeekbar;->aDX:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/pretty/WaterDropSeekbar;->aDX:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/pretty/WaterDropSeekbar;->aDY:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 319
    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDG:F

    iget v4, p0, Lcom/android/pretty/WaterDropSeekbar;->aDM:F

    add-float/2addr v1, v4

    iget-object v4, p0, Lcom/android/pretty/WaterDropSeekbar;->aDY:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 320
    invoke-direct {p0}, Lcom/android/pretty/WaterDropSeekbar;->aTd()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 322
    iget-object v3, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 323
    invoke-direct {p0}, Lcom/android/pretty/WaterDropSeekbar;->aTc()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 298
    return-void

    .line 307
    :cond_65
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 308
    iget v3, p0, Lcom/android/pretty/WaterDropSeekbar;->aDF:F

    .line 309
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 310
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/android/pretty/WaterDropSeekbar;->aDF:F

    sub-float/2addr v2, v4

    goto :goto_13
.end method

.method private aTc()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 336
    iget-object v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDW:Lcom/android/pretty/n;

    if-eqz v1, :cond_b

    .line 337
    iget-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDW:Lcom/android/pretty/n;

    invoke-interface {v0}, Lcom/android/pretty/n;->aTl()Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_b
    if-eqz v0, :cond_e

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aEc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method private aTd()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 328
    iget-object v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDW:Lcom/android/pretty/n;

    if-eqz v1, :cond_b

    .line 329
    iget-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDW:Lcom/android/pretty/n;

    invoke-interface {v0}, Lcom/android/pretty/n;->aTm()Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_b
    if-eqz v0, :cond_e

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDX:Ljava/lang/String;

    goto :goto_d
.end method

.method private aTe(I)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 276
    iget-object v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDW:Lcom/android/pretty/n;

    if-eqz v1, :cond_b

    .line 277
    iget-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDW:Lcom/android/pretty/n;

    invoke-interface {v0, p1}, Lcom/android/pretty/n;->aTn(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    :cond_b
    if-eqz v0, :cond_e

    .line 280
    return-object v0

    .line 281
    :cond_e
    iget v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    if-eqz v0, :cond_29

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 284
    :cond_29
    invoke-direct {p0}, Lcom/android/pretty/WaterDropSeekbar;->aTd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aTf(Landroid/content/res/Resources;)V
    .registers 5

    .prologue
    .line 352
    const v0, 0x7f020255

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDZ:Landroid/graphics/Bitmap;

    .line 353
    const v0, 0x7f0a03a0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDX:Ljava/lang/String;

    .line 355
    const v0, 0x7f0d0059

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDF:F

    .line 356
    const v0, 0x7f0d0082

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDP:F

    .line 358
    const v0, 0x7f0d0034

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDN:F

    .line 359
    const v0, 0x7f0d003e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDL:F

    .line 361
    const v0, 0x7f0d0039

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDK:F

    .line 362
    const v0, 0x7f0d0040

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDM:F

    .line 364
    const v0, 0x7f0d007c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDE:F

    .line 366
    const v0, 0x7f0d003b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDH:F

    .line 368
    const v0, 0x7f0d0032

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDQ:F

    .line 370
    iget v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDP:F

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDE:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDG:F

    .line 351
    return-void
.end method


# virtual methods
.method public aSV(I)V
    .registers 2

    .prologue
    .line 98
    iput p1, p0, Lcom/android/pretty/WaterDropSeekbar;->aEc:I

    .line 97
    return-void
.end method

.method public aSW(I)V
    .registers 2

    .prologue
    .line 108
    iput p1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    .line 109
    invoke-direct {p0}, Lcom/android/pretty/WaterDropSeekbar;->aSZ()V

    .line 107
    return-void
.end method

.method public aSX(Lcom/android/pretty/m;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDT:Lcom/android/pretty/m;

    .line 112
    return-void
.end method

.method public aTg(I)V
    .registers 2

    .prologue
    .line 94
    iput p1, p0, Lcom/android/pretty/WaterDropSeekbar;->aEb:I

    .line 93
    return-void
.end method

.method public aTh(Lcom/android/pretty/n;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDW:Lcom/android/pretty/n;

    .line 116
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_f

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_46

    .line 124
    :cond_f
    iget v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    .line 125
    invoke-direct {p0}, Lcom/android/pretty/WaterDropSeekbar;->aSZ()V

    .line 126
    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    if-eq v0, v1, :cond_21

    .line 127
    iget-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDT:Lcom/android/pretty/m;

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    iget v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    invoke-interface {v0, v1, v2, v4}, Lcom/android/pretty/m;->aTj(IIZ)V

    .line 129
    :cond_21
    iget-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDT:Lcom/android/pretty/m;

    if-eqz v0, :cond_2a

    .line 130
    iget-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDT:Lcom/android/pretty/m;

    invoke-interface {v0}, Lcom/android/pretty/m;->aTk()V

    .line 132
    :cond_2a
    iput-boolean v4, p0, Lcom/android/pretty/WaterDropSeekbar;->aDR:Z

    .line 133
    invoke-virtual {p0}, Lcom/android/pretty/WaterDropSeekbar;->invalidate()V

    .line 140
    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_75

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/pretty/WaterDropSeekbar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aDE:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_73

    .line 144
    return v4

    .line 134
    :cond_46
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hq()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 135
    const-string/jumbo v0, "PrettySeekbar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ignore touch event because CommandManager is disabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return v4

    .line 146
    :cond_73
    iput-boolean v5, p0, Lcom/android/pretty/WaterDropSeekbar;->aDR:Z

    .line 149
    :cond_75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 150
    invoke-virtual {p0}, Lcom/android/pretty/WaterDropSeekbar;->getWidth()I

    move-result v1

    .line 151
    iget v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aEb:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/pretty/WaterDropSeekbar;->aDF:F

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aDF:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    .line 152
    iget v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    if-gez v0, :cond_c7

    .line 153
    iput v4, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    .line 157
    :cond_95
    :goto_95
    sget-boolean v0, Lcom/android/common/h;->ahq:Z

    if-eqz v0, :cond_a0

    .line 158
    iget v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEb:I

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    .line 161
    :cond_a0
    iget-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDT:Lcom/android/pretty/m;

    if-eqz v0, :cond_ad

    .line 162
    iget-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDT:Lcom/android/pretty/m;

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    iget v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    invoke-interface {v0, v1, v2, v5}, Lcom/android/pretty/m;->aTj(IIZ)V

    .line 164
    :cond_ad
    iget v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    .line 165
    invoke-direct {p0}, Lcom/android/pretty/WaterDropSeekbar;->aSY()V

    .line 166
    iget-object v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDT:Lcom/android/pretty/m;

    if-eqz v1, :cond_c3

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    if-eq v0, v1, :cond_c3

    .line 167
    iget-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDT:Lcom/android/pretty/m;

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    iget v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aDS:I

    invoke-interface {v0, v1, v2, v5}, Lcom/android/pretty/m;->aTi(IIZ)V

    .line 170
    :cond_c3
    invoke-virtual {p0}, Lcom/android/pretty/WaterDropSeekbar;->invalidate()V

    .line 171
    return v5

    .line 154
    :cond_c7
    iget v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aEb:I

    if-le v0, v1, :cond_95

    .line 155
    iget v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEb:I

    iput v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    goto :goto_95
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDD:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 191
    const/4 v1, 0x0

    int-to-float v2, v0

    iget v3, p0, Lcom/android/pretty/WaterDropSeekbar;->aDE:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 193
    iget-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    sget v1, Lcom/android/pretty/WaterDropSeekbar;->aDI:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDF:F

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aDF:F

    sub-float v3, v0, v2

    .line 197
    iget v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aDG:F

    .line 198
    iget-object v5, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDF:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aEd:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aEb:I

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 201
    iget-object v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    sget-boolean v0, Lcom/android/common/h;->ahq:Z

    if-eqz v0, :cond_7f

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDF:F

    sub-float/2addr v0, v1

    sub-float v1, v0, v6

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aDF:F

    sub-float v3, v0, v2

    .line 209
    :goto_6f
    iget v2, p0, Lcom/android/pretty/WaterDropSeekbar;->aDG:F

    .line 210
    iget-object v5, p0, Lcom/android/pretty/WaterDropSeekbar;->aDV:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 212
    invoke-direct {p0, p1}, Lcom/android/pretty/WaterDropSeekbar;->aTb(Landroid/graphics/Canvas;)V

    .line 220
    invoke-direct {p0, p1, v6}, Lcom/android/pretty/WaterDropSeekbar;->aTa(Landroid/graphics/Canvas;F)V

    .line 184
    return-void

    .line 206
    :cond_7f
    iget v1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDF:F

    .line 207
    iget v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDF:F

    add-float v3, v0, v6

    goto :goto_6f
.end method

.method protected onMeasure(II)V
    .registers 5

    .prologue
    .line 290
    iget v0, p0, Lcom/android/pretty/WaterDropSeekbar;->aDP:F

    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 291
    invoke-virtual {p0, p1, v0}, Lcom/android/pretty/WaterDropSeekbar;->setMeasuredDimension(II)V

    .line 289
    return-void
.end method

.method public vn(IZ)V
    .registers 3

    .prologue
    .line 176
    iput p1, p0, Lcom/android/pretty/WaterDropSeekbar;->aDU:I

    .line 177
    invoke-virtual {p0}, Lcom/android/pretty/WaterDropSeekbar;->invalidate()V

    .line 175
    return-void
.end method

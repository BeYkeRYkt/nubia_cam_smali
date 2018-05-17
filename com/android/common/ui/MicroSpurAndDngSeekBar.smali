.class public Lcom/android/common/ui/MicroSpurAndDngSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final wW:I

.field private static final wX:F

.field private static final wY:F

.field private static final wZ:I

.field private static final xa:I

.field private static final xb:I

.field private static final xc:I

.field private static final xd:I

.field private static final xe:I

.field private static final xf:I

.field private static final xg:I


# instance fields
.field private xh:Z

.field private xi:F

.field private xj:I

.field private xk:F

.field private xl:Z

.field private xm:I

.field private xn:[Ljava/lang/String;

.field private xo:I

.field private xp:Ljava/lang/String;

.field private xq:I

.field private xr:Landroid/graphics/Paint;

.field private xs:Landroid/graphics/Paint;

.field private xt:Landroid/graphics/Bitmap;

.field private xu:I

.field private xv:Lcom/android/common/ui/Q;

.field private xw:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 24
    const/16 v0, 0x22

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xa:I

    .line 25
    const/16 v0, 0x4c

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xb:I

    .line 28
    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->wW:I

    .line 29
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->wX:F

    .line 31
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->wZ:I

    .line 32
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->wY:F

    .line 35
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xd:I

    .line 37
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xf:I

    .line 38
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xe:I

    .line 40
    invoke-static {v3}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xc:I

    .line 210
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xg:I

    .line 22
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xu:I

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Auto"

    aput-object v1, v0, v2

    const-string/jumbo v1, "30"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xn:[Ljava/lang/String;

    .line 48
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xq:I

    .line 50
    iput v2, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xj:I

    .line 51
    sget v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xa:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xi:F

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xk:F

    .line 60
    iput v2, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    .line 64
    iput-boolean v3, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xl:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xh:Z

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xr:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xr:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xr:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xs:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xs:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 86
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xs:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020255

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xt:Landroid/graphics/Bitmap;

    .line 88
    invoke-virtual {p0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xm:I

    .line 78
    return-void
.end method

.method private BA(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xr:Landroid/graphics/Paint;

    sget v1, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xb:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    sget v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xa:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xk:F

    sget v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xa:I

    iget v3, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xj:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v4, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xk:F

    iget-object v5, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xr:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 216
    return-void
.end method

.method private BB(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->BA(Landroid/graphics/Canvas;)V

    .line 213
    invoke-direct {p0, p1}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Bz(Landroid/graphics/Canvas;)V

    .line 214
    invoke-direct {p0, p1}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->By(Landroid/graphics/Canvas;)V

    .line 211
    return-void
.end method

.method private BC(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xs:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xs:Landroid/graphics/Paint;

    sget v1, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xd:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 243
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xs:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 244
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xn:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget v1, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xa:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xk:F

    sget v3, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xc:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xs:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 245
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xs:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 246
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xn:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget v1, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xa:I

    iget v2, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xj:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xk:F

    sget v3, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xc:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xs:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 240
    return-void
.end method

.method private BD(F)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 176
    sget v1, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xa:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_9

    .line 177
    return v0

    .line 178
    :cond_9
    sget v1, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xa:I

    iget v2, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xj:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_16

    .line 179
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xq:I

    return v0

    .line 181
    :cond_16
    iget v1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xw:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 182
    :goto_1b
    iget v2, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xq:I

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_37

    .line 183
    int-to-float v2, v0

    iget v3, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xw:F

    mul-float/2addr v2, v3

    sub-float v2, p1, v2

    sget v3, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xa:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 184
    cmpg-float v2, v2, v1

    if-gez v2, :cond_34

    .line 185
    return v0

    .line 182
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 188
    :cond_37
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    return v0
.end method

.method private BE(F)F
    .registers 4

    .prologue
    .line 168
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xw:F

    mul-float/2addr v0, p1

    sget v1, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xa:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private Bt(I)I
    .registers 3

    .prologue
    .line 276
    sget-boolean v0, Lcom/android/common/h;->ahq:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Bv(I)I

    move-result v0

    return v0

    .line 277
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Bu(I)I

    move-result v0

    return v0
.end method

.method private Bu(I)I
    .registers 3

    .prologue
    .line 281
    const/4 v0, 0x5

    if-ge p1, v0, :cond_5

    .line 282
    const/4 v0, -0x1

    .line 288
    :goto_4
    return v0

    .line 283
    :cond_5
    const/16 v0, 0xa

    if-ge p1, v0, :cond_b

    .line 284
    const/4 v0, 0x0

    goto :goto_4

    .line 286
    :cond_b
    add-int/lit8 v0, p1, -0xa

    goto :goto_4
.end method

.method private Bv(I)I
    .registers 3

    .prologue
    .line 292
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xq:I

    add-int/lit8 v0, v0, -0x5

    if-le p1, v0, :cond_8

    .line 293
    const/4 v0, -0x1

    .line 299
    :goto_7
    return v0

    .line 294
    :cond_8
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xq:I

    add-int/lit8 v0, v0, -0xa

    if-le p1, v0, :cond_10

    .line 295
    const/4 v0, 0x0

    goto :goto_7

    .line 297
    :cond_10
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xq:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0xa

    goto :goto_7
.end method

.method private Bw(F)F
    .registers 4

    .prologue
    .line 198
    sget v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xa:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_b

    .line 199
    sget v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xa:I

    int-to-float p1, v0

    .line 203
    :cond_a
    :goto_a
    return p1

    .line 200
    :cond_b
    sget v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xa:I

    iget v1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xj:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_a

    .line 201
    sget v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xa:I

    iget v1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xj:I

    add-int/2addr v0, v1

    int-to-float p1, v0

    goto :goto_a
.end method

.method private Bx(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 208
    sget v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->wW:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 207
    return-void
.end method

.method private By(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 229
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xr:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xi:F

    iget v1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xk:F

    sget v2, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->wZ:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xr:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 231
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    invoke-direct {p0, v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Bt(I)I

    move-result v0

    .line 232
    if-le v0, v4, :cond_55

    iget v1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    iget v2, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xq:I

    if-eq v1, v2, :cond_55

    .line 233
    iget-object v1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xs:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xs:Landroid/graphics/Paint;

    sget v2, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xd:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 235
    iget-object v1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xs:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xi:F

    iget v2, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xk:F

    sget v3, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xe:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xs:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 228
    :cond_55
    return-void
.end method

.method private Bz(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xr:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    sget v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xa:I

    .line 224
    sget-boolean v1, Lcom/android/common/h;->ahq:Z

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xj:I

    add-int/2addr v0, v1

    .line 225
    :cond_f
    int-to-float v1, v0

    iget v2, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xk:F

    iget v3, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xi:F

    iget v4, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xk:F

    iget-object v5, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xr:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 221
    return-void
.end method


# virtual methods
.method public BF()Z
    .registers 2

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xh:Z

    return v0
.end method

.method public BG()V
    .registers 3

    .prologue
    .line 336
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xu:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    .line 338
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->BE(F)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xi:F

    .line 339
    invoke-virtual {p0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->invalidate()V

    .line 335
    :cond_14
    return-void
.end method

.method protected BH([Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 308
    sget-boolean v0, Lcom/android/common/h;->ahq:Z

    if-nez v0, :cond_5

    return-void

    .line 310
    :cond_5
    const/4 v1, 0x0

    add-int/lit8 v0, p2, -0x1

    :goto_8
    if-ge v1, v0, :cond_17

    .line 311
    aget-object v2, p1, v1

    .line 312
    aget-object v3, p1, v0

    aput-object v3, p1, v1

    .line 313
    aput-object v2, p1, v0

    .line 310
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 307
    :cond_17
    return-void
.end method

.method public Bq(Lcom/android/common/ui/Q;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xv:Lcom/android/common/ui/Q;

    .line 74
    return-void
.end method

.method public Br([Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 302
    if-eqz p1, :cond_10

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 303
    iput-object p1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xn:[Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xn:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xn:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->BH([Ljava/lang/String;I)V

    .line 301
    :cond_10
    return-void
.end method

.method public Bs(II)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 317
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xu:I

    if-ne v0, p1, :cond_6

    return-void

    .line 318
    :cond_6
    iput p1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xu:I

    .line 319
    if-ne p1, v1, :cond_36

    const-string/jumbo v0, "maf_key"

    :goto_d
    iput-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xp:Ljava/lang/String;

    .line 320
    if-ne p1, v1, :cond_3a

    const/16 v0, 0x28

    :goto_13
    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xq:I

    .line 323
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3f

    .line 324
    sget-boolean v0, Lcom/android/common/h;->ahq:Z

    if-eqz v0, :cond_3d

    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xq:I

    :goto_1e
    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    .line 328
    :goto_20
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xj:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xq:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xw:F

    .line 329
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->BE(F)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xi:F

    .line 330
    invoke-virtual {p0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->invalidate()V

    .line 316
    return-void

    .line 319
    :cond_36
    const-string/jumbo v0, "pref_camera_interval_pro"

    goto :goto_d

    .line 320
    :cond_3a
    const/16 v0, 0x46

    goto :goto_13

    .line 324
    :cond_3d
    const/4 v0, 0x0

    goto :goto_1e

    .line 326
    :cond_3f
    sget-boolean v0, Lcom/android/common/h;->ahq:Z

    if-eqz v0, :cond_4b

    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xq:I

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xa

    :goto_48
    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    goto :goto_20

    :cond_4b
    add-int/lit8 v0, p2, 0xa

    goto :goto_48
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 118
    invoke-virtual {p0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    if-eq v3, v1, :cond_12

    .line 119
    return v2

    .line 121
    :cond_12
    packed-switch v3, :pswitch_data_9e

    .line 159
    :cond_15
    :goto_15
    invoke-virtual {p0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->invalidate()V

    .line 160
    return v1

    .line 124
    :pswitch_19
    iput-boolean v2, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xh:Z

    .line 125
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xv:Lcom/android/common/ui/Q;

    if-eqz v0, :cond_31

    .line 126
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    invoke-direct {p0, v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Bt(I)I

    move-result v4

    .line 127
    iget-object v5, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xv:Lcom/android/common/ui/Q;

    iget-object v6, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xp:Ljava/lang/String;

    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xu:I

    if-ne v0, v1, :cond_52

    move v0, v1

    :goto_2e
    invoke-interface {v5, v6, v4, v0, v3}, Lcom/android/common/ui/Q;->BI(Ljava/lang/String;IZI)V

    .line 129
    :cond_31
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    if-ge v0, v7, :cond_54

    .line 130
    iput v2, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    .line 134
    :cond_37
    :goto_37
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->BE(F)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xi:F

    .line 135
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xu:I

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xv:Lcom/android/common/ui/Q;

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    if-ge v0, v7, :cond_15

    .line 136
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xv:Lcom/android/common/ui/Q;

    invoke-interface {v0}, Lcom/android/common/ui/Q;->BK()V

    goto :goto_15

    :cond_52
    move v0, v2

    .line 127
    goto :goto_2e

    .line 131
    :cond_54
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    if-ge v0, v8, :cond_37

    .line 132
    iput v8, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    goto :goto_37

    .line 140
    :pswitch_5b
    iput-boolean v1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xh:Z

    .line 141
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xu:I

    if-ne v0, v1, :cond_6a

    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xv:Lcom/android/common/ui/Q;

    if-eqz v0, :cond_6a

    .line 142
    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xv:Lcom/android/common/ui/Q;

    invoke-interface {v0}, Lcom/android/common/ui/Q;->BJ()V

    .line 145
    :cond_6a
    :pswitch_6a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Bw(F)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xi:F

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->BD(F)I

    move-result v0

    .line 147
    iget v4, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    if-eq v0, v4, :cond_15

    .line 148
    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    .line 149
    iget-boolean v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xl:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xv:Lcom/android/common/ui/Q;

    if-eqz v0, :cond_15

    .line 150
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    invoke-direct {p0, v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Bt(I)I

    move-result v0

    .line 151
    iget-object v4, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xv:Lcom/android/common/ui/Q;

    iget-object v5, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xp:Ljava/lang/String;

    iget v6, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xu:I

    if-ne v6, v1, :cond_99

    move v2, v1

    :cond_99
    invoke-interface {v4, v5, v0, v2, v3}, Lcom/android/common/ui/Q;->BI(Ljava/lang/String;IZI)V

    goto/16 :goto_15

    .line 121
    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_19
        :pswitch_6a
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Bx(Landroid/graphics/Canvas;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->BB(Landroid/graphics/Canvas;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->BC(Landroid/graphics/Canvas;)V

    .line 105
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .prologue
    .line 94
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 95
    sub-int v0, p4, p2

    sget v1, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xa:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xj:I

    .line 96
    sget-boolean v0, Lcom/android/common/h;->ahq:Z

    if-eqz v0, :cond_14

    .line 97
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xq:I

    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    .line 99
    :cond_14
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xj:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xq:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xw:F

    .line 100
    sub-int v0, p5, p3

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xk:F

    .line 101
    iget v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xo:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->BE(F)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->xi:F

    .line 93
    return-void
.end method

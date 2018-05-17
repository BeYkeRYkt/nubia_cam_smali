.class public Lcom/android/common/ui/ZoomSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private vA:I

.field private vB:F

.field private vC:Lcom/android/common/ui/H;

.field private vD:I

.field private vE:I

.field private vF:Landroid/graphics/Bitmap;

.field private vG:Landroid/graphics/Bitmap;

.field private vH:F

.field private vI:F

.field private vJ:F

.field private vK:Landroid/graphics/Bitmap;

.field private vv:Z

.field private vw:Z

.field private vx:Z

.field private vy:Z

.field private vz:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vD:I

    .line 20
    iput v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    .line 21
    iput v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vH:F

    .line 22
    iput v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vI:F

    .line 23
    iput v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vJ:F

    .line 24
    iput v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vB:F

    .line 26
    iput-boolean v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vw:Z

    .line 27
    iput-object v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vF:Landroid/graphics/Bitmap;

    .line 28
    iput-object v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vG:Landroid/graphics/Bitmap;

    .line 29
    iput-object v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vK:Landroid/graphics/Bitmap;

    .line 30
    iput-object v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vC:Lcom/android/common/ui/H;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vv:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vx:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vy:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vz:Z

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vE:I

    .line 45
    invoke-direct {p0}, Lcom/android/common/ui/ZoomSeekBar;->Aa()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vD:I

    .line 20
    iput v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    .line 21
    iput v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vH:F

    .line 22
    iput v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vI:F

    .line 23
    iput v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vJ:F

    .line 24
    iput v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vB:F

    .line 26
    iput-boolean v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vw:Z

    .line 27
    iput-object v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vF:Landroid/graphics/Bitmap;

    .line 28
    iput-object v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vG:Landroid/graphics/Bitmap;

    .line 29
    iput-object v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vK:Landroid/graphics/Bitmap;

    .line 30
    iput-object v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vC:Lcom/android/common/ui/H;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vv:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vx:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vy:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vz:Z

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vE:I

    .line 50
    invoke-direct {p0}, Lcom/android/common/ui/ZoomSeekBar;->Aa()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vD:I

    .line 20
    iput v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    .line 21
    iput v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vH:F

    .line 22
    iput v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vI:F

    .line 23
    iput v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vJ:F

    .line 24
    iput v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vB:F

    .line 26
    iput-boolean v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vw:Z

    .line 27
    iput-object v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vF:Landroid/graphics/Bitmap;

    .line 28
    iput-object v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vG:Landroid/graphics/Bitmap;

    .line 29
    iput-object v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vK:Landroid/graphics/Bitmap;

    .line 30
    iput-object v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vC:Lcom/android/common/ui/H;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vv:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vx:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vy:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vz:Z

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vE:I

    .line 55
    invoke-direct {p0}, Lcom/android/common/ui/ZoomSeekBar;->Aa()V

    .line 53
    return-void
.end method

.method private Aa()V
    .registers 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/common/ui/ZoomSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    const v1, 0x7f0202f5

    .line 59
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vF:Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p0}, Lcom/android/common/ui/ZoomSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    const v1, 0x7f0202f8

    .line 61
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vG:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {p0}, Lcom/android/common/ui/ZoomSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    const v1, 0x7f0202f6

    .line 63
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vK:Landroid/graphics/Bitmap;

    .line 65
    invoke-direct {p0}, Lcom/android/common/ui/ZoomSeekBar;->zX()V

    .line 58
    return-void
.end method

.method private Ab(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 126
    iget v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vI:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_22

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vF:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 128
    iget-object v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 127
    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vI:F

    .line 130
    :cond_22
    iget v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vJ:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_48

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vF:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 132
    iget-object v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 131
    sub-float/2addr v0, v1

    .line 132
    iget v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vB:F

    iget v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vD:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 131
    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vJ:F

    .line 125
    :cond_48
    return-void
.end method

.method private Ac()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 219
    iget v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    iget v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vD:I

    if-le v0, v1, :cond_c

    .line 220
    iget v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vD:I

    iput v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    .line 218
    :cond_b
    :goto_b
    return-void

    .line 221
    :cond_c
    iget v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    if-gez v0, :cond_b

    .line 222
    iput v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    goto :goto_b
.end method

.method private Ad(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 119
    invoke-direct {p0, p1}, Lcom/android/common/ui/ZoomSeekBar;->Ab(Landroid/graphics/Canvas;)V

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vF:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 121
    iget-object v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 120
    sub-float/2addr v1, v2

    .line 121
    iget v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vB:F

    iget v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vD:I

    iget v4, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 120
    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vH:F

    .line 122
    iget-object v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vG:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vH:F

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 117
    return-void
.end method

.method private zW()V
    .registers 3

    .prologue
    .line 209
    iget v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vE:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vE:I

    iget v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    if-ne v0, v1, :cond_c

    .line 210
    return-void

    .line 212
    :cond_c
    invoke-direct {p0}, Lcom/android/common/ui/ZoomSeekBar;->Ac()V

    .line 213
    invoke-virtual {p0}, Lcom/android/common/ui/ZoomSeekBar;->invalidate()V

    .line 214
    iget v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    iput v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vE:I

    .line 215
    iget-object v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vC:Lcom/android/common/ui/H;

    iget v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    invoke-interface {v0, v1}, Lcom/android/common/ui/H;->tL(I)V

    .line 208
    return-void
.end method

.method private zX()V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vF:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vD:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vB:F

    .line 68
    return-void
.end method

.method private zY(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vF:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vF:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 107
    iget-object v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vF:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 108
    iget-boolean v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vw:Z

    if-eqz v1, :cond_4b

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vF:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 110
    iget-object v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vK:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 109
    sub-float/2addr v1, v2

    .line 110
    iget v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vB:F

    .line 111
    iget v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vD:I

    add-int/lit8 v3, v3, -0xc

    int-to-float v3, v3

    .line 110
    mul-float/2addr v2, v3

    .line 109
    add-float/2addr v1, v2

    .line 112
    iget-object v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vK:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 114
    :cond_4b
    invoke-direct {p0, p1}, Lcom/android/common/ui/ZoomSeekBar;->Ad(Landroid/graphics/Canvas;)V

    .line 104
    return-void
.end method

.method private zZ(F)V
    .registers 4

    .prologue
    .line 199
    iget v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    .line 200
    iget v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vD:I

    iget v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vB:F

    div-float v1, p1, v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    .line 201
    iget-boolean v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vx:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vy:Z

    if-eqz v0, :cond_15

    .line 198
    :cond_14
    :goto_14
    return-void

    .line 202
    :cond_15
    iget v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    sget v1, Lcom/android/common/appService/T;->lc:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_14

    .line 203
    sget v0, Lcom/android/common/appService/T;->lc:I

    iput v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    goto :goto_14
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 148
    iget-boolean v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vv:Z

    if-nez v0, :cond_14

    .line 149
    iget-object v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vC:Lcom/android/common/ui/H;

    if-eqz v0, :cond_f

    .line 150
    iget-object v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vC:Lcom/android/common/ui/H;

    invoke-interface {v0}, Lcom/android/common/ui/H;->tN()V

    .line 152
    :cond_f
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 154
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_8a

    .line 195
    :cond_1b
    :goto_1b
    return v2

    .line 156
    :pswitch_1c
    iget-object v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vC:Lcom/android/common/ui/H;

    if-eqz v0, :cond_25

    .line 157
    iget-object v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vC:Lcom/android/common/ui/H;

    invoke-interface {v0}, Lcom/android/common/ui/H;->tM()V

    .line 159
    :cond_25
    iget-boolean v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vz:Z

    if-eqz v0, :cond_31

    .line 160
    iget v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    sget v1, Lcom/android/common/appService/T;->lc:I

    if-ne v0, v1, :cond_31

    .line 161
    iput-boolean v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vy:Z

    .line 163
    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/ZoomSeekBar;->zZ(F)V

    .line 164
    invoke-direct {p0}, Lcom/android/common/ui/ZoomSeekBar;->zW()V

    .line 165
    iget-boolean v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vz:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vx:Z

    if-nez v0, :cond_1b

    .line 166
    iget v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    sget v1, Lcom/android/common/appService/T;->lc:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1b

    .line 167
    iput-boolean v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vx:Z

    goto :goto_1b

    .line 171
    :pswitch_4e
    iget-boolean v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vy:Z

    if-eqz v0, :cond_5d

    sget v0, Lcom/android/common/appService/T;->lc:I

    iget v1, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    sub-int/2addr v0, v1

    const/4 v1, 0x6

    if-le v0, v1, :cond_5d

    .line 172
    iput-boolean v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vy:Z

    goto :goto_1b

    .line 174
    :cond_5d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/ZoomSeekBar;->zZ(F)V

    .line 175
    iget-boolean v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vz:Z

    if-eqz v0, :cond_6c

    iget-boolean v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vx:Z

    if-eqz v0, :cond_70

    .line 179
    :cond_6c
    :goto_6c
    invoke-direct {p0}, Lcom/android/common/ui/ZoomSeekBar;->zW()V

    goto :goto_1b

    .line 176
    :cond_70
    iget v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    sget v1, Lcom/android/common/appService/T;->lc:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_6c

    .line 177
    iput-boolean v2, p0, Lcom/android/common/ui/ZoomSeekBar;->vx:Z

    goto :goto_6c

    .line 185
    :pswitch_7b
    iget-object v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vC:Lcom/android/common/ui/H;

    if-eqz v0, :cond_84

    .line 186
    iget-object v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vC:Lcom/android/common/ui/H;

    invoke-interface {v0}, Lcom/android/common/ui/H;->tN()V

    .line 188
    :cond_84
    iput-boolean v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vx:Z

    .line 189
    iput-boolean v3, p0, Lcom/android/common/ui/ZoomSeekBar;->vy:Z

    goto :goto_1b

    .line 154
    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_7b
        :pswitch_4e
        :pswitch_7b
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/android/common/ui/ZoomSeekBar;->zY(Landroid/graphics/Canvas;)V

    .line 98
    return-void
.end method

.method public zQ(I)V
    .registers 2

    .prologue
    .line 231
    iput p1, p0, Lcom/android/common/ui/ZoomSeekBar;->vA:I

    .line 232
    invoke-direct {p0}, Lcom/android/common/ui/ZoomSeekBar;->Ac()V

    .line 233
    invoke-virtual {p0}, Lcom/android/common/ui/ZoomSeekBar;->invalidate()V

    .line 230
    return-void
.end method

.method public zR(Lcom/android/common/ui/H;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/common/ui/ZoomSeekBar;->vC:Lcom/android/common/ui/H;

    .line 89
    return-void
.end method

.method public zS(Z)V
    .registers 4

    .prologue
    .line 73
    if-eqz p1, :cond_12

    .line 74
    invoke-virtual {p0}, Lcom/android/common/ui/ZoomSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    const v1, 0x7f0202f7

    .line 74
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vF:Landroid/graphics/Bitmap;

    .line 80
    :goto_f
    iput-boolean p1, p0, Lcom/android/common/ui/ZoomSeekBar;->vz:Z

    .line 72
    return-void

    .line 77
    :cond_12
    invoke-virtual {p0}, Lcom/android/common/ui/ZoomSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    const v1, 0x7f0202f5

    .line 77
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/ZoomSeekBar;->vF:Landroid/graphics/Bitmap;

    goto :goto_f
.end method

.method public zT(Z)V
    .registers 2

    .prologue
    .line 93
    return-void
.end method

.method public zU(I)V
    .registers 2

    .prologue
    .line 84
    iput p1, p0, Lcom/android/common/ui/ZoomSeekBar;->vD:I

    .line 85
    invoke-direct {p0}, Lcom/android/common/ui/ZoomSeekBar;->zX()V

    .line 86
    invoke-virtual {p0}, Lcom/android/common/ui/ZoomSeekBar;->invalidate()V

    .line 83
    return-void
.end method

.method public zV(Z)V
    .registers 2

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/common/ui/ZoomSeekBar;->vv:Z

    .line 242
    return-void
.end method

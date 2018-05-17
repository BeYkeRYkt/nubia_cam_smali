.class public Lcom/android/common/ui/VerticalSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private oh:Lcom/android/common/ui/ApertureBladeView;

.field private oi:Landroid/content/Context;

.field private oj:I

.field private ok:Landroid/graphics/Paint;

.field private ol:I

.field private om:Landroid/graphics/Bitmap;

.field private on:F

.field private oo:F

.field private op:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v0, p0, Lcom/android/common/ui/VerticalSeekBar;->op:F

    .line 22
    iput v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    .line 23
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/common/ui/VerticalSeekBar;->on:F

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oh:Lcom/android/common/ui/ApertureBladeView;

    .line 25
    iput v1, p0, Lcom/android/common/ui/VerticalSeekBar;->ol:I

    .line 27
    iput v1, p0, Lcom/android/common/ui/VerticalSeekBar;->oj:I

    .line 31
    invoke-direct {p0, p1}, Lcom/android/common/ui/VerticalSeekBar;->uj(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v0, p0, Lcom/android/common/ui/VerticalSeekBar;->op:F

    .line 22
    iput v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    .line 23
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/common/ui/VerticalSeekBar;->on:F

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oh:Lcom/android/common/ui/ApertureBladeView;

    .line 25
    iput v1, p0, Lcom/android/common/ui/VerticalSeekBar;->ol:I

    .line 27
    iput v1, p0, Lcom/android/common/ui/VerticalSeekBar;->oj:I

    .line 36
    invoke-direct {p0, p1}, Lcom/android/common/ui/VerticalSeekBar;->uj(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private uj(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/common/ui/VerticalSeekBar;->oi:Landroid/content/Context;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/VerticalSeekBar;->ok:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/android/common/ui/VerticalSeekBar;->ok:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/android/common/ui/VerticalSeekBar;->ok:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020005

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/VerticalSeekBar;->om:Landroid/graphics/Bitmap;

    .line 39
    return-void
.end method

.method private um(F)V
    .registers 4

    .prologue
    .line 142
    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/common/ui/VerticalSeekBar;->ol:I

    .line 143
    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oj:I

    const/16 v1, 0xb4

    if-eq v1, v0, :cond_18

    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oj:I

    const/16 v1, 0x10e

    if-ne v1, v0, :cond_1e

    .line 144
    :cond_18
    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->ol:I

    rsub-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/common/ui/VerticalSeekBar;->ol:I

    .line 146
    :cond_1e
    iget-object v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oh:Lcom/android/common/ui/ApertureBladeView;

    if-eqz v0, :cond_29

    .line 147
    iget-object v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oh:Lcom/android/common/ui/ApertureBladeView;

    iget v1, p0, Lcom/android/common/ui/VerticalSeekBar;->ol:I

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ApertureBladeView;->FG(I)V

    .line 141
    :cond_29
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 77
    return v5

    .line 79
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 82
    const/4 v1, 0x2

    new-array v4, v1, [I

    .line 83
    invoke-virtual {p0, v4}, Lcom/android/common/ui/VerticalSeekBar;->getLocationInWindow([I)V

    .line 84
    aget v1, v4, v5

    int-to-float v1, v1

    sub-float v1, v0, v1

    .line 85
    aget v0, v4, v6

    int-to-float v0, v0

    sub-float v0, v3, v0

    .line 86
    iget v3, p0, Lcom/android/common/ui/VerticalSeekBar;->oj:I

    const/16 v4, 0xb4

    if-ne v4, v3, :cond_2b

    .line 87
    iget v3, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    add-float/2addr v0, v3

    .line 89
    :cond_2b
    iget v3, p0, Lcom/android/common/ui/VerticalSeekBar;->oj:I

    const/16 v4, 0x10e

    if-ne v4, v3, :cond_34

    .line 90
    iget v3, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    add-float/2addr v1, v3

    .line 92
    :cond_34
    iget v3, p0, Lcom/android/common/ui/VerticalSeekBar;->oj:I

    sparse-switch v3, :sswitch_data_64

    move v0, v2

    .line 103
    :goto_3a
    :sswitch_3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_76

    .line 120
    :goto_41
    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->on:F

    invoke-direct {p0, v0}, Lcom/android/common/ui/VerticalSeekBar;->um(F)V

    .line 121
    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBar;->invalidate()V

    .line 122
    return v6

    :sswitch_4a
    move v0, v1

    .line 100
    goto :goto_3a

    .line 105
    :pswitch_4c
    iput v0, p0, Lcom/android/common/ui/VerticalSeekBar;->on:F

    goto :goto_41

    .line 110
    :pswitch_4f
    cmpg-float v1, v0, v2

    if-gez v1, :cond_56

    .line 111
    iput v2, p0, Lcom/android/common/ui/VerticalSeekBar;->on:F

    goto :goto_41

    .line 112
    :cond_56
    iget v1, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_61

    .line 113
    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    iput v0, p0, Lcom/android/common/ui/VerticalSeekBar;->on:F

    goto :goto_41

    .line 115
    :cond_61
    iput v0, p0, Lcom/android/common/ui/VerticalSeekBar;->on:F

    goto :goto_41

    .line 92
    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_3a
        0x5a -> :sswitch_4a
        0xb4 -> :sswitch_3a
        0x10e -> :sswitch_4a
    .end sparse-switch

    .line 103
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4f
        :pswitch_4f
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/common/ui/VerticalSeekBar;->op:F

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    .line 54
    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oj:I

    const/16 v1, 0xb4

    if-eq v1, v0, :cond_1c

    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oj:I

    const/16 v1, 0x10e

    if-ne v1, v0, :cond_23

    .line 55
    :cond_1c
    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    iget v1, p0, Lcom/android/common/ui/VerticalSeekBar;->on:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/VerticalSeekBar;->on:F

    .line 57
    :cond_23
    iget-object v0, p0, Lcom/android/common/ui/VerticalSeekBar;->om:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 58
    iget-object v0, p0, Lcom/android/common/ui/VerticalSeekBar;->om:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 59
    div-int/lit8 v0, v7, 0x4

    int-to-float v9, v0

    .line 60
    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->on:F

    .line 61
    iget v1, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    iget v2, p0, Lcom/android/common/ui/VerticalSeekBar;->on:F

    sub-float/2addr v1, v2

    int-to-float v2, v8

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8f

    .line 62
    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    int-to-float v1, v8

    sub-float/2addr v0, v1

    move v6, v0

    .line 64
    :goto_43
    int-to-float v0, v8

    cmpl-float v0, v6, v0

    if-lez v0, :cond_59

    .line 65
    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->op:F

    div-float v1, v0, v10

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->op:F

    div-float v3, v0, v10

    sub-float v4, v6, v9

    iget-object v5, p0, Lcom/android/common/ui/VerticalSeekBar;->ok:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 67
    :cond_59
    iget-object v0, p0, Lcom/android/common/ui/VerticalSeekBar;->om:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/common/ui/VerticalSeekBar;->op:F

    div-float/2addr v1, v10

    div-int/lit8 v2, v7, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/common/ui/VerticalSeekBar;->ok:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 68
    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    int-to-float v1, v8

    sub-float/2addr v0, v1

    div-int/lit8 v1, v8, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr v0, v9

    cmpg-float v0, v6, v0

    if-gez v0, :cond_8e

    .line 69
    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->op:F

    div-float v1, v0, v10

    iget-object v0, p0, Lcom/android/common/ui/VerticalSeekBar;->om:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v6

    add-float v2, v0, v9

    .line 70
    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->op:F

    div-float v3, v0, v10

    iget v4, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    iget-object v5, p0, Lcom/android/common/ui/VerticalSeekBar;->ok:Landroid/graphics/Paint;

    move-object v0, p1

    .line 69
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 51
    :cond_8e
    return-void

    :cond_8f
    move v6, v0

    goto :goto_43
.end method

.method public setOrientation(I)V
    .registers 2

    .prologue
    .line 152
    iput p1, p0, Lcom/android/common/ui/VerticalSeekBar;->oj:I

    .line 151
    return-void
.end method

.method public ui()I
    .registers 2

    .prologue
    .line 138
    const/16 v0, 0x64

    return v0
.end method

.method public uk(Lcom/android/common/ui/ApertureBladeView;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/common/ui/VerticalSeekBar;->oh:Lcom/android/common/ui/ApertureBladeView;

    .line 47
    return-void
.end method

.method public ul(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 126
    iput p1, p0, Lcom/android/common/ui/VerticalSeekBar;->ol:I

    .line 127
    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_19

    .line 128
    iget-object v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oi:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    .line 130
    :cond_19
    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    int-to-float v1, p1

    iget v2, p0, Lcom/android/common/ui/VerticalSeekBar;->oo:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/common/ui/VerticalSeekBar;->om:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/VerticalSeekBar;->on:F

    .line 131
    iget v0, p0, Lcom/android/common/ui/VerticalSeekBar;->on:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_37

    .line 132
    iput v3, p0, Lcom/android/common/ui/VerticalSeekBar;->on:F

    .line 134
    :cond_37
    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBar;->invalidate()V

    .line 125
    return-void
.end method

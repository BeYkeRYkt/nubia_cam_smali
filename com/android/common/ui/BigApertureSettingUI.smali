.class public Lcom/android/common/ui/BigApertureSettingUI;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private wA:Lcom/android/common/ui/RotateLayout;

.field private wB:I

.field private wC:I

.field private wD:F

.field private wE:I

.field private wF:F

.field private wG:F

.field private wH:Z

.field private wI:I

.field private wJ:I

.field private wK:Lcom/android/common/ui/VerticalSeekBar;

.field private wL:I

.field private wM:I

.field private wN:[I

.field private wO:I

.field wP:Z

.field wQ:Z

.field private wR:[I

.field private wS:[F

.field private wT:Z

.field private ws:Z

.field private wt:I

.field private wu:I

.field private wv:Landroid/graphics/Rect;

.field private ww:Z

.field private wx:Lcom/android/common/ui/RotateLayout;

.field private wy:Lcom/android/common/ui/ApertureBladeView;

.field private wz:Lcom/android/common/ui/O;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .prologue
    const/16 v6, 0x42

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->wy:Lcom/android/common/ui/ApertureBladeView;

    .line 34
    iput-object v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->wK:Lcom/android/common/ui/VerticalSeekBar;

    .line 36
    iput v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wC:I

    .line 37
    iput v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    .line 38
    iput v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wM:I

    .line 39
    iput v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wL:I

    .line 40
    iput v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wJ:I

    .line 42
    iput-object v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->wv:Landroid/graphics/Rect;

    .line 43
    iput-boolean v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->ww:Z

    .line 45
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wF:F

    .line 46
    iput v5, p0, Lcom/android/common/ui/BigApertureSettingUI;->wG:F

    .line 47
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wG:F

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wF:F

    add-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wD:F

    .line 49
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wN:[I

    .line 51
    iput-object v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->wz:Lcom/android/common/ui/O;

    .line 52
    iput v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wI:I

    .line 53
    iput v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wO:I

    .line 54
    iput v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wE:I

    .line 55
    iput-boolean v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->ws:Z

    .line 57
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wS:[F

    .line 214
    invoke-static {v6}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wu:I

    .line 215
    invoke-static {v6}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wt:I

    .line 225
    iput-boolean v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wH:Z

    .line 226
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wR:[I

    .line 227
    iput-boolean v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wP:Z

    .line 228
    iput-boolean v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wQ:Z

    .line 366
    iput-boolean v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wT:Z

    .line 61
    invoke-direct {p0}, Lcom/android/common/ui/BigApertureSettingUI;->AR()V

    .line 59
    return-void
.end method

.method private AO(IIII)Landroid/graphics/Rect;
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 218
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wu:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wu:I

    sub-int v1, p3, v1

    invoke-static {v0, v3, v1}, Lcom/android/common/h;->aoS(III)I

    move-result v0

    .line 219
    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wt:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wt:I

    sub-int v2, p4, v2

    invoke-static {v1, v3, v2}, Lcom/android/common/h;->aoS(III)I

    move-result v1

    .line 221
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->wu:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/common/ui/BigApertureSettingUI;->wt:I

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 222
    return-object v2
.end method

.method private AP()Landroid/graphics/Point;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/common/ui/BigApertureSettingUI;->getLocationInWindow([I)V

    .line 204
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 205
    aget v2, v0, v3

    aget v3, v0, v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 206
    aget v2, v0, v4

    aget v0, v0, v4

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 207
    return-object v1
.end method

.method private AQ(FF)[I
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 232
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wN:[I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/BigApertureSettingUI;->getLocationInWindow([I)V

    .line 233
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wN:[I

    aget v0, v0, v3

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1f

    .line 234
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wN:[I

    aget v0, v0, v3

    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_20

    .line 237
    :cond_1f
    return-object v2

    .line 235
    :cond_20
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wN:[I

    aget v0, v0, v4

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1f

    .line 236
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wN:[I

    aget v0, v0, v4

    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1f

    .line 239
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 240
    float-to-int v1, p1

    iget-object v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wN:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 241
    float-to-int v1, p2

    iget-object v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wN:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 242
    return-object v0
.end method

.method private AR()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_6

    .line 95
    return-void

    .line 97
    :cond_6
    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    .line 98
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    const v1, 0x7f100015

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ApertureBladeView;

    iput-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wy:Lcom/android/common/ui/ApertureBladeView;

    .line 99
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wy:Lcom/android/common/ui/ApertureBladeView;

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wF:F

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ApertureBladeView;->FH(F)V

    .line 100
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wy:Lcom/android/common/ui/ApertureBladeView;

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wG:F

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ApertureBladeView;->FI(F)V

    .line 101
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wy:Lcom/android/common/ui/ApertureBladeView;

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wD:F

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ApertureBladeView;->FJ(F)V

    .line 102
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wy:Lcom/android/common/ui/ApertureBladeView;

    new-instance v1, Lcom/android/common/ui/aY;

    invoke-direct {v1, p0}, Lcom/android/common/ui/aY;-><init>(Lcom/android/common/ui/BigApertureSettingUI;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ApertureBladeView;->FK(Lcom/android/common/ui/al;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040001

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    .line 113
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    const v1, 0x7f100017

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/VerticalSeekBar;

    iput-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wK:Lcom/android/common/ui/VerticalSeekBar;

    .line 114
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wK:Lcom/android/common/ui/VerticalSeekBar;

    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wy:Lcom/android/common/ui/ApertureBladeView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/VerticalSeekBar;->uk(Lcom/android/common/ui/ApertureBladeView;)V

    .line 115
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wD:F

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wG:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wF:F

    iget v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wG:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wK:Lcom/android/common/ui/VerticalSeekBar;

    invoke-virtual {v1}, Lcom/android/common/ui/VerticalSeekBar;->ui()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 116
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wK:Lcom/android/common/ui/VerticalSeekBar;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/VerticalSeekBar;->ul(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wC:I

    .line 119
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wC:I

    iput v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    .line 120
    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wM:I

    .line 121
    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wL:I

    .line 122
    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wJ:I

    .line 93
    return-void
.end method

.method private AS(Landroid/view/MotionEvent;)Z
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/BigApertureSettingUI;->AQ(FF)[I

    move-result-object v0

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 288
    iput-boolean v6, p0, Lcom/android/common/ui/BigApertureSettingUI;->wH:Z

    .line 289
    iget-object v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    if-eqz v2, :cond_47

    .line 290
    if-eqz v0, :cond_47

    .line 291
    if-ne v1, v7, :cond_47

    .line 293
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v1}, Lcom/android/common/ui/RotateLayout;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 294
    iget-object v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v2}, Lcom/android/common/ui/RotateLayout;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 295
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/common/ui/BigApertureSettingUI;->wC:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    add-int/2addr v5, v2

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 297
    aget v1, v0, v6

    aget v0, v0, v7

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 298
    iput-boolean v7, p0, Lcom/android/common/ui/BigApertureSettingUI;->wP:Z

    .line 302
    :goto_41
    iget-boolean v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wP:Z

    return v0

    .line 300
    :cond_44
    iput-boolean v6, p0, Lcom/android/common/ui/BigApertureSettingUI;->wP:Z

    goto :goto_41

    .line 304
    :cond_47
    return v6
.end method

.method private AT(Landroid/view/MotionEvent;)Z
    .registers 12

    .prologue
    const/16 v1, 0x96

    const/16 v0, 0xf

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/common/ui/BigApertureSettingUI;->AQ(FF)[I

    move-result-object v2

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 312
    iget v4, p0, Lcom/android/common/ui/BigApertureSettingUI;->wI:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_22

    iget v4, p0, Lcom/android/common/ui/BigApertureSettingUI;->wI:I

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_25

    :cond_22
    move v9, v1

    move v1, v0

    move v0, v9

    .line 316
    :cond_25
    iget-object v4, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    if-eqz v4, :cond_68

    .line 317
    if-eqz v2, :cond_68

    .line 318
    if-ne v3, v8, :cond_68

    .line 319
    iget-object v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v3}, Lcom/android/common/ui/RotateLayout;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v3, v0

    .line 320
    iget-object v4, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v4}, Lcom/android/common/ui/RotateLayout;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v4, v1

    .line 321
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v6}, Lcom/android/common/ui/RotateLayout;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    .line 322
    iget-object v6, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v6}, Lcom/android/common/ui/RotateLayout;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v6

    .line 321
    invoke-direct {v5, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 324
    aget v0, v2, v7

    aget v1, v2, v8

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 325
    iput-boolean v8, p0, Lcom/android/common/ui/BigApertureSettingUI;->wQ:Z

    .line 329
    :goto_62
    iget-boolean v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wQ:Z

    return v0

    .line 327
    :cond_65
    iput-boolean v7, p0, Lcom/android/common/ui/BigApertureSettingUI;->wQ:Z

    goto :goto_62

    .line 331
    :cond_68
    return v7
.end method

.method private AU(Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 347
    if-ne v0, v3, :cond_46

    iget-boolean v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wP:Z

    if-eqz v0, :cond_46

    .line 348
    iput-boolean v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->ws:Z

    .line 349
    int-to-float v0, v1

    int-to-float v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/BigApertureSettingUI;->AQ(FF)[I

    move-result-object v0

    .line 350
    if-eqz v0, :cond_46

    .line 351
    aget v1, v0, v4

    aget v2, v0, v3

    invoke-direct {p0, v1, v2}, Lcom/android/common/ui/BigApertureSettingUI;->AZ(II)V

    .line 352
    iget-boolean v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->ww:Z

    if-nez v1, :cond_37

    .line 353
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p0, v1}, Lcom/android/common/ui/BigApertureSettingUI;->addView(Landroid/view/View;)V

    .line 354
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p0, v1}, Lcom/android/common/ui/BigApertureSettingUI;->addView(Landroid/view/View;)V

    .line 355
    iput-boolean v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->ww:Z

    .line 357
    :cond_37
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wR:[I

    aget v2, v0, v4

    aput v2, v1, v4

    .line 358
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wR:[I

    aget v0, v0, v3

    aput v0, v1, v3

    .line 359
    iput-boolean v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->wH:Z

    .line 360
    return v3

    .line 363
    :cond_46
    return v4
.end method

.method private AV()V
    .registers 5

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wH:Z

    if-eqz v0, :cond_27

    .line 336
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wR:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wR:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wv:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->wv:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/common/ui/BigApertureSettingUI;->AO(IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wz:Lcom/android/common/ui/O;

    if-eqz v1, :cond_27

    .line 338
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wz:Lcom/android/common/ui/O;

    invoke-interface {v1, v0}, Lcom/android/common/ui/O;->Bk(Landroid/graphics/Rect;)V

    .line 334
    :cond_27
    return-void
.end method

.method private AX(III)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 414
    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 417
    sparse-switch p1, :sswitch_data_f2

    move v1, v0

    .line 455
    :goto_f
    iget-boolean v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->ws:Z

    if-eqz v2, :cond_da

    .line 456
    iget-object v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/android/common/ui/RotateLayout;->setX(F)V

    .line 457
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateLayout;->setY(F)V

    .line 413
    :goto_1f
    return-void

    .line 419
    :sswitch_20
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wC:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wJ:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wM:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 420
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wC:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wJ:I

    add-int/2addr v1, v0

    .line 421
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wL:I

    iget v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    goto :goto_f

    .line 423
    :cond_3f
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wM:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wJ:I

    sub-int v1, v0, v1

    .line 424
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wL:I

    iget v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    goto :goto_f

    .line 428
    :sswitch_51
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wM:I

    sub-int v0, p3, v0

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wJ:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_6b

    .line 429
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wL:I

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p2, v0

    .line 430
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wJ:I

    sub-int v0, p3, v0

    iget v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wM:I

    sub-int/2addr v0, v2

    goto :goto_f

    .line 432
    :cond_6b
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wL:I

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p2, v0

    .line 433
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    add-int/2addr v0, p3

    iget v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wJ:I

    add-int/2addr v0, v2

    goto :goto_f

    .line 437
    :sswitch_7b
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wJ:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wM:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_97

    .line 438
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wM:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wJ:I

    sub-int v1, v0, v1

    .line 439
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wL:I

    iget v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    goto/16 :goto_f

    .line 441
    :cond_97
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wC:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wJ:I

    add-int/2addr v1, v0

    .line 442
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wL:I

    iget v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    goto/16 :goto_f

    .line 446
    :sswitch_a8
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wJ:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wM:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_c8

    .line 447
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wL:I

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p2, v0

    .line 448
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    add-int/2addr v0, p3

    iget v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wJ:I

    add-int/2addr v0, v2

    goto/16 :goto_f

    .line 450
    :cond_c8
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wL:I

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p2, v0

    .line 451
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wJ:I

    sub-int v0, p3, v0

    iget v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wM:I

    sub-int/2addr v0, v2

    goto/16 :goto_f

    .line 459
    :cond_da
    iget-object v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v2}, Lcom/android/common/ui/RotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x118

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1f

    .line 417
    nop

    :sswitch_data_f2
    .sparse-switch
        0x0 -> :sswitch_20
        0x5a -> :sswitch_51
        0xb4 -> :sswitch_7b
        0x10e -> :sswitch_a8
    .end sparse-switch
.end method

.method private AY()V
    .registers 3

    .prologue
    .line 191
    const-string/jumbo v0, "BigApertureSettingUI"

    const-string/jumbo v1, "txh removeApertureLayout"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_1b

    .line 193
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p0, v0}, Lcom/android/common/ui/BigApertureSettingUI;->removeView(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p0, v0}, Lcom/android/common/ui/BigApertureSettingUI;->removeView(Landroid/view/View;)V

    .line 196
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->ww:Z

    .line 190
    return-void
.end method

.method private AZ(II)V
    .registers 8

    .prologue
    const/4 v2, -0x2

    .line 127
    invoke-direct {p0}, Lcom/android/common/ui/BigApertureSettingUI;->AR()V

    .line 128
    invoke-direct {p0}, Lcom/android/common/ui/BigApertureSettingUI;->Ba()V

    .line 130
    iget-boolean v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->ww:Z

    if-nez v0, :cond_18

    .line 131
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p0, v0}, Lcom/android/common/ui/BigApertureSettingUI;->addView(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p0, v0}, Lcom/android/common/ui/BigApertureSettingUI;->addView(Landroid/view/View;)V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->ww:Z

    .line 139
    :cond_18
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_69

    .line 140
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    if-ltz p1, :cond_38

    if-gez p2, :cond_6a

    .line 146
    :cond_38
    invoke-direct {p0}, Lcom/android/common/ui/BigApertureSettingUI;->AP()Landroid/graphics/Point;

    move-result-object v0

    .line 147
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 148
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 155
    :goto_40
    iget v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wL:I

    iget v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 156
    iget v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->wI:I

    sparse-switch v3, :sswitch_data_d8

    .line 177
    :cond_4c
    :goto_4c
    iput v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wO:I

    .line 178
    iput v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wE:I

    .line 179
    iget-boolean v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->ws:Z

    if-eqz v2, :cond_c1

    .line 180
    iget-object v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/android/common/ui/RotateLayout;->setX(F)V

    .line 181
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateLayout;->setY(F)V

    .line 186
    :goto_60
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wI:I

    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wE:I

    iget v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wO:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/common/ui/BigApertureSettingUI;->AX(III)V

    .line 126
    :cond_69
    return-void

    .line 150
    :cond_6a
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wC:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wv:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wv:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->wC:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoS(III)I

    move-result v1

    .line 151
    iget v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget-object v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wv:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->wv:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    sub-int/2addr v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/common/h;->aoS(III)I

    move-result v0

    goto :goto_40

    .line 159
    :sswitch_95
    if-ge v0, v2, :cond_98

    move v0, v2

    .line 162
    :cond_98
    iget v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    if-le v3, v4, :cond_4c

    .line 163
    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wB:I

    sub-int/2addr v0, v2

    goto :goto_4c

    .line 168
    :sswitch_ab
    if-ge v1, v2, :cond_ae

    move v1, v2

    .line 171
    :cond_ae
    iget v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->wC:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    if-le v3, v4, :cond_4c

    .line 172
    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wC:I

    sub-int/2addr v1, v2

    goto :goto_4c

    .line 183
    :cond_c1
    iget-object v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v2}, Lcom/android/common/ui/RotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x118

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_60

    .line 156
    nop

    :sswitch_data_d8
    .sparse-switch
        0x0 -> :sswitch_95
        0x5a -> :sswitch_ab
        0xb4 -> :sswitch_95
        0x10e -> :sswitch_ab
    .end sparse-switch
.end method

.method private Ba()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 211
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wv:Landroid/graphics/Rect;

    .line 210
    return-void
.end method

.method static synthetic Bb(Lcom/android/common/ui/BigApertureSettingUI;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->ww:Z

    return v0
.end method

.method static synthetic Bc(Lcom/android/common/ui/BigApertureSettingUI;)Lcom/android/common/ui/O;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wz:Lcom/android/common/ui/O;

    return-object v0
.end method

.method static synthetic Bd(Lcom/android/common/ui/BigApertureSettingUI;)[I
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wR:[I

    return-object v0
.end method

.method static synthetic Be(Lcom/android/common/ui/BigApertureSettingUI;)[F
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wS:[F

    return-object v0
.end method

.method static synthetic Bf(Lcom/android/common/ui/BigApertureSettingUI;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/ui/BigApertureSettingUI;->ws:Z

    return p1
.end method

.method static synthetic Bg(Lcom/android/common/ui/BigApertureSettingUI;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wH:Z

    return p1
.end method

.method static synthetic Bh(Lcom/android/common/ui/BigApertureSettingUI;FF)[I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/BigApertureSettingUI;->AQ(FF)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic Bi(Lcom/android/common/ui/BigApertureSettingUI;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ui/BigApertureSettingUI;->AV()V

    return-void
.end method

.method static synthetic Bj(Lcom/android/common/ui/BigApertureSettingUI;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/BigApertureSettingUI;->AZ(II)V

    return-void
.end method


# virtual methods
.method public AK(Z)V
    .registers 3

    .prologue
    .line 79
    if-eqz p1, :cond_18

    .line 80
    iget-boolean v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->ww:Z

    if-nez v0, :cond_13

    .line 81
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p0, v0}, Lcom/android/common/ui/BigApertureSettingUI;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p0, v0}, Lcom/android/common/ui/BigApertureSettingUI;->addView(Landroid/view/View;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->ww:Z

    .line 85
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/BigApertureSettingUI;->setVisibility(I)V

    .line 78
    :goto_17
    return-void

    .line 88
    :cond_18
    invoke-direct {p0}, Lcom/android/common/ui/BigApertureSettingUI;->AY()V

    .line 89
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/common/ui/BigApertureSettingUI;->setVisibility(I)V

    goto :goto_17
.end method

.method public AL(FFF)V
    .registers 4

    .prologue
    .line 69
    iput p1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wD:F

    .line 70
    iput p2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wG:F

    .line 71
    iput p3, p0, Lcom/android/common/ui/BigApertureSettingUI;->wF:F

    .line 68
    return-void
.end method

.method public AM(Lcom/android/common/ui/O;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wz:Lcom/android/common/ui/O;

    .line 64
    return-void
.end method

.method public AN(FF)Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wS:[F

    aput p1, v0, v3

    .line 247
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wS:[F

    aput p2, v0, v4

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/BigApertureSettingUI;->AQ(FF)[I

    move-result-object v0

    .line 249
    if-eqz v0, :cond_3b

    .line 250
    iput-boolean v3, p0, Lcom/android/common/ui/BigApertureSettingUI;->ws:Z

    .line 251
    aget v1, v0, v3

    aget v2, v0, v4

    invoke-direct {p0, v1, v2}, Lcom/android/common/ui/BigApertureSettingUI;->AZ(II)V

    .line 252
    iget-boolean v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->ww:Z

    if-nez v1, :cond_29

    .line 253
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p0, v1}, Lcom/android/common/ui/BigApertureSettingUI;->addView(Landroid/view/View;)V

    .line 254
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p0, v1}, Lcom/android/common/ui/BigApertureSettingUI;->addView(Landroid/view/View;)V

    .line 255
    iput-boolean v4, p0, Lcom/android/common/ui/BigApertureSettingUI;->ww:Z

    .line 257
    :cond_29
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wR:[I

    aget v2, v0, v3

    aput v2, v1, v3

    .line 258
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wR:[I

    aget v0, v0, v4

    aput v0, v1, v4

    .line 259
    iput-boolean v4, p0, Lcom/android/common/ui/BigApertureSettingUI;->wH:Z

    .line 260
    invoke-direct {p0}, Lcom/android/common/ui/BigApertureSettingUI;->AV()V

    .line 261
    return v4

    .line 263
    :cond_3b
    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getWidth()I

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {p0}, Lcom/android/common/ui/BigApertureSettingUI;->getHeight()I

    move-result v0

    if-nez v0, :cond_4f

    .line 264
    new-instance v0, Lcom/android/common/ui/aZ;

    invoke-direct {v0, p0}, Lcom/android/common/ui/aZ;-><init>(Lcom/android/common/ui/BigApertureSettingUI;)V

    invoke-virtual {p0, v0}, Lcom/android/common/ui/BigApertureSettingUI;->post(Ljava/lang/Runnable;)Z

    .line 282
    :cond_4f
    return v3
.end method

.method public AW(IZ)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 404
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 405
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->ws:Z

    .line 406
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wx:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v1, v0, v2}, Lcom/android/common/ui/RotateLayout;->vn(IZ)V

    .line 407
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wA:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v1, v0, v2}, Lcom/android/common/ui/RotateLayout;->vn(IZ)V

    .line 408
    iput v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wI:I

    .line 409
    iget v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wE:I

    iget v2, p0, Lcom/android/common/ui/BigApertureSettingUI;->wO:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/common/ui/BigApertureSettingUI;->AX(III)V

    .line 410
    iget-object v1, p0, Lcom/android/common/ui/BigApertureSettingUI;->wK:Lcom/android/common/ui/VerticalSeekBar;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/VerticalSeekBar;->setOrientation(I)V

    .line 403
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 369
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 373
    packed-switch v0, :pswitch_data_42

    .line 395
    :cond_17
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 375
    :pswitch_1c
    invoke-direct {p0, p1}, Lcom/android/common/ui/BigApertureSettingUI;->AS(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 376
    return v1

    .line 377
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/common/ui/BigApertureSettingUI;->AT(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 378
    return v1

    .line 383
    :pswitch_2a
    invoke-direct {p0}, Lcom/android/common/ui/BigApertureSettingUI;->AV()V

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wQ:Z

    .line 385
    return v1

    .line 387
    :pswitch_31
    iget-boolean v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wQ:Z

    if-eqz v0, :cond_3b

    .line 388
    iget-object v0, p0, Lcom/android/common/ui/BigApertureSettingUI;->wK:Lcom/android/common/ui/VerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/VerticalSeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 389
    return v1

    .line 391
    :cond_3b
    invoke-direct {p0, p1}, Lcom/android/common/ui/BigApertureSettingUI;->AU(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 392
    return v1

    .line 373
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2a
        :pswitch_31
        :pswitch_2a
    .end packed-switch
.end method

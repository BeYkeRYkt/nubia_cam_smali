.class public Lcom/android/intervalometer/c;
.super Lcom/android/common/ui/d;
.source "SourceFile"


# instance fields
.field private aPZ:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 5

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/common/ui/d;-><init>(Lcom/android/common/appService/W;)V

    .line 15
    const/16 v0, 0x3d

    iput v0, p0, Lcom/android/intervalometer/c;->aPZ:I

    .line 18
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 19
    const-string/jumbo v1, "pref_camera_intervalometer_interval"

    iput-object v1, p0, Lcom/android/intervalometer/c;->oV:Ljava/lang/String;

    .line 20
    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/intervalometer/c;->oP:I

    .line 21
    const v1, 0x7f0a02eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/intervalometer/c;->pj:Ljava/lang/String;

    .line 22
    const v1, 0x7f0200f7

    iput v1, p0, Lcom/android/intervalometer/c;->pd:I

    .line 23
    const v1, 0x7f0200f9

    iput v1, p0, Lcom/android/intervalometer/c;->pg:I

    .line 24
    const v1, 0x7f0200f8

    iput v1, p0, Lcom/android/intervalometer/c;->pf:I

    .line 25
    invoke-direct {p0, v0}, Lcom/android/intervalometer/c;->bgE(Landroid/content/res/Resources;)V

    .line 26
    iget-object v0, p0, Lcom/android/intervalometer/c;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/intervalometer/c;->oV:Ljava/lang/String;

    const/16 v2, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getInt(Ljava/lang/String;I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/intervalometer/c;->oU:I

    .line 16
    return-void
.end method

.method private bgE(Landroid/content/res/Resources;)V
    .registers 6

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    iget v1, p0, Lcom/android/intervalometer/c;->aPZ:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/intervalometer/c;->oQ:[Ljava/lang/String;

    .line 31
    iget v1, p0, Lcom/android/intervalometer/c;->aPZ:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/intervalometer/c;->oR:[Ljava/lang/String;

    .line 32
    :goto_d
    iget v1, p0, Lcom/android/intervalometer/c;->aPZ:I

    if-ge v0, v1, :cond_44

    .line 33
    iget-object v1, p0, Lcom/android/intervalometer/c;->oQ:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 34
    iget-object v1, p0, Lcom/android/intervalometer/c;->oR:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 28
    :cond_44
    return-void
.end method

.method private bgF(Landroid/graphics/Canvas;)V
    .registers 12

    .prologue
    const/high16 v9, 0x437f0000    # 255.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v4, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 51
    iget-object v1, p0, Lcom/android/intervalometer/c;->oL:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/android/intervalometer/c;->oM:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 52
    iget-object v0, p0, Lcom/android/intervalometer/c;->oN:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/intervalometer/c;->oI:F

    const/high16 v2, 0x42960000    # 75.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    iget-object v1, p0, Lcom/android/intervalometer/c;->oL:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v0, v0, v6

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v0, v2

    neg-float v2, v0

    .line 54
    iget-object v0, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v0, v0, v6

    mul-float v3, v0, v8

    iget-object v5, p0, Lcom/android/intervalometer/c;->oN:Landroid/graphics/Paint;

    move-object v0, p1

    .line 53
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/intervalometer/c;->up(Landroid/graphics/Canvas;)V

    .line 56
    iget-object v0, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v0, v0, v7

    iget-object v1, p0, Lcom/android/intervalometer/c;->oO:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    sub-float/2addr v0, v1

    .line 57
    sget v1, Lcom/android/intervalometer/c;->os:I

    int-to-float v1, v1

    .line 56
    sub-float/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v1, v1, v6

    neg-float v1, v1

    iget-object v2, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v2, v2, v4

    .line 60
    iget-object v3, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v3, v3, v7

    .line 59
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 61
    iget v1, p0, Lcom/android/intervalometer/c;->oU:I

    if-nez v1, :cond_a5

    iget-boolean v1, p0, Lcom/android/intervalometer/c;->oF:Z

    if-eqz v1, :cond_a5

    .line 62
    iget-object v1, p0, Lcom/android/intervalometer/c;->ph:Landroid/graphics/Paint;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 63
    const-string/jumbo v1, " -"

    iget-object v2, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/intervalometer/c;->ph:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 70
    :cond_72
    :goto_72
    iget-object v1, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v1, v1, v6

    mul-float/2addr v1, v8

    iget-object v2, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v2, v2, v4

    .line 71
    iget-object v3, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v3, v3, v7

    .line 70
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 72
    iget v1, p0, Lcom/android/intervalometer/c;->oU:I

    iget v2, p0, Lcom/android/intervalometer/c;->aPZ:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_bf

    iget-boolean v1, p0, Lcom/android/intervalometer/c;->oF:Z

    if-eqz v1, :cond_bf

    .line 73
    iget-object v1, p0, Lcom/android/intervalometer/c;->ph:Landroid/graphics/Paint;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    const-string/jumbo v1, "+ "

    iget-object v2, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/intervalometer/c;->ph:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 80
    :cond_a1
    :goto_a1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 49
    return-void

    .line 64
    :cond_a5
    iget v1, p0, Lcom/android/intervalometer/c;->oU:I

    if-eqz v1, :cond_72

    .line 65
    iget-object v1, p0, Lcom/android/intervalometer/c;->ph:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/intervalometer/c;->oI:F

    mul-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 66
    const-string/jumbo v1, " -"

    iget-object v2, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/intervalometer/c;->ph:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_72

    .line 75
    :cond_bf
    iget v1, p0, Lcom/android/intervalometer/c;->oU:I

    iget v2, p0, Lcom/android/intervalometer/c;->aPZ:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_a1

    .line 76
    iget-object v1, p0, Lcom/android/intervalometer/c;->ph:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/intervalometer/c;->oI:F

    mul-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    const-string/jumbo v1, "+ "

    iget-object v2, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/intervalometer/c;->ph:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_a1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/common/ui/d;->draw(Landroid/graphics/Canvas;)V

    .line 39
    return-void
.end method

.method public uN(FF)Z
    .registers 7

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    iget v0, p0, Lcom/android/intervalometer/c;->pl:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2d

    .line 105
    iget-object v0, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v0, v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/android/intervalometer/c;->oA:F

    .line 111
    :goto_10
    invoke-virtual {p0}, Lcom/android/intervalometer/c;->ux()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/intervalometer/c;->uY(I)Z

    .line 112
    iput-boolean v3, p0, Lcom/android/intervalometer/c;->oF:Z

    .line 113
    iget-boolean v0, p0, Lcom/android/intervalometer/c;->oC:Z

    if-eqz v0, :cond_24

    .line 114
    iget-object v0, p0, Lcom/android/intervalometer/c;->oM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    :cond_24
    invoke-virtual {p0, v3}, Lcom/android/intervalometer/c;->un(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/intervalometer/c;->oX:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 117
    return v2

    .line 106
    :cond_2d
    iget v0, p0, Lcom/android/intervalometer/c;->pk:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3a

    .line 107
    iget-object v0, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v0, v0, v1

    iput v0, p0, Lcom/android/intervalometer/c;->oA:F

    goto :goto_10

    .line 109
    :cond_3a
    iget-object v0, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v0, v0, v2

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/intervalometer/c;->uw(F)F

    move-result v0

    iput v0, p0, Lcom/android/intervalometer/c;->oA:F

    goto :goto_10
.end method

.method public uP(FF)Z
    .registers 6

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 88
    iget v0, p0, Lcom/android/intervalometer/c;->pl:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_24

    .line 89
    iget-object v0, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v0, v0, v2

    neg-float v0, v0

    iput v0, p0, Lcom/android/intervalometer/c;->oA:F

    .line 95
    :goto_f
    invoke-virtual {p0}, Lcom/android/intervalometer/c;->ux()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/intervalometer/c;->uY(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 96
    iget-object v0, p0, Lcom/android/intervalometer/c;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qf()V

    .line 98
    :cond_1e
    iget-object v0, p0, Lcom/android/intervalometer/c;->oX:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 99
    return v1

    .line 90
    :cond_24
    iget v0, p0, Lcom/android/intervalometer/c;->pk:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_31

    .line 91
    iget-object v0, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v0, v0, v2

    iput v0, p0, Lcom/android/intervalometer/c;->oA:F

    goto :goto_f

    .line 93
    :cond_31
    iget-object v0, p0, Lcom/android/intervalometer/c;->oO:[F

    aget v0, v0, v1

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/intervalometer/c;->uw(F)F

    move-result v0

    iput v0, p0, Lcom/android/intervalometer/c;->oA:F

    goto :goto_f
.end method

.method public uS(FF)Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-virtual {p0, v3}, Lcom/android/intervalometer/c;->un(Z)V

    .line 123
    iget v0, p0, Lcom/android/intervalometer/c;->oU:I

    sget-object v1, Lcom/android/common/ui/RenderPreference$ActionEvent;->pu:Lcom/android/common/ui/RenderPreference$ActionEvent;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/intervalometer/c;->vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V

    .line 124
    iput-boolean v3, p0, Lcom/android/intervalometer/c;->oF:Z

    .line 125
    iget-object v0, p0, Lcom/android/intervalometer/c;->oO:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    neg-float v0, v0

    iget v1, p0, Lcom/android/intervalometer/c;->oU:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/intervalometer/c;->pp:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/intervalometer/c;->oA:F

    .line 126
    iget-boolean v0, p0, Lcom/android/intervalometer/c;->oC:Z

    if-eqz v0, :cond_28

    .line 127
    iget-object v0, p0, Lcom/android/intervalometer/c;->oM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    :cond_28
    iget-object v0, p0, Lcom/android/intervalometer/c;->oX:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 129
    return v3
.end method

.method protected uo(Landroid/graphics/Canvas;Z)V
    .registers 5

    .prologue
    .line 45
    iget v0, p0, Lcom/android/intervalometer/c;->oI:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/intervalometer/c;->vf(I)V

    .line 46
    invoke-direct {p0, p1}, Lcom/android/intervalometer/c;->bgF(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/intervalometer/c;->us(Landroid/graphics/Canvas;)V

    .line 44
    return-void
.end method

.method protected vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V
    .registers 6

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/intervalometer/c;->oV:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/intervalometer/c;->oR:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/intervalometer/c;->uM(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

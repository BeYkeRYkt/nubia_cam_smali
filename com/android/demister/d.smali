.class public Lcom/android/demister/d;
.super Lcom/android/common/ui/d;
.source "SourceFile"


# instance fields
.field private apY:Lcom/android/common/appService/W;

.field private apZ:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 6

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/common/ui/d;-><init>(Lcom/android/common/appService/W;)V

    .line 18
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/demister/d;->apZ:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/demister/d;->apY:Lcom/android/common/appService/W;

    .line 23
    iput-object p1, p0, Lcom/android/demister/d;->apY:Lcom/android/common/appService/W;

    .line 24
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 25
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/demister/d;->oP:I

    .line 26
    invoke-direct {p0}, Lcom/android/demister/d;->aBR()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_demister_value"

    const-string/jumbo v3, "50"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/demister/d;->oU:I

    .line 27
    const v1, 0x7f0a044c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/demister/d;->pj:Ljava/lang/String;

    .line 28
    const v1, 0x7f0200f7

    iput v1, p0, Lcom/android/demister/d;->pd:I

    .line 29
    const v1, 0x7f0200f9

    iput v1, p0, Lcom/android/demister/d;->pg:I

    .line 30
    const v1, 0x7f0200f8

    iput v1, p0, Lcom/android/demister/d;->pf:I

    .line 31
    invoke-direct {p0, v0}, Lcom/android/demister/d;->aBP(Landroid/content/res/Resources;)V

    .line 21
    return-void
.end method

.method private aBP(Landroid/content/res/Resources;)V
    .registers 6

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    iget v1, p0, Lcom/android/demister/d;->apZ:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/demister/d;->oQ:[Ljava/lang/String;

    .line 37
    iget v1, p0, Lcom/android/demister/d;->apZ:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/demister/d;->oR:[Ljava/lang/String;

    .line 38
    :goto_d
    iget v1, p0, Lcom/android/demister/d;->apZ:I

    if-ge v0, v1, :cond_44

    .line 39
    iget-object v1, p0, Lcom/android/demister/d;->oQ:[Ljava/lang/String;

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

    .line 40
    iget-object v1, p0, Lcom/android/demister/d;->oR:[Ljava/lang/String;

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

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 34
    :cond_44
    return-void
.end method

.method private aBQ(Landroid/graphics/Canvas;)V
    .registers 12

    .prologue
    const/16 v9, 0x50

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v4, 0x0

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 54
    iget-object v1, p0, Lcom/android/demister/d;->oL:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/android/demister/d;->oM:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 55
    iget-object v0, p0, Lcom/android/demister/d;->oN:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/demister/d;->oI:F

    const/high16 v2, 0x42960000    # 75.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    iget-object v1, p0, Lcom/android/demister/d;->oL:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/demister/d;->oO:[F

    aget v0, v0, v6

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v0, v2

    neg-float v2, v0

    .line 57
    iget-object v0, p0, Lcom/android/demister/d;->oO:[F

    aget v0, v0, v6

    mul-float v3, v0, v8

    iget-object v5, p0, Lcom/android/demister/d;->oN:Landroid/graphics/Paint;

    move-object v0, p1

    .line 56
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/demister/d;->up(Landroid/graphics/Canvas;)V

    .line 59
    iget-object v0, p0, Lcom/android/demister/d;->oO:[F

    aget v0, v0, v7

    iget-object v1, p0, Lcom/android/demister/d;->oO:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    sub-float/2addr v0, v1

    .line 60
    sget v1, Lcom/android/demister/d;->os:I

    int-to-float v1, v1

    .line 59
    sub-float/2addr v0, v1

    .line 62
    iget-object v1, p0, Lcom/android/demister/d;->oO:[F

    aget v1, v1, v6

    neg-float v1, v1

    iget-object v2, p0, Lcom/android/demister/d;->oO:[F

    aget v2, v2, v4

    .line 63
    iget-object v3, p0, Lcom/android/demister/d;->oO:[F

    aget v3, v3, v7

    .line 62
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 64
    iget v1, p0, Lcom/android/demister/d;->oU:I

    if-nez v1, :cond_a1

    iget-boolean v1, p0, Lcom/android/demister/d;->oF:Z

    if-eqz v1, :cond_a1

    .line 65
    iget-object v1, p0, Lcom/android/demister/d;->ph:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 66
    const-string/jumbo v1, " -"

    iget-object v2, p0, Lcom/android/demister/d;->oO:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/demister/d;->ph:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 73
    :cond_70
    :goto_70
    iget-object v1, p0, Lcom/android/demister/d;->oO:[F

    aget v1, v1, v6

    mul-float/2addr v1, v8

    iget-object v2, p0, Lcom/android/demister/d;->oO:[F

    aget v2, v2, v4

    .line 74
    iget-object v3, p0, Lcom/android/demister/d;->oO:[F

    aget v3, v3, v7

    .line 73
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 75
    iget v1, p0, Lcom/android/demister/d;->oU:I

    iget v2, p0, Lcom/android/demister/d;->apZ:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_bd

    iget-boolean v1, p0, Lcom/android/demister/d;->oF:Z

    if-eqz v1, :cond_bd

    .line 76
    iget-object v1, p0, Lcom/android/demister/d;->ph:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    const-string/jumbo v1, "+ "

    iget-object v2, p0, Lcom/android/demister/d;->oO:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/demister/d;->ph:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 83
    :cond_9d
    :goto_9d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 52
    return-void

    .line 67
    :cond_a1
    iget v1, p0, Lcom/android/demister/d;->oU:I

    if-eqz v1, :cond_70

    .line 68
    iget-object v1, p0, Lcom/android/demister/d;->ph:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/demister/d;->oI:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    const-string/jumbo v1, " -"

    iget-object v2, p0, Lcom/android/demister/d;->oO:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/demister/d;->ph:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_70

    .line 78
    :cond_bd
    iget v1, p0, Lcom/android/demister/d;->oU:I

    iget v2, p0, Lcom/android/demister/d;->apZ:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_9d

    .line 79
    iget-object v1, p0, Lcom/android/demister/d;->ph:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 80
    const-string/jumbo v1, "+ "

    iget-object v2, p0, Lcom/android/demister/d;->oO:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/demister/d;->ph:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9d
.end method

.method private aBR()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/demister/d;->apY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public uN(FF)Z
    .registers 7

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    iget v0, p0, Lcom/android/demister/d;->pl:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2d

    .line 116
    iget-object v0, p0, Lcom/android/demister/d;->oO:[F

    aget v0, v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/android/demister/d;->oA:F

    .line 122
    :goto_10
    invoke-virtual {p0}, Lcom/android/demister/d;->ux()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/demister/d;->uY(I)Z

    .line 123
    iput-boolean v3, p0, Lcom/android/demister/d;->oF:Z

    .line 124
    iget-boolean v0, p0, Lcom/android/demister/d;->oC:Z

    if-eqz v0, :cond_24

    .line 125
    iget-object v0, p0, Lcom/android/demister/d;->oM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    :cond_24
    invoke-virtual {p0, v3}, Lcom/android/demister/d;->un(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/demister/d;->oX:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 128
    return v2

    .line 117
    :cond_2d
    iget v0, p0, Lcom/android/demister/d;->pk:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3a

    .line 118
    iget-object v0, p0, Lcom/android/demister/d;->oO:[F

    aget v0, v0, v1

    iput v0, p0, Lcom/android/demister/d;->oA:F

    goto :goto_10

    .line 120
    :cond_3a
    iget-object v0, p0, Lcom/android/demister/d;->oO:[F

    aget v0, v0, v2

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/demister/d;->uw(F)F

    move-result v0

    iput v0, p0, Lcom/android/demister/d;->oA:F

    goto :goto_10
.end method

.method public uP(FF)Z
    .registers 6

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 98
    iget v0, p0, Lcom/android/demister/d;->pl:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2d

    .line 99
    iget-object v0, p0, Lcom/android/demister/d;->oO:[F

    aget v0, v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/android/demister/d;->oA:F

    .line 105
    :goto_f
    invoke-virtual {p0}, Lcom/android/demister/d;->ux()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/demister/d;->uY(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 106
    iget-object v0, p0, Lcom/android/demister/d;->apY:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qf()V

    .line 108
    :cond_1e
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "onMove"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/demister/d;->oX:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 110
    return v2

    .line 100
    :cond_2d
    iget v0, p0, Lcom/android/demister/d;->pk:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3a

    .line 101
    iget-object v0, p0, Lcom/android/demister/d;->oO:[F

    aget v0, v0, v1

    iput v0, p0, Lcom/android/demister/d;->oA:F

    goto :goto_f

    .line 103
    :cond_3a
    iget-object v0, p0, Lcom/android/demister/d;->oO:[F

    aget v0, v0, v2

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/demister/d;->uw(F)F

    move-result v0

    iput v0, p0, Lcom/android/demister/d;->oA:F

    goto :goto_f
.end method

.method public uS(FF)Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-virtual {p0, v3}, Lcom/android/demister/d;->un(Z)V

    .line 134
    iget v0, p0, Lcom/android/demister/d;->oU:I

    sget-object v1, Lcom/android/common/ui/RenderPreference$ActionEvent;->pu:Lcom/android/common/ui/RenderPreference$ActionEvent;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/demister/d;->vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V

    .line 135
    iput-boolean v3, p0, Lcom/android/demister/d;->oF:Z

    .line 136
    iget-object v0, p0, Lcom/android/demister/d;->oO:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    neg-float v0, v0

    iget v1, p0, Lcom/android/demister/d;->oU:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/demister/d;->pp:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/demister/d;->oA:F

    .line 137
    iget-boolean v0, p0, Lcom/android/demister/d;->oC:Z

    if-eqz v0, :cond_28

    .line 138
    iget-object v0, p0, Lcom/android/demister/d;->oM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    :cond_28
    iget-object v0, p0, Lcom/android/demister/d;->oX:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 140
    return v3
.end method

.method protected uo(Landroid/graphics/Canvas;Z)V
    .registers 5

    .prologue
    .line 47
    iget v0, p0, Lcom/android/demister/d;->oI:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/demister/d;->vf(I)V

    .line 48
    invoke-direct {p0, p1}, Lcom/android/demister/d;->aBQ(Landroid/graphics/Canvas;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/demister/d;->us(Landroid/graphics/Canvas;)V

    .line 46
    return-void
.end method

.method protected vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V
    .registers 7

    .prologue
    .line 88
    const-string/jumbo v0, "1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IntervalRender value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/demister/d;->oR:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/android/demister/d;->aBR()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    const-string/jumbo v1, "pref_camera_demister_value"

    iget-object v2, p0, Lcom/android/demister/d;->oR:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    invoke-virtual {p0}, Lcom/android/demister/d;->uU()V

    .line 87
    return-void
.end method

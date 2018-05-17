.class public Lcom/android/common/ui/k;
.super Lcom/android/common/ui/d;
.source "SourceFile"


# instance fields
.field private qb:I

.field qc:Z

.field private qd:Ljava/lang/String;

.field private qe:[I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/common/ui/d;-><init>(Lcom/android/common/appService/W;)V

    .line 48
    const/16 v0, 0x99

    iput v0, p0, Lcom/android/common/ui/k;->qb:I

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/common/ui/k;->qe:[I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/k;->qc:Z

    .line 17
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 18
    const-string/jumbo v1, "b_shutter"

    iput-object v1, p0, Lcom/android/common/ui/k;->oV:Ljava/lang/String;

    .line 19
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/common/ui/k;->qd:Ljava/lang/String;

    .line 20
    const v1, 0x7f0a02c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/k;->pj:Ljava/lang/String;

    .line 21
    const v0, 0x7f0200cd

    iput v0, p0, Lcom/android/common/ui/k;->pd:I

    .line 22
    const v0, 0x7f02012a

    iput v0, p0, Lcom/android/common/ui/k;->pg:I

    .line 23
    const v0, 0x7f0200ce

    iput v0, p0, Lcom/android/common/ui/k;->pf:I

    .line 15
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/android/common/ui/k;->uH()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 40
    iget-object v0, p0, Lcom/android/common/ui/k;->oz:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 41
    iget-object v1, p0, Lcom/android/common/ui/k;->ph:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/common/ui/k;->qb:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/common/ui/k;->pj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/ui/k;->uA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/k;->qe:[I

    aget v1, v1, v3

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/common/ui/k;->qe:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/common/ui/k;->ph:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 26
    :cond_4b
    :goto_4b
    return-void

    .line 43
    :cond_4c
    iget-boolean v0, p0, Lcom/android/common/ui/k;->oG:Z

    if-eqz v0, :cond_4b

    .line 44
    iget-object v0, p0, Lcom/android/common/ui/k;->ph:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/common/ui/k;->qb:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/common/ui/k;->pj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/ui/k;->uA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/k;->qe:[I

    aget v1, v1, v3

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/common/ui/k;->qe:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/common/ui/k;->ph:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4b
.end method

.method public uA()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/common/ui/k;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uB()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/common/ui/k;->pj:Ljava/lang/String;

    return-object v0
.end method

.method public uE(FFFF)V
    .registers 5

    .prologue
    .line 103
    return-void
.end method

.method public uG()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/common/ui/k;->qc:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public uK(IIII)V
    .registers 11

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/common/ui/d;->uK(IIII)V

    .line 72
    sget v0, Lcom/android/common/ui/HighSettingLayout;->xH:I

    sub-int v0, p4, v0

    .line 73
    iget-object v1, p0, Lcom/android/common/ui/k;->pa:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/android/common/ui/HighSettingLayout;->xI:I

    .line 74
    sget v3, Lcom/android/common/ui/HighSettingLayout;->xI:I

    sub-int v3, v0, v3

    .line 75
    sget v4, Lcom/android/common/ui/HighSettingLayout;->xI:I

    mul-int/lit8 v4, v4, 0x3

    .line 76
    sget v5, Lcom/android/common/ui/HighSettingLayout;->xI:I

    add-int/2addr v5, v0

    .line 73
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    iget-object v1, p0, Lcom/android/common/ui/k;->pe:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/android/common/ui/HighSettingLayout;->xI:I

    .line 78
    sget v3, Lcom/android/common/ui/HighSettingLayout;->xI:I

    sub-int v3, v0, v3

    .line 79
    sget v4, Lcom/android/common/ui/HighSettingLayout;->xI:I

    mul-int/lit8 v4, v4, 0x3

    .line 80
    sget v5, Lcom/android/common/ui/HighSettingLayout;->xI:I

    add-int/2addr v0, v5

    .line 77
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    iget-object v0, p0, Lcom/android/common/ui/k;->qe:[I

    sub-int v1, p3, p1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 82
    iget-object v0, p0, Lcom/android/common/ui/k;->qe:[I

    add-int/lit8 v1, p4, -0x78

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 69
    return-void
.end method

.method public uL(Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/common/ui/k;->oD:Z

    if-nez v0, :cond_17

    .line 142
    iget v0, p0, Lcom/android/common/ui/k;->pd:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/k;->pa:Landroid/graphics/drawable/Drawable;

    .line 143
    iget v0, p0, Lcom/android/common/ui/k;->pf:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/k;->pe:Landroid/graphics/drawable/Drawable;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/k;->oD:Z

    .line 140
    :cond_17
    return-void
.end method

.method public uN(FF)Z
    .registers 4

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public uP(FF)Z
    .registers 4

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public uS(FF)Z
    .registers 4

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public uT()Z
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public uV(Z)V
    .registers 4

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/k;->qc:Z

    .line 133
    iget-object v0, p0, Lcom/android/common/ui/k;->oV:Ljava/lang/String;

    const-string/jumbo v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/k;->uM(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method protected uq(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 52
    iget-object v0, p0, Lcom/android/common/ui/k;->pm:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 53
    iget v1, p0, Lcom/android/common/ui/k;->oI:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/common/ui/k;->vf(I)V

    .line 54
    iget-boolean v1, p0, Lcom/android/common/ui/k;->qc:Z

    if-eqz v1, :cond_32

    .line 55
    iget-object v1, p0, Lcom/android/common/ui/k;->oO:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/common/ui/k;->oO:[F

    aget v2, v2, v4

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 56
    iget-object v0, p0, Lcom/android/common/ui/k;->pe:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 61
    :goto_2e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 50
    return-void

    .line 58
    :cond_32
    iget-object v1, p0, Lcom/android/common/ui/k;->oO:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/common/ui/k;->oO:[F

    aget v2, v2, v4

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 59
    iget-object v0, p0, Lcom/android/common/ui/k;->pa:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2e
.end method

.method protected vf(I)V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/common/ui/k;->pa:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 92
    iget-object v0, p0, Lcom/android/common/ui/k;->pe:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 90
    return-void
.end method

.method protected vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V
    .registers 4

    .prologue
    .line 86
    return-void
.end method

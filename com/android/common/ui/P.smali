.class public Lcom/android/common/ui/P;
.super Lcom/android/common/ui/d;
.source "SourceFile"


# instance fields
.field private wU:[I

.field private wV:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 11

    .prologue
    const/16 v8, 0x87

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 26
    invoke-direct {p0, p1}, Lcom/android/common/ui/d;-><init>(Lcom/android/common/appService/W;)V

    .line 27
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 28
    const-string/jumbo v1, "maf_key"

    iput-object v1, p0, Lcom/android/common/ui/P;->oV:Ljava/lang/String;

    .line 29
    const v1, 0x7f0a02c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/P;->pj:Ljava/lang/String;

    .line 31
    const v1, 0x7f02012b

    .line 32
    const v2, 0x7f02010a

    .line 33
    const v3, 0x7f02010b

    .line 34
    const v4, 0x7f020108

    .line 35
    const v5, 0x7f020109

    .line 31
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/P;->oS:[I

    .line 37
    sget-boolean v1, Lcom/android/common/ui/P;->oE:Z

    if-eqz v1, :cond_8a

    .line 38
    iget-object v1, p0, Lcom/android/common/ui/P;->oS:[I

    iget-object v2, p0, Lcom/android/common/ui/P;->oS:[I

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/common/ui/P;->uW([II)V

    .line 39
    iput v8, p0, Lcom/android/common/ui/P;->pn:I

    .line 40
    iput v7, p0, Lcom/android/common/ui/P;->oH:I

    .line 41
    iget v1, p0, Lcom/android/common/ui/P;->pn:I

    iput v1, p0, Lcom/android/common/ui/P;->oP:I

    .line 47
    :goto_46
    const v1, 0x7f0200f7

    iput v1, p0, Lcom/android/common/ui/P;->pd:I

    .line 48
    const v1, 0x7f0200f9

    iput v1, p0, Lcom/android/common/ui/P;->pg:I

    .line 50
    const v1, 0x7f0200f8

    iput v1, p0, Lcom/android/common/ui/P;->pf:I

    .line 51
    invoke-direct {p0, v0}, Lcom/android/common/ui/P;->Bn(Landroid/content/res/Resources;)V

    .line 52
    iget-object v0, p0, Lcom/android/common/ui/P;->oQ:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/common/ui/P;->wV:I

    .line 53
    invoke-direct {p0}, Lcom/android/common/ui/P;->Bp()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/P;->oV:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/P;->oU:I

    .line 55
    iget v0, p0, Lcom/android/common/ui/P;->oU:I

    if-ne v0, v6, :cond_71

    .line 56
    iget v0, p0, Lcom/android/common/ui/P;->pn:I

    iput v0, p0, Lcom/android/common/ui/P;->oU:I

    .line 58
    :cond_71
    iget-object v0, p0, Lcom/android/common/ui/P;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_89

    .line 59
    iget v0, p0, Lcom/android/common/ui/P;->oH:I

    iput v0, p0, Lcom/android/common/ui/P;->oP:I

    .line 60
    iget v0, p0, Lcom/android/common/ui/P;->oU:I

    iget v1, p0, Lcom/android/common/ui/P;->pn:I

    if-ne v0, v1, :cond_89

    iget v0, p0, Lcom/android/common/ui/P;->oP:I

    iput v0, p0, Lcom/android/common/ui/P;->oU:I

    .line 25
    :cond_89
    return-void

    .line 43
    :cond_8a
    iput v8, p0, Lcom/android/common/ui/P;->oH:I

    .line 44
    iput v7, p0, Lcom/android/common/ui/P;->pn:I

    .line 45
    iget v1, p0, Lcom/android/common/ui/P;->pn:I

    iput v1, p0, Lcom/android/common/ui/P;->oP:I

    goto :goto_46
.end method

.method private Bm(I)I
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/common/ui/P;->wU:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_11

    sget-boolean v0, Lcom/android/common/ui/P;->oE:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x65

    :goto_d
    return v0

    :cond_e
    const/16 v0, 0x22

    goto :goto_d

    .line 143
    :cond_11
    return p1
.end method

.method private Bn(Landroid/content/res/Resources;)V
    .registers 8

    .prologue
    const/16 v1, 0x11

    const/16 v5, 0x88

    const/4 v0, 0x0

    .line 65
    new-array v2, v5, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/common/ui/P;->oQ:[Ljava/lang/String;

    .line 66
    new-array v2, v5, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/common/ui/P;->oR:[Ljava/lang/String;

    .line 67
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/common/ui/P;->wU:[I

    move v2, v0

    .line 68
    :goto_12
    if-ge v2, v5, :cond_2b

    .line 69
    iget-object v3, p0, Lcom/android/common/ui/P;->wU:[I

    add-int/lit8 v4, v2, -0x22

    aput v4, v3, v2

    .line 70
    iget-object v3, p0, Lcom/android/common/ui/P;->wU:[I

    aget v3, v3, v2

    sget v4, Lcom/android/common/setting/j;->TQ:I

    if-le v3, v4, :cond_28

    iget-object v3, p0, Lcom/android/common/ui/P;->wU:[I

    sget v4, Lcom/android/common/setting/j;->TQ:I

    aput v4, v3, v2

    .line 68
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2b
    move v2, v0

    .line 73
    :goto_2c
    if-ge v2, v1, :cond_36

    .line 74
    iget-object v3, p0, Lcom/android/common/ui/P;->wU:[I

    const/4 v4, -0x1

    aput v4, v3, v2

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 76
    :cond_36
    :goto_36
    const/16 v2, 0x22

    if-ge v1, v2, :cond_41

    .line 77
    iget-object v2, p0, Lcom/android/common/ui/P;->wU:[I

    aput v0, v2, v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 79
    :cond_41
    sget-boolean v1, Lcom/android/common/ui/P;->oE:Z

    if-eqz v1, :cond_4d

    .line 80
    iget-object v1, p0, Lcom/android/common/ui/P;->wU:[I

    iget-object v2, p0, Lcom/android/common/ui/P;->wU:[I

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/common/ui/P;->uW([II)V

    .line 82
    :cond_4d
    const v1, 0x7f0a03b3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    :goto_54
    if-ge v0, v5, :cond_9c

    .line 84
    iget-object v2, p0, Lcom/android/common/ui/P;->wU:[I

    aget v2, v2, v0

    if-gez v2, :cond_7f

    .line 85
    iget-object v2, p0, Lcom/android/common/ui/P;->oQ:[Ljava/lang/String;

    aput-object v1, v2, v0

    .line 89
    :goto_60
    iget-object v2, p0, Lcom/android/common/ui/P;->oR:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/common/ui/P;->wU:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 87
    :cond_7f
    iget-object v2, p0, Lcom/android/common/ui/P;->oQ:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/common/ui/P;->wU:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_60

    .line 64
    :cond_9c
    return-void
.end method

.method private Bo(Landroid/graphics/Canvas;)V
    .registers 15

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x3

    const/4 v4, 0x0

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 147
    iget-object v1, p0, Lcom/android/common/ui/P;->oL:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/android/common/ui/P;->oM:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 148
    iget-object v0, p0, Lcom/android/common/ui/P;->oN:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/common/ui/P;->oI:F

    const/high16 v3, 0x42960000    # 75.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    iget-object v6, p0, Lcom/android/common/ui/P;->oL:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/common/ui/P;->oO:[F

    aget v0, v0, v11

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    neg-float v7, v0

    .line 150
    iget-object v0, p0, Lcom/android/common/ui/P;->oO:[F

    aget v0, v0, v11

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v8, v0, v1

    iget-object v10, p0, Lcom/android/common/ui/P;->oN:Landroid/graphics/Paint;

    move-object v5, p1

    move v9, v4

    .line 149
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/common/ui/P;->up(Landroid/graphics/Canvas;)V

    .line 152
    iget-object v0, p0, Lcom/android/common/ui/P;->oO:[F

    aget v0, v0, v11

    neg-float v0, v0

    iget-object v1, p0, Lcom/android/common/ui/P;->oO:[F

    aget v1, v1, v4

    .line 153
    iget-object v3, p0, Lcom/android/common/ui/P;->oO:[F

    aget v3, v3, v12

    .line 152
    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    move v0, v4

    .line 154
    :goto_49
    iget-object v1, p0, Lcom/android/common/ui/P;->oT:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_64

    .line 155
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/common/ui/P;->uu(Landroid/graphics/Canvas;FI)V

    .line 156
    iget v1, p0, Lcom/android/common/ui/P;->pp:F

    const/high16 v3, 0x42080000    # 34.0f

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/common/ui/P;->oO:[F

    aget v3, v3, v4

    .line 157
    iget-object v5, p0, Lcom/android/common/ui/P;->oO:[F

    aget v5, v5, v12

    .line 156
    invoke-virtual {p1, v1, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 159
    :cond_64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 145
    return-void
.end method

.method private Bp()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/common/ui/P;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public uR()V
    .registers 4

    .prologue
    .line 176
    invoke-super {p0}, Lcom/android/common/ui/d;->uR()V

    .line 177
    iget-object v0, p0, Lcom/android/common/ui/P;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/i;->eh(Z)V

    .line 178
    iget v0, p0, Lcom/android/common/ui/P;->oP:I

    iput v0, p0, Lcom/android/common/ui/P;->oU:I

    .line 179
    iget-object v0, p0, Lcom/android/common/ui/P;->oO:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    neg-float v0, v0

    iget v1, p0, Lcom/android/common/ui/P;->oU:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/common/ui/P;->pp:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/P;->oA:F

    .line 173
    return-void
.end method

.method public uS(FF)Z
    .registers 7

    .prologue
    const/16 v3, 0x66

    const/16 v2, 0x22

    .line 163
    sget-boolean v0, Lcom/android/common/ui/P;->oE:Z

    if-eqz v0, :cond_1e

    .line 164
    iget v0, p0, Lcom/android/common/ui/P;->oU:I

    const/16 v1, 0x77

    if-le v0, v1, :cond_17

    const/16 v0, 0x87

    iput v0, p0, Lcom/android/common/ui/P;->oU:I

    .line 170
    :cond_12
    :goto_12
    invoke-super {p0, p1, p2}, Lcom/android/common/ui/d;->uS(FF)Z

    move-result v0

    return v0

    .line 165
    :cond_17
    iget v0, p0, Lcom/android/common/ui/P;->oU:I

    if-le v0, v3, :cond_12

    iput v3, p0, Lcom/android/common/ui/P;->oU:I

    goto :goto_12

    .line 167
    :cond_1e
    iget v0, p0, Lcom/android/common/ui/P;->oU:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_28

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/ui/P;->oU:I

    goto :goto_12

    .line 168
    :cond_28
    iget v0, p0, Lcom/android/common/ui/P;->oU:I

    if-ge v0, v2, :cond_12

    iput v2, p0, Lcom/android/common/ui/P;->oU:I

    goto :goto_12
.end method

.method protected uY(I)Z
    .registers 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/common/ui/P;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_e

    invoke-direct {p0, p1}, Lcom/android/common/ui/P;->Bm(I)I

    move-result p1

    .line 135
    :cond_e
    const/4 v0, -0x1

    if-eq p1, v0, :cond_19

    iget v0, p0, Lcom/android/common/ui/P;->oU:I

    if-eq v0, p1, :cond_19

    .line 136
    iput p1, p0, Lcom/android/common/ui/P;->oU:I

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method protected uo(Landroid/graphics/Canvas;Z)V
    .registers 5

    .prologue
    .line 118
    iget v0, p0, Lcom/android/common/ui/P;->oI:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/P;->vf(I)V

    .line 119
    invoke-direct {p0, p1}, Lcom/android/common/ui/P;->Bo(Landroid/graphics/Canvas;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/common/ui/P;->us(Landroid/graphics/Canvas;)V

    .line 117
    return-void
.end method

.method protected uu(Landroid/graphics/Canvas;FI)V
    .registers 6

    .prologue
    .line 123
    mul-int/lit8 v0, p3, 0x22

    iget v1, p0, Lcom/android/common/ui/P;->oU:I

    if-eq v0, v1, :cond_17

    .line 124
    iget-object v0, p0, Lcom/android/common/ui/P;->oT:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p3

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 125
    iget-object v0, p0, Lcom/android/common/ui/P;->oT:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 122
    :cond_16
    :goto_16
    return-void

    .line 126
    :cond_17
    iget-boolean v0, p0, Lcom/android/common/ui/P;->oF:Z

    if-eqz v0, :cond_16

    .line 127
    iget-object v0, p0, Lcom/android/common/ui/P;->oT:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p3

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 128
    iget-object v0, p0, Lcom/android/common/ui/P;->oT:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_16
.end method

.method protected vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V
    .registers 7

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/common/ui/P;->wU:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_43

    .line 95
    iget-object v0, p0, Lcom/android/common/ui/P;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/i;->eh(Z)V

    .line 96
    sget-object v0, Lcom/android/common/ui/RenderPreference$ActionEvent;->pt:Lcom/android/common/ui/RenderPreference$ActionEvent;

    if-eq p2, v0, :cond_19

    sget-object v0, Lcom/android/common/ui/RenderPreference$ActionEvent;->pu:Lcom/android/common/ui/RenderPreference$ActionEvent;

    if-ne p2, v0, :cond_22

    .line 97
    :cond_19
    iget-object v0, p0, Lcom/android/common/ui/P;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eE()V

    .line 110
    :cond_22
    :goto_22
    invoke-direct {p0}, Lcom/android/common/ui/P;->Bp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/android/common/ui/P;->oV:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/common/ui/P;->wU:[I

    aget v2, v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    invoke-virtual {p0, p2}, Lcom/android/common/ui/P;->vc(Lcom/android/common/ui/RenderPreference$ActionEvent;)V

    .line 114
    iget-object v0, p0, Lcom/android/common/ui/P;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mV()V

    .line 93
    return-void

    .line 101
    :cond_43
    iget-object v0, p0, Lcom/android/common/ui/P;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/i;->eh(Z)V

    .line 102
    sget-object v0, Lcom/android/common/ui/RenderPreference$ActionEvent;->pt:Lcom/android/common/ui/RenderPreference$ActionEvent;

    if-eq p2, v0, :cond_55

    sget-object v0, Lcom/android/common/ui/RenderPreference$ActionEvent;->ps:Lcom/android/common/ui/RenderPreference$ActionEvent;

    if-ne p2, v0, :cond_22

    .line 103
    :cond_55
    iget-object v0, p0, Lcom/android/common/ui/P;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eF()V

    goto :goto_22
.end method

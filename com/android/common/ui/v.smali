.class public Lcom/android/common/ui/v;
.super Lcom/android/common/ui/d;
.source "SourceFile"


# instance fields
.field private si:Landroid/graphics/drawable/Drawable;

.field private sj:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/common/ui/d;-><init>(Lcom/android/common/appService/W;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/v;->si:Landroid/graphics/drawable/Drawable;

    .line 26
    iput-object p1, p0, Lcom/android/common/ui/v;->oJ:Lcom/android/common/appService/W;

    .line 27
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/common/ui/v;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_iso_key"

    invoke-virtual {v1, v2}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/v;->oY:Lcom/android/common/setting/ListPreference;

    .line 29
    iget-object v1, p0, Lcom/android/common/ui/v;->oY:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/v;->oV:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lcom/android/common/ui/v;->oY:Lcom/android/common/setting/ListPreference;

    iget-object v2, p0, Lcom/android/common/ui/v;->oY:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v2}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/setting/ListPreference;->Vr(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/common/ui/v;->oU:I

    .line 32
    iget-object v1, p0, Lcom/android/common/ui/v;->oY:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Yu()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/v;->pj:Ljava/lang/String;

    .line 33
    const v1, 0x7f02010c

    iput v1, p0, Lcom/android/common/ui/v;->pd:I

    .line 34
    const v1, 0x7f02010f

    iput v1, p0, Lcom/android/common/ui/v;->pg:I

    .line 35
    const v1, 0x7f02010e

    iput v1, p0, Lcom/android/common/ui/v;->pf:I

    .line 36
    const v1, 0x7f02010d

    iput v1, p0, Lcom/android/common/ui/v;->pc:I

    .line 37
    const v1, 0x7f02012b

    iput v1, p0, Lcom/android/common/ui/v;->sj:I

    .line 38
    invoke-direct {p0, v0}, Lcom/android/common/ui/v;->xi(Landroid/content/res/Resources;)V

    .line 39
    sget-boolean v0, Lcom/android/common/ui/v;->oE:Z

    if-eqz v0, :cond_76

    .line 40
    iget-object v0, p0, Lcom/android/common/ui/v;->oR:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/common/ui/v;->pn:I

    .line 41
    iput v3, p0, Lcom/android/common/ui/v;->oH:I

    .line 42
    iget v0, p0, Lcom/android/common/ui/v;->pn:I

    iput v0, p0, Lcom/android/common/ui/v;->oP:I

    .line 43
    iget-object v0, p0, Lcom/android/common/ui/v;->oR:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/common/ui/v;->oU:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/v;->oU:I

    .line 24
    :goto_75
    return-void

    .line 45
    :cond_76
    iput v3, p0, Lcom/android/common/ui/v;->pn:I

    .line 46
    iget-object v0, p0, Lcom/android/common/ui/v;->oR:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/common/ui/v;->oH:I

    .line 47
    iget v0, p0, Lcom/android/common/ui/v;->pn:I

    iput v0, p0, Lcom/android/common/ui/v;->oP:I

    goto :goto_75
.end method

.method private xi(Landroid/content/res/Resources;)V
    .registers 9

    .prologue
    const/4 v5, -0x1

    .line 52
    iget-object v0, p0, Lcom/android/common/ui/v;->oY:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 53
    iget-object v0, p0, Lcom/android/common/ui/v;->oY:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vs()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 54
    array-length v0, v3

    .line 55
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->acQ()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 56
    iget-object v1, p0, Lcom/android/common/ui/v;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    if-eq v1, v2, :cond_3e

    .line 57
    iget-object v1, p0, Lcom/android/common/ui/v;->oY:Lcom/android/common/setting/ListPreference;

    const-string/jumbo v2, "ISO3200"

    invoke-virtual {v1, v2}, Lcom/android/common/setting/ListPreference;->Vr(Ljava/lang/String;)I

    move-result v1

    .line 58
    if-ne v1, v5, :cond_3a

    .line 59
    iget-object v1, p0, Lcom/android/common/ui/v;->oY:Lcom/android/common/setting/ListPreference;

    const-string/jumbo v2, "3200"

    invoke-virtual {v1, v2}, Lcom/android/common/setting/ListPreference;->Vr(Ljava/lang/String;)I

    move-result v1

    .line 60
    :cond_3a
    if-eq v1, v5, :cond_3e

    .line 61
    add-int/lit8 v0, v1, 0x1

    .line 65
    :cond_3e
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/common/ui/v;->oQ:[Ljava/lang/String;

    .line 66
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/common/ui/v;->oR:[Ljava/lang/String;

    .line 67
    const/4 v2, 0x0

    :goto_47
    if-ge v2, v0, :cond_69

    .line 68
    sget-boolean v1, Lcom/android/common/ui/v;->oE:Z

    if-eqz v1, :cond_67

    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v1, v2

    .line 69
    :goto_50
    iget-object v5, p0, Lcom/android/common/ui/v;->oQ:[Ljava/lang/String;

    aget-object v6, v3, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 70
    iget-object v5, p0, Lcom/android/common/ui/v;->oR:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_67
    move v1, v2

    .line 68
    goto :goto_50

    .line 51
    :cond_69
    return-void
.end method


# virtual methods
.method public uE(FFFF)V
    .registers 13

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/common/ui/d;->uE(FFFF)V

    .line 86
    iget-object v0, p0, Lcom/android/common/ui/v;->si:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/common/ui/v;->oO:[F

    aget v1, v1, v7

    float-to-int v1, v1

    .line 87
    iget-object v2, p0, Lcom/android/common/ui/v;->oO:[F

    aget v2, v2, v5

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/common/ui/v;->oO:[F

    aget v3, v3, v6

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lcom/android/common/ui/v;->ot:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/android/common/ui/v;->os:I

    sub-int/2addr v2, v3

    .line 88
    iget-object v3, p0, Lcom/android/common/ui/v;->oO:[F

    aget v3, v3, v7

    float-to-int v3, v3

    sget v4, Lcom/android/common/ui/v;->ot:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 89
    iget-object v4, p0, Lcom/android/common/ui/v;->oO:[F

    aget v4, v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/common/ui/v;->oO:[F

    aget v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lcom/android/common/ui/v;->os:I

    sub-int/2addr v4, v5

    .line 86
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    sget-boolean v0, Lcom/android/common/ui/v;->oE:Z

    if-eqz v0, :cond_51

    .line 91
    iget-object v0, p0, Lcom/android/common/ui/v;->si:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 92
    sget v1, Lcom/android/common/ui/v;->ot:I

    mul-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 93
    iget-object v1, p0, Lcom/android/common/ui/v;->si:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 84
    :cond_51
    return-void
.end method

.method public uL(Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/common/ui/v;->oD:Z

    if-eqz v0, :cond_5

    return-void

    .line 76
    :cond_5
    iget v0, p0, Lcom/android/common/ui/v;->sj:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/v;->si:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-super {p0, p1}, Lcom/android/common/ui/d;->uL(Landroid/content/res/Resources;)V

    .line 74
    return-void
.end method

.method public uT()Z
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/common/ui/v;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XI()Z

    move-result v0

    return v0
.end method

.method protected uu(Landroid/graphics/Canvas;FI)V
    .registers 9

    .prologue
    const/16 v2, 0x50

    const/4 v4, 0x0

    .line 98
    iget v0, p0, Lcom/android/common/ui/v;->pn:I

    if-ne p3, v0, :cond_27

    .line 99
    iget v0, p0, Lcom/android/common/ui/v;->oU:I

    if-eq p3, v0, :cond_18

    .line 100
    iget-object v0, p0, Lcom/android/common/ui/v;->si:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 101
    iget-object v0, p0, Lcom/android/common/ui/v;->si:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    :cond_17
    :goto_17
    return-void

    .line 102
    :cond_18
    iget-boolean v0, p0, Lcom/android/common/ui/v;->oF:Z

    if-eqz v0, :cond_17

    .line 103
    iget-object v0, p0, Lcom/android/common/ui/v;->si:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 104
    iget-object v0, p0, Lcom/android/common/ui/v;->si:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_17

    .line 106
    :cond_27
    iget v0, p0, Lcom/android/common/ui/v;->oH:I

    if-ne p3, v0, :cond_17

    .line 111
    iget-object v0, p0, Lcom/android/common/ui/v;->ph:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/common/ui/v;->oQ:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 112
    sget-boolean v1, Lcom/android/common/ui/v;->oE:Z

    if-eqz v1, :cond_3d

    neg-float v0, v0

    .line 113
    :cond_3d
    iget v1, p0, Lcom/android/common/ui/v;->oU:I

    if-eq p3, v1, :cond_5c

    .line 114
    iget-object v1, p0, Lcom/android/common/ui/v;->ph:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/common/ui/v;->oI:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget-object v1, p0, Lcom/android/common/ui/v;->oQ:[Ljava/lang/String;

    aget-object v1, v1, p3

    iget-object v2, p0, Lcom/android/common/ui/v;->oO:[F

    aget v2, v2, v4

    sub-float v0, v2, v0

    .line 116
    iget-object v2, p0, Lcom/android/common/ui/v;->ph:Landroid/graphics/Paint;

    .line 115
    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_17

    .line 117
    :cond_5c
    iget-boolean v1, p0, Lcom/android/common/ui/v;->oF:Z

    if-eqz v1, :cond_17

    .line 118
    iget-object v1, p0, Lcom/android/common/ui/v;->ph:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    iget-object v1, p0, Lcom/android/common/ui/v;->oQ:[Ljava/lang/String;

    aget-object v1, v1, p3

    iget-object v2, p0, Lcom/android/common/ui/v;->oO:[F

    aget v2, v2, v4

    sub-float v0, v2, v0

    .line 120
    iget-object v2, p0, Lcom/android/common/ui/v;->ph:Landroid/graphics/Paint;

    .line 119
    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_17
.end method

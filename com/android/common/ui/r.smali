.class public Lcom/android/common/ui/r;
.super Lcom/android/common/ui/d;
.source "SourceFile"


# static fields
.field private static rV:[I


# instance fields
.field private rW:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/common/ui/r;->rV:[I

    .line 17
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 22
    :array_a
    .array-data 4
        0x0
        0x8ca
        0x9c4
        0xabe
        0xbb8
        0xcb2
        0xdac
        0xea6
        0xfa0
        0x109a
        0x1194
        0x128e
        0x1388
        0x1482
        0x157c
        0x1676
        0x1770
        0x186a
        0x1964
        0x1a5e
        0x1b58
        0x1c52
        0x1d4c
        0x1e46
        0x203a
    .end array-data
.end method

.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/common/ui/d;-><init>(Lcom/android/common/appService/W;)V

    .line 35
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/android/common/ui/r;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v2

    const-string/jumbo v3, "pref_camera_whitebalance_key"

    invoke-virtual {v2, v3}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/ui/r;->oY:Lcom/android/common/setting/ListPreference;

    .line 37
    iget-object v2, p0, Lcom/android/common/ui/r;->oY:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v2}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/ui/r;->oV:Ljava/lang/String;

    .line 39
    iget-object v2, p0, Lcom/android/common/ui/r;->oY:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v2}, Lcom/android/common/setting/ListPreference;->Yu()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/ui/r;->pj:Ljava/lang/String;

    .line 41
    const v2, 0x7f02013a

    iput v2, p0, Lcom/android/common/ui/r;->pd:I

    .line 42
    const v2, 0x7f02013d

    iput v2, p0, Lcom/android/common/ui/r;->pg:I

    .line 43
    const v2, 0x7f02013c

    iput v2, p0, Lcom/android/common/ui/r;->pf:I

    .line 44
    const v2, 0x7f02013b

    iput v2, p0, Lcom/android/common/ui/r;->pc:I

    .line 45
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_100

    iput-object v2, p0, Lcom/android/common/ui/r;->oS:[I

    .line 54
    sget-boolean v2, Lcom/android/common/ui/r;->oE:Z

    if-eqz v2, :cond_a0

    .line 55
    iget-object v2, p0, Lcom/android/common/ui/r;->oS:[I

    iget-object v3, p0, Lcom/android/common/ui/r;->oS:[I

    array-length v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/common/ui/r;->uW([II)V

    .line 56
    sget-object v2, Lcom/android/common/ui/r;->rV:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/common/ui/r;->pn:I

    .line 57
    iput v0, p0, Lcom/android/common/ui/r;->oH:I

    .line 58
    iget v2, p0, Lcom/android/common/ui/r;->pn:I

    iput v2, p0, Lcom/android/common/ui/r;->oP:I

    .line 64
    :goto_60
    const v2, 0x7f0b0047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/ui/r;->rW:[Ljava/lang/String;

    .line 65
    invoke-direct {p0, v1}, Lcom/android/common/ui/r;->wU(Landroid/content/res/Resources;)V

    .line 66
    iget-object v1, p0, Lcom/android/common/ui/r;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    if-ne v1, v2, :cond_77

    const/4 v0, 0x1

    .line 67
    :cond_77
    const-string/jumbo v1, "auto"

    .line 68
    if-eqz v0, :cond_fd

    .line 69
    const-string/jumbo v0, "3500"

    invoke-direct {p0, v0}, Lcom/android/common/ui/r;->wV(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/r;->oP:I

    .line 70
    const-string/jumbo v0, "manual-cct"

    .line 72
    :goto_88
    invoke-direct {p0}, Lcom/android/common/ui/r;->wW()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/ui/r;->oV:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string/jumbo v1, "auto"

    invoke-static {v1, v0}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 74
    iget v0, p0, Lcom/android/common/ui/r;->pn:I

    iput v0, p0, Lcom/android/common/ui/r;->oU:I

    .line 33
    :goto_9f
    return-void

    .line 60
    :cond_a0
    sget-object v2, Lcom/android/common/ui/r;->rV:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/common/ui/r;->oH:I

    .line 61
    iput v0, p0, Lcom/android/common/ui/r;->pn:I

    .line 62
    iget v2, p0, Lcom/android/common/ui/r;->pn:I

    iput v2, p0, Lcom/android/common/ui/r;->oP:I

    goto :goto_60

    .line 75
    :cond_ae
    const-string/jumbo v1, "point-measure"

    invoke-static {v0, v1}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 76
    iget v0, p0, Lcom/android/common/ui/r;->oH:I

    iput v0, p0, Lcom/android/common/ui/r;->oU:I

    goto :goto_9f

    .line 77
    :cond_bc
    const-string/jumbo v1, "manual-cct"

    invoke-static {v0, v1}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 78
    invoke-direct {p0}, Lcom/android/common/ui/r;->wW()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "wb-manual-cct"

    const/16 v2, 0xdac

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/r;->wV(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/r;->oU:I

    goto :goto_9f

    .line 81
    :cond_ed
    iget v0, p0, Lcom/android/common/ui/r;->pn:I

    iput v0, p0, Lcom/android/common/ui/r;->oU:I

    .line 82
    iget-object v0, p0, Lcom/android/common/ui/r;->oY:Lcom/android/common/setting/ListPreference;

    iget-object v1, p0, Lcom/android/common/ui/r;->oR:[Ljava/lang/String;

    iget v2, p0, Lcom/android/common/ui/r;->oU:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    goto :goto_9f

    :cond_fd
    move-object v0, v1

    goto :goto_88

    .line 45
    nop

    :array_100
    .array-data 4
        0x7f02012b
        0x7f020131
        0x7f02012f
        0x7f02013e
        0x7f02012d
        0x7f020139
        0x7f020137
    .end array-data
.end method

.method private wU(Landroid/content/res/Resources;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 93
    sget-object v0, Lcom/android/common/ui/r;->rV:[I

    array-length v2, v0

    .line 94
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/common/ui/r;->oQ:[Ljava/lang/String;

    .line 95
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/common/ui/r;->oR:[Ljava/lang/String;

    .line 96
    :goto_c
    if-ge v1, v2, :cond_61

    .line 97
    sget-boolean v0, Lcom/android/common/ui/r;->oE:Z

    if-eqz v0, :cond_42

    add-int/lit8 v0, v2, -0x1

    sub-int/2addr v0, v1

    .line 98
    :goto_15
    rem-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_44

    .line 99
    iget-object v3, p0, Lcom/android/common/ui/r;->oQ:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/common/ui/r;->rW:[Ljava/lang/String;

    div-int/lit8 v5, v0, 0x4

    aget-object v4, v4, v5

    aput-object v4, v3, v1

    .line 103
    :goto_23
    iget-object v3, p0, Lcom/android/common/ui/r;->oR:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/common/ui/r;->rV:[I

    aget v0, v5, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_42
    move v0, v1

    .line 97
    goto :goto_15

    .line 101
    :cond_44
    iget-object v3, p0, Lcom/android/common/ui/r;->oQ:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/common/ui/r;->rV:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_23

    .line 105
    :cond_61
    iget-object v0, p0, Lcom/android/common/ui/r;->oQ:[Ljava/lang/String;

    iget v1, p0, Lcom/android/common/ui/r;->pn:I

    const v2, 0x7f0a026b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/android/common/ui/r;->oR:[Ljava/lang/String;

    iget v1, p0, Lcom/android/common/ui/r;->pn:I

    const-string/jumbo v2, "auto"

    aput-object v2, v0, v1

    .line 107
    iget-object v0, p0, Lcom/android/common/ui/r;->oQ:[Ljava/lang/String;

    iget v1, p0, Lcom/android/common/ui/r;->oH:I

    const v2, 0x7f0a031e

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 108
    iget-object v0, p0, Lcom/android/common/ui/r;->oR:[Ljava/lang/String;

    iget v1, p0, Lcom/android/common/ui/r;->oH:I

    const-string/jumbo v2, "point-measure"

    aput-object v2, v0, v1

    .line 91
    return-void
.end method

.method private wV(Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 86
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/common/ui/r;->oR:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 87
    iget-object v1, p0, Lcom/android/common/ui/r;->oR:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    .line 86
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_14
    iget v0, p0, Lcom/android/common/ui/r;->pn:I

    return v0
.end method

.method private wW()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/common/ui/r;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method private wX(I)V
    .registers 5

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/common/ui/r;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    if-eqz p1, :cond_14

    .line 176
    iget-object v1, p0, Lcom/android/common/ui/r;->oV:Ljava/lang/String;

    const-string/jumbo v2, "manual-cct"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    :cond_14
    const-string/jumbo v1, "wb-manual-cct"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    return-void
.end method


# virtual methods
.method public uT()Z
    .registers 4

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/common/ui/r;->wW()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_colorfilter_key"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18
.end method

.method protected uo(Landroid/graphics/Canvas;Z)V
    .registers 11

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 112
    iget v0, p0, Lcom/android/common/ui/r;->oI:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/r;->vf(I)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    iget-object v1, p0, Lcom/android/common/ui/r;->oL:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/android/common/ui/r;->oM:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 115
    iget-object v0, p0, Lcom/android/common/ui/r;->oN:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/common/ui/r;->oI:F

    const/high16 v2, 0x42960000    # 75.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 116
    iget-object v1, p0, Lcom/android/common/ui/r;->oL:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/common/ui/r;->oO:[F

    aget v0, v0, v6

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v0, v2

    neg-float v2, v0

    .line 117
    iget-object v0, p0, Lcom/android/common/ui/r;->oO:[F

    aget v0, v0, v6

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/android/common/ui/r;->oN:Landroid/graphics/Paint;

    move-object v0, p1

    .line 116
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/common/ui/r;->up(Landroid/graphics/Canvas;)V

    .line 119
    iget-object v0, p0, Lcom/android/common/ui/r;->oO:[F

    aget v0, v0, v7

    iget-object v1, p0, Lcom/android/common/ui/r;->oO:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    sub-float/2addr v0, v1

    .line 120
    sget v1, Lcom/android/common/ui/r;->os:I

    int-to-float v1, v1

    .line 119
    sub-float v1, v0, v1

    .line 121
    iget-object v0, p0, Lcom/android/common/ui/r;->oO:[F

    aget v0, v0, v6

    neg-float v0, v0

    iget-object v2, p0, Lcom/android/common/ui/r;->oO:[F

    aget v2, v2, v4

    .line 122
    iget-object v3, p0, Lcom/android/common/ui/r;->oO:[F

    aget v3, v3, v7

    .line 121
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 123
    iget-object v0, p0, Lcom/android/common/ui/r;->oS:[I

    array-length v2, v0

    move v0, v4

    .line 124
    :goto_62
    if-ge v0, v2, :cond_7a

    .line 125
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/common/ui/r;->uu(Landroid/graphics/Canvas;FI)V

    .line 126
    iget v3, p0, Lcom/android/common/ui/r;->pp:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v3, v5

    iget-object v5, p0, Lcom/android/common/ui/r;->oO:[F

    aget v5, v5, v4

    .line 127
    iget-object v6, p0, Lcom/android/common/ui/r;->oO:[F

    aget v6, v6, v7

    .line 126
    invoke-virtual {p1, v3, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 129
    :cond_7a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/common/ui/r;->us(Landroid/graphics/Canvas;)V

    .line 111
    return-void
.end method

.method protected uu(Landroid/graphics/Canvas;FI)V
    .registers 6

    .prologue
    .line 154
    mul-int/lit8 v0, p3, 0x4

    iget v1, p0, Lcom/android/common/ui/r;->oU:I

    if-eq v0, v1, :cond_17

    .line 155
    iget-object v0, p0, Lcom/android/common/ui/r;->oT:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p3

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 156
    iget-object v0, p0, Lcom/android/common/ui/r;->oT:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    :cond_16
    :goto_16
    return-void

    .line 157
    :cond_17
    iget-boolean v0, p0, Lcom/android/common/ui/r;->oF:Z

    if-eqz v0, :cond_16

    .line 158
    iget-object v0, p0, Lcom/android/common/ui/r;->oT:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p3

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 159
    iget-object v0, p0, Lcom/android/common/ui/r;->oT:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_16
.end method

.method protected vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 134
    iget v0, p0, Lcom/android/common/ui/r;->pn:I

    if-eq p1, v0, :cond_9

    iget v0, p0, Lcom/android/common/ui/r;->oH:I

    if-ne p1, v0, :cond_36

    .line 135
    :cond_9
    iget-object v0, p0, Lcom/android/common/ui/r;->oY:Lcom/android/common/setting/ListPreference;

    iget-object v1, p0, Lcom/android/common/ui/r;->oR:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, v2}, Lcom/android/common/ui/r;->wX(I)V

    .line 147
    :goto_15
    iget-object v0, p0, Lcom/android/common/ui/r;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mL()V

    .line 148
    iget-object v0, p0, Lcom/android/common/ui/r;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/android/common/ui/r;->oR:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string/jumbo v2, "point-measure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 148
    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/o;->fP(Z)V

    .line 150
    invoke-virtual {p0, p2}, Lcom/android/common/ui/r;->vc(Lcom/android/common/ui/RenderPreference$ActionEvent;)V

    .line 133
    return-void

    .line 137
    :cond_36
    if-nez p1, :cond_44

    .line 138
    iget-object v0, p0, Lcom/android/common/ui/r;->oY:Lcom/android/common/setting/ListPreference;

    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, v2}, Lcom/android/common/ui/r;->wX(I)V

    goto :goto_15

    .line 141
    :cond_44
    iget-object v0, p0, Lcom/android/common/ui/r;->oR:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 142
    invoke-direct {p0}, Lcom/android/common/ui/r;->wW()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcom/android/common/ui/r;->oV:Ljava/lang/String;

    const-string/jumbo v3, "manual-cct"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    const-string/jumbo v2, "wb-manual-cct"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_15
.end method

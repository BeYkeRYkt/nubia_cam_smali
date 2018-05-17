.class public Lcom/android/common/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/T;


# static fields
.field protected static oE:Z

.field protected static final os:I

.field protected static final ot:I

.field protected static final ou:I

.field protected static final ov:I

.field protected static final ow:I

.field protected static final ox:I

.field protected static final oy:I

.field private static final synthetic pq:[I


# instance fields
.field private TAG:Ljava/lang/String;

.field protected oA:F

.field protected oB:F

.field protected oC:Z

.field protected oD:Z

.field protected oF:Z

.field protected oG:Z

.field protected oH:I

.field protected oI:F

.field protected oJ:Lcom/android/common/appService/W;

.field protected oK:Landroid/graphics/Path;

.field protected oL:Landroid/graphics/RectF;

.field protected oM:Landroid/graphics/Paint;

.field protected oN:Landroid/graphics/Paint;

.field protected oO:[F

.field protected oP:I

.field protected oQ:[Ljava/lang/String;

.field protected oR:[Ljava/lang/String;

.field protected oS:[I

.field protected oT:[Landroid/graphics/drawable/Drawable;

.field protected oU:I

.field protected oV:Ljava/lang/String;

.field protected oW:I

.field protected oX:Lcom/android/common/ui/HighSettingLayout;

.field protected oY:Lcom/android/common/setting/ListPreference;

.field protected oZ:Lcom/android/common/ui/e;

.field protected oz:Landroid/animation/ValueAnimator;

.field protected pa:Landroid/graphics/drawable/Drawable;

.field protected pb:Landroid/graphics/drawable/Drawable;

.field protected pc:I

.field protected pd:I

.field protected pe:Landroid/graphics/drawable/Drawable;

.field protected pf:I

.field protected pg:I

.field protected ph:Landroid/graphics/Paint;

.field protected pi:Landroid/graphics/Paint;

.field protected pj:Ljava/lang/String;

.field protected pk:F

.field protected pl:F

.field protected pm:Landroid/animation/ValueAnimator;

.field protected pn:I

.field protected po:Landroid/animation/ValueAnimator;

.field protected pp:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/d;->ot:I

    .line 33
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/d;->ou:I

    .line 34
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/d;->os:I

    .line 35
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/d;->ox:I

    .line 36
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/d;->oy:I

    .line 37
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/d;->ov:I

    .line 38
    const/16 v0, 0x24

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/d;->ow:I

    .line 125
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/common/ui/d;->oE:Z

    .line 28
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, "RenderPreference"

    iput-object v0, p0, Lcom/android/common/ui/d;->TAG:Ljava/lang/String;

    .line 74
    iput-boolean v1, p0, Lcom/android/common/ui/d;->oD:Z

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/ui/d;->oU:I

    .line 77
    iput v1, p0, Lcom/android/common/ui/d;->oP:I

    .line 88
    iput-boolean v1, p0, Lcom/android/common/ui/d;->oF:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/common/ui/d;->oC:Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/d;->oZ:Lcom/android/common/ui/e;

    .line 199
    iput-object p1, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    .line 200
    const v0, 0x7f0200d4

    iput v0, p0, Lcom/android/common/ui/d;->pc:I

    .line 201
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uD()V

    .line 198
    return-void
.end method

.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/common/setting/ListPreference;Landroid/content/res/Resources;III)V
    .registers 15

    .prologue
    .line 186
    const v6, 0x7f0200d4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/common/ui/d;-><init>(Lcom/android/common/appService/W;Lcom/android/common/setting/ListPreference;Landroid/content/res/Resources;IIII)V

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/common/setting/ListPreference;Landroid/content/res/Resources;IIII)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, "RenderPreference"

    iput-object v0, p0, Lcom/android/common/ui/d;->TAG:Ljava/lang/String;

    .line 74
    iput-boolean v1, p0, Lcom/android/common/ui/d;->oD:Z

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/ui/d;->oU:I

    .line 77
    iput v1, p0, Lcom/android/common/ui/d;->oP:I

    .line 88
    iput-boolean v1, p0, Lcom/android/common/ui/d;->oF:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/common/ui/d;->oC:Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/d;->oZ:Lcom/android/common/ui/e;

    .line 189
    iput-object p1, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    .line 190
    iput-object p2, p0, Lcom/android/common/ui/d;->oY:Lcom/android/common/setting/ListPreference;

    .line 191
    iput p4, p0, Lcom/android/common/ui/d;->pd:I

    .line 192
    iput p7, p0, Lcom/android/common/ui/d;->pg:I

    .line 193
    iput p5, p0, Lcom/android/common/ui/d;->pf:I

    .line 194
    iput p6, p0, Lcom/android/common/ui/d;->pc:I

    .line 195
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uD()V

    .line 196
    invoke-direct {p0, p3}, Lcom/android/common/ui/d;->uF(Landroid/content/res/Resources;)V

    .line 188
    return-void
.end method

.method private uF(Landroid/content/res/Resources;)V
    .registers 9

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/common/ui/d;->oY:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/d;->oV:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/android/common/ui/d;->oY:Lcom/android/common/setting/ListPreference;

    iget-object v1, p0, Lcom/android/common/ui/d;->oY:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vr(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/d;->oU:I

    .line 162
    iget-object v0, p0, Lcom/android/common/ui/d;->oY:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vx()I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/d;->oP:I

    .line 164
    iget-object v0, p0, Lcom/android/common/ui/d;->oY:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Yu()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/d;->pj:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/android/common/ui/d;->oY:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 166
    iget-object v0, p0, Lcom/android/common/ui/d;->oY:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vs()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 167
    iget-object v0, p0, Lcom/android/common/ui/d;->oY:Lcom/android/common/setting/ListPreference;

    instance-of v0, v0, Lcom/android/common/setting/IconListPreference;

    if-eqz v0, :cond_4a

    .line 168
    iget-object v0, p0, Lcom/android/common/ui/d;->oY:Lcom/android/common/setting/ListPreference;

    check-cast v0, Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->YP()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/d;->oS:[I

    .line 169
    iget-object v0, p0, Lcom/android/common/ui/d;->oS:[I

    iget-object v1, p0, Lcom/android/common/ui/d;->oS:[I

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/d;->uW([II)V

    .line 171
    :cond_4a
    array-length v4, v2

    .line 172
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/common/ui/d;->oQ:[Ljava/lang/String;

    .line 173
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/common/ui/d;->oR:[Ljava/lang/String;

    .line 174
    const/4 v1, 0x0

    :goto_54
    if-ge v1, v4, :cond_76

    .line 175
    sget-boolean v0, Lcom/android/common/ui/d;->oE:Z

    if-eqz v0, :cond_74

    add-int/lit8 v0, v4, -0x1

    sub-int/2addr v0, v1

    .line 176
    :goto_5d
    iget-object v5, p0, Lcom/android/common/ui/d;->oQ:[Ljava/lang/String;

    aget-object v6, v2, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 177
    iget-object v5, p0, Lcom/android/common/ui/d;->oR:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_74
    move v0, v1

    .line 175
    goto :goto_5d

    .line 179
    :cond_76
    sget-boolean v0, Lcom/android/common/ui/d;->oE:Z

    if-eqz v0, :cond_88

    .line 180
    add-int/lit8 v0, v4, -0x1

    iget v1, p0, Lcom/android/common/ui/d;->oU:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/d;->oU:I

    .line 181
    add-int/lit8 v0, v4, -0x1

    iget v1, p0, Lcom/android/common/ui/d;->oP:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/d;->oP:I

    .line 158
    :cond_88
    return-void
.end method

.method public static va(Z)V
    .registers 1

    .prologue
    .line 127
    sput-boolean p0, Lcom/android/common/ui/d;->oE:Z

    .line 126
    return-void
.end method

.method private static synthetic vl()[I
    .registers 3

    sget-object v0, Lcom/android/common/ui/d;->pq:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/common/ui/d;->pq:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/common/ui/RenderPreference$ActionEvent;->values()[Lcom/android/common/ui/RenderPreference$ActionEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/common/ui/RenderPreference$ActionEvent;->ps:Lcom/android/common/ui/RenderPreference$ActionEvent;

    invoke-virtual {v1}, Lcom/android/common/ui/RenderPreference$ActionEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/common/ui/RenderPreference$ActionEvent;->pt:Lcom/android/common/ui/RenderPreference$ActionEvent;

    invoke-virtual {v1}, Lcom/android/common/ui/RenderPreference$ActionEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/common/ui/RenderPreference$ActionEvent;->pu:Lcom/android/common/ui/RenderPreference$ActionEvent;

    invoke-virtual {v1}, Lcom/android/common/ui/RenderPreference$ActionEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/android/common/ui/d;->pq:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 578
    iget-boolean v0, p0, Lcom/android/common/ui/d;->oD:Z

    if-nez v0, :cond_23

    .line 579
    const-string/jumbo v0, "1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/common/ui/d;->oV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " drawabled is not all loaded draw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    return-void

    .line 583
    :cond_23
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uH()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 584
    iget-object v0, p0, Lcom/android/common/ui/d;->oz:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/d;->oI:F

    .line 588
    :goto_37
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uI()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 589
    invoke-virtual {p0, p1, v1}, Lcom/android/common/ui/d;->uo(Landroid/graphics/Canvas;Z)V

    .line 590
    invoke-virtual {p0, p1}, Lcom/android/common/ui/d;->uq(Landroid/graphics/Canvas;)V

    .line 598
    :cond_43
    :goto_43
    iget-boolean v0, p0, Lcom/android/common/ui/d;->oF:Z

    if-nez v0, :cond_4d

    invoke-virtual {p0}, Lcom/android/common/ui/d;->uJ()Z

    move-result v0

    if-eqz v0, :cond_60

    :cond_4d
    iget v0, p0, Lcom/android/common/ui/d;->oU:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_60

    .line 599
    invoke-virtual {p0, p1}, Lcom/android/common/ui/d;->ut(Landroid/graphics/Canvas;)V

    .line 600
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uJ()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/common/ui/d;->oX:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 577
    :cond_60
    return-void

    .line 586
    :cond_61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/common/ui/d;->oI:F

    goto :goto_37

    .line 591
    :cond_66
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uH()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 592
    invoke-virtual {p0, p1, v1}, Lcom/android/common/ui/d;->uo(Landroid/graphics/Canvas;Z)V

    .line 593
    invoke-virtual {p0, p1, v2}, Lcom/android/common/ui/d;->ur(Landroid/graphics/Canvas;Z)V

    goto :goto_43

    .line 594
    :cond_73
    iget-boolean v0, p0, Lcom/android/common/ui/d;->oG:Z

    if-eqz v0, :cond_43

    .line 595
    invoke-virtual {p0, p1, v2}, Lcom/android/common/ui/d;->uo(Landroid/graphics/Canvas;Z)V

    .line 596
    invoke-virtual {p0, p1, v1}, Lcom/android/common/ui/d;->ur(Landroid/graphics/Canvas;Z)V

    goto :goto_43
.end method

.method public setOrientation(I)V
    .registers 2

    .prologue
    .line 673
    iput p1, p0, Lcom/android/common/ui/d;->oW:I

    .line 671
    return-void
.end method

.method public uA()Ljava/lang/String;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uB()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/common/ui/d;->pj:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string/jumbo v0, "def"

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/common/ui/d;->pj:Ljava/lang/String;

    goto :goto_7
.end method

.method public uC()Ljava/lang/String;
    .registers 3

    .prologue
    .line 244
    iget v0, p0, Lcom/android/common/ui/d;->oU:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 245
    iget-object v0, p0, Lcom/android/common/ui/d;->oQ:[Ljava/lang/String;

    iget v1, p0, Lcom/android/common/ui/d;->oU:I

    aget-object v0, v0, v1

    return-object v0

    .line 247
    :cond_c
    const-string/jumbo v0, "def"

    return-object v0
.end method

.method protected uD()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 131
    iput-boolean v1, p0, Lcom/android/common/ui/d;->oG:Z

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 133
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 137
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    .line 138
    iget-object v1, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v1, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    sget v2, Lcom/android/common/ui/d;->ov:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 140
    iget-object v1, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 142
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/common/ui/d;->pi:Landroid/graphics/Paint;

    .line 143
    iget-object v1, p0, Lcom/android/common/ui/d;->pi:Landroid/graphics/Paint;

    const/high16 v2, 0x41c80000    # 25.0f

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 145
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/common/ui/d;->oN:Landroid/graphics/Paint;

    .line 146
    iget-object v1, p0, Lcom/android/common/ui/d;->oN:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    iget-object v1, p0, Lcom/android/common/ui/d;->oN:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/common/ui/d;->oM:Landroid/graphics/Paint;

    .line 151
    iget-object v0, p0, Lcom/android/common/ui/d;->oM:Landroid/graphics/Paint;

    sget v1, Lcom/android/common/ui/HighSettingLayout;->xG:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 152
    iget-object v0, p0, Lcom/android/common/ui/d;->oM:Landroid/graphics/Paint;

    const/high16 v1, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcom/android/common/ui/d;->oM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    .line 130
    return-void
.end method

.method public uE(FFFF)V
    .registers 16

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 606
    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    aput p1, v0, v1

    .line 607
    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    aput p2, v0, v9

    .line 608
    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    aput p3, v0, v8

    .line 609
    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    aput p4, v0, v7

    .line 611
    float-to-double v2, p3

    float-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/android/common/ui/d;->oB:F

    .line 612
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/common/ui/d;->oO:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/common/ui/d;->oO:[F

    aget v3, v3, v8

    sub-float/2addr v2, v3

    .line 613
    iget-object v3, p0, Lcom/android/common/ui/d;->oO:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/android/common/ui/d;->oO:[F

    aget v4, v4, v8

    sub-float/2addr v3, v4

    .line 614
    iget-object v4, p0, Lcom/android/common/ui/d;->oO:[F

    aget v4, v4, v1

    iget-object v5, p0, Lcom/android/common/ui/d;->oO:[F

    aget v5, v5, v8

    add-float/2addr v4, v5

    .line 615
    iget-object v5, p0, Lcom/android/common/ui/d;->oO:[F

    aget v5, v5, v9

    iget-object v6, p0, Lcom/android/common/ui/d;->oO:[F

    aget v6, v6, v8

    add-float/2addr v5, v6

    .line 612
    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/common/ui/d;->oL:Landroid/graphics/RectF;

    .line 616
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/d;->oK:Landroid/graphics/Path;

    .line 617
    iget-object v0, p0, Lcom/android/common/ui/d;->oK:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/common/ui/d;->oL:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/common/ui/d;->oO:[F

    aget v3, v3, v7

    const/high16 v4, -0x3d4c0000    # -90.0f

    sub-float v3, v4, v3

    iget-object v4, p0, Lcom/android/common/ui/d;->oO:[F

    aget v4, v4, v7

    mul-float/2addr v4, v10

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 618
    mul-float v0, v10, p4

    iget-object v2, p0, Lcom/android/common/ui/d;->oQ:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/common/ui/d;->pp:F

    .line 619
    float-to-double v2, p3

    float-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 620
    iget-object v2, p0, Lcom/android/common/ui/d;->oO:[F

    aget v2, v2, v1

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/android/common/ui/d;->pl:F

    .line 621
    iget-object v2, p0, Lcom/android/common/ui/d;->oO:[F

    aget v2, v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/common/ui/d;->pk:F

    .line 623
    iget-object v0, p0, Lcom/android/common/ui/d;->pa:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/common/ui/d;->oO:[F

    aget v2, v2, v1

    float-to-int v2, v2

    sget v3, Lcom/android/common/ui/d;->ou:I

    sub-int/2addr v2, v3

    .line 624
    iget-object v3, p0, Lcom/android/common/ui/d;->oO:[F

    aget v3, v3, v9

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/common/ui/d;->oO:[F

    aget v4, v4, v8

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sget v4, Lcom/android/common/ui/d;->ou:I

    sub-int/2addr v3, v4

    .line 625
    iget-object v4, p0, Lcom/android/common/ui/d;->oO:[F

    aget v4, v4, v1

    float-to-int v4, v4

    sget v5, Lcom/android/common/ui/d;->ou:I

    add-int/2addr v4, v5

    .line 626
    iget-object v5, p0, Lcom/android/common/ui/d;->oO:[F

    aget v5, v5, v9

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/common/ui/d;->oO:[F

    aget v6, v6, v8

    float-to-int v6, v6

    sub-int/2addr v5, v6

    sget v6, Lcom/android/common/ui/d;->ou:I

    add-int/2addr v5, v6

    .line 623
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 627
    iget-object v0, p0, Lcom/android/common/ui/d;->pe:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/common/ui/d;->oO:[F

    aget v2, v2, v1

    float-to-int v2, v2

    sget v3, Lcom/android/common/ui/d;->ou:I

    sub-int/2addr v2, v3

    .line 628
    iget-object v3, p0, Lcom/android/common/ui/d;->oO:[F

    aget v3, v3, v9

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/common/ui/d;->oO:[F

    aget v4, v4, v8

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sget v4, Lcom/android/common/ui/d;->ou:I

    sub-int/2addr v3, v4

    .line 629
    iget-object v4, p0, Lcom/android/common/ui/d;->oO:[F

    aget v4, v4, v1

    float-to-int v4, v4

    sget v5, Lcom/android/common/ui/d;->ou:I

    add-int/2addr v4, v5

    .line 630
    iget-object v5, p0, Lcom/android/common/ui/d;->oO:[F

    aget v5, v5, v9

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/common/ui/d;->oO:[F

    aget v6, v6, v8

    float-to-int v6, v6

    sub-int/2addr v5, v6

    sget v6, Lcom/android/common/ui/d;->ou:I

    add-int/2addr v5, v6

    .line 627
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 631
    iget-object v0, p0, Lcom/android/common/ui/d;->pb:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/common/ui/d;->oO:[F

    aget v2, v2, v1

    float-to-int v2, v2

    sget v3, Lcom/android/common/ui/d;->ou:I

    sub-int/2addr v2, v3

    .line 632
    iget-object v3, p0, Lcom/android/common/ui/d;->oO:[F

    aget v3, v3, v9

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/common/ui/d;->oO:[F

    aget v4, v4, v8

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sget v4, Lcom/android/common/ui/d;->ou:I

    sub-int/2addr v3, v4

    .line 633
    iget-object v4, p0, Lcom/android/common/ui/d;->oO:[F

    aget v4, v4, v1

    float-to-int v4, v4

    sget v5, Lcom/android/common/ui/d;->ou:I

    add-int/2addr v4, v5

    .line 634
    iget-object v5, p0, Lcom/android/common/ui/d;->oO:[F

    aget v5, v5, v9

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/common/ui/d;->oO:[F

    aget v6, v6, v8

    float-to-int v6, v6

    sub-int/2addr v5, v6

    sget v6, Lcom/android/common/ui/d;->ou:I

    add-int/2addr v5, v6

    .line 631
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 635
    iget-object v0, p0, Lcom/android/common/ui/d;->oT:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19a

    move v0, v1

    .line 636
    :goto_127
    iget-object v2, p0, Lcom/android/common/ui/d;->oS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_167

    .line 637
    iget-object v2, p0, Lcom/android/common/ui/d;->oT:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/common/ui/d;->oO:[F

    aget v3, v3, v1

    float-to-int v3, v3

    sget v4, Lcom/android/common/ui/d;->ot:I

    sub-int/2addr v3, v4

    .line 638
    iget-object v4, p0, Lcom/android/common/ui/d;->oO:[F

    aget v4, v4, v9

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/common/ui/d;->oO:[F

    aget v5, v5, v8

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lcom/android/common/ui/d;->ot:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget v5, Lcom/android/common/ui/d;->os:I

    sub-int/2addr v4, v5

    .line 639
    iget-object v5, p0, Lcom/android/common/ui/d;->oO:[F

    aget v5, v5, v1

    float-to-int v5, v5

    sget v6, Lcom/android/common/ui/d;->ot:I

    add-int/2addr v5, v6

    .line 640
    iget-object v6, p0, Lcom/android/common/ui/d;->oO:[F

    aget v6, v6, v9

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/common/ui/d;->oO:[F

    aget v7, v7, v8

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sget v7, Lcom/android/common/ui/d;->os:I

    sub-int/2addr v6, v7

    .line 637
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_127

    .line 642
    :cond_167
    iget-object v0, p0, Lcom/android/common/ui/d;->oT:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 643
    sget v2, Lcom/android/common/ui/d;->ot:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 644
    iget-object v2, p0, Lcom/android/common/ui/d;->oT:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 645
    iget-object v0, p0, Lcom/android/common/ui/d;->oT:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/common/ui/d;->oT:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 646
    sget v2, Lcom/android/common/ui/d;->ot:I

    neg-int v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 647
    iget-object v1, p0, Lcom/android/common/ui/d;->oT:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/common/ui/d;->oT:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 605
    :cond_19a
    return-void
.end method

.method public uG()Z
    .registers 3

    .prologue
    .line 735
    iget v0, p0, Lcom/android/common/ui/d;->oP:I

    iget v1, p0, Lcom/android/common/ui/d;->oU:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public uH()Z
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/common/ui/d;->oz:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/common/ui/d;->oz:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public uI()Z
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/common/ui/d;->pm:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/common/ui/d;->pm:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public uJ()Z
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/common/ui/d;->po:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/common/ui/d;->po:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public uK(IIII)V
    .registers 5

    .prologue
    .line 572
    return-void
.end method

.method public uL(Landroid/content/res/Resources;)V
    .registers 5

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/android/common/ui/d;->oD:Z

    if-nez v0, :cond_3f

    .line 746
    iget v0, p0, Lcom/android/common/ui/d;->pd:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/d;->pa:Landroid/graphics/drawable/Drawable;

    .line 747
    iget v0, p0, Lcom/android/common/ui/d;->pf:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/d;->pe:Landroid/graphics/drawable/Drawable;

    .line 748
    iget v0, p0, Lcom/android/common/ui/d;->pc:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/d;->pb:Landroid/graphics/drawable/Drawable;

    .line 749
    iget-object v0, p0, Lcom/android/common/ui/d;->oS:[I

    if-eqz v0, :cond_3c

    .line 750
    iget-object v0, p0, Lcom/android/common/ui/d;->oS:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/common/ui/d;->oT:[Landroid/graphics/drawable/Drawable;

    .line 751
    const/4 v0, 0x0

    :goto_28
    iget-object v1, p0, Lcom/android/common/ui/d;->oS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3c

    .line 752
    iget-object v1, p0, Lcom/android/common/ui/d;->oT:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/common/ui/d;->oS:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 755
    :cond_3c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/d;->oD:Z

    .line 744
    :cond_3f
    return-void
.end method

.method protected uM(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/common/ui/d;->oZ:Lcom/android/common/ui/e;

    if-eqz v0, :cond_9

    .line 121
    iget-object v0, p0, Lcom/android/common/ui/d;->oZ:Lcom/android/common/ui/e;

    invoke-interface {v0, p1, p2}, Lcom/android/common/ui/e;->vm(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_9
    return-void
.end method

.method public uN(FF)Z
    .registers 7

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 531
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uT()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 532
    return v2

    .line 534
    :cond_a
    iget v0, p0, Lcom/android/common/ui/d;->pl:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3b

    .line 535
    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    aget v0, v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/android/common/ui/d;->oA:F

    .line 541
    :goto_17
    invoke-virtual {p0}, Lcom/android/common/ui/d;->ux()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/d;->uY(I)Z

    .line 542
    iget v0, p0, Lcom/android/common/ui/d;->oU:I

    sget-object v1, Lcom/android/common/ui/RenderPreference$ActionEvent;->ps:Lcom/android/common/ui/RenderPreference$ActionEvent;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/common/ui/d;->vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V

    .line 543
    iput-boolean v3, p0, Lcom/android/common/ui/d;->oF:Z

    .line 544
    iget-boolean v0, p0, Lcom/android/common/ui/d;->oC:Z

    if-eqz v0, :cond_32

    .line 545
    iget-object v0, p0, Lcom/android/common/ui/d;->oM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 546
    :cond_32
    invoke-virtual {p0, v3}, Lcom/android/common/ui/d;->un(Z)V

    .line 547
    iget-object v0, p0, Lcom/android/common/ui/d;->oX:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 548
    return v2

    .line 536
    :cond_3b
    iget v0, p0, Lcom/android/common/ui/d;->pk:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_48

    .line 537
    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    aget v0, v0, v1

    iput v0, p0, Lcom/android/common/ui/d;->oA:F

    goto :goto_17

    .line 539
    :cond_48
    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    aget v0, v0, v2

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/d;->uw(F)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/d;->oA:F

    goto :goto_17
.end method

.method public uO(I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 652
    iget-boolean v0, p0, Lcom/android/common/ui/d;->oD:Z

    if-eqz v0, :cond_18

    .line 653
    iget-object v0, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 655
    iget-object v0, p0, Lcom/android/common/ui/d;->oN:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 656
    invoke-virtual {p0, p1}, Lcom/android/common/ui/d;->vi(I)V

    .line 660
    :goto_12
    iget-object v0, p0, Lcom/android/common/ui/d;->oX:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 651
    return-void

    .line 658
    :cond_18
    const-string/jumbo v0, "1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/common/ui/d;->oV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " drawabled is not all loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public uP(FF)Z
    .registers 7

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 511
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uT()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 512
    return v3

    .line 514
    :cond_9
    iget v0, p0, Lcom/android/common/ui/d;->pl:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_33

    .line 515
    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    aget v0, v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/android/common/ui/d;->oA:F

    .line 521
    :goto_16
    invoke-virtual {p0}, Lcom/android/common/ui/d;->ux()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/d;->uY(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 522
    iget-object v0, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qf()V

    .line 523
    iget v0, p0, Lcom/android/common/ui/d;->oU:I

    sget-object v1, Lcom/android/common/ui/RenderPreference$ActionEvent;->pt:Lcom/android/common/ui/RenderPreference$ActionEvent;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/common/ui/d;->vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V

    .line 525
    :cond_2d
    iget-object v0, p0, Lcom/android/common/ui/d;->oX:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 526
    return v3

    .line 516
    :cond_33
    iget v0, p0, Lcom/android/common/ui/d;->pk:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_40

    .line 517
    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    aget v0, v0, v1

    iput v0, p0, Lcom/android/common/ui/d;->oA:F

    goto :goto_16

    .line 519
    :cond_40
    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    aget v0, v0, v3

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/d;->uw(F)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/d;->oA:F

    goto :goto_16
.end method

.method public uQ()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 664
    invoke-virtual {p0}, Lcom/android/common/ui/d;->vj()V

    .line 665
    iget-object v0, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 666
    iget-object v0, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/a;->hJ()V

    .line 667
    iget-object v0, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qh(Lcom/android/common/appService/a;)V

    .line 663
    :cond_1a
    return-void
.end method

.method public uR()V
    .registers 3

    .prologue
    .line 730
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/d;->oF:Z

    .line 731
    iget-boolean v0, p0, Lcom/android/common/ui/d;->oC:Z

    if-eqz v0, :cond_e

    .line 732
    iget-object v0, p0, Lcom/android/common/ui/d;->oM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 729
    :cond_e
    return-void
.end method

.method public uS(FF)Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 553
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uT()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 554
    return v3

    .line 556
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/common/ui/d;->un(Z)V

    .line 557
    iget v0, p0, Lcom/android/common/ui/d;->oU:I

    sget-object v1, Lcom/android/common/ui/RenderPreference$ActionEvent;->pu:Lcom/android/common/ui/RenderPreference$ActionEvent;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/common/ui/d;->vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V

    .line 558
    iput-boolean v3, p0, Lcom/android/common/ui/d;->oF:Z

    .line 559
    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    neg-float v0, v0

    iget v1, p0, Lcom/android/common/ui/d;->oU:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/common/ui/d;->pp:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/d;->oA:F

    .line 560
    iget-boolean v0, p0, Lcom/android/common/ui/d;->oC:Z

    if-eqz v0, :cond_2f

    .line 561
    iget-object v0, p0, Lcom/android/common/ui/d;->oM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 562
    :cond_2f
    iget-object v0, p0, Lcom/android/common/ui/d;->oX:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 563
    return v3
.end method

.method public uT()Z
    .registers 2

    .prologue
    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method protected uU()V
    .registers 4

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 723
    iget-object v0, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    new-instance v1, Lcom/android/common/appService/a;

    iget-object v2, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/appService/a;-><init>(Lcom/android/common/appService/W;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qh(Lcom/android/common/appService/a;)V

    .line 724
    iget-object v0, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/a;->start()V

    .line 726
    :cond_1d
    iget-object v0, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/a;->hK()V

    .line 721
    return-void
.end method

.method public uV(Z)V
    .registers 6

    .prologue
    .line 677
    iget v0, p0, Lcom/android/common/ui/d;->oU:I

    iget v1, p0, Lcom/android/common/ui/d;->oP:I

    if-ne v0, v1, :cond_7

    return-void

    .line 678
    :cond_7
    iget v0, p0, Lcom/android/common/ui/d;->oP:I

    iput v0, p0, Lcom/android/common/ui/d;->oU:I

    .line 679
    iget v0, p0, Lcom/android/common/ui/d;->oU:I

    sget-object v1, Lcom/android/common/ui/RenderPreference$ActionEvent;->pu:Lcom/android/common/ui/RenderPreference$ActionEvent;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/common/ui/d;->vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V

    .line 680
    iget v0, p0, Lcom/android/common/ui/d;->oA:F

    .line 681
    iget-object v1, p0, Lcom/android/common/ui/d;->oO:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/android/common/ui/d;->oU:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/common/ui/d;->pp:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/common/ui/d;->oA:F

    .line 684
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    iget v0, p0, Lcom/android/common/ui/d;->oA:F

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/d;->pm:Landroid/animation/ValueAnimator;

    .line 685
    iget-object v0, p0, Lcom/android/common/ui/d;->pm:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 686
    iget-object v0, p0, Lcom/android/common/ui/d;->pm:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 687
    iget-object v0, p0, Lcom/android/common/ui/d;->pm:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 676
    return-void
.end method

.method protected uW([II)V
    .registers 7

    .prologue
    .line 448
    sget-boolean v0, Lcom/android/common/ui/d;->oE:Z

    if-nez v0, :cond_5

    return-void

    .line 449
    :cond_5
    const/4 v1, 0x0

    add-int/lit8 v0, p2, -0x1

    :goto_8
    if-ge v1, v0, :cond_17

    .line 450
    aget v2, p1, v1

    .line 451
    aget v3, p1, v0

    aput v3, p1, v1

    .line 452
    aput v2, p1, v0

    .line 449
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 447
    :cond_17
    return-void
.end method

.method protected uX([Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 456
    sget-boolean v0, Lcom/android/common/ui/d;->oE:Z

    if-nez v0, :cond_5

    return-void

    .line 458
    :cond_5
    const/4 v1, 0x0

    add-int/lit8 v0, p2, -0x1

    :goto_8
    if-ge v1, v0, :cond_17

    .line 459
    aget-object v2, p1, v1

    .line 460
    aget-object v3, p1, v0

    aput-object v3, p1, v1

    .line 461
    aput-object v2, p1, v0

    .line 458
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 455
    :cond_17
    return-void
.end method

.method protected uY(I)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 473
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uT()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 474
    iget v0, p0, Lcom/android/common/ui/d;->oU:I

    iget v1, p0, Lcom/android/common/ui/d;->oP:I

    if-eq v0, v1, :cond_13

    .line 475
    iget v0, p0, Lcom/android/common/ui/d;->oP:I

    iput v0, p0, Lcom/android/common/ui/d;->oU:I

    .line 476
    return v3

    .line 478
    :cond_13
    return v2

    .line 480
    :cond_14
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1e

    iget v0, p0, Lcom/android/common/ui/d;->oU:I

    if-eq v0, p1, :cond_1e

    .line 481
    iput p1, p0, Lcom/android/common/ui/d;->oU:I

    .line 482
    return v3

    .line 484
    :cond_1e
    return v2
.end method

.method public uZ(Z)V
    .registers 4

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/android/common/ui/d;->oC:Z

    .line 260
    iget-boolean v0, p0, Lcom/android/common/ui/d;->oC:Z

    if-eqz v0, :cond_e

    .line 261
    iget-object v0, p0, Lcom/android/common/ui/d;->oM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 258
    :goto_d
    return-void

    .line 263
    :cond_e
    iget-object v0, p0, Lcom/android/common/ui/d;->oM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_d
.end method

.method protected un(Z)V
    .registers 7

    .prologue
    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 438
    if-eqz p1, :cond_21

    .line 439
    new-array v0, v0, [F

    aput v1, v0, v3

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/d;->po:Landroid/animation/ValueAnimator;

    .line 443
    :goto_14
    iget-object v0, p0, Lcom/android/common/ui/d;->po:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 444
    iget-object v0, p0, Lcom/android/common/ui/d;->po:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 433
    return-void

    .line 441
    :cond_21
    new-array v0, v0, [F

    aput v2, v0, v3

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/d;->po:Landroid/animation/ValueAnimator;

    goto :goto_14
.end method

.method protected uo(Landroid/graphics/Canvas;Z)V
    .registers 12

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 293
    iget v0, p0, Lcom/android/common/ui/d;->oI:F

    mul-float/2addr v0, v8

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/d;->vf(I)V

    .line 294
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 295
    iget-object v0, p0, Lcom/android/common/ui/d;->oN:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/common/ui/d;->oI:F

    const/high16 v2, 0x42960000    # 75.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 296
    iget-object v1, p0, Lcom/android/common/ui/d;->oL:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/android/common/ui/d;->oM:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 297
    iget-object v1, p0, Lcom/android/common/ui/d;->oL:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    aget v0, v0, v6

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v0, v2

    neg-float v2, v0

    .line 298
    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    aget v0, v0, v6

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/android/common/ui/d;->oN:Landroid/graphics/Paint;

    move-object v0, p1

    .line 297
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/common/ui/d;->up(Landroid/graphics/Canvas;)V

    .line 300
    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    aget v0, v0, v7

    iget-object v1, p0, Lcom/android/common/ui/d;->oO:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    sub-float/2addr v0, v1

    .line 301
    sget v1, Lcom/android/common/ui/d;->os:I

    int-to-float v1, v1

    .line 300
    sub-float v1, v0, v1

    .line 302
    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    aget v0, v0, v6

    neg-float v0, v0

    iget-object v2, p0, Lcom/android/common/ui/d;->oO:[F

    aget v2, v2, v4

    .line 303
    iget-object v3, p0, Lcom/android/common/ui/d;->oO:[F

    aget v3, v3, v7

    .line 302
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 304
    iget-object v0, p0, Lcom/android/common/ui/d;->oQ:[Ljava/lang/String;

    array-length v2, v0

    .line 305
    iget-object v0, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/common/ui/d;->oI:F

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    move v0, v4

    .line 306
    :goto_6b
    if-ge v0, v2, :cond_80

    .line 307
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/common/ui/d;->uu(Landroid/graphics/Canvas;FI)V

    .line 308
    iget v3, p0, Lcom/android/common/ui/d;->pp:F

    iget-object v5, p0, Lcom/android/common/ui/d;->oO:[F

    aget v5, v5, v4

    .line 309
    iget-object v6, p0, Lcom/android/common/ui/d;->oO:[F

    aget v6, v6, v7

    .line 308
    invoke-virtual {p1, v3, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 311
    :cond_80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/common/ui/d;->us(Landroid/graphics/Canvas;)V

    .line 292
    return-void
.end method

.method protected up(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/4 v3, 0x3

    .line 283
    iget v0, p0, Lcom/android/common/ui/d;->oU:I

    iget v1, p0, Lcom/android/common/ui/d;->oP:I

    if-eq v0, v1, :cond_34

    .line 284
    iget-object v0, p0, Lcom/android/common/ui/d;->oN:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/common/ui/d;->oI:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 285
    iget v0, p0, Lcom/android/common/ui/d;->oP:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/common/ui/d;->pp:F

    mul-float/2addr v0, v1

    .line 286
    iget-object v1, p0, Lcom/android/common/ui/d;->oO:[F

    aget v1, v1, v3

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    neg-float v1, v1

    add-float v2, v1, v0

    .line 287
    iget-object v1, p0, Lcom/android/common/ui/d;->oO:[F

    aget v1, v1, v3

    iget v3, p0, Lcom/android/common/ui/d;->oA:F

    add-float/2addr v1, v3

    sub-float v3, v1, v0

    .line 288
    iget-object v1, p0, Lcom/android/common/ui/d;->oL:Landroid/graphics/RectF;

    .line 289
    iget-object v5, p0, Lcom/android/common/ui/d;->oN:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    .line 288
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 282
    :cond_34
    return-void
.end method

.method protected uq(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 365
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 366
    iget-object v0, p0, Lcom/android/common/ui/d;->pm:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 367
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uT()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 368
    iget-object v1, p0, Lcom/android/common/ui/d;->oO:[F

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/common/ui/d;->oO:[F

    aget v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 369
    iget-object v0, p0, Lcom/android/common/ui/d;->pb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 374
    :goto_27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 364
    return-void

    .line 371
    :cond_2b
    iget-object v1, p0, Lcom/android/common/ui/d;->oO:[F

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/common/ui/d;->oO:[F

    aget v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 372
    iget-object v0, p0, Lcom/android/common/ui/d;->pa:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_27
.end method

.method protected ur(Landroid/graphics/Canvas;Z)V
    .registers 7

    .prologue
    .line 346
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 347
    iget v0, p0, Lcom/android/common/ui/d;->oA:F

    iget-object v1, p0, Lcom/android/common/ui/d;->oO:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 348
    iget-object v2, p0, Lcom/android/common/ui/d;->oO:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 347
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 349
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uT()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 350
    iget-object v0, p0, Lcom/android/common/ui/d;->pb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 356
    :goto_1d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 345
    return-void

    .line 351
    :cond_21
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uG()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 352
    iget-object v0, p0, Lcom/android/common/ui/d;->pe:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1d

    .line 354
    :cond_2d
    iget-object v0, p0, Lcom/android/common/ui/d;->pa:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1d
.end method

.method protected us(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/android/common/ui/d;->oF:Z

    if-eqz v0, :cond_5

    return-void

    .line 402
    :cond_5
    iget v0, p0, Lcom/android/common/ui/d;->oA:F

    iget-object v1, p0, Lcom/android/common/ui/d;->oO:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3c

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 403
    :goto_15
    iget-object v1, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 404
    iget-object v0, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/common/ui/d;->oI:F

    const/high16 v2, 0x430a0000    # 138.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 405
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uB()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/ui/d;->oK:Landroid/graphics/Path;

    const/4 v3, 0x0

    const/high16 v4, 0x41f00000    # 30.0f

    iget-object v5, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 406
    iget-object v0, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 400
    return-void

    .line 402
    :cond_3c
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_15
.end method

.method protected ut(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uA()Ljava/lang/String;

    move-result-object v1

    .line 379
    const/high16 v0, 0x3f800000    # 1.0f

    .line 380
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uJ()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 381
    iget-object v0, p0, Lcom/android/common/ui/d;->po:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 384
    :cond_19
    iget-object v2, p0, Lcom/android/common/ui/d;->pi:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 385
    iget-object v2, p0, Lcom/android/common/ui/d;->pi:Landroid/graphics/Paint;

    sget v3, Lcom/android/common/ui/d;->oy:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 386
    iget-object v2, p0, Lcom/android/common/ui/d;->oO:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/common/ui/d;->oO:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    sub-float/2addr v2, v3

    .line 387
    sget v3, Lcom/android/common/ui/HighSettingLayout;->xG:I

    int-to-float v3, v3

    .line 386
    sub-float/2addr v2, v3

    .line 389
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 390
    iget v3, p0, Lcom/android/common/ui/d;->oW:I

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x5a

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/ui/d;->oO:[F

    aget v4, v4, v6

    sget v5, Lcom/android/common/ui/d;->ow:I

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    sub-float v5, v2, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 391
    iget-object v3, p0, Lcom/android/common/ui/d;->oO:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/android/common/ui/d;->pi:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 393
    sget v1, Lcom/android/common/ui/d;->ow:I

    int-to-float v1, v1

    sub-float v1, v2, v1

    .line 394
    iget-object v2, p0, Lcom/android/common/ui/d;->pi:Landroid/graphics/Paint;

    const/high16 v3, 0x430a0000    # 138.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 395
    iget-object v0, p0, Lcom/android/common/ui/d;->pi:Landroid/graphics/Paint;

    sget v2, Lcom/android/common/ui/d;->ox:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 396
    iget-object v0, p0, Lcom/android/common/ui/d;->pj:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/common/ui/d;->oO:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/android/common/ui/d;->pi:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 397
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 376
    return-void
.end method

.method protected uu(Landroid/graphics/Canvas;FI)V
    .registers 10

    .prologue
    const/16 v5, 0x50

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 315
    const/4 v0, 0x0

    .line 316
    iget-object v1, p0, Lcom/android/common/ui/d;->oQ:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_35

    .line 317
    iget-object v0, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/common/ui/d;->oQ:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v2

    .line 321
    :cond_1a
    :goto_1a
    iget v1, p0, Lcom/android/common/ui/d;->oU:I

    if-eq p3, v1, :cond_5d

    .line 322
    iget-object v1, p0, Lcom/android/common/ui/d;->oT:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_44

    .line 323
    iget-object v0, p0, Lcom/android/common/ui/d;->oT:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p3

    iget v1, p0, Lcom/android/common/ui/d;->oI:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 324
    iget-object v0, p0, Lcom/android/common/ui/d;->oT:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 314
    :cond_34
    :goto_34
    return-void

    .line 318
    :cond_35
    if-nez p3, :cond_1a

    .line 319
    iget-object v0, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/common/ui/d;->oQ:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v2

    goto :goto_1a

    .line 326
    :cond_44
    iget-object v1, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/common/ui/d;->oI:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 327
    iget-object v1, p0, Lcom/android/common/ui/d;->oQ:[Ljava/lang/String;

    aget-object v1, v1, p3

    iget-object v2, p0, Lcom/android/common/ui/d;->oO:[F

    aget v2, v2, v3

    sub-float v0, v2, v0

    .line 329
    iget-object v2, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    .line 327
    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_34

    .line 331
    :cond_5d
    iget-boolean v1, p0, Lcom/android/common/ui/d;->oF:Z

    if-eqz v1, :cond_34

    .line 332
    iget-object v1, p0, Lcom/android/common/ui/d;->oT:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_74

    .line 333
    iget-object v0, p0, Lcom/android/common/ui/d;->oT:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 334
    iget-object v0, p0, Lcom/android/common/ui/d;->oT:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_34

    .line 336
    :cond_74
    iget-object v1, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 337
    iget-object v1, p0, Lcom/android/common/ui/d;->oQ:[Ljava/lang/String;

    aget-object v1, v1, p3

    iget-object v2, p0, Lcom/android/common/ui/d;->oO:[F

    aget v2, v2, v3

    sub-float v0, v2, v0

    .line 339
    iget-object v2, p0, Lcom/android/common/ui/d;->ph:Landroid/graphics/Paint;

    .line 337
    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_34
.end method

.method public uv()[F
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    return-object v0
.end method

.method protected uw(F)F
    .registers 4

    .prologue
    .line 268
    iget v0, p0, Lcom/android/common/ui/d;->oB:F

    div-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected ux()I
    .registers 5

    .prologue
    .line 271
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/common/ui/d;->oQ:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 272
    iget v1, p0, Lcom/android/common/ui/d;->oA:F

    iget-object v2, p0, Lcom/android/common/ui/d;->oO:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    add-float/2addr v1, v2

    int-to-float v2, v0

    iget v3, p0, Lcom/android/common/ui/d;->pp:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/common/ui/d;->pp:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_21

    .line 273
    return v0

    .line 271
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    :cond_24
    const/4 v0, -0x1

    return v0
.end method

.method public uy()I
    .registers 2

    .prologue
    .line 252
    iget v0, p0, Lcom/android/common/ui/d;->pg:I

    return v0
.end method

.method protected uz(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vb(Lcom/android/common/ui/HighSettingLayout;)V
    .registers 2

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/common/ui/d;->oX:Lcom/android/common/ui/HighSettingLayout;

    .line 567
    return-void
.end method

.method protected vc(Lcom/android/common/ui/RenderPreference$ActionEvent;)V
    .registers 4

    .prologue
    .line 698
    invoke-static {}, Lcom/android/common/ui/d;->vl()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/common/ui/RenderPreference$ActionEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 697
    :goto_d
    return-void

    .line 700
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/common/ui/d;->vk()V

    goto :goto_d

    .line 703
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/common/ui/d;->uU()V

    goto :goto_d

    .line 706
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/common/ui/d;->vk()V

    goto :goto_d

    .line 698
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_16
        :pswitch_12
    .end packed-switch
.end method

.method public vd(Lcom/android/common/ui/e;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/common/ui/d;->oZ:Lcom/android/common/ui/e;

    .line 115
    return-void
.end method

.method public ve(Z)V
    .registers 4

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/common/ui/d;->oF:Z

    .line 207
    iget-boolean v0, p0, Lcom/android/common/ui/d;->oF:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/common/ui/d;->oC:Z

    if-eqz v0, :cond_11

    .line 208
    iget-object v0, p0, Lcom/android/common/ui/d;->oM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    :cond_11
    return-void
.end method

.method protected vf(I)V
    .registers 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/common/ui/d;->pa:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 361
    iget-object v0, p0, Lcom/android/common/ui/d;->pb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 362
    iget-object v0, p0, Lcom/android/common/ui/d;->pe:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 359
    return-void
.end method

.method protected vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V
    .registers 7

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/common/ui/d;->oY:Lcom/android/common/setting/ListPreference;

    iget-object v1, p0, Lcom/android/common/ui/d;->oR:[Ljava/lang/String;

    iget v2, p0, Lcom/android/common/ui/d;->oU:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 489
    if-eqz p3, :cond_10

    .line 490
    invoke-virtual {p0, p2}, Lcom/android/common/ui/d;->vc(Lcom/android/common/ui/RenderPreference$ActionEvent;)V

    .line 487
    :cond_10
    return-void
.end method

.method public vh(Z)V
    .registers 7

    .prologue
    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 211
    if-eqz p1, :cond_23

    .line 212
    new-array v0, v0, [F

    aput v1, v0, v3

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/d;->oz:Landroid/animation/ValueAnimator;

    .line 219
    :goto_14
    iget-object v0, p0, Lcom/android/common/ui/d;->oz:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 221
    iget-object v0, p0, Lcom/android/common/ui/d;->oz:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 222
    iput-boolean p1, p0, Lcom/android/common/ui/d;->oG:Z

    .line 210
    return-void

    .line 216
    :cond_23
    new-array v0, v0, [F

    aput v2, v0, v3

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/d;->oz:Landroid/animation/ValueAnimator;

    goto :goto_14
.end method

.method protected vi(I)V
    .registers 10

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 409
    add-int/lit16 v1, p1, 0x96

    .line 410
    new-array v0, v7, [F

    const/4 v2, 0x0

    aput v2, v0, v4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/d;->oz:Landroid/animation/ValueAnimator;

    .line 411
    iget-object v0, p0, Lcom/android/common/ui/d;->oz:Landroid/animation/ValueAnimator;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 412
    iget-object v0, p0, Lcom/android/common/ui/d;->oz:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 414
    iget v0, p0, Lcom/android/common/ui/d;->oU:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/common/ui/d;->pp:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/common/ui/d;->oO:[F

    aget v2, v2, v5

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/android/common/ui/d;->oA:F

    .line 415
    new-array v2, v7, [F

    sget-boolean v0, Lcom/android/common/ui/d;->oE:Z

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    aget v0, v0, v5

    :goto_3c
    aput v0, v2, v4

    iget v0, p0, Lcom/android/common/ui/d;->oA:F

    aput v0, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/d;->pm:Landroid/animation/ValueAnimator;

    .line 416
    iget-object v0, p0, Lcom/android/common/ui/d;->pm:Landroid/animation/ValueAnimator;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 417
    iget-object v0, p0, Lcom/android/common/ui/d;->pm:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 419
    invoke-virtual {p0, v4}, Lcom/android/common/ui/d;->vf(I)V

    .line 420
    iget-object v0, p0, Lcom/android/common/ui/d;->oz:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 421
    iget-object v0, p0, Lcom/android/common/ui/d;->pm:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 408
    return-void

    .line 415
    :cond_66
    iget-object v0, p0, Lcom/android/common/ui/d;->oO:[F

    aget v0, v0, v5

    neg-float v0, v0

    goto :goto_3c
.end method

.method protected vj()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lcom/android/common/ui/d;->pm:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 425
    iget-object v0, p0, Lcom/android/common/ui/d;->pm:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 426
    iput-object v1, p0, Lcom/android/common/ui/d;->pm:Landroid/animation/ValueAnimator;

    .line 428
    :cond_c
    iget-object v0, p0, Lcom/android/common/ui/d;->oz:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_17

    .line 429
    iget-object v0, p0, Lcom/android/common/ui/d;->oz:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 430
    iput-object v1, p0, Lcom/android/common/ui/d;->oz:Landroid/animation/ValueAnimator;

    .line 423
    :cond_17
    return-void
.end method

.method protected vk()V
    .registers 4

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 715
    iget-object v0, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    new-instance v1, Lcom/android/common/appService/a;

    iget-object v2, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/appService/a;-><init>(Lcom/android/common/appService/W;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qh(Lcom/android/common/appService/a;)V

    .line 716
    iget-object v0, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/a;->start()V

    .line 718
    :cond_1d
    iget-object v0, p0, Lcom/android/common/ui/d;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/a;->hL()V

    .line 713
    return-void
.end method

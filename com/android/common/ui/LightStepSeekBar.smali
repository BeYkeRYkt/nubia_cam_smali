.class public Lcom/android/common/ui/LightStepSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final AA:I

.field private static final AB:I

.field private static final At:I

.field private static final Au:F

.field private static final Av:F

.field private static final Aw:F

.field private static final Ax:I


# instance fields
.field protected AC:Landroid/animation/ValueAnimator;

.field private AD:Z

.field private AE:I

.field private AF:I

.field private AG:I

.field private AH:Z

.field private AI:[Ljava/lang/CharSequence;

.field private AJ:I

.field private AK:Lcom/android/common/setting/ListPreference;

.field private AL:Landroid/graphics/Paint;

.field private AM:Landroid/graphics/Paint;

.field private AN:Lcom/android/common/ui/ah;

.field private AO:I

.field private Ay:F

.field private Az:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 18
    const/16 v0, 0x22

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/LightStepSeekBar;->Ax:I

    .line 19
    const/16 v0, 0x4c

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/common/ui/LightStepSeekBar;->AA:I

    .line 22
    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/common/ui/LightStepSeekBar;->At:I

    .line 23
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/common/ui/LightStepSeekBar;->Au:F

    .line 25
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/common/ui/LightStepSeekBar;->Aw:F

    .line 26
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/common/ui/LightStepSeekBar;->Av:F

    .line 30
    invoke-static {v3}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    sput v0, Lcom/android/common/ui/LightStepSeekBar;->AB:I

    .line 16
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .prologue
    const/4 v5, 0x2

    const/high16 v0, 0x41a00000    # 20.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v0, p0, Lcom/android/common/ui/LightStepSeekBar;->Ay:F

    .line 32
    iput v0, p0, Lcom/android/common/ui/LightStepSeekBar;->Az:F

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string/jumbo v1, "test"

    aput-object v1, v0, v3

    const-string/jumbo v1, "+1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "+2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "+3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "+4"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AI:[Ljava/lang/CharSequence;

    .line 38
    iput v3, p0, Lcom/android/common/ui/LightStepSeekBar;->AF:I

    .line 39
    sget v0, Lcom/android/common/ui/LightStepSeekBar;->Ax:I

    iput v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AE:I

    .line 40
    iput v3, p0, Lcom/android/common/ui/LightStepSeekBar;->AG:I

    .line 42
    iput v5, p0, Lcom/android/common/ui/LightStepSeekBar;->AJ:I

    .line 47
    iput-boolean v4, p0, Lcom/android/common/ui/LightStepSeekBar;->AH:Z

    .line 49
    iput-boolean v3, p0, Lcom/android/common/ui/LightStepSeekBar;->AD:Z

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AL:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AL:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AL:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AM:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 67
    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AM:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AM:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AM:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    return-void
.end method

.method private EV(I)I
    .registers 4

    .prologue
    .line 175
    sget v0, Lcom/android/common/ui/LightStepSeekBar;->Ax:I

    if-ge p1, v0, :cond_7

    .line 176
    sget p1, Lcom/android/common/ui/LightStepSeekBar;->Ax:I

    .line 180
    :cond_6
    :goto_6
    return p1

    .line 177
    :cond_7
    sget v0, Lcom/android/common/ui/LightStepSeekBar;->Ax:I

    iget v1, p0, Lcom/android/common/ui/LightStepSeekBar;->AF:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_6

    .line 178
    sget v0, Lcom/android/common/ui/LightStepSeekBar;->Ax:I

    iget v1, p0, Lcom/android/common/ui/LightStepSeekBar;->AF:I

    add-int p1, v0, v1

    goto :goto_6
.end method

.method private EW(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AL:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AE:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/common/ui/LightStepSeekBar;->AG:I

    int-to-float v1, v1

    sget v2, Lcom/android/common/ui/LightStepSeekBar;->Aw:F

    iget-object v3, p0, Lcom/android/common/ui/LightStepSeekBar;->AL:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 200
    return-void
.end method

.method private EX(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AL:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    sget v0, Lcom/android/common/ui/LightStepSeekBar;->Ax:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AG:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AE:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AG:I

    int-to-float v4, v0

    .line 197
    iget-object v5, p0, Lcom/android/common/ui/LightStepSeekBar;->AL:Landroid/graphics/Paint;

    move-object v0, p1

    .line 196
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 194
    return-void
.end method

.method private EY(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AL:Landroid/graphics/Paint;

    sget v1, Lcom/android/common/ui/LightStepSeekBar;->AA:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    sget v0, Lcom/android/common/ui/LightStepSeekBar;->Ax:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AG:I

    int-to-float v2, v0

    sget v0, Lcom/android/common/ui/LightStepSeekBar;->Ax:I

    .line 191
    iget v3, p0, Lcom/android/common/ui/LightStepSeekBar;->AF:I

    .line 190
    add-int/2addr v0, v3

    int-to-float v3, v0

    .line 191
    iget v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AG:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/common/ui/LightStepSeekBar;->AL:Landroid/graphics/Paint;

    move-object v0, p1

    .line 190
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 188
    return-void
.end method

.method private EZ(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/common/ui/LightStepSeekBar;->EY(Landroid/graphics/Canvas;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/android/common/ui/LightStepSeekBar;->EX(Landroid/graphics/Canvas;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/common/ui/LightStepSeekBar;->EW(Landroid/graphics/Canvas;)V

    .line 183
    return-void
.end method

.method private Fa(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 219
    :goto_1
    iget-object v1, p0, Lcom/android/common/ui/LightStepSeekBar;->AI:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 220
    const/4 v1, 0x0

    .line 221
    if-nez v0, :cond_29

    .line 222
    iget v1, p0, Lcom/android/common/ui/LightStepSeekBar;->Ay:F

    .line 226
    :cond_b
    :goto_b
    iget-object v2, p0, Lcom/android/common/ui/LightStepSeekBar;->AI:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/common/ui/LightStepSeekBar;->Ax:I

    .line 227
    iget v4, p0, Lcom/android/common/ui/LightStepSeekBar;->AO:I

    .line 226
    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 227
    iget v3, p0, Lcom/android/common/ui/LightStepSeekBar;->AG:I

    sget v4, Lcom/android/common/ui/LightStepSeekBar;->AB:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/ui/LightStepSeekBar;->AM:Landroid/graphics/Paint;

    .line 226
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    :cond_29
    iget-object v2, p0, Lcom/android/common/ui/LightStepSeekBar;->AI:[Ljava/lang/CharSequence;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_b

    .line 224
    iget v1, p0, Lcom/android/common/ui/LightStepSeekBar;->Az:F

    neg-float v1, v1

    goto :goto_b

    .line 218
    :cond_34
    return-void
.end method

.method private Fb(I)I
    .registers 6

    .prologue
    .line 158
    iget v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AO:I

    shr-int/lit8 v1, v0, 0x1

    .line 159
    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Lcom/android/common/ui/LightStepSeekBar;->AI:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_1c

    .line 160
    iget v2, p0, Lcom/android/common/ui/LightStepSeekBar;->AO:I

    mul-int/2addr v2, v0

    sub-int v2, p1, v2

    sget v3, Lcom/android/common/ui/LightStepSeekBar;->Ax:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 161
    if-ge v2, v1, :cond_19

    .line 162
    return v0

    .line 159
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 165
    :cond_1c
    iget v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AJ:I

    return v0
.end method

.method private Fc(I)I
    .registers 4

    .prologue
    .line 150
    iget v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AO:I

    mul-int/2addr v0, p1

    sget v1, Lcom/android/common/ui/LightStepSeekBar;->Ax:I

    add-int/2addr v0, v1

    return v0
.end method

.method private Fe()Z
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AC:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AC:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 232
    const/4 v0, 0x1

    return v0

    .line 234
    :cond_e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public Fd(Lcom/android/common/setting/ListPreference;Z)V
    .registers 9

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 73
    iput-object p1, p0, Lcom/android/common/ui/LightStepSeekBar;->AK:Lcom/android/common/setting/ListPreference;

    .line 74
    invoke-virtual {p1}, Lcom/android/common/setting/ListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AI:[Ljava/lang/CharSequence;

    .line 75
    invoke-virtual {p1}, Lcom/android/common/setting/ListPreference;->Vz()I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AJ:I

    .line 76
    iput-boolean p2, p0, Lcom/android/common/ui/LightStepSeekBar;->AH:Z

    .line 77
    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AM:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/common/ui/LightStepSeekBar;->AI:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/common/ui/LightStepSeekBar;->AI:[Ljava/lang/CharSequence;

    aget-object v2, v2, v4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/android/common/ui/LightStepSeekBar;->Ay:F

    .line 78
    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AI:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 79
    iget-object v1, p0, Lcom/android/common/ui/LightStepSeekBar;->AM:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/common/ui/LightStepSeekBar;->AI:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/common/ui/LightStepSeekBar;->AI:[Ljava/lang/CharSequence;

    aget-object v0, v3, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, v2, v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/android/common/ui/LightStepSeekBar;->Az:F

    .line 72
    return-void
.end method

.method public Ff(Lcom/android/common/ui/ah;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/common/ui/LightStepSeekBar;->AN:Lcom/android/common/ui/ah;

    .line 55
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 105
    invoke-virtual {p0}, Lcom/android/common/ui/LightStepSeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    if-eq v0, v2, :cond_f

    .line 106
    return v3

    .line 108
    :cond_f
    packed-switch v0, :pswitch_data_66

    .line 136
    :cond_12
    :goto_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_18

    .line 141
    :cond_18
    invoke-virtual {p0}, Lcom/android/common/ui/LightStepSeekBar;->invalidate()V

    .line 142
    return v2

    .line 112
    :pswitch_1c
    iput-boolean v3, p0, Lcom/android/common/ui/LightStepSeekBar;->AD:Z

    .line 113
    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AN:Lcom/android/common/ui/ah;

    if-eqz v0, :cond_29

    .line 114
    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AN:Lcom/android/common/ui/ah;

    iget v1, p0, Lcom/android/common/ui/LightStepSeekBar;->AJ:I

    invoke-interface {v0, v1}, Lcom/android/common/ui/ah;->Fg(I)V

    .line 116
    :cond_29
    iget v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AJ:I

    invoke-direct {p0, v0}, Lcom/android/common/ui/LightStepSeekBar;->Fc(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AE:I

    goto :goto_12

    .line 119
    :pswitch_32
    iput-boolean v2, p0, Lcom/android/common/ui/LightStepSeekBar;->AD:Z

    .line 122
    :pswitch_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/LightStepSeekBar;->EV(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AE:I

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/LightStepSeekBar;->Fb(I)I

    move-result v0

    .line 124
    iget v1, p0, Lcom/android/common/ui/LightStepSeekBar;->AJ:I

    if-eq v0, v1, :cond_12

    .line 125
    iput v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AJ:I

    .line 126
    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AK:Lcom/android/common/setting/ListPreference;

    iget v1, p0, Lcom/android/common/ui/LightStepSeekBar;->AJ:I

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vt(I)V

    .line 127
    iget-boolean v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AH:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AN:Lcom/android/common/ui/ah;

    if-eqz v0, :cond_12

    .line 128
    iget-object v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AN:Lcom/android/common/ui/ah;

    iget v1, p0, Lcom/android/common/ui/LightStepSeekBar;->AJ:I

    invoke-interface {v0, v1}, Lcom/android/common/ui/ah;->Fg(I)V

    goto :goto_12

    .line 108
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_32
        :pswitch_1c
        :pswitch_34
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/android/common/ui/LightStepSeekBar;->EZ(Landroid/graphics/Canvas;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/android/common/ui/LightStepSeekBar;->Fa(Landroid/graphics/Canvas;)V

    .line 97
    invoke-direct {p0}, Lcom/android/common/ui/LightStepSeekBar;->Fe()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 98
    invoke-virtual {p0}, Lcom/android/common/ui/LightStepSeekBar;->invalidate()V

    .line 93
    :cond_12
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .prologue
    .line 85
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 86
    sub-int v0, p4, p2

    sget v1, Lcom/android/common/ui/LightStepSeekBar;->Ax:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AF:I

    .line 87
    iget v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AF:I

    iget-object v1, p0, Lcom/android/common/ui/LightStepSeekBar;->AI:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AO:I

    .line 88
    sub-int v0, p5, p3

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AG:I

    .line 89
    iget v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AJ:I

    invoke-direct {p0, v0}, Lcom/android/common/ui/LightStepSeekBar;->Fc(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/LightStepSeekBar;->AE:I

    .line 84
    return-void
.end method

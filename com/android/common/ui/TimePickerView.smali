.class public Lcom/android/common/ui/TimePickerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private rN:Lcom/android/common/ui/nubiaWheelView;

.field private rO:Lcom/android/common/ui/nubiaWheelView;

.field rP:Landroid/graphics/Paint;

.field private rQ:Lcom/android/common/ui/nubiaWheelView;

.field private rR:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/TimePickerView;->rP:Landroid/graphics/Paint;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    const/16 v4, 0x3b

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/TimePickerView;->rP:Landroid/graphics/Paint;

    .line 41
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 42
    const v1, 0x7f04004f

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    const/16 v0, 0x88

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/TimePickerView;->setBackgroundColor(I)V

    .line 44
    const v0, 0x7f100134

    invoke-virtual {p0, v0}, Lcom/android/common/ui/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/nubiaWheelView;

    iput-object v0, p0, Lcom/android/common/ui/TimePickerView;->rN:Lcom/android/common/ui/nubiaWheelView;

    .line 45
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rN:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/nubiaWheelView;->wb(I)V

    .line 46
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rN:Lcom/android/common/ui/nubiaWheelView;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wc(I)V

    .line 48
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rN:Lcom/android/common/ui/nubiaWheelView;

    new-instance v1, Lcom/android/common/ui/av;

    invoke-direct {v1, p0}, Lcom/android/common/ui/av;-><init>(Lcom/android/common/ui/TimePickerView;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wd(Lcom/android/common/ui/o;)V

    .line 55
    const v0, 0x7f100135

    invoke-virtual {p0, v0}, Lcom/android/common/ui/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/nubiaWheelView;

    iput-object v0, p0, Lcom/android/common/ui/TimePickerView;->rO:Lcom/android/common/ui/nubiaWheelView;

    .line 56
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rO:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/nubiaWheelView;->wb(I)V

    .line 57
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rO:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0, v4}, Lcom/android/common/ui/nubiaWheelView;->wc(I)V

    .line 59
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rO:Lcom/android/common/ui/nubiaWheelView;

    new-instance v1, Lcom/android/common/ui/aw;

    invoke-direct {v1, p0}, Lcom/android/common/ui/aw;-><init>(Lcom/android/common/ui/TimePickerView;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wd(Lcom/android/common/ui/o;)V

    .line 66
    const v0, 0x7f100136

    invoke-virtual {p0, v0}, Lcom/android/common/ui/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/nubiaWheelView;

    iput-object v0, p0, Lcom/android/common/ui/TimePickerView;->rQ:Lcom/android/common/ui/nubiaWheelView;

    .line 67
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rQ:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/nubiaWheelView;->wb(I)V

    .line 68
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rQ:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0, v4}, Lcom/android/common/ui/nubiaWheelView;->wc(I)V

    .line 70
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rQ:Lcom/android/common/ui/nubiaWheelView;

    new-instance v1, Lcom/android/common/ui/ax;

    invoke-direct {v1, p0}, Lcom/android/common/ui/ax;-><init>(Lcom/android/common/ui/TimePickerView;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wd(Lcom/android/common/ui/o;)V

    .line 78
    const v0, 0x7f100133

    invoke-virtual {p0, v0}, Lcom/android/common/ui/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/common/ui/TimePickerView;->rR:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rR:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/TimePickerView;->rP:Landroid/graphics/Paint;

    .line 34
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rO:Lcom/android/common/ui/nubiaWheelView;

    if-eqz v0, :cond_35

    .line 88
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rR:Landroid/widget/ImageView;

    if-nez v0, :cond_36

    const/4 v0, 0x0

    .line 89
    :goto_c
    iget-object v1, p0, Lcom/android/common/ui/TimePickerView;->rO:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v1}, Lcom/android/common/ui/nubiaWheelView;->we()I

    move-result v1

    add-int v2, v1, v0

    .line 90
    iget-object v1, p0, Lcom/android/common/ui/TimePickerView;->rO:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v1}, Lcom/android/common/ui/nubiaWheelView;->wf()I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    iget-object v1, p0, Lcom/android/common/ui/TimePickerView;->rP:Landroid/graphics/Paint;

    const-string/jumbo v3, "#90000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    const/4 v1, 0x0

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/common/ui/TimePickerView;->getRight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/common/ui/TimePickerView;->rP:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 85
    :cond_35
    return-void

    .line 88
    :cond_36
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rR:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/TimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_c
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .prologue
    .line 193
    check-cast p1, Lcom/android/common/ui/TimePickerView$SaveState;

    .line 194
    invoke-virtual {p1}, Lcom/android/common/ui/TimePickerView$SaveState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 195
    invoke-virtual {p1}, Lcom/android/common/ui/TimePickerView$SaveState;->wR()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/TimePickerView;->wO(Ljava/lang/Integer;)V

    .line 196
    invoke-virtual {p1}, Lcom/android/common/ui/TimePickerView$SaveState;->wS()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/TimePickerView;->wP(Ljava/lang/Integer;)V

    .line 197
    invoke-virtual {p1}, Lcom/android/common/ui/TimePickerView$SaveState;->wT()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/TimePickerView;->wQ(Ljava/lang/Integer;)V

    .line 191
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .prologue
    .line 202
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 203
    new-instance v0, Lcom/android/common/ui/TimePickerView$SaveState;

    invoke-virtual {p0}, Lcom/android/common/ui/TimePickerView;->wL()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/common/ui/TimePickerView;->wM()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/common/ui/TimePickerView;->wN()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/common/ui/TimePickerView$SaveState;-><init>(Landroid/os/Parcelable;IIILcom/android/common/ui/TimePickerView$SaveState;)V

    return-object v0
.end method

.method public wL()I
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rN:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0}, Lcom/android/common/ui/nubiaWheelView;->wg()I

    move-result v0

    .line 150
    return v0
.end method

.method public wM()I
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rO:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0}, Lcom/android/common/ui/nubiaWheelView;->wg()I

    move-result v0

    .line 155
    return v0
.end method

.method public wN()I
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rQ:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0}, Lcom/android/common/ui/nubiaWheelView;->wg()I

    move-result v0

    .line 160
    return v0
.end method

.method public wO(Ljava/lang/Integer;)V
    .registers 4

    .prologue
    .line 164
    if-nez p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/TimePickerView;->wL()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 165
    return-void

    .line 167
    :cond_d
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rN:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wh(I)V

    .line 168
    return-void
.end method

.method public wP(Ljava/lang/Integer;)V
    .registers 4

    .prologue
    .line 172
    if-nez p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/TimePickerView;->wM()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 173
    return-void

    .line 175
    :cond_d
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rO:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wh(I)V

    .line 176
    return-void
.end method

.method public wQ(Ljava/lang/Integer;)V
    .registers 4

    .prologue
    .line 180
    if-nez p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/TimePickerView;->wN()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 181
    return-void

    .line 183
    :cond_d
    iget-object v0, p0, Lcom/android/common/ui/TimePickerView;->rQ:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wh(I)V

    .line 184
    return-void
.end method

.class public Lcom/android/common/ui/IntervalTimeSettingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private nV:Lcom/android/common/ui/a;

.field private nW:Landroid/graphics/Paint;

.field private nX:Lcom/android/common/ui/nubiaWheelView;

.field private nY:Lcom/android/common/ui/nubiaWheelView;

.field private nZ:Lcom/android/common/ui/nubiaWheelView;

.field private oa:Lcom/android/common/ui/nubiaWheelView;

.field private ob:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nW:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nW:Landroid/graphics/Paint;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nW:Landroid/graphics/Paint;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nW:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nW:Landroid/graphics/Paint;

    .line 36
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nY:Lcom/android/common/ui/nubiaWheelView;

    if-eqz v0, :cond_35

    .line 108
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->ob:Landroid/widget/ImageView;

    if-nez v0, :cond_36

    const/4 v0, 0x0

    .line 109
    :goto_c
    iget-object v1, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nY:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v1}, Lcom/android/common/ui/nubiaWheelView;->we()I

    move-result v1

    add-int v2, v1, v0

    .line 110
    iget-object v1, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nY:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v1}, Lcom/android/common/ui/nubiaWheelView;->wf()I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    iget-object v1, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nW:Landroid/graphics/Paint;

    const-string/jumbo v3, "#90000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    const/4 v1, 0x0

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/common/ui/IntervalTimeSettingView;->getRight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nW:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 105
    :cond_35
    return-void

    .line 108
    :cond_36
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->ob:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/IntervalTimeSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_c
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 86
    const/16 v0, 0x88

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/IntervalTimeSettingView;->setBackgroundColor(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/common/ui/IntervalTimeSettingView;->ub()V

    .line 83
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .prologue
    .line 191
    check-cast p1, Lcom/android/common/ui/IntervalTimeSettingView$SaveState;

    .line 192
    invoke-virtual {p1}, Lcom/android/common/ui/IntervalTimeSettingView$SaveState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 193
    invoke-virtual {p1}, Lcom/android/common/ui/IntervalTimeSettingView$SaveState;->ug()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/IntervalTimeSettingView;->ud(Ljava/lang/Integer;)V

    .line 194
    invoke-virtual {p1}, Lcom/android/common/ui/IntervalTimeSettingView$SaveState;->uh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/IntervalTimeSettingView;->ue(Ljava/lang/Integer;)V

    .line 189
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .prologue
    .line 199
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/android/common/ui/IntervalTimeSettingView$SaveState;

    invoke-virtual {p0}, Lcom/android/common/ui/IntervalTimeSettingView;->tZ()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/common/ui/IntervalTimeSettingView;->ua()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/common/ui/IntervalTimeSettingView$SaveState;-><init>(Landroid/os/Parcelable;IILcom/android/common/ui/IntervalTimeSettingView$SaveState;)V

    return-object v1
.end method

.method public tZ()I
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nX:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0}, Lcom/android/common/ui/nubiaWheelView;->wg()I

    move-result v0

    .line 157
    return v0
.end method

.method public ua()I
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nY:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0}, Lcom/android/common/ui/nubiaWheelView;->wg()I

    move-result v0

    .line 162
    return v0
.end method

.method public ub()V
    .registers 7

    .prologue
    const/16 v5, 0x3b

    const/16 v4, 0x17

    const v3, 0x7f0d004e

    const/4 v2, 0x0

    .line 46
    const v0, 0x7f100155

    invoke-virtual {p0, v0}, Lcom/android/common/ui/IntervalTimeSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/nubiaWheelView;

    iput-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nX:Lcom/android/common/ui/nubiaWheelView;

    .line 47
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nX:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {p0}, Lcom/android/common/ui/IntervalTimeSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wa(I)V

    .line 48
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nX:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/nubiaWheelView;->wb(I)V

    .line 49
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nX:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0, v4}, Lcom/android/common/ui/nubiaWheelView;->wc(I)V

    .line 51
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nX:Lcom/android/common/ui/nubiaWheelView;

    new-instance v1, Lcom/android/common/ui/ap;

    invoke-direct {v1, p0}, Lcom/android/common/ui/ap;-><init>(Lcom/android/common/ui/IntervalTimeSettingView;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wd(Lcom/android/common/ui/o;)V

    .line 58
    const v0, 0x7f100156

    invoke-virtual {p0, v0}, Lcom/android/common/ui/IntervalTimeSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/nubiaWheelView;

    iput-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nY:Lcom/android/common/ui/nubiaWheelView;

    .line 59
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nY:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {p0}, Lcom/android/common/ui/IntervalTimeSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wa(I)V

    .line 60
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nY:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/nubiaWheelView;->wb(I)V

    .line 61
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nY:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0, v5}, Lcom/android/common/ui/nubiaWheelView;->wc(I)V

    .line 63
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nY:Lcom/android/common/ui/nubiaWheelView;

    new-instance v1, Lcom/android/common/ui/aq;

    invoke-direct {v1, p0}, Lcom/android/common/ui/aq;-><init>(Lcom/android/common/ui/IntervalTimeSettingView;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wd(Lcom/android/common/ui/o;)V

    .line 71
    const v0, 0x7f100157

    invoke-virtual {p0, v0}, Lcom/android/common/ui/IntervalTimeSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/nubiaWheelView;

    iput-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nZ:Lcom/android/common/ui/nubiaWheelView;

    .line 72
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nZ:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {p0}, Lcom/android/common/ui/IntervalTimeSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wa(I)V

    .line 73
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nZ:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/nubiaWheelView;->wb(I)V

    .line 74
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nZ:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0, v4}, Lcom/android/common/ui/nubiaWheelView;->wc(I)V

    .line 76
    const v0, 0x7f100158

    invoke-virtual {p0, v0}, Lcom/android/common/ui/IntervalTimeSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/nubiaWheelView;

    iput-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->oa:Lcom/android/common/ui/nubiaWheelView;

    .line 77
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->oa:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {p0}, Lcom/android/common/ui/IntervalTimeSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wa(I)V

    .line 78
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->oa:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/nubiaWheelView;->wb(I)V

    .line 79
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->oa:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {v0, v5}, Lcom/android/common/ui/nubiaWheelView;->wc(I)V

    .line 45
    return-void
.end method

.method public uc()V
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nV:Lcom/android/common/ui/a;

    if-eqz v0, :cond_11

    .line 118
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nV:Lcom/android/common/ui/a;

    invoke-virtual {p0}, Lcom/android/common/ui/IntervalTimeSettingView;->tZ()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/common/ui/IntervalTimeSettingView;->ua()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/common/ui/a;->uf(Lcom/android/common/ui/IntervalTimeSettingView;II)V

    .line 116
    :cond_11
    return-void
.end method

.method public ud(Ljava/lang/Integer;)V
    .registers 4

    .prologue
    .line 166
    if-nez p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/IntervalTimeSettingView;->tZ()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 167
    return-void

    .line 169
    :cond_d
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nX:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wh(I)V

    .line 170
    return-void
.end method

.method public ue(Ljava/lang/Integer;)V
    .registers 4

    .prologue
    .line 174
    if-nez p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/IntervalTimeSettingView;->ua()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 175
    return-void

    .line 177
    :cond_d
    iget-object v0, p0, Lcom/android/common/ui/IntervalTimeSettingView;->nY:Lcom/android/common/ui/nubiaWheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wh(I)V

    .line 178
    return-void
.end method

.class public Lcom/android/camera/c/c;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private anA:Lcom/android/common/appService/W;

.field private anB:I

.field private anC:I

.field private anD:I

.field private anE:I

.field private anF:I

.field private anG:I

.field private anH:I

.field private anI:I

.field private anJ:[Landroid/view/View;

.field anK:Landroid/view/View$OnClickListener;

.field private anL:I

.field private anM:I

.field private anN:I

.field private anO:I

.field private anP:I

.field private anQ:I

.field private anR:I

.field private anS:I

.field private anv:I

.field private anw:I

.field private anx:I

.field any:I

.field private anz:Lcom/android/camera/c/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/view/View;Lcom/android/common/appService/W;I)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0d009f

    const v2, 0x7f0d004e

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/c/c;->anE:I

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anF:I

    .line 22
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anD:I

    .line 24
    iput v1, p0, Lcom/android/camera/c/c;->anx:I

    .line 25
    iput v1, p0, Lcom/android/camera/c/c;->anS:I

    .line 26
    iput v1, p0, Lcom/android/camera/c/c;->anR:I

    .line 27
    iput v1, p0, Lcom/android/camera/c/c;->anv:I

    .line 28
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anQ:I

    .line 29
    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anP:I

    .line 30
    iput v1, p0, Lcom/android/camera/c/c;->anw:I

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anN:I

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anI:I

    .line 38
    iput v1, p0, Lcom/android/camera/c/c;->any:I

    .line 40
    iput-object v4, p0, Lcom/android/camera/c/c;->anA:Lcom/android/common/appService/W;

    .line 41
    iput-object v4, p0, Lcom/android/camera/c/c;->anz:Lcom/android/camera/c/d;

    .line 142
    new-instance v0, Lcom/android/camera/c/g;

    invoke-direct {v0, p0}, Lcom/android/camera/c/g;-><init>(Lcom/android/camera/c/c;)V

    iput-object v0, p0, Lcom/android/camera/c/c;->anK:Landroid/view/View$OnClickListener;

    .line 166
    iput v1, p0, Lcom/android/camera/c/c;->anL:I

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/camera/c/c;->setWillNotDraw(Z)V

    .line 46
    iput-object p3, p0, Lcom/android/camera/c/c;->anA:Lcom/android/common/appService/W;

    .line 47
    invoke-virtual {p0, p4}, Lcom/android/camera/c/c;->setOrientation(I)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/android/camera/c/c;->azp([Landroid/view/View;)V

    .line 43
    return-void
.end method

.method private azq()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private azr(I)V
    .registers 6

    .prologue
    const/16 v2, 0xf

    const/4 v0, 0x4

    .line 174
    if-eqz p1, :cond_9

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_4e

    .line 175
    :cond_9
    iget-object v1, p0, Lcom/android/camera/c/c;->anJ:[Landroid/view/View;

    array-length v1, v1

    if-gt v1, v2, :cond_f

    const/4 v0, 0x3

    :cond_f
    iput v0, p0, Lcom/android/camera/c/c;->anE:I

    .line 176
    iget v0, p0, Lcom/android/camera/c/c;->anN:I

    .line 177
    iget v1, p0, Lcom/android/camera/c/c;->anO:I

    iput v1, p0, Lcom/android/camera/c/c;->anF:I

    .line 178
    iget v1, p0, Lcom/android/camera/c/c;->anM:I

    iput v1, p0, Lcom/android/camera/c/c;->anD:I

    .line 186
    :goto_1b
    iget v1, p0, Lcom/android/camera/c/c;->anQ:I

    iget v2, p0, Lcom/android/camera/c/c;->anE:I

    iget v3, p0, Lcom/android/camera/c/c;->anF:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/c/c;->anx:I

    .line 187
    iget-object v1, p0, Lcom/android/camera/c/c;->anJ:[Landroid/view/View;

    array-length v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/c/c;->anE:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p0, Lcom/android/camera/c/c;->anD:I

    mul-int/2addr v1, v2

    .line 188
    iget v2, p0, Lcom/android/camera/c/c;->anP:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/c/c;->anS:I

    .line 189
    iget v0, p0, Lcom/android/camera/c/c;->anS:I

    iput v0, p0, Lcom/android/camera/c/c;->anR:I

    .line 190
    iget v0, p0, Lcom/android/camera/c/c;->anS:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/c/c;->anv:I

    .line 191
    iget v0, p0, Lcom/android/camera/c/c;->anQ:I

    iput v0, p0, Lcom/android/camera/c/c;->anw:I

    .line 172
    return-void

    .line 180
    :cond_4e
    iget-object v1, p0, Lcom/android/camera/c/c;->anJ:[Landroid/view/View;

    array-length v1, v1

    if-gt v1, v2, :cond_60

    :goto_53
    iput v0, p0, Lcom/android/camera/c/c;->anE:I

    .line 181
    iget v0, p0, Lcom/android/camera/c/c;->anI:I

    .line 182
    iget v1, p0, Lcom/android/camera/c/c;->anH:I

    iput v1, p0, Lcom/android/camera/c/c;->anF:I

    .line 183
    iget v1, p0, Lcom/android/camera/c/c;->anG:I

    iput v1, p0, Lcom/android/camera/c/c;->anD:I

    goto :goto_1b

    .line 180
    :cond_60
    const/4 v0, 0x5

    goto :goto_53
.end method

.method static synthetic azs(Lcom/android/camera/c/c;)Lcom/android/camera/c/d;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/c/c;->anz:Lcom/android/camera/c/d;

    return-object v0
.end method


# virtual methods
.method public azo(Lcom/android/camera/c/d;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/c/c;->anz:Lcom/android/camera/c/d;

    .line 90
    return-void
.end method

.method public azp([Landroid/view/View;)V
    .registers 9

    .prologue
    const v6, 0x7f0d009a

    const v5, 0x7f0d008d

    const/16 v4, 0xc

    const v3, 0x7f0d009f

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/c/c;->removeAllViews()V

    .line 53
    iput-object p1, p0, Lcom/android/camera/c/c;->anJ:[Landroid/view/View;

    .line 54
    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Lcom/android/camera/c/c;->anJ:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 55
    iget-object v1, p0, Lcom/android/camera/c/c;->anJ:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/camera/c/c;->addView(Landroid/view/View;)V

    .line 56
    iget-object v1, p0, Lcom/android/camera/c/c;->anJ:[Landroid/view/View;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/c/c;->anK:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 60
    :cond_29
    iget-object v0, p0, Lcom/android/camera/c/c;->anJ:[Landroid/view/View;

    array-length v0, v0

    if-gt v0, v4, :cond_7f

    .line 61
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anN:I

    .line 62
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anI:I

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anH:I

    iput v0, p0, Lcom/android/camera/c/c;->anO:I

    iput v0, p0, Lcom/android/camera/c/c;->anF:I

    .line 64
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anG:I

    iput v0, p0, Lcom/android/camera/c/c;->anM:I

    iput v0, p0, Lcom/android/camera/c/c;->anD:I

    .line 82
    :goto_64
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anB:I

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anC:I

    .line 51
    return-void

    .line 66
    :cond_7f
    iget-object v0, p0, Lcom/android/camera/c/c;->anJ:[Landroid/view/View;

    array-length v0, v0

    if-le v0, v4, :cond_c5

    iget-object v0, p0, Lcom/android/camera/c/c;->anJ:[Landroid/view/View;

    array-length v0, v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_c5

    .line 67
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anN:I

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anI:I

    .line 69
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anH:I

    iput v0, p0, Lcom/android/camera/c/c;->anO:I

    iput v0, p0, Lcom/android/camera/c/c;->anF:I

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anG:I

    iput v0, p0, Lcom/android/camera/c/c;->anM:I

    iput v0, p0, Lcom/android/camera/c/c;->anD:I

    goto :goto_64

    .line 72
    :cond_c5
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anI:I

    .line 73
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anN:I

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anO:I

    .line 75
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anM:I

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anH:I

    .line 77
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/c/c;->anG:I

    .line 79
    iget v0, p0, Lcom/android/camera/c/c;->anO:I

    iput v0, p0, Lcom/android/camera/c/c;->anF:I

    .line 80
    iget v0, p0, Lcom/android/camera/c/c;->anM:I

    iput v0, p0, Lcom/android/camera/c/c;->anD:I

    goto/16 :goto_64
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 163
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 155
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/camera/c/c;->anR:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_22

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/camera/c/c;->anv:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 157
    :cond_22
    const/4 v0, 0x0

    return v0

    .line 153
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 13

    .prologue
    .line 100
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/camera/c/c;->anQ:I

    .line 101
    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/camera/c/c;->anP:I

    .line 102
    iget v0, p0, Lcom/android/camera/c/c;->anF:I

    sub-int v0, p4, v0

    iput v0, p0, Lcom/android/camera/c/c;->any:I

    .line 103
    iget v0, p0, Lcom/android/camera/c/c;->anL:I

    invoke-direct {p0, v0}, Lcom/android/camera/c/c;->azr(I)V

    .line 104
    const/4 v0, 0x0

    :goto_14
    iget-object v1, p0, Lcom/android/camera/c/c;->anJ:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_4f

    .line 105
    iget-object v1, p0, Lcom/android/camera/c/c;->anJ:[Landroid/view/View;

    aget-object v1, v1, v0

    .line 106
    iget v2, p0, Lcom/android/camera/c/c;->anE:I

    rem-int v2, v0, v2

    iget v3, p0, Lcom/android/camera/c/c;->anF:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/c/c;->anx:I

    add-int/2addr v2, v3

    .line 107
    iget v3, p0, Lcom/android/camera/c/c;->anE:I

    div-int v3, v0, v3

    iget v4, p0, Lcom/android/camera/c/c;->anD:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/c/c;->anS:I

    add-int/2addr v3, v4

    .line 108
    iget v4, p0, Lcom/android/camera/c/c;->anF:I

    add-int/2addr v4, v2

    .line 109
    iget v5, p0, Lcom/android/camera/c/c;->anD:I

    add-int/2addr v5, v3

    .line 111
    invoke-direct {p0}, Lcom/android/camera/c/c;->azq()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 112
    iget v6, p0, Lcom/android/camera/c/c;->anQ:I

    sub-int v4, v6, v4

    iget v6, p0, Lcom/android/camera/c/c;->anQ:I

    sub-int v2, v6, v2

    invoke-virtual {v1, v4, v3, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 104
    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 114
    :cond_4b
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_48

    .line 99
    :cond_4f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/high16 v5, -0x80000000

    .line 121
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 122
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 124
    iget v1, p0, Lcom/android/camera/c/c;->anL:I

    invoke-direct {p0, v1}, Lcom/android/camera/c/c;->azr(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/c/c;->getChildCount()I

    move-result v2

    move v1, v0

    .line 127
    :goto_13
    if-ge v1, v2, :cond_51

    .line 128
    invoke-virtual {p0, v1}, Lcom/android/camera/c/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 129
    iget v3, p0, Lcom/android/camera/c/c;->anF:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/android/camera/c/c;->anD:I

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 130
    iget-object v3, p0, Lcom/android/camera/c/c;->anJ:[Landroid/view/View;

    array-length v3, v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_47

    .line 131
    const v3, 0x7f100063

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    iget v3, p0, Lcom/android/camera/c/c;->anL:I

    if-eqz v3, :cond_42

    iget v3, p0, Lcom/android/camera/c/c;->anL:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_4b

    .line 133
    :cond_42
    iget v3, p0, Lcom/android/camera/c/c;->anB:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 127
    :cond_47
    :goto_47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 135
    :cond_4b
    iget v3, p0, Lcom/android/camera/c/c;->anC:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_47

    .line 139
    :cond_51
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/c/c;->setMeasuredDimension(II)V

    .line 120
    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .prologue
    .line 168
    iput p1, p0, Lcom/android/camera/c/c;->anL:I

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/c/c;->requestLayout()V

    .line 167
    return-void
.end method

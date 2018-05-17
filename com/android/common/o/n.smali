.class public Lcom/android/common/o/n;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/e/h;
.implements Lcom/android/common/p;
.implements Lcom/android/common/appService/p;


# instance fields
.field private adH:Lcom/android/common/ui/X;

.field private adI:Lcom/android/common/ui/i;

.field private adJ:Lcom/android/common/ui/F;

.field private adK:Lcom/android/common/ui/an;

.field private adL:Lcom/android/common/ui/F;

.field private adM:Lcom/android/common/ui/X;

.field private adN:Lcom/android/common/ui/RotateImageView;

.field private adO:Landroid/widget/RelativeLayout;

.field private adP:Landroid/widget/RelativeLayout;

.field private adQ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/common/o/n;->adQ:Ljava/util/ArrayList;

    .line 50
    iput-object v0, p0, Lcom/android/common/o/n;->adI:Lcom/android/common/ui/i;

    .line 51
    iput-object v0, p0, Lcom/android/common/o/n;->adK:Lcom/android/common/ui/an;

    .line 52
    iput-object v0, p0, Lcom/android/common/o/n;->adM:Lcom/android/common/ui/X;

    .line 53
    iput-object v0, p0, Lcom/android/common/o/n;->adH:Lcom/android/common/ui/X;

    .line 54
    iput-object v0, p0, Lcom/android/common/o/n;->adJ:Lcom/android/common/ui/F;

    .line 55
    iput-object v0, p0, Lcom/android/common/o/n;->adN:Lcom/android/common/ui/RotateImageView;

    .line 56
    iput-object v0, p0, Lcom/android/common/o/n;->adL:Lcom/android/common/ui/F;

    .line 58
    iput-object v0, p0, Lcom/android/common/o/n;->adO:Landroid/widget/RelativeLayout;

    .line 59
    iput-object v0, p0, Lcom/android/common/o/n;->adP:Landroid/widget/RelativeLayout;

    .line 61
    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 49
    iput-object v0, p0, Lcom/android/common/o/n;->adQ:Ljava/util/ArrayList;

    .line 50
    iput-object v0, p0, Lcom/android/common/o/n;->adI:Lcom/android/common/ui/i;

    .line 51
    iput-object v0, p0, Lcom/android/common/o/n;->adK:Lcom/android/common/ui/an;

    .line 52
    iput-object v0, p0, Lcom/android/common/o/n;->adM:Lcom/android/common/ui/X;

    .line 53
    iput-object v0, p0, Lcom/android/common/o/n;->adH:Lcom/android/common/ui/X;

    .line 54
    iput-object v0, p0, Lcom/android/common/o/n;->adJ:Lcom/android/common/ui/F;

    .line 55
    iput-object v0, p0, Lcom/android/common/o/n;->adN:Lcom/android/common/ui/RotateImageView;

    .line 56
    iput-object v0, p0, Lcom/android/common/o/n;->adL:Lcom/android/common/ui/F;

    .line 58
    iput-object v0, p0, Lcom/android/common/o/n;->adO:Landroid/widget/RelativeLayout;

    .line 59
    iput-object v0, p0, Lcom/android/common/o/n;->adP:Landroid/widget/RelativeLayout;

    .line 67
    iput-object p2, p0, Lcom/android/common/o/n;->adQ:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method public static alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;
    .registers 3

    .prologue
    .line 170
    new-instance v0, Lcom/android/common/o/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/common/o/n;-><init>(ILjava/util/ArrayList;)V

    return-object v0
.end method

.method private alU(Landroid/view/View;)V
    .registers 13

    .prologue
    const v3, 0x7f0d0041

    const/4 v10, -0x2

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/android/common/o/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 81
    invoke-virtual {p0}, Lcom/android/common/o/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 82
    invoke-virtual {p0}, Lcom/android/common/o/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d005c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 84
    iget-object v0, p0, Lcom/android/common/o/n;->adQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 85
    new-array v6, v0, [Lcom/android/common/ui/h;

    .line 87
    const/4 v4, 0x1

    if-ne v0, v4, :cond_a9

    .line 88
    iget-object v0, p0, Lcom/android/common/o/n;->adQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/o/o;

    invoke-virtual {v0}, Lcom/android/common/o/o;->alV()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/common/ui/i;

    if-eqz v0, :cond_12f

    .line 89
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v0

    sub-int/2addr v0, v3

    sub-int/2addr v0, v5

    move v2, v1

    move v3, v0

    .line 97
    :goto_43
    const v0, 0x7f1000d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/o/n;->adP:Landroid/widget/RelativeLayout;

    .line 98
    const v0, 0x7f1000d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/o/n;->adO:Landroid/widget/RelativeLayout;

    .line 100
    iget-object v0, p0, Lcom/android/common/o/n;->adQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v1

    .line 102
    :goto_60
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 103
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/o/o;

    .line 104
    invoke-virtual {v0}, Lcom/android/common/o/o;->alV()Landroid/view/View;

    move-result-object v1

    .line 105
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    if-nez v4, :cond_ba

    .line 107
    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 111
    :goto_7a
    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 112
    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-virtual {v0}, Lcom/android/common/o/o;->alW()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_90

    .line 114
    invoke-virtual {v0}, Lcom/android/common/o/o;->alW()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 116
    :cond_90
    instance-of v0, v1, Lcom/android/common/ui/F;

    if-eqz v0, :cond_9c

    move-object v0, v1

    .line 117
    check-cast v0, Lcom/android/common/ui/F;

    iget-object v8, p0, Lcom/android/common/o/n;->adQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Lcom/android/common/ui/F;->zq(Ljava/util/ArrayList;)V

    .line 119
    :cond_9c
    iget-object v0, p0, Lcom/android/common/o/n;->adO:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 120
    check-cast v1, Lcom/android/common/ui/h;

    aput-object v1, v6, v4

    .line 123
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_60

    .line 92
    :cond_a9
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v4

    mul-int v7, v5, v0

    sub-int/2addr v4, v7

    sub-int/2addr v4, v2

    sub-int v3, v4, v3

    .line 94
    add-int/lit8 v0, v0, -0x1

    .line 92
    div-int v0, v3, v0

    move v3, v2

    move v2, v0

    goto :goto_43

    .line 109
    :cond_ba
    add-int v9, v2, v5

    mul-int/2addr v9, v4

    add-int/2addr v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_7a

    .line 126
    :cond_c2
    iput-object v6, p0, Lcom/android/common/o/n;->adw:[Lcom/android/common/ui/h;

    .line 128
    iget-object v0, p0, Lcom/android/common/o/n;->adO:Landroid/widget/RelativeLayout;

    const v1, 0x7f100001

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/common/o/n;->adN:Lcom/android/common/ui/RotateImageView;

    .line 129
    iget-object v0, p0, Lcom/android/common/o/n;->adO:Landroid/widget/RelativeLayout;

    const v1, 0x7f100002

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/an;

    iput-object v0, p0, Lcom/android/common/o/n;->adK:Lcom/android/common/ui/an;

    .line 130
    iget-object v0, p0, Lcom/android/common/o/n;->adK:Lcom/android/common/ui/an;

    if-eqz v0, :cond_e9

    .line 131
    iget-object v0, p0, Lcom/android/common/o/n;->adK:Lcom/android/common/ui/an;

    iget-object v1, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/an;->Gg(Lcom/android/common/appService/W;)V

    .line 133
    :cond_e9
    iget-object v0, p0, Lcom/android/common/o/n;->adO:Landroid/widget/RelativeLayout;

    const v1, 0x7f100003

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/X;

    iput-object v0, p0, Lcom/android/common/o/n;->adM:Lcom/android/common/ui/X;

    .line 134
    iget-object v0, p0, Lcom/android/common/o/n;->adO:Landroid/widget/RelativeLayout;

    const v1, 0x7f100005

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/X;

    iput-object v0, p0, Lcom/android/common/o/n;->adH:Lcom/android/common/ui/X;

    .line 135
    iget-object v0, p0, Lcom/android/common/o/n;->adO:Landroid/widget/RelativeLayout;

    const v1, 0x7f100004

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/F;

    iput-object v0, p0, Lcom/android/common/o/n;->adJ:Lcom/android/common/ui/F;

    .line 136
    iget-object v0, p0, Lcom/android/common/o/n;->adO:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/i;

    .line 137
    if-eqz v0, :cond_121

    .line 138
    iget-object v1, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1, v0}, Lcom/android/common/appService/W;->sj(Lcom/android/common/ui/i;)V

    .line 140
    :cond_121
    iget-object v0, p0, Lcom/android/common/o/n;->adO:Landroid/widget/RelativeLayout;

    const v1, 0x7f100006

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/F;

    iput-object v0, p0, Lcom/android/common/o/n;->adL:Lcom/android/common/ui/F;

    .line 79
    return-void

    :cond_12f
    move v3, v2

    move v2, v1

    goto/16 :goto_43
.end method


# virtual methods
.method public ZP(ZJJ)V
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/android/common/o/n;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    .line 176
    return-void

    .line 179
    :cond_9
    iget-object v0, p0, Lcom/android/common/o/n;->adP:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 180
    if-eqz p1, :cond_14

    cmp-long v0, p2, v2

    if-gez v0, :cond_20

    .line 181
    :cond_14
    invoke-virtual {p0}, Lcom/android/common/o/n;->alJ()V

    .line 182
    invoke-virtual {p0}, Lcom/android/common/o/n;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :goto_1f
    return-void

    .line 184
    :cond_20
    invoke-virtual {p0}, Lcom/android/common/o/n;->alK()V

    .line 185
    iget-object v0, p0, Lcom/android/common/o/n;->adz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 186
    return-void

    .line 188
    :cond_2c
    iget-object v0, p0, Lcom/android/common/o/n;->adA:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_35

    .line 189
    iget-object v0, p0, Lcom/android/common/o/n;->adA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 191
    :cond_35
    iget-object v0, p0, Lcom/android/common/o/n;->adz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 192
    cmp-long v0, p4, v2

    if-lez v0, :cond_43

    .line 193
    iget-object v0, p0, Lcom/android/common/o/n;->adz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 195
    :cond_43
    iget-object v0, p0, Lcom/android/common/o/n;->adz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 196
    iget-object v0, p0, Lcom/android/common/o/n;->adz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1f
.end method

.method public ZQ(ZJJ)V
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/android/common/o/n;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    .line 203
    return-void

    .line 206
    :cond_9
    iget-object v0, p0, Lcom/android/common/o/n;->adP:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 207
    if-eqz p1, :cond_14

    cmp-long v0, p2, v2

    if-gez v0, :cond_20

    .line 209
    :cond_14
    invoke-virtual {p0}, Lcom/android/common/o/n;->alJ()V

    .line 210
    invoke-virtual {p0}, Lcom/android/common/o/n;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :goto_1f
    return-void

    .line 212
    :cond_20
    invoke-virtual {p0}, Lcom/android/common/o/n;->alL()V

    .line 213
    iget-object v0, p0, Lcom/android/common/o/n;->adA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 214
    return-void

    .line 216
    :cond_2c
    iget-object v0, p0, Lcom/android/common/o/n;->adz:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_35

    .line 217
    iget-object v0, p0, Lcom/android/common/o/n;->adz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 219
    :cond_35
    iget-object v0, p0, Lcom/android/common/o/n;->adA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 220
    cmp-long v0, p4, v2

    if-lez v0, :cond_43

    .line 221
    iget-object v0, p0, Lcom/android/common/o/n;->adA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 223
    :cond_43
    iget-object v0, p0, Lcom/android/common/o/n;->adA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 224
    iget-object v0, p0, Lcom/android/common/o/n;->adA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1f
.end method

.method public ZR()V
    .registers 2

    .prologue
    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/common/o/n;->akU(Z)V

    .line 229
    return-void
.end method

.method public ZS()V
    .registers 2

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/o/n;->akU(Z)V

    .line 234
    return-void
.end method

.method public aik()V
    .registers 2

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/o/n;->akU(Z)V

    .line 404
    return-void
.end method

.method public aip()V
    .registers 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/common/o/n;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 241
    invoke-virtual {p0}, Lcom/android/common/o/n;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :cond_f
    return-void
.end method

.method public aiq()V
    .registers 3

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/common/o/n;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 248
    invoke-virtual {p0}, Lcom/android/common/o/n;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_e
    return-void
.end method

.method public aiz()V
    .registers 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/common/o/n;->adQ:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/o/o;

    .line 337
    invoke-virtual {v0}, Lcom/android/common/o/o;->alV()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 338
    invoke-virtual {v0}, Lcom/android/common/o/o;->alV()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/common/ui/F;

    .line 337
    if-eqz v2, :cond_6

    .line 339
    invoke-virtual {v0}, Lcom/android/common/o/o;->alV()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/F;

    invoke-virtual {v0}, Lcom/android/common/ui/F;->zn()V

    goto :goto_6

    .line 335
    :cond_2a
    return-void
.end method

.method public akI(ZZ)V
    .registers 13

    .prologue
    const-wide/16 v2, 0x64

    .line 411
    if-eqz p1, :cond_10

    .line 412
    const-wide/16 v4, -0x1

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/o/n;->ZQ(ZJJ)V

    .line 413
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/o/n;->akU(Z)V

    .line 410
    :goto_f
    return-void

    .line 415
    :cond_10
    const-wide/16 v6, 0x96

    move-object v4, p0

    move v5, p2

    move-wide v8, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/common/o/n;->ZP(ZJJ)V

    .line 416
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/common/o/n;->akU(Z)V

    goto :goto_f
.end method

.method public akU(Z)V
    .registers 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/common/o/n;->adQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    .line 347
    iget-object v0, p0, Lcom/android/common/o/n;->adQ:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/o/o;

    .line 348
    invoke-virtual {v0}, Lcom/android/common/o/o;->alV()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_a

    .line 351
    :cond_1e
    if-eqz p1, :cond_29

    .line 352
    invoke-virtual {p0}, Lcom/android/common/o/n;->kh()V

    .line 353
    invoke-virtual {p0}, Lcom/android/common/o/n;->kg()V

    .line 354
    invoke-virtual {p0}, Lcom/android/common/o/n;->ki()V

    .line 345
    :cond_29
    return-void
.end method

.method public alT(I)V
    .registers 4

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/common/o/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/android/common/o/n;->adP:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 374
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/common/o/n;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afo:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_27

    .line 323
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 324
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-object v3, p0, Lcom/android/common/o/n;->adP:Landroid/widget/RelativeLayout;

    invoke-static {v1, v2, v3}, Lcom/android/common/h;->apY(FFLandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 325
    invoke-virtual {p0}, Lcom/android/common/o/n;->aiz()V

    .line 326
    const/4 v0, 0x1

    return v0

    .line 323
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 331
    :cond_27
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public kf(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 254
    if-nez p1, :cond_3

    return-void

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/android/common/o/n;->adJ:Lcom/android/common/ui/F;

    if-eqz v0, :cond_c

    .line 257
    iget-object v0, p0, Lcom/android/common/o/n;->adJ:Lcom/android/common/ui/F;

    invoke-virtual {v0}, Lcom/android/common/ui/F;->zz()V

    .line 253
    :cond_c
    return-void
.end method

.method public kg()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/common/o/n;->adJ:Lcom/android/common/ui/F;

    if-nez v0, :cond_b

    :cond_a
    return-void

    .line 272
    :cond_b
    iget-object v0, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XK()Z

    move-result v0

    if-nez v0, :cond_29

    .line 273
    iget-object v0, p0, Lcom/android/common/o/n;->adJ:Lcom/android/common/ui/F;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/F;->setEnabled(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/common/o/n;->adJ:Lcom/android/common/ui/F;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/F;->setClickable(Z)V

    .line 279
    :goto_21
    iget-object v0, p0, Lcom/android/common/o/n;->adJ:Lcom/android/common/ui/F;

    iget-object v1, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/F;->zy(Lcom/android/common/appService/W;)V

    .line 270
    return-void

    .line 276
    :cond_29
    iget-object v0, p0, Lcom/android/common/o/n;->adJ:Lcom/android/common/ui/F;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/F;->setEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/common/o/n;->adJ:Lcom/android/common/ui/F;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/F;->setClickable(Z)V

    goto :goto_21
.end method

.method public kh()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/common/o/n;->adK:Lcom/android/common/ui/an;

    if-nez v0, :cond_b

    :cond_a
    return-void

    .line 285
    :cond_b
    const-string/jumbo v0, "-1"

    iget-object v1, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 286
    iget-object v0, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XI()Z

    move-result v0

    .line 285
    if-nez v0, :cond_5d

    .line 287
    invoke-virtual {p0}, Lcom/android/common/o/n;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cp()Z

    move-result v0

    .line 285
    if-nez v0, :cond_5d

    .line 288
    const-string/jumbo v0, "point-measure"

    iget-object v1, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->XD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 285
    if-nez v0, :cond_5d

    .line 289
    iget-object v0, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_68

    .line 291
    :cond_5d
    iget-object v0, p0, Lcom/android/common/o/n;->adK:Lcom/android/common/ui/an;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/an;->setClickable(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/common/o/n;->adK:Lcom/android/common/ui/an;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/an;->setEnabled(Z)V

    .line 283
    :goto_67
    return-void

    .line 290
    :cond_68
    iget-object v0, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qX()Z

    move-result v0

    .line 285
    if-nez v0, :cond_5d

    .line 294
    iget-object v0, p0, Lcom/android/common/o/n;->adK:Lcom/android/common/ui/an;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/an;->setClickable(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/common/o/n;->adK:Lcom/android/common/ui/an;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/an;->setEnabled(Z)V

    goto :goto_67
.end method

.method public ki()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/common/o/n;->adL:Lcom/android/common/ui/F;

    if-nez v0, :cond_b

    :cond_a
    return-void

    .line 302
    :cond_b
    const-string/jumbo v0, "off"

    iget-object v1, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Xu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 303
    const-string/jumbo v0, "-1"

    iget-object v1, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 304
    iget-object v0, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rl()Z

    move-result v0

    .line 302
    if-nez v0, :cond_58

    .line 305
    iget-object v0, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qX()Z

    move-result v0

    .line 302
    if-nez v0, :cond_58

    .line 306
    iget-object v0, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XK()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 315
    iget-object v0, p0, Lcom/android/common/o/n;->adL:Lcom/android/common/ui/F;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/F;->setClickable(Z)V

    .line 316
    iget-object v0, p0, Lcom/android/common/o/n;->adL:Lcom/android/common/ui/F;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/F;->setEnabled(Z)V

    .line 300
    :goto_57
    return-void

    .line 312
    :cond_58
    iget-object v0, p0, Lcom/android/common/o/n;->adL:Lcom/android/common/ui/F;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/F;->setClickable(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/common/o/n;->adL:Lcom/android/common/ui/F;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/F;->setEnabled(Z)V

    goto :goto_57
.end method

.method public kj()V
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/common/o/n;->adN:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_11

    .line 264
    iget-object v0, p0, Lcom/android/common/o/n;->adN:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->isClickable()Z

    move-result v0

    .line 263
    if-eqz v0, :cond_11

    .line 265
    iget-object v0, p0, Lcom/android/common/o/n;->adN:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->callOnClick()Z

    .line 262
    :cond_11
    return-void
.end method

.method public nJ()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 360
    const/4 v1, 0x3

    new-array v2, v1, [Lcom/android/common/ui/F;

    iget-object v1, p0, Lcom/android/common/o/n;->adK:Lcom/android/common/ui/an;

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/android/common/o/n;->adJ:Lcom/android/common/ui/F;

    aput-object v1, v2, v6

    iget-object v1, p0, Lcom/android/common/o/n;->adL:Lcom/android/common/ui/F;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 361
    array-length v3, v2

    move v1, v0

    :goto_14
    if-ge v1, v3, :cond_22

    aget-object v4, v2, v1

    .line 362
    if-eqz v4, :cond_1f

    .line 363
    iget-object v5, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v4, v5}, Lcom/android/common/ui/F;->zy(Lcom/android/common/appService/W;)V

    .line 361
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 367
    :cond_22
    new-array v1, v6, [Lcom/android/common/ui/X;

    iget-object v2, p0, Lcom/android/common/o/n;->adM:Lcom/android/common/ui/X;

    aput-object v2, v1, v0

    .line 368
    array-length v2, v1

    :goto_29
    if-ge v0, v2, :cond_37

    aget-object v3, v1, v0

    .line 369
    if-eqz v3, :cond_34

    .line 370
    iget-object v4, p0, Lcom/android/common/o/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3, v4}, Lcom/android/common/ui/X;->Dj(Lcom/android/common/appService/W;)V

    .line 368
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 359
    :cond_37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/common/o/n;->adu:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_6
    const v0, 0x7f04002e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Lcom/android/common/o/n;->alU(Landroid/view/View;)V

    .line 76
    return-object v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/common/o/n;->adu:Z

    if-eqz v0, :cond_8

    .line 158
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 159
    return-void

    .line 162
    :cond_8
    iget-object v0, p0, Lcom/android/common/o/n;->adK:Lcom/android/common/ui/an;

    if-eqz v0, :cond_11

    .line 163
    iget-object v0, p0, Lcom/android/common/o/n;->adK:Lcom/android/common/ui/an;

    invoke-virtual {v0}, Lcom/android/common/ui/an;->Gi()V

    .line 166
    :cond_11
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 156
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 146
    iget-boolean v0, p0, Lcom/android/common/o/n;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 147
    :cond_8
    iget-object v0, p0, Lcom/android/common/o/n;->adK:Lcom/android/common/ui/an;

    if-eqz v0, :cond_15

    .line 148
    iget-object v0, p0, Lcom/android/common/o/n;->adK:Lcom/android/common/ui/an;

    invoke-virtual {p0}, Lcom/android/common/o/n;->aln()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/an;->Gh(Landroid/content/SharedPreferences;)V

    .line 150
    :cond_15
    iget-object v0, p0, Lcom/android/common/o/n;->adJ:Lcom/android/common/ui/F;

    if-eqz v0, :cond_1e

    .line 151
    iget-object v0, p0, Lcom/android/common/o/n;->adJ:Lcom/android/common/ui/F;

    invoke-virtual {v0}, Lcom/android/common/ui/F;->zz()V

    .line 153
    :cond_1e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/common/o/n;->akU(Z)V

    .line 144
    return-void
.end method

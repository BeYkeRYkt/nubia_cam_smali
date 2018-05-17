.class public Lcom/android/specification/i;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/common/ui/z;
.implements Lcom/android/common/image3d/f;


# instance fields
.field private aZA:Landroid/graphics/Bitmap;

.field private aZB:Lcom/android/common/image3d/k;

.field private aZC:Lcom/android/common/ui/NubiaScrollView;

.field private aZD:Landroid/view/animation/Animation;

.field private aZE:Landroid/widget/ImageView;

.field private aZF:Landroid/widget/TextView;

.field private aZG:Landroid/widget/ImageButton;

.field private aZq:Landroid/widget/LinearLayout;

.field private aZr:[I

.field private aZs:I

.field private aZt:Lcom/android/common/image3d/e;

.field private aZu:Landroid/view/animation/Animation;

.field private aZv:Lcom/android/common/image3d/Image3dView;

.field private aZw:Lcom/android/common/image3d/Image3dView;

.field private aZx:Z

.field private aZy:I

.field private aZz:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x50

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/specification/i;->aZE:Landroid/widget/ImageView;

    .line 35
    iput-object v0, p0, Lcom/android/specification/i;->aZq:Landroid/widget/LinearLayout;

    .line 36
    iput-object v0, p0, Lcom/android/specification/i;->aZG:Landroid/widget/ImageButton;

    .line 37
    iput-object v0, p0, Lcom/android/specification/i;->aZF:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/android/specification/i;->aZC:Lcom/android/common/ui/NubiaScrollView;

    .line 39
    iput-object v0, p0, Lcom/android/specification/i;->aZD:Landroid/view/animation/Animation;

    .line 40
    iput-object v0, p0, Lcom/android/specification/i;->aZu:Landroid/view/animation/Animation;

    .line 41
    iput-object v0, p0, Lcom/android/specification/i;->aZv:Lcom/android/common/image3d/Image3dView;

    .line 42
    iput-object v0, p0, Lcom/android/specification/i;->aZw:Lcom/android/common/image3d/Image3dView;

    .line 43
    iput-boolean v1, p0, Lcom/android/specification/i;->aZx:Z

    .line 45
    iput-object v0, p0, Lcom/android/specification/i;->aZt:Lcom/android/common/image3d/e;

    .line 46
    iput-object v0, p0, Lcom/android/specification/i;->aZB:Lcom/android/common/image3d/k;

    .line 48
    iput-object v0, p0, Lcom/android/specification/i;->aZA:Landroid/graphics/Bitmap;

    .line 49
    iput v1, p0, Lcom/android/specification/i;->aZy:I

    .line 50
    iput v1, p0, Lcom/android/specification/i;->aZz:I

    .line 51
    iput v2, p0, Lcom/android/specification/i;->aZs:I

    .line 53
    new-array v0, v2, [I

    fill-array-data v0, :array_30

    iput-object v0, p0, Lcom/android/specification/i;->aZr:[I

    .line 31
    return-void

    .line 53
    nop

    :array_30
    .array-data 4
        0x7f020143
        0x7f02014e
        0x7f020159
        0x7f020164
        0x7f02016f
        0x7f02017a
        0x7f020185
        0x7f020190
        0x7f020194
        0x7f020144
        0x7f020145
        0x7f020146
        0x7f020147
        0x7f020148
        0x7f020149
        0x7f02014a
        0x7f02014b
        0x7f02014c
        0x7f02014d
        0x7f02014f
        0x7f020150
        0x7f020151
        0x7f020152
        0x7f020153
        0x7f020154
        0x7f020155
        0x7f020156
        0x7f020157
        0x7f020158
        0x7f02015a
        0x7f02015b
        0x7f02015c
        0x7f02015d
        0x7f02015e
        0x7f02015f
        0x7f020160
        0x7f020161
        0x7f020162
        0x7f020163
        0x7f020165
        0x7f020166
        0x7f020167
        0x7f020168
        0x7f020169
        0x7f02016a
        0x7f02016b
        0x7f02016c
        0x7f02016d
        0x7f02016e
        0x7f020170
        0x7f020171
        0x7f020172
        0x7f020173
        0x7f020174
        0x7f020175
        0x7f020176
        0x7f020177
        0x7f020178
        0x7f020179
        0x7f02017b
        0x7f02017c
        0x7f02017d
        0x7f02017e
        0x7f02017f
        0x7f020180
        0x7f020181
        0x7f020182
        0x7f020183
        0x7f020184
        0x7f020186
        0x7f020187
        0x7f020188
        0x7f020189
        0x7f02018a
        0x7f02018b
        0x7f02018c
        0x7f02018d
        0x7f02018e
        0x7f02018f
        0x7f020191
    .end array-data
.end method

.method private bpZ()V
    .registers 3

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/specification/i;->aZx:Z

    if-nez v0, :cond_5

    .line 127
    return-void

    .line 129
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/specification/i;->aZx:Z

    .line 130
    iget-object v0, p0, Lcom/android/specification/i;->aZG:Landroid/widget/ImageButton;

    const v1, 0x7f02029c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 131
    iget-object v0, p0, Lcom/android/specification/i;->aZF:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/android/specification/i;->aZE:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/specification/i;->aZu:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 133
    iget-object v0, p0, Lcom/android/specification/i;->aZE:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    return-void
.end method

.method private bqa(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 116
    const v0, 0x7f100174

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/NubiaScrollView;

    iput-object v0, p0, Lcom/android/specification/i;->aZC:Lcom/android/common/ui/NubiaScrollView;

    .line 117
    iget-object v0, p0, Lcom/android/specification/i;->aZC:Lcom/android/common/ui/NubiaScrollView;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/NubiaScrollView;->xS(Lcom/android/common/ui/z;)V

    .line 118
    iget-object v0, p0, Lcom/android/specification/i;->aZC:Lcom/android/common/ui/NubiaScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    .line 119
    invoke-virtual {p0}, Lcom/android/specification/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 120
    const v1, 0x7f050014

    .line 119
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/specification/i;->aZD:Landroid/view/animation/Animation;

    .line 121
    invoke-virtual {p0}, Lcom/android/specification/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 122
    const/high16 v1, 0x7f050000

    .line 121
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/specification/i;->aZu:Landroid/view/animation/Animation;

    .line 115
    return-void
.end method

.method private bqb(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 91
    const v0, 0x7f100176

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/specification/i;->aZE:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f100178

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/specification/i;->aZG:Landroid/widget/ImageButton;

    .line 93
    const v0, 0x7f100177

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/specification/i;->aZq:Landroid/widget/LinearLayout;

    .line 94
    const v0, 0x7f100179

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/specification/i;->aZF:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f10018a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/image3d/Image3dView;

    iput-object v0, p0, Lcom/android/specification/i;->aZv:Lcom/android/common/image3d/Image3dView;

    .line 96
    const v0, 0x7f10018b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/image3d/Image3dView;

    iput-object v0, p0, Lcom/android/specification/i;->aZw:Lcom/android/common/image3d/Image3dView;

    .line 99
    invoke-virtual {p0}, Lcom/android/specification/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202b6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/specification/i;->aZA:Landroid/graphics/Bitmap;

    .line 100
    iget-object v0, p0, Lcom/android/specification/i;->aZv:Lcom/android/common/image3d/Image3dView;

    invoke-virtual {v0}, Lcom/android/common/image3d/Image3dView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/specification/i;->aZz:I

    .line 102
    iget-object v0, p0, Lcom/android/specification/i;->aZA:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit16 v0, v0, -0x3d8

    iget v1, p0, Lcom/android/specification/i;->aZs:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/specification/i;->aZy:I

    .line 103
    new-instance v0, Lcom/android/common/image3d/e;

    invoke-virtual {p0}, Lcom/android/specification/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/image3d/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/specification/i;->aZt:Lcom/android/common/image3d/e;

    .line 104
    iget-object v0, p0, Lcom/android/specification/i;->aZt:Lcom/android/common/image3d/e;

    invoke-virtual {v0, p0}, Lcom/android/common/image3d/e;->bz(Lcom/android/common/image3d/f;)V

    .line 105
    iget-object v0, p0, Lcom/android/specification/i;->aZt:Lcom/android/common/image3d/e;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/android/common/image3d/e;->bB(F)V

    .line 107
    new-instance v0, Lcom/android/common/image3d/k;

    iget v1, p0, Lcom/android/specification/i;->aZs:I

    const/4 v2, 0x1

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/image3d/k;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/specification/i;->aZB:Lcom/android/common/image3d/k;

    .line 108
    iget-object v0, p0, Lcom/android/specification/i;->aZB:Lcom/android/common/image3d/k;

    iget v1, p0, Lcom/android/specification/i;->aZs:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/image3d/k;->bT(I)V

    .line 110
    iget-object v0, p0, Lcom/android/specification/i;->aZq:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/specification/i;->aZG:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/android/specification/i;->bqa(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method private bqc()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-boolean v0, p0, Lcom/android/specification/i;->aZx:Z

    if-eqz v0, :cond_6

    .line 138
    return-void

    .line 140
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/specification/i;->aZx:Z

    .line 141
    iget-object v0, p0, Lcom/android/specification/i;->aZG:Landroid/widget/ImageButton;

    const v1, 0x7f02029b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 142
    iget-object v0, p0, Lcom/android/specification/i;->aZF:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/android/specification/i;->aZE:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/specification/i;->aZD:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    iget-object v0, p0, Lcom/android/specification/i;->aZE:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    return-void
.end method


# virtual methods
.method public bC(FFFFFF)V
    .registers 13

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/specification/i;->aZB:Lcom/android/common/image3d/k;

    invoke-virtual {v0, p2, p4}, Lcom/android/common/image3d/k;->bS(FF)I

    move-result v0

    .line 196
    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    .line 197
    iget-object v1, p0, Lcom/android/specification/i;->aZv:Lcom/android/common/image3d/Image3dView;

    invoke-virtual {p0}, Lcom/android/specification/i;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/specification/i;->aZr:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/image3d/Image3dView;->bn(Landroid/graphics/Bitmap;)V

    .line 198
    iget-object v1, p0, Lcom/android/specification/i;->aZw:Lcom/android/common/image3d/Image3dView;

    iget-object v2, p0, Lcom/android/specification/i;->aZA:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/specification/i;->aZy:I

    mul-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/specification/i;->aZA:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x3d8

    invoke-static {v2, v0, v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/image3d/Image3dView;->bn(Landroid/graphics/Bitmap;)V

    .line 192
    :cond_31
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 169
    :goto_7
    return-void

    .line 173
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/specification/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_7

    .line 170
    :pswitch_data_10
    .packed-switch 0x7f100177
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 84
    const v0, 0x7f04007e

    .line 85
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-direct {p0, v0}, Lcom/android/specification/i;->bqb(Landroid/view/View;)V

    .line 87
    return-object v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 151
    iget-object v0, p0, Lcom/android/specification/i;->aZt:Lcom/android/common/image3d/e;

    if-eqz v0, :cond_c

    .line 152
    iget-object v0, p0, Lcom/android/specification/i;->aZt:Lcom/android/common/image3d/e;

    invoke-virtual {v0}, Lcom/android/common/image3d/e;->bw()V

    .line 148
    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 160
    iget-object v0, p0, Lcom/android/specification/i;->aZt:Lcom/android/common/image3d/e;

    if-eqz v0, :cond_c

    .line 161
    iget-object v0, p0, Lcom/android/specification/i;->aZt:Lcom/android/common/image3d/e;

    invoke-virtual {v0}, Lcom/android/common/image3d/e;->bx()V

    .line 163
    :cond_c
    iget-object v0, p0, Lcom/android/specification/i;->aZB:Lcom/android/common/image3d/k;

    if-eqz v0, :cond_19

    .line 164
    iget-object v0, p0, Lcom/android/specification/i;->aZB:Lcom/android/common/image3d/k;

    iget v1, p0, Lcom/android/specification/i;->aZs:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/image3d/k;->bT(I)V

    .line 157
    :cond_19
    return-void
.end method

.method public xT(IIII)V
    .registers 6

    .prologue
    const/16 v0, 0x12c

    .line 183
    if-le p2, p4, :cond_a

    if-le p2, v0, :cond_a

    .line 184
    invoke-direct {p0}, Lcom/android/specification/i;->bqc()V

    .line 182
    :cond_9
    :goto_9
    return-void

    .line 185
    :cond_a
    if-ge p2, p4, :cond_9

    if-ge p2, v0, :cond_9

    .line 186
    invoke-direct {p0}, Lcom/android/specification/i;->bpZ()V

    goto :goto_9
.end method

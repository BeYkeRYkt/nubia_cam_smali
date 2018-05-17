.class public Lcom/android/camera/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ann:Landroid/view/View;

.field private ano:Landroid/content/Context;

.field private anp:Ljava/lang/String;

.field private anq:Landroid/content/DialogInterface$OnClickListener;

.field private anr:Ljava/lang/String;

.field private ans:Landroid/content/DialogInterface$OnClickListener;

.field private ant:Ljava/lang/String;

.field private anu:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/camera/c/b;->ano:Landroid/content/Context;

    .line 83
    return-void
.end method

.method private azl(Landroid/content/res/Resources;I)I
    .registers 5

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic azm(Lcom/android/camera/c/b;)Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/c/b;->anq:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic azn(Lcom/android/camera/c/b;)Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/c/b;->ans:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public azg(I)Lcom/android/camera/c/b;
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/c/b;->ano:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/c/b;->anu:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public azh(I)Lcom/android/camera/c/b;
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/c/b;->ano:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/c/b;->anp:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public azi(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/c/b;
    .registers 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/c/b;->ano:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/c/b;->ant:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/android/camera/c/b;->ans:Landroid/content/DialogInterface$OnClickListener;

    .line 107
    return-object p0
.end method

.method public azj(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/c/b;
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/c/b;->ano:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/c/b;->anr:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/android/camera/c/b;->anq:Landroid/content/DialogInterface$OnClickListener;

    .line 115
    return-object p0
.end method

.method public azk()Lcom/android/camera/c/a;
    .registers 10

    .prologue
    const v8, 0x7f100075

    const v4, 0x7f100074

    const/16 v7, 0x8

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/camera/c/b;->ano:Landroid/content/Context;

    .line 120
    const-string/jumbo v1, "layout_inflater"

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 122
    new-instance v1, Lcom/android/camera/c/a;

    iget-object v2, p0, Lcom/android/camera/c/b;->ano:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/c/a;-><init>(Landroid/content/Context;)V

    .line 123
    const v2, 0x7f04001c

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 125
    const v0, 0x7f100071

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/c/b;->anu:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/android/camera/c/b;->ant:Ljava/lang/String;

    if-eqz v0, :cond_bf

    .line 128
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 129
    iget-object v3, p0, Lcom/android/camera/c/b;->ant:Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/c/b;->ans:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_52

    .line 131
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 132
    new-instance v3, Lcom/android/camera/c/e;

    invoke-direct {v3, p0, v1}, Lcom/android/camera/c/e;-><init>(Lcom/android/camera/c/b;Lcom/android/camera/c/a;)V

    .line 131
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/android/camera/c/b;->anr:Ljava/lang/String;

    if-eqz v0, :cond_c7

    .line 146
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 147
    iget-object v3, p0, Lcom/android/camera/c/b;->anr:Ljava/lang/String;

    .line 146
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/c/b;->anq:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_73

    .line 149
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 150
    new-instance v3, Lcom/android/camera/c/f;

    invoke-direct {v3, p0, v1}, Lcom/android/camera/c/f;-><init>(Lcom/android/camera/c/b;Lcom/android/camera/c/a;)V

    .line 149
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    :cond_73
    :goto_73
    iget-object v0, p0, Lcom/android/camera/c/b;->anp:Ljava/lang/String;

    if-eqz v0, :cond_cf

    .line 164
    const v0, 0x7f100073

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/c/b;->anp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_85
    :goto_85
    const v0, 0x1020016

    invoke-virtual {v1, v0}, Lcom/android/camera/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_91

    .line 177
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_91
    invoke-virtual {v1}, Lcom/android/camera/c/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_a4

    .line 182
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 186
    :cond_a4
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 188
    invoke-static {v1}, Lcom/android/camera/c/a;->azf(Lcom/android/camera/c/a;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-direct {p0, v3, v4}, Lcom/android/camera/c/b;->azl(Landroid/content/res/Resources;I)I

    move-result v3

    .line 189
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 190
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 191
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/c/a;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    return-object v1

    .line 141
    :cond_bf
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_52

    .line 159
    :cond_c7
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_73

    .line 165
    :cond_cf
    iget-object v0, p0, Lcom/android/camera/c/b;->ann:Landroid/view/View;

    if-eqz v0, :cond_85

    .line 168
    const v0, 0x7f100072

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 170
    const v0, 0x7f100072

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 171
    iget-object v3, p0, Lcom/android/camera/c/b;->ann:Landroid/view/View;

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 170
    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_85
.end method

.class public Lcom/android/e/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aXA:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

.field private aXB:Landroid/widget/LinearLayout;

.field private aXC:Landroid/widget/LinearLayout;

.field private aXD:Lcom/android/common/ui/J;

.field private aXE:Ljava/lang/String;

.field private aXF:Ljava/lang/String;

.field private aXs:I

.field private aXt:I

.field private aXu:I

.field private aXv:Z

.field private aXw:Lcom/android/common/appService/W;

.field private aXx:Landroid/widget/ImageView;

.field private aXy:Landroid/widget/TextView;

.field private aXz:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/common/appService/W;Lcom/android/common/ui/Q;)V
    .registers 5

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/e/h;->aXv:Z

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/e/h;->aXu:I

    .line 40
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/e/h;->aXt:I

    .line 41
    const/16 v0, 0x48

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/e/h;->aXs:I

    .line 43
    iput-object p2, p0, Lcom/android/e/h;->aXw:Lcom/android/common/appService/W;

    .line 44
    const v0, 0x7f0a03b3

    invoke-direct {p0, v0}, Lcom/android/e/h;->boZ(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/e/h;->aXE:Ljava/lang/String;

    .line 45
    const v0, 0x7f0a03b1

    invoke-direct {p0, v0}, Lcom/android/e/h;->boZ(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/e/h;->aXF:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/e/h;->bpa(Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Lcom/android/e/h;->aXA:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    invoke-virtual {v0, p3}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Bq(Lcom/android/common/ui/Q;)V

    .line 42
    return-void
.end method

.method private boZ(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/e/h;->aXw:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bpa(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 159
    const v0, 0x7f100111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/e/h;->aXy:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f100112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/e/h;->aXz:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f100113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/e/h;->aXx:Landroid/widget/ImageView;

    .line 162
    const v0, 0x7f100114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    iput-object v0, p0, Lcom/android/e/h;->aXA:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    .line 163
    const v0, 0x7f10010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/e/h;->aXB:Landroid/widget/LinearLayout;

    .line 164
    const v0, 0x7f100110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/e/h;->aXC:Landroid/widget/LinearLayout;

    .line 165
    iget-object v0, p0, Lcom/android/e/h;->aXy:Landroid/widget/TextView;

    new-instance v1, Lcom/android/e/n;

    invoke-direct {v1, p0}, Lcom/android/e/n;-><init>(Lcom/android/e/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/e/h;->aXz:Landroid/widget/TextView;

    new-instance v1, Lcom/android/e/o;

    invoke-direct {v1, p0}, Lcom/android/e/o;-><init>(Lcom/android/e/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/e/h;->aXA:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Bs(II)V

    .line 190
    iget-object v0, p0, Lcom/android/e/h;->aXC:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/e/p;

    invoke-direct {v1, p0}, Lcom/android/e/p;-><init>(Lcom/android/e/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/android/e/h;->aXA:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/e/h;->aXE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "30"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Br([Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private bpb()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 149
    iget-object v0, p0, Lcom/android/e/h;->aXA:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    invoke-virtual {v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->BF()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 150
    :cond_a
    iget-object v0, p0, Lcom/android/e/h;->aXy:Landroid/widget/TextView;

    const v1, 0x7f0201ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 151
    iget-object v0, p0, Lcom/android/e/h;->aXz:Landroid/widget/TextView;

    const v1, 0x7f0201bb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 152
    iget-object v0, p0, Lcom/android/e/h;->aXy:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/e/h;->aXu:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    iget-object v0, p0, Lcom/android/e/h;->aXz:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/e/h;->aXt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v0, p0, Lcom/android/e/h;->aXw:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_interval_pro"

    const-string/jumbo v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/android/e/h;->aXA:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/e/h;->aXF:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string/jumbo v3, "60S"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Br([Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/android/e/h;->aXA:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v5, v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Bs(II)V

    .line 148
    return-void
.end method

.method private bpc()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 139
    iget-object v0, p0, Lcom/android/e/h;->aXz:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/e/h;->aXA:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    invoke-virtual {v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->BF()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    return-void

    .line 140
    :cond_14
    iget-object v0, p0, Lcom/android/e/h;->aXy:Landroid/widget/TextView;

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 141
    iget-object v0, p0, Lcom/android/e/h;->aXz:Landroid/widget/TextView;

    const v1, 0x7f0201bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 142
    iget-object v0, p0, Lcom/android/e/h;->aXy:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/e/h;->aXt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v0, p0, Lcom/android/e/h;->aXz:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/e/h;->aXu:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v0, p0, Lcom/android/e/h;->aXw:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "maf_key"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/android/e/h;->aXA:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/e/h;->aXE:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "30"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Br([Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/android/e/h;->aXA:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    invoke-virtual {v1, v5, v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Bs(II)V

    .line 138
    return-void
.end method

.method static synthetic bpd(Lcom/android/e/h;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/e/h;->aXv:Z

    return v0
.end method

.method static synthetic bpe(Lcom/android/e/h;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/e/h;->aXx:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic bpf(Lcom/android/e/h;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/e/h;->aXz:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic bpg(Lcom/android/e/h;)Lcom/android/common/ui/MicroSpurAndDngSeekBar;
    .registers 2

    iget-object v0, p0, Lcom/android/e/h;->aXA:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    return-object v0
.end method

.method static synthetic bph(Lcom/android/e/h;)Lcom/android/common/ui/J;
    .registers 2

    iget-object v0, p0, Lcom/android/e/h;->aXD:Lcom/android/common/ui/J;

    return-object v0
.end method

.method static synthetic bpi(Lcom/android/e/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/e/h;->aXv:Z

    return p1
.end method

.method static synthetic bpj(Lcom/android/e/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/e/h;->bpb()V

    return-void
.end method

.method static synthetic bpk(Lcom/android/e/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/e/h;->bpc()V

    return-void
.end method


# virtual methods
.method public boS()V
    .registers 9

    .prologue
    .line 51
    const/16 v0, 0x48

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    .line 52
    new-instance v1, Lcom/android/common/ui/J;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 53
    iget-object v3, p0, Lcom/android/e/h;->aXC:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/e/h;->aXA:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 54
    const-string/jumbo v3, "translationY"

    .line 55
    const/4 v4, 0x0

    .line 56
    int-to-float v5, v0

    .line 57
    const-wide/16 v6, 0x1f4

    .line 52
    invoke-direct/range {v1 .. v7}, Lcom/android/common/ui/J;-><init>([Ljava/lang/Object;Ljava/lang/String;FFJ)V

    iput-object v1, p0, Lcom/android/e/h;->aXD:Lcom/android/common/ui/J;

    .line 58
    iget-object v0, p0, Lcom/android/e/h;->aXD:Lcom/android/common/ui/J;

    new-instance v1, Lcom/android/e/m;

    invoke-direct {v1, p0}, Lcom/android/e/m;-><init>(Lcom/android/e/h;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/J;->Aj(Lcom/android/common/ui/K;)V

    .line 50
    return-void
.end method

.method public boT()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/e/h;->aXw:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/i;->eh(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/e/h;->aXA:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    invoke-virtual {v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->BG()V

    .line 77
    return-void
.end method

.method public boU()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/e/h;->aXD:Lcom/android/common/ui/J;

    invoke-virtual {v0}, Lcom/android/common/ui/J;->release()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/e/h;->aXD:Lcom/android/common/ui/J;

    .line 72
    return-void
.end method

.method public boV()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/e/h;->aXz:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 95
    return-void

    .line 97
    :cond_a
    iget-object v0, p0, Lcom/android/e/h;->aXC:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Lcom/android/e/h;->aXx:Landroid/widget/ImageView;

    const v1, 0x7f0201bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 99
    iget-object v0, p0, Lcom/android/e/h;->aXz:Landroid/widget/TextView;

    const v1, 0x7f0201bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 100
    iget-object v0, p0, Lcom/android/e/h;->aXz:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/android/e/h;->aXy:Landroid/widget/TextView;

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 102
    iget-object v0, p0, Lcom/android/e/h;->aXy:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/e/h;->aXt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v0, p0, Lcom/android/e/h;->aXz:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/e/h;->aXu:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v0, p0, Lcom/android/e/h;->aXx:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 105
    iget v1, p0, Lcom/android/e/h;->aXs:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 106
    iget-object v1, p0, Lcom/android/e/h;->aXx:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/e/h;->aXy:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget v1, p0, Lcom/android/e/h;->aXs:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 110
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 111
    iget-object v1, p0, Lcom/android/e/h;->aXy:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method

.method public boW()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 115
    iget-object v0, p0, Lcom/android/e/h;->aXz:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 116
    return-void

    .line 118
    :cond_e
    iget-object v0, p0, Lcom/android/e/h;->aXC:Landroid/widget/LinearLayout;

    const v1, 0x7f02020f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Lcom/android/e/h;->aXx:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v0, p0, Lcom/android/e/h;->aXz:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/android/e/h;->aXy:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/android/e/h;->aXy:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/e/h;->aXu:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v0, p0, Lcom/android/e/h;->aXz:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/e/h;->aXu:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v0, p0, Lcom/android/e/h;->aXw:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "maf_key"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/android/e/h;->aXA:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/e/h;->aXE:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "30"

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Br([Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/android/e/h;->aXA:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    invoke-virtual {v1, v6, v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Bs(II)V

    .line 127
    iget-object v0, p0, Lcom/android/e/h;->aXx:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 128
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    iget-object v1, p0, Lcom/android/e/h;->aXx:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/e/h;->aXy:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 133
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/common/h;->aoT(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 134
    iget-object v1, p0, Lcom/android/e/h;->aXy:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    return-void
.end method

.method public boX()V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/e/h;->aXB:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    return-void
.end method

.method public boY()V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/e/h;->aXB:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    return-void
.end method

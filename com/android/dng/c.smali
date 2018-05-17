.class public Lcom/android/dng/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/h;


# instance fields
.field private aAa:Ljava/util/ArrayList;

.field private aAb:Lcom/android/dng/e;

.field private aAc:Lcom/android/common/ui/J;

.field private aAd:I

.field private aAe:Lcom/android/common/setting/IconListPreference;

.field private aAf:Lcom/android/dng/d;

.field private aAg:Ljava/lang/String;

.field private aAh:Landroid/widget/GridView;

.field private aAi:Landroid/view/View;

.field private aAj:Landroid/widget/TextView;

.field private aAk:Z

.field private azN:I

.field private azO:I

.field private azP:I

.field private azQ:Z

.field private azR:Z

.field private azS:Lcom/android/common/appService/W;

.field private azT:Landroid/widget/ImageView;

.field private azU:Landroid/widget/LinearLayout;

.field private azV:Landroid/widget/LinearLayout;

.field private azW:[I

.field private azX:[Ljava/lang/CharSequence;

.field private azY:Landroid/widget/TextView;

.field private azZ:Lcom/android/common/ui/MicroSpurAndDngSeekBar;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/common/appService/W;Lcom/android/dng/e;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dng/c;->azR:Z

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dng/c;->azP:I

    .line 65
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/dng/c;->azO:I

    .line 66
    const/16 v0, 0x48

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/dng/c;->azN:I

    .line 176
    iput-boolean v1, p0, Lcom/android/dng/c;->azQ:Z

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dng/c;->aAa:Ljava/util/ArrayList;

    .line 345
    iput-boolean v1, p0, Lcom/android/dng/c;->aAk:Z

    .line 69
    iput-object p2, p0, Lcom/android/dng/c;->azS:Lcom/android/common/appService/W;

    .line 70
    const v0, 0x7f0a03b1

    invoke-direct {p0, v0}, Lcom/android/dng/c;->aOV(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dng/c;->aAg:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/android/dng/c;->aAb:Lcom/android/dng/e;

    .line 72
    iget-object v0, p0, Lcom/android/dng/c;->azS:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_dng_camera_type"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/IconListPreference;

    iput-object v0, p0, Lcom/android/dng/c;->aAe:Lcom/android/common/setting/IconListPreference;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/dng/c;->aOZ(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/android/dng/c;->azZ:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    new-instance v1, Lcom/android/dng/r;

    invoke-direct {v1, p0}, Lcom/android/dng/r;-><init>(Lcom/android/dng/c;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Bq(Lcom/android/common/ui/Q;)V

    .line 68
    return-void
.end method

.method private aOU()V
    .registers 5

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/dng/c;->aAa:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dng/c;->aAa:Ljava/util/ArrayList;

    .line 301
    :cond_b
    iget-object v0, p0, Lcom/android/dng/c;->aAa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 302
    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Lcom/android/dng/c;->azW:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 303
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 304
    const-string/jumbo v2, "DrawerListIcon"

    iget-object v3, p0, Lcom/android/dng/c;->azW:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string/jumbo v2, "DrawerListTitle"

    iget-object v3, p0, Lcom/android/dng/c;->azX:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v2, p0, Lcom/android/dng/c;->aAa:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 298
    :cond_3b
    return-void
.end method

.method private aOV(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/dng/c;->azS:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aOZ(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 203
    const v0, 0x7f1000b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dng/c;->aAj:Landroid/widget/TextView;

    .line 204
    const v0, 0x7f1000b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dng/c;->azY:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f1000b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dng/c;->azT:Landroid/widget/ImageView;

    .line 206
    const v0, 0x7f1000b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    iput-object v0, p0, Lcom/android/dng/c;->azZ:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    .line 207
    const v0, 0x7f1000b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/dng/c;->aAh:Landroid/widget/GridView;

    .line 208
    const v0, 0x7f1000b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dng/c;->aAi:Landroid/view/View;

    .line 209
    const v0, 0x7f1000ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/dng/c;->azU:Landroid/widget/LinearLayout;

    .line 210
    const v0, 0x7f1000af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/dng/c;->azV:Landroid/widget/LinearLayout;

    .line 211
    iget-object v0, p0, Lcom/android/dng/c;->aAj:Landroid/widget/TextView;

    new-instance v1, Lcom/android/dng/t;

    invoke-direct {v1, p0}, Lcom/android/dng/t;-><init>(Lcom/android/dng/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/android/dng/c;->azY:Landroid/widget/TextView;

    new-instance v1, Lcom/android/dng/u;

    invoke-direct {v1, p0}, Lcom/android/dng/u;-><init>(Lcom/android/dng/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/android/dng/c;->azV:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/dng/v;

    invoke-direct {v1, p0}, Lcom/android/dng/v;-><init>(Lcom/android/dng/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/android/dng/c;->azS:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dng/c;->aPa(Landroid/content/Context;)V

    .line 202
    return-void
.end method

.method private aPa(Landroid/content/Context;)V
    .registers 9

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/dng/c;->aAe:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->YP()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/dng/c;->azW:[I

    .line 256
    iget-object v0, p0, Lcom/android/dng/c;->aAe:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dng/c;->azX:[Ljava/lang/CharSequence;

    .line 257
    iget-object v0, p0, Lcom/android/dng/c;->aAj:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dng/c;->aAe:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/IconListPreference;->Vu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-direct {p0}, Lcom/android/dng/c;->aOU()V

    .line 260
    iget-object v0, p0, Lcom/android/dng/c;->aAh:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/dng/c;->azW:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 261
    iget-object v0, p0, Lcom/android/dng/c;->aAh:Landroid/widget/GridView;

    const/16 v1, 0x40

    invoke-static {v1}, Lcom/android/common/h;->aoT(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 263
    new-instance v0, Lcom/android/dng/d;

    iget-object v3, p0, Lcom/android/dng/c;->aAa:Ljava/util/ArrayList;

    .line 264
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "DrawerListIcon"

    const/4 v2, 0x0

    aput-object v1, v5, v2

    const-string/jumbo v1, "DrawerListTitle"

    const/4 v2, 0x1

    aput-object v1, v5, v2

    const v1, 0x7f1000b6

    const v2, 0x7f100071

    filled-new-array {v1, v2}, [I

    move-result-object v6

    const v4, 0x7f040026

    move-object v1, p0

    move-object v2, p1

    .line 263
    invoke-direct/range {v0 .. v6}, Lcom/android/dng/d;-><init>(Lcom/android/dng/c;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/dng/c;->aAf:Lcom/android/dng/d;

    .line 265
    iget-object v0, p0, Lcom/android/dng/c;->aAh:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/dng/c;->aAf:Lcom/android/dng/d;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 267
    iget-object v0, p0, Lcom/android/dng/c;->aAh:Landroid/widget/GridView;

    new-instance v1, Lcom/android/dng/w;

    invoke-direct {v1, p0}, Lcom/android/dng/w;-><init>(Lcom/android/dng/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 254
    return-void
.end method

.method private aPb()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 189
    iget-object v0, p0, Lcom/android/dng/c;->aAj:Landroid/widget/TextView;

    const v1, 0x7f0201ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 190
    iget-object v0, p0, Lcom/android/dng/c;->azY:Landroid/widget/TextView;

    const v1, 0x7f0201bb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 191
    iget-object v0, p0, Lcom/android/dng/c;->aAj:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dng/c;->azP:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object v0, p0, Lcom/android/dng/c;->azY:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dng/c;->azO:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iget-object v0, p0, Lcom/android/dng/c;->azZ:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    invoke-virtual {v0, v5}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/android/dng/c;->aAi:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/dng/c;->azS:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_interval_pro"

    const-string/jumbo v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/android/dng/c;->azZ:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/dng/c;->aAg:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string/jumbo v3, "60S"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Br([Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/android/dng/c;->azZ:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v5, v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->Bs(II)V

    .line 188
    return-void
.end method

.method private aPc()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 178
    iget-object v0, p0, Lcom/android/dng/c;->azY:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_b

    return-void

    .line 179
    :cond_b
    iget-object v0, p0, Lcom/android/dng/c;->aAj:Landroid/widget/TextView;

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 180
    iget-object v0, p0, Lcom/android/dng/c;->azY:Landroid/widget/TextView;

    const v1, 0x7f0201bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 181
    iget-object v0, p0, Lcom/android/dng/c;->aAj:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dng/c;->azO:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object v0, p0, Lcom/android/dng/c;->azY:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dng/c;->azP:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object v0, p0, Lcom/android/dng/c;->aAi:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/dng/c;->azZ:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->setVisibility(I)V

    .line 177
    return-void
.end method

.method static synthetic aPg(Lcom/android/dng/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/dng/c;->azR:Z

    return v0
.end method

.method static synthetic aPh(Lcom/android/dng/c;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/c;->azT:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic aPi(Lcom/android/dng/c;)[Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/c;->azX:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic aPj(Lcom/android/dng/c;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/c;->azY:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aPk(Lcom/android/dng/c;)Lcom/android/dng/e;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/c;->aAb:Lcom/android/dng/e;

    return-object v0
.end method

.method static synthetic aPl(Lcom/android/dng/c;)Lcom/android/common/ui/J;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/c;->aAc:Lcom/android/common/ui/J;

    return-object v0
.end method

.method static synthetic aPm(Lcom/android/dng/c;)I
    .registers 2

    iget v0, p0, Lcom/android/dng/c;->aAd:I

    return v0
.end method

.method static synthetic aPn(Lcom/android/dng/c;)Lcom/android/common/setting/IconListPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/c;->aAe:Lcom/android/common/setting/IconListPreference;

    return-object v0
.end method

.method static synthetic aPo(Lcom/android/dng/c;)Lcom/android/dng/d;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/c;->aAf:Lcom/android/dng/d;

    return-object v0
.end method

.method static synthetic aPp(Lcom/android/dng/c;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/c;->aAj:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aPq(Lcom/android/dng/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/dng/c;->aAk:Z

    return v0
.end method

.method static synthetic aPr(Lcom/android/dng/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/dng/c;->azR:Z

    return p1
.end method

.method static synthetic aPs(Lcom/android/dng/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/dng/c;->aPb()V

    return-void
.end method

.method static synthetic aPt(Lcom/android/dng/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/dng/c;->aPc()V

    return-void
.end method


# virtual methods
.method public aOW()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    const/16 v2, 0x8

    .line 153
    iget-object v0, p0, Lcom/android/dng/c;->azY:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_d

    .line 154
    return-void

    .line 156
    :cond_d
    iget-object v0, p0, Lcom/android/dng/c;->azV:Landroid/widget/LinearLayout;

    const v1, 0x7f02020f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 157
    iget-object v0, p0, Lcom/android/dng/c;->azT:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v0, p0, Lcom/android/dng/c;->azY:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/android/dng/c;->aAj:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v0, p0, Lcom/android/dng/c;->aAj:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dng/c;->azP:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v0, p0, Lcom/android/dng/c;->azY:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dng/c;->azP:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Lcom/android/dng/c;->azT:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 164
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 165
    iget-object v1, p0, Lcom/android/dng/c;->azT:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/dng/c;->aAj:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 169
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/common/h;->aoT(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 170
    iget-object v1, p0, Lcom/android/dng/c;->aAj:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v0, p0, Lcom/android/dng/c;->aAi:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/dng/c;->azZ:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->setVisibility(I)V

    .line 152
    return-void
.end method

.method public aOX()V
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/dng/c;->azU:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    return-void
.end method

.method public aOY()V
    .registers 9

    .prologue
    .line 99
    const/16 v0, 0x48

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    .line 100
    new-instance v1, Lcom/android/common/ui/J;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 101
    iget-object v3, p0, Lcom/android/dng/c;->azV:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/dng/c;->azZ:Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/dng/c;->aAi:Landroid/view/View;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 102
    const-string/jumbo v3, "translationY"

    .line 103
    const/4 v4, 0x0

    .line 104
    int-to-float v5, v0

    .line 105
    const-wide/16 v6, 0x1f4

    .line 100
    invoke-direct/range {v1 .. v7}, Lcom/android/common/ui/J;-><init>([Ljava/lang/Object;Ljava/lang/String;FFJ)V

    iput-object v1, p0, Lcom/android/dng/c;->aAc:Lcom/android/common/ui/J;

    .line 106
    iget-object v0, p0, Lcom/android/dng/c;->aAc:Lcom/android/common/ui/J;

    new-instance v1, Lcom/android/dng/s;

    invoke-direct {v1, p0}, Lcom/android/dng/s;-><init>(Lcom/android/dng/c;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/J;->Aj(Lcom/android/common/ui/K;)V

    .line 98
    return-void
.end method

.method public aPd()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/dng/c;->aAc:Lcom/android/common/ui/J;

    invoke-virtual {v0}, Lcom/android/common/ui/J;->release()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dng/c;->aAc:Lcom/android/common/ui/J;

    .line 120
    return-void
.end method

.method public aPe()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/android/dng/c;->azY:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 133
    return-void

    .line 135
    :cond_a
    iget-object v0, p0, Lcom/android/dng/c;->azV:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p0, Lcom/android/dng/c;->azT:Landroid/widget/ImageView;

    const v1, 0x7f0201bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 137
    iget-object v0, p0, Lcom/android/dng/c;->azY:Landroid/widget/TextView;

    const v1, 0x7f0201bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 138
    iget-object v0, p0, Lcom/android/dng/c;->azY:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/android/dng/c;->aAj:Landroid/widget/TextView;

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 140
    iget-object v0, p0, Lcom/android/dng/c;->aAj:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dng/c;->azO:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v0, p0, Lcom/android/dng/c;->azY:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dng/c;->azP:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v0, p0, Lcom/android/dng/c;->azT:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 143
    iget v1, p0, Lcom/android/dng/c;->azN:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 144
    iget-object v1, p0, Lcom/android/dng/c;->azT:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/dng/c;->aAj:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget v1, p0, Lcom/android/dng/c;->azN:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 148
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 149
    iget-object v1, p0, Lcom/android/dng/c;->aAj:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    return-void
.end method

.method public aPf()V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/dng/c;->azU:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/dng/c;->aAh:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 355
    return-void
.end method

.method public vn(IZ)V
    .registers 4

    .prologue
    .line 348
    iput p1, p0, Lcom/android/dng/c;->aAd:I

    .line 349
    iput-boolean p2, p0, Lcom/android/dng/c;->aAk:Z

    .line 350
    iget-object v0, p0, Lcom/android/dng/c;->aAf:Lcom/android/dng/d;

    if-eqz v0, :cond_d

    .line 351
    iget-object v0, p0, Lcom/android/dng/c;->aAf:Lcom/android/dng/d;

    invoke-virtual {v0}, Lcom/android/dng/d;->notifyDataSetChanged()V

    .line 347
    :cond_d
    return-void
.end method

.class public Lcom/android/pretty/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/pretty/t;


# instance fields
.field private aEA:I

.field private aEB:I

.field private aEC:I

.field private aED:Lcom/android/pretty/v;

.field private aEE:Lcom/android/common/appService/W;

.field private aEF:Landroid/widget/ImageView;

.field private aEG:Lcom/android/pretty/WaterDropSeekbar;

.field private aEH:Landroid/widget/TextView;

.field private aEI:Lcom/android/pretty/q;

.field private aEJ:I

.field private aEK:Landroid/widget/LinearLayout;

.field private aEL:Z

.field private aEM:Z

.field private aEN:I

.field private aEO:Lcom/android/common/ui/J;

.field private aEP:I

.field private aEQ:I

.field private aER:Landroid/view/View;

.field private aES:Lcom/android/pretty/WaterDropSeekbar;

.field private aET:Landroid/widget/TextView;

.field private aEU:I

.field private aEV:Lcom/android/pretty/k;

.field private aEz:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/pretty/u;->aEB:I

    .line 45
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/pretty/u;->aEA:I

    .line 357
    new-instance v0, Lcom/android/pretty/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/pretty/v;-><init>(Lcom/android/pretty/u;Lcom/android/pretty/v;)V

    iput-object v0, p0, Lcom/android/pretty/u;->aED:Lcom/android/pretty/v;

    .line 55
    iput-object p1, p0, Lcom/android/pretty/u;->aEE:Lcom/android/common/appService/W;

    .line 56
    iget-object v0, p0, Lcom/android/pretty/u;->aEE:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/pretty/u;->aEz:I

    .line 57
    iget-object v0, p0, Lcom/android/pretty/u;->aEE:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/pretty/u;->aEC:I

    .line 58
    iget-object v0, p0, Lcom/android/pretty/u;->aEE:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/pretty/u;->aEN:I

    .line 59
    iget-object v0, p0, Lcom/android/pretty/u;->aEE:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/pretty/u;->aEU:I

    .line 60
    iget-object v0, p0, Lcom/android/pretty/u;->aEE:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/pretty/u;->aEJ:I

    .line 61
    iget-object v0, p0, Lcom/android/pretty/u;->aEE:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/pretty/u;->aEP:I

    .line 62
    iget-object v0, p0, Lcom/android/pretty/u;->aEE:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/pretty/u;->aEQ:I

    .line 54
    return-void
.end method

.method private aTK()V
    .registers 3

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/android/pretty/u;->aEM:Z

    if-eqz v0, :cond_f

    .line 472
    iget-object v0, p0, Lcom/android/pretty/u;->aER:Landroid/view/View;

    iget v1, p0, Lcom/android/pretty/u;->aEC:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/pretty/u;->aEM:Z

    .line 470
    :cond_f
    return-void
.end method

.method private aTL(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;
    .registers 15

    .prologue
    .line 260
    new-instance v0, Lcom/android/pretty/I;

    move-object v1, p0

    move-object v2, p2

    move v3, p5

    move v4, p6

    move v5, p3

    move v6, p4

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/pretty/I;-><init>(Lcom/android/pretty/u;Landroid/view/View;IIIILjava/lang/String;)V

    return-object v0
.end method

.method private aTM(Landroid/view/View;)V
    .registers 10

    .prologue
    .line 512
    new-instance v1, Lcom/android/common/ui/J;

    .line 513
    const/4 v0, 0x1

    new-array v2, v0, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x0

    iget v0, p0, Lcom/android/pretty/u;->aEC:I

    int-to-float v5, v0

    const-wide/16 v6, 0x1f4

    .line 512
    invoke-direct/range {v1 .. v7}, Lcom/android/common/ui/J;-><init>([Ljava/lang/Object;Ljava/lang/String;FFJ)V

    iput-object v1, p0, Lcom/android/pretty/u;->aEO:Lcom/android/common/ui/J;

    .line 514
    iget-object v0, p0, Lcom/android/pretty/u;->aEO:Lcom/android/common/ui/J;

    new-instance v1, Lcom/android/pretty/Q;

    invoke-direct {v1, p0}, Lcom/android/pretty/Q;-><init>(Lcom/android/pretty/u;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/J;->Aj(Lcom/android/common/ui/K;)V

    .line 511
    return-void
.end method

.method private aTN(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 439
    const v0, 0x7f1000b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/pretty/u;->aEF:Landroid/widget/ImageView;

    .line 440
    iget-object v0, p0, Lcom/android/pretty/u;->aEF:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/pretty/O;

    invoke-direct {v1, p0}, Lcom/android/pretty/O;-><init>(Lcom/android/pretty/u;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    return-void
.end method

.method private aTO(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 359
    const v0, 0x7f100147

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/pretty/u;->aEH:Landroid/widget/TextView;

    .line 360
    const v0, 0x7f100149

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/pretty/WaterDropSeekbar;

    iput-object v0, p0, Lcom/android/pretty/u;->aEG:Lcom/android/pretty/WaterDropSeekbar;

    .line 362
    iget-object v0, p0, Lcom/android/pretty/u;->aEH:Landroid/widget/TextView;

    new-instance v1, Lcom/android/pretty/L;

    invoke-direct {v1, p0}, Lcom/android/pretty/L;-><init>(Lcom/android/pretty/u;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v0, p0, Lcom/android/pretty/u;->aEG:Lcom/android/pretty/WaterDropSeekbar;

    iget-object v1, p0, Lcom/android/pretty/u;->aED:Lcom/android/pretty/v;

    invoke-virtual {v1}, Lcom/android/pretty/v;->aUr()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/pretty/WaterDropSeekbar;->aSV(I)V

    .line 397
    iget-object v0, p0, Lcom/android/pretty/u;->aEG:Lcom/android/pretty/WaterDropSeekbar;

    iget-object v1, p0, Lcom/android/pretty/u;->aED:Lcom/android/pretty/v;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/android/pretty/v;->aUx(Lcom/android/pretty/v;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/pretty/WaterDropSeekbar;->aSW(I)V

    .line 398
    iget-object v0, p0, Lcom/android/pretty/u;->aEG:Lcom/android/pretty/WaterDropSeekbar;

    iget-object v1, p0, Lcom/android/pretty/u;->aED:Lcom/android/pretty/v;

    invoke-virtual {v1}, Lcom/android/pretty/v;->aUw()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/pretty/WaterDropSeekbar;->aTg(I)V

    .line 399
    iget-object v0, p0, Lcom/android/pretty/u;->aEG:Lcom/android/pretty/WaterDropSeekbar;

    new-instance v1, Lcom/android/pretty/M;

    invoke-direct {v1, p0}, Lcom/android/pretty/M;-><init>(Lcom/android/pretty/u;)V

    invoke-virtual {v0, v1}, Lcom/android/pretty/WaterDropSeekbar;->aSX(Lcom/android/pretty/m;)V

    .line 417
    iget-object v0, p0, Lcom/android/pretty/u;->aEG:Lcom/android/pretty/WaterDropSeekbar;

    new-instance v1, Lcom/android/pretty/N;

    invoke-direct {v1, p0}, Lcom/android/pretty/N;-><init>(Lcom/android/pretty/u;)V

    invoke-virtual {v0, v1}, Lcom/android/pretty/WaterDropSeekbar;->aTh(Lcom/android/pretty/n;)V

    .line 358
    return-void
.end method

.method private aTP(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 307
    const v0, 0x7f100146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/pretty/u;->aET:Landroid/widget/TextView;

    .line 308
    const v0, 0x7f100148

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/pretty/WaterDropSeekbar;

    iput-object v0, p0, Lcom/android/pretty/u;->aES:Lcom/android/pretty/WaterDropSeekbar;

    .line 310
    iget-object v0, p0, Lcom/android/pretty/u;->aET:Landroid/widget/TextView;

    new-instance v1, Lcom/android/pretty/J;

    invoke-direct {v1, p0}, Lcom/android/pretty/J;-><init>(Lcom/android/pretty/u;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    new-instance v0, Lcom/android/pretty/q;

    iget-object v1, p0, Lcom/android/pretty/u;->aEE:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/pretty/u;->aEE:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v2

    .line 344
    new-instance v3, Lcom/android/pretty/K;

    invoke-direct {v3, p0}, Lcom/android/pretty/K;-><init>(Lcom/android/pretty/u;)V

    .line 343
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/pretty/q;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/content/SharedPreferences;Lcom/android/pretty/k;)V

    iput-object v0, p0, Lcom/android/pretty/u;->aEI:Lcom/android/pretty/q;

    .line 306
    return-void
.end method

.method private aTQ(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 495
    const v0, 0x7f100145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/pretty/u;->aER:Landroid/view/View;

    .line 496
    const v0, 0x7f1000bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/pretty/u;->aEK:Landroid/widget/LinearLayout;

    .line 497
    iget-object v0, p0, Lcom/android/pretty/u;->aEK:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/pretty/P;

    invoke-direct {v1, p0}, Lcom/android/pretty/P;-><init>(Lcom/android/pretty/u;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 494
    return-void
.end method

.method private aTR()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 71
    iget-boolean v1, p0, Lcom/android/pretty/u;->aEL:Z

    if-eqz v1, :cond_e

    .line 72
    iget-object v1, p0, Lcom/android/pretty/u;->aER:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 71
    :cond_e
    return v0
.end method

.method private aTS()Z
    .registers 5

    .prologue
    .line 299
    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcom/android/pretty/u;->aEE:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v1

    const-string/jumbo v2, "pref_bokeh_level_adjustable"

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private aTT()Z
    .registers 5

    .prologue
    .line 295
    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcom/android/pretty/u;->aEE:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v1

    const-string/jumbo v2, "pref_pretty_switch"

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private aTU()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 461
    iget-boolean v0, p0, Lcom/android/pretty/u;->aEM:Z

    if-eqz v0, :cond_d

    .line 462
    iget-object v0, p0, Lcom/android/pretty/u;->aEO:Lcom/android/common/ui/J;

    invoke-virtual {v0}, Lcom/android/common/ui/J;->start()V

    .line 463
    iput-boolean v1, p0, Lcom/android/pretty/u;->aEL:Z

    .line 460
    :goto_c
    return-void

    .line 465
    :cond_d
    iget-object v0, p0, Lcom/android/pretty/u;->aEO:Lcom/android/common/ui/J;

    invoke-virtual {v0}, Lcom/android/common/ui/J;->Ak()V

    .line 466
    iput-boolean v1, p0, Lcom/android/pretty/u;->aEL:Z

    goto :goto_c
.end method

.method private aTV(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 209
    const v0, 0x7f02020f

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 210
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 211
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget v0, p0, Lcom/android/pretty/u;->aEB:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 215
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 216
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 220
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 222
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    return-void
.end method

.method private aTW(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;ZZ)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 229
    if-eqz p6, :cond_68

    .line 230
    const v0, 0x7f0201bb

    .line 229
    :goto_a
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 232
    if-eqz p5, :cond_6c

    .line 233
    const v0, 0x7f0201b9

    .line 232
    :goto_12
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 235
    if-eqz p5, :cond_70

    iget v0, p0, Lcom/android/pretty/u;->aEA:I

    :goto_19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    if-eqz p6, :cond_73

    iget v0, p0, Lcom/android/pretty/u;->aEA:I

    :goto_20
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    const v0, 0x7f0201bd

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 239
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 240
    iget v1, p0, Lcom/android/pretty/u;->aEz:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 241
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 244
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget v1, p0, Lcom/android/pretty/u;->aEz:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 246
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 247
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 248
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 251
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget v1, p0, Lcom/android/pretty/u;->aEz:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 253
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 254
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 255
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    return-void

    .line 231
    :cond_68
    const v0, 0x7f0201bc

    goto :goto_a

    .line 234
    :cond_6c
    const v0, 0x7f0201ba

    goto :goto_12

    .line 235
    :cond_70
    iget v0, p0, Lcom/android/pretty/u;->aEB:I

    goto :goto_19

    .line 236
    :cond_73
    iget v0, p0, Lcom/android/pretty/u;->aEB:I

    goto :goto_20
.end method

.method private aTY()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 128
    invoke-direct {p0}, Lcom/android/pretty/u;->aTT()Z

    move-result v0

    .line 129
    invoke-direct {p0}, Lcom/android/pretty/u;->aTS()Z

    move-result v1

    .line 130
    if-eqz v0, :cond_4c

    if-eqz v1, :cond_4c

    .line 131
    iget-object v7, p0, Lcom/android/pretty/u;->aET:Landroid/widget/TextView;

    const-string/jumbo v1, "PrettyTabButton"

    iget-object v2, p0, Lcom/android/pretty/u;->aET:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/pretty/u;->aEJ:I

    iget v5, p0, Lcom/android/pretty/u;->aEJ:I

    iget v6, p0, Lcom/android/pretty/u;->aEJ:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/pretty/u;->aTL(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 132
    iget-object v0, p0, Lcom/android/pretty/u;->aEH:Landroid/widget/TextView;

    const-string/jumbo v2, "BokehTabButton"

    iget-object v3, p0, Lcom/android/pretty/u;->aEH:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/pretty/u;->aEJ:I

    iget v7, p0, Lcom/android/pretty/u;->aEJ:I

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v7}, Lcom/android/pretty/u;->aTL(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 133
    iget-object v0, p0, Lcom/android/pretty/u;->aEF:Landroid/widget/ImageView;

    const-string/jumbo v2, "ArrowTab"

    iget-object v3, p0, Lcom/android/pretty/u;->aEF:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/pretty/u;->aEJ:I

    iget v6, p0, Lcom/android/pretty/u;->aEJ:I

    iget v7, p0, Lcom/android/pretty/u;->aEJ:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/pretty/u;->aTL(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 127
    :cond_4b
    :goto_4b
    return-void

    .line 134
    :cond_4c
    if-eqz v0, :cond_79

    .line 135
    iget-object v7, p0, Lcom/android/pretty/u;->aET:Landroid/widget/TextView;

    const-string/jumbo v1, "PrettyTabButton"

    iget-object v2, p0, Lcom/android/pretty/u;->aET:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/pretty/u;->aEQ:I

    iget v5, p0, Lcom/android/pretty/u;->aEJ:I

    iget v6, p0, Lcom/android/pretty/u;->aEJ:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/pretty/u;->aTL(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 136
    iget-object v0, p0, Lcom/android/pretty/u;->aEF:Landroid/widget/ImageView;

    const-string/jumbo v2, "ArrowTab"

    iget-object v3, p0, Lcom/android/pretty/u;->aEF:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/pretty/u;->aEP:I

    iget v6, p0, Lcom/android/pretty/u;->aEP:I

    iget v7, p0, Lcom/android/pretty/u;->aEP:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/pretty/u;->aTL(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4b

    .line 137
    :cond_79
    if-eqz v1, :cond_4b

    .line 138
    iget-object v7, p0, Lcom/android/pretty/u;->aEH:Landroid/widget/TextView;

    const-string/jumbo v1, "BokehTabButton"

    iget-object v2, p0, Lcom/android/pretty/u;->aEH:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/pretty/u;->aEQ:I

    iget v5, p0, Lcom/android/pretty/u;->aEJ:I

    iget v6, p0, Lcom/android/pretty/u;->aEJ:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/pretty/u;->aTL(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 139
    iget-object v0, p0, Lcom/android/pretty/u;->aEF:Landroid/widget/ImageView;

    const-string/jumbo v2, "ArrowTab"

    iget-object v3, p0, Lcom/android/pretty/u;->aEF:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/pretty/u;->aEP:I

    iget v6, p0, Lcom/android/pretty/u;->aEP:I

    iget v7, p0, Lcom/android/pretty/u;->aEP:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/pretty/u;->aTL(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4b
.end method

.method static synthetic aTZ(Lcom/android/pretty/u;)I
    .registers 2

    iget v0, p0, Lcom/android/pretty/u;->aEA:I

    return v0
.end method

.method static synthetic aUa(Lcom/android/pretty/u;)I
    .registers 2

    iget v0, p0, Lcom/android/pretty/u;->aEB:I

    return v0
.end method

.method static synthetic aUb(Lcom/android/pretty/u;)Lcom/android/pretty/v;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/u;->aED:Lcom/android/pretty/v;

    return-object v0
.end method

.method static synthetic aUc(Lcom/android/pretty/u;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/u;->aEE:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic aUd(Lcom/android/pretty/u;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/u;->aEF:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic aUe(Lcom/android/pretty/u;)Lcom/android/pretty/WaterDropSeekbar;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/u;->aEG:Lcom/android/pretty/WaterDropSeekbar;

    return-object v0
.end method

.method static synthetic aUf(Lcom/android/pretty/u;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/u;->aEH:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aUg(Lcom/android/pretty/u;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/pretty/u;->aEM:Z

    return v0
.end method

.method static synthetic aUh(Lcom/android/pretty/u;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/u;->aER:Landroid/view/View;

    return-object v0
.end method

.method static synthetic aUi(Lcom/android/pretty/u;)Lcom/android/pretty/WaterDropSeekbar;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/u;->aES:Lcom/android/pretty/WaterDropSeekbar;

    return-object v0
.end method

.method static synthetic aUj(Lcom/android/pretty/u;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/u;->aET:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aUk(Lcom/android/pretty/u;)Lcom/android/pretty/k;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/u;->aEV:Lcom/android/pretty/k;

    return-object v0
.end method

.method static synthetic aUl(Lcom/android/pretty/u;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/pretty/u;->aEL:Z

    return p1
.end method

.method static synthetic aUm(Lcom/android/pretty/u;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/pretty/u;->aEM:Z

    return p1
.end method

.method static synthetic aUn(Lcom/android/pretty/u;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/pretty/u;->aTU()V

    return-void
.end method

.method static synthetic aUo(Lcom/android/pretty/u;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/pretty/u;->aTY()V

    return-void
.end method


# virtual methods
.method public aTX()V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0}, Lcom/android/pretty/u;->aTT()Z

    move-result v1

    .line 146
    invoke-direct {p0}, Lcom/android/pretty/u;->aTS()Z

    move-result v2

    .line 147
    const-string/jumbo v3, "PortraitPrettySettingLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PrettySwitchOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", BokehLevelOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-eqz v1, :cond_9c

    if-eqz v2, :cond_9c

    .line 149
    iget-object v3, p0, Lcom/android/pretty/u;->aER:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4e

    .line 150
    iget-object v3, p0, Lcom/android/pretty/u;->aEH:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4e

    .line 151
    iget-object v3, p0, Lcom/android/pretty/u;->aET:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4e

    .line 152
    return-void

    .line 155
    :cond_4e
    iget-object v3, p0, Lcom/android/pretty/u;->aER:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 159
    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/android/pretty/u;->aET:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v7, :cond_83

    .line 161
    iget-object v1, p0, Lcom/android/pretty/u;->aES:Lcom/android/pretty/WaterDropSeekbar;

    invoke-virtual {v1, v0}, Lcom/android/pretty/WaterDropSeekbar;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/android/pretty/u;->aEG:Lcom/android/pretty/WaterDropSeekbar;

    invoke-virtual {v1, v7}, Lcom/android/pretty/WaterDropSeekbar;->setVisibility(I)V

    move v5, v6

    move v6, v0

    .line 168
    :goto_69
    iget-object v1, p0, Lcom/android/pretty/u;->aEH:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/android/pretty/u;->aET:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/android/pretty/u;->aET:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/pretty/u;->aEH:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/pretty/u;->aEF:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/pretty/u;->aEK:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/pretty/u;->aTW(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;ZZ)V

    .line 205
    :goto_7f
    invoke-direct {p0}, Lcom/android/pretty/u;->aTY()V

    .line 144
    return-void

    .line 163
    :cond_83
    if-eqz v2, :cond_99

    iget-object v1, p0, Lcom/android/pretty/u;->aEH:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v7, :cond_99

    .line 165
    iget-object v1, p0, Lcom/android/pretty/u;->aES:Lcom/android/pretty/WaterDropSeekbar;

    invoke-virtual {v1, v7}, Lcom/android/pretty/WaterDropSeekbar;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/android/pretty/u;->aEG:Lcom/android/pretty/WaterDropSeekbar;

    invoke-virtual {v1, v0}, Lcom/android/pretty/WaterDropSeekbar;->setVisibility(I)V

    move v5, v0

    goto :goto_69

    :cond_99
    move v6, v0

    move v5, v0

    .line 163
    goto :goto_69

    .line 175
    :cond_9c
    if-eqz v1, :cond_e2

    .line 176
    iget-object v1, p0, Lcom/android/pretty/u;->aER:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_bf

    .line 177
    iget-object v1, p0, Lcom/android/pretty/u;->aEH:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v7, :cond_bf

    .line 178
    iget-object v1, p0, Lcom/android/pretty/u;->aET:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_bf

    .line 179
    iget-object v1, p0, Lcom/android/pretty/u;->aES:Lcom/android/pretty/WaterDropSeekbar;

    invoke-virtual {v1}, Lcom/android/pretty/WaterDropSeekbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_bf

    .line 180
    return-void

    .line 182
    :cond_bf
    iget-object v1, p0, Lcom/android/pretty/u;->aER:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/android/pretty/u;->aEH:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/android/pretty/u;->aEG:Lcom/android/pretty/WaterDropSeekbar;

    invoke-virtual {v1, v7}, Lcom/android/pretty/WaterDropSeekbar;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/android/pretty/u;->aES:Lcom/android/pretty/WaterDropSeekbar;

    invoke-virtual {v1, v0}, Lcom/android/pretty/WaterDropSeekbar;->setVisibility(I)V

    .line 186
    iget-object v1, p0, Lcom/android/pretty/u;->aET:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/pretty/u;->aET:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/pretty/u;->aEF:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/pretty/u;->aEK:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/pretty/u;->aTV(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    goto :goto_7f

    .line 189
    :cond_e2
    if-eqz v2, :cond_129

    .line 190
    iget-object v1, p0, Lcom/android/pretty/u;->aER:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_105

    .line 191
    iget-object v1, p0, Lcom/android/pretty/u;->aEH:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_105

    .line 192
    iget-object v1, p0, Lcom/android/pretty/u;->aET:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v7, :cond_105

    .line 193
    iget-object v1, p0, Lcom/android/pretty/u;->aEG:Lcom/android/pretty/WaterDropSeekbar;

    invoke-virtual {v1}, Lcom/android/pretty/WaterDropSeekbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_105

    .line 194
    return-void

    .line 196
    :cond_105
    iget-object v1, p0, Lcom/android/pretty/u;->aER:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lcom/android/pretty/u;->aET:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/android/pretty/u;->aES:Lcom/android/pretty/WaterDropSeekbar;

    invoke-virtual {v1, v7}, Lcom/android/pretty/WaterDropSeekbar;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/android/pretty/u;->aEG:Lcom/android/pretty/WaterDropSeekbar;

    invoke-virtual {v1, v0}, Lcom/android/pretty/WaterDropSeekbar;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/android/pretty/u;->aEH:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/pretty/u;->aEH:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/pretty/u;->aEF:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/pretty/u;->aEK:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/pretty/u;->aTV(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    goto/16 :goto_7f

    .line 203
    :cond_129
    iget-object v0, p0, Lcom/android/pretty/u;->aER:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7f
.end method

.method public aTr(Landroid/view/ViewGroup;)V
    .registers 5

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040056

    .line 118
    const/4 v2, 0x1

    .line 117
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/pretty/u;->aTP(Landroid/view/View;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/android/pretty/u;->aTO(Landroid/view/View;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/android/pretty/u;->aTN(Landroid/view/View;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/android/pretty/u;->aTQ(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/android/pretty/u;->aER:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/pretty/u;->aTM(Landroid/view/View;)V

    .line 124
    invoke-direct {p0}, Lcom/android/pretty/u;->aTY()V

    .line 116
    return-void
.end method

.method public aTt()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/android/pretty/u;->aTX()V

    .line 104
    iget-object v0, p0, Lcom/android/pretty/u;->aER:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    .line 105
    invoke-direct {p0}, Lcom/android/pretty/u;->aTK()V

    .line 108
    :cond_11
    invoke-direct {p0}, Lcom/android/pretty/u;->aTT()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 109
    iget-object v0, p0, Lcom/android/pretty/u;->aEI:Lcom/android/pretty/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/pretty/q;->aTB(Z)V

    .line 100
    :goto_1d
    return-void

    .line 111
    :cond_1e
    iget-object v0, p0, Lcom/android/pretty/u;->aEV:Lcom/android/pretty/k;

    invoke-interface {v0, v2, v2, v2}, Lcom/android/pretty/k;->aSU(III)V

    goto :goto_1d
.end method

.method public aTu(Lcom/android/pretty/k;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/pretty/u;->aEV:Lcom/android/pretty/k;

    .line 66
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/pretty/u;->aTR()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 78
    const-string/jumbo v0, "PortraitPrettySettingLayout"

    const-string/jumbo v1, "Setting animating, prettyFrament consume the TouchEvent"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public setVisibility(I)V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/pretty/u;->aER:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    return-void
.end method

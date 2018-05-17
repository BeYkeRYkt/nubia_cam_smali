.class public Lcom/android/common/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private TAG:Ljava/lang/String;

.field private aio:Lcom/android/common/u;

.field private aip:Landroid/content/Context;

.field private aiq:Landroid/widget/TextView;

.field private air:Landroid/widget/SeekBar;

.field private ais:Landroid/widget/LinearLayout;

.field private ait:Landroid/widget/RelativeLayout;

.field private aiu:Landroid/widget/TextView;

.field private aiv:Landroid/widget/TextView;

.field private aiw:Landroid/content/SharedPreferences;

.field private aix:Landroid/widget/TextView;

.field private aiy:Lcom/android/common/v;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/SharedPreferences;Lcom/android/common/u;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "IntervalometerManager"

    iput-object v0, p0, Lcom/android/common/t;->TAG:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/android/common/t;->aip:Landroid/content/Context;

    .line 23
    iput-object v1, p0, Lcom/android/common/t;->aiw:Landroid/content/SharedPreferences;

    .line 25
    iput-object v1, p0, Lcom/android/common/t;->ait:Landroid/widget/RelativeLayout;

    .line 26
    iput-object v1, p0, Lcom/android/common/t;->aiu:Landroid/widget/TextView;

    .line 27
    iput-object v1, p0, Lcom/android/common/t;->air:Landroid/widget/SeekBar;

    .line 28
    new-instance v0, Lcom/android/common/v;

    invoke-direct {v0, p0, v1}, Lcom/android/common/v;-><init>(Lcom/android/common/t;Lcom/android/common/v;)V

    iput-object v0, p0, Lcom/android/common/t;->aiy:Lcom/android/common/v;

    .line 29
    iput-object v1, p0, Lcom/android/common/t;->ais:Landroid/widget/LinearLayout;

    .line 30
    iput-object v1, p0, Lcom/android/common/t;->aiv:Landroid/widget/TextView;

    .line 31
    iput-object v1, p0, Lcom/android/common/t;->aix:Landroid/widget/TextView;

    .line 32
    iput-object v1, p0, Lcom/android/common/t;->aiq:Landroid/widget/TextView;

    .line 34
    iput-object v1, p0, Lcom/android/common/t;->aio:Lcom/android/common/u;

    .line 45
    iget-object v0, p0, Lcom/android/common/t;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "IntervalometerManager"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object p2, p0, Lcom/android/common/t;->aiw:Landroid/content/SharedPreferences;

    .line 47
    iput-object p3, p0, Lcom/android/common/t;->aio:Lcom/android/common/u;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/common/t;->arz(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method static synthetic arA(Lcom/android/common/t;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/common/t;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic arB(Lcom/android/common/t;)Lcom/android/common/u;
    .registers 2

    iget-object v0, p0, Lcom/android/common/t;->aio:Lcom/android/common/u;

    return-object v0
.end method

.method static synthetic arC(Lcom/android/common/t;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/common/t;->aiq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic arD(Lcom/android/common/t;)Landroid/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Lcom/android/common/t;->air:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic arE(Lcom/android/common/t;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/common/t;->ait:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic arF(Lcom/android/common/t;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/android/common/t;->aiw:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private ary(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 87
    const v0, 0x7f100102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/t;->aiv:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/android/common/t;->aiv:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v0, 0x7f100103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/t;->aix:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/android/common/t;->aix:Landroid/widget/TextView;

    const-string/jumbo v1, "60S"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/android/common/t;->aiw:Landroid/content/SharedPreferences;

    .line 92
    const-string/jumbo v1, "pref_camera_interval_pro"

    const-string/jumbo v2, "0"

    .line 91
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    const v0, 0x7f100100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/t;->aiq:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/android/common/t;->aiq:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v0, 0x7f100101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/common/t;->air:Landroid/widget/SeekBar;

    .line 96
    iget-object v0, p0, Lcom/android/common/t;->air:Landroid/widget/SeekBar;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 98
    const v0, 0x7f1000ff

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/common/t;->ais:Landroid/widget/LinearLayout;

    .line 99
    iget-object v0, p0, Lcom/android/common/t;->ais:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/common/ui/b;

    .line 100
    iget-object v2, p0, Lcom/android/common/t;->ais:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/common/t;->air:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/android/common/t;->aiy:Lcom/android/common/v;

    .line 99
    invoke-direct {v1, v2, v3, v4}, Lcom/android/common/ui/b;-><init>(Landroid/view/View;Landroid/widget/SeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/common/t;->air:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/common/t;->aiy:Lcom/android/common/v;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 86
    return-void
.end method

.method private arz(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 67
    const v0, 0x7f1000fd

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/t;->ait:Landroid/widget/RelativeLayout;

    .line 69
    const v0, 0x7f1000fe

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/t;->aiu:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/android/common/t;->aiu:Landroid/widget/TextView;

    new-instance v1, Lcom/android/common/M;

    invoke-direct {v1, p0}, Lcom/android/common/M;-><init>(Lcom/android/common/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/android/common/t;->ary(Landroid/view/View;)V

    .line 65
    return-void
.end method


# virtual methods
.method public arx()V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/common/t;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/common/t;->ait:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_13

    .line 61
    iget-object v0, p0, Lcom/android/common/t;->ait:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 58
    :cond_13
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/common/t;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/android/common/t;->ait:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_12

    .line 54
    iget-object v0, p0, Lcom/android/common/t;->ait:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 51
    :cond_12
    return-void
.end method

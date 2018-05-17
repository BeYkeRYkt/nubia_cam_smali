.class public Lcom/android/pretty/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/pretty/t;


# instance fields
.field private aEg:Lcom/android/common/appService/W;

.field private aEh:Lcom/android/pretty/q;

.field private aEi:Landroid/view/View;

.field private aEj:Landroid/widget/ImageView;

.field private aEk:Z

.field private aEl:Z

.field private aEm:Lcom/android/common/ui/J;

.field private aEn:Landroid/view/View;

.field private aEo:Lcom/android/pretty/k;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/pretty/p;->aEg:Lcom/android/common/appService/W;

    .line 29
    return-void
.end method

.method static synthetic aTA(Lcom/android/pretty/p;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/pretty/p;->aEl:Z

    return p1
.end method

.method private aTp(Landroid/view/View;)V
    .registers 10

    .prologue
    .line 94
    const v0, 0x7f1000bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/pretty/p;->aEi:Landroid/view/View;

    .line 95
    const v0, 0x7f1000b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/pretty/p;->aEj:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Lcom/android/pretty/p;->aEi:Landroid/view/View;

    new-instance v1, Lcom/android/pretty/F;

    invoke-direct {v1, p0}, Lcom/android/pretty/F;-><init>(Lcom/android/pretty/p;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/pretty/p;->aEg:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 109
    new-instance v1, Lcom/android/common/ui/J;

    .line 110
    const/4 v0, 0x1

    new-array v2, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/android/pretty/p;->aEn:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x0

    const-wide/16 v6, 0x1f4

    .line 109
    invoke-direct/range {v1 .. v7}, Lcom/android/common/ui/J;-><init>([Ljava/lang/Object;Ljava/lang/String;FFJ)V

    iput-object v1, p0, Lcom/android/pretty/p;->aEm:Lcom/android/common/ui/J;

    .line 111
    iget-object v0, p0, Lcom/android/pretty/p;->aEm:Lcom/android/common/ui/J;

    new-instance v1, Lcom/android/pretty/G;

    invoke-direct {v1, p0}, Lcom/android/pretty/G;-><init>(Lcom/android/pretty/p;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/J;->Aj(Lcom/android/common/ui/K;)V

    .line 93
    return-void
.end method

.method private aTq(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 80
    const v0, 0x7f100145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/pretty/p;->aEn:Landroid/view/View;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/pretty/p;->aTp(Landroid/view/View;)V

    .line 82
    new-instance v0, Lcom/android/pretty/q;

    iget-object v1, p0, Lcom/android/pretty/p;->aEg:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/pretty/p;->aEg:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v2

    .line 83
    new-instance v3, Lcom/android/pretty/E;

    invoke-direct {v3, p0}, Lcom/android/pretty/E;-><init>(Lcom/android/pretty/p;)V

    .line 82
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/pretty/q;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/content/SharedPreferences;Lcom/android/pretty/k;)V

    iput-object v0, p0, Lcom/android/pretty/p;->aEh:Lcom/android/pretty/q;

    .line 79
    return-void
.end method

.method private aTs()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-boolean v1, p0, Lcom/android/pretty/p;->aEk:Z

    if-eqz v1, :cond_e

    .line 46
    iget-object v1, p0, Lcom/android/pretty/p;->aEn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 45
    :cond_e
    return v0
.end method

.method static synthetic aTv(Lcom/android/pretty/p;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/p;->aEj:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic aTw(Lcom/android/pretty/p;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/pretty/p;->aEl:Z

    return v0
.end method

.method static synthetic aTx(Lcom/android/pretty/p;)Lcom/android/common/ui/J;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/p;->aEm:Lcom/android/common/ui/J;

    return-object v0
.end method

.method static synthetic aTy(Lcom/android/pretty/p;)Lcom/android/pretty/k;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/p;->aEo:Lcom/android/pretty/k;

    return-object v0
.end method

.method static synthetic aTz(Lcom/android/pretty/p;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/pretty/p;->aEk:Z

    return p1
.end method


# virtual methods
.method public aTr(Landroid/view/ViewGroup;)V
    .registers 5

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040059

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/pretty/p;->aTq(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public aTt()V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/pretty/p;->aEh:Lcom/android/pretty/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/pretty/q;->aTB(Z)V

    .line 70
    return-void
.end method

.method public aTu(Lcom/android/pretty/k;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/pretty/p;->aEo:Lcom/android/pretty/k;

    .line 34
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/pretty/p;->aTs()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 52
    const-string/jumbo v0, "NormalPrettySettingLayout"

    const-string/jumbo v1, "Setting animating, prettyFrament consume the TouchEvent"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public setVisibility(I)V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/pretty/p;->aEn:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-void
.end method

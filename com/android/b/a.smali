.class public Lcom/android/b/a;
.super Lcom/android/common/o/l;
.source "SourceFile"


# instance fields
.field private aBw:Lcom/android/common/ui/BigApertureSettingUI;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/a;->aBw:Lcom/android/common/ui/BigApertureSettingUI;

    .line 22
    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/a;->aBw:Lcom/android/common/ui/BigApertureSettingUI;

    .line 26
    return-void
.end method

.method private aQs(Landroid/view/View;)V
    .registers 5

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 79
    const v0, 0x7f10003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/BigApertureSettingUI;

    iput-object v0, p0, Lcom/android/b/a;->aBw:Lcom/android/common/ui/BigApertureSettingUI;

    .line 80
    iget-object v0, p0, Lcom/android/b/a;->aBw:Lcom/android/common/ui/BigApertureSettingUI;

    .line 82
    const/high16 v1, 0x41000000    # 8.0f

    .line 80
    invoke-virtual {v0, v2, v2, v1}, Lcom/android/common/ui/BigApertureSettingUI;->AL(FFF)V

    .line 84
    iget-object v0, p0, Lcom/android/b/a;->aBw:Lcom/android/common/ui/BigApertureSettingUI;

    new-instance v1, Lcom/android/b/f;

    invoke-direct {v1, p0}, Lcom/android/b/f;-><init>(Lcom/android/b/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/BigApertureSettingUI;->AM(Lcom/android/common/ui/O;)V

    .line 78
    return-void
.end method

.method private aQt(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/b/a;->aQs(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method public static aQu()Lcom/android/b/a;
    .registers 2

    .prologue
    .line 113
    new-instance v0, Lcom/android/b/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/b/a;-><init>(I)V

    return-object v0
.end method

.method static synthetic aQv(Lcom/android/b/a;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/b/a;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic aQw(Lcom/android/b/a;)Lcom/android/common/ui/BigApertureSettingUI;
    .registers 2

    iget-object v0, p0, Lcom/android/b/a;->aBw:Lcom/android/common/ui/BigApertureSettingUI;

    return-object v0
.end method


# virtual methods
.method public nE(II)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/b/a;->aBw:Lcom/android/common/ui/BigApertureSettingUI;

    if-eqz v0, :cond_13

    .line 106
    iget-object v0, p0, Lcom/android/b/a;->aBw:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/BigApertureSettingUI;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/android/b/a;->aBw:Lcom/android/common/ui/BigApertureSettingUI;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ui/BigApertureSettingUI;->AN(FF)Z

    move-result v0

    return v0

    .line 109
    :cond_13
    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 34
    iget-boolean v0, p0, Lcom/android/b/a;->adu:Z

    if-eqz v0, :cond_9

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_9
    const v0, 0x7f04000d

    .line 39
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    invoke-direct {p0, v0}, Lcom/android/b/a;->aQt(Landroid/view/View;)V

    .line 41
    return-object v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 66
    iget-boolean v0, p0, Lcom/android/b/a;->adu:Z

    if-eqz v0, :cond_8

    .line 67
    return-void

    .line 70
    :cond_8
    iget-object v0, p0, Lcom/android/b/a;->aBw:Lcom/android/common/ui/BigApertureSettingUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/BigApertureSettingUI;->AK(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/b/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->ea()V

    .line 64
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 46
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 47
    iget-boolean v0, p0, Lcom/android/b/a;->adu:Z

    if-eqz v0, :cond_8

    .line 48
    return-void

    .line 51
    :cond_8
    iget-object v0, p0, Lcom/android/b/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    new-instance v1, Lcom/android/b/e;

    invoke-direct {v1, p0}, Lcom/android/b/e;-><init>(Lcom/android/b/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/i;->dZ(Lcom/android/common/independentFocusExposure/n;)V

    .line 60
    iget-object v0, p0, Lcom/android/b/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/g;->dz(I)V

    .line 45
    return-void
.end method

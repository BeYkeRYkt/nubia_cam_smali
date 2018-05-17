.class public Lcom/android/panorama/j;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field private aPH:Lcom/android/panorama/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 28
    return-void
.end method

.method private bfV()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/panorama/j;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 118
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 119
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/panorama/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    return-object v0
.end method

.method public static bfW()Lcom/android/panorama/j;
    .registers 2

    .prologue
    .line 80
    new-instance v0, Lcom/android/panorama/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/panorama/j;-><init>(I)V

    .line 81
    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    .line 75
    iget-object v1, p0, Lcom/android/panorama/j;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/panorama/j;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/panorama/j;->aPH:Lcom/android/panorama/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 74
    return-object v0
.end method

.method protected aiE()Ljava/util/List;
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/android/panorama/j;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 35
    invoke-direct {p0}, Lcom/android/panorama/j;->bfV()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/panorama/j;->abD:Lcom/android/common/o/l;

    .line 36
    iget-object v0, p0, Lcom/android/panorama/j;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 38
    invoke-static {}, Lcom/android/panorama/a;->beG()Lcom/android/panorama/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/panorama/j;->aPH:Lcom/android/panorama/a;

    .line 39
    iget-object v0, p0, Lcom/android/panorama/j;->aPH:Lcom/android/panorama/a;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 41
    iget-object v0, p0, Lcom/android/panorama/j;->aPH:Lcom/android/panorama/a;

    invoke-static {v0, v3, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/panorama/j;->abE:Lcom/android/common/o/l;

    .line 42
    iget-object v0, p0, Lcom/android/panorama/j;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 44
    iget-object v0, p0, Lcom/android/panorama/j;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 46
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 32
    return-void
.end method

.method protected ajh(Z)V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/panorama/j;->aPH:Lcom/android/panorama/a;

    if-eqz v0, :cond_9

    .line 108
    iget-object v0, p0, Lcom/android/panorama/j;->aPH:Lcom/android/panorama/a;

    invoke-virtual {v0, p1}, Lcom/android/panorama/a;->beJ(Z)V

    .line 106
    :cond_9
    return-void
.end method

.method public mO()Z
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public mQ()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/panorama/j;->aPH:Lcom/android/panorama/a;

    if-eqz v0, :cond_d

    .line 87
    iget-object v0, p0, Lcom/android/panorama/j;->aPH:Lcom/android/panorama/a;

    invoke-virtual {v0}, Lcom/android/panorama/a;->beN()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 88
    return-void

    .line 92
    :cond_d
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 85
    return-void
.end method

.method public nG()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/panorama/j;->aPH:Lcom/android/panorama/a;

    if-eqz v0, :cond_d

    .line 98
    iget-object v0, p0, Lcom/android/panorama/j;->aPH:Lcom/android/panorama/a;

    invoke-virtual {v0}, Lcom/android/panorama/a;->beN()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 99
    return-void

    .line 103
    :cond_d
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 96
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 62
    iget-boolean v0, p0, Lcom/android/panorama/j;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 63
    :cond_8
    iget-object v1, p0, Lcom/android/panorama/j;->aPH:Lcom/android/panorama/a;

    iget-object v0, p0, Lcom/android/panorama/j;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/panorama/a;->alv(Lcom/android/common/e/h;)V

    .line 64
    iget-object v1, p0, Lcom/android/panorama/j;->aPH:Lcom/android/panorama/a;

    iget-object v0, p0, Lcom/android/panorama/j;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/panorama/a;->alv(Lcom/android/common/e/h;)V

    .line 65
    iget-object v0, p0, Lcom/android/panorama/j;->aPH:Lcom/android/panorama/a;

    invoke-virtual {v0, p0}, Lcom/android/panorama/a;->alv(Lcom/android/common/e/h;)V

    .line 60
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 54
    iget-boolean v0, p0, Lcom/android/panorama/j;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 55
    :cond_8
    iget-object v1, p0, Lcom/android/panorama/j;->aPH:Lcom/android/panorama/a;

    iget-object v0, p0, Lcom/android/panorama/j;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/panorama/a;->alu(Lcom/android/common/e/h;)V

    .line 56
    iget-object v1, p0, Lcom/android/panorama/j;->aPH:Lcom/android/panorama/a;

    iget-object v0, p0, Lcom/android/panorama/j;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/panorama/a;->alu(Lcom/android/common/e/h;)V

    .line 57
    iget-object v0, p0, Lcom/android/panorama/j;->aPH:Lcom/android/panorama/a;

    invoke-virtual {v0, p0}, Lcom/android/panorama/a;->alu(Lcom/android/common/e/h;)V

    .line 52
    return-void
.end method

.class public Lcom/android/objectclear/g;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field aUl:Lcom/android/objectclear/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 64
    return-void
.end method

.method private blB()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/objectclear/g;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 92
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 93
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/objectclear/g;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    return-object v0
.end method

.method public static blC()Lcom/android/objectclear/g;
    .registers 2

    .prologue
    .line 73
    new-instance v0, Lcom/android/objectclear/g;

    .line 74
    const/4 v1, 0x1

    .line 73
    invoke-direct {v0, v1}, Lcom/android/objectclear/g;-><init>(I)V

    .line 75
    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    iget-object v1, p0, Lcom/android/objectclear/g;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/objectclear/g;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 81
    iget-object v1, p0, Lcom/android/objectclear/g;->aUl:Lcom/android/objectclear/i;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 80
    return-object v0
.end method

.method protected aiE()Ljava/util/List;
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-virtual {p0}, Lcom/android/objectclear/g;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 32
    invoke-direct {p0}, Lcom/android/objectclear/g;->blB()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/objectclear/g;->abD:Lcom/android/common/o/l;

    .line 33
    iget-object v0, p0, Lcom/android/objectclear/g;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 35
    invoke-static {}, Lcom/android/objectclear/i;->blE()Lcom/android/objectclear/i;

    move-result-object v0

    iput-object v0, p0, Lcom/android/objectclear/g;->aUl:Lcom/android/objectclear/i;

    .line 36
    iget-object v0, p0, Lcom/android/objectclear/g;->aUl:Lcom/android/objectclear/i;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 38
    iget-object v0, p0, Lcom/android/objectclear/g;->aUl:Lcom/android/objectclear/i;

    invoke-static {v0, v3, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/objectclear/g;->abE:Lcom/android/common/o/l;

    .line 39
    iget-object v0, p0, Lcom/android/objectclear/g;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 41
    iget-object v0, p0, Lcom/android/objectclear/g;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 43
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 29
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 58
    iget-boolean v0, p0, Lcom/android/objectclear/g;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 59
    :cond_8
    iget-object v0, p0, Lcom/android/objectclear/g;->aUl:Lcom/android/objectclear/i;

    invoke-virtual {v0, p0}, Lcom/android/objectclear/i;->alv(Lcom/android/common/e/h;)V

    .line 60
    iget-object v1, p0, Lcom/android/objectclear/g;->aUl:Lcom/android/objectclear/i;

    iget-object v0, p0, Lcom/android/objectclear/g;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/objectclear/i;->alv(Lcom/android/common/e/h;)V

    .line 61
    iget-object v1, p0, Lcom/android/objectclear/g;->aUl:Lcom/android/objectclear/i;

    iget-object v0, p0, Lcom/android/objectclear/g;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/objectclear/i;->alv(Lcom/android/common/e/h;)V

    .line 56
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 49
    iget-boolean v0, p0, Lcom/android/objectclear/g;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 50
    :cond_8
    iget-object v1, p0, Lcom/android/objectclear/g;->aUl:Lcom/android/objectclear/i;

    iget-object v0, p0, Lcom/android/objectclear/g;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/objectclear/i;->alu(Lcom/android/common/e/h;)V

    .line 51
    iget-object v1, p0, Lcom/android/objectclear/g;->aUl:Lcom/android/objectclear/i;

    iget-object v0, p0, Lcom/android/objectclear/g;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/objectclear/i;->alu(Lcom/android/common/e/h;)V

    .line 52
    iget-object v0, p0, Lcom/android/objectclear/g;->aUl:Lcom/android/objectclear/i;

    invoke-virtual {v0, p0}, Lcom/android/objectclear/i;->alu(Lcom/android/common/e/h;)V

    .line 47
    return-void
.end method

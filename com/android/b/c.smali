.class public Lcom/android/b/c;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field private aBx:Lcom/android/b/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/c;->aBx:Lcom/android/b/a;

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/c;->aBx:Lcom/android/b/a;

    .line 32
    return-void
.end method

.method public static aQx()Lcom/android/b/c;
    .registers 2

    .prologue
    .line 97
    new-instance v0, Lcom/android/b/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/b/c;-><init>(I)V

    return-object v0
.end method

.method private aQy()Lcom/android/common/appService/b;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/android/b/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 82
    invoke-virtual {p0}, Lcom/android/b/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    return-object v0

    .line 84
    :cond_12
    return-object v1
.end method

.method private aQz()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/b/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 60
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 61
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/b/c;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/android/common/ui/F;

    invoke-virtual {p0}, Lcom/android/b/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/F;-><init>(Landroid/content/Context;)V

    .line 65
    const-string/jumbo v2, "pref_camera_delay_shoot_key"

    invoke-virtual {p0, v2}, Lcom/android/b/c;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/b/c;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v1, v2, v3}, Lcom/android/common/ui/F;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/b/c;->alw()Lcom/android/common/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/h/l;->aca()Lcom/android/common/h/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/ui/F;->zk(Lcom/android/common/ui/Y;)V

    .line 67
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100004

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    iget-object v1, p0, Lcom/android/b/c;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/b/c;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/b/c;->aBx:Lcom/android/b/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/android/b/c;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 40
    invoke-direct {p0}, Lcom/android/b/c;->aQz()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v1

    iput-object v1, p0, Lcom/android/b/c;->abD:Lcom/android/common/o/l;

    .line 41
    iget-object v1, p0, Lcom/android/b/c;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 43
    invoke-static {v3, v3, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/b/c;->abE:Lcom/android/common/o/l;

    .line 44
    iget-object v1, p0, Lcom/android/b/c;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 46
    invoke-static {}, Lcom/android/b/a;->aQu()Lcom/android/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/android/b/c;->aBx:Lcom/android/b/a;

    .line 47
    iget-object v1, p0, Lcom/android/b/c;->aBx:Lcom/android/b/a;

    const v2, 0x7f1000c9

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 49
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 37
    return-void
.end method

.method public nE(II)Z
    .registers 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/b/c;->aBx:Lcom/android/b/a;

    if-eqz v0, :cond_b

    .line 91
    iget-object v0, p0, Lcom/android/b/c;->aBx:Lcom/android/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/b/a;->nE(II)Z

    move-result v0

    return v0

    .line 93
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public nl()Lcom/android/common/appService/V;
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/b/c;->aQy()Lcom/android/common/appService/b;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 75
    invoke-direct {p0}, Lcom/android/b/c;->aQy()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hS()Lcom/android/common/appService/V;

    move-result-object v0

    return-object v0

    .line 77
    :cond_f
    invoke-super {p0}, Lcom/android/common/o/a;->nl()Lcom/android/common/appService/V;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/e/f;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field aWL:Lcom/android/e/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 46
    return-void
.end method

.method public static boK()Lcom/android/e/f;
    .registers 2

    .prologue
    .line 51
    new-instance v0, Lcom/android/e/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/e/f;-><init>(I)V

    return-object v0
.end method

.method private boL()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/e/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 133
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 134
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/e/f;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    const-string/jumbo v1, "pref_camera_flashmode_key"

    invoke-virtual {p0, v1}, Lcom/android/e/f;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_5a

    .line 139
    new-instance v2, Lcom/android/common/ui/an;

    invoke-virtual {p0}, Lcom/android/e/f;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/ui/an;-><init>(Landroid/content/Context;)V

    .line 140
    iget-object v3, p0, Lcom/android/e/f;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v2, v1, v3}, Lcom/android/common/ui/an;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/e/f;->alw()Lcom/android/common/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/h/l;->abZ()Lcom/android/common/h/j;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/common/ui/an;->zk(Lcom/android/common/ui/Y;)V

    .line 142
    new-instance v1, Lcom/android/common/o/o;

    const v3, 0x7f100002

    invoke-direct {v1, v3, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_5a
    return-object v0
.end method


# virtual methods
.method public Db(ZZ)V
    .registers 4

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lcom/android/common/o/a;->Db(ZZ)V

    .line 121
    iget-object v0, p0, Lcom/android/e/f;->aWL:Lcom/android/e/b;

    invoke-virtual {v0, p1, p2}, Lcom/android/e/b;->boe(ZZ)V

    .line 119
    return-void
.end method

.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    iget-object v1, p0, Lcom/android/e/f;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/e/f;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/e/f;->aWL:Lcom/android/e/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected aiE()Ljava/util/List;
    .registers 4

    .prologue
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    sget-boolean v1, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-eqz v1, :cond_21

    .line 89
    new-instance v1, Lcom/android/common/ui/v;

    iget-object v2, p0, Lcom/android/e/f;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/ui/v;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/android/common/ui/r;

    iget-object v2, p0, Lcom/android/e/f;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/ui/r;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/e/f;->aiv(Ljava/util/List;)V

    .line 95
    :goto_20
    return-object v0

    .line 93
    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method protected aiR()V
    .registers 5

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/e/f;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 67
    invoke-direct {p0}, Lcom/android/e/f;->boL()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/e/f;->abD:Lcom/android/common/o/l;

    .line 68
    iget-object v0, p0, Lcom/android/e/f;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 70
    invoke-static {}, Lcom/android/e/b;->boc()Lcom/android/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/e/f;->aWL:Lcom/android/e/b;

    .line 71
    iget-object v0, p0, Lcom/android/e/f;->aWL:Lcom/android/e/b;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 73
    invoke-virtual {p0}, Lcom/android/e/f;->aiE()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/e/f;->aio()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/e/f;->abE:Lcom/android/common/o/l;

    .line 74
    iget-object v0, p0, Lcom/android/e/f;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 75
    iget-object v0, p0, Lcom/android/e/f;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 77
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 65
    return-void
.end method

.method protected ajh(Z)V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/e/f;->aWL:Lcom/android/e/b;

    if-eqz v0, :cond_9

    .line 101
    iget-object v0, p0, Lcom/android/e/f;->aWL:Lcom/android/e/b;

    invoke-virtual {v0, p1}, Lcom/android/e/b;->bof(Z)V

    .line 99
    :cond_9
    return-void
.end method

.method public mY([B)Z
    .registers 3

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/e/f;->aim([B)V

    .line 127
    invoke-super {p0, p1}, Lcom/android/common/o/a;->mY([B)Z

    move-result v0

    return v0
.end method

.method public nt()V
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/e/f;->aWL:Lcom/android/e/b;

    if-eqz v0, :cond_9

    .line 114
    iget-object v0, p0, Lcom/android/e/f;->aWL:Lcom/android/e/b;

    invoke-virtual {v0}, Lcom/android/e/b;->bnW()V

    .line 112
    :cond_9
    return-void
.end method

.method public nz()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/e/f;->aWL:Lcom/android/e/b;

    invoke-virtual {v0}, Lcom/android/e/b;->bod()V

    .line 108
    invoke-super {p0}, Lcom/android/common/o/a;->nz()V

    .line 106
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 57
    iget-boolean v0, p0, Lcom/android/e/f;->adu:Z

    if-eqz v0, :cond_8

    .line 58
    return-void

    .line 60
    :cond_8
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/e/f;->ail(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/e/f;->aiu()V

    .line 55
    return-void
.end method

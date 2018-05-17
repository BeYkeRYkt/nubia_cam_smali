.class public Lcom/android/triaxial/a;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field aIT:Lcom/android/triaxial/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 75
    return-void
.end method

.method private aXZ()Ljava/util/ArrayList;
    .registers 7

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/triaxial/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 98
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 99
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/triaxial/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/android/triaxial/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pn()Lcom/android/common/appService/y;

    move-result-object v1

    iget-object v2, p0, Lcom/android/triaxial/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/common/appService/y;->kE(Lcom/android/common/appService/CameraMember;)Ljava/util/List;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_6f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6f

    .line 104
    new-instance v2, Lcom/android/common/ui/i;

    invoke-virtual {p0}, Lcom/android/triaxial/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/ui/i;-><init>(Landroid/content/Context;)V

    .line 105
    iget-object v3, p0, Lcom/android/triaxial/a;->adt:Lcom/android/common/appService/W;

    const-string/jumbo v4, "pref_camera_id_key"

    const v5, 0x7f0200cf

    invoke-virtual {v2, v1, v5, v3, v4}, Lcom/android/common/ui/i;->vw(Ljava/util/List;ILcom/android/common/appService/W;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/triaxial/a;->alw()Lcom/android/common/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/h/l;->abY()Lcom/android/common/h/m;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/common/ui/i;->vx(Lcom/android/common/ui/j;)V

    .line 107
    new-instance v1, Lcom/android/common/o/o;

    const/high16 v3, 0x7f100000

    invoke-direct {v1, v3, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_6f
    invoke-virtual {p0}, Lcom/android/triaxial/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/android/triaxial/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v2

    .line 110
    invoke-static {v1, v2}, Lcom/android/common/h;->apb(Landroid/content/Context;I)Lcom/android/common/ui/RotateImageView;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_8c

    .line 113
    new-instance v2, Lcom/android/common/o/o;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_8c
    return-object v0
.end method

.method public static aYa()Lcom/android/triaxial/a;
    .registers 2

    .prologue
    .line 84
    new-instance v0, Lcom/android/triaxial/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/triaxial/a;-><init>(I)V

    .line 85
    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    .line 91
    iget-object v1, p0, Lcom/android/triaxial/a;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/triaxial/a;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/triaxial/a;->aIT:Lcom/android/triaxial/d;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 90
    return-object v0
.end method

.method protected aiE()Ljava/util/List;
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/triaxial/a;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 44
    invoke-direct {p0}, Lcom/android/triaxial/a;->aXZ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/triaxial/a;->abD:Lcom/android/common/o/l;

    .line 45
    iget-object v0, p0, Lcom/android/triaxial/a;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 47
    invoke-virtual {p0}, Lcom/android/triaxial/a;->aiE()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/triaxial/a;->aio()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/triaxial/a;->abE:Lcom/android/common/o/l;

    .line 48
    iget-object v0, p0, Lcom/android/triaxial/a;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 50
    invoke-static {}, Lcom/android/triaxial/d;->aYb()Lcom/android/triaxial/d;

    move-result-object v0

    iput-object v0, p0, Lcom/android/triaxial/a;->aIT:Lcom/android/triaxial/d;

    .line 51
    iget-object v0, p0, Lcom/android/triaxial/a;->aIT:Lcom/android/triaxial/d;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 53
    iget-object v0, p0, Lcom/android/triaxial/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 54
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 42
    return-void
.end method

.method protected aio()Ljava/util/List;
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public mQ()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/triaxial/a;->aIT:Lcom/android/triaxial/d;

    if-eqz v0, :cond_d

    .line 139
    iget-object v0, p0, Lcom/android/triaxial/a;->aIT:Lcom/android/triaxial/d;

    invoke-virtual {v0}, Lcom/android/triaxial/d;->aYc()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 140
    return-void

    .line 143
    :cond_d
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 137
    return-void
.end method

.method public nD()Z
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/triaxial/a;->aIT:Lcom/android/triaxial/d;

    if-eqz v0, :cond_b

    .line 131
    iget-object v0, p0, Lcom/android/triaxial/a;->aIT:Lcom/android/triaxial/d;

    invoke-virtual {v0}, Lcom/android/triaxial/d;->nD()Z

    move-result v0

    return v0

    .line 133
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 69
    iget-boolean v0, p0, Lcom/android/triaxial/a;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 70
    :cond_8
    iget-object v1, p0, Lcom/android/triaxial/a;->aIT:Lcom/android/triaxial/d;

    iget-object v0, p0, Lcom/android/triaxial/a;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/triaxial/d;->alv(Lcom/android/common/e/h;)V

    .line 71
    iget-object v1, p0, Lcom/android/triaxial/a;->aIT:Lcom/android/triaxial/d;

    iget-object v0, p0, Lcom/android/triaxial/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/triaxial/d;->alv(Lcom/android/common/e/h;)V

    .line 72
    iget-object v0, p0, Lcom/android/triaxial/a;->aIT:Lcom/android/triaxial/d;

    invoke-virtual {v0, p0}, Lcom/android/triaxial/d;->alv(Lcom/android/common/e/h;)V

    .line 67
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 60
    iget-boolean v0, p0, Lcom/android/triaxial/a;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 61
    :cond_8
    iget-object v1, p0, Lcom/android/triaxial/a;->aIT:Lcom/android/triaxial/d;

    iget-object v0, p0, Lcom/android/triaxial/a;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/triaxial/d;->alu(Lcom/android/common/e/h;)V

    .line 62
    iget-object v1, p0, Lcom/android/triaxial/a;->aIT:Lcom/android/triaxial/d;

    iget-object v0, p0, Lcom/android/triaxial/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/triaxial/d;->alu(Lcom/android/common/e/h;)V

    .line 63
    iget-object v0, p0, Lcom/android/triaxial/a;->aIT:Lcom/android/triaxial/d;

    invoke-virtual {v0, p0}, Lcom/android/triaxial/d;->alu(Lcom/android/common/e/h;)V

    .line 58
    return-void
.end method

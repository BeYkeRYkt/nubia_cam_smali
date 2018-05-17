.class public Lcom/android/video/k;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field private aHP:Lcom/android/video/n;

.field private aHQ:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/video/k;->aHQ:Z

    .line 33
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/video/k;->aHQ:Z

    .line 38
    iput-boolean p2, p0, Lcom/android/video/k;->aHQ:Z

    .line 36
    return-void
.end method

.method private aWQ()Ljava/util/ArrayList;
    .registers 7

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/android/video/k;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pf()Z

    move-result v1

    if-nez v1, :cond_35

    .line 112
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/video/k;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 113
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 114
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/video/k;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_35
    const-string/jumbo v1, "pref_camera_video_flashmode_key"

    invoke-virtual {p0, v1}, Lcom/android/video/k;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_62

    .line 129
    new-instance v2, Lcom/android/common/ui/an;

    invoke-virtual {p0}, Lcom/android/video/k;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/ui/an;-><init>(Landroid/content/Context;)V

    .line 130
    iget-object v3, p0, Lcom/android/video/k;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v2, v1, v3}, Lcom/android/common/ui/an;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/video/k;->alw()Lcom/android/common/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/h/l;->abZ()Lcom/android/common/h/j;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/common/ui/an;->zk(Lcom/android/common/ui/Y;)V

    .line 132
    new-instance v1, Lcom/android/common/o/o;

    const v3, 0x7f100002

    invoke-direct {v1, v3, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_62
    iget-object v1, p0, Lcom/android/video/k;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pn()Lcom/android/common/appService/y;

    move-result-object v1

    iget-object v2, p0, Lcom/android/video/k;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/common/appService/y;->kE(Lcom/android/common/appService/CameraMember;)Ljava/util/List;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_a4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a4

    .line 137
    new-instance v2, Lcom/android/common/ui/i;

    invoke-virtual {p0}, Lcom/android/video/k;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/ui/i;-><init>(Landroid/content/Context;)V

    .line 138
    iget-object v3, p0, Lcom/android/video/k;->adt:Lcom/android/common/appService/W;

    const-string/jumbo v4, "pref_camera_id_key"

    const v5, 0x7f0200cf

    invoke-virtual {v2, v1, v5, v3, v4}, Lcom/android/common/ui/i;->vw(Ljava/util/List;ILcom/android/common/appService/W;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/video/k;->alw()Lcom/android/common/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/h/l;->abY()Lcom/android/common/h/m;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/common/ui/i;->vx(Lcom/android/common/ui/j;)V

    .line 140
    new-instance v1, Lcom/android/common/o/o;

    const/high16 v3, 0x7f100000

    invoke-direct {v1, v3, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_a4
    return-object v0
.end method

.method public static aWR(Z)Lcom/android/video/k;
    .registers 3

    .prologue
    .line 79
    new-instance v0, Lcom/android/video/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/video/k;-><init>(IZ)V

    .line 80
    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    .line 74
    iget-object v1, p0, Lcom/android/video/k;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/video/k;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/video/k;->aHP:Lcom/android/video/n;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 73
    return-object v0
.end method

.method protected aiE()Ljava/util/List;
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/android/video/k;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 44
    invoke-direct {p0}, Lcom/android/video/k;->aWQ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/k;->abD:Lcom/android/common/o/l;

    .line 45
    iget-object v0, p0, Lcom/android/video/k;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 47
    invoke-static {}, Lcom/android/video/n;->aWS()Lcom/android/video/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/k;->aHP:Lcom/android/video/n;

    .line 48
    iget-object v0, p0, Lcom/android/video/k;->aHP:Lcom/android/video/n;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 50
    iget-object v0, p0, Lcom/android/video/k;->aHP:Lcom/android/video/n;

    invoke-static {v0, v3, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/k;->abE:Lcom/android/common/o/l;

    .line 51
    iget-object v0, p0, Lcom/android/video/k;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 53
    iget-object v0, p0, Lcom/android/video/k;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 55
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 41
    return-void
.end method

.method protected ain(Z)V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/video/k;->aHP:Lcom/android/video/n;

    invoke-virtual {v0, p1}, Lcom/android/video/n;->aWU(Z)V

    .line 105
    return-void
.end method

.method public mQ()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/video/k;->aHP:Lcom/android/video/n;

    if-eqz v0, :cond_d

    .line 86
    iget-object v0, p0, Lcom/android/video/k;->aHP:Lcom/android/video/n;

    invoke-virtual {v0}, Lcom/android/video/n;->aWT()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 87
    return-void

    .line 91
    :cond_d
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 84
    return-void
.end method

.method public nG()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/video/k;->aHP:Lcom/android/video/n;

    if-eqz v0, :cond_d

    .line 97
    iget-object v0, p0, Lcom/android/video/k;->aHP:Lcom/android/video/n;

    invoke-virtual {v0}, Lcom/android/video/n;->aWT()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 98
    return-void

    .line 101
    :cond_d
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 95
    return-void
.end method

.method public nK()V
    .registers 1

    .prologue
    .line 154
    return-void
.end method

.method public np()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/video/k;->aHP:Lcom/android/video/n;

    if-eqz v0, :cond_9

    .line 149
    iget-object v0, p0, Lcom/android/video/k;->aHP:Lcom/android/video/n;

    invoke-virtual {v0}, Lcom/android/video/n;->aWV()V

    .line 147
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 61
    iget-boolean v0, p0, Lcom/android/video/k;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 62
    :cond_8
    iget-object v1, p0, Lcom/android/video/k;->aHP:Lcom/android/video/n;

    iget-object v0, p0, Lcom/android/video/k;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/video/n;->alu(Lcom/android/common/e/h;)V

    .line 63
    iget-object v1, p0, Lcom/android/video/k;->aHP:Lcom/android/video/n;

    iget-object v0, p0, Lcom/android/video/k;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/video/n;->alu(Lcom/android/common/e/h;)V

    .line 64
    iget-object v0, p0, Lcom/android/video/k;->aHP:Lcom/android/video/n;

    invoke-virtual {v0, p0}, Lcom/android/video/n;->alu(Lcom/android/common/e/h;)V

    .line 59
    return-void
.end method

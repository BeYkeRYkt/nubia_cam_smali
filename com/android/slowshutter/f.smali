.class public Lcom/android/slowshutter/f;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field ayk:Lcom/android/slowshutter/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 78
    return-void
.end method

.method public static aNi()Lcom/android/slowshutter/f;
    .registers 2

    .prologue
    .line 87
    new-instance v0, Lcom/android/slowshutter/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/slowshutter/f;-><init>(I)V

    .line 88
    return-object v0
.end method

.method private aNj()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/slowshutter/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 190
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 191
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/slowshutter/f;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v1, Lcom/android/common/ui/F;

    invoke-virtual {p0}, Lcom/android/slowshutter/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/F;-><init>(Landroid/content/Context;)V

    .line 195
    const-string/jumbo v2, "pref_camera_delay_shoot_key"

    invoke-virtual {p0, v2}, Lcom/android/slowshutter/f;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/slowshutter/f;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v1, v2, v3}, Lcom/android/common/ui/F;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/slowshutter/f;->alw()Lcom/android/common/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/h/l;->aca()Lcom/android/common/h/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/ui/F;->zk(Lcom/android/common/ui/Y;)V

    .line 197
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100004

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {p0}, Lcom/android/slowshutter/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 200
    iget-object v2, p0, Lcom/android/slowshutter/f;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v2

    .line 199
    invoke-static {v1, v2}, Lcom/android/common/h;->apb(Landroid/content/Context;I)Lcom/android/common/ui/RotateImageView;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_75

    .line 202
    new-instance v2, Lcom/android/common/o/o;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_75
    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    .line 94
    iget-object v1, p0, Lcom/android/slowshutter/f;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/slowshutter/f;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/slowshutter/f;->ayk:Lcom/android/slowshutter/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 93
    return-object v0
.end method

.method protected aiE()Ljava/util/List;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    sget-boolean v1, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-eqz v1, :cond_87

    .line 123
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aej()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 124
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->acs()I

    move-result v1

    .line 125
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->adD()[Ljava/lang/String;

    move-result-object v2

    .line 126
    if-eqz v2, :cond_5b

    .line 127
    new-instance v1, Lcom/android/common/ui/ao;

    iget-object v3, p0, Lcom/android/slowshutter/f;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v3, v5, v2}, Lcom/android/common/ui/ao;-><init>(Lcom/android/common/appService/W;I[Ljava/lang/String;)V

    .line 128
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_3c
    :goto_3c
    new-instance v1, Lcom/android/common/ui/P;

    iget-object v2, p0, Lcom/android/slowshutter/f;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/ui/P;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lcom/android/common/ui/v;

    iget-object v2, p0, Lcom/android/slowshutter/f;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/ui/v;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/android/common/ui/r;

    iget-object v2, p0, Lcom/android/slowshutter/f;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/ui/r;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :goto_5a
    return-object v0

    .line 129
    :cond_5b
    const/16 v2, 0x3c

    if-le v1, v2, :cond_7b

    .line 130
    new-instance v1, Lcom/android/common/ui/ao;

    iget-object v2, p0, Lcom/android/slowshutter/f;->adt:Lcom/android/common/appService/W;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/common/ui/ao;-><init>(Lcom/android/common/appService/W;I)V

    .line 131
    new-instance v2, Lcom/android/common/ui/ao;

    iget-object v3, p0, Lcom/android/slowshutter/f;->adt:Lcom/android/common/appService/W;

    invoke-direct {v2, v3, v5}, Lcom/android/common/ui/ao;-><init>(Lcom/android/common/appService/W;I)V

    .line 132
    invoke-virtual {v1, v2}, Lcom/android/common/ui/ao;->Gr(Lcom/android/common/ui/ao;)V

    .line 133
    invoke-virtual {v2, v1}, Lcom/android/common/ui/ao;->Gr(Lcom/android/common/ui/ao;)V

    .line 134
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 137
    :cond_7b
    new-instance v2, Lcom/android/common/ui/ao;

    iget-object v3, p0, Lcom/android/slowshutter/f;->adt:Lcom/android/common/appService/W;

    const/4 v4, -0x1

    invoke-direct {v2, v3, v5, v4, v1}, Lcom/android/common/ui/ao;-><init>(Lcom/android/common/appService/W;III)V

    .line 138
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 145
    :cond_87
    invoke-virtual {p0, v0}, Lcom/android/slowshutter/f;->ais(Ljava/util/List;)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/slowshutter/f;->aix(Ljava/util/List;)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/slowshutter/f;->air(Ljava/util/List;)V

    goto :goto_5a
.end method

.method protected aiR()V
    .registers 5

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/slowshutter/f;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 41
    invoke-direct {p0}, Lcom/android/slowshutter/f;->aNj()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/slowshutter/f;->abD:Lcom/android/common/o/l;

    .line 42
    iget-object v0, p0, Lcom/android/slowshutter/f;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 44
    invoke-virtual {p0}, Lcom/android/slowshutter/f;->aiE()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/slowshutter/f;->aio()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/slowshutter/f;->abE:Lcom/android/common/o/l;

    .line 45
    iget-object v0, p0, Lcom/android/slowshutter/f;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 47
    invoke-static {}, Lcom/android/slowshutter/a;->aMP()Lcom/android/slowshutter/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/slowshutter/f;->ayk:Lcom/android/slowshutter/a;

    .line 48
    iget-object v0, p0, Lcom/android/slowshutter/f;->ayk:Lcom/android/slowshutter/a;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 50
    iget-object v0, p0, Lcom/android/slowshutter/f;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 51
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 39
    return-void
.end method

.method protected aio()Ljava/util/List;
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method protected ajE(I)V
    .registers 2

    .prologue
    .line 184
    return-void
.end method

.method public mY([B)Z
    .registers 4

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/slowshutter/f;->aim([B)V

    .line 110
    invoke-virtual {p0}, Lcom/android/slowshutter/f;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_14

    .line 111
    iget-object v0, p0, Lcom/android/slowshutter/f;->abF:Lcom/android/common/n;

    invoke-virtual {v0}, Lcom/android/common/n;->arb()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/slowshutter/f;->ajD(I)V

    .line 113
    :cond_14
    iget-object v0, p0, Lcom/android/slowshutter/f;->ayk:Lcom/android/slowshutter/a;

    if-eqz v0, :cond_1f

    .line 114
    iget-object v0, p0, Lcom/android/slowshutter/f;->ayk:Lcom/android/slowshutter/a;

    invoke-virtual {v0, p1}, Lcom/android/slowshutter/a;->mY([B)Z

    move-result v0

    return v0

    .line 116
    :cond_1f
    invoke-super {p0, p1}, Lcom/android/common/o/a;->mY([B)Z

    move-result v0

    return v0
.end method

.method public nD()Z
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/slowshutter/f;->ayk:Lcom/android/slowshutter/a;

    if-eqz v0, :cond_12

    .line 101
    iget-object v0, p0, Lcom/android/slowshutter/f;->acg:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/android/slowshutter/f;->ayk:Lcom/android/slowshutter/a;

    invoke-virtual {v0}, Lcom/android/slowshutter/a;->nD()Z

    move-result v0

    return v0

    .line 104
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public nt()V
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/slowshutter/f;->ayk:Lcom/android/slowshutter/a;

    if-eqz v0, :cond_9

    .line 210
    iget-object v0, p0, Lcom/android/slowshutter/f;->ayk:Lcom/android/slowshutter/a;

    invoke-virtual {v0}, Lcom/android/slowshutter/a;->aMO()V

    .line 208
    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 71
    iget-boolean v0, p0, Lcom/android/slowshutter/f;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 72
    :cond_8
    iget-object v1, p0, Lcom/android/slowshutter/f;->ayk:Lcom/android/slowshutter/a;

    iget-object v0, p0, Lcom/android/slowshutter/f;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/slowshutter/a;->alv(Lcom/android/common/e/h;)V

    .line 73
    iget-object v1, p0, Lcom/android/slowshutter/f;->ayk:Lcom/android/slowshutter/a;

    iget-object v0, p0, Lcom/android/slowshutter/f;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/slowshutter/a;->alv(Lcom/android/common/e/h;)V

    .line 74
    iget-object v0, p0, Lcom/android/slowshutter/f;->ayk:Lcom/android/slowshutter/a;

    invoke-virtual {v0, p0}, Lcom/android/slowshutter/a;->alv(Lcom/android/common/e/h;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/slowshutter/f;->ajm()V

    .line 69
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 57
    iget-boolean v0, p0, Lcom/android/slowshutter/f;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 58
    :cond_8
    iget-object v1, p0, Lcom/android/slowshutter/f;->ayk:Lcom/android/slowshutter/a;

    iget-object v0, p0, Lcom/android/slowshutter/f;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/slowshutter/a;->alu(Lcom/android/common/e/h;)V

    .line 59
    iget-object v1, p0, Lcom/android/slowshutter/f;->ayk:Lcom/android/slowshutter/a;

    iget-object v0, p0, Lcom/android/slowshutter/f;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/slowshutter/a;->alu(Lcom/android/common/e/h;)V

    .line 60
    iget-object v0, p0, Lcom/android/slowshutter/f;->ayk:Lcom/android/slowshutter/a;

    invoke-virtual {v0, p0}, Lcom/android/slowshutter/a;->alu(Lcom/android/common/e/h;)V

    .line 61
    iget-object v0, p0, Lcom/android/slowshutter/f;->abF:Lcom/android/common/n;

    if-nez v0, :cond_27

    .line 62
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/slowshutter/f;->ail(I)V

    .line 64
    :cond_27
    iget-object v0, p0, Lcom/android/slowshutter/f;->ayk:Lcom/android/slowshutter/a;

    iget-object v1, p0, Lcom/android/slowshutter/f;->abF:Lcom/android/common/n;

    invoke-virtual {v0, v1}, Lcom/android/slowshutter/a;->aMQ(Lcom/android/common/n;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/slowshutter/f;->aiu()V

    .line 55
    return-void
.end method

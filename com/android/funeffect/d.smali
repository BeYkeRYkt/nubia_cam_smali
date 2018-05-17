.class public Lcom/android/funeffect/d;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field aTV:Lcom/android/funeffect/a;

.field private aTW:Lcom/android/common/ui/u;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 91
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 86
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-nez v0, :cond_e

    .line 87
    new-instance v0, Lcom/android/funeffect/e;

    invoke-direct {v0, p0}, Lcom/android/funeffect/e;-><init>(Lcom/android/funeffect/d;)V

    iput-object v0, p0, Lcom/android/funeffect/d;->aTW:Lcom/android/common/ui/u;

    .line 84
    :cond_e
    return-void
.end method

.method public static blh()Lcom/android/funeffect/d;
    .registers 2

    .prologue
    .line 96
    new-instance v0, Lcom/android/funeffect/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/funeffect/d;-><init>(I)V

    .line 97
    return-object v0
.end method

.method private bli()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/funeffect/d;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 248
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 249
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/funeffect/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    const-string/jumbo v1, "pref_camera_flashmode_key"

    invoke-virtual {p0, v1}, Lcom/android/funeffect/d;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_5a

    .line 254
    new-instance v2, Lcom/android/common/ui/an;

    invoke-virtual {p0}, Lcom/android/funeffect/d;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/ui/an;-><init>(Landroid/content/Context;)V

    .line 255
    iget-object v3, p0, Lcom/android/funeffect/d;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v2, v1, v3}, Lcom/android/common/ui/an;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/funeffect/d;->alw()Lcom/android/common/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/h/l;->abZ()Lcom/android/common/h/j;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/common/ui/an;->zk(Lcom/android/common/ui/Y;)V

    .line 257
    new-instance v1, Lcom/android/common/o/o;

    const v3, 0x7f100002

    invoke-direct {v1, v3, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_5a
    return-object v0
.end method

.method static synthetic blj(Lcom/android/funeffect/d;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/funeffect/d;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic blk(Lcom/android/funeffect/d;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/funeffect/d;->adv:Z

    return v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 134
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    .line 135
    iget-object v1, p0, Lcom/android/funeffect/d;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/funeffect/d;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/funeffect/d;->aTV:Lcom/android/funeffect/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 134
    return-object v0
.end method

.method protected aiE()Ljava/util/List;
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/funeffect/d;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 72
    invoke-direct {p0}, Lcom/android/funeffect/d;->bli()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/funeffect/d;->abD:Lcom/android/common/o/l;

    .line 73
    iget-object v0, p0, Lcom/android/funeffect/d;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 75
    invoke-static {}, Lcom/android/funeffect/a;->bld()Lcom/android/funeffect/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/funeffect/d;->aTV:Lcom/android/funeffect/a;

    .line 76
    iget-object v0, p0, Lcom/android/funeffect/d;->aTV:Lcom/android/funeffect/a;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 78
    iget-object v0, p0, Lcom/android/funeffect/d;->aTW:Lcom/android/common/ui/u;

    invoke-virtual {p0}, Lcom/android/funeffect/d;->aiE()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/funeffect/d;->aio()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/funeffect/d;->abE:Lcom/android/common/o/l;

    .line 79
    iget-object v0, p0, Lcom/android/funeffect/d;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 80
    iget-object v0, p0, Lcom/android/funeffect/d;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 81
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 69
    return-void
.end method

.method public mY([B)Z
    .registers 4

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/funeffect/d;->adv:Z

    if-nez v0, :cond_c

    .line 124
    invoke-virtual {p0}, Lcom/android/funeffect/d;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_11

    .line 126
    :cond_c
    invoke-super {p0, p1}, Lcom/android/common/o/a;->mY([B)Z

    move-result v0

    return v0

    .line 125
    :cond_11
    iget-object v0, p0, Lcom/android/funeffect/d;->acF:Lcom/android/common/f/b;

    if-eqz v0, :cond_c

    .line 128
    iget-object v0, p0, Lcom/android/funeffect/d;->acF:Lcom/android/common/f/b;

    invoke-virtual {v0}, Lcom/android/common/f/b;->aao()V

    .line 129
    invoke-super {p0, p1}, Lcom/android/common/o/a;->mY([B)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 115
    iget-boolean v0, p0, Lcom/android/funeffect/d;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 116
    :cond_8
    iget-object v0, p0, Lcom/android/funeffect/d;->aTV:Lcom/android/funeffect/a;

    invoke-virtual {v0, p0}, Lcom/android/funeffect/a;->alv(Lcom/android/common/e/h;)V

    .line 117
    iget-object v1, p0, Lcom/android/funeffect/d;->aTV:Lcom/android/funeffect/a;

    iget-object v0, p0, Lcom/android/funeffect/d;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/funeffect/a;->alv(Lcom/android/common/e/h;)V

    .line 118
    iget-object v1, p0, Lcom/android/funeffect/d;->aTV:Lcom/android/funeffect/a;

    iget-object v0, p0, Lcom/android/funeffect/d;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/funeffect/a;->alv(Lcom/android/common/e/h;)V

    .line 113
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 102
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 103
    iget-boolean v0, p0, Lcom/android/funeffect/d;->adu:Z

    if-eqz v0, :cond_b

    return-void

    .line 104
    :cond_b
    iget-object v0, p0, Lcom/android/funeffect/d;->aTV:Lcom/android/funeffect/a;

    invoke-virtual {v0, p0}, Lcom/android/funeffect/a;->alu(Lcom/android/common/e/h;)V

    .line 105
    iget-object v4, p0, Lcom/android/funeffect/d;->aTV:Lcom/android/funeffect/a;

    iget-object v0, p0, Lcom/android/funeffect/d;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v4, v0}, Lcom/android/funeffect/a;->alu(Lcom/android/common/e/h;)V

    .line 106
    iget-object v4, p0, Lcom/android/funeffect/d;->aTV:Lcom/android/funeffect/a;

    iget-object v0, p0, Lcom/android/funeffect/d;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v4, v0}, Lcom/android/funeffect/a;->alu(Lcom/android/common/e/h;)V

    .line 107
    iget-object v0, p0, Lcom/android/funeffect/d;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    move-wide v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/common/e/h;->ZP(ZJJ)V

    .line 108
    iget-object v0, p0, Lcom/android/funeffect/d;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    move-wide v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/common/e/h;->ZP(ZJJ)V

    move-object v0, p0

    move-wide v4, v2

    .line 109
    invoke-interface/range {v0 .. v5}, Lcom/android/common/e/h;->ZP(ZJJ)V

    .line 101
    return-void
.end method

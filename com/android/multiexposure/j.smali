.class public Lcom/android/multiexposure/j;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field final TAG:Ljava/lang/String;

.field aqA:Lcom/android/multiexposure/o;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 32
    const-string/jumbo v0, "MultiExposureMemberFragment"

    iput-object v0, p0, Lcom/android/multiexposure/j;->TAG:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 32
    const-string/jumbo v0, "MultiExposureMemberFragment"

    iput-object v0, p0, Lcom/android/multiexposure/j;->TAG:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static aCr()Lcom/android/multiexposure/j;
    .registers 2

    .prologue
    .line 81
    new-instance v0, Lcom/android/multiexposure/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/multiexposure/j;-><init>(I)V

    .line 82
    return-object v0
.end method

.method private aCs()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/multiexposure/j;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 142
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 143
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/multiexposure/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    const-string/jumbo v1, "pref_camera_flashmode_key"

    invoke-virtual {p0, v1}, Lcom/android/multiexposure/j;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_5a

    .line 148
    new-instance v2, Lcom/android/common/ui/an;

    invoke-virtual {p0}, Lcom/android/multiexposure/j;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/ui/an;-><init>(Landroid/content/Context;)V

    .line 149
    iget-object v3, p0, Lcom/android/multiexposure/j;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v2, v1, v3}, Lcom/android/common/ui/an;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/multiexposure/j;->alw()Lcom/android/common/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/h/l;->abZ()Lcom/android/common/h/j;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/common/ui/an;->zk(Lcom/android/common/ui/Y;)V

    .line 151
    new-instance v1, Lcom/android/common/o/o;

    const v3, 0x7f100002

    invoke-direct {v1, v3, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_5a
    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    .line 88
    iget-object v1, p0, Lcom/android/multiexposure/j;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/multiexposure/j;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/multiexposure/j;->aqA:Lcom/android/multiexposure/o;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 87
    return-object v0
.end method

.method protected aiE()Ljava/util/List;
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/multiexposure/j;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 38
    invoke-direct {p0}, Lcom/android/multiexposure/j;->aCs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/multiexposure/j;->abD:Lcom/android/common/o/l;

    .line 39
    iget-object v0, p0, Lcom/android/multiexposure/j;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 41
    invoke-static {}, Lcom/android/multiexposure/o;->aCB()Lcom/android/multiexposure/o;

    move-result-object v0

    iput-object v0, p0, Lcom/android/multiexposure/j;->aqA:Lcom/android/multiexposure/o;

    .line 42
    iget-object v0, p0, Lcom/android/multiexposure/j;->aqA:Lcom/android/multiexposure/o;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 45
    new-instance v0, Lcom/android/multiexposure/t;

    iget-object v2, p0, Lcom/android/multiexposure/j;->adt:Lcom/android/common/appService/W;

    .line 46
    iget-object v3, p0, Lcom/android/multiexposure/j;->aqA:Lcom/android/multiexposure/o;

    .line 45
    invoke-direct {v0, v2, v3}, Lcom/android/multiexposure/t;-><init>(Lcom/android/common/appService/W;Lcom/android/multiexposure/o;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/multiexposure/j;->aiE()Ljava/util/List;

    move-result-object v2

    .line 47
    const/4 v3, 0x0

    .line 44
    invoke-static {v0, v2, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/multiexposure/j;->abE:Lcom/android/common/o/l;

    .line 48
    iget-object v0, p0, Lcom/android/multiexposure/j;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 50
    iget-object v0, p0, Lcom/android/multiexposure/j;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 51
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 35
    return-void
.end method

.method public mQ()V
    .registers 3

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/multiexposure/j;->adv:Z

    if-eqz v0, :cond_e

    .line 103
    const-string/jumbo v0, "MultiExposureMemberFragment"

    const-string/jumbo v1, "ignore performShutterButtonClick because fragment is pause"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void

    .line 107
    :cond_e
    iget-object v0, p0, Lcom/android/multiexposure/j;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/multiexposure/j;->abE:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 108
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 101
    :cond_1d
    :goto_1d
    return-void

    .line 109
    :cond_1e
    iget-object v0, p0, Lcom/android/multiexposure/j;->aqA:Lcom/android/multiexposure/o;

    if-eqz v0, :cond_1d

    .line 110
    iget-object v0, p0, Lcom/android/multiexposure/j;->aqA:Lcom/android/multiexposure/o;

    invoke-virtual {v0}, Lcom/android/multiexposure/o;->aCC()V

    goto :goto_1d
.end method

.method public mY([B)Z
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/multiexposure/j;->aqA:Lcom/android/multiexposure/o;

    if-eqz v0, :cond_b

    .line 95
    iget-object v0, p0, Lcom/android/multiexposure/j;->aqA:Lcom/android/multiexposure/o;

    invoke-virtual {v0, p1}, Lcom/android/multiexposure/o;->mY([B)Z

    move-result v0

    return v0

    .line 97
    :cond_b
    invoke-super {p0, p1}, Lcom/android/common/o/a;->mY([B)Z

    move-result v0

    return v0
.end method

.method public nG()V
    .registers 3

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/multiexposure/j;->adv:Z

    if-eqz v0, :cond_e

    .line 117
    const-string/jumbo v0, "MultiExposureMemberFragment"

    const-string/jumbo v1, "ignore performShutterButtonLongClick because fragment is pause"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .line 121
    :cond_e
    iget-object v0, p0, Lcom/android/multiexposure/j;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/multiexposure/j;->abE:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 122
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 115
    :cond_1d
    :goto_1d
    return-void

    .line 123
    :cond_1e
    iget-object v0, p0, Lcom/android/multiexposure/j;->aqA:Lcom/android/multiexposure/o;

    if-eqz v0, :cond_1d

    .line 124
    iget-object v0, p0, Lcom/android/multiexposure/j;->aqA:Lcom/android/multiexposure/o;

    invoke-virtual {v0}, Lcom/android/multiexposure/o;->aCC()V

    goto :goto_1d
.end method

.method public nH(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 130
    const-string/jumbo v0, "takepicture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 131
    invoke-virtual {p0}, Lcom/android/multiexposure/j;->mQ()V

    .line 129
    :cond_c
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 66
    iget-boolean v0, p0, Lcom/android/multiexposure/j;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 67
    :cond_8
    iget-object v1, p0, Lcom/android/multiexposure/j;->aqA:Lcom/android/multiexposure/o;

    iget-object v0, p0, Lcom/android/multiexposure/j;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/multiexposure/o;->alv(Lcom/android/common/e/h;)V

    .line 68
    iget-object v1, p0, Lcom/android/multiexposure/j;->aqA:Lcom/android/multiexposure/o;

    iget-object v0, p0, Lcom/android/multiexposure/j;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/multiexposure/o;->alv(Lcom/android/common/e/h;)V

    .line 69
    iget-object v0, p0, Lcom/android/multiexposure/j;->aqA:Lcom/android/multiexposure/o;

    invoke-virtual {v0, p0}, Lcom/android/multiexposure/o;->alv(Lcom/android/common/e/h;)V

    .line 64
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 57
    iget-boolean v0, p0, Lcom/android/multiexposure/j;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 58
    :cond_8
    iget-object v1, p0, Lcom/android/multiexposure/j;->aqA:Lcom/android/multiexposure/o;

    iget-object v0, p0, Lcom/android/multiexposure/j;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/multiexposure/o;->alu(Lcom/android/common/e/h;)V

    .line 59
    iget-object v1, p0, Lcom/android/multiexposure/j;->aqA:Lcom/android/multiexposure/o;

    iget-object v0, p0, Lcom/android/multiexposure/j;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/multiexposure/o;->alu(Lcom/android/common/e/h;)V

    .line 60
    iget-object v0, p0, Lcom/android/multiexposure/j;->aqA:Lcom/android/multiexposure/o;

    invoke-virtual {v0, p0}, Lcom/android/multiexposure/o;->alu(Lcom/android/common/e/h;)V

    .line 55
    return-void
.end method

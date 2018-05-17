.class public Lcom/android/lightpainting/c;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field ati:Lcom/android/lightpainting/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 67
    return-void
.end method

.method public static aFA()Lcom/android/lightpainting/c;
    .registers 2

    .prologue
    .line 76
    new-instance v0, Lcom/android/lightpainting/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/lightpainting/c;-><init>(I)V

    .line 77
    return-object v0
.end method

.method private aFB()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/lightpainting/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 141
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 142
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/lightpainting/c;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v1, Lcom/android/common/ui/an;

    invoke-virtual {p0}, Lcom/android/lightpainting/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/an;-><init>(Landroid/content/Context;)V

    .line 146
    const-string/jumbo v2, "pref_camera_flashmode_for_lightpainting_key"

    invoke-virtual {p0, v2}, Lcom/android/lightpainting/c;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lightpainting/c;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v1, v2, v3}, Lcom/android/common/ui/an;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/lightpainting/c;->alw()Lcom/android/common/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/h/l;->abZ()Lcom/android/common/h/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/ui/an;->zk(Lcom/android/common/ui/Y;)V

    .line 148
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100002

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lcom/android/common/ui/F;

    invoke-virtual {p0}, Lcom/android/lightpainting/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/F;-><init>(Landroid/content/Context;)V

    .line 151
    const-string/jumbo v2, "pref_camera_delay_shoot_key"

    invoke-virtual {p0, v2}, Lcom/android/lightpainting/c;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lightpainting/c;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v1, v2, v3}, Lcom/android/common/ui/F;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/lightpainting/c;->alw()Lcom/android/common/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/h/l;->aca()Lcom/android/common/h/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/ui/F;->zk(Lcom/android/common/ui/Y;)V

    .line 153
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100004

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/lightpainting/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/android/lightpainting/c;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v2

    .line 155
    invoke-static {v1, v2}, Lcom/android/common/h;->apb(Landroid/content/Context;I)Lcom/android/common/ui/RotateImageView;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_a0

    .line 158
    new-instance v2, Lcom/android/common/o/o;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_a0
    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    .line 83
    iget-object v1, p0, Lcom/android/lightpainting/c;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/lightpainting/c;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 82
    return-object v0
.end method

.method protected aiE()Ljava/util/List;
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/lightpainting/c;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 36
    invoke-direct {p0}, Lcom/android/lightpainting/c;->aFB()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lightpainting/c;->abD:Lcom/android/common/o/l;

    .line 37
    iget-object v0, p0, Lcom/android/lightpainting/c;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 39
    invoke-static {}, Lcom/android/lightpainting/e;->aFC()Lcom/android/lightpainting/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    .line 40
    iget-object v0, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 42
    invoke-virtual {p0}, Lcom/android/lightpainting/c;->aiE()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lightpainting/c;->aio()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lightpainting/c;->abE:Lcom/android/common/o/l;

    .line 43
    iget-object v0, p0, Lcom/android/lightpainting/c;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 45
    iget-object v0, p0, Lcom/android/lightpainting/c;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 46
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 33
    return-void
.end method

.method public iu()V
    .registers 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/common/o/a;->iu()V

    .line 129
    iget-object v0, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lightpainting/e;->aFE(Z)V

    .line 127
    return-void
.end method

.method public ix()V
    .registers 3

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/common/o/a;->ix()V

    .line 123
    iget-object v0, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lightpainting/e;->aFE(Z)V

    .line 121
    return-void
.end method

.method public mQ()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    invoke-virtual {v0}, Lcom/android/lightpainting/e;->aFD()V

    .line 100
    :cond_9
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 96
    return-void
.end method

.method public nD()Z
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    if-eqz v0, :cond_b

    .line 90
    iget-object v0, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    invoke-virtual {v0}, Lcom/android/lightpainting/e;->nD()Z

    move-result v0

    return v0

    .line 92
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public nG()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    if-eqz v0, :cond_9

    .line 106
    iget-object v0, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    invoke-virtual {v0}, Lcom/android/lightpainting/e;->aFD()V

    .line 108
    :cond_9
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 104
    return-void
.end method

.method public nH(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    if-eqz v0, :cond_12

    .line 114
    const-string/jumbo v0, "stop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 115
    iget-object v0, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    invoke-virtual {v0}, Lcom/android/lightpainting/e;->aFD()V

    .line 117
    :cond_12
    invoke-super {p0, p1}, Lcom/android/common/o/a;->nH(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 61
    iget-boolean v0, p0, Lcom/android/lightpainting/c;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 62
    :cond_8
    iget-object v1, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    iget-object v0, p0, Lcom/android/lightpainting/c;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/lightpainting/e;->alv(Lcom/android/common/e/h;)V

    .line 63
    iget-object v1, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    iget-object v0, p0, Lcom/android/lightpainting/c;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/lightpainting/e;->alv(Lcom/android/common/e/h;)V

    .line 64
    iget-object v0, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    invoke-virtual {v0, p0}, Lcom/android/lightpainting/e;->alv(Lcom/android/common/e/h;)V

    .line 59
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 51
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 52
    iget-boolean v0, p0, Lcom/android/lightpainting/c;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 53
    :cond_8
    iget-object v1, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    iget-object v0, p0, Lcom/android/lightpainting/c;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/lightpainting/e;->alu(Lcom/android/common/e/h;)V

    .line 54
    iget-object v1, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    iget-object v0, p0, Lcom/android/lightpainting/c;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/lightpainting/e;->alu(Lcom/android/common/e/h;)V

    .line 55
    iget-object v0, p0, Lcom/android/lightpainting/c;->ati:Lcom/android/lightpainting/e;

    invoke-virtual {v0, p0}, Lcom/android/lightpainting/e;->alu(Lcom/android/common/e/h;)V

    .line 50
    return-void
.end method

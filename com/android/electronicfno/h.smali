.class public Lcom/android/electronicfno/h;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field aVl:Lcom/android/electronicfno/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 112
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 108
    return-void
.end method

.method public static bmV()Lcom/android/electronicfno/h;
    .registers 2

    .prologue
    .line 117
    new-instance v0, Lcom/android/electronicfno/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/electronicfno/h;-><init>(I)V

    .line 118
    return-object v0
.end method

.method private bmW()Ljava/util/ArrayList;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/electronicfno/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 218
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 219
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/electronicfno/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v1, Lcom/android/common/ui/F;

    invoke-virtual {p0}, Lcom/android/electronicfno/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/F;-><init>(Landroid/content/Context;)V

    .line 223
    const-string/jumbo v2, "pref_camera_delay_shoot_key"

    invoke-virtual {p0, v2}, Lcom/android/electronicfno/h;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/electronicfno/h;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v1, v2, v3}, Lcom/android/common/ui/F;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/electronicfno/h;->alw()Lcom/android/common/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/h/l;->aca()Lcom/android/common/h/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/ui/F;->zk(Lcom/android/common/ui/Y;)V

    .line 225
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100004

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->acF()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_91

    .line 228
    new-instance v1, Lcom/android/common/ui/X;

    invoke-virtual {p0}, Lcom/android/electronicfno/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/android/common/ui/X;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 229
    const-string/jumbo v2, "pref_camera_anti_shake"

    invoke-virtual {p0, v2}, Lcom/android/electronicfno/h;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/ui/X;->Dg(Lcom/android/common/setting/IconListPreference;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/electronicfno/h;->alw()Lcom/android/common/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/h/l;->acc()Lcom/android/common/ui/Y;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/ui/X;->Dh(Lcom/android/common/ui/Y;)V

    .line 231
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100005

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_91
    invoke-virtual {p0}, Lcom/android/electronicfno/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 234
    iget-object v2, p0, Lcom/android/electronicfno/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v2

    .line 233
    invoke-static {v1, v2}, Lcom/android/common/h;->apb(Landroid/content/Context;I)Lcom/android/common/ui/RotateImageView;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_ae

    .line 236
    new-instance v2, Lcom/android/common/o/o;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_ae
    return-object v0
.end method

.method static synthetic bmX(Lcom/android/electronicfno/h;)Lcom/android/common/n;
    .registers 2

    iget-object v0, p0, Lcom/android/electronicfno/h;->abF:Lcom/android/common/n;

    return-object v0
.end method

.method static synthetic bmY(Lcom/android/electronicfno/h;)Lcom/android/common/camerastate/FunctionState;
    .registers 2

    invoke-virtual {p0}, Lcom/android/electronicfno/h;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bmZ(Lcom/android/electronicfno/h;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/electronicfno/h;->ajD(I)V

    return-void
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    .line 124
    iget-object v1, p0, Lcom/android/electronicfno/h;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/electronicfno/h;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 123
    return-object v0
.end method

.method protected aiE()Ljava/util/List;
    .registers 6

    .prologue
    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    sget-boolean v1, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-eqz v1, :cond_59

    .line 159
    new-instance v1, Lcom/android/electronicfno/f;

    .line 160
    iget-object v2, p0, Lcom/android/electronicfno/h;->adt:Lcom/android/common/appService/W;

    .line 159
    invoke-direct {v1, v2}, Lcom/android/electronicfno/f;-><init>(Lcom/android/common/appService/W;)V

    .line 161
    new-instance v2, Lcom/android/electronicfno/g;

    .line 162
    iget-object v3, p0, Lcom/android/electronicfno/h;->adt:Lcom/android/common/appService/W;

    .line 161
    invoke-direct {v2, v3}, Lcom/android/electronicfno/g;-><init>(Lcom/android/common/appService/W;)V

    .line 163
    new-instance v3, Lcom/android/common/ui/k;

    iget-object v4, p0, Lcom/android/electronicfno/h;->adt:Lcom/android/common/appService/W;

    invoke-direct {v3, v4}, Lcom/android/common/ui/k;-><init>(Lcom/android/common/appService/W;)V

    .line 164
    iget-object v4, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    invoke-virtual {v1, v4}, Lcom/android/electronicfno/f;->vd(Lcom/android/common/ui/e;)V

    .line 165
    iget-object v4, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    invoke-virtual {v2, v4}, Lcom/android/electronicfno/g;->vd(Lcom/android/common/ui/e;)V

    .line 166
    iget-object v4, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    invoke-virtual {v3, v4}, Lcom/android/common/ui/k;->vd(Lcom/android/common/ui/e;)V

    .line 168
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v1, Lcom/android/common/ui/P;

    iget-object v2, p0, Lcom/android/electronicfno/h;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/ui/P;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->ade()Z

    move-result v1

    if-nez v1, :cond_58

    .line 175
    new-instance v1, Lcom/android/common/ui/r;

    iget-object v2, p0, Lcom/android/electronicfno/h;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/ui/r;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_58
    return-object v0

    .line 179
    :cond_59
    const/4 v0, 0x0

    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/electronicfno/h;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 51
    invoke-direct {p0}, Lcom/android/electronicfno/h;->bmW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/electronicfno/h;->abD:Lcom/android/common/o/l;

    .line 52
    iget-object v0, p0, Lcom/android/electronicfno/h;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 54
    invoke-static {}, Lcom/android/electronicfno/i;->bna()Lcom/android/electronicfno/i;

    move-result-object v0

    iput-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    .line 55
    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 57
    invoke-virtual {p0}, Lcom/android/electronicfno/h;->aiE()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/electronicfno/h;->aio()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/electronicfno/h;->abE:Lcom/android/common/o/l;

    .line 58
    iget-object v0, p0, Lcom/android/electronicfno/h;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 60
    iget-object v2, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    iget-object v0, p0, Lcom/android/electronicfno/h;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v2, v0}, Lcom/android/electronicfno/i;->bnb(Lcom/android/common/h/c;)V

    .line 61
    iget-object v0, p0, Lcom/android/electronicfno/h;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 62
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 48
    return-void
.end method

.method protected aiW()V
    .registers 3

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/common/o/a;->aiW()V

    .line 92
    iget-object v0, p0, Lcom/android/electronicfno/h;->acF:Lcom/android/common/f/b;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    if-eqz v0, :cond_1a

    .line 93
    invoke-virtual {p0}, Lcom/android/electronicfno/h;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_1a

    .line 94
    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    iget-object v1, p0, Lcom/android/electronicfno/h;->acF:Lcom/android/common/f/b;

    invoke-virtual {v0, v1}, Lcom/android/electronicfno/i;->bne(Lcom/android/common/f/b;)V

    .line 90
    :cond_1a
    return-void
.end method

.method protected aio()Ljava/util/List;
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method protected ajE(I)V
    .registers 2

    .prologue
    .line 212
    return-void
.end method

.method protected aji(IIII)V
    .registers 8

    .prologue
    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/common/o/a;->aji(IIII)V

    .line 251
    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    if-eqz v0, :cond_10

    .line 252
    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    sub-int v1, p3, p1

    sub-int v2, p4, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/electronicfno/i;->setPreviewSize(II)V

    .line 249
    :cond_10
    return-void
.end method

.method public mQ()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    if-eqz v0, :cond_9

    .line 140
    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    invoke-virtual {v0}, Lcom/android/electronicfno/i;->bnf()V

    .line 142
    :cond_9
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 138
    return-void
.end method

.method public nD()Z
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    if-eqz v0, :cond_12

    .line 131
    iget-object v0, p0, Lcom/android/electronicfno/h;->acg:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    invoke-virtual {v0}, Lcom/android/electronicfno/i;->nD()Z

    move-result v0

    return v0

    .line 134
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public nH(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    if-eqz v0, :cond_12

    .line 147
    const-string/jumbo v0, "stop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 148
    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    invoke-virtual {v0}, Lcom/android/electronicfno/i;->bnf()V

    .line 151
    :cond_12
    invoke-super {p0, p1}, Lcom/android/common/o/a;->nH(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public nt()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    if-eqz v0, :cond_9

    .line 245
    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    invoke-virtual {v0}, Lcom/android/electronicfno/i;->bng()V

    .line 243
    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 101
    iget-boolean v0, p0, Lcom/android/electronicfno/h;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 102
    :cond_8
    iget-object v1, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    iget-object v0, p0, Lcom/android/electronicfno/h;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/electronicfno/i;->alv(Lcom/android/common/e/h;)V

    .line 103
    iget-object v1, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    iget-object v0, p0, Lcom/android/electronicfno/h;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/electronicfno/i;->alv(Lcom/android/common/e/h;)V

    .line 104
    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    invoke-virtual {v0, p0}, Lcom/android/electronicfno/i;->alv(Lcom/android/common/e/h;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/electronicfno/h;->ajm()V

    .line 99
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 68
    iget-boolean v0, p0, Lcom/android/electronicfno/h;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 69
    :cond_8
    iget-object v1, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    iget-object v0, p0, Lcom/android/electronicfno/h;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/electronicfno/i;->alu(Lcom/android/common/e/h;)V

    .line 70
    iget-object v1, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    iget-object v0, p0, Lcom/android/electronicfno/h;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/electronicfno/i;->alu(Lcom/android/common/e/h;)V

    .line 71
    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    invoke-virtual {v0, p0}, Lcom/android/electronicfno/i;->alu(Lcom/android/common/e/h;)V

    .line 73
    iget-object v0, p0, Lcom/android/electronicfno/h;->abF:Lcom/android/common/n;

    if-nez v0, :cond_27

    .line 74
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/electronicfno/h;->ail(I)V

    .line 76
    :cond_27
    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    iget-object v1, p0, Lcom/android/electronicfno/h;->abF:Lcom/android/common/n;

    invoke-virtual {v0, v1}, Lcom/android/electronicfno/i;->bnc(Lcom/android/common/n;)V

    .line 77
    iget-object v0, p0, Lcom/android/electronicfno/h;->aVl:Lcom/android/electronicfno/i;

    new-instance v1, Lcom/android/electronicfno/o;

    invoke-direct {v1, p0}, Lcom/android/electronicfno/o;-><init>(Lcom/android/electronicfno/h;)V

    invoke-virtual {v0, v1}, Lcom/android/electronicfno/i;->bnd(Lcom/android/electronicfno/j;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/electronicfno/h;->aiu()V

    .line 66
    return-void
.end method

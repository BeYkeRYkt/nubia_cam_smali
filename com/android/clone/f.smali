.class public Lcom/android/clone/f;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field private aTm:Lcom/android/clone/g;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    .line 86
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    .line 82
    return-void
.end method

.method public static bkD()Lcom/android/clone/f;
    .registers 2

    .prologue
    .line 91
    new-instance v0, Lcom/android/clone/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/clone/f;-><init>(I)V

    .line 92
    return-object v0
.end method

.method private bkE()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/clone/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 169
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 170
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/clone/f;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {p0}, Lcom/android/clone/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/android/clone/f;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v2

    .line 172
    invoke-static {v1, v2}, Lcom/android/common/h;->apb(Landroid/content/Context;I)Lcom/android/common/ui/RotateImageView;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_4a

    .line 175
    new-instance v2, Lcom/android/common/o/o;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_4a
    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    iget-object v1, p0, Lcom/android/clone/f;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/clone/f;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 103
    iget-object v1, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 102
    return-object v0
.end method

.method protected aiE()Ljava/util/List;
    .registers 2

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/android/clone/f;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 40
    invoke-direct {p0}, Lcom/android/clone/f;->bkE()Ljava/util/ArrayList;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/clone/f;->abD:Lcom/android/common/o/l;

    .line 41
    iget-object v0, p0, Lcom/android/clone/f;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 43
    invoke-static {}, Lcom/android/clone/g;->bkF()Lcom/android/clone/g;

    move-result-object v0

    iput-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    .line 44
    iget-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 46
    invoke-static {v3, v3, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/clone/f;->abE:Lcom/android/common/o/l;

    .line 48
    iget-object v0, p0, Lcom/android/clone/f;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 50
    iget-object v0, p0, Lcom/android/clone/f;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 52
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 36
    return-void
.end method

.method public mQ()V
    .registers 3

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/clone/f;->adv:Z

    if-eqz v0, :cond_e

    .line 109
    const-string/jumbo v0, "CloneMemberFragment"

    .line 110
    const-string/jumbo v1, "ignore performShutterButtonClick because fragment is pause"

    .line 109
    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void

    .line 114
    :cond_e
    iget-object v0, p0, Lcom/android/clone/f;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/clone/f;->abE:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 115
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 107
    :cond_1d
    :goto_1d
    return-void

    .line 116
    :cond_1e
    iget-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    invoke-virtual {v0}, Lcom/android/clone/g;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 117
    iget-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    invoke-virtual {v0}, Lcom/android/clone/g;->bkG()V

    goto :goto_1d
.end method

.method public mY([B)Z
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    invoke-virtual {v0, p1}, Lcom/android/clone/g;->mY([B)Z

    move-result v0

    return v0
.end method

.method public nD()Z
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    if-eqz v0, :cond_b

    .line 183
    iget-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    invoke-virtual {v0}, Lcom/android/clone/g;->nD()Z

    move-result v0

    return v0

    .line 185
    :cond_b
    invoke-super {p0}, Lcom/android/common/o/a;->nD()Z

    move-result v0

    return v0
.end method

.method public nG()V
    .registers 3

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/clone/f;->adv:Z

    if-eqz v0, :cond_e

    .line 125
    const-string/jumbo v0, "CloneMemberFragment"

    .line 126
    const-string/jumbo v1, "ignore performShutterButtonLongClick because fragment is pause"

    .line 125
    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 130
    :cond_e
    iget-object v0, p0, Lcom/android/clone/f;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/clone/f;->abE:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 131
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 123
    :cond_1d
    :goto_1d
    return-void

    .line 132
    :cond_1e
    iget-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    invoke-virtual {v0}, Lcom/android/clone/g;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 133
    iget-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    invoke-virtual {v0}, Lcom/android/clone/g;->bkG()V

    goto :goto_1d
.end method

.method public nH(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/clone/f;->adv:Z

    if-eqz v0, :cond_e

    .line 152
    const-string/jumbo v0, "CloneMemberFragment"

    .line 153
    const-string/jumbo v1, "ignore performShutterButtonClick because fragment is pause"

    .line 152
    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void

    .line 157
    :cond_e
    iget-object v0, p0, Lcom/android/clone/f;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/clone/f;->abE:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 158
    invoke-super {p0, p1}, Lcom/android/common/o/a;->nH(Ljava/lang/String;)V

    .line 150
    :cond_1d
    return-void
.end method

.method public nz()V
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/clone/f;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/clone/f;->abE:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 140
    iget-object v0, p0, Lcom/android/clone/f;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    .line 141
    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/g;->dy(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    if-eqz v0, :cond_1f

    .line 143
    iget-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    invoke-virtual {v0}, Lcom/android/clone/g;->bkH()V

    .line 146
    :cond_1f
    invoke-super {p0}, Lcom/android/common/o/a;->nz()V

    .line 138
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/clone/f;->adu:Z

    if-eqz v0, :cond_8

    .line 71
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 72
    return-void

    .line 74
    :cond_8
    iget-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    invoke-virtual {v0, p0}, Lcom/android/clone/g;->alv(Lcom/android/common/e/h;)V

    .line 75
    iget-object v1, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    .line 76
    iget-object v0, p0, Lcom/android/clone/f;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    .line 75
    invoke-virtual {v1, v0}, Lcom/android/clone/g;->alv(Lcom/android/common/e/h;)V

    .line 77
    iget-object v1, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    .line 78
    iget-object v0, p0, Lcom/android/clone/f;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    .line 77
    invoke-virtual {v1, v0}, Lcom/android/clone/g;->alv(Lcom/android/common/e/h;)V

    .line 79
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 69
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 58
    iget-boolean v0, p0, Lcom/android/clone/f;->adu:Z

    if-eqz v0, :cond_8

    .line 59
    return-void

    .line 61
    :cond_8
    iget-object v0, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    invoke-virtual {v0, p0}, Lcom/android/clone/g;->alu(Lcom/android/common/e/h;)V

    .line 62
    iget-object v1, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    .line 63
    iget-object v0, p0, Lcom/android/clone/f;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    .line 62
    invoke-virtual {v1, v0}, Lcom/android/clone/g;->alu(Lcom/android/common/e/h;)V

    .line 64
    iget-object v1, p0, Lcom/android/clone/f;->aTm:Lcom/android/clone/g;

    .line 65
    iget-object v0, p0, Lcom/android/clone/f;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    .line 64
    invoke-virtual {v1, v0}, Lcom/android/clone/g;->alu(Lcom/android/common/e/h;)V

    .line 56
    return-void
.end method

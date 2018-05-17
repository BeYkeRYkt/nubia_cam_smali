.class public Lcom/android/pretty/f;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field private aCF:Lcom/android/pretty/a;

.field private aCG:Lcom/android/pretty/j;

.field private aCH:Landroid/hardware/Camera$PictureCallback;

.field private aCI:Landroid/hardware/Camera$PictureCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/pretty/f;->aCF:Lcom/android/pretty/a;

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/pretty/f;->aCF:Lcom/android/pretty/a;

    .line 63
    return-void
.end method

.method private aRY()Lcom/android/common/appService/b;
    .registers 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/pretty/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    return-object v0
.end method

.method private aRZ()Ljava/util/ArrayList;
    .registers 7

    .prologue
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/pretty/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 165
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 166
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/pretty/f;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-direct {p0, v0}, Lcom/android/pretty/f;->aSb(Ljava/util/ArrayList;)V

    .line 171
    invoke-direct {p0, v0}, Lcom/android/pretty/f;->aSa(Ljava/util/ArrayList;)V

    .line 173
    new-instance v1, Lcom/android/common/ui/F;

    invoke-virtual {p0}, Lcom/android/pretty/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/F;-><init>(Landroid/content/Context;)V

    .line 174
    const-string/jumbo v2, "pref_camera_delay_shoot_key"

    invoke-virtual {p0, v2}, Lcom/android/pretty/f;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/pretty/f;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v1, v2, v3}, Lcom/android/common/ui/F;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/pretty/f;->alw()Lcom/android/common/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/h/l;->aca()Lcom/android/common/h/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/ui/F;->zk(Lcom/android/common/ui/Y;)V

    .line 176
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100004

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v1, p0, Lcom/android/pretty/f;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pn()Lcom/android/common/appService/y;

    move-result-object v1

    iget-object v2, p0, Lcom/android/pretty/f;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/common/appService/y;->kE(Lcom/android/common/appService/CameraMember;)Ljava/util/List;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_a0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a0

    .line 180
    new-instance v2, Lcom/android/common/ui/i;

    invoke-virtual {p0}, Lcom/android/pretty/f;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/ui/i;-><init>(Landroid/content/Context;)V

    .line 181
    iget-object v3, p0, Lcom/android/pretty/f;->adt:Lcom/android/common/appService/W;

    const-string/jumbo v4, "pref_camera_id_key"

    const v5, 0x7f0200cf

    invoke-virtual {v2, v1, v5, v3, v4}, Lcom/android/common/ui/i;->vw(Ljava/util/List;ILcom/android/common/appService/W;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/pretty/f;->alw()Lcom/android/common/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/h/l;->abY()Lcom/android/common/h/m;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/common/ui/i;->vx(Lcom/android/common/ui/j;)V

    .line 183
    new-instance v1, Lcom/android/common/o/o;

    const/high16 v3, 0x7f100000

    invoke-direct {v1, v3, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_a0
    return-object v0
.end method

.method private aSa(Ljava/util/ArrayList;)V
    .registers 5

    .prologue
    .line 190
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aeg()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 191
    iget-object v0, p0, Lcom/android/pretty/f;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/g;->Kf()Z

    move-result v0

    .line 190
    if-eqz v0, :cond_40

    .line 192
    new-instance v0, Lcom/android/common/ui/F;

    invoke-virtual {p0}, Lcom/android/pretty/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/F;-><init>(Landroid/content/Context;)V

    .line 193
    const-string/jumbo v1, "pref_pretty_switch"

    invoke-virtual {p0, v1}, Lcom/android/pretty/f;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/pretty/f;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ui/F;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 194
    new-instance v1, Lcom/android/pretty/x;

    invoke-direct {v1, p0}, Lcom/android/pretty/x;-><init>(Lcom/android/pretty/f;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/F;->zk(Lcom/android/common/ui/Y;)V

    .line 204
    new-instance v1, Lcom/android/common/o/o;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_40
    return-void
.end method

.method private aSb(Ljava/util/ArrayList;)V
    .registers 6

    .prologue
    const v3, 0x7f100002

    .line 209
    iget-object v0, p0, Lcom/android/pretty/f;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    iget-object v1, p0, Lcom/android/pretty/f;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/h;->apH(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 210
    return-void

    .line 214
    :cond_16
    const-string/jumbo v0, "pref_camera_backlight_flashmode_key"

    invoke-virtual {p0, v0}, Lcom/android/pretty/f;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_41

    .line 216
    new-instance v1, Lcom/android/common/ui/an;

    invoke-virtual {p0}, Lcom/android/pretty/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/an;-><init>(Landroid/content/Context;)V

    .line 217
    iget-object v2, p0, Lcom/android/pretty/f;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v1, v0, v2}, Lcom/android/common/ui/an;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/pretty/f;->alw()Lcom/android/common/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/h/l;->abZ()Lcom/android/common/h/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/ui/an;->zk(Lcom/android/common/ui/Y;)V

    .line 219
    new-instance v0, Lcom/android/common/o/o;

    invoke-direct {v0, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_40
    :goto_40
    return-void

    .line 222
    :cond_41
    iget-object v0, p0, Lcom/android/pretty/f;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-ne v0, v1, :cond_7c

    .line 223
    const-string/jumbo v0, "pref_camera_flashmode_key"

    .line 221
    :goto_54
    invoke-virtual {p0, v0}, Lcom/android/pretty/f;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_40

    .line 226
    new-instance v1, Lcom/android/common/ui/an;

    invoke-virtual {p0}, Lcom/android/pretty/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/an;-><init>(Landroid/content/Context;)V

    .line 227
    iget-object v2, p0, Lcom/android/pretty/f;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v1, v0, v2}, Lcom/android/common/ui/an;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/pretty/f;->alw()Lcom/android/common/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/h/l;->abZ()Lcom/android/common/h/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/ui/an;->zk(Lcom/android/common/ui/Y;)V

    .line 229
    new-instance v0, Lcom/android/common/o/o;

    invoke-direct {v0, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 224
    :cond_7c
    const-string/jumbo v0, "pref_camera_front_flashmode_key"

    goto :goto_54
.end method

.method public static aSc()Lcom/android/pretty/f;
    .registers 2

    .prologue
    .line 116
    new-instance v0, Lcom/android/pretty/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/pretty/f;-><init>(I)V

    return-object v0
.end method

.method static synthetic aSd(Lcom/android/pretty/f;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/f;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic aSe(Lcom/android/pretty/f;)Lcom/android/pretty/j;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/f;->aCG:Lcom/android/pretty/j;

    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    .line 111
    iget-object v1, p0, Lcom/android/pretty/f;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/pretty/f;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/pretty/f;->aCG:Lcom/android/pretty/j;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 110
    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 94
    new-instance v0, Lcom/android/pretty/a;

    iget-object v1, p0, Lcom/android/pretty/f;->adt:Lcom/android/common/appService/W;

    invoke-direct {v0, v1}, Lcom/android/pretty/a;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/pretty/f;->aCF:Lcom/android/pretty/a;

    .line 95
    invoke-virtual {p0}, Lcom/android/pretty/f;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 96
    invoke-direct {p0}, Lcom/android/pretty/f;->aRZ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/pretty/f;->abD:Lcom/android/common/o/l;

    .line 97
    iget-object v0, p0, Lcom/android/pretty/f;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 99
    iget-object v0, p0, Lcom/android/pretty/f;->aCF:Lcom/android/pretty/a;

    invoke-static {v0}, Lcom/android/pretty/j;->aSC(Lcom/android/pretty/a;)Lcom/android/pretty/j;

    move-result-object v0

    iput-object v0, p0, Lcom/android/pretty/f;->aCG:Lcom/android/pretty/j;

    .line 100
    iget-object v0, p0, Lcom/android/pretty/f;->aCG:Lcom/android/pretty/j;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 102
    invoke-static {v3, v3, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/pretty/f;->abE:Lcom/android/common/o/l;

    .line 103
    iget-object v0, p0, Lcom/android/pretty/f;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 104
    iget-object v0, p0, Lcom/android/pretty/f;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 105
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 93
    return-void
.end method

.method protected ain(Z)V
    .registers 3

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/android/common/o/a;->ain(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/pretty/f;->aCG:Lcom/android/pretty/j;

    if-eqz v0, :cond_c

    .line 259
    iget-object v0, p0, Lcom/android/pretty/f;->aCG:Lcom/android/pretty/j;

    invoke-virtual {v0, p1}, Lcom/android/pretty/j;->aSF(Z)V

    .line 256
    :cond_c
    return-void
.end method

.method public mQ()V
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/pretty/f;->aCG:Lcom/android/pretty/j;

    if-eqz v0, :cond_9

    .line 157
    iget-object v0, p0, Lcom/android/pretty/f;->aCG:Lcom/android/pretty/j;

    invoke-virtual {v0}, Lcom/android/pretty/j;->aSD()V

    .line 159
    :cond_9
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 155
    return-void
.end method

.method public mY([B)Z
    .registers 3

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/android/pretty/f;->aim([B)V

    .line 151
    invoke-super {p0, p1}, Lcom/android/common/o/a;->mY([B)Z

    move-result v0

    return v0
.end method

.method public nE(II)Z
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/pretty/f;->aCG:Lcom/android/pretty/j;

    if-eqz v0, :cond_b

    .line 237
    iget-object v0, p0, Lcom/android/pretty/f;->aCG:Lcom/android/pretty/j;

    invoke-virtual {v0, p1, p2}, Lcom/android/pretty/j;->nE(II)Z

    move-result v0

    return v0

    .line 239
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public nl()Lcom/android/common/appService/V;
    .registers 3

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/pretty/f;->aRY()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_15

    .line 246
    invoke-direct {p0}, Lcom/android/pretty/f;->aRY()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hS()Lcom/android/common/appService/V;

    move-result-object v0

    return-object v0

    .line 248
    :cond_15
    invoke-super {p0}, Lcom/android/common/o/a;->nl()Lcom/android/common/appService/V;

    move-result-object v0

    return-object v0
.end method

.method public nn()Landroid/hardware/Camera$PictureCallback;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/pretty/f;->aCF:Lcom/android/pretty/a;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/pretty/f;->aCF:Lcom/android/pretty/a;

    invoke-virtual {v0}, Lcom/android/pretty/a;->aRb()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 140
    iget-object v0, p0, Lcom/android/pretty/f;->aCH:Landroid/hardware/Camera$PictureCallback;

    if-nez v0, :cond_1c

    .line 141
    new-instance v0, Lcom/android/pretty/o;

    iget-object v1, p0, Lcom/android/pretty/f;->adt:Lcom/android/common/appService/W;

    iget-object v2, p0, Lcom/android/pretty/f;->aCF:Lcom/android/pretty/a;

    invoke-direct {v0, v1, v2}, Lcom/android/pretty/o;-><init>(Lcom/android/common/appService/W;Lcom/android/pretty/a;)V

    iput-object v0, p0, Lcom/android/pretty/f;->aCH:Landroid/hardware/Camera$PictureCallback;

    .line 143
    :cond_1c
    iget-object v0, p0, Lcom/android/pretty/f;->aCH:Landroid/hardware/Camera$PictureCallback;

    return-object v0

    .line 145
    :cond_1f
    return-object v1
.end method

.method public no()Landroid/hardware/Camera$PictureCallback;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/pretty/f;->aCF:Lcom/android/pretty/a;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/pretty/f;->aCF:Lcom/android/pretty/a;

    invoke-virtual {v0}, Lcom/android/pretty/a;->aRb()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 129
    iget-object v0, p0, Lcom/android/pretty/f;->aCI:Landroid/hardware/Camera$PictureCallback;

    if-nez v0, :cond_1a

    .line 130
    new-instance v0, Lcom/android/pretty/r;

    iget-object v1, p0, Lcom/android/pretty/f;->aCF:Lcom/android/pretty/a;

    invoke-direct {v0, v1}, Lcom/android/pretty/r;-><init>(Lcom/android/pretty/a;)V

    iput-object v0, p0, Lcom/android/pretty/f;->aCI:Landroid/hardware/Camera$PictureCallback;

    .line 132
    :cond_1a
    iget-object v0, p0, Lcom/android/pretty/f;->aCI:Landroid/hardware/Camera$PictureCallback;

    return-object v0

    .line 134
    :cond_1d
    return-object v1
.end method

.method public nz()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/pretty/f;->aCF:Lcom/android/pretty/a;

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Lcom/android/pretty/f;->aCF:Lcom/android/pretty/a;

    invoke-virtual {v0}, Lcom/android/pretty/a;->aRl()V

    .line 120
    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 70
    iget-boolean v0, p0, Lcom/android/pretty/f;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 71
    :cond_8
    iget-object v1, p0, Lcom/android/pretty/f;->aCG:Lcom/android/pretty/j;

    iget-object v0, p0, Lcom/android/pretty/f;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/pretty/j;->alv(Lcom/android/common/e/h;)V

    .line 72
    iget-object v1, p0, Lcom/android/pretty/f;->aCG:Lcom/android/pretty/j;

    iget-object v0, p0, Lcom/android/pretty/f;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/pretty/j;->alv(Lcom/android/common/e/h;)V

    .line 73
    iget-object v0, p0, Lcom/android/pretty/f;->aCG:Lcom/android/pretty/j;

    invoke-virtual {v0, p0}, Lcom/android/pretty/j;->alv(Lcom/android/common/e/h;)V

    .line 74
    iget-object v0, p0, Lcom/android/pretty/f;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {p0, v0}, Lcom/android/pretty/f;->alv(Lcom/android/common/e/h;)V

    .line 75
    iget-object v0, p0, Lcom/android/pretty/f;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {p0, v0}, Lcom/android/pretty/f;->alv(Lcom/android/common/e/h;)V

    .line 68
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 81
    iget-boolean v0, p0, Lcom/android/pretty/f;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 82
    :cond_8
    iget-object v0, p0, Lcom/android/pretty/f;->abF:Lcom/android/common/n;

    if-nez v0, :cond_10

    .line 83
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/pretty/f;->ail(I)V

    .line 85
    :cond_10
    iget-object v1, p0, Lcom/android/pretty/f;->aCG:Lcom/android/pretty/j;

    iget-object v0, p0, Lcom/android/pretty/f;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/pretty/j;->alu(Lcom/android/common/e/h;)V

    .line 86
    iget-object v1, p0, Lcom/android/pretty/f;->aCG:Lcom/android/pretty/j;

    iget-object v0, p0, Lcom/android/pretty/f;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/pretty/j;->alu(Lcom/android/common/e/h;)V

    .line 87
    iget-object v0, p0, Lcom/android/pretty/f;->aCG:Lcom/android/pretty/j;

    invoke-virtual {v0, p0}, Lcom/android/pretty/j;->alu(Lcom/android/common/e/h;)V

    .line 88
    iget-object v0, p0, Lcom/android/pretty/f;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {p0, v0}, Lcom/android/pretty/f;->alu(Lcom/android/common/e/h;)V

    .line 89
    iget-object v0, p0, Lcom/android/pretty/f;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {p0, v0}, Lcom/android/pretty/f;->alu(Lcom/android/common/e/h;)V

    .line 79
    return-void
.end method

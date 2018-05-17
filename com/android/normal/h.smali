.class public Lcom/android/normal/h;
.super Lcom/android/common/o/a;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private bbf:Lcom/android/common/ui/X;

.field private bbg:Lcom/android/common/ui/X;

.field private bbh:Lcom/android/normal/b;

.field private bbi:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-string/jumbo v0, "NormalMemberFragment"

    sput-object v0, Lcom/android/normal/h;->TAG:Ljava/lang/String;

    .line 57
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/normal/h;->bbi:Z

    .line 61
    iput-object v1, p0, Lcom/android/normal/h;->bbf:Lcom/android/common/ui/X;

    .line 62
    iput-object v1, p0, Lcom/android/normal/h;->bbg:Lcom/android/common/ui/X;

    .line 63
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 59
    iput-object v1, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/normal/h;->bbi:Z

    .line 61
    iput-object v1, p0, Lcom/android/normal/h;->bbf:Lcom/android/common/ui/X;

    .line 62
    iput-object v1, p0, Lcom/android/normal/h;->bbg:Lcom/android/common/ui/X;

    .line 73
    iput-boolean p2, p0, Lcom/android/normal/h;->bbi:Z

    .line 71
    return-void
.end method

.method public static bss(Z)Lcom/android/normal/h;
    .registers 3

    .prologue
    .line 158
    new-instance v0, Lcom/android/normal/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/normal/h;-><init>(IZ)V

    return-object v0
.end method

.method private bst()Lcom/android/common/appService/b;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 425
    invoke-virtual {p0}, Lcom/android/normal/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 426
    invoke-virtual {p0}, Lcom/android/normal/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    return-object v0

    .line 428
    :cond_12
    return-object v1
.end method

.method private bsu()Ljava/util/ArrayList;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/normal/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 164
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 165
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v1, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v2

    if-ne v1, v2, :cond_6a

    .line 169
    new-instance v1, Lcom/android/common/ui/F;

    invoke-virtual {p0}, Lcom/android/normal/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/F;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-static {}, Lcom/android/common/h;->apx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/normal/h;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/normal/h;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v1, v2, v3}, Lcom/android/common/ui/F;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/normal/h;->alw()Lcom/android/common/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/h/l;->ace()Lcom/android/common/h/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/ui/F;->zk(Lcom/android/common/ui/Y;)V

    .line 172
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100006

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_6a
    invoke-direct {p0, v0}, Lcom/android/normal/h;->bsv(Ljava/util/ArrayList;)V

    .line 177
    iget-boolean v1, p0, Lcom/android/normal/h;->bbi:Z

    if-nez v1, :cond_ce

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aed()Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 178
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aec()Z

    move-result v1

    .line 177
    if-eqz v1, :cond_ce

    .line 179
    iget-object v1, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v2

    if-ne v1, v2, :cond_ce

    .line 180
    new-instance v1, Lcom/android/common/ui/X;

    invoke-virtual {p0}, Lcom/android/normal/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/android/common/ui/X;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/normal/h;->bbf:Lcom/android/common/ui/X;

    .line 181
    iget-object v1, p0, Lcom/android/normal/h;->bbf:Lcom/android/common/ui/X;

    const-string/jumbo v2, "pref_live_photo_key"

    invoke-virtual {p0, v2}, Lcom/android/normal/h;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/ui/X;->Dg(Lcom/android/common/setting/IconListPreference;)V

    .line 182
    iget-object v1, p0, Lcom/android/normal/h;->bbf:Lcom/android/common/ui/X;

    new-instance v2, Lcom/android/normal/s;

    invoke-direct {v2, p0}, Lcom/android/normal/s;-><init>(Lcom/android/normal/h;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/X;->Dh(Lcom/android/common/ui/Y;)V

    .line 189
    new-instance v1, Lcom/android/common/o/o;

    iget-object v2, p0, Lcom/android/normal/h;->bbf:Lcom/android/common/ui/X;

    const v3, 0x7f100003

    invoke-direct {v1, v3, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {p0}, Lcom/android/normal/h;->nN()V

    .line 204
    :cond_ce
    new-instance v1, Lcom/android/common/ui/F;

    invoke-virtual {p0}, Lcom/android/normal/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/F;-><init>(Landroid/content/Context;)V

    .line 205
    const-string/jumbo v2, "pref_camera_delay_shoot_key"

    invoke-virtual {p0, v2}, Lcom/android/normal/h;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/normal/h;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v1, v2, v3}, Lcom/android/common/ui/F;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/normal/h;->alw()Lcom/android/common/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/h/l;->aca()Lcom/android/common/h/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/ui/F;->zk(Lcom/android/common/ui/Y;)V

    .line 207
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100004

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pn()Lcom/android/common/appService/y;

    move-result-object v1

    iget-object v2, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/common/appService/y;->kE(Lcom/android/common/appService/CameraMember;)Ljava/util/List;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_13b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_13b

    .line 211
    new-instance v2, Lcom/android/common/ui/i;

    invoke-virtual {p0}, Lcom/android/normal/h;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/ui/i;-><init>(Landroid/content/Context;)V

    .line 212
    iget-object v3, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    const-string/jumbo v4, "pref_camera_id_key"

    const v5, 0x7f0200cf

    invoke-virtual {v2, v1, v5, v3, v4}, Lcom/android/common/ui/i;->vw(Ljava/util/List;ILcom/android/common/appService/W;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/normal/h;->alw()Lcom/android/common/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/h/l;->abY()Lcom/android/common/h/m;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/common/ui/i;->vx(Lcom/android/common/ui/j;)V

    .line 214
    new-instance v1, Lcom/android/common/o/o;

    const/high16 v3, 0x7f100000

    invoke-direct {v1, v3, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_13b
    iget-boolean v1, p0, Lcom/android/normal/h;->bbi:Z

    if-eqz v1, :cond_15c

    .line 218
    invoke-virtual {p0}, Lcom/android/normal/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v2

    .line 218
    invoke-static {v1, v2}, Lcom/android/common/h;->apb(Landroid/content/Context;I)Lcom/android/common/ui/RotateImageView;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_15c

    .line 221
    new-instance v2, Lcom/android/common/o/o;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_15c
    return-object v0
.end method

.method private bsv(Ljava/util/ArrayList;)V
    .registers 6

    .prologue
    const v3, 0x7f100002

    .line 230
    iget-object v0, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-ne v0, v1, :cond_3e

    .line 231
    const-string/jumbo v0, "pref_camera_flashmode_key"

    .line 229
    :goto_16
    invoke-virtual {p0, v0}, Lcom/android/normal/h;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_42

    .line 234
    new-instance v1, Lcom/android/common/ui/an;

    invoke-virtual {p0}, Lcom/android/normal/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/an;-><init>(Landroid/content/Context;)V

    .line 235
    iget-object v2, p0, Lcom/android/normal/h;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v1, v0, v2}, Lcom/android/common/ui/an;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/normal/h;->alw()Lcom/android/common/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/h/l;->abZ()Lcom/android/common/h/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/ui/an;->zk(Lcom/android/common/ui/Y;)V

    .line 237
    new-instance v0, Lcom/android/common/o/o;

    invoke-direct {v0, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_3d
    :goto_3d
    return-void

    .line 232
    :cond_3e
    const-string/jumbo v0, "pref_camera_front_flashmode_key"

    goto :goto_16

    .line 239
    :cond_42
    const-string/jumbo v0, "pref_camera_backlight_flashmode_key"

    invoke-virtual {p0, v0}, Lcom/android/normal/h;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_3d

    .line 241
    new-instance v1, Lcom/android/common/ui/an;

    invoke-virtual {p0}, Lcom/android/normal/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/an;-><init>(Landroid/content/Context;)V

    .line 242
    iget-object v2, p0, Lcom/android/normal/h;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v1, v0, v2}, Lcom/android/common/ui/an;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/normal/h;->alw()Lcom/android/common/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/h/l;->abZ()Lcom/android/common/h/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/ui/an;->zk(Lcom/android/common/ui/Y;)V

    .line 244
    new-instance v0, Lcom/android/common/o/o;

    invoke-direct {v0, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d
.end method

.method private bsw()Z
    .registers 6

    .prologue
    const v4, 0x7f0a0412

    .line 414
    iget-object v0, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 415
    const-string/jumbo v1, "pref_camera_ztemt_fun_effect"

    .line 416
    iget-object v2, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2, v4}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v2

    .line 414
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v1

    .line 418
    const-string/jumbo v2, "pref_camera_pretty_effect_key"

    .line 419
    iget-object v3, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3, v4}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    const-string/jumbo v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 421
    const-string/jumbo v0, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 420
    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method private bsx()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 360
    iget-object v0, p0, Lcom/android/normal/h;->bbg:Lcom/android/common/ui/X;

    if-nez v0, :cond_7

    .line 361
    return-void

    .line 363
    :cond_7
    iget-object v0, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XI()Z

    move-result v0

    if-nez v0, :cond_34

    .line 364
    const-string/jumbo v0, "-1"

    iget-object v1, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 374
    iget-object v0, p0, Lcom/android/normal/h;->bbg:Lcom/android/common/ui/X;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/X;->setClickable(Z)V

    .line 375
    iget-object v0, p0, Lcom/android/normal/h;->bbg:Lcom/android/common/ui/X;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/X;->setEnabled(Z)V

    .line 377
    :goto_30
    invoke-virtual {p0}, Lcom/android/normal/h;->ajq()V

    .line 359
    return-void

    .line 365
    :cond_34
    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v1

    .line 366
    const-string/jumbo v2, "pref_big_aperature_key"

    const-string/jumbo v3, "off"

    .line 365
    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 367
    if-eqz v0, :cond_61

    .line 368
    const-string/jumbo v0, "pref_big_aperature_key"

    invoke-virtual {p0, v0}, Lcom/android/normal/h;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/IconListPreference;->Vv(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/normal/h;->bbg:Lcom/android/common/ui/X;

    iget-object v1, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/X;->Dj(Lcom/android/common/appService/W;)V

    .line 371
    :cond_61
    iget-object v0, p0, Lcom/android/normal/h;->bbg:Lcom/android/common/ui/X;

    invoke-virtual {v0, v4}, Lcom/android/common/ui/X;->setClickable(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/normal/h;->bbg:Lcom/android/common/ui/X;

    invoke-virtual {v0, v4}, Lcom/android/common/ui/X;->setEnabled(Z)V

    goto :goto_30
.end method

.method static synthetic bsy(Lcom/android/normal/h;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic bsz(Lcom/android/normal/h;)Lcom/android/common/appService/b;
    .registers 2

    invoke-direct {p0}, Lcom/android/normal/h;->bst()Lcom/android/common/appService/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    .line 108
    iget-object v1, p0, Lcom/android/normal/h;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/normal/h;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 107
    return-object v0
.end method

.method protected aiH()V
    .registers 1

    .prologue
    .line 382
    invoke-super {p0}, Lcom/android/common/o/a;->aiH()V

    .line 383
    invoke-direct {p0}, Lcom/android/normal/h;->bsx()V

    .line 381
    return-void
.end method

.method protected aiR()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/android/normal/h;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 83
    invoke-direct {p0}, Lcom/android/normal/h;->bsu()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/normal/h;->abD:Lcom/android/common/o/l;

    .line 84
    iget-object v0, p0, Lcom/android/normal/h;->abD:Lcom/android/common/o/l;

    const v3, 0x7f1000ca

    invoke-virtual {v2, v3, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 87
    iget-boolean v0, p0, Lcom/android/normal/h;->bbi:Z

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Lcom/android/normal/h;->aiE()Ljava/util/List;

    move-result-object v0

    :goto_23
    invoke-virtual {p0}, Lcom/android/normal/h;->aio()Ljava/util/List;

    move-result-object v3

    .line 86
    invoke-static {v1, v0, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/normal/h;->abE:Lcom/android/common/o/l;

    .line 88
    iget-object v0, p0, Lcom/android/normal/h;->abE:Lcom/android/common/o/l;

    const v1, 0x7f1000cb

    invoke-virtual {v2, v1, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 90
    new-instance v0, Lcom/android/normal/r;

    invoke-direct {v0, p0}, Lcom/android/normal/r;-><init>(Lcom/android/normal/h;)V

    invoke-static {v0}, Lcom/android/normal/b;->brI(Lcom/android/normal/i;)Lcom/android/normal/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    .line 99
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    const v1, 0x7f1000c9

    invoke-virtual {v2, v1, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 100
    iget-object v0, p0, Lcom/android/normal/h;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 102
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 81
    return-void

    :cond_53
    move-object v0, v1

    .line 87
    goto :goto_23
.end method

.method protected ain(Z)V
    .registers 4

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/android/common/o/a;->ain(Z)V

    .line 346
    if-eqz p1, :cond_6

    .line 344
    :goto_5
    return-void

    .line 349
    :cond_6
    iget-object v0, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qX()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 350
    invoke-direct {p0}, Lcom/android/normal/h;->bst()Lcom/android/common/appService/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/common/appService/b;->hZ(Z)V

    .line 351
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->brT()V

    goto :goto_5

    .line 353
    :cond_1c
    invoke-direct {p0}, Lcom/android/normal/h;->bst()Lcom/android/common/appService/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/common/appService/b;->hZ(Z)V

    .line 354
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->brw()V

    goto :goto_5
.end method

.method protected ajC()V
    .registers 1

    .prologue
    .line 388
    invoke-super {p0}, Lcom/android/common/o/a;->ajC()V

    .line 389
    invoke-direct {p0}, Lcom/android/normal/h;->bsx()V

    .line 387
    return-void
.end method

.method protected ajh(Z)V
    .registers 3

    .prologue
    .line 308
    if-eqz p1, :cond_3

    .line 307
    :goto_2
    return-void

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->brQ()V

    goto :goto_2
.end method

.method public alO(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rl()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 266
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    invoke-virtual {v0, p1}, Lcom/android/normal/b;->alO(Ljava/lang/String;)V

    .line 264
    :cond_11
    return-void
.end method

.method public mU(Z)V
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    if-eqz v0, :cond_9

    .line 318
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    invoke-virtual {v0, p1}, Lcom/android/normal/b;->bru(Z)V

    .line 316
    :cond_9
    return-void
.end method

.method public mY([B)Z
    .registers 3

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/android/normal/h;->aim([B)V

    .line 151
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    if-eqz v0, :cond_c

    .line 152
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    invoke-virtual {v0, p1}, Lcom/android/normal/b;->mY([B)Z

    .line 154
    :cond_c
    invoke-super {p0, p1}, Lcom/android/common/o/a;->mY([B)Z

    move-result v0

    return v0
.end method

.method public nC()V
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    if-eqz v0, :cond_9

    .line 302
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->brL()V

    .line 300
    :cond_9
    return-void
.end method

.method public nD()Z
    .registers 3

    .prologue
    .line 272
    sget-object v0, Lcom/android/normal/h;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutterBottonClicked"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rl()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 274
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->nD()Z

    move-result v0

    return v0

    .line 276
    :cond_1b
    const/high16 v0, -0x40800000    # -1.0f

    .line 277
    iget-object v1, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 278
    iget-object v0, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 280
    :cond_33
    iget-boolean v1, p0, Lcom/android/normal/h;->bbi:Z

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    if-eqz v1, :cond_48

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_48

    .line 281
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->nD()Z

    move-result v0

    return v0

    .line 283
    :cond_48
    const/4 v0, 0x0

    return v0
.end method

.method public nE(II)Z
    .registers 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    if-eqz v0, :cond_b

    .line 395
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    invoke-virtual {v0, p1, p2}, Lcom/android/normal/b;->nE(II)Z

    move-result v0

    return v0

    .line 397
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public nJ()V
    .registers 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/common/o/a;->nJ()V

    .line 143
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    if-eqz v0, :cond_c

    .line 144
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->nJ()V

    .line 141
    :cond_c
    return-void
.end method

.method public nN()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcom/android/normal/h;->bbf:Lcom/android/common/ui/X;

    if-nez v0, :cond_7

    .line 252
    return-void

    .line 254
    :cond_7
    iget-object v0, p0, Lcom/android/normal/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XK()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 255
    iget-object v0, p0, Lcom/android/normal/h;->bbf:Lcom/android/common/ui/X;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/X;->setClickable(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/normal/h;->bbf:Lcom/android/common/ui/X;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/X;->setEnabled(Z)V

    .line 250
    :goto_1d
    return-void

    .line 258
    :cond_1e
    iget-object v0, p0, Lcom/android/normal/h;->bbf:Lcom/android/common/ui/X;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/X;->setClickable(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/normal/h;->bbf:Lcom/android/common/ui/X;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/X;->setEnabled(Z)V

    goto :goto_1d
.end method

.method public nl()Lcom/android/common/appService/V;
    .registers 3

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/android/normal/h;->bst()Lcom/android/common/appService/b;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 403
    invoke-direct {p0}, Lcom/android/normal/h;->bst()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    .line 404
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-eq v0, v1, :cond_16

    .line 405
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_25

    .line 406
    :cond_16
    invoke-direct {p0}, Lcom/android/normal/h;->bsw()Z

    move-result v0

    .line 404
    if-eqz v0, :cond_25

    .line 407
    invoke-direct {p0}, Lcom/android/normal/h;->bst()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hS()Lcom/android/common/appService/V;

    move-result-object v0

    return-object v0

    .line 410
    :cond_25
    invoke-super {p0}, Lcom/android/common/o/a;->nl()Lcom/android/common/appService/V;

    move-result-object v0

    return-object v0
.end method

.method public np()V
    .registers 1

    .prologue
    .line 287
    return-void
.end method

.method public nt()V
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    if-eqz v0, :cond_9

    .line 296
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->brG()V

    .line 294
    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 130
    iget-boolean v0, p0, Lcom/android/normal/h;->adu:Z

    if-eqz v0, :cond_8

    .line 131
    return-void

    .line 133
    :cond_8
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    invoke-virtual {v0, p0}, Lcom/android/normal/b;->alv(Lcom/android/common/e/h;)V

    .line 134
    iget-object v1, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    iget-object v0, p0, Lcom/android/normal/h;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/normal/b;->alv(Lcom/android/common/e/h;)V

    .line 135
    iget-object v1, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    iget-object v0, p0, Lcom/android/normal/h;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/normal/b;->alv(Lcom/android/common/e/h;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/normal/h;->ajm()V

    .line 137
    invoke-direct {p0}, Lcom/android/normal/h;->bst()Lcom/android/common/appService/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/common/appService/b;->hM(Z)V

    .line 128
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 115
    iget-boolean v0, p0, Lcom/android/normal/h;->adu:Z

    if-eqz v0, :cond_8

    .line 116
    return-void

    .line 118
    :cond_8
    iget-object v0, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    invoke-virtual {v0, p0}, Lcom/android/normal/b;->alu(Lcom/android/common/e/h;)V

    .line 119
    iget-object v1, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    iget-object v0, p0, Lcom/android/normal/h;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/normal/b;->alu(Lcom/android/common/e/h;)V

    .line 120
    iget-object v1, p0, Lcom/android/normal/h;->bbh:Lcom/android/normal/b;

    iget-object v0, p0, Lcom/android/normal/h;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/normal/b;->alu(Lcom/android/common/e/h;)V

    .line 122
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/normal/h;->ail(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/normal/h;->aiu()V

    .line 124
    invoke-direct {p0}, Lcom/android/normal/h;->bsx()V

    .line 113
    return-void
.end method

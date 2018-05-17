.class public Lcom/android/dng/h;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field private aAq:Lcom/android/common/appService/V;

.field private aAr:Lcom/android/dng/j;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    .line 48
    iput-object v0, p0, Lcom/android/dng/h;->aAq:Lcom/android/common/appService/V;

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 46
    iput-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    .line 48
    iput-object v0, p0, Lcom/android/dng/h;->aAq:Lcom/android/common/appService/V;

    .line 54
    return-void
.end method

.method private aPx()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/dng/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 104
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 105
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/dng/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const-string/jumbo v1, "pref_camera_flashmode_key"

    invoke-virtual {p0, v1}, Lcom/android/dng/h;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_5a

    .line 110
    new-instance v2, Lcom/android/common/ui/an;

    invoke-virtual {p0}, Lcom/android/dng/h;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/ui/an;-><init>(Landroid/content/Context;)V

    .line 111
    iget-object v3, p0, Lcom/android/dng/h;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v2, v1, v3}, Lcom/android/common/ui/an;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/dng/h;->alw()Lcom/android/common/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/h/l;->abZ()Lcom/android/common/h/j;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/common/ui/an;->zk(Lcom/android/common/ui/Y;)V

    .line 113
    new-instance v1, Lcom/android/common/o/o;

    const v3, 0x7f100002

    invoke-direct {v1, v3, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_5a
    new-instance v1, Lcom/android/common/ui/F;

    invoke-virtual {p0}, Lcom/android/dng/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/F;-><init>(Landroid/content/Context;)V

    .line 117
    const-string/jumbo v2, "pref_camera_delay_shoot_key"

    invoke-virtual {p0, v2}, Lcom/android/dng/h;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dng/h;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v1, v2, v3}, Lcom/android/common/ui/F;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/dng/h;->alw()Lcom/android/common/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/h/l;->aca()Lcom/android/common/h/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/ui/F;->zk(Lcom/android/common/ui/Y;)V

    .line 119
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100004

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p0}, Lcom/android/dng/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/android/dng/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v2

    .line 121
    invoke-static {v1, v2}, Lcom/android/common/h;->apb(Landroid/content/Context;I)Lcom/android/common/ui/RotateImageView;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_a2

    .line 124
    new-instance v2, Lcom/android/common/o/o;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_a2
    return-object v0
.end method

.method private aPy()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 230
    iget-boolean v0, p0, Lcom/android/dng/h;->adv:Z

    if-eqz v0, :cond_f

    .line 231
    const-string/jumbo v0, "DngMemberFragment"

    const-string/jumbo v1, "fragment is paused or not resume"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return v4

    .line 234
    :cond_f
    iget-object v0, p0, Lcom/android/dng/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agD()Z

    move-result v1

    if-nez v1, :cond_25

    .line 236
    const-string/jumbo v0, "DngMemberFragment"

    const-string/jumbo v1, "storage queue size > 0"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return v4

    .line 239
    :cond_25
    const-wide/32 v2, 0x3c00000

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/common/storagemanager/f;->agw(JZ)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    move-result-object v0

    .line 240
    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaD:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    if-eq v0, v1, :cond_3c

    .line 241
    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaG:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    if-ne v0, v1, :cond_3e

    const/high16 v1, 0x3c00000

    invoke-static {v1}, Lcom/android/common/h;->aoY(I)Z

    move-result v1

    .line 240
    if-eqz v1, :cond_3e

    .line 242
    :cond_3c
    const/4 v0, 0x1

    return v0

    .line 244
    :cond_3e
    const-string/jumbo v1, "DngMemberFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return v4
.end method

.method public static aPz()Lcom/android/dng/h;
    .registers 2

    .prologue
    .line 91
    new-instance v0, Lcom/android/dng/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/dng/h;-><init>(I)V

    .line 92
    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    if-eqz v0, :cond_17

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    iget-object v1, p0, Lcom/android/dng/h;->abD:Lcom/android/common/o/l;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dng/h;->abE:Lcom/android/common/o/l;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    aput-object v1, v0, v4

    return-object v0

    .line 86
    :cond_17
    new-array v0, v4, [Lcom/android/common/o/l;

    iget-object v1, p0, Lcom/android/dng/h;->abD:Lcom/android/common/o/l;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dng/h;->abE:Lcom/android/common/o/l;

    aput-object v1, v0, v3

    return-object v0
.end method

.method protected aiE()Ljava/util/List;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 131
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aeb()Z

    move-result v0

    if-nez v0, :cond_14

    .line 132
    invoke-super {p0}, Lcom/android/common/o/a;->aiE()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 134
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    sget-boolean v1, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-eqz v1, :cond_9a

    .line 136
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aej()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 137
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->acs()I

    move-result v1

    .line 138
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->adD()[Ljava/lang/String;

    move-result-object v2

    .line 139
    if-eqz v2, :cond_6e

    .line 140
    new-instance v1, Lcom/android/common/ui/ao;

    iget-object v3, p0, Lcom/android/dng/h;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v3, v5, v2}, Lcom/android/common/ui/ao;-><init>(Lcom/android/common/appService/W;I[Ljava/lang/String;)V

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_4f
    :goto_4f
    new-instance v1, Lcom/android/common/ui/P;

    iget-object v2, p0, Lcom/android/dng/h;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/ui/P;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lcom/android/common/ui/v;

    iget-object v2, p0, Lcom/android/dng/h;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/ui/v;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/android/common/ui/r;

    iget-object v2, p0, Lcom/android/dng/h;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/ui/r;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :goto_6d
    return-object v0

    .line 142
    :cond_6e
    const/16 v2, 0x3c

    if-le v1, v2, :cond_8e

    .line 143
    new-instance v1, Lcom/android/common/ui/ao;

    iget-object v2, p0, Lcom/android/dng/h;->adt:Lcom/android/common/appService/W;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/common/ui/ao;-><init>(Lcom/android/common/appService/W;I)V

    .line 144
    new-instance v2, Lcom/android/common/ui/ao;

    iget-object v3, p0, Lcom/android/dng/h;->adt:Lcom/android/common/appService/W;

    invoke-direct {v2, v3, v5}, Lcom/android/common/ui/ao;-><init>(Lcom/android/common/appService/W;I)V

    .line 145
    invoke-virtual {v1, v2}, Lcom/android/common/ui/ao;->Gr(Lcom/android/common/ui/ao;)V

    .line 146
    invoke-virtual {v2, v1}, Lcom/android/common/ui/ao;->Gr(Lcom/android/common/ui/ao;)V

    .line 147
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 150
    :cond_8e
    new-instance v2, Lcom/android/common/ui/ao;

    iget-object v3, p0, Lcom/android/dng/h;->adt:Lcom/android/common/appService/W;

    const/4 v4, -0x1

    invoke-direct {v2, v3, v5, v4, v1}, Lcom/android/common/ui/ao;-><init>(Lcom/android/common/appService/W;III)V

    .line 151
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 158
    :cond_9a
    invoke-virtual {p0, v0}, Lcom/android/dng/h;->ais(Ljava/util/List;)V

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/dng/h;->aix(Ljava/util/List;)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/dng/h;->air(Ljava/util/List;)V

    goto :goto_6d
.end method

.method protected aiR()V
    .registers 5

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/dng/h;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 62
    invoke-direct {p0}, Lcom/android/dng/h;->aPx()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dng/h;->abD:Lcom/android/common/o/l;

    .line 63
    iget-object v0, p0, Lcom/android/dng/h;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 66
    invoke-virtual {p0}, Lcom/android/dng/h;->aiE()Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/android/dng/h;->aio()Ljava/util/List;

    move-result-object v2

    .line 65
    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dng/h;->abE:Lcom/android/common/o/l;

    .line 68
    iget-object v0, p0, Lcom/android/dng/h;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 69
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aeb()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 70
    invoke-static {}, Lcom/android/dng/j;->aPA()Lcom/android/dng/j;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    .line 71
    iget-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 74
    :cond_4d
    iget-object v0, p0, Lcom/android/dng/h;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 75
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 78
    sget-boolean v0, Lcom/android/common/h;->ahs:Z

    if-eqz v0, :cond_65

    new-instance v0, Lcom/android/dng/a;

    iget-object v1, p0, Lcom/android/dng/h;->adt:Lcom/android/common/appService/W;

    invoke-direct {v0, v1}, Lcom/android/dng/a;-><init>(Lcom/android/common/appService/W;)V

    :goto_62
    iput-object v0, p0, Lcom/android/dng/h;->aAq:Lcom/android/common/appService/V;

    .line 59
    return-void

    .line 78
    :cond_65
    new-instance v0, Lcom/android/dng/g;

    iget-object v1, p0, Lcom/android/dng/h;->adt:Lcom/android/common/appService/W;

    invoke-direct {v0, v1}, Lcom/android/dng/g;-><init>(Lcom/android/common/appService/W;)V

    goto :goto_62
.end method

.method protected ajE(I)V
    .registers 2

    .prologue
    .line 218
    return-void
.end method

.method public iu()V
    .registers 3

    .prologue
    .line 262
    invoke-super {p0}, Lcom/android/common/o/a;->iu()V

    .line 263
    iget-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    if-eqz v0, :cond_d

    .line 264
    iget-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dng/j;->aPD(Z)V

    .line 261
    :cond_d
    return-void
.end method

.method public ix()V
    .registers 3

    .prologue
    .line 254
    invoke-super {p0}, Lcom/android/common/o/a;->ix()V

    .line 255
    iget-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    if-eqz v0, :cond_d

    .line 256
    iget-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dng/j;->aPD(Z)V

    .line 253
    :cond_d
    return-void
.end method

.method public mO()Z
    .registers 2

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public mY([B)Z
    .registers 5

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    if-eqz v1, :cond_b

    .line 208
    iget-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    invoke-virtual {v0, p1}, Lcom/android/dng/j;->mY([B)Z

    move-result v0

    .line 210
    :cond_b
    invoke-virtual {p0}, Lcom/android/dng/h;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v1, v2, :cond_1d

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/dng/h;->aim([B)V

    .line 212
    iget-object v1, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    iget v1, v1, Lcom/android/dng/j;->aAy:I

    invoke-virtual {p0, v1}, Lcom/android/dng/h;->ajD(I)V

    .line 214
    :cond_1d
    if-nez v0, :cond_24

    invoke-super {p0, p1}, Lcom/android/common/o/a;->mY([B)Z

    move-result v0

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method

.method public nD()Z
    .registers 2

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/dng/h;->aPy()Z

    move-result v0

    if-nez v0, :cond_8

    .line 196
    const/4 v0, 0x1

    return v0

    .line 198
    :cond_8
    iget-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    if-eqz v0, :cond_13

    .line 199
    iget-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    invoke-virtual {v0}, Lcom/android/dng/j;->nD()Z

    move-result v0

    return v0

    .line 201
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public nl()Lcom/android/common/appService/V;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/dng/h;->aAq:Lcom/android/common/appService/V;

    return-object v0
.end method

.method public nt()V
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    if-eqz v0, :cond_9

    .line 225
    iget-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    invoke-virtual {v0}, Lcom/android/dng/j;->aPC()V

    .line 223
    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 183
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 184
    iget-boolean v0, p0, Lcom/android/dng/h;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 185
    :cond_8
    iget-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    if-eqz v0, :cond_26

    .line 186
    iget-object v1, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    iget-object v0, p0, Lcom/android/dng/h;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/dng/j;->alv(Lcom/android/common/e/h;)V

    .line 187
    iget-object v1, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    iget-object v0, p0, Lcom/android/dng/h;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/dng/j;->alv(Lcom/android/common/e/h;)V

    .line 188
    iget-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    invoke-virtual {v0, p0}, Lcom/android/dng/j;->alv(Lcom/android/common/e/h;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/dng/h;->ajm()V

    .line 182
    :cond_26
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 168
    iget-boolean v0, p0, Lcom/android/dng/h;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 169
    :cond_8
    iget-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    if-eqz v0, :cond_35

    .line 170
    iget-object v1, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    iget-object v0, p0, Lcom/android/dng/h;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/dng/j;->alu(Lcom/android/common/e/h;)V

    .line 171
    iget-object v1, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    iget-object v0, p0, Lcom/android/dng/h;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/dng/j;->alu(Lcom/android/common/e/h;)V

    .line 172
    iget-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    invoke-virtual {v0, p0}, Lcom/android/dng/j;->alu(Lcom/android/common/e/h;)V

    .line 173
    iget-object v0, p0, Lcom/android/dng/h;->abF:Lcom/android/common/n;

    if-nez v0, :cond_2b

    .line 174
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/dng/h;->ail(I)V

    .line 176
    :cond_2b
    iget-object v0, p0, Lcom/android/dng/h;->aAr:Lcom/android/dng/j;

    iget-object v1, p0, Lcom/android/dng/h;->abF:Lcom/android/common/n;

    invoke-virtual {v0, v1}, Lcom/android/dng/j;->aPB(Lcom/android/common/n;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/dng/h;->aiu()V

    .line 166
    :cond_35
    return-void
.end method

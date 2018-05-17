.class public Lcom/android/front/a;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field aNG:Lcom/android/common/g/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 39
    return-void
.end method

.method private bem()Ljava/util/ArrayList;
    .registers 7

    .prologue
    const v5, 0x7f100002

    const/4 v4, 0x0

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/front/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 100
    const v2, 0x7f020290

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 101
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/front/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v0}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    const-string/jumbo v0, "pref_camera_front_flashmode_key"

    invoke-virtual {p0, v0}, Lcom/android/front/a;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_109

    .line 107
    new-instance v2, Lcom/android/common/ui/an;

    invoke-virtual {p0}, Lcom/android/front/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/ui/an;-><init>(Landroid/content/Context;)V

    .line 108
    iget-object v3, p0, Lcom/android/front/a;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v2, v0, v3}, Lcom/android/common/ui/an;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/front/a;->alw()Lcom/android/common/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/h/l;->abZ()Lcom/android/common/h/j;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/common/ui/an;->zk(Lcom/android/common/ui/Y;)V

    .line 110
    new-instance v0, Lcom/android/common/o/o;

    invoke-direct {v0, v5, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_5b
    :goto_5b
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aet()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 122
    new-instance v2, Lcom/android/common/ui/X;

    invoke-virtual {p0}, Lcom/android/front/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Lcom/android/common/ui/X;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adK()Z

    move-result v0

    if-eqz v0, :cond_135

    .line 124
    const-string/jumbo v0, "pref_camera_zk_pretty"

    invoke-virtual {p0, v0}, Lcom/android/front/a;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    .line 123
    :goto_87
    invoke-virtual {v2, v0}, Lcom/android/common/ui/X;->Dg(Lcom/android/common/setting/IconListPreference;)V

    .line 126
    new-instance v0, Lcom/android/front/b;

    invoke-direct {v0, p0}, Lcom/android/front/b;-><init>(Lcom/android/front/a;)V

    invoke-virtual {v2, v0}, Lcom/android/common/ui/X;->Dh(Lcom/android/common/ui/Y;)V

    .line 127
    new-instance v0, Lcom/android/common/o/o;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_9b
    new-instance v0, Lcom/android/common/ui/F;

    invoke-virtual {p0}, Lcom/android/front/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/common/ui/F;-><init>(Landroid/content/Context;)V

    .line 131
    const-string/jumbo v2, "pref_camera_delay_shoot_key"

    invoke-virtual {p0, v2}, Lcom/android/front/a;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/front/a;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v0, v2, v3}, Lcom/android/common/ui/F;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/front/a;->alw()Lcom/android/common/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/h/l;->aca()Lcom/android/common/h/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/common/ui/F;->zk(Lcom/android/common/ui/Y;)V

    .line 133
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100004

    invoke-direct {v2, v3, v0}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/android/front/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pn()Lcom/android/common/appService/y;

    move-result-object v0

    iget-object v2, p0, Lcom/android/front/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/common/appService/y;->kE(Lcom/android/common/appService/CameraMember;)Ljava/util/List;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_108

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_108

    .line 137
    new-instance v2, Lcom/android/common/ui/i;

    invoke-virtual {p0}, Lcom/android/front/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/ui/i;-><init>(Landroid/content/Context;)V

    .line 138
    iget-object v3, p0, Lcom/android/front/a;->adt:Lcom/android/common/appService/W;

    const-string/jumbo v4, "pref_camera_id_key"

    const v5, 0x7f0200cf

    invoke-virtual {v2, v0, v5, v3, v4}, Lcom/android/common/ui/i;->vw(Ljava/util/List;ILcom/android/common/appService/W;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/front/a;->alw()Lcom/android/common/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/h/l;->abY()Lcom/android/common/h/m;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/common/ui/i;->vx(Lcom/android/common/ui/j;)V

    .line 140
    new-instance v0, Lcom/android/common/o/o;

    const/high16 v3, 0x7f100000

    invoke-direct {v0, v3, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_108
    return-object v1

    .line 112
    :cond_109
    const-string/jumbo v0, "pref_camera_backlight_flashmode_key"

    invoke-virtual {p0, v0}, Lcom/android/front/a;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_5b

    .line 114
    new-instance v2, Lcom/android/common/ui/an;

    invoke-virtual {p0}, Lcom/android/front/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/ui/an;-><init>(Landroid/content/Context;)V

    .line 115
    iget-object v3, p0, Lcom/android/front/a;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v2, v0, v3}, Lcom/android/common/ui/an;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/front/a;->alw()Lcom/android/common/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/h/l;->abZ()Lcom/android/common/h/j;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/common/ui/an;->zk(Lcom/android/common/ui/Y;)V

    .line 117
    new-instance v0, Lcom/android/common/o/o;

    invoke-direct {v0, v5, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5b

    .line 125
    :cond_135
    const-string/jumbo v0, "pref_camera_doc_pretty"

    invoke-virtual {p0, v0}, Lcom/android/front/a;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    goto/16 :goto_87
.end method

.method public static ben()Lcom/android/front/a;
    .registers 2

    .prologue
    .line 63
    new-instance v0, Lcom/android/front/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/front/a;-><init>(I)V

    return-object v0
.end method

.method private beo()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/android/front/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XM()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 147
    iget-object v0, p0, Lcom/android/front/a;->aNG:Lcom/android/common/g/c;

    if-nez v0, :cond_32

    .line 148
    iget-object v0, p0, Lcom/android/front/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/android/common/g/c;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/android/common/g/c;-><init>(IIZZ)V

    iput-object v1, p0, Lcom/android/front/a;->aNG:Lcom/android/common/g/c;

    .line 150
    iget-object v0, p0, Lcom/android/front/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/front/a;->aNG:Lcom/android/common/g/c;

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->al(Lcom/android/common/a/b;)V

    .line 145
    :cond_32
    :goto_32
    return-void

    .line 153
    :cond_33
    iget-object v0, p0, Lcom/android/front/a;->aNG:Lcom/android/common/g/c;

    if-eqz v0, :cond_32

    .line 154
    iget-object v0, p0, Lcom/android/front/a;->aNG:Lcom/android/common/g/c;

    invoke-virtual {v0}, Lcom/android/common/g/c;->release()V

    .line 155
    iput-object v1, p0, Lcom/android/front/a;->aNG:Lcom/android/common/g/c;

    goto :goto_32
.end method

.method static synthetic bep(Lcom/android/front/a;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/front/a;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic beq(Lcom/android/front/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/front/a;->adv:Z

    return v0
.end method

.method static synthetic ber(Lcom/android/front/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/front/a;->beo()V

    return-void
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/common/o/l;

    .line 58
    iget-object v1, p0, Lcom/android/front/a;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/front/a;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 57
    return-object v0
.end method

.method protected aiE()Ljava/util/List;
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/android/front/a;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 46
    invoke-direct {p0}, Lcom/android/front/a;->bem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/front/a;->abD:Lcom/android/common/o/l;

    .line 47
    iget-object v0, p0, Lcom/android/front/a;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 49
    invoke-static {v3, v3, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/front/a;->abE:Lcom/android/common/o/l;

    .line 50
    iget-object v0, p0, Lcom/android/front/a;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 51
    iget-object v0, p0, Lcom/android/front/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 52
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 44
    return-void
.end method

.method protected aio()Ljava/util/List;
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-boolean v0, p0, Lcom/android/front/a;->adu:Z

    if-eqz v0, :cond_9

    .line 78
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 79
    return-void

    .line 81
    :cond_9
    iget-object v0, p0, Lcom/android/front/a;->aNG:Lcom/android/common/g/c;

    if-eqz v0, :cond_14

    .line 82
    iget-object v0, p0, Lcom/android/front/a;->aNG:Lcom/android/common/g/c;

    invoke-virtual {v0}, Lcom/android/common/g/c;->release()V

    .line 83
    iput-object v1, p0, Lcom/android/front/a;->aNG:Lcom/android/common/g/c;

    .line 85
    :cond_14
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 76
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 69
    iget-boolean v0, p0, Lcom/android/front/a;->adu:Z

    if-eqz v0, :cond_8

    .line 70
    return-void

    .line 72
    :cond_8
    invoke-direct {p0}, Lcom/android/front/a;->beo()V

    .line 67
    return-void
.end method

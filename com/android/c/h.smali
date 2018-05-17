.class public Lcom/android/c/h;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field private aBD:Lcom/android/c/i;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/c/h;->aBD:Lcom/android/c/i;

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/c/h;->aBD:Lcom/android/c/i;

    .line 34
    return-void
.end method

.method public static aQA()Lcom/android/c/h;
    .registers 2

    .prologue
    .line 91
    new-instance v0, Lcom/android/c/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/c/h;-><init>(I)V

    return-object v0
.end method

.method private aQB()Ljava/util/ArrayList;
    .registers 7

    .prologue
    const v5, 0x7f100002

    const/4 v4, 0x1

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/android/c/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v2, Lcom/android/common/appService/CameraMember;->jn:Lcom/android/common/appService/CameraMember;

    if-eq v0, v2, :cond_51

    .line 99
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/c/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pv()I

    move-result v2

    aget-object v0, v0, v2

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v4, :cond_9d

    .line 100
    const-string/jumbo v0, "pref_camera_front_flashmode_key"

    .line 98
    :goto_2a
    invoke-virtual {p0, v0}, Lcom/android/c/h;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_a1

    .line 102
    new-instance v2, Lcom/android/common/ui/an;

    invoke-virtual {p0}, Lcom/android/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/ui/an;-><init>(Landroid/content/Context;)V

    .line 103
    iget-object v3, p0, Lcom/android/c/h;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v2, v0, v3}, Lcom/android/common/ui/an;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/c/h;->alw()Lcom/android/common/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/h/l;->abZ()Lcom/android/common/h/j;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/common/ui/an;->zk(Lcom/android/common/ui/Y;)V

    .line 105
    new-instance v0, Lcom/android/common/o/o;

    invoke-direct {v0, v5, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/android/c/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v2, Lcom/android/common/appService/CameraMember;->jn:Lcom/android/common/appService/CameraMember;

    if-eq v0, v2, :cond_9c

    .line 118
    iget-object v0, p0, Lcom/android/c/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pn()Lcom/android/common/appService/y;

    move-result-object v0

    iget-object v2, p0, Lcom/android/c/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/common/appService/y;->kE(Lcom/android/common/appService/CameraMember;)Ljava/util/List;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_9c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_9c

    .line 120
    new-instance v2, Lcom/android/common/ui/i;

    invoke-virtual {p0}, Lcom/android/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/ui/i;-><init>(Landroid/content/Context;)V

    .line 121
    iget-object v3, p0, Lcom/android/c/h;->adt:Lcom/android/common/appService/W;

    const-string/jumbo v4, "pref_camera_id_key"

    const v5, 0x7f0200cf

    invoke-virtual {v2, v0, v5, v3, v4}, Lcom/android/common/ui/i;->vw(Ljava/util/List;ILcom/android/common/appService/W;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/c/h;->alw()Lcom/android/common/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/h/l;->abY()Lcom/android/common/h/m;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/common/ui/i;->vx(Lcom/android/common/ui/j;)V

    .line 123
    new-instance v0, Lcom/android/common/o/o;

    const/high16 v3, 0x7f100000

    invoke-direct {v0, v3, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_9c
    return-object v1

    .line 100
    :cond_9d
    const-string/jumbo v0, "pref_camera_flashmode_key"

    goto :goto_2a

    .line 106
    :cond_a1
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/c/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pv()I

    move-result v2

    aget-object v0, v0, v2

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v4, :cond_51

    .line 107
    const-string/jumbo v0, "pref_camera_backlight_flashmode_key"

    invoke-virtual {p0, v0}, Lcom/android/c/h;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_51

    .line 109
    new-instance v2, Lcom/android/common/ui/an;

    invoke-virtual {p0}, Lcom/android/c/h;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/ui/an;-><init>(Landroid/content/Context;)V

    .line 110
    iget-object v3, p0, Lcom/android/c/h;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v2, v0, v3}, Lcom/android/common/ui/an;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/c/h;->alw()Lcom/android/common/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/h/l;->abZ()Lcom/android/common/h/j;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/common/ui/an;->zk(Lcom/android/common/ui/Y;)V

    .line 112
    new-instance v0, Lcom/android/common/o/o;

    invoke-direct {v0, v5, v2}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_51
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    .line 79
    iget-object v1, p0, Lcom/android/c/h;->aBD:Lcom/android/c/i;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/c/h;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/c/h;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 78
    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/android/c/h;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 41
    invoke-direct {p0}, Lcom/android/c/h;->aQB()Ljava/util/ArrayList;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_25

    .line 43
    invoke-direct {p0}, Lcom/android/c/h;->aQB()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v1

    iput-object v1, p0, Lcom/android/c/h;->abD:Lcom/android/common/o/l;

    .line 44
    iget-object v1, p0, Lcom/android/c/h;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 47
    :cond_25
    invoke-static {v3, v3, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/c/h;->abE:Lcom/android/common/o/l;

    .line 48
    iget-object v1, p0, Lcom/android/c/h;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 50
    invoke-static {}, Lcom/android/c/i;->aQC()Lcom/android/c/i;

    move-result-object v1

    iput-object v1, p0, Lcom/android/c/h;->aBD:Lcom/android/c/i;

    .line 51
    iget-object v1, p0, Lcom/android/c/h;->aBD:Lcom/android/c/i;

    const v2, 0x7f1000c9

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 53
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 39
    return-void
.end method

.method public mK()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/c/h;->aBD:Lcom/android/c/i;

    if-eqz v0, :cond_9

    .line 86
    iget-object v0, p0, Lcom/android/c/h;->aBD:Lcom/android/c/i;

    invoke-virtual {v0}, Lcom/android/c/i;->aQD()V

    .line 84
    :cond_9
    return-void
.end method

.method public nw()Z
    .registers 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/common/o/a;->nw()Z

    move-result v0

    if-nez v0, :cond_11

    .line 132
    iget-object v0, p0, Lcom/android/c/h;->aBD:Lcom/android/c/i;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/c/h;->aBD:Lcom/android/c/i;

    invoke-virtual {v0}, Lcom/android/c/i;->aQE()Z

    move-result v0

    .line 131
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10

    .line 132
    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 69
    iget-boolean v0, p0, Lcom/android/c/h;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 71
    :cond_8
    iget-object v0, p0, Lcom/android/c/h;->aBD:Lcom/android/c/i;

    invoke-virtual {v0, p0}, Lcom/android/c/i;->alv(Lcom/android/common/e/h;)V

    .line 72
    iget-object v1, p0, Lcom/android/c/h;->aBD:Lcom/android/c/i;

    iget-object v0, p0, Lcom/android/c/h;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/c/i;->alv(Lcom/android/common/e/h;)V

    .line 73
    iget-object v1, p0, Lcom/android/c/h;->aBD:Lcom/android/c/i;

    iget-object v0, p0, Lcom/android/c/h;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/c/i;->alv(Lcom/android/common/e/h;)V

    .line 67
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 59
    iget-boolean v0, p0, Lcom/android/c/h;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 61
    :cond_8
    iget-object v0, p0, Lcom/android/c/h;->aBD:Lcom/android/c/i;

    invoke-virtual {v0, p0}, Lcom/android/c/i;->alu(Lcom/android/common/e/h;)V

    .line 62
    iget-object v1, p0, Lcom/android/c/h;->aBD:Lcom/android/c/i;

    iget-object v0, p0, Lcom/android/c/h;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/c/i;->alu(Lcom/android/common/e/h;)V

    .line 63
    iget-object v1, p0, Lcom/android/c/h;->aBD:Lcom/android/c/i;

    iget-object v0, p0, Lcom/android/c/h;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/c/i;->alu(Lcom/android/common/e/h;)V

    .line 57
    return-void
.end method

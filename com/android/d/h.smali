.class public Lcom/android/d/h;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field private aGe:Lcom/android/d/d;

.field private aGf:Lcom/android/d/c;

.field private aGg:Lcom/android/d/f;


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

.method private aUO()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/d/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 120
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 121
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/d/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lcom/android/common/ui/F;

    invoke-virtual {p0}, Lcom/android/d/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/F;-><init>(Landroid/content/Context;)V

    .line 125
    const-string/jumbo v2, "pref_camera_delay_shoot_key"

    invoke-virtual {p0, v2}, Lcom/android/d/h;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/d/h;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v1, v2, v3}, Lcom/android/common/ui/F;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/d/h;->alw()Lcom/android/common/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/h/l;->aca()Lcom/android/common/h/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/ui/F;->zk(Lcom/android/common/ui/Y;)V

    .line 127
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100004

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    return-object v0
.end method

.method static synthetic aUP(Lcom/android/d/h;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/d/h;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic aUQ(Lcom/android/d/h;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/d/h;->adv:Z

    return v0
.end method

.method static synthetic aUR(Lcom/android/d/h;)Lcom/android/d/f;
    .registers 2

    iget-object v0, p0, Lcom/android/d/h;->aGg:Lcom/android/d/f;

    return-object v0
.end method

.method static synthetic aUS(Lcom/android/d/h;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/d/h;->alz()V

    return-void
.end method

.method static synthetic aUT(Lcom/android/d/h;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/d/h;->aly()V

    return-void
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    iget-object v1, p0, Lcom/android/d/h;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/d/h;->aGe:Lcom/android/d/d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/d/h;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/android/d/h;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 46
    invoke-direct {p0}, Lcom/android/d/h;->aUO()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v1

    iput-object v1, p0, Lcom/android/d/h;->abD:Lcom/android/common/o/l;

    .line 47
    iget-object v1, p0, Lcom/android/d/h;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 49
    new-instance v1, Lcom/android/d/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/d/d;-><init>(I)V

    iput-object v1, p0, Lcom/android/d/h;->aGe:Lcom/android/d/d;

    .line 50
    iget-object v1, p0, Lcom/android/d/h;->aGe:Lcom/android/d/d;

    const v2, 0x7f1000c9

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 52
    new-instance v1, Lcom/android/d/j;

    invoke-direct {v1, p0}, Lcom/android/d/j;-><init>(Lcom/android/d/h;)V

    invoke-static {v1, v3, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/d/h;->abE:Lcom/android/common/o/l;

    .line 53
    iget-object v1, p0, Lcom/android/d/h;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 55
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 44
    return-void
.end method

.method public nl()Lcom/android/common/appService/V;
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/d/h;->aGf:Lcom/android/d/c;

    if-nez v0, :cond_f

    .line 66
    new-instance v0, Lcom/android/d/c;

    iget-object v1, p0, Lcom/android/d/h;->adt:Lcom/android/common/appService/W;

    iget-object v2, p0, Lcom/android/d/h;->aGg:Lcom/android/d/f;

    invoke-direct {v0, v1, v2}, Lcom/android/d/c;-><init>(Lcom/android/common/appService/W;Lcom/android/d/f;)V

    iput-object v0, p0, Lcom/android/d/h;->aGf:Lcom/android/d/c;

    .line 68
    :cond_f
    iget-object v0, p0, Lcom/android/d/h;->aGf:Lcom/android/d/c;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/common/o/a;->onCreate(Landroid/os/Bundle;)V

    .line 74
    iget-boolean v0, p0, Lcom/android/d/h;->adu:Z

    if-eqz v0, :cond_8

    .line 75
    return-void

    .line 77
    :cond_8
    new-instance v0, Lcom/android/d/f;

    iget-object v1, p0, Lcom/android/d/h;->adt:Lcom/android/common/appService/W;

    new-instance v2, Lcom/android/d/i;

    invoke-direct {v2, p0}, Lcom/android/d/i;-><init>(Lcom/android/d/h;)V

    invoke-direct {v0, v1, v2}, Lcom/android/d/f;-><init>(Lcom/android/common/appService/W;Lcom/android/d/g;)V

    iput-object v0, p0, Lcom/android/d/h;->aGg:Lcom/android/d/f;

    .line 78
    iget-object v0, p0, Lcom/android/d/h;->aGg:Lcom/android/d/f;

    invoke-virtual {v0}, Lcom/android/d/f;->start()V

    .line 72
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/d/h;->adu:Z

    if-eqz v0, :cond_8

    .line 105
    invoke-super {p0}, Lcom/android/common/o/a;->onDestroy()V

    .line 106
    return-void

    .line 109
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/d/h;->aGg:Lcom/android/d/f;

    invoke-virtual {v0}, Lcom/android/d/f;->aUI()V

    .line 110
    iget-object v0, p0, Lcom/android/d/h;->aGg:Lcom/android/d/f;

    invoke-virtual {v0}, Lcom/android/d/f;->join()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_12} :catch_16

    .line 114
    :goto_12
    invoke-super {p0}, Lcom/android/common/o/a;->onDestroy()V

    .line 103
    return-void

    .line 111
    :catch_16
    move-exception v0

    .line 112
    const-string/jumbo v1, "Photo3DMemberFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Photo3DThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/d/h;->adu:Z

    if-eqz v0, :cond_8

    .line 94
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 95
    return-void

    .line 97
    :cond_8
    iget-object v0, p0, Lcom/android/d/h;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {p0, v0}, Lcom/android/d/h;->alv(Lcom/android/common/e/h;)V

    .line 98
    iget-object v0, p0, Lcom/android/d/h;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {p0, v0}, Lcom/android/d/h;->alv(Lcom/android/common/e/h;)V

    .line 99
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 92
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 84
    iget-boolean v0, p0, Lcom/android/d/h;->adu:Z

    if-eqz v0, :cond_8

    .line 85
    return-void

    .line 87
    :cond_8
    iget-object v0, p0, Lcom/android/d/h;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {p0, v0}, Lcom/android/d/h;->alu(Lcom/android/common/e/h;)V

    .line 88
    iget-object v0, p0, Lcom/android/d/h;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {p0, v0}, Lcom/android/d/h;->alu(Lcom/android/common/e/h;)V

    .line 82
    return-void
.end method

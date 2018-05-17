.class public Lcom/android/zoomblur/c;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field private aGl:Lcom/android/zoomblur/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/zoomblur/c;->aGl:Lcom/android/zoomblur/d;

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/zoomblur/c;->aGl:Lcom/android/zoomblur/d;

    .line 30
    return-void
.end method

.method public static aUU()Lcom/android/zoomblur/c;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/zoomblur/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/zoomblur/c;-><init>(I)V

    return-object v0
.end method

.method private aUV()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/zoomblur/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 58
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 59
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/zoomblur/c;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v1, Lcom/android/common/ui/F;

    invoke-virtual {p0}, Lcom/android/zoomblur/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/F;-><init>(Landroid/content/Context;)V

    .line 63
    const-string/jumbo v2, "pref_camera_delay_shoot_key"

    invoke-virtual {p0, v2}, Lcom/android/zoomblur/c;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/zoomblur/c;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v1, v2, v3}, Lcom/android/common/ui/F;->zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/zoomblur/c;->alw()Lcom/android/common/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/h/l;->aca()Lcom/android/common/h/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/ui/F;->zk(Lcom/android/common/ui/Y;)V

    .line 65
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100004

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0}, Lcom/android/zoomblur/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/android/zoomblur/c;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v2

    .line 66
    invoke-static {v1, v2}, Lcom/android/common/h;->apb(Landroid/content/Context;I)Lcom/android/common/ui/RotateImageView;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_75

    .line 69
    new-instance v2, Lcom/android/common/o/o;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_75
    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    iget-object v1, p0, Lcom/android/zoomblur/c;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/zoomblur/c;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 77
    iget-object v1, p0, Lcom/android/zoomblur/c;->aGl:Lcom/android/zoomblur/d;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 76
    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/android/zoomblur/c;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 43
    invoke-direct {p0}, Lcom/android/zoomblur/c;->aUV()Ljava/util/ArrayList;

    move-result-object v1

    .line 42
    invoke-static {v1}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v1

    iput-object v1, p0, Lcom/android/zoomblur/c;->abD:Lcom/android/common/o/l;

    .line 44
    iget-object v1, p0, Lcom/android/zoomblur/c;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 46
    invoke-static {}, Lcom/android/zoomblur/d;->aUW()Lcom/android/zoomblur/d;

    move-result-object v1

    iput-object v1, p0, Lcom/android/zoomblur/c;->aGl:Lcom/android/zoomblur/d;

    .line 47
    iget-object v1, p0, Lcom/android/zoomblur/c;->aGl:Lcom/android/zoomblur/d;

    const v2, 0x7f1000c9

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 49
    invoke-static {v3, v3, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/zoomblur/c;->abE:Lcom/android/common/o/l;

    .line 51
    iget-object v1, p0, Lcom/android/zoomblur/c;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 52
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 39
    return-void
.end method

.method public iu()V
    .registers 3

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/common/o/a;->iu()V

    .line 91
    iget-object v0, p0, Lcom/android/zoomblur/c;->aGl:Lcom/android/zoomblur/d;

    if-eqz v0, :cond_d

    .line 92
    iget-object v0, p0, Lcom/android/zoomblur/c;->aGl:Lcom/android/zoomblur/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/zoomblur/d;->aUX(Z)V

    .line 89
    :cond_d
    return-void
.end method

.method public ix()V
    .registers 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/common/o/a;->ix()V

    .line 83
    iget-object v0, p0, Lcom/android/zoomblur/c;->aGl:Lcom/android/zoomblur/d;

    if-eqz v0, :cond_d

    .line 84
    iget-object v0, p0, Lcom/android/zoomblur/c;->aGl:Lcom/android/zoomblur/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/zoomblur/d;->aUX(Z)V

    .line 81
    :cond_d
    return-void
.end method

.class public Lcom/android/trajectory/j;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field asY:Lcom/android/trajectory/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 44
    return-void
.end method

.method public static aFx()Lcom/android/trajectory/j;
    .registers 2

    .prologue
    .line 72
    new-instance v0, Lcom/android/trajectory/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/trajectory/j;-><init>(I)V

    .line 73
    return-object v0
.end method

.method private aFy()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/trajectory/j;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 120
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 121
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/trajectory/j;->adt:Lcom/android/common/appService/W;

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
    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    .line 79
    iget-object v1, p0, Lcom/android/trajectory/j;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/trajectory/j;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/trajectory/j;->asY:Lcom/android/trajectory/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 78
    return-object v0
.end method

.method protected aiE()Ljava/util/List;
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/android/trajectory/j;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 31
    invoke-direct {p0}, Lcom/android/trajectory/j;->aFy()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/trajectory/j;->abD:Lcom/android/common/o/l;

    .line 32
    iget-object v0, p0, Lcom/android/trajectory/j;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 34
    invoke-static {}, Lcom/android/trajectory/a;->aEc()Lcom/android/trajectory/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/trajectory/j;->asY:Lcom/android/trajectory/a;

    .line 35
    iget-object v0, p0, Lcom/android/trajectory/j;->asY:Lcom/android/trajectory/a;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 37
    iget-object v0, p0, Lcom/android/trajectory/j;->asY:Lcom/android/trajectory/a;

    invoke-static {v0, v3, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/trajectory/j;->abE:Lcom/android/common/o/l;

    .line 38
    iget-object v0, p0, Lcom/android/trajectory/j;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 40
    iget-object v0, p0, Lcom/android/trajectory/j;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 41
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 28
    return-void
.end method

.method public mQ()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/trajectory/j;->asY:Lcom/android/trajectory/a;

    if-eqz v0, :cond_d

    .line 110
    iget-object v0, p0, Lcom/android/trajectory/j;->asY:Lcom/android/trajectory/a;

    invoke-virtual {v0}, Lcom/android/trajectory/a;->aEg()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 111
    return-void

    .line 114
    :cond_d
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 108
    return-void
.end method

.method public nd()Z
    .registers 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/common/o/a;->nd()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 64
    iget-boolean v0, p0, Lcom/android/trajectory/j;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 65
    :cond_8
    iget-object v1, p0, Lcom/android/trajectory/j;->asY:Lcom/android/trajectory/a;

    iget-object v0, p0, Lcom/android/trajectory/j;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/trajectory/a;->alv(Lcom/android/common/e/h;)V

    .line 66
    iget-object v1, p0, Lcom/android/trajectory/j;->asY:Lcom/android/trajectory/a;

    iget-object v0, p0, Lcom/android/trajectory/j;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/trajectory/a;->alv(Lcom/android/common/e/h;)V

    .line 67
    iget-object v0, p0, Lcom/android/trajectory/j;->asY:Lcom/android/trajectory/a;

    invoke-virtual {v0, p0}, Lcom/android/trajectory/a;->alv(Lcom/android/common/e/h;)V

    .line 62
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 55
    iget-boolean v0, p0, Lcom/android/trajectory/j;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 56
    :cond_8
    iget-object v1, p0, Lcom/android/trajectory/j;->asY:Lcom/android/trajectory/a;

    iget-object v0, p0, Lcom/android/trajectory/j;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/trajectory/a;->alu(Lcom/android/common/e/h;)V

    .line 57
    iget-object v1, p0, Lcom/android/trajectory/j;->asY:Lcom/android/trajectory/a;

    iget-object v0, p0, Lcom/android/trajectory/j;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/trajectory/a;->alu(Lcom/android/common/e/h;)V

    .line 58
    iget-object v0, p0, Lcom/android/trajectory/j;->asY:Lcom/android/trajectory/a;

    invoke-virtual {v0, p0}, Lcom/android/trajectory/a;->alu(Lcom/android/common/e/h;)V

    .line 53
    return-void
.end method

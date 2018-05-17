.class public Lcom/android/videomaker/o;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field private final aMO:I

.field private aMP:Lcom/android/videomaker/r;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/videomaker/o;->aMO:I

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/videomaker/o;->aMO:I

    .line 56
    return-void
.end method

.method private bdp(Lcom/android/videomaker/k;)Lcom/android/videomaker/j;
    .registers 6

    .prologue
    .line 100
    new-instance v0, Lcom/android/videomaker/j;

    .line 101
    invoke-virtual {p0}, Lcom/android/videomaker/o;->all()Lcom/android/common/appService/W;

    move-result-object v1

    .line 100
    invoke-direct {v0, v1, p1}, Lcom/android/videomaker/j;-><init>(Lcom/android/common/appService/W;Lcom/android/videomaker/k;)V

    .line 102
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/android/videomaker/j;->bcB(J)V

    .line 103
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/videomaker/j;->bcC(I)V

    .line 104
    return-object v0
.end method

.method private bdq()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/videomaker/o;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 135
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 136
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/videomaker/o;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    return-object v0
.end method

.method public static bdr()Lcom/android/videomaker/o;
    .registers 2

    .prologue
    .line 83
    new-instance v0, Lcom/android/videomaker/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/videomaker/o;-><init>(I)V

    .line 84
    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    iget-object v1, p0, Lcom/android/videomaker/o;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/videomaker/o;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 90
    iget-object v1, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 89
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

    .line 37
    invoke-virtual {p0}, Lcom/android/videomaker/o;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 39
    invoke-direct {p0}, Lcom/android/videomaker/o;->bdq()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/o;->abD:Lcom/android/common/o/l;

    .line 40
    iget-object v0, p0, Lcom/android/videomaker/o;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 42
    invoke-static {}, Lcom/android/videomaker/r;->bdu()Lcom/android/videomaker/r;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    .line 43
    iget-object v0, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 45
    iget-object v0, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    invoke-static {v0, v3, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/o;->abE:Lcom/android/common/o/l;

    .line 46
    iget-object v0, p0, Lcom/android/videomaker/o;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 49
    iget-object v0, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    .line 48
    invoke-direct {p0, v0}, Lcom/android/videomaker/o;->bdp(Lcom/android/videomaker/k;)Lcom/android/videomaker/j;

    move-result-object v0

    .line 50
    iget-object v2, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    invoke-virtual {v2, v0}, Lcom/android/videomaker/r;->bdv(Lcom/android/videomaker/j;)V

    .line 51
    iget-object v0, p0, Lcom/android/videomaker/o;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 53
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 36
    return-void
.end method

.method public nF(Z)V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    if-eqz v0, :cond_d

    .line 126
    iget-object v0, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    invoke-virtual {v0, p1}, Lcom/android/videomaker/r;->bdx(Z)Z

    move-result v0

    .line 125
    if-eqz v0, :cond_d

    .line 127
    return-void

    .line 129
    :cond_d
    invoke-super {p0, p1}, Lcom/android/common/o/a;->nF(Z)V

    .line 124
    return-void
.end method

.method public nG()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    if-eqz v0, :cond_d

    .line 117
    iget-object v0, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    invoke-virtual {v0}, Lcom/android/videomaker/r;->bdw()Z

    move-result v0

    .line 116
    if-eqz v0, :cond_d

    .line 118
    return-void

    .line 120
    :cond_d
    invoke-super {p0}, Lcom/android/common/o/a;->nG()V

    .line 115
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    if-eqz v0, :cond_9

    .line 110
    iget-object v0, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/videomaker/r;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 76
    iget-boolean v0, p0, Lcom/android/videomaker/o;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 77
    :cond_8
    iget-object v1, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    iget-object v0, p0, Lcom/android/videomaker/o;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/videomaker/r;->alv(Lcom/android/common/e/h;)V

    .line 78
    iget-object v1, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    iget-object v0, p0, Lcom/android/videomaker/o;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/videomaker/r;->alv(Lcom/android/common/e/h;)V

    .line 79
    iget-object v0, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    invoke-virtual {v0, p0}, Lcom/android/videomaker/r;->alv(Lcom/android/common/e/h;)V

    .line 74
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 67
    iget-boolean v0, p0, Lcom/android/videomaker/o;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 68
    :cond_8
    iget-object v1, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    iget-object v0, p0, Lcom/android/videomaker/o;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/videomaker/r;->alu(Lcom/android/common/e/h;)V

    .line 69
    iget-object v1, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    iget-object v0, p0, Lcom/android/videomaker/o;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/videomaker/r;->alu(Lcom/android/common/e/h;)V

    .line 70
    iget-object v0, p0, Lcom/android/videomaker/o;->aMP:Lcom/android/videomaker/r;

    invoke-virtual {v0, p0}, Lcom/android/videomaker/r;->alu(Lcom/android/common/e/h;)V

    .line 65
    return-void
.end method

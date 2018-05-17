.class public Lcom/android/intervalometer/d;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field aQa:Lcom/android/intervalometer/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 79
    return-void
.end method

.method private bgG()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/intervalometer/d;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 147
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 148
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/intervalometer/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    return-object v0
.end method

.method public static bgH()Lcom/android/intervalometer/d;
    .registers 2

    .prologue
    .line 88
    new-instance v0, Lcom/android/intervalometer/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/intervalometer/d;-><init>(I)V

    .line 89
    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    .line 95
    iget-object v1, p0, Lcom/android/intervalometer/d;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/intervalometer/d;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 94
    return-object v0
.end method

.method protected aiE()Ljava/util/List;
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-virtual {p0}, Lcom/android/intervalometer/d;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 32
    invoke-direct {p0}, Lcom/android/intervalometer/d;->bgG()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/intervalometer/d;->abD:Lcom/android/common/o/l;

    .line 33
    iget-object v0, p0, Lcom/android/intervalometer/d;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 35
    invoke-static {}, Lcom/android/intervalometer/a;->bga()Lcom/android/intervalometer/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    .line 36
    iget-object v0, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 38
    iget-object v0, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    invoke-static {v0, v3, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/intervalometer/d;->abE:Lcom/android/common/o/l;

    .line 39
    iget-object v0, p0, Lcom/android/intervalometer/d;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 40
    iget-object v0, p0, Lcom/android/intervalometer/d;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 42
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 29
    return-void
.end method

.method protected aio()Ljava/util/List;
    .registers 3

    .prologue
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    new-instance v0, Lcom/android/intervalometer/c;

    iget-object v1, p0, Lcom/android/intervalometer/d;->adt:Lcom/android/common/appService/W;

    invoke-direct {v0, v1}, Lcom/android/intervalometer/c;-><init>(Lcom/android/common/appService/W;)V

    .line 107
    iget-object v1, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    invoke-virtual {v0, v1}, Lcom/android/intervalometer/c;->vd(Lcom/android/common/ui/e;)V

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public alG()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    if-eqz v0, :cond_9

    .line 65
    iget-object v0, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    invoke-virtual {v0}, Lcom/android/intervalometer/a;->alG()V

    .line 63
    :cond_9
    return-void
.end method

.method public mQ()V
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    if-eqz v0, :cond_d

    .line 116
    iget-object v0, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    invoke-virtual {v0}, Lcom/android/intervalometer/a;->bgc()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 117
    return-void

    .line 121
    :cond_d
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 114
    return-void
.end method

.method public nG()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    if-eqz v0, :cond_d

    .line 127
    iget-object v0, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    invoke-virtual {v0}, Lcom/android/intervalometer/a;->bgc()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 128
    return-void

    .line 131
    :cond_d
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 125
    return-void
.end method

.method public nH(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    if-eqz v0, :cond_16

    const-string/jumbo v0, "stop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 137
    iget-object v0, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    invoke-virtual {v0}, Lcom/android/intervalometer/a;->bgc()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 138
    return-void

    .line 141
    :cond_16
    invoke-super {p0, p1}, Lcom/android/common/o/a;->nH(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 72
    iget-boolean v0, p0, Lcom/android/intervalometer/d;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 73
    :cond_8
    iget-object v1, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    iget-object v0, p0, Lcom/android/intervalometer/d;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v1, v0}, Lcom/android/intervalometer/a;->alv(Lcom/android/common/e/h;)V

    .line 74
    iget-object v1, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    iget-object v0, p0, Lcom/android/intervalometer/d;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/intervalometer/a;->alv(Lcom/android/common/e/h;)V

    .line 76
    iget-object v0, p0, Lcom/android/intervalometer/d;->abF:Lcom/android/common/n;

    iget-object v1, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    invoke-virtual {v0, v1}, Lcom/android/common/n;->aqV(Lcom/android/common/p;)V

    .line 70
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 48
    iget-boolean v0, p0, Lcom/android/intervalometer/d;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 49
    :cond_8
    iget-object v1, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    iget-object v0, p0, Lcom/android/intervalometer/d;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v1, v0}, Lcom/android/intervalometer/a;->alu(Lcom/android/common/e/h;)V

    .line 50
    iget-object v1, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    iget-object v0, p0, Lcom/android/intervalometer/d;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/intervalometer/a;->alu(Lcom/android/common/e/h;)V

    .line 52
    iget-object v0, p0, Lcom/android/intervalometer/d;->abF:Lcom/android/common/n;

    if-nez v0, :cond_3a

    .line 53
    new-instance v0, Lcom/android/common/n;

    iget-object v1, p0, Lcom/android/intervalometer/d;->adt:Lcom/android/common/appService/W;

    invoke-direct {v0, v1}, Lcom/android/common/n;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/intervalometer/d;->abF:Lcom/android/common/n;

    .line 54
    iget-object v0, p0, Lcom/android/intervalometer/d;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/intervalometer/d;->abE:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/o/e;

    if-eqz v0, :cond_3a

    .line 55
    iget-object v0, p0, Lcom/android/intervalometer/d;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    iget-object v1, p0, Lcom/android/intervalometer/d;->abF:Lcom/android/common/n;

    invoke-virtual {v0, v1}, Lcom/android/common/o/e;->akp(Lcom/android/common/n;)V

    .line 58
    :cond_3a
    iget-object v0, p0, Lcom/android/intervalometer/d;->aQa:Lcom/android/intervalometer/a;

    iget-object v1, p0, Lcom/android/intervalometer/d;->abF:Lcom/android/common/n;

    iget-object v2, p0, Lcom/android/intervalometer/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1, v2}, Lcom/android/intervalometer/a;->bgg(Lcom/android/common/n;Lcom/android/common/appService/W;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/intervalometer/d;->aiu()V

    .line 46
    return-void
.end method

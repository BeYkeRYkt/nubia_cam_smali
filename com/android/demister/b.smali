.class public Lcom/android/demister/b;
.super Lcom/android/common/o/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 29
    return-void
.end method

.method public static aBN()Lcom/android/demister/b;
    .registers 2

    .prologue
    .line 55
    new-instance v0, Lcom/android/demister/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/demister/b;-><init>(I)V

    return-object v0
.end method

.method private aBO()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/demister/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 68
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 69
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/demister/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/common/o/l;

    .line 50
    iget-object v1, p0, Lcom/android/demister/b;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/demister/b;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 49
    return-object v0
.end method

.method protected aiR()V
    .registers 5

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/demister/b;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 36
    invoke-direct {p0}, Lcom/android/demister/b;->aBO()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/demister/b;->abD:Lcom/android/common/o/l;

    .line 37
    iget-object v0, p0, Lcom/android/demister/b;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 39
    invoke-virtual {p0}, Lcom/android/demister/b;->aiE()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/demister/b;->aio()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/demister/b;->abE:Lcom/android/common/o/l;

    .line 40
    iget-object v0, p0, Lcom/android/demister/b;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 42
    iget-object v0, p0, Lcom/android/demister/b;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 44
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 34
    return-void
.end method

.method protected aio()Ljava/util/List;
    .registers 4

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v1, Lcom/android/demister/d;

    iget-object v2, p0, Lcom/android/demister/b;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/demister/d;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-object v0
.end method

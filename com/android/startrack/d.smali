.class public Lcom/android/startrack/d;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field aRj:Lcom/android/startrack/h;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 70
    return-void
.end method

.method private bhF()Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/startrack/d;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 190
    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 191
    new-instance v2, Lcom/android/common/h/k;

    iget-object v3, p0, Lcom/android/startrack/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/h/k;-><init>(Lcom/android/common/appService/H;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    new-instance v2, Lcom/android/common/o/o;

    const v3, 0x7f100001

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p0}, Lcom/android/startrack/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/android/startrack/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v2

    .line 194
    invoke-static {v1, v2}, Lcom/android/common/h;->apb(Landroid/content/Context;I)Lcom/android/common/ui/RotateImageView;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_4a

    .line 197
    new-instance v2, Lcom/android/common/o/o;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Lcom/android/common/o/o;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_4a
    return-object v0
.end method

.method public static bhG()Lcom/android/startrack/d;
    .registers 2

    .prologue
    .line 79
    new-instance v0, Lcom/android/startrack/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/startrack/d;-><init>(I)V

    .line 80
    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/o/l;

    .line 86
    iget-object v1, p0, Lcom/android/startrack/d;->abD:Lcom/android/common/o/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/startrack/d;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 85
    return-object v0
.end method

.method protected aiE()Ljava/util/List;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x9

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    sget-boolean v1, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-eqz v1, :cond_7e

    .line 118
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aej()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 119
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->adG()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 134
    :cond_28
    :goto_28
    new-instance v1, Lcom/android/common/ui/P;

    iget-object v2, p0, Lcom/android/startrack/d;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/ui/P;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lcom/android/common/ui/v;

    iget-object v2, p0, Lcom/android/startrack/d;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/ui/v;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Lcom/android/common/ui/r;

    iget-object v2, p0, Lcom/android/startrack/d;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/ui/r;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :goto_46
    return-object v0

    .line 120
    :cond_47
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->acs()I

    move-result v1

    .line 121
    const/16 v2, 0x3c

    if-le v1, v2, :cond_73

    .line 122
    new-instance v1, Lcom/android/common/ui/ao;

    iget-object v2, p0, Lcom/android/startrack/d;->adt:Lcom/android/common/appService/W;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/common/ui/ao;-><init>(Lcom/android/common/appService/W;II)V

    .line 123
    new-instance v2, Lcom/android/common/ui/ao;

    iget-object v3, p0, Lcom/android/startrack/d;->adt:Lcom/android/common/appService/W;

    invoke-direct {v2, v3, v5, v4}, Lcom/android/common/ui/ao;-><init>(Lcom/android/common/appService/W;II)V

    .line 124
    invoke-virtual {v1, v2}, Lcom/android/common/ui/ao;->Gr(Lcom/android/common/ui/ao;)V

    .line 125
    invoke-virtual {v2, v1}, Lcom/android/common/ui/ao;->Gr(Lcom/android/common/ui/ao;)V

    .line 126
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 129
    :cond_73
    new-instance v2, Lcom/android/common/ui/ao;

    iget-object v3, p0, Lcom/android/startrack/d;->adt:Lcom/android/common/appService/W;

    invoke-direct {v2, v3, v5, v4, v1}, Lcom/android/common/ui/ao;-><init>(Lcom/android/common/appService/W;III)V

    .line 130
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 138
    :cond_7e
    invoke-virtual {p0, v0}, Lcom/android/startrack/d;->ais(Ljava/util/List;)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/startrack/d;->aix(Ljava/util/List;)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/startrack/d;->air(Ljava/util/List;)V

    goto :goto_46
.end method

.method protected aiR()V
    .registers 5

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/startrack/d;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 39
    invoke-direct {p0}, Lcom/android/startrack/d;->bhF()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/o/n;->alS(Ljava/util/ArrayList;)Lcom/android/common/o/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/startrack/d;->abD:Lcom/android/common/o/l;

    .line 40
    iget-object v0, p0, Lcom/android/startrack/d;->abD:Lcom/android/common/o/l;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 42
    invoke-static {}, Lcom/android/startrack/h;->bhO()Lcom/android/startrack/h;

    move-result-object v0

    iput-object v0, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    .line 43
    iget-object v0, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 45
    iget-object v0, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    invoke-virtual {p0}, Lcom/android/startrack/d;->aiE()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/startrack/d;->aio()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/startrack/d;->abE:Lcom/android/common/o/l;

    .line 46
    iget-object v0, p0, Lcom/android/startrack/d;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 48
    iget-object v0, p0, Lcom/android/startrack/d;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 49
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 36
    return-void
.end method

.method protected aio()Ljava/util/List;
    .registers 2

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public mO()Z
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    if-eqz v0, :cond_b

    .line 182
    iget-object v0, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    invoke-virtual {v0}, Lcom/android/startrack/h;->bhR()Z

    move-result v0

    return v0

    .line 184
    :cond_b
    invoke-super {p0}, Lcom/android/common/o/a;->mO()Z

    move-result v0

    return v0
.end method

.method public mQ()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 93
    iget-object v0, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    if-eqz v0, :cond_c

    .line 94
    iget-object v0, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    invoke-virtual {v0}, Lcom/android/startrack/h;->bhP()V

    .line 91
    :cond_c
    return-void
.end method

.method public nG()V
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/common/o/a;->mQ()V

    .line 101
    iget-object v0, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    if-eqz v0, :cond_c

    .line 102
    iget-object v0, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    invoke-virtual {v0}, Lcom/android/startrack/h;->bhP()V

    .line 99
    :cond_c
    return-void
.end method

.method public nH(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    if-eqz v0, :cond_12

    .line 108
    const-string/jumbo v0, "stop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 109
    iget-object v0, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    invoke-virtual {v0}, Lcom/android/startrack/h;->bhP()V

    .line 106
    :cond_12
    return-void
.end method

.method public nc()Z
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    if-eqz v0, :cond_b

    .line 174
    iget-object v0, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    invoke-virtual {v0}, Lcom/android/startrack/h;->bhQ()Z

    move-result v0

    return v0

    .line 176
    :cond_b
    invoke-super {p0}, Lcom/android/common/o/a;->nc()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/common/o/a;->onPause()V

    .line 64
    iget-boolean v0, p0, Lcom/android/startrack/d;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 65
    :cond_8
    iget-object v1, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    iget-object v0, p0, Lcom/android/startrack/d;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/startrack/h;->alv(Lcom/android/common/e/h;)V

    .line 66
    iget-object v1, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    iget-object v0, p0, Lcom/android/startrack/d;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/startrack/h;->alv(Lcom/android/common/e/h;)V

    .line 67
    iget-object v0, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    invoke-virtual {v0, p0}, Lcom/android/startrack/h;->alv(Lcom/android/common/e/h;)V

    .line 62
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/common/o/a;->onResume()V

    .line 55
    iget-boolean v0, p0, Lcom/android/startrack/d;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 56
    :cond_8
    iget-object v1, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    iget-object v0, p0, Lcom/android/startrack/d;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/startrack/h;->alu(Lcom/android/common/e/h;)V

    .line 57
    iget-object v1, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    iget-object v0, p0, Lcom/android/startrack/d;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/e/h;

    invoke-virtual {v1, v0}, Lcom/android/startrack/h;->alu(Lcom/android/common/e/h;)V

    .line 58
    iget-object v0, p0, Lcom/android/startrack/d;->aRj:Lcom/android/startrack/h;

    invoke-virtual {v0, p0}, Lcom/android/startrack/h;->alu(Lcom/android/common/e/h;)V

    .line 53
    return-void
.end method

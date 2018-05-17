.class public Lcom/android/normal/b;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/p;
.implements Lcom/android/common/u;


# instance fields
.field baB:Lcom/android/common/ui/BigApertureSettingUI;

.field private baC:Landroid/widget/RelativeLayout;

.field private baD:Lcom/android/common/appService/t;

.field private baE:Lcom/android/common/appService/n;

.field private baF:Landroid/widget/TextView;

.field private baG:Landroid/widget/RelativeLayout;

.field private baH:Lcom/android/normal/i;

.field private baI:Lcom/android/common/e;

.field private baJ:Lcom/android/common/y;

.field private baK:Lcom/android/common/t;

.field private baL:Z

.field private baM:Lcom/android/normal/a/b;

.field private baN:Landroid/widget/RelativeLayout;

.field private baO:Landroid/widget/TextView;

.field private baP:Landroid/widget/RelativeLayout;

.field private baQ:Z

.field private baR:Landroid/hardware/Camera$Size;

.field private baS:Lcom/android/normal/d;

.field private baT:Lcom/android/common/ui/MultiFunctionImageView;

.field private baU:Landroid/widget/RelativeLayout;

.field private baV:Lcom/android/normal/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/android/normal/b;->baO:Landroid/widget/TextView;

    .line 96
    iput-object v0, p0, Lcom/android/normal/b;->baP:Landroid/widget/RelativeLayout;

    .line 97
    iput-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    .line 98
    iput-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    .line 99
    iput-object v0, p0, Lcom/android/normal/b;->baR:Landroid/hardware/Camera$Size;

    .line 100
    iput-object v0, p0, Lcom/android/normal/b;->baN:Landroid/widget/RelativeLayout;

    .line 101
    iput-object v0, p0, Lcom/android/normal/b;->baJ:Lcom/android/common/y;

    .line 102
    iput-object v0, p0, Lcom/android/normal/b;->baI:Lcom/android/common/e;

    .line 103
    iput-object v0, p0, Lcom/android/normal/b;->baB:Lcom/android/common/ui/BigApertureSettingUI;

    .line 104
    iput-object v0, p0, Lcom/android/normal/b;->baK:Lcom/android/common/t;

    .line 105
    iput-boolean v1, p0, Lcom/android/normal/b;->baL:Z

    .line 107
    iput-object v0, p0, Lcom/android/normal/b;->baG:Landroid/widget/RelativeLayout;

    .line 110
    iput-object v0, p0, Lcom/android/normal/b;->baU:Landroid/widget/RelativeLayout;

    .line 111
    iput-object v0, p0, Lcom/android/normal/b;->baC:Landroid/widget/RelativeLayout;

    .line 115
    iput-boolean v1, p0, Lcom/android/normal/b;->baQ:Z

    .line 118
    iput-object v0, p0, Lcom/android/normal/b;->baH:Lcom/android/normal/i;

    .line 119
    iput-object v0, p0, Lcom/android/normal/b;->baF:Landroid/widget/TextView;

    .line 572
    new-instance v0, Lcom/android/normal/c;

    invoke-direct {v0, p0}, Lcom/android/normal/c;-><init>(Lcom/android/normal/b;)V

    iput-object v0, p0, Lcom/android/normal/b;->baV:Lcom/android/normal/c;

    .line 910
    new-instance v0, Lcom/android/common/appService/n;

    invoke-direct {v0}, Lcom/android/common/appService/n;-><init>()V

    iput-object v0, p0, Lcom/android/normal/b;->baE:Lcom/android/common/appService/n;

    .line 121
    return-void
.end method

.method public constructor <init>(ILcom/android/normal/i;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 95
    iput-object v0, p0, Lcom/android/normal/b;->baO:Landroid/widget/TextView;

    .line 96
    iput-object v0, p0, Lcom/android/normal/b;->baP:Landroid/widget/RelativeLayout;

    .line 97
    iput-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    .line 98
    iput-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    .line 99
    iput-object v0, p0, Lcom/android/normal/b;->baR:Landroid/hardware/Camera$Size;

    .line 100
    iput-object v0, p0, Lcom/android/normal/b;->baN:Landroid/widget/RelativeLayout;

    .line 101
    iput-object v0, p0, Lcom/android/normal/b;->baJ:Lcom/android/common/y;

    .line 102
    iput-object v0, p0, Lcom/android/normal/b;->baI:Lcom/android/common/e;

    .line 103
    iput-object v0, p0, Lcom/android/normal/b;->baB:Lcom/android/common/ui/BigApertureSettingUI;

    .line 104
    iput-object v0, p0, Lcom/android/normal/b;->baK:Lcom/android/common/t;

    .line 105
    iput-boolean v1, p0, Lcom/android/normal/b;->baL:Z

    .line 107
    iput-object v0, p0, Lcom/android/normal/b;->baG:Landroid/widget/RelativeLayout;

    .line 110
    iput-object v0, p0, Lcom/android/normal/b;->baU:Landroid/widget/RelativeLayout;

    .line 111
    iput-object v0, p0, Lcom/android/normal/b;->baC:Landroid/widget/RelativeLayout;

    .line 115
    iput-boolean v1, p0, Lcom/android/normal/b;->baQ:Z

    .line 118
    iput-object v0, p0, Lcom/android/normal/b;->baH:Lcom/android/normal/i;

    .line 119
    iput-object v0, p0, Lcom/android/normal/b;->baF:Landroid/widget/TextView;

    .line 572
    new-instance v0, Lcom/android/normal/c;

    invoke-direct {v0, p0}, Lcom/android/normal/c;-><init>(Lcom/android/normal/b;)V

    iput-object v0, p0, Lcom/android/normal/b;->baV:Lcom/android/normal/c;

    .line 910
    new-instance v0, Lcom/android/common/appService/n;

    invoke-direct {v0}, Lcom/android/common/appService/n;-><init>()V

    iput-object v0, p0, Lcom/android/normal/b;->baE:Lcom/android/common/appService/n;

    .line 127
    iput-object p2, p0, Lcom/android/normal/b;->baH:Lcom/android/normal/i;

    .line 125
    return-void
.end method

.method private brA()V
    .registers 6

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rC()Lcom/android/common/i/e;

    move-result-object v0

    new-instance v1, Lcom/android/common/h/h;

    invoke-virtual {p0}, Lcom/android/normal/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 210
    iget-object v3, p0, Lcom/android/normal/b;->baO:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/normal/b;->baP:Landroid/widget/RelativeLayout;

    .line 209
    invoke-direct {v1, v2, v3, v4}, Lcom/android/common/h/h;-><init>(Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/common/i/e;->afj(Lcom/android/common/i/h;)V

    .line 211
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    new-instance v1, Lcom/android/common/h/h;

    invoke-virtual {p0}, Lcom/android/normal/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 212
    iget-object v3, p0, Lcom/android/normal/b;->baO:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/normal/b;->baP:Landroid/widget/RelativeLayout;

    .line 211
    invoke-direct {v1, v2, v3, v4}, Lcom/android/common/h/h;-><init>(Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sd(Lcom/android/common/h/h;)V

    .line 208
    return-void
.end method

.method private brB(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 323
    const v0, 0x7f100127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/normal/b;->baO:Landroid/widget/TextView;

    .line 324
    const v0, 0x7f100126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/normal/b;->baP:Landroid/widget/RelativeLayout;

    .line 322
    return-void
.end method

.method private brC(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 328
    new-instance v0, Lcom/android/common/appService/t;

    iget-object v1, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    .line 329
    invoke-virtual {p0}, Lcom/android/normal/b;->alA()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v2

    .line 330
    const-string/jumbo v3, "pref_camera_ztemt_fun_effect"

    .line 329
    invoke-virtual {v2, v3}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v2

    .line 331
    const v4, 0x7f1000de

    const v5, 0x7f1000df

    move-object v3, p1

    .line 328
    invoke-direct/range {v0 .. v5}, Lcom/android/common/appService/t;-><init>(Lcom/android/common/appService/W;Lcom/android/common/setting/ListPreference;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    .line 332
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    new-instance v1, Lcom/android/normal/m;

    invoke-direct {v1, p0}, Lcom/android/normal/m;-><init>(Lcom/android/normal/b;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->kQ(Lcom/android/common/appService/u;)V

    .line 373
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    new-instance v1, Lcom/android/normal/n;

    invoke-direct {v1, p0}, Lcom/android/normal/n;-><init>(Lcom/android/normal/b;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->lm(Lcom/android/common/appService/v;)V

    .line 407
    iget-object v0, p0, Lcom/android/normal/b;->baE:Lcom/android/common/appService/n;

    iget-object v1, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/n;->kb(Lcom/android/common/appService/t;)V

    .line 327
    return-void
.end method

.method private brD(Landroid/view/View;)V
    .registers 4

    .prologue
    const/16 v1, 0x8

    .line 228
    const v0, 0x7f10018c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/normal/b;->baU:Landroid/widget/RelativeLayout;

    .line 229
    iget-object v0, p0, Lcom/android/normal/b;->baU:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 230
    const v0, 0x7f100047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/normal/b;->baC:Landroid/widget/RelativeLayout;

    .line 231
    iget-object v0, p0, Lcom/android/normal/b;->baC:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 232
    const v0, 0x7f10018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MultiFunctionImageView;

    iput-object v0, p0, Lcom/android/normal/b;->baT:Lcom/android/common/ui/MultiFunctionImageView;

    .line 227
    return-void
.end method

.method private brE(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 268
    const v0, 0x7f10010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/normal/b;->baN:Landroid/widget/RelativeLayout;

    .line 267
    return-void
.end method

.method private brF(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 216
    new-instance v0, Lcom/android/common/t;

    invoke-virtual {p0}, Lcom/android/normal/b;->aln()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/common/t;-><init>(Landroid/view/View;Landroid/content/SharedPreferences;Lcom/android/common/u;)V

    iput-object v0, p0, Lcom/android/normal/b;->baK:Lcom/android/common/t;

    .line 218
    invoke-direct {p0, p1}, Lcom/android/normal/b;->brB(Landroid/view/View;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/android/normal/b;->brC(Landroid/view/View;)V

    .line 220
    invoke-direct {p0, p1}, Lcom/android/normal/b;->brE(Landroid/view/View;)V

    .line 221
    invoke-direct {p0, p1}, Lcom/android/normal/b;->brz(Landroid/view/View;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/android/normal/b;->brx(Landroid/view/View;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/android/normal/b;->bry(Landroid/view/View;)V

    .line 224
    invoke-direct {p0, p1}, Lcom/android/normal/b;->brD(Landroid/view/View;)V

    .line 215
    return-void
.end method

.method public static brI(Lcom/android/normal/i;)Lcom/android/normal/b;
    .registers 3

    .prologue
    .line 411
    new-instance v0, Lcom/android/normal/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/normal/b;-><init>(ILcom/android/normal/i;)V

    return-object v0
.end method

.method private brK()V
    .registers 3

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 745
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pB()V

    .line 746
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 747
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mV()V

    .line 748
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->ne()V

    .line 742
    return-void
.end method

.method private brM()V
    .registers 3

    .prologue
    .line 811
    const-string/jumbo v0, "NormalFragment"

    const-string/jumbo v1, "onLivephotoSwitchOff"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-direct {p0}, Lcom/android/normal/b;->brX()V

    .line 810
    return-void
.end method

.method private brN()V
    .registers 3

    .prologue
    .line 752
    const-string/jumbo v0, "NormalFragment"

    const-string/jumbo v1, "onLivephotoSwitchOn"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-direct {p0}, Lcom/android/normal/b;->brY()V

    .line 751
    return-void
.end method

.method private brO()V
    .registers 6

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/android/normal/b;->alA()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_ztemt_fun_effect"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v1

    .line 897
    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    .line 898
    :goto_19
    const-string/jumbo v2, "NormalFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isEffectOpen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    if-eqz v0, :cond_40

    .line 900
    const-string/jumbo v0, "none"

    invoke-virtual {v1, v0}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->lj()V

    .line 895
    :cond_40
    return-void

    .line 897
    :cond_41
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private brP()V
    .registers 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rd()Z

    move-result v0

    if-nez v0, :cond_11

    .line 801
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nf()V

    .line 797
    :cond_11
    return-void
.end method

.method private brR()V
    .registers 3

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/android/normal/b;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qv()I

    move-result v0

    .line 720
    invoke-virtual {p0}, Lcom/android/normal/b;->all()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {v1}, Lcom/android/common/h;->apu(I)I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 721
    iget-object v1, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    invoke-virtual {v1, v0}, Lcom/android/normal/a/b;->setOrientation(I)V

    .line 718
    return-void
.end method

.method private brS()V
    .registers 3

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    invoke-direct {p0}, Lcom/android/normal/b;->brr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/normal/a/b;->bqt(Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method private brV(FI)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 586
    iget-object v0, p0, Lcom/android/normal/b;->baU:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/android/normal/b;->baT:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/android/normal/b;->baT:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 589
    invoke-virtual {p0}, Lcom/android/normal/b;->alr()V

    .line 590
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    if-eqz v0, :cond_20

    .line 591
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->ln(I)V

    .line 593
    :cond_20
    new-instance v0, Lcom/android/normal/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/normal/d;-><init>(Lcom/android/normal/b;FI)V

    iput-object v0, p0, Lcom/android/normal/b;->baS:Lcom/android/normal/d;

    .line 594
    iget-object v0, p0, Lcom/android/normal/b;->baS:Lcom/android/normal/d;

    invoke-virtual {v0}, Lcom/android/normal/d;->start()V

    .line 585
    return-void
.end method

.method private brW()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 638
    iget-object v0, p0, Lcom/android/normal/b;->baS:Lcom/android/normal/d;

    if-nez v0, :cond_6

    return-void

    .line 640
    :cond_6
    iget-object v0, p0, Lcom/android/normal/b;->baS:Lcom/android/normal/d;

    invoke-virtual {v0}, Lcom/android/normal/d;->bsp()V

    .line 642
    :try_start_b
    iget-object v0, p0, Lcom/android/normal/b;->baS:Lcom/android/normal/d;

    invoke-virtual {v0}, Lcom/android/normal/d;->join()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_19

    .line 646
    :goto_10
    iget-object v0, p0, Lcom/android/normal/b;->baV:Lcom/android/normal/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/normal/c;->removeMessages(I)V

    .line 647
    iput-object v4, p0, Lcom/android/normal/b;->baS:Lcom/android/normal/d;

    .line 637
    return-void

    .line 643
    :catch_19
    move-exception v0

    .line 644
    const-string/jumbo v1, "NormalFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "InterruptedException when mProgressThread.join() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private brX()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 816
    iget-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    if-eqz v0, :cond_c

    .line 817
    iget-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    invoke-virtual {v0}, Lcom/android/normal/a/b;->bqs()V

    .line 818
    iput-object v1, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    .line 815
    :cond_c
    return-void
.end method

.method private brY()V
    .registers 7

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 757
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    .line 758
    if-nez v0, :cond_17

    .line 759
    invoke-direct {p0}, Lcom/android/normal/b;->brX()V

    .line 760
    const-string/jumbo v0, "NormalFragment"

    const-string/jumbo v1, "get proxy failed,turnOff Live"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    return-void

    .line 764
    :cond_17
    iget-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    if-nez v0, :cond_28

    .line 765
    new-instance v0, Lcom/android/normal/a/b;

    iget-object v1, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/normal/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    .line 767
    :cond_28
    new-instance v0, Lcn/nubia/videogenerator/a/b;

    invoke-direct {v0}, Lcn/nubia/videogenerator/a/b;-><init>()V

    .line 768
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/a/b;->bNm(I)V

    .line 769
    invoke-virtual {v0, v2}, Lcn/nubia/videogenerator/a/b;->bNq(I)V

    .line 770
    const v1, 0xbb80

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/a/b;->bNk(I)V

    .line 771
    const v1, 0x17700

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/a/b;->bNn(I)V

    .line 772
    invoke-virtual {v0, v2}, Lcn/nubia/videogenerator/a/b;->bNl(I)V

    .line 773
    const-string/jumbo v1, "audio/mp4a-latm"

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/a/b;->bNj(Ljava/lang/String;)V

    .line 775
    new-instance v1, Lcn/nubia/videogenerator/a/a;

    invoke-direct {v1}, Lcn/nubia/videogenerator/a/a;-><init>()V

    .line 776
    const v2, 0x989680

    invoke-virtual {v1, v2}, Lcn/nubia/videogenerator/a/a;->bMY(I)V

    .line 777
    const v2, 0x7f420888

    invoke-virtual {v1, v2}, Lcn/nubia/videogenerator/a/a;->bNg(I)V

    .line 778
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcn/nubia/videogenerator/a/a;->bMW(I)V

    .line 779
    invoke-virtual {v1, v5}, Lcn/nubia/videogenerator/a/a;->bMZ(I)V

    .line 780
    iget-object v2, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v3, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/videogenerator/a/a;->bNe(II)V

    .line 782
    const-string/jumbo v2, "NormalFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "h/w : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcn/nubia/videogenerator/a/a;->bNd()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcn/nubia/videogenerator/a/a;->bNc()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string/jumbo v2, "video/avc"

    invoke-virtual {v1, v2}, Lcn/nubia/videogenerator/a/a;->bNa(Ljava/lang/String;)V

    .line 785
    iget-object v2, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    iget-object v3, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/android/normal/a/b;->bqn(Lcom/android/common/cameradevice/j;I)V

    .line 786
    iget-object v2, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    invoke-virtual {v2, v0}, Lcom/android/normal/a/b;->bqo(Lcn/nubia/videogenerator/a/b;)V

    .line 787
    iget-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    invoke-virtual {v0, v1}, Lcom/android/normal/a/b;->bqp(Lcn/nubia/videogenerator/a/a;)V

    .line 788
    iget-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/android/normal/a/b;->bqq(I)V

    .line 789
    iget-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    invoke-virtual {v0}, Lcom/android/normal/a/b;->bqr()V

    .line 756
    return-void
.end method

.method private brZ()V
    .registers 4

    .prologue
    .line 957
    invoke-virtual {p0}, Lcom/android/normal/b;->alA()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 958
    const-string/jumbo v1, "pref_camera_ztemt_fun_effect"

    .line 957
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v1

    .line 959
    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .line 960
    :goto_19
    if-eqz v0, :cond_26

    .line 961
    const-string/jumbo v0, "none"

    invoke-virtual {v1, v0}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 962
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->lj()V

    .line 956
    :cond_26
    return-void

    .line 959
    :cond_27
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private brr()Ljava/lang/String;
    .registers 4

    .prologue
    .line 827
    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    move-result-object v0

    .line 828
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_12

    .line 830
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 833
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/.temp7846891345.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private brs()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 624
    iget-boolean v0, p0, Lcom/android/normal/b;->baQ:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/normal/b;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_10

    :cond_f
    return-void

    .line 625
    :cond_10
    invoke-direct {p0}, Lcom/android/normal/b;->brW()V

    .line 626
    iget-object v0, p0, Lcom/android/normal/b;->baU:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/android/normal/b;->baT:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/android/normal/b;->baT:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v2, v2}, Lcom/android/common/ui/MultiFunctionImageView;->Ex(IZ)V

    .line 629
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_39

    .line 630
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    if-eqz v0, :cond_39

    .line 631
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/t;->ln(I)V

    .line 634
    :cond_39
    invoke-virtual {p0}, Lcom/android/normal/b;->alq()V

    .line 623
    return-void
.end method

.method private brt(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    invoke-virtual {v0}, Lcom/android/normal/a/b;->bqi()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 512
    :cond_c
    :goto_c
    return-void

    .line 514
    :cond_d
    iget-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    new-instance v1, Lcom/android/normal/o;

    invoke-direct {v1, p0}, Lcom/android/normal/o;-><init>(Lcom/android/normal/b;)V

    invoke-virtual {v0, v1}, Lcom/android/normal/a/b;->bqj(Lcom/android/normal/a/d;)V

    .line 522
    iget-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    new-instance v1, Lcom/android/normal/p;

    invoke-direct {v1, p0}, Lcom/android/normal/p;-><init>(Lcom/android/normal/b;)V

    invoke-virtual {v0, v1}, Lcom/android/normal/a/b;->bqk(Lcom/android/normal/a/e;)V

    .line 530
    iget-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    invoke-virtual {v0, p1}, Lcom/android/normal/a/b;->bql(Ljava/lang/String;)V

    .line 531
    invoke-direct {p0}, Lcom/android/normal/b;->brS()V

    .line 532
    invoke-direct {p0}, Lcom/android/normal/b;->brR()V

    .line 533
    iget-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    invoke-virtual {v0}, Lcom/android/normal/a/b;->bqm()V

    goto :goto_c
.end method

.method private brx(Landroid/view/View;)V
    .registers 5

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 273
    const v0, 0x7f10003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/BigApertureSettingUI;

    iput-object v0, p0, Lcom/android/normal/b;->baB:Lcom/android/common/ui/BigApertureSettingUI;

    .line 274
    iget-object v0, p0, Lcom/android/normal/b;->baB:Lcom/android/common/ui/BigApertureSettingUI;

    .line 276
    const/high16 v1, 0x41000000    # 8.0f

    .line 274
    invoke-virtual {v0, v2, v2, v1}, Lcom/android/common/ui/BigApertureSettingUI;->AL(FFF)V

    .line 278
    iget-object v0, p0, Lcom/android/normal/b;->baB:Lcom/android/common/ui/BigApertureSettingUI;

    new-instance v1, Lcom/android/normal/l;

    invoke-direct {v1, p0}, Lcom/android/normal/l;-><init>(Lcom/android/normal/b;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/BigApertureSettingUI;->AM(Lcom/android/common/ui/O;)V

    .line 272
    return-void
.end method

.method private bry(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 244
    const v0, 0x7f1000e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/normal/b;->baG:Landroid/widget/RelativeLayout;

    .line 245
    const v0, 0x7f1000e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/normal/b;->baF:Landroid/widget/TextView;

    .line 246
    iget-object v0, p0, Lcom/android/normal/b;->baF:Landroid/widget/TextView;

    new-instance v1, Lcom/android/normal/k;

    invoke-direct {v1, p0}, Lcom/android/normal/k;-><init>(Lcom/android/normal/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    return-void
.end method

.method private brz(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 262
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acR()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 263
    new-instance v0, Lcom/android/common/e;

    iget-object v1, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-direct {v0, p1, v1}, Lcom/android/common/e;-><init>(Landroid/view/View;Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/normal/b;->baI:Lcom/android/common/e;

    .line 261
    :cond_17
    return-void
.end method

.method static synthetic bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic bsb(Lcom/android/normal/b;)Lcom/android/normal/i;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/b;->baH:Lcom/android/normal/i;

    return-object v0
.end method

.method static synthetic bsc(Lcom/android/normal/b;)Lcom/android/common/t;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/b;->baK:Lcom/android/common/t;

    return-object v0
.end method

.method static synthetic bsd(Lcom/android/normal/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/normal/b;->adv:Z

    return v0
.end method

.method static synthetic bse(Lcom/android/normal/b;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/b;->baN:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic bsf(Lcom/android/normal/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/normal/b;->baQ:Z

    return v0
.end method

.method static synthetic bsg(Lcom/android/normal/b;)Lcom/android/common/ui/MultiFunctionImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/b;->baT:Lcom/android/common/ui/MultiFunctionImageView;

    return-object v0
.end method

.method static synthetic bsh(Lcom/android/normal/b;)Lcom/android/normal/c;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/b;->baV:Lcom/android/normal/c;

    return-object v0
.end method

.method static synthetic bsi(Lcom/android/normal/b;)Landroid/content/SharedPreferences;
    .registers 2

    invoke-virtual {p0}, Lcom/android/normal/b;->aln()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bsj(Lcom/android/normal/b;)Lcom/android/common/camerastate/DeviceState;
    .registers 2

    invoke-virtual {p0}, Lcom/android/normal/b;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bsk(Lcom/android/normal/b;)Lcom/android/common/camerastate/FunctionState;
    .registers 2

    invoke-virtual {p0}, Lcom/android/normal/b;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bsl(Lcom/android/normal/b;)Lcom/android/common/camerastate/UIState;
    .registers 2

    invoke-virtual {p0}, Lcom/android/normal/b;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bsm(Lcom/android/normal/b;ZJJ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/normal/b;->alB(ZJJ)V

    return-void
.end method

.method static synthetic bsn(Lcom/android/normal/b;ZJJ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/normal/b;->alC(ZJJ)V

    return-void
.end method


# virtual methods
.method public aij(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V
    .registers 6

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/normal/b;->baE:Lcom/android/common/appService/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/common/appService/n;->kd(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V

    .line 914
    iget-object v0, p0, Lcom/android/normal/b;->baE:Lcom/android/common/appService/n;

    iget-object v1, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/n;->kb(Lcom/android/common/appService/t;)V

    .line 912
    return-void
.end method

.method public aik()V
    .registers 3

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    if-eqz v0, :cond_a

    .line 920
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->ll(Z)V

    .line 918
    :cond_a
    return-void
.end method

.method public aip()V
    .registers 3

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/android/normal/b;->adv:Z

    if-eqz v0, :cond_5

    .line 417
    return-void

    .line 419
    :cond_5
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    if-eqz v0, :cond_10

    .line 420
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->ln(I)V

    .line 422
    :cond_10
    iget-object v0, p0, Lcom/android/normal/b;->baK:Lcom/android/common/t;

    if-eqz v0, :cond_19

    .line 423
    iget-object v0, p0, Lcom/android/normal/b;->baK:Lcom/android/common/t;

    invoke-virtual {v0}, Lcom/android/common/t;->arx()V

    .line 415
    :cond_19
    return-void
.end method

.method public aiq()V
    .registers 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    if-eqz v0, :cond_a

    .line 430
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->ln(I)V

    .line 433
    :cond_a
    iget-object v0, p0, Lcom/android/normal/b;->baK:Lcom/android/common/t;

    if-eqz v0, :cond_13

    .line 434
    iget-object v0, p0, Lcom/android/normal/b;->baK:Lcom/android/common/t;

    invoke-virtual {v0}, Lcom/android/common/t;->show()V

    .line 428
    :cond_13
    return-void
.end method

.method protected aji(IIII)V
    .registers 7

    .prologue
    .line 463
    const-string/jumbo v0, "NormalFragment"

    const-string/jumbo v1, "onPreviewAreaUpdate "

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    if-eqz v0, :cond_16

    .line 465
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    invoke-virtual {p0}, Lcom/android/normal/b;->alD()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->kR(F)V

    .line 467
    :cond_16
    invoke-virtual {p0}, Lcom/android/normal/b;->brQ()V

    .line 462
    return-void
.end method

.method protected ajt(IZ)V
    .registers 4

    .prologue
    .line 886
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->ajt(IZ)V

    .line 887
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    if-eqz v0, :cond_c

    .line 888
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/appService/t;->lo(IZ)V

    .line 890
    :cond_c
    iget-object v0, p0, Lcom/android/normal/b;->baB:Lcom/android/common/ui/BigApertureSettingUI;

    if-eqz v0, :cond_15

    .line 891
    iget-object v0, p0, Lcom/android/normal/b;->baB:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/BigApertureSettingUI;->AW(IZ)V

    .line 885
    :cond_15
    return-void
.end method

.method public akI(ZZ)V
    .registers 5

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    if-nez v0, :cond_5

    .line 928
    return-void

    .line 930
    :cond_5
    if-nez p1, :cond_17

    invoke-virtual {p0}, Lcom/android/normal/b;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_17

    .line 931
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->ln(I)V

    .line 926
    :goto_16
    return-void

    .line 933
    :cond_17
    iget-object v1, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    if-eqz p1, :cond_20

    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {v1, v0}, Lcom/android/common/appService/t;->ll(Z)V

    goto :goto_16

    :cond_20
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method public akU(Z)V
    .registers 3

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    if-eqz v0, :cond_9

    .line 969
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/t;->ll(Z)V

    .line 967
    :cond_9
    return-void
.end method

.method public alO(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 479
    const-string/jumbo v0, "NormalFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    const v1, 0x7f0a04b7

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 481
    const-string/jumbo v0, "NormalFragment"

    const-string/jumbo v1, "invalid path"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void

    .line 484
    :cond_35
    iget-boolean v0, p0, Lcom/android/normal/b;->baL:Z

    if-nez v0, :cond_43

    .line 485
    const-string/jumbo v0, "NormalFragment"

    const-string/jumbo v1, "LivePhoto is not On when ShutterClicked"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-void

    .line 488
    :cond_43
    iget-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    invoke-virtual {v0}, Lcom/android/normal/a/b;->bqi()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 495
    :cond_4f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 497
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_9c

    .line 498
    const-string/jumbo v0, "NormalFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "del:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_81
    :goto_81
    const-string/jumbo v0, "NormalFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "del:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void

    .line 500
    :cond_9c
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1, v3, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_81

    .line 506
    :cond_ab
    iget-object v0, p0, Lcom/android/normal/b;->baM:Lcom/android/normal/a/b;

    if-eqz v0, :cond_b8

    .line 507
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/common/appService/H;->mJ(Z)V

    .line 509
    :cond_b8
    invoke-direct {p0, p1}, Lcom/android/normal/b;->brt(Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method protected alq()V
    .registers 8

    .prologue
    const-wide/16 v2, -0x1

    .line 609
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_32

    .line 610
    iget-object v0, p0, Lcom/android/normal/b;->ady:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_16
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/e/h;

    .line 611
    instance-of v1, v0, Lcom/android/common/o/e;

    if-nez v1, :cond_2a

    .line 612
    instance-of v1, v0, Lcom/android/common/o/a;

    .line 611
    if-eqz v1, :cond_16

    .line 613
    :cond_2a
    if-eqz v0, :cond_16

    .line 614
    const/4 v1, 0x0

    move-wide v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/common/e/h;->ZP(ZJJ)V

    goto :goto_16

    .line 619
    :cond_32
    invoke-super {p0}, Lcom/android/common/o/l;->alq()V

    .line 608
    :cond_35
    return-void
.end method

.method public arG()V
    .registers 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mI()V

    .line 906
    return-void
.end method

.method public brG()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 863
    iget-object v1, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    .line 864
    sget-object v2, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    .line 863
    if-eq v1, v2, :cond_1d

    .line 865
    iget-object v1, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v1, v2, :cond_31

    .line 866
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->XK()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 867
    if-eqz v0, :cond_33

    .line 870
    :cond_2b
    iget-object v0, p0, Lcom/android/normal/b;->baK:Lcom/android/common/t;

    invoke-virtual {v0}, Lcom/android/common/t;->arx()V

    .line 862
    :goto_30
    return-void

    .line 865
    :cond_31
    const/4 v0, 0x0

    goto :goto_1d

    .line 868
    :cond_33
    iget-object v0, p0, Lcom/android/normal/b;->baK:Lcom/android/common/t;

    invoke-virtual {v0}, Lcom/android/common/t;->show()V

    goto :goto_30
.end method

.method public brH()V
    .registers 3

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/normal/b;->baN:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_5

    .line 876
    return-void

    .line 878
    :cond_5
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 879
    iget-object v0, p0, Lcom/android/normal/b;->baN:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 874
    :goto_13
    return-void

    .line 881
    :cond_14
    iget-object v0, p0, Lcom/android/normal/b;->baN:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_13
.end method

.method public brJ(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 944
    const-string/jumbo v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 945
    iget-object v0, p0, Lcom/android/normal/b;->baB:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/BigApertureSettingUI;->AK(Z)V

    .line 946
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/g;->dz(I)V

    .line 943
    :goto_18
    return-void

    .line 949
    :cond_19
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/g;->dz(I)V

    .line 950
    invoke-virtual {p0}, Lcom/android/normal/b;->brw()V

    .line 952
    invoke-direct {p0}, Lcom/android/normal/b;->brZ()V

    goto :goto_18
.end method

.method public brL()V
    .registers 2

    .prologue
    .line 725
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 726
    return-void

    .line 728
    :cond_f
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rl()Z

    move-result v0

    .line 729
    if-eqz v0, :cond_1d

    .line 730
    invoke-direct {p0}, Lcom/android/normal/b;->brP()V

    .line 731
    invoke-direct {p0}, Lcom/android/normal/b;->brO()V

    .line 733
    :cond_1d
    invoke-direct {p0}, Lcom/android/normal/b;->brK()V

    .line 734
    invoke-virtual {p0}, Lcom/android/normal/b;->brH()V

    .line 735
    if-eqz v0, :cond_29

    .line 736
    invoke-direct {p0}, Lcom/android/normal/b;->brN()V

    .line 724
    :goto_28
    return-void

    .line 738
    :cond_29
    invoke-direct {p0}, Lcom/android/normal/b;->brM()V

    goto :goto_28
.end method

.method public brQ()V
    .registers 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 857
    invoke-direct {p0}, Lcom/android/normal/b;->brX()V

    .line 858
    invoke-direct {p0}, Lcom/android/normal/b;->brY()V

    .line 855
    :cond_12
    return-void
.end method

.method public brT()V
    .registers 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/normal/b;->baG:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 237
    invoke-direct {p0}, Lcom/android/normal/b;->brO()V

    .line 235
    return-void
.end method

.method public brU()V
    .registers 3

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/android/normal/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 539
    if-nez v0, :cond_7

    .line 540
    return-void

    .line 542
    :cond_7
    new-instance v1, Lcom/android/normal/q;

    invoke-direct {v1, p0}, Lcom/android/normal/q;-><init>(Lcom/android/normal/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 537
    return-void
.end method

.method public bru(Z)V
    .registers 3

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/normal/b;->baI:Lcom/android/common/e;

    if-eqz v0, :cond_9

    .line 939
    iget-object v0, p0, Lcom/android/normal/b;->baI:Lcom/android/common/e;

    invoke-virtual {v0, p1}, Lcom/android/common/e;->aok(Z)V

    .line 937
    :cond_9
    return-void
.end method

.method public brv()V
    .registers 3

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XK()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 845
    const-string/jumbo v0, "-1"

    iget-object v1, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 843
    :goto_1f
    return-void

    .line 846
    :cond_20
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rm()V

    goto :goto_1f
.end method

.method public brw()V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/normal/b;->baG:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 239
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/normal/b;->adv:Z

    if-eqz v0, :cond_9

    .line 441
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 443
    :cond_9
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->kN()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 444
    const-string/jumbo v0, "NormalFragment"

    const-string/jumbo v1, "Grid effect anim is Running, just consume the dipatch event"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x1

    return v0

    .line 447
    :cond_20
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public mY([B)Z
    .registers 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 600
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_17

    .line 601
    invoke-direct {p0}, Lcom/android/normal/b;->brs()V

    .line 603
    :cond_17
    invoke-super {p0, p1}, Lcom/android/common/o/l;->mY([B)Z

    move-result v0

    return v0
.end method

.method public nD()Z
    .registers 3

    .prologue
    .line 558
    const-string/jumbo v0, "NormalFragment"

    const-string/jumbo v1, "onShutterBottonClicked"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 561
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_28

    .line 562
    iget-object v1, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pO()I

    move-result v1

    .line 563
    invoke-direct {p0, v0, v1}, Lcom/android/normal/b;->brV(FI)V

    .line 564
    const/4 v0, 0x0

    return v0

    .line 566
    :cond_28
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/normal/b;->baL:Z

    .line 567
    invoke-super {p0}, Lcom/android/common/o/l;->nD()Z

    move-result v0

    return v0
.end method

.method public nE(II)Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 975
    iget-object v0, p0, Lcom/android/normal/b;->baB:Lcom/android/common/ui/BigApertureSettingUI;

    if-eqz v0, :cond_2a

    .line 976
    const-string/jumbo v0, "on"

    invoke-virtual {p0}, Lcom/android/normal/b;->aln()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "pref_big_aperature_key"

    const-string/jumbo v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 977
    iget-object v0, p0, Lcom/android/normal/b;->baB:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-virtual {v0, v4}, Lcom/android/common/ui/BigApertureSettingUI;->setVisibility(I)V

    .line 978
    iget-object v0, p0, Lcom/android/normal/b;->baB:Lcom/android/common/ui/BigApertureSettingUI;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ui/BigApertureSettingUI;->AN(FF)Z

    move-result v0

    return v0

    .line 981
    :cond_2a
    return v4
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/android/normal/b;->adv:Z

    if-eqz v0, :cond_9

    .line 453
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0

    .line 455
    :cond_9
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    if-eqz v0, :cond_14

    .line 456
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->onBackPressed()Z

    move-result v0

    return v0

    .line 458
    :cond_14
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onCreate(Landroid/os/Bundle;)V

    .line 147
    iget-boolean v0, p0, Lcom/android/normal/b;->adu:Z

    if-eqz v0, :cond_8

    .line 148
    return-void

    .line 145
    :cond_8
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 134
    iget-boolean v0, p0, Lcom/android/normal/b;->adu:Z

    if-eqz v0, :cond_9

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_9
    const v0, 0x7f04004d

    .line 139
    const/4 v1, 0x0

    .line 138
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 140
    invoke-direct {p0, v0}, Lcom/android/normal/b;->brF(Landroid/view/View;)V

    .line 141
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/normal/b;->baR:Landroid/hardware/Camera$Size;

    .line 474
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroy()V

    .line 472
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 192
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 193
    iget-boolean v0, p0, Lcom/android/normal/b;->adu:Z

    if-eqz v0, :cond_8

    .line 194
    return-void

    .line 197
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/normal/b;->baQ:Z

    .line 198
    invoke-direct {p0}, Lcom/android/normal/b;->brs()V

    .line 200
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rC()Lcom/android/common/i/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/i/e;->afj(Lcom/android/common/i/h;)V

    .line 201
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->kP()V

    .line 202
    invoke-direct {p0}, Lcom/android/normal/b;->brM()V

    .line 203
    iget-object v0, p0, Lcom/android/normal/b;->baB:Lcom/android/common/ui/BigApertureSettingUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/BigApertureSettingUI;->AK(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->ea()V

    .line 191
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 156
    iput-boolean v1, p0, Lcom/android/normal/b;->baQ:Z

    .line 157
    invoke-direct {p0}, Lcom/android/normal/b;->brs()V

    .line 159
    iget-boolean v0, p0, Lcom/android/normal/b;->adu:Z

    if-eqz v0, :cond_e

    .line 160
    return-void

    .line 162
    :cond_e
    invoke-direct {p0}, Lcom/android/normal/b;->brA()V

    .line 163
    iget-object v0, p0, Lcom/android/normal/b;->baD:Lcom/android/common/appService/t;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->kM(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 165
    invoke-direct {p0}, Lcom/android/normal/b;->brN()V

    .line 167
    :cond_21
    invoke-virtual {p0}, Lcom/android/normal/b;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-eq v0, v1, :cond_2c

    .line 168
    invoke-virtual {p0}, Lcom/android/normal/b;->alq()V

    .line 170
    :cond_2c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/normal/b;->akU(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/android/normal/b;->aln()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_big_aperature_key"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/normal/b;->brJ(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    new-instance v1, Lcom/android/normal/j;

    invoke-direct {v1, p0}, Lcom/android/normal/j;-><init>(Lcom/android/normal/b;)V

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/i;->dZ(Lcom/android/common/independentFocusExposure/n;)V

    .line 183
    iget-object v0, p0, Lcom/android/normal/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qX()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 184
    invoke-virtual {p0}, Lcom/android/normal/b;->brT()V

    .line 153
    :goto_5a
    return-void

    .line 186
    :cond_5b
    invoke-virtual {p0}, Lcom/android/normal/b;->brw()V

    goto :goto_5a
.end method

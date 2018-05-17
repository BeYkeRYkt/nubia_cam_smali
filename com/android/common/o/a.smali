.class public abstract Lcom/android/common/o/a;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/e/h;
.implements Lcom/android/common/appService/d;
.implements Lcom/android/common/ui/U;
.implements Lcom/android/common/setting/p;
.implements Lcom/android/common/p;


# instance fields
.field protected abD:Lcom/android/common/o/l;

.field protected abE:Lcom/android/common/o/l;

.field protected abF:Lcom/android/common/n;

.field private abG:Landroid/widget/Button;

.field private abH:Lcom/android/common/ui/E;

.field private abI:Landroid/app/AlertDialog;

.field private abJ:Landroid/widget/LinearLayout;

.field abK:Landroid/widget/RelativeLayout;

.field protected abL:Landroid/widget/TextView;

.field private abM:Landroid/view/View;

.field private abN:Ljava/lang/String;

.field protected abO:I

.field private abP:Landroid/widget/TextView;

.field private abQ:Lcom/android/common/ui/RotateLayout;

.field private abR:Z

.field private abS:Lcom/android/common/ui/FaceView;

.field private abT:Landroid/widget/FrameLayout;

.field private abU:Landroid/widget/FrameLayout;

.field abV:Landroid/widget/RelativeLayout;

.field private abW:Lcom/android/common/o/c;

.field protected abX:Landroid/widget/GridView;

.field private abY:Landroid/widget/ImageView;

.field private abZ:Landroid/view/View;

.field private acA:Landroid/widget/TextView;

.field public acB:Lcom/android/common/ui/RotateLayout;

.field public acC:Landroid/widget/TextView;

.field private acD:Landroid/widget/LinearLayout;

.field private acE:Z

.field protected acF:Lcom/android/common/f/b;

.field private acG:Lcom/android/common/appService/q;

.field private aca:Landroid/view/View;

.field private acb:Lcom/android/common/o/b;

.field private acc:Z

.field private acd:Z

.field private ace:Z

.field private acf:Lcom/android/common/appService/CameraMember;

.field protected acg:Lcom/android/common/ui/RotateLayout;

.field protected ach:Landroid/widget/RelativeLayout;

.field private aci:Landroid/widget/ListView;

.field private acj:Lcom/android/common/o/p;

.field private ack:Z

.field private acl:Z

.field private acm:Lcom/android/common/appService/CameraMember;

.field private acn:Z

.field protected aco:Landroid/widget/RelativeLayout;

.field private acp:Lcom/android/common/o/d;

.field private acq:[Ljava/lang/String;

.field protected acr:Landroid/widget/TextView;

.field private acs:Landroid/animation/AnimatorSet;

.field private act:Landroid/widget/Toast;

.field private acu:[Ljava/lang/String;

.field protected acv:Landroid/widget/RelativeLayout;

.field private acw:Landroid/animation/AnimatorSet;

.field private acx:Landroid/widget/RelativeLayout;

.field private acy:Landroid/widget/RelativeLayout;

.field private acz:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 234
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 159
    iput-boolean v0, p0, Lcom/android/common/o/a;->acE:Z

    .line 161
    iput-object v1, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    .line 162
    iput-object v1, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    .line 164
    iput-object v1, p0, Lcom/android/common/o/a;->abY:Landroid/widget/ImageView;

    .line 165
    iput-object v1, p0, Lcom/android/common/o/a;->aca:Landroid/view/View;

    .line 166
    iput-object v1, p0, Lcom/android/common/o/a;->abZ:Landroid/view/View;

    .line 167
    iput-object v1, p0, Lcom/android/common/o/a;->abS:Lcom/android/common/ui/FaceView;

    .line 168
    iput-object v1, p0, Lcom/android/common/o/a;->abP:Landroid/widget/TextView;

    .line 169
    iput-object v1, p0, Lcom/android/common/o/a;->abQ:Lcom/android/common/ui/RotateLayout;

    .line 170
    iput-object v1, p0, Lcom/android/common/o/a;->abM:Landroid/view/View;

    .line 171
    iput-object v1, p0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    .line 172
    iput-object v1, p0, Lcom/android/common/o/a;->acb:Lcom/android/common/o/b;

    .line 179
    iput-object v1, p0, Lcom/android/common/o/a;->acD:Landroid/widget/LinearLayout;

    .line 180
    iput-object v1, p0, Lcom/android/common/o/a;->abJ:Landroid/widget/LinearLayout;

    .line 182
    iput-object v1, p0, Lcom/android/common/o/a;->acv:Landroid/widget/RelativeLayout;

    .line 185
    iput-object v1, p0, Lcom/android/common/o/a;->abL:Landroid/widget/TextView;

    .line 186
    iput-object v1, p0, Lcom/android/common/o/a;->ach:Landroid/widget/RelativeLayout;

    .line 187
    iput-object v1, p0, Lcom/android/common/o/a;->aco:Landroid/widget/RelativeLayout;

    .line 188
    iput-object v1, p0, Lcom/android/common/o/a;->acr:Landroid/widget/TextView;

    .line 190
    iput-boolean v2, p0, Lcom/android/common/o/a;->ace:Z

    .line 191
    iput-boolean v2, p0, Lcom/android/common/o/a;->acd:Z

    .line 198
    iput-object v1, p0, Lcom/android/common/o/a;->abG:Landroid/widget/Button;

    .line 199
    iput-object v1, p0, Lcom/android/common/o/a;->abI:Landroid/app/AlertDialog;

    .line 200
    iput-object v1, p0, Lcom/android/common/o/a;->abH:Lcom/android/common/ui/E;

    .line 201
    iput-boolean v0, p0, Lcom/android/common/o/a;->acl:Z

    .line 202
    iput-object v1, p0, Lcom/android/common/o/a;->abN:Ljava/lang/String;

    .line 204
    iput-object v1, p0, Lcom/android/common/o/a;->acu:[Ljava/lang/String;

    .line 207
    iput-object v1, p0, Lcom/android/common/o/a;->acF:Lcom/android/common/f/b;

    .line 211
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/o/a;->abO:I

    .line 213
    iput-object v1, p0, Lcom/android/common/o/a;->abW:Lcom/android/common/o/c;

    .line 214
    iput-object v1, p0, Lcom/android/common/o/a;->acp:Lcom/android/common/o/d;

    .line 215
    iput-object v1, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    .line 216
    iput-object v1, p0, Lcom/android/common/o/a;->aci:Landroid/widget/ListView;

    .line 217
    iput-object v1, p0, Lcom/android/common/o/a;->acw:Landroid/animation/AnimatorSet;

    .line 218
    iput-object v1, p0, Lcom/android/common/o/a;->acs:Landroid/animation/AnimatorSet;

    .line 219
    iput-object v1, p0, Lcom/android/common/o/a;->acx:Landroid/widget/RelativeLayout;

    .line 220
    iput-object v1, p0, Lcom/android/common/o/a;->acy:Landroid/widget/RelativeLayout;

    .line 221
    iput-boolean v2, p0, Lcom/android/common/o/a;->acn:Z

    .line 222
    iput-boolean v2, p0, Lcom/android/common/o/a;->acc:Z

    .line 223
    iput-object v1, p0, Lcom/android/common/o/a;->acq:[Ljava/lang/String;

    .line 225
    iput-object v1, p0, Lcom/android/common/o/a;->acG:Lcom/android/common/appService/q;

    .line 1779
    iput-boolean v2, p0, Lcom/android/common/o/a;->abR:Z

    .line 1969
    iput-object v1, p0, Lcom/android/common/o/a;->act:Landroid/widget/Toast;

    .line 2519
    iput-boolean v2, p0, Lcom/android/common/o/a;->ack:Z

    .line 2520
    iput-object v1, p0, Lcom/android/common/o/a;->acm:Lcom/android/common/appService/CameraMember;

    .line 2521
    iput-object v1, p0, Lcom/android/common/o/a;->acf:Lcom/android/common/appService/CameraMember;

    .line 233
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 230
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 159
    iput-boolean v0, p0, Lcom/android/common/o/a;->acE:Z

    .line 161
    iput-object v1, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    .line 162
    iput-object v1, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    .line 164
    iput-object v1, p0, Lcom/android/common/o/a;->abY:Landroid/widget/ImageView;

    .line 165
    iput-object v1, p0, Lcom/android/common/o/a;->aca:Landroid/view/View;

    .line 166
    iput-object v1, p0, Lcom/android/common/o/a;->abZ:Landroid/view/View;

    .line 167
    iput-object v1, p0, Lcom/android/common/o/a;->abS:Lcom/android/common/ui/FaceView;

    .line 168
    iput-object v1, p0, Lcom/android/common/o/a;->abP:Landroid/widget/TextView;

    .line 169
    iput-object v1, p0, Lcom/android/common/o/a;->abQ:Lcom/android/common/ui/RotateLayout;

    .line 170
    iput-object v1, p0, Lcom/android/common/o/a;->abM:Landroid/view/View;

    .line 171
    iput-object v1, p0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    .line 172
    iput-object v1, p0, Lcom/android/common/o/a;->acb:Lcom/android/common/o/b;

    .line 179
    iput-object v1, p0, Lcom/android/common/o/a;->acD:Landroid/widget/LinearLayout;

    .line 180
    iput-object v1, p0, Lcom/android/common/o/a;->abJ:Landroid/widget/LinearLayout;

    .line 182
    iput-object v1, p0, Lcom/android/common/o/a;->acv:Landroid/widget/RelativeLayout;

    .line 185
    iput-object v1, p0, Lcom/android/common/o/a;->abL:Landroid/widget/TextView;

    .line 186
    iput-object v1, p0, Lcom/android/common/o/a;->ach:Landroid/widget/RelativeLayout;

    .line 187
    iput-object v1, p0, Lcom/android/common/o/a;->aco:Landroid/widget/RelativeLayout;

    .line 188
    iput-object v1, p0, Lcom/android/common/o/a;->acr:Landroid/widget/TextView;

    .line 190
    iput-boolean v2, p0, Lcom/android/common/o/a;->ace:Z

    .line 191
    iput-boolean v2, p0, Lcom/android/common/o/a;->acd:Z

    .line 198
    iput-object v1, p0, Lcom/android/common/o/a;->abG:Landroid/widget/Button;

    .line 199
    iput-object v1, p0, Lcom/android/common/o/a;->abI:Landroid/app/AlertDialog;

    .line 200
    iput-object v1, p0, Lcom/android/common/o/a;->abH:Lcom/android/common/ui/E;

    .line 201
    iput-boolean v0, p0, Lcom/android/common/o/a;->acl:Z

    .line 202
    iput-object v1, p0, Lcom/android/common/o/a;->abN:Ljava/lang/String;

    .line 204
    iput-object v1, p0, Lcom/android/common/o/a;->acu:[Ljava/lang/String;

    .line 207
    iput-object v1, p0, Lcom/android/common/o/a;->acF:Lcom/android/common/f/b;

    .line 211
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/o/a;->abO:I

    .line 213
    iput-object v1, p0, Lcom/android/common/o/a;->abW:Lcom/android/common/o/c;

    .line 214
    iput-object v1, p0, Lcom/android/common/o/a;->acp:Lcom/android/common/o/d;

    .line 215
    iput-object v1, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    .line 216
    iput-object v1, p0, Lcom/android/common/o/a;->aci:Landroid/widget/ListView;

    .line 217
    iput-object v1, p0, Lcom/android/common/o/a;->acw:Landroid/animation/AnimatorSet;

    .line 218
    iput-object v1, p0, Lcom/android/common/o/a;->acs:Landroid/animation/AnimatorSet;

    .line 219
    iput-object v1, p0, Lcom/android/common/o/a;->acx:Landroid/widget/RelativeLayout;

    .line 220
    iput-object v1, p0, Lcom/android/common/o/a;->acy:Landroid/widget/RelativeLayout;

    .line 221
    iput-boolean v2, p0, Lcom/android/common/o/a;->acn:Z

    .line 222
    iput-boolean v2, p0, Lcom/android/common/o/a;->acc:Z

    .line 223
    iput-object v1, p0, Lcom/android/common/o/a;->acq:[Ljava/lang/String;

    .line 225
    iput-object v1, p0, Lcom/android/common/o/a;->acG:Lcom/android/common/appService/q;

    .line 1779
    iput-boolean v2, p0, Lcom/android/common/o/a;->abR:Z

    .line 1969
    iput-object v1, p0, Lcom/android/common/o/a;->act:Landroid/widget/Toast;

    .line 2519
    iput-boolean v2, p0, Lcom/android/common/o/a;->ack:Z

    .line 2520
    iput-object v1, p0, Lcom/android/common/o/a;->acm:Lcom/android/common/appService/CameraMember;

    .line 2521
    iput-object v1, p0, Lcom/android/common/o/a;->acf:Lcom/android/common/appService/CameraMember;

    .line 229
    return-void
.end method

.method private aiB(Lcom/android/common/setting/PreferenceGroup;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    .prologue
    .line 496
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-eqz v0, :cond_5

    .line 497
    return-object p2

    .line 499
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 500
    const/4 v0, 0x0

    array-length v2, p2

    :goto_c
    if-ge v0, v2, :cond_1c

    aget-object v3, p2, v0

    .line 501
    invoke-virtual {p1, v3}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 502
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 506
    :cond_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 507
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 508
    return-object v0
.end method

.method private aiF(Lcom/android/common/appService/W;)[Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 513
    invoke-static {p1}, Lcom/android/common/h;->apv(Lcom/android/common/appService/W;)[Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-virtual {p0}, Lcom/android/common/o/a;->aln()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/common/o/a;->alE(Landroid/content/SharedPreferences;)I

    move-result v3

    .line 516
    array-length v4, v0

    .line 517
    if-eq v3, v4, :cond_19

    .line 519
    invoke-virtual {p0}, Lcom/android/common/o/a;->aln()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/o/a;->alF([Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 533
    :goto_18
    return-object v0

    .line 520
    :cond_19
    if-lez v3, :cond_5c

    .line 521
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 522
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v5

    move v0, v2

    .line 523
    :goto_25
    if-ge v0, v3, :cond_4f

    .line 524
    invoke-virtual {p0}, Lcom/android/common/o/a;->aln()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 525
    invoke-virtual {v5, v2}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v6

    if-eqz v6, :cond_4c

    .line 526
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 530
    :cond_4f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 531
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_18

    :cond_5c
    move-object v0, v1

    goto :goto_18
.end method

.method private aiG()V
    .registers 3

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/android/common/o/a;->act:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    .line 2220
    iget-object v0, p0, Lcom/android/common/o/a;->act:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2222
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/common/o/a;->ajh(Z)V

    .line 2223
    invoke-direct {p0}, Lcom/android/common/o/a;->ajz()V

    .line 2224
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pB()V

    .line 2226
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 2218
    return-void
.end method

.method private aiI()V
    .registers 3

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/common/o/a;->abY:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 775
    iget-object v0, p0, Lcom/android/common/o/a;->abY:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 773
    :cond_b
    return-void
.end method

.method private aiJ()V
    .registers 4

    .prologue
    .line 2204
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "hide more settings fragment"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    iget-object v0, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    if-eqz v0, :cond_12

    .line 2206
    iget-object v0, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    invoke-virtual {v0}, Lcom/android/common/o/p;->alZ()V

    .line 2208
    :cond_12
    invoke-virtual {p0}, Lcom/android/common/o/a;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 2209
    iget-boolean v1, p0, Lcom/android/common/o/a;->adv:Z

    if-nez v1, :cond_27

    .line 2210
    const v1, 0x7f060002

    .line 2211
    const v2, 0x7f060003

    .line 2210
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 2213
    :cond_27
    iget-object v1, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2214
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2215
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/common/o/a;->ajs(Z)V

    .line 2203
    return-void
.end method

.method private aiL()V
    .registers 2

    .prologue
    .line 1241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/o/a;->nq(Z)V

    .line 1240
    return-void
.end method

.method private aiN(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 397
    const v0, 0x7f1000cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/common/o/a;->abG:Landroid/widget/Button;

    .line 398
    iget-object v0, p0, Lcom/android/common/o/a;->abG:Landroid/widget/Button;

    new-instance v1, Lcom/android/common/o/r;

    invoke-direct {v1, p0}, Lcom/android/common/o/r;-><init>(Lcom/android/common/o/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    return-void
.end method

.method private aiO()V
    .registers 3

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/common/o/a;->abQ:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qo()Lcom/android/common/appService/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/appService/c;->ij(Lcom/android/common/appService/d;)V

    .line 816
    return-void
.end method

.method private aiP(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 653
    const v0, 0x7f1000aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/o/a;->abP:Landroid/widget/TextView;

    .line 654
    const v0, 0x7f1000a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/common/o/a;->abQ:Lcom/android/common/ui/RotateLayout;

    .line 655
    const v0, 0x7f1000a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/o/a;->abM:Landroid/view/View;

    .line 652
    return-void
.end method

.method private aiQ(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 636
    const v0, 0x7f1000c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/FaceView;

    iput-object v0, p0, Lcom/android/common/o/a;->abS:Lcom/android/common/ui/FaceView;

    .line 638
    const-string/jumbo v0, "on"

    iget-object v3, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/setting/o;->Xq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 639
    iget-object v0, p0, Lcom/android/common/o/a;->abS:Lcom/android/common/ui/FaceView;

    iget-object v3, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->ri()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/common/ui/FaceView;->GD(I)V

    .line 640
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pv()I

    move-result v3

    aget-object v0, v0, v3

    .line 641
    iget-object v3, p0, Lcom/android/common/o/a;->abS:Lcom/android/common/ui/FaceView;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_55

    move v0, v1

    :goto_42
    invoke-virtual {v3, v0}, Lcom/android/common/ui/FaceView;->GE(Z)V

    .line 642
    iget-object v0, p0, Lcom/android/common/o/a;->abS:Lcom/android/common/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/common/ui/FaceView;->GF()V

    .line 643
    iget-object v0, p0, Lcom/android/common/o/a;->abS:Lcom/android/common/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/common/ui/FaceView;->clear()V

    .line 644
    iget-object v0, p0, Lcom/android/common/o/a;->abS:Lcom/android/common/ui/FaceView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/FaceView;->setVisibility(I)V

    .line 635
    :goto_54
    return-void

    :cond_55
    move v0, v2

    .line 641
    goto :goto_42

    .line 646
    :cond_57
    iget-object v0, p0, Lcom/android/common/o/a;->abS:Lcom/android/common/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/common/ui/FaceView;->clear()V

    .line 647
    iget-object v0, p0, Lcom/android/common/o/a;->abS:Lcom/android/common/ui/FaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/FaceView;->setVisibility(I)V

    goto :goto_54
.end method

.method private aiS(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 632
    const v0, 0x7f1000cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/common/o/a;->abY:Landroid/widget/ImageView;

    .line 631
    return-void
.end method

.method private aiT(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 665
    const v0, 0x7f1001b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/o/a;->acz:Landroid/widget/RelativeLayout;

    .line 666
    const v0, 0x7f1001b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/common/o/a;->acB:Lcom/android/common/ui/RotateLayout;

    .line 667
    const v0, 0x7f1001b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/o/a;->acC:Landroid/widget/TextView;

    .line 668
    const v0, 0x7f1001b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/common/o/a;->acg:Lcom/android/common/ui/RotateLayout;

    .line 669
    const v0, 0x7f1001b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/o/a;->acA:Landroid/widget/TextView;

    .line 664
    return-void
.end method

.method private aiU()V
    .registers 15

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/android/common/o/a;->acw:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_d9

    .line 2316
    iget-object v0, p0, Lcom/android/common/o/a;->abX:Landroid/widget/GridView;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1c6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2317
    iget-object v1, p0, Lcom/android/common/o/a;->abX:Landroid/widget/GridView;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_1ce

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2318
    iget-object v2, p0, Lcom/android/common/o/a;->abX:Landroid/widget/GridView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_1d6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2319
    iget-object v3, p0, Lcom/android/common/o/a;->abL:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1de

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2320
    iget-object v4, p0, Lcom/android/common/o/a;->ach:Landroid/widget/RelativeLayout;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1e6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2321
    iget-object v5, p0, Lcom/android/common/o/a;->acy:Landroid/widget/RelativeLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_1ee

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2322
    iget-object v6, p0, Lcom/android/common/o/a;->abT:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_1f6

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 2323
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v8, 0x3e75c28f    # 0.24f

    const v9, 0x3db851ec    # 0.09f

    const v10, 0x3e99999a    # 0.3f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 2324
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 2325
    const-wide/16 v10, 0xfa

    .line 2326
    const-wide/16 v12, 0x96

    .line 2328
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2329
    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2330
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2331
    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2333
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2334
    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2335
    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2336
    invoke-virtual {v5, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2337
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2338
    invoke-virtual {v3, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2339
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2340
    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2342
    const-wide/16 v10, 0x64

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2343
    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2345
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/android/common/o/a;->acw:Landroid/animation/AnimatorSet;

    .line 2346
    iget-object v7, p0, Lcom/android/common/o/a;->acw:Landroid/animation/AnimatorSet;

    const/4 v8, 0x7

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const/4 v0, 0x4

    aput-object v5, v8, v0

    const/4 v0, 0x5

    aput-object v4, v8, v0

    const/4 v0, 0x6

    aput-object v6, v8, v0

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2347
    iget-object v0, p0, Lcom/android/common/o/a;->acw:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/common/o/z;

    invoke-direct {v1, p0}, Lcom/android/common/o/z;-><init>(Lcom/android/common/o/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2369
    :cond_d9
    iget-object v0, p0, Lcom/android/common/o/a;->acs:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1c5

    .line 2370
    iget-object v0, p0, Lcom/android/common/o/a;->abX:Landroid/widget/GridView;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1fe

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2371
    iget-object v1, p0, Lcom/android/common/o/a;->abX:Landroid/widget/GridView;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_206

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2372
    iget-object v2, p0, Lcom/android/common/o/a;->abX:Landroid/widget/GridView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_20e

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2373
    iget-object v3, p0, Lcom/android/common/o/a;->abL:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_216

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2374
    iget-object v4, p0, Lcom/android/common/o/a;->ach:Landroid/widget/RelativeLayout;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_21e

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2375
    iget-object v5, p0, Lcom/android/common/o/a;->acy:Landroid/widget/RelativeLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_226

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2376
    iget-object v6, p0, Lcom/android/common/o/a;->abT:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_22e

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 2377
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v8, 0x3e75c28f    # 0.24f

    const v9, 0x3db851ec    # 0.09f

    const v10, 0x3e99999a    # 0.3f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 2378
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 2379
    const-wide/16 v10, 0x64

    .line 2381
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2382
    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2383
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2384
    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2386
    const-wide/16 v10, 0x64

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2387
    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2388
    const-wide/16 v10, 0xfa

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2389
    invoke-virtual {v5, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2390
    const-wide/16 v10, 0x32

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2391
    invoke-virtual {v3, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2392
    const-wide/16 v10, 0x64

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2393
    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2395
    const-wide/16 v10, 0x64

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2396
    const-wide/16 v10, 0x96

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2397
    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2398
    new-instance v7, Lcom/android/common/o/A;

    invoke-direct {v7, p0}, Lcom/android/common/o/A;-><init>(Lcom/android/common/o/a;)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2417
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/android/common/o/a;->acs:Landroid/animation/AnimatorSet;

    .line 2418
    iget-object v7, p0, Lcom/android/common/o/a;->acs:Landroid/animation/AnimatorSet;

    const/4 v8, 0x7

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const/4 v0, 0x4

    aput-object v5, v8, v0

    const/4 v0, 0x5

    aput-object v4, v8, v0

    const/4 v0, 0x6

    aput-object v6, v8, v0

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2419
    iget-object v0, p0, Lcom/android/common/o/a;->acs:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/common/o/B;

    invoke-direct {v1, p0}, Lcom/android/common/o/B;-><init>(Lcom/android/common/o/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2314
    :cond_1c5
    return-void

    .line 2316
    :array_1c6
    .array-data 4
        0x3f6147ae    # 0.88f
        0x3f800000    # 1.0f
    .end array-data

    .line 2317
    :array_1ce
    .array-data 4
        0x3f6147ae    # 0.88f
        0x3f800000    # 1.0f
    .end array-data

    .line 2318
    :array_1d6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2319
    :array_1de
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2320
    :array_1e6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2321
    :array_1ee
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2322
    :array_1f6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2370
    :array_1fe
    .array-data 4
        0x3f800000    # 1.0f
        0x3f6147ae    # 0.88f
    .end array-data

    .line 2371
    :array_206
    .array-data 4
        0x3f800000    # 1.0f
        0x3f6147ae    # 0.88f
    .end array-data

    .line 2372
    :array_20e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2373
    :array_216
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2374
    :array_21e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2375
    :array_226
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2376
    :array_22e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private aiV(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 580
    const v0, 0x7f100065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/o/a;->acx:Landroid/widget/RelativeLayout;

    .line 581
    iget-object v0, p0, Lcom/android/common/o/a;->acx:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/common/o/w;

    invoke-direct {v1, p0}, Lcom/android/common/o/w;-><init>(Lcom/android/common/o/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    const v0, 0x7f100066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/o/a;->acy:Landroid/widget/RelativeLayout;

    .line 591
    new-instance v0, Lcom/android/common/o/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/common/o/d;-><init>(Lcom/android/common/o/a;Lcom/android/common/o/d;)V

    iput-object v0, p0, Lcom/android/common/o/a;->acp:Lcom/android/common/o/d;

    .line 592
    new-instance v0, Lcom/android/common/o/c;

    invoke-direct {v0, p0}, Lcom/android/common/o/c;-><init>(Lcom/android/common/o/a;)V

    iput-object v0, p0, Lcom/android/common/o/a;->abW:Lcom/android/common/o/c;

    .line 594
    const v0, 0x7f100068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/common/o/a;->abX:Landroid/widget/GridView;

    .line 595
    iget-object v0, p0, Lcom/android/common/o/a;->abX:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/common/o/a;->abW:Lcom/android/common/o/c;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 596
    iget-object v0, p0, Lcom/android/common/o/a;->abX:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/common/o/a;->acp:Lcom/android/common/o/d;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 598
    const v0, 0x7f100067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/o/a;->abL:Landroid/widget/TextView;

    .line 599
    iget-object v0, p0, Lcom/android/common/o/a;->abL:Landroid/widget/TextView;

    new-instance v1, Lcom/android/common/o/x;

    invoke-direct {v1, p0}, Lcom/android/common/o/x;-><init>(Lcom/android/common/o/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    const v0, 0x7f100069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/o/a;->ach:Landroid/widget/RelativeLayout;

    .line 608
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 609
    :cond_7c
    iget-object v0, p0, Lcom/android/common/o/a;->ach:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 611
    :cond_83
    iget-object v0, p0, Lcom/android/common/o/a;->ach:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/common/o/y;

    invoke-direct {v1, p0}, Lcom/android/common/o/y;-><init>(Lcom/android/common/o/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    return-void
.end method

.method private aiX(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 336
    const v0, 0x7f1000c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/common/o/a;->abT:Landroid/widget/FrameLayout;

    .line 337
    const v0, 0x7f1000ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/common/o/a;->abU:Landroid/widget/FrameLayout;

    .line 338
    const v0, 0x7f1000cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/o/a;->abV:Landroid/widget/RelativeLayout;

    .line 339
    const v0, 0x7f1000ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/o/a;->abK:Landroid/widget/RelativeLayout;

    .line 340
    invoke-direct {p0, p1}, Lcom/android/common/o/a;->aiV(Landroid/view/View;)V

    .line 341
    invoke-direct {p0, p1}, Lcom/android/common/o/a;->aiS(Landroid/view/View;)V

    .line 342
    invoke-direct {p0, p1}, Lcom/android/common/o/a;->aiQ(Landroid/view/View;)V

    .line 343
    invoke-direct {p0, p1}, Lcom/android/common/o/a;->aiP(Landroid/view/View;)V

    .line 344
    invoke-direct {p0, p1}, Lcom/android/common/o/a;->aiT(Landroid/view/View;)V

    .line 345
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/common/ui/h;

    iget-object v1, p0, Lcom/android/common/o/a;->abS:Lcom/android/common/ui/FaceView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/common/o/a;->adw:[Lcom/android/common/ui/h;

    .line 346
    invoke-direct {p0, p1}, Lcom/android/common/o/a;->aiN(Landroid/view/View;)V

    .line 347
    invoke-direct {p0, p1}, Lcom/android/common/o/a;->aiY(Landroid/view/View;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/common/o/a;->ajG()V

    .line 335
    return-void
.end method

.method private aiY(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/common/o/a;->acG:Lcom/android/common/appService/q;

    if-nez v0, :cond_1c

    .line 353
    new-instance v0, Lcom/android/common/appService/q;

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-direct {v0, p1, v1}, Lcom/android/common/appService/q;-><init>(Landroid/view/View;Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/o/a;->acG:Lcom/android/common/appService/q;

    .line 354
    iget-object v0, p0, Lcom/android/common/o/a;->acG:Lcom/android/common/appService/q;

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->asV()Lcom/android/common/appService/T;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/q;->kk(Lcom/android/common/appService/T;)V

    .line 357
    :cond_1c
    invoke-direct {p0}, Lcom/android/common/o/a;->ajv()V

    .line 351
    return-void
.end method

.method private aiZ(Landroid/animation/Animator;)Z
    .registers 3

    .prologue
    .line 1236
    if-eqz p1, :cond_f

    .line 1237
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    .line 1236
    :goto_c
    return v0

    .line 1237
    :cond_d
    const/4 v0, 0x1

    goto :goto_c

    .line 1236
    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private aiy()V
    .registers 2

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/common/o/a;->acw:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_16

    .line 1328
    iget-object v0, p0, Lcom/android/common/o/a;->acw:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1329
    iget-object v0, p0, Lcom/android/common/o/a;->acw:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1330
    iget-object v0, p0, Lcom/android/common/o/a;->acw:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1333
    :cond_16
    iget-object v0, p0, Lcom/android/common/o/a;->acs:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2c

    .line 1334
    iget-object v0, p0, Lcom/android/common/o/a;->acs:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1335
    iget-object v0, p0, Lcom/android/common/o/a;->acw:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1336
    iget-object v0, p0, Lcom/android/common/o/a;->acs:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1326
    :cond_2c
    return-void
.end method

.method private ajB(I)V
    .registers 3

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    if-eqz v0, :cond_11

    .line 1436
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/o/n;

    .line 1435
    if-eqz v0, :cond_11

    .line 1437
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/n;

    invoke-virtual {v0, p1}, Lcom/android/common/o/n;->alT(I)V

    .line 1434
    :cond_11
    return-void
.end method

.method private ajF()V
    .registers 5

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/android/common/o/a;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rj()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 828
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_19

    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v2

    sget-object v3, Lcom/android/common/camerastate/UIState;->afn:Lcom/android/common/camerastate/UIState;

    if-ne v2, v3, :cond_21

    .line 829
    :cond_19
    iget-object v0, p0, Lcom/android/common/o/a;->abQ:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 826
    :goto_20
    return-void

    .line 831
    :cond_21
    iget-object v2, p0, Lcom/android/common/o/a;->abQ:Lcom/android/common/ui/RotateLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 832
    iget-object v2, p0, Lcom/android/common/o/a;->abP:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method

.method static synthetic ajH(Lcom/android/common/o/a;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/a;->abG:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic ajI(Lcom/android/common/o/a;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/a;->abT:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic ajJ(Lcom/android/common/o/a;)Lcom/android/common/o/c;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/a;->abW:Lcom/android/common/o/c;

    return-object v0
.end method

.method static synthetic ajK(Lcom/android/common/o/a;)Lcom/android/common/o/p;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    return-object v0
.end method

.method static synthetic ajL(Lcom/android/common/o/a;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/a;->acq:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajM(Lcom/android/common/o/a;)Landroid/animation/AnimatorSet;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/a;->acs:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic ajN(Lcom/android/common/o/a;)Landroid/widget/Toast;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/a;->act:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic ajO(Lcom/android/common/o/a;)Landroid/animation/AnimatorSet;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/a;->acw:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic ajP(Lcom/android/common/o/a;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/a;->acx:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic ajQ(Lcom/android/common/o/a;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/a;->acz:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic ajR(Lcom/android/common/o/a;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/a;->acA:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic ajS(Lcom/android/common/o/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/o/a;->acl:Z

    return p1
.end method

.method static synthetic ajT(Lcom/android/common/o/a;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/common/o/a;->acq:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic ajU(Lcom/android/common/o/a;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2

    iput-object p1, p0, Lcom/android/common/o/a;->act:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic ajV(Lcom/android/common/o/a;Landroid/animation/Animator;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/o/a;->aiZ(Landroid/animation/Animator;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajW(Lcom/android/common/o/a;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/common/o/a;->ajb()Z

    move-result v0

    return v0
.end method

.method static synthetic ajX(Lcom/android/common/o/a;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/common/o/a;->ajc()Z

    move-result v0

    return v0
.end method

.method static synthetic ajY(Lcom/android/common/o/a;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/o/a;->aje(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajZ(Lcom/android/common/o/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/o/a;->aiG()V

    return-void
.end method

.method private aja()Z
    .registers 2

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_11

    .line 1766
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->isVisible()Z

    move-result v0

    .line 1765
    if-eqz v0, :cond_11

    .line 1767
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/o/e;

    .line 1765
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private ajb()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2593
    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private ajc()Z
    .registers 5

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_20

    .line 939
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_20

    .line 940
    iget-object v0, p0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    if-eqz v0, :cond_20

    .line 941
    iget-object v0, p0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    invoke-virtual {v0}, Lcom/android/common/n;->aqW()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    .line 942
    const/4 v0, 0x1

    return v0

    .line 944
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private ajd()Z
    .registers 3

    .prologue
    .line 2176
    const/4 v0, 0x0

    .line 2177
    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 2178
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    .line 2180
    :cond_17
    return v0
.end method

.method private aje(Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2066
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    .line 2067
    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    .line 2068
    iget-object v2, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v2

    .line 2069
    const-string/jumbo v3, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 2070
    sget-object v3, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-eq v0, v3, :cond_2e

    .line 2071
    sget-object v3, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    if-ne v0, v3, :cond_69

    .line 2073
    :cond_2e
    const-string/jumbo v0, "off"

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Xu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 2074
    const-string/jumbo v0, "-1"

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 2075
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rl()Z

    move-result v0

    .line 2073
    if-nez v0, :cond_89

    .line 2076
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XK()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 2080
    return v4

    .line 2072
    :cond_69
    sget-object v3, Lcom/android/common/appService/CameraMember;->jt:Lcom/android/common/appService/CameraMember;

    if-eq v0, v3, :cond_2e

    .line 2081
    :cond_6d
    const-string/jumbo v3, "pref_camera_grid_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 2082
    sget-object v3, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-eq v0, v3, :cond_88

    .line 2083
    sget-object v3, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    if-ne v0, v3, :cond_9a

    .line 2084
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v3

    if-eq v1, v3, :cond_9a

    .line 2100
    :cond_88
    return v4

    .line 2077
    :cond_89
    invoke-virtual {p0, p1}, Lcom/android/common/o/a;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    const v2, 0x7f0a0158

    invoke-virtual {v1, v2}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/IconListPreference;->Vv(Ljava/lang/String;)V

    .line 2078
    return v5

    .line 2085
    :cond_9a
    sget-object v1, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_88

    .line 2086
    sget-object v1, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_88

    .line 2087
    sget-object v1, Lcom/android/common/appService/CameraMember;->jq:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_88

    .line 2088
    sget-object v1, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_88

    .line 2089
    sget-object v1, Lcom/android/common/appService/CameraMember;->ju:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_88

    .line 2090
    sget-object v1, Lcom/android/common/appService/CameraMember;->jK:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_88

    .line 2091
    sget-object v1, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_88

    .line 2092
    sget-object v1, Lcom/android/common/appService/CameraMember;->jm:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_88

    .line 2093
    sget-object v1, Lcom/android/common/appService/CameraMember;->jF:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_88

    .line 2094
    sget-object v1, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_88

    .line 2095
    sget-object v1, Lcom/android/common/appService/CameraMember;->jk:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_88

    .line 2096
    sget-object v1, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_88

    .line 2097
    sget-object v1, Lcom/android/common/appService/CameraMember;->jt:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_88

    .line 2098
    sget-object v1, Lcom/android/common/appService/CameraMember;->jh:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_88

    .line 2099
    sget-object v1, Lcom/android/common/appService/CameraMember;->jf:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_88

    .line 2102
    :cond_d6
    const-string/jumbo v1, "pref_camera_facedetection_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 2103
    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_e7

    .line 2104
    sget-object v1, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_e8

    .line 2108
    :cond_e7
    return v4

    .line 2105
    :cond_e8
    sget-object v1, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_e7

    .line 2106
    sget-object v1, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_e7

    .line 2107
    sget-object v1, Lcom/android/common/appService/CameraMember;->jf:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_e7

    .line 2109
    :cond_f4
    const-string/jumbo v1, "pref_camera_shutter_sound_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 2110
    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->rl()Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 2112
    :cond_105
    const-string/jumbo v1, "pref_camera_gradienter_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 2113
    sget-object v1, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_11c

    .line 2114
    sget-object v1, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_11c

    .line 2115
    sget-object v1, Lcom/android/common/appService/CameraMember;->jq:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_11c

    .line 2116
    return v4

    .line 2111
    :cond_11b
    return v4

    .line 2117
    :cond_11c
    const-string/jumbo v1, "pref_camera_picture_ratio_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14a

    .line 2118
    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v3

    if-eq v1, v3, :cond_14a

    .line 2119
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-eq v2, v1, :cond_14a

    .line 2120
    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_141

    .line 2121
    sget-object v1, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_142

    .line 2124
    :cond_141
    return v4

    .line 2122
    :cond_142
    sget-object v1, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_141

    .line 2123
    sget-object v1, Lcom/android/common/appService/CameraMember;->jt:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_141

    .line 2125
    :cond_14a
    const-string/jumbo v1, "pref_camera_interval_switch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_161

    .line 2126
    sget-object v1, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_15b

    .line 2127
    sget-object v1, Lcom/android/common/appService/CameraMember;->jF:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_186

    .line 2132
    :cond_15b
    :goto_15b
    invoke-direct {p0}, Lcom/android/common/o/a;->ajd()Z

    move-result v1

    if-eqz v1, :cond_1a9

    .line 2134
    :cond_161
    const-string/jumbo v1, "pref_capture_focus_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1be

    .line 2135
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-eq v2, v1, :cond_1be

    .line 2136
    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_176

    .line 2137
    sget-object v1, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_1aa

    .line 2143
    :cond_176
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "maf_key"

    invoke-virtual {v0, v1, v6}, Lcom/android/common/setting/e;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2144
    if-eq v0, v6, :cond_1c8

    .line 2145
    return v5

    .line 2128
    :cond_186
    sget-object v1, Lcom/android/common/appService/CameraMember;->jm:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_192

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qK()Z

    move-result v1

    if-eqz v1, :cond_15b

    .line 2129
    :cond_192
    sget-object v1, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_15b

    .line 2130
    sget-object v1, Lcom/android/common/appService/CameraMember;->jk:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_161

    .line 2131
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aeb()Z

    move-result v1

    .line 2125
    if-eqz v1, :cond_161

    goto :goto_15b

    .line 2133
    :cond_1a9
    return v4

    .line 2138
    :cond_1aa
    sget-object v1, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_176

    .line 2139
    sget-object v1, Lcom/android/common/appService/CameraMember;->jk:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_176

    .line 2140
    sget-object v1, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_176

    .line 2141
    sget-object v1, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_176

    .line 2142
    sget-object v1, Lcom/android/common/appService/CameraMember;->jt:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_176

    .line 2148
    :cond_1be
    const-string/jumbo v1, "pref_camera_recordlocation_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c9

    .line 2149
    return v4

    .line 2147
    :cond_1c8
    return v4

    .line 2150
    :cond_1c9
    const-string/jumbo v1, "pref_camera_front_smile_shoot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ef

    .line 2151
    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v2

    if-ne v1, v2, :cond_1ef

    .line 2152
    sget-object v1, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_1ea

    .line 2153
    sget-object v1, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_1eb

    .line 2155
    :cond_1ea
    return v4

    .line 2154
    :cond_1eb
    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_1ea

    .line 2156
    :cond_1ef
    const-string/jumbo v1, "pref_third_arith_hdr_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20d

    .line 2157
    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_20d

    .line 2158
    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v2

    if-ne v1, v2, :cond_20d

    .line 2159
    return v4

    .line 2160
    :cond_20d
    const-string/jumbo v1, "pref_video_sensor_hdr_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_238

    .line 2161
    sget-object v1, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_238

    .line 2162
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 2163
    const-string/jumbo v1, "pref_video_quality_key"

    .line 2164
    const v2, 0x7f0a0141

    invoke-virtual {p0, v2}, Lcom/android/common/o/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2162
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2166
    const-string/jumbo v1, "5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_242

    .line 2167
    return v4

    .line 2169
    :cond_238
    const-string/jumbo v0, "pref_camera_recordlocation_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_242

    .line 2170
    return v4

    .line 2172
    :cond_242
    return v5
.end method

.method private ajf()V
    .registers 3

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    if-nez v0, :cond_9

    :cond_8
    return-void

    .line 1096
    :cond_9
    const-string/jumbo v0, "off"

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Xu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1097
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_iso_key"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vt(I)V

    .line 1098
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_exposure_key"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 1099
    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->VA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 1101
    :cond_41
    invoke-virtual {p0}, Lcom/android/common/o/a;->ajq()V

    .line 1094
    return-void
.end method

.method private ajg(Z)V
    .registers 5

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1442
    if-eqz p1, :cond_21

    .line 1443
    iget-object v0, p0, Lcom/android/common/o/a;->abT:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1444
    iget-object v0, p0, Lcom/android/common/o/a;->abV:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1445
    iget-object v0, p0, Lcom/android/common/o/a;->abK:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1446
    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ActivityBase;->ati(IZ)V

    .line 1447
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiM()V

    .line 1441
    :goto_20
    return-void

    .line 1449
    :cond_21
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiA()V

    .line 1450
    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-eq v0, v1, :cond_31

    .line 1451
    iget-object v0, p0, Lcom/android/common/o/a;->abT:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1453
    :cond_31
    iget-object v0, p0, Lcom/android/common/o/a;->abV:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1454
    iget-object v0, p0, Lcom/android/common/o/a;->abK:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1455
    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0, v2, v2}, Lcom/android/common/ActivityBase;->ati(IZ)V

    goto :goto_20
.end method

.method private ajj(I)Landroid/graphics/drawable/BitmapDrawable;
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 780
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 781
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 782
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 783
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 784
    invoke-virtual {p0}, Lcom/android/common/o/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 785
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 786
    return-object v2
.end method

.method private ajk()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/android/common/o/a;->acF:Lcom/android/common/f/b;

    if-eqz v0, :cond_c

    .line 330
    iget-object v0, p0, Lcom/android/common/o/a;->acF:Lcom/android/common/f/b;

    invoke-virtual {v0}, Lcom/android/common/f/b;->release()V

    .line 331
    iput-object v1, p0, Lcom/android/common/o/a;->acF:Lcom/android/common/f/b;

    .line 328
    :cond_c
    return-void
.end method

.method private ajl()V
    .registers 3

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qo()Lcom/android/common/appService/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/c;->ij(Lcom/android/common/appService/d;)V

    .line 823
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qo()Lcom/android/common/appService/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/c;->ib(Z)V

    .line 821
    return-void
.end method

.method private ajo()V
    .registers 2

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_d

    .line 2599
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->co()V

    .line 2597
    :cond_d
    return-void
.end method

.method private ajp()V
    .registers 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    if-nez v0, :cond_9

    :cond_8
    return-void

    .line 1089
    :cond_9
    invoke-virtual {p0}, Lcom/android/common/o/a;->ajq()V

    .line 1090
    invoke-virtual {p0}, Lcom/android/common/o/a;->mR()V

    .line 1091
    invoke-virtual {p0}, Lcom/android/common/o/a;->np()V

    .line 1087
    return-void
.end method

.method private ajr()V
    .registers 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/common/o/a;->acG:Lcom/android/common/appService/q;

    if-nez v0, :cond_5

    .line 367
    return-void

    .line 369
    :cond_5
    invoke-virtual {p0}, Lcom/android/common/o/a;->aln()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_zoom_function_key"

    .line 370
    const-string/jumbo v2, "off"

    .line 369
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 373
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    .line 372
    invoke-static {v0, v1}, Lcom/android/common/appService/CameraMember;->mg(Lcom/android/common/appService/CameraMember;I)Z

    move-result v0

    .line 371
    if-eqz v0, :cond_35

    .line 374
    iget-object v0, p0, Lcom/android/common/o/a;->acG:Lcom/android/common/appService/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/q;->kl(Z)V

    .line 365
    :goto_34
    return-void

    .line 376
    :cond_35
    iget-object v0, p0, Lcom/android/common/o/a;->acG:Lcom/android/common/appService/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/q;->kl(Z)V

    goto :goto_34
.end method

.method private ajs(Z)V
    .registers 3

    .prologue
    .line 2604
    iput-boolean p1, p0, Lcom/android/common/o/a;->acc:Z

    .line 2605
    iget-object v0, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    invoke-virtual {v0, p1}, Lcom/android/common/o/p;->ama(Z)V

    .line 2603
    return-void
.end method

.method private aju()V
    .registers 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/common/o/a;->acG:Lcom/android/common/appService/q;

    if-nez v0, :cond_9

    .line 382
    :cond_8
    return-void

    .line 383
    :cond_9
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jy:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_1a

    .line 384
    iget-object v0, p0, Lcom/android/common/o/a;->acG:Lcom/android/common/appService/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/q;->km(Z)V

    .line 380
    :goto_19
    return-void

    .line 386
    :cond_1a
    iget-object v0, p0, Lcom/android/common/o/a;->acG:Lcom/android/common/appService/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/q;->km(Z)V

    goto :goto_19
.end method

.method private ajv()V
    .registers 1

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/android/common/o/a;->ajr()V

    .line 362
    invoke-direct {p0}, Lcom/android/common/o/a;->aju()V

    .line 360
    return-void
.end method

.method private ajw()V
    .registers 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 660
    return-void

    .line 661
    :cond_11
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/g;->dz(I)V

    .line 658
    return-void
.end method

.method private ajx()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 437
    iget-object v0, p0, Lcom/android/common/o/a;->abH:Lcom/android/common/ui/E;

    if-eqz v0, :cond_c

    .line 438
    iget-object v0, p0, Lcom/android/common/o/a;->abH:Lcom/android/common/ui/E;

    invoke-virtual {v0}, Lcom/android/common/ui/E;->show()V

    .line 439
    return-void

    .line 441
    :cond_c
    iget-boolean v0, p0, Lcom/android/common/o/a;->adv:Z

    if-eqz v0, :cond_11

    return-void

    .line 442
    :cond_11
    new-instance v0, Lcom/android/common/ui/E;

    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 443
    const v2, 0x7f040069

    .line 442
    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/ui/E;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/common/o/a;->abH:Lcom/android/common/ui/E;

    .line 444
    iget-object v0, p0, Lcom/android/common/o/a;->abH:Lcom/android/common/ui/E;

    invoke-virtual {v0}, Lcom/android/common/ui/E;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 446
    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 447
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 448
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 449
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 450
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 451
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 452
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 453
    iget-object v0, p0, Lcom/android/common/o/a;->abH:Lcom/android/common/ui/E;

    new-instance v1, Lcom/android/common/o/u;

    invoke-direct {v1, p0}, Lcom/android/common/o/u;-><init>(Lcom/android/common/o/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/E;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 462
    iget-object v0, p0, Lcom/android/common/o/a;->abH:Lcom/android/common/ui/E;

    new-instance v1, Lcom/android/common/o/v;

    invoke-direct {v1, p0}, Lcom/android/common/o/v;-><init>(Lcom/android/common/o/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/E;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 473
    iget-object v0, p0, Lcom/android/common/o/a;->abH:Lcom/android/common/ui/E;

    invoke-virtual {v0}, Lcom/android/common/ui/E;->show()V

    .line 436
    return-void
.end method

.method private ajy()V
    .registers 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/common/o/a;->abI:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 409
    iget-object v0, p0, Lcom/android/common/o/a;->abI:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 410
    return-void

    .line 412
    :cond_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0430

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 413
    new-instance v1, Lcom/android/common/o/s;

    invoke-direct {v1, p0}, Lcom/android/common/o/s;-><init>(Lcom/android/common/o/a;)V

    const v2, 0x7f0a0277

    .line 412
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 427
    new-instance v1, Lcom/android/common/o/t;

    invoke-direct {v1, p0}, Lcom/android/common/o/t;-><init>(Lcom/android/common/o/a;)V

    const v2, 0x7f0a0236

    .line 412
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/o/a;->abI:Landroid/app/AlertDialog;

    .line 407
    return-void
.end method

.method private ajz()V
    .registers 5

    .prologue
    const v3, 0x7f060005

    const v2, 0x7f060004

    .line 2184
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "add more settings fragment"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    invoke-virtual {p0}, Lcom/android/common/o/a;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "more_settings"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/common/o/p;

    iput-object v0, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    .line 2186
    iget-object v0, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    if-nez v0, :cond_46

    .line 2187
    invoke-static {}, Lcom/android/common/o/p;->alY()Lcom/android/common/o/p;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    .line 2188
    invoke-virtual {p0}, Lcom/android/common/o/a;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 2189
    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 2191
    iget-object v1, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    const-string/jumbo v2, "more_settings"

    const v3, 0x7f100052

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2192
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2200
    :goto_41
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/common/o/a;->ajs(Z)V

    .line 2183
    return-void

    .line 2194
    :cond_46
    invoke-virtual {p0}, Lcom/android/common/o/a;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 2195
    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 2197
    iget-object v1, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2198
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_41
.end method

.method static synthetic aka(Lcom/android/common/o/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/o/a;->aiL()V

    return-void
.end method

.method static synthetic akb(Lcom/android/common/o/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/o/a;->ajp()V

    return-void
.end method

.method static synthetic akc(Lcom/android/common/o/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/o/a;->ajx()V

    return-void
.end method

.method static synthetic akd(Lcom/android/common/o/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/o/a;->ajy()V

    return-void
.end method


# virtual methods
.method public Db(ZZ)V
    .registers 9

    .prologue
    const-wide/16 v2, -0x1

    .line 1421
    const-string/jumbo v0, "1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "abstract familay onHighSetPopupShow show = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    invoke-direct {p0, p1}, Lcom/android/common/o/a;->ajg(Z)V

    .line 1423
    if-eqz p2, :cond_2e

    .line 1424
    if-eqz p1, :cond_2a

    const v0, 0x7f05001a

    .line 1425
    :goto_26
    invoke-direct {p0, v0}, Lcom/android/common/o/a;->ajB(I)V

    .line 1420
    :cond_29
    :goto_29
    return-void

    .line 1424
    :cond_2a
    const v0, 0x7f050019

    goto :goto_26

    .line 1427
    :cond_2e
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    if-eqz v0, :cond_29

    .line 1428
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/o/n;

    .line 1427
    if-eqz v0, :cond_29

    .line 1429
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/n;

    const/4 v1, 0x0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/o/n;->ZP(ZJJ)V

    goto :goto_29
.end method

.method public Yt([Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 1677
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_41

    .line 1678
    aget-object v1, p1, v0

    .line 1679
    if-nez v1, :cond_a

    .line 1677
    :cond_7
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1682
    :cond_a
    const-string/jumbo v2, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1683
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiH()V

    .line 1684
    invoke-direct {p0}, Lcom/android/common/o/a;->ajo()V

    goto :goto_7

    .line 1685
    :cond_1a
    const-string/jumbo v2, "night_key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1686
    invoke-direct {p0}, Lcom/android/common/o/a;->ajf()V

    goto :goto_7

    .line 1687
    :cond_27
    const-string/jumbo v2, "pref_slow_shutter_key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1688
    invoke-virtual {p0}, Lcom/android/common/o/a;->ajC()V

    goto :goto_7

    .line 1689
    :cond_34
    const-string/jumbo v2, "ztemt_effect_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1690
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiC()V

    goto :goto_7

    .line 1676
    :cond_41
    return-void
.end method

.method public ZP(ZJJ)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 686
    invoke-virtual {p0}, Lcom/android/common/o/a;->isAdded()Z

    move-result v0

    if-nez v0, :cond_8

    .line 687
    return-void

    .line 689
    :cond_8
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->ju:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_1f

    .line 690
    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-eq v0, v1, :cond_1f

    .line 691
    iget-object v0, p0, Lcom/android/common/o/a;->abV:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 693
    :cond_1f
    invoke-virtual {p0}, Lcom/android/common/o/a;->ajG()V

    .line 694
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiA()V

    .line 695
    iget-object v0, p0, Lcom/android/common/o/a;->abK:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 685
    return-void
.end method

.method public ZQ(ZJJ)V
    .registers 10

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 700
    invoke-virtual {p0}, Lcom/android/common/o/a;->isAdded()Z

    move-result v1

    if-nez v1, :cond_a

    .line 701
    return-void

    .line 705
    :cond_a
    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    if-eq v1, v2, :cond_1e

    .line 706
    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    if-ne v1, v2, :cond_27

    .line 707
    :cond_1e
    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/UIState;->afm:Lcom/android/common/camerastate/UIState;

    if-eq v1, v2, :cond_27

    const/4 v0, 0x1

    .line 709
    :cond_27
    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->ju:Lcom/android/common/appService/CameraMember;

    if-eq v1, v2, :cond_33

    .line 710
    if-eqz v0, :cond_3f

    .line 713
    :cond_33
    :goto_33
    invoke-direct {p0}, Lcom/android/common/o/a;->aiI()V

    .line 714
    iget-object v0, p0, Lcom/android/common/o/a;->abK:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 715
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiM()V

    .line 699
    return-void

    .line 711
    :cond_3f
    iget-object v0, p0, Lcom/android/common/o/a;->abV:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_33
.end method

.method public ZR()V
    .registers 2

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/android/common/o/a;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 721
    return-void

    .line 724
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/o/a;->acE:Z

    .line 719
    return-void
.end method

.method public ZS()V
    .registers 2

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/common/o/a;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 731
    return-void

    .line 734
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/o/a;->acE:Z

    .line 729
    return-void
.end method

.method public aiA()V
    .registers 3

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    .line 791
    const-string/jumbo v1, "pref_camera_gradienter_key"

    invoke-direct {p0, v1}, Lcom/android/common/o/a;->aje(Ljava/lang/String;)Z

    move-result v1

    .line 790
    invoke-virtual {v0, v1}, Lcom/android/common/o/e;->akn(Z)V

    .line 789
    return-void
.end method

.method protected aiC()V
    .registers 3

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rl()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1697
    invoke-virtual {p0}, Lcom/android/common/o/a;->alA()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_live_photo_key"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 1698
    invoke-virtual {p0}, Lcom/android/common/o/a;->nC()V

    .line 1699
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aec()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1700
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mW()V

    .line 1695
    :cond_33
    return-void
.end method

.method protected abstract aiD()[Lcom/android/common/o/l;
.end method

.method protected aiE()Ljava/util/List;
    .registers 4

    .prologue
    .line 1391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    sget-boolean v1, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-eqz v1, :cond_2b

    .line 1393
    new-instance v1, Lcom/android/common/ui/P;

    iget-object v2, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/ui/P;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1394
    new-instance v1, Lcom/android/common/ui/v;

    iget-object v2, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/ui/v;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1395
    new-instance v1, Lcom/android/common/ui/r;

    iget-object v2, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/ui/r;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1396
    invoke-virtual {p0, v0}, Lcom/android/common/o/a;->aiv(Ljava/util/List;)V

    .line 1403
    :goto_2a
    return-object v0

    .line 1398
    :cond_2b
    invoke-virtual {p0, v0}, Lcom/android/common/o/a;->ais(Ljava/util/List;)V

    .line 1399
    invoke-virtual {p0, v0}, Lcom/android/common/o/a;->aix(Ljava/util/List;)V

    .line 1400
    invoke-virtual {p0, v0}, Lcom/android/common/o/a;->aiw(Ljava/util/List;)V

    .line 1401
    invoke-virtual {p0, v0}, Lcom/android/common/o/a;->air(Ljava/util/List;)V

    goto :goto_2a
.end method

.method protected aiH()V
    .registers 3

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    if-nez v0, :cond_9

    :cond_8
    return-void

    .line 1068
    :cond_9
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XI()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1069
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 1070
    const-string/jumbo v1, "pref_camera_iso_key"

    .line 1069
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 1071
    if-eqz v0, :cond_28

    .line 1072
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vt(I)V

    .line 1075
    :cond_28
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/o/e;

    if-eqz v0, :cond_39

    .line 1076
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0}, Lcom/android/common/o/e;->akq()V

    .line 1080
    :cond_39
    invoke-virtual {p0}, Lcom/android/common/o/a;->ajq()V

    .line 1081
    invoke-virtual {p0}, Lcom/android/common/o/a;->nM()V

    .line 1082
    invoke-virtual {p0}, Lcom/android/common/o/a;->mR()V

    .line 1083
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/common/o/a;->mU(Z)V

    .line 1066
    return-void
.end method

.method protected aiK(Z)V
    .registers 16

    .prologue
    const-wide/16 v4, 0x64

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 1289
    iget-object v0, p0, Lcom/android/common/o/a;->acs:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_b

    return-void

    .line 1291
    :cond_b
    invoke-direct {p0}, Lcom/android/common/o/a;->aiy()V

    .line 1293
    if-eqz p1, :cond_67

    .line 1294
    iget-object v0, p0, Lcom/android/common/o/a;->acx:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1295
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 1296
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1297
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1299
    :cond_35
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 1300
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1301
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1303
    :cond_53
    iget-object v0, p0, Lcom/android/common/o/a;->abT:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1304
    iget-object v0, p0, Lcom/android/common/o/a;->abT:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1305
    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0, v8}, Lcom/android/common/ActivityBase;->ath(I)V

    .line 1288
    :goto_66
    return-void

    .line 1307
    :cond_67
    iget-object v0, p0, Lcom/android/common/o/a;->acs:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1308
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/o/n;

    if-eqz v0, :cond_98

    .line 1309
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/n;

    const-wide/16 v2, 0x96

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/o/n;->ZP(ZJJ)V

    .line 1315
    :cond_7b
    :goto_7b
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/o/e;

    if-eqz v0, :cond_ae

    .line 1316
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    const-wide/16 v2, 0x96

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/o/e;->ZP(ZJJ)V

    .line 1322
    :cond_8a
    :goto_8a
    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/common/ActivityBase;

    const-wide/16 v10, 0x96

    move v9, v1

    move-wide v12, v4

    invoke-virtual/range {v7 .. v13}, Lcom/android/common/ActivityBase;->ate(IZJJ)V

    goto :goto_66

    .line 1311
    :cond_98
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 1312
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7b

    .line 1318
    :cond_ae
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 1319
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8a
.end method

.method protected aiM()V
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/common/o/a;->acG:Lcom/android/common/appService/q;

    if-eqz v0, :cond_9

    .line 392
    iget-object v0, p0, Lcom/android/common/o/a;->acG:Lcom/android/common/appService/q;

    invoke-virtual {v0}, Lcom/android/common/appService/q;->kn()V

    .line 390
    :cond_9
    return-void
.end method

.method protected abstract aiR()V
.end method

.method protected aiW()V
    .registers 3

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/common/o/a;->acF:Lcom/android/common/f/b;

    if-nez v0, :cond_21

    .line 930
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "init VideoMakerRender"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    new-instance v1, Lcom/android/common/f/b;

    .line 932
    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    .line 931
    invoke-direct {v1, v0}, Lcom/android/common/f/b;-><init>(Lcom/android/common/ActivityBase;)V

    iput-object v1, p0, Lcom/android/common/o/a;->acF:Lcom/android/common/f/b;

    .line 933
    iget-object v0, p0, Lcom/android/common/o/a;->acF:Lcom/android/common/f/b;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/common/f/b;->aan(I)V

    .line 928
    :cond_21
    return-void
.end method

.method public aij(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V
    .registers 11

    .prologue
    .line 2524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/o/a;->ack:Z

    .line 2525
    iput-object p2, p0, Lcom/android/common/o/a;->acm:Lcom/android/common/appService/CameraMember;

    .line 2526
    iput-object p1, p0, Lcom/android/common/o/a;->acf:Lcom/android/common/appService/CameraMember;

    .line 2529
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiD()[Lcom/android/common/o/l;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_d
    if-ge v0, v2, :cond_23

    aget-object v3, v1, v0

    .line 2530
    if-eqz v3, :cond_20

    .line 2531
    iget-object v4, p0, Lcom/android/common/o/a;->acf:Lcom/android/common/appService/CameraMember;

    iget-object v5, p0, Lcom/android/common/o/a;->acm:Lcom/android/common/appService/CameraMember;

    iget-object v6, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v6}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/common/o/l;->aij(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V

    .line 2529
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2523
    :cond_23
    return-void
.end method

.method public aik()V
    .registers 5

    .prologue
    .line 2511
    invoke-virtual {p0}, Lcom/android/common/o/a;->ZS()V

    .line 2512
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiD()[Lcom/android/common/o/l;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_9
    if-ge v0, v2, :cond_15

    aget-object v3, v1, v0

    .line 2513
    if-eqz v3, :cond_12

    .line 2514
    invoke-virtual {v3}, Lcom/android/common/o/l;->aik()V

    .line 2512
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2510
    :cond_15
    return-void
.end method

.method protected ail(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 889
    iput p1, p0, Lcom/android/common/o/a;->abO:I

    .line 890
    iget-object v0, p0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    if-nez v0, :cond_31

    .line 891
    new-instance v0, Lcom/android/common/n;

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-direct {v0, v1}, Lcom/android/common/n;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    .line 892
    new-instance v0, Lcom/android/common/o/b;

    invoke-direct {v0, p0, v2}, Lcom/android/common/o/b;-><init>(Lcom/android/common/o/a;Lcom/android/common/o/b;)V

    iput-object v0, p0, Lcom/android/common/o/a;->acb:Lcom/android/common/o/b;

    .line 893
    iget-object v0, p0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    iget-object v1, p0, Lcom/android/common/o/a;->acb:Lcom/android/common/o/b;

    invoke-virtual {v0, v1}, Lcom/android/common/n;->aqQ(Lcom/android/common/o;)V

    .line 894
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/o/e;

    if-eqz v0, :cond_31

    .line 895
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    iget-object v1, p0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    invoke-virtual {v0, v1}, Lcom/android/common/o/e;->akp(Lcom/android/common/n;)V

    .line 888
    :cond_31
    return-void
.end method

.method protected aim([B)V
    .registers 3

    .prologue
    .line 1725
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/common/o/a;->ait([BI)V

    .line 1724
    return-void
.end method

.method protected ain(Z)V
    .registers 2

    .prologue
    .line 1346
    return-void
.end method

.method protected aio()Ljava/util/List;
    .registers 2

    .prologue
    .line 1406
    const/4 v0, 0x0

    return-object v0
.end method

.method public aip()V
    .registers 1

    .prologue
    .line 2548
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiM()V

    .line 2547
    return-void
.end method

.method public aiq()V
    .registers 1

    .prologue
    .line 2552
    return-void
.end method

.method protected air(Ljava/util/List;)V
    .registers 9

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_exposure_key"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v2

    .line 1380
    if-eqz v2, :cond_26

    .line 1381
    new-instance v0, Lcom/android/common/ui/d;

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    .line 1382
    invoke-virtual {p0}, Lcom/android/common/o/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1383
    const v4, 0x7f0200dc

    .line 1384
    const v5, 0x7f0200de

    .line 1385
    const v6, 0x7f0200df

    .line 1381
    invoke-direct/range {v0 .. v6}, Lcom/android/common/ui/d;-><init>(Lcom/android/common/appService/W;Lcom/android/common/setting/ListPreference;Landroid/content/res/Resources;III)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1378
    :cond_26
    return-void
.end method

.method protected ais(Ljava/util/List;)V
    .registers 9

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_iso_key"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v2

    .line 1351
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agd:Z

    if-eqz v0, :cond_2a

    if-eqz v2, :cond_2a

    .line 1352
    new-instance v0, Lcom/android/common/ui/d;

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    .line 1353
    invoke-virtual {p0}, Lcom/android/common/o/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02010c

    const v5, 0x7f02010e

    const v6, 0x7f02010f

    .line 1352
    invoke-direct/range {v0 .. v6}, Lcom/android/common/ui/d;-><init>(Lcom/android/common/appService/W;Lcom/android/common/setting/ListPreference;Landroid/content/res/Resources;III)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1349
    :cond_2a
    return-void
.end method

.method protected ait([BI)V
    .registers 5

    .prologue
    .line 1734
    invoke-virtual {p0}, Lcom/android/common/o/a;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_17

    .line 1735
    iget-object v0, p0, Lcom/android/common/o/a;->acF:Lcom/android/common/f/b;

    if-eqz v0, :cond_17

    .line 1736
    iget v0, p0, Lcom/android/common/o/a;->abO:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 1737
    invoke-direct {p0}, Lcom/android/common/o/a;->ajc()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1733
    :cond_17
    :goto_17
    return-void

    .line 1738
    :cond_18
    iget-object v0, p0, Lcom/android/common/o/a;->acF:Lcom/android/common/f/b;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/f/b;->aap([BI)V

    goto :goto_17
.end method

.method protected aiu()V
    .registers 6

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    if-eqz v0, :cond_23

    .line 879
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiD()[Lcom/android/common/o/l;

    move-result-object v2

    const/4 v0, 0x0

    array-length v3, v2

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_1e

    aget-object v0, v2, v1

    .line 880
    instance-of v4, v0, Lcom/android/common/p;

    if-eqz v4, :cond_1a

    .line 881
    iget-object v4, p0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    check-cast v0, Lcom/android/common/p;

    invoke-virtual {v4, v0}, Lcom/android/common/n;->aqU(Lcom/android/common/p;)V

    .line 879
    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 884
    :cond_1e
    iget-object v0, p0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    invoke-virtual {v0, p0}, Lcom/android/common/n;->aqU(Lcom/android/common/p;)V

    .line 877
    :cond_23
    return-void
.end method

.method protected aiv(Ljava/util/List;)V
    .registers 6

    .prologue
    .line 1409
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aej()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 1410
    :cond_f
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adC()[Ljava/lang/String;

    move-result-object v0

    .line 1411
    if-eqz v0, :cond_29

    .line 1412
    new-instance v1, Lcom/android/common/ui/ao;

    iget-object v2, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/android/common/ui/ao;-><init>(Lcom/android/common/appService/W;I[Ljava/lang/String;)V

    .line 1413
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1408
    :goto_28
    return-void

    .line 1415
    :cond_29
    new-instance v0, Lcom/android/common/ui/ao;

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-direct {v0, v1}, Lcom/android/common/ui/ao;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28
.end method

.method protected aiw(Ljava/util/List;)V
    .registers 4

    .prologue
    .line 1358
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anp()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1359
    new-instance v0, Lcom/android/common/ui/ao;

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-direct {v0, v1}, Lcom/android/common/ui/ao;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    :cond_10
    return-void
.end method

.method protected aix(Ljava/util/List;)V
    .registers 9

    .prologue
    .line 1364
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-eqz v0, :cond_f

    .line 1365
    new-instance v0, Lcom/android/common/ui/r;

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-direct {v0, v1}, Lcom/android/common/ui/r;-><init>(Lcom/android/common/appService/W;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1363
    :cond_e
    :goto_e
    return-void

    .line 1367
    :cond_f
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_whitebalance_key"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v2

    .line 1368
    if-eqz v2, :cond_e

    .line 1369
    new-instance v0, Lcom/android/common/ui/d;

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    .line 1370
    invoke-virtual {p0}, Lcom/android/common/o/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1371
    const v4, 0x7f02013a

    .line 1372
    const v5, 0x7f02013c

    .line 1373
    const v6, 0x7f02013d

    .line 1369
    invoke-direct/range {v0 .. v6}, Lcom/android/common/ui/d;-><init>(Lcom/android/common/appService/W;Lcom/android/common/setting/ListPreference;Landroid/content/res/Resources;III)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method public aiz()V
    .registers 2

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    if-eqz v0, :cond_9

    .line 1716
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->aiz()V

    .line 1714
    :cond_9
    return-void
.end method

.method protected ajA()V
    .registers 3

    .prologue
    .line 1282
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "showSettingAnimation"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    invoke-direct {p0}, Lcom/android/common/o/a;->aiy()V

    .line 1284
    iget-object v0, p0, Lcom/android/common/o/a;->acx:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1285
    iget-object v0, p0, Lcom/android/common/o/a;->acw:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1281
    return-void
.end method

.method protected ajC()V
    .registers 1

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/android/common/o/a;->ajq()V

    .line 1106
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiH()V

    .line 1104
    return-void
.end method

.method protected final ajD(I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 922
    iget-object v0, p0, Lcom/android/common/o/a;->acz:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 923
    iget-object v0, p0, Lcom/android/common/o/a;->acC:Landroid/widget/TextView;

    .line 924
    invoke-virtual {p0}, Lcom/android/common/o/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 923
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 925
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 923
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    return-void
.end method

.method protected ajE(I)V
    .registers 2

    .prologue
    .line 918
    invoke-virtual {p0, p1}, Lcom/android/common/o/a;->ajD(I)V

    .line 917
    return-void
.end method

.method public ajG()V
    .registers 10

    .prologue
    const/16 v2, 0x8

    const/4 v8, 0x0

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 738
    iget-object v0, p0, Lcom/android/common/o/a;->abY:Landroid/widget/ImageView;

    if-nez v0, :cond_d

    return-void

    .line 740
    :cond_d
    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-eq v0, v1, :cond_1d

    .line 741
    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afn:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_23

    .line 742
    :cond_1d
    iget-object v0, p0, Lcom/android/common/o/a;->abY:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 743
    return-void

    .line 745
    :cond_23
    const-string/jumbo v0, "pref_camera_grid_key"

    invoke-virtual {p0, v0}, Lcom/android/common/o/a;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    .line 747
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 748
    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pf()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 767
    :cond_3f
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 768
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    .line 767
    if-eqz v0, :cond_55

    .line 769
    :cond_50
    iget-object v0, p0, Lcom/android/common/o/a;->abY:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 737
    :cond_55
    :goto_55
    return-void

    .line 749
    :cond_56
    const-string/jumbo v1, "pref_camera_grid_key"

    invoke-direct {p0, v1}, Lcom/android/common/o/a;->aje(Ljava/lang/String;)Z

    move-result v1

    .line 747
    if-eqz v1, :cond_3f

    .line 750
    iget-object v1, p0, Lcom/android/common/o/a;->abY:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 751
    iget-boolean v1, p0, Lcom/android/common/o/a;->acl:Z

    if-eqz v1, :cond_55

    .line 753
    const-string/jumbo v1, "style1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 754
    invoke-virtual {p0}, Lcom/android/common/o/a;->alD()F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, v6

    if-gez v1, :cond_97

    .line 755
    if-eqz v0, :cond_93

    const v0, 0x7f0200b8

    .line 764
    :goto_87
    iget-object v1, p0, Lcom/android/common/o/a;->abY:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/common/o/a;->ajj(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 765
    iput-boolean v8, p0, Lcom/android/common/o/a;->acl:Z

    goto :goto_55

    .line 756
    :cond_93
    const v0, 0x7f0200be

    goto :goto_87

    .line 757
    :cond_97
    invoke-virtual {p0}, Lcom/android/common/o/a;->alD()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpg-double v1, v2, v6

    if-gez v1, :cond_b1

    .line 758
    if-eqz v0, :cond_ad

    const v0, 0x7f0200ba

    goto :goto_87

    .line 759
    :cond_ad
    const v0, 0x7f0200bf

    goto :goto_87

    .line 761
    :cond_b1
    if-eqz v0, :cond_b7

    const v0, 0x7f0200bb

    goto :goto_87

    .line 762
    :cond_b7
    const v0, 0x7f0200c4

    goto :goto_87
.end method

.method protected ajh(Z)V
    .registers 2

    .prologue
    .line 2228
    return-void
.end method

.method protected aji(IIII)V
    .registers 7

    .prologue
    .line 2448
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "onPreviewAreaUpdated"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    iget-object v0, p0, Lcom/android/common/o/a;->abV:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    sub-int v1, p3, p1

    if-ne v0, v1, :cond_1d

    .line 2450
    iget-object v0, p0, Lcom/android/common/o/a;->abV:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_40

    .line 2451
    :cond_1d
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "relayout FocusFaceContent"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    iget-object v0, p0, Lcom/android/common/o/a;->abV:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2453
    sub-int v1, p3, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2454
    sub-int v1, p4, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2455
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2457
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 2458
    iget-object v0, p0, Lcom/android/common/o/a;->abV:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 2460
    :cond_40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/o/a;->acl:Z

    .line 2461
    invoke-virtual {p0}, Lcom/android/common/o/a;->ajG()V

    .line 2447
    return-void
.end method

.method protected ajm()V
    .registers 6

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    if-eqz v0, :cond_23

    .line 902
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiD()[Lcom/android/common/o/l;

    move-result-object v2

    const/4 v0, 0x0

    array-length v3, v2

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_1e

    aget-object v0, v2, v1

    .line 903
    instance-of v4, v0, Lcom/android/common/p;

    if-eqz v4, :cond_1a

    .line 904
    iget-object v4, p0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    check-cast v0, Lcom/android/common/p;

    invoke-virtual {v4, v0}, Lcom/android/common/n;->aqV(Lcom/android/common/p;)V

    .line 902
    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 907
    :cond_1e
    iget-object v0, p0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    invoke-virtual {v0, p0}, Lcom/android/common/n;->aqV(Lcom/android/common/p;)V

    .line 900
    :cond_23
    return-void
.end method

.method public ajn()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2560
    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_22

    .line 2562
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "Request Location permission"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v2

    .line 2563
    invoke-virtual {p0, v0, v3}, Lcom/android/common/o/a;->requestPermissions([Ljava/lang/String;I)V

    .line 2559
    :cond_22
    return-void
.end method

.method public ajq()V
    .registers 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/appService/p;

    if-eqz v0, :cond_11

    .line 1119
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/appService/p;

    invoke-interface {v0}, Lcom/android/common/appService/p;->kh()V

    .line 1117
    :cond_11
    return-void
.end method

.method protected ajt(IZ)V
    .registers 4

    .prologue
    .line 1707
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->ajt(IZ)V

    .line 1708
    iget-object v0, p0, Lcom/android/common/o/a;->abW:Lcom/android/common/o/c;

    if-eqz v0, :cond_c

    .line 1709
    iget-object v0, p0, Lcom/android/common/o/a;->abW:Lcom/android/common/o/c;

    invoke-static {v0, p1, p2}, Lcom/android/common/o/c;->akk(Lcom/android/common/o/c;IZ)V

    .line 1706
    :cond_c
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 797
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiD()[Lcom/android/common/o/l;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_15

    aget-object v4, v2, v1

    .line 798
    if-eqz v4, :cond_12

    .line 799
    invoke-virtual {v4, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 797
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 803
    :cond_15
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public iu()V
    .registers 6

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/common/o/a;->abP:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v0, p0, Lcom/android/common/o/a;->abQ:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 856
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiD()[Lcom/android/common/o/l;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_15
    if-ge v0, v2, :cond_22

    aget-object v3, v1, v0

    .line 857
    if-eqz v3, :cond_1f

    .line 858
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/common/o/l;->akU(Z)V

    .line 856
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 853
    :cond_22
    return-void
.end method

.method public iv()V
    .registers 3

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    if-eqz v0, :cond_13

    .line 866
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/appService/p;

    if-eqz v0, :cond_13

    .line 867
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/appService/p;

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-interface {v0, v1}, Lcom/android/common/appService/p;->kf(Lcom/android/common/appService/W;)V

    .line 864
    :cond_13
    return-void
.end method

.method public iw()V
    .registers 1

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/android/common/o/a;->ajF()V

    .line 873
    return-void
.end method

.method public ix()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 843
    iget-object v0, p0, Lcom/android/common/o/a;->abQ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 844
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiD()[Lcom/android/common/o/l;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_c
    if-ge v0, v3, :cond_18

    aget-object v4, v2, v0

    .line 845
    if-eqz v4, :cond_15

    .line 846
    invoke-virtual {v4, v1}, Lcom/android/common/o/l;->akU(Z)V

    .line 844
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 849
    :cond_18
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 842
    return-void
.end method

.method public iy(J)V
    .registers 6

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/common/o/a;->abP:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    return-void
.end method

.method protected kj()V
    .registers 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1189
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/appService/p;

    if-eqz v0, :cond_19

    .line 1190
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/appService/p;

    invoke-interface {v0}, Lcom/android/common/appService/p;->kj()V

    .line 1187
    :cond_19
    return-void
.end method

.method public mI()V
    .registers 3

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_e

    .line 2301
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "closeIntervalSwitch mAppService is null"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    return-void

    .line 2304
    :cond_e
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_interval_switch"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 2306
    invoke-virtual {p0}, Lcom/android/common/o/a;->mV()V

    .line 2307
    invoke-virtual {p0}, Lcom/android/common/o/a;->nt()V

    .line 2308
    invoke-virtual {p0}, Lcom/android/common/o/a;->nN()V

    .line 2309
    invoke-virtual {p0}, Lcom/android/common/o/a;->nL()V

    .line 2310
    invoke-virtual {p0}, Lcom/android/common/o/a;->nM()V

    .line 2311
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2299
    return-void
.end method

.method public mJ(Z)V
    .registers 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/o/e;

    if-eqz v0, :cond_d

    .line 812
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p1}, Lcom/android/common/o/e;->ako(Z)V

    .line 810
    :cond_d
    return-void
.end method

.method public mK()V
    .registers 1

    .prologue
    .line 1855
    return-void
.end method

.method public mL()V
    .registers 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/android/common/o/a;->ne()V

    .line 1175
    return-void
.end method

.method public mM(Z)Z
    .registers 4

    .prologue
    .line 1782
    iget-boolean v0, p0, Lcom/android/common/o/a;->abR:Z

    if-eq v0, p1, :cond_15

    .line 1783
    iput-boolean p1, p0, Lcom/android/common/o/a;->abR:Z

    .line 1784
    iget-boolean v0, p0, Lcom/android/common/o/a;->adv:Z

    if-nez v0, :cond_15

    .line 1785
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->asZ(I)V

    .line 1788
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public mN(ZZ)V
    .registers 10

    .prologue
    const-wide/16 v2, -0x1

    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 1860
    invoke-virtual {p0}, Lcom/android/common/o/a;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    .line 1861
    return-void

    .line 1863
    :cond_c
    if-eqz p1, :cond_55

    move-object v0, p0

    move-wide v4, v2

    .line 1864
    invoke-virtual/range {v0 .. v5}, Lcom/android/common/o/a;->ZQ(ZJJ)V

    .line 1865
    iget-object v0, p0, Lcom/android/common/o/a;->abV:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1867
    iget-object v0, p0, Lcom/android/common/o/a;->abT:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1869
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 1870
    const-string/jumbo v0, "torch"

    iget-object v2, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->Lm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1869
    if-eqz v0, :cond_44

    .line 1871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/o/a;->acn:Z

    .line 1872
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/common/ActivityBase;->asZ(I)V

    .line 1885
    :cond_44
    :goto_44
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiD()[Lcom/android/common/o/l;

    move-result-object v0

    array-length v2, v0

    :goto_49
    if-ge v1, v2, :cond_74

    aget-object v3, v0, v1

    .line 1886
    if-eqz v3, :cond_52

    .line 1887
    invoke-virtual {v3, p1, p2}, Lcom/android/common/o/l;->akI(ZZ)V

    .line 1885
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_55
    move-object v0, p0

    move-wide v4, v2

    .line 1875
    invoke-virtual/range {v0 .. v5}, Lcom/android/common/o/a;->ZP(ZJJ)V

    .line 1876
    iget-object v0, p0, Lcom/android/common/o/a;->abV:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1878
    iget-object v0, p0, Lcom/android/common/o/a;->abT:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1879
    iget-boolean v0, p0, Lcom/android/common/o/a;->acn:Z

    if-eqz v0, :cond_44

    .line 1880
    iput-boolean v1, p0, Lcom/android/common/o/a;->acn:Z

    .line 1881
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/common/ActivityBase;->asZ(I)V

    goto :goto_44

    .line 1859
    :cond_74
    return-void
.end method

.method public mO()Z
    .registers 2

    .prologue
    .line 1829
    const/4 v0, 0x1

    return v0
.end method

.method public mP()V
    .registers 3

    .prologue
    .line 2472
    iget-object v0, p0, Lcom/android/common/o/a;->ach:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_17

    .line 2473
    iget-object v1, p0, Lcom/android/common/o/a;->ach:Landroid/widget/RelativeLayout;

    .line 2474
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x8

    .line 2473
    :goto_14
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2476
    :cond_17
    iget-object v0, p0, Lcom/android/common/o/a;->abW:Lcom/android/common/o/c;

    if-eqz v0, :cond_20

    .line 2477
    iget-object v0, p0, Lcom/android/common/o/a;->abW:Lcom/android/common/o/c;

    invoke-virtual {v0}, Lcom/android/common/o/c;->notifyDataSetChanged()V

    .line 2471
    :cond_20
    return-void

    .line 2474
    :cond_21
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public mQ()V
    .registers 2

    .prologue
    .line 1753
    invoke-direct {p0}, Lcom/android/common/o/a;->aja()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1754
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0}, Lcom/android/common/o/e;->akt()V

    .line 1752
    :cond_d
    return-void
.end method

.method public mR()V
    .registers 2

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/o/e;

    if-eqz v0, :cond_d

    .line 1834
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0}, Lcom/android/common/o/e;->akw()V

    .line 1832
    :cond_d
    return-void
.end method

.method public mS()V
    .registers 3

    .prologue
    .line 1463
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aey()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1464
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "showBacklightButton This mode can not super Backlight."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    return-void

    .line 1467
    :cond_18
    iget-object v0, p0, Lcom/android/common/o/a;->abG:Landroid/widget/Button;

    if-nez v0, :cond_26

    .line 1468
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "showBacklightButton BacklightButton is null."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    return-void

    .line 1471
    :cond_26
    iget-object v0, p0, Lcom/android/common/o/a;->abG:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1462
    return-void
.end method

.method public mT()V
    .registers 3

    .prologue
    .line 1478
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aey()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1479
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "hideBacklightButton This mode can not super Backlight."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    return-void

    .line 1482
    :cond_18
    iget-object v0, p0, Lcom/android/common/o/a;->abG:Landroid/widget/Button;

    if-nez v0, :cond_26

    .line 1483
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "hideBacklightButton BacklightButton is null."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    return-void

    .line 1486
    :cond_26
    iget-object v0, p0, Lcom/android/common/o/a;->abG:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1477
    return-void
.end method

.method public mU(Z)V
    .registers 2

    .prologue
    .line 2542
    return-void
.end method

.method public mV()V
    .registers 2

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/android/common/o/a;->abW:Lcom/android/common/o/c;

    if-eqz v0, :cond_9

    .line 2260
    iget-object v0, p0, Lcom/android/common/o/a;->abW:Lcom/android/common/o/c;

    invoke-virtual {v0}, Lcom/android/common/o/c;->notifyDataSetChanged()V

    .line 2257
    :cond_9
    return-void
.end method

.method public mW()V
    .registers 2

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    if-eqz v0, :cond_9

    .line 2489
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->nJ()V

    .line 2487
    :cond_9
    return-void
.end method

.method public mZ(Lcom/android/common/appService/W;)[Ljava/lang/String;
    .registers 6

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/common/o/a;->acu:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/common/o/a;->acd:Z

    if-eqz v0, :cond_59

    .line 481
    :cond_8
    invoke-virtual {p1}, Lcom/android/common/appService/W;->rf()Ljava/lang/String;

    move-result-object v0

    .line 482
    const-string/jumbo v1, "jyzhou"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "versionName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/android/common/o/a;->aln()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/o/a;->alE(Landroid/content/SharedPreferences;)I

    move-result v1

    if-eqz v1, :cond_32

    if-nez v0, :cond_5c

    .line 484
    :cond_32
    invoke-static {p1}, Lcom/android/common/h;->apv(Lcom/android/common/appService/W;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/o/a;->acu:[Ljava/lang/String;

    .line 485
    iget-object v1, p0, Lcom/android/common/o/a;->acu:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/common/o/a;->aln()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/common/o/a;->alF([Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 486
    invoke-virtual {p1}, Lcom/android/common/appService/W;->rg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 487
    invoke-virtual {p1, v0}, Lcom/android/common/appService/W;->rh(Ljava/lang/String;)V

    .line 492
    :cond_4e
    :goto_4e
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/o/a;->acu:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/common/o/a;->aiB(Lcom/android/common/setting/PreferenceGroup;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 478
    :cond_59
    iget-object v0, p0, Lcom/android/common/o/a;->acu:[Ljava/lang/String;

    return-object v0

    .line 483
    :cond_5c
    invoke-virtual {p1}, Lcom/android/common/appService/W;->rg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 490
    invoke-direct {p0, p1}, Lcom/android/common/o/a;->aiF(Lcom/android/common/appService/W;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/o/a;->acu:[Ljava/lang/String;

    goto :goto_4e
.end method

.method public nA()V
    .registers 3

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/android/common/o/a;->abG:Landroid/widget/Button;

    if-eqz v0, :cond_e

    .line 1503
    iget-object v0, p0, Lcom/android/common/o/a;->abG:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    .line 1504
    :cond_e
    return-void

    .line 1506
    :cond_f
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rk()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1507
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-static {v0}, Lcom/android/common/h;->aqf(Lcom/android/common/appService/W;)V

    .line 1508
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->re(Z)V

    .line 1509
    invoke-direct {p0}, Lcom/android/common/o/a;->ajx()V

    .line 1501
    :cond_25
    return-void
.end method

.method public nB()V
    .registers 2

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/common/o/a;->abH:Lcom/android/common/ui/E;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/common/o/a;->abH:Lcom/android/common/ui/E;

    invoke-virtual {v0}, Lcom/android/common/ui/E;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1518
    iget-object v0, p0, Lcom/android/common/o/a;->abH:Lcom/android/common/ui/E;

    invoke-virtual {v0}, Lcom/android/common/ui/E;->cancel()V

    .line 1516
    :cond_11
    return-void
.end method

.method public nC()V
    .registers 1

    .prologue
    .line 2482
    return-void
.end method

.method public nE(II)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1057
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiD()[Lcom/android/common/o/l;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_15

    aget-object v4, v2, v1

    .line 1058
    if-eqz v4, :cond_12

    .line 1059
    invoke-virtual {v4, p1, p2}, Lcom/android/common/o/l;->nE(II)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1057
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1063
    :cond_15
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->nE(II)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public nF(Z)V
    .registers 3

    .prologue
    .line 1759
    invoke-direct {p0}, Lcom/android/common/o/a;->aja()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1760
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p1}, Lcom/android/common/o/e;->aku(Z)V

    .line 1758
    :cond_d
    return-void
.end method

.method public nG()V
    .registers 3

    .prologue
    .line 1743
    invoke-direct {p0}, Lcom/android/common/o/a;->aja()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1744
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/appService/CameraMember;->mh(Lcom/android/common/appService/CameraMember;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1745
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0}, Lcom/android/common/o/e;->aks()V

    .line 1742
    :cond_1f
    :goto_1f
    return-void

    .line 1747
    :cond_20
    invoke-virtual {p0}, Lcom/android/common/o/a;->mQ()V

    goto :goto_1f
.end method

.method public nH(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1839
    invoke-direct {p0}, Lcom/android/common/o/a;->aja()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1840
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p1}, Lcom/android/common/o/e;->akx(Ljava/lang/String;)V

    .line 1838
    :cond_d
    return-void
.end method

.method public nI()V
    .registers 2

    .prologue
    .line 2610
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/o/e;

    if-eqz v0, :cond_11

    .line 2611
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0}, Lcom/android/common/o/e;->akq()V

    .line 2609
    :cond_11
    return-void
.end method

.method public nJ()V
    .registers 2

    .prologue
    .line 1138
    invoke-super {p0}, Lcom/android/common/o/l;->nJ()V

    .line 1140
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->nJ()V

    .line 1141
    invoke-virtual {p0}, Lcom/android/common/o/a;->ajG()V

    .line 1142
    invoke-virtual {p0}, Lcom/android/common/o/a;->alG()V

    .line 1137
    return-void
.end method

.method public nK()V
    .registers 1

    .prologue
    .line 2537
    return-void
.end method

.method public nL()V
    .registers 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/appService/p;

    if-eqz v0, :cond_11

    .line 1132
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/appService/p;

    invoke-interface {v0}, Lcom/android/common/appService/p;->kg()V

    .line 1130
    :cond_11
    return-void
.end method

.method public nM()V
    .registers 2

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/appService/p;

    if-eqz v0, :cond_11

    .line 1126
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/appService/p;

    invoke-interface {v0}, Lcom/android/common/appService/p;->ki()V

    .line 1124
    :cond_11
    return-void
.end method

.method public nN()V
    .registers 1

    .prologue
    .line 2442
    return-void
.end method

.method public nO()V
    .registers 15

    .prologue
    const-wide/16 v2, 0x64

    const-wide/16 v4, -0x1

    const/16 v8, 0x8

    const/4 v1, 0x1

    .line 1196
    iget-boolean v0, p0, Lcom/android/common/o/a;->adv:Z

    if-eqz v0, :cond_15

    .line 1197
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "Fragment is paused, ignore showSettingView"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    return-void

    .line 1200
    :cond_15
    invoke-direct {p0}, Lcom/android/common/o/a;->aiU()V

    .line 1201
    iget-object v0, p0, Lcom/android/common/o/a;->acw:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/android/common/o/a;->aiZ(Landroid/animation/Animator;)Z

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/android/common/o/a;->acs:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/android/common/o/a;->aiZ(Landroid/animation/Animator;)Z

    move-result v0

    .line 1202
    :goto_26
    iget-object v6, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    if-eqz v6, :cond_32

    iget-object v6, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    invoke-virtual {v6}, Lcom/android/common/o/p;->isHidden()Z

    move-result v6

    if-eqz v6, :cond_6f

    :cond_32
    const/4 v6, 0x0

    .line 1203
    :goto_33
    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_47

    .line 1204
    iget-object v7, p0, Lcom/android/common/o/a;->adx:Lcom/android/common/camerastate/a;

    sget-object v9, Lcom/android/common/camerastate/UIState;->afn:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v7, v9}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 1203
    if-nez v0, :cond_47

    if-eqz v6, :cond_71

    .line 1207
    :cond_47
    const-string/jumbo v1, "AbstractFamilyMemberFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSettingView, SettingAnimating: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1208
    const-string/jumbo v2, "; isMoreSettingShown: "

    .line 1207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    return-void

    :cond_6d
    move v0, v1

    .line 1201
    goto :goto_26

    :cond_6f
    move v6, v1

    .line 1202
    goto :goto_33

    .line 1211
    :cond_71
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/o/n;

    if-eqz v0, :cond_cc

    .line 1212
    iget-object v0, p0, Lcom/android/common/o/a;->abD:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/n;

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/o/n;->ZQ(ZJJ)V

    .line 1216
    :goto_7e
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/o/e;

    if-eqz v0, :cond_d2

    .line 1217
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/o/e;->ZQ(ZJJ)V

    .line 1223
    :cond_8b
    :goto_8b
    iget-object v0, p0, Lcom/android/common/o/a;->abQ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v8}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 1224
    invoke-virtual {p0}, Lcom/android/common/o/a;->ajA()V

    .line 1225
    iget-object v0, p0, Lcom/android/common/o/a;->abV:Landroid/widget/RelativeLayout;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1226
    iget-object v0, p0, Lcom/android/common/o/a;->abK:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1227
    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/common/ActivityBase;

    move v9, v1

    move-wide v10, v2

    move-wide v12, v4

    invoke-virtual/range {v7 .. v13}, Lcom/android/common/ActivityBase;->ate(IZJJ)V

    .line 1228
    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->atf()V

    .line 1229
    invoke-virtual {p0, v1}, Lcom/android/common/o/a;->ain(Z)V

    .line 1230
    sget-object v0, Lcom/android/common/camerastate/UIState;->afn:Lcom/android/common/camerastate/UIState;

    invoke-virtual {p0, v0}, Lcom/android/common/o/a;->alH(Lcom/android/common/camerastate/UIState;)V

    .line 1231
    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "setting_open"

    const-string/jumbo v2, "open"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiM()V

    .line 1195
    return-void

    .line 1214
    :cond_cc
    iget-object v0, p0, Lcom/android/common/o/a;->abU:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_7e

    .line 1219
    :cond_d2
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 1220
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    invoke-virtual {v0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8b
.end method

.method public nb()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1494
    iget-object v1, p0, Lcom/android/common/o/a;->abG:Landroid/widget/Button;

    if-eqz v1, :cond_e

    .line 1495
    iget-object v1, p0, Lcom/android/common/o/a;->abG:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 1494
    :cond_e
    return v0
.end method

.method public nc()Z
    .registers 2

    .prologue
    .line 1813
    const/4 v0, 0x0

    return v0
.end method

.method public nd()Z
    .registers 2

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/o/e;

    if-eqz v0, :cond_13

    .line 1796
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0}, Lcom/android/common/o/e;->akv()Z

    move-result v0

    return v0

    .line 1798
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public ne()V
    .registers 3

    .prologue
    .line 2266
    iget-boolean v0, p0, Lcom/android/common/o/a;->adv:Z

    if-eqz v0, :cond_5

    .line 2267
    return-void

    .line 2269
    :cond_5
    iget-object v0, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    if-nez v0, :cond_18

    .line 2270
    invoke-virtual {p0}, Lcom/android/common/o/a;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "more_settings"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/common/o/p;

    iput-object v0, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    .line 2272
    :cond_18
    iget-object v0, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    if-eqz v0, :cond_21

    .line 2273
    iget-object v0, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    invoke-virtual {v0}, Lcom/android/common/o/p;->notifyDataSetChanged()V

    .line 2265
    :cond_21
    return-void
.end method

.method public nf()V
    .registers 3

    .prologue
    .line 2283
    iget-boolean v0, p0, Lcom/android/common/o/a;->adv:Z

    if-eqz v0, :cond_e

    .line 2284
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "fragment is paused closeHdr fail!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    return-void

    .line 2287
    :cond_e
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rm()V

    .line 2288
    invoke-virtual {p0}, Lcom/android/common/o/a;->mV()V

    .line 2289
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2290
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiH()V

    .line 2282
    return-void
.end method

.method public ng()V
    .registers 1

    .prologue
    .line 1110
    invoke-virtual {p0}, Lcom/android/common/o/a;->ajq()V

    .line 1109
    return-void
.end method

.method public nh()V
    .registers 5

    .prologue
    .line 1846
    invoke-virtual {p0}, Lcom/android/common/o/a;->akC()V

    .line 1847
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiD()[Lcom/android/common/o/l;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_9
    if-ge v0, v2, :cond_15

    aget-object v3, v1, v0

    .line 1848
    if-eqz v3, :cond_12

    .line 1849
    invoke-virtual {v3}, Lcom/android/common/o/l;->akC()V

    .line 1847
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1845
    :cond_15
    return-void
.end method

.method public nk(Z)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2233
    iget-object v0, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    if-eqz v0, :cond_e

    .line 2234
    iget-object v0, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    invoke-virtual {v0}, Lcom/android/common/o/p;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2253
    :cond_e
    return v2

    .line 2235
    :cond_f
    iget-object v0, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    invoke-virtual {v0}, Lcom/android/common/o/p;->alX()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2233
    if-eqz p1, :cond_e

    .line 2236
    :cond_19
    invoke-direct {p0}, Lcom/android/common/o/a;->aiJ()V

    .line 2238
    if-nez p1, :cond_45

    .line 2239
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v3

    .line 2240
    invoke-interface {v3}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v4, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v4, :cond_52

    move v0, v1

    .line 2241
    :goto_31
    iget-object v4, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v4}, Lcom/android/common/appService/W;->qX()Z

    move-result v4

    .line 2242
    if-eq v0, v4, :cond_54

    .line 2243
    invoke-interface {v3, v4}, Lcom/android/common/appService/b;->hZ(Z)V

    .line 2247
    :goto_3c
    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asY()V

    .line 2249
    :cond_45
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v3, "remove more settings fragment"

    invoke-static {v0, v3}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    invoke-virtual {p0, v2}, Lcom/android/common/o/a;->ajh(Z)V

    .line 2251
    return v1

    :cond_52
    move v0, v2

    .line 2240
    goto :goto_31

    .line 2245
    :cond_54
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    goto :goto_3c
.end method

.method public nl()Lcom/android/common/appService/V;
    .registers 2

    .prologue
    .line 2557
    const/4 v0, 0x0

    return-object v0
.end method

.method public nm()Lcom/android/common/ui/FaceView;
    .registers 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/common/o/a;->abS:Lcom/android/common/ui/FaceView;

    return-object v0
.end method

.method public nn()Landroid/hardware/Camera$PictureCallback;
    .registers 2

    .prologue
    .line 1825
    const/4 v0, 0x0

    return-object v0
.end method

.method public no()Landroid/hardware/Camera$PictureCallback;
    .registers 2

    .prologue
    .line 1821
    const/4 v0, 0x0

    return-object v0
.end method

.method public np()V
    .registers 1

    .prologue
    .line 2277
    return-void
.end method

.method public nq(Z)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1245
    invoke-direct {p0}, Lcom/android/common/o/a;->aiU()V

    .line 1246
    iget-object v0, p0, Lcom/android/common/o/a;->acw:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/android/common/o/a;->aiZ(Landroid/animation/Animator;)Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/android/common/o/a;->acs:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/android/common/o/a;->aiZ(Landroid/animation/Animator;)Z

    move-result v0

    .line 1247
    :goto_13
    iget-object v3, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    invoke-virtual {v3}, Lcom/android/common/o/p;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 1248
    :cond_1f
    iget-boolean v3, p0, Lcom/android/common/o/a;->acc:Z

    .line 1249
    :goto_21
    if-eqz v0, :cond_25

    if-eqz p1, :cond_2d

    .line 1250
    :cond_25
    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v4

    sget-object v5, Lcom/android/common/camerastate/UIState;->afn:Lcom/android/common/camerastate/UIState;

    if-eq v4, v5, :cond_6b

    .line 1252
    :cond_2d
    const-string/jumbo v4, "AbstractFamilyMemberFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hideSettingView, moreSettingShown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_40

    if-eqz p1, :cond_41

    :cond_40
    move v1, v2

    :cond_41
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1253
    const-string/jumbo v2, "; UIState: "

    .line 1252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1253
    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v2

    .line 1252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1254
    const-string/jumbo v2, "; SettingAnimating: "

    .line 1252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    return-void

    :cond_67
    move v0, v1

    .line 1246
    goto :goto_13

    :cond_69
    move v3, v1

    .line 1247
    goto :goto_21

    .line 1251
    :cond_6b
    if-eqz v3, :cond_6f

    if-eqz p1, :cond_2d

    .line 1257
    :cond_6f
    iget-object v0, p0, Lcom/android/common/o/a;->act:Landroid/widget/Toast;

    if-eqz v0, :cond_78

    .line 1258
    iget-object v0, p0, Lcom/android/common/o/a;->act:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1261
    :cond_78
    iget-object v0, p0, Lcom/android/common/o/a;->adx:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/UIState;->afn:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amN(Lcom/android/common/camerastate/UIState;)V

    .line 1263
    invoke-virtual {p0}, Lcom/android/common/o/a;->ajG()V

    .line 1264
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiA()V

    .line 1265
    invoke-direct {p0}, Lcom/android/common/o/a;->ajF()V

    .line 1266
    iget-object v0, p0, Lcom/android/common/o/a;->abV:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1267
    iget-object v0, p0, Lcom/android/common/o/a;->abK:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1270
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    instance-of v0, v0, Lcom/android/common/o/e;

    if-eqz v0, :cond_a3

    .line 1271
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0}, Lcom/android/common/o/e;->akq()V

    .line 1273
    :cond_a3
    invoke-virtual {p0, p1}, Lcom/android/common/o/a;->aiK(Z)V

    .line 1275
    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->atg()V

    .line 1277
    invoke-virtual {p0, v2}, Lcom/android/common/o/a;->ain(Z)V

    .line 1278
    invoke-direct {p0}, Lcom/android/common/o/a;->ajv()V

    .line 1244
    return-void
.end method

.method public nt()V
    .registers 1

    .prologue
    .line 2294
    return-void
.end method

.method public nv()V
    .registers 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/android/common/o/a;->ajq()V

    .line 1113
    return-void
.end method

.method public nw()Z
    .registers 2

    .prologue
    .line 2467
    iget-boolean v0, p0, Lcom/android/common/o/a;->acn:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/common/o/a;->abR:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/common/o/a;->acc:Z

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public nx(Lcom/android/common/setting/ListPreference;)V
    .registers 3

    .prologue
    .line 1180
    invoke-static {}, Lcom/android/common/s;->aru()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1181
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/setting/ListPreference;->Vt(I)V

    .line 1184
    :cond_a
    invoke-virtual {p0}, Lcom/android/common/o/a;->mL()V

    .line 1179
    return-void
.end method

.method public ny(Z)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1804
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiD()[Lcom/android/common/o/l;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_15

    aget-object v4, v2, v1

    .line 1805
    if-eqz v4, :cond_12

    .line 1806
    invoke-virtual {v4, p1}, Lcom/android/common/o/l;->ny(Z)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1804
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1809
    :cond_15
    return v0
.end method

.method public nz()V
    .registers 1

    .prologue
    .line 1816
    return-void
.end method

.method public onBackPressed()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1032
    iget-object v1, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/common/o/a;->acj:Lcom/android/common/o/p;

    invoke-virtual {v1}, Lcom/android/common/o/p;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1033
    return v3

    .line 1036
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/common/o/a;->nk(Z)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1037
    return v3

    .line 1039
    :cond_16
    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/UIState;->afn:Lcom/android/common/camerastate/UIState;

    if-ne v1, v2, :cond_2f

    .line 1040
    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "setting_close"

    const-string/jumbo v2, "back"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-direct {p0}, Lcom/android/common/o/a;->aiL()V

    .line 1042
    return v3

    .line 1046
    :cond_2f
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiD()[Lcom/android/common/o/l;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_35
    if-ge v1, v3, :cond_43

    aget-object v4, v2, v1

    .line 1047
    if-eqz v4, :cond_40

    .line 1048
    invoke-virtual {v4}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v4

    or-int/2addr v0, v4

    .line 1046
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 1051
    :cond_43
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 289
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onCreate(Landroid/os/Bundle;)V

    .line 291
    iget-boolean v0, p0, Lcom/android/common/o/a;->adu:Z

    if-eqz v0, :cond_11

    .line 292
    return-void

    .line 294
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/o/a;->ace:Z

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/o/a;->acu:[Ljava/lang/String;

    .line 288
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 240
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 241
    iget-boolean v1, p0, Lcom/android/common/o/a;->adu:Z

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 242
    :cond_13
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "activity has been Destroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-object v3

    .line 246
    :cond_36
    const-string/jumbo v1, "AbstractFamilyMemberFragment"

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const v1, 0x7f04002d

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 249
    invoke-direct {p0, v1}, Lcom/android/common/o/a;->aiX(Landroid/view/View;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiR()V

    .line 253
    iget-boolean v2, p0, Lcom/android/common/o/a;->ack:Z

    if-eqz v2, :cond_6b

    .line 254
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiD()[Lcom/android/common/o/l;

    move-result-object v2

    array-length v3, v2

    :goto_55
    if-ge v0, v3, :cond_6b

    aget-object v4, v2, v0

    .line 255
    if-eqz v4, :cond_68

    .line 256
    iget-object v5, p0, Lcom/android/common/o/a;->acf:Lcom/android/common/appService/CameraMember;

    iget-object v6, p0, Lcom/android/common/o/a;->acm:Lcom/android/common/appService/CameraMember;

    iget-object v7, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v7}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/common/o/l;->aij(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V

    .line 254
    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 260
    :cond_6b
    return-object v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11

    .prologue
    const/16 v7, 0x52

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1524
    iget-boolean v0, p0, Lcom/android/common/o/a;->adv:Z

    if-nez v0, :cond_c

    .line 1525
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_d

    .line 1526
    :cond_c
    return v3

    .line 1529
    :cond_d
    sget v0, Lcom/android/common/h;->aht:I

    if-ne p1, v0, :cond_c7

    .line 1531
    const/16 v1, 0x1b

    move v0, v3

    .line 1533
    :goto_14
    sparse-switch v1, :sswitch_data_cc

    .line 1571
    :cond_17
    if-eqz v0, :cond_c4

    .line 1572
    sget v0, Lcom/android/common/h;->aht:I

    .line 1575
    :goto_1b
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiD()[Lcom/android/common/o/l;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_21
    if-ge v2, v5, :cond_b0

    aget-object v6, v4, v2

    .line 1576
    if-eqz v6, :cond_2c

    .line 1577
    invoke-virtual {v6, v0, p2}, Lcom/android/common/o/l;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 1575
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1546
    :sswitch_2f
    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v4

    sget-object v5, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-ne v4, v5, :cond_3f

    .line 1547
    invoke-virtual {p0}, Lcom/android/common/o/a;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v4

    sget-object v5, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v4, v5, :cond_a7

    .line 1549
    :cond_3f
    :goto_3f
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "consume onKeyDown. uiState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1550
    const-string/jumbo v4, "; function state = "

    .line 1549
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1550
    invoke-virtual {p0}, Lcom/android/common/o/a;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v4

    .line 1549
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/UIState;->afo:Lcom/android/common/camerastate/UIState;

    if-ne v0, v2, :cond_77

    .line 1552
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiz()V

    .line 1554
    :cond_77
    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/UIState;->afp:Lcom/android/common/camerastate/UIState;

    if-ne v0, v2, :cond_86

    .line 1555
    iget-object v0, p0, Lcom/android/common/o/a;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0}, Lcom/android/common/o/e;->akr()Z

    .line 1558
    :cond_86
    if-ne v1, v7, :cond_a6

    .line 1559
    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afn:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_a6

    .line 1560
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_a6

    .line 1561
    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "setting_close"

    const-string/jumbo v2, "menu"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    invoke-direct {p0}, Lcom/android/common/o/a;->aiL()V

    .line 1564
    :cond_a6
    return v3

    .line 1548
    :cond_a7
    invoke-virtual {p0}, Lcom/android/common/o/a;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v4

    sget-object v5, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    if-ne v4, v5, :cond_17

    goto :goto_3f

    .line 1582
    :cond_b0
    if-nez v1, :cond_be

    .line 1583
    if-ne v0, v7, :cond_be

    .line 1584
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_be

    .line 1585
    invoke-virtual {p0}, Lcom/android/common/o/a;->kj()V

    .line 1586
    return v3

    .line 1589
    :cond_be
    invoke-super {p0, v0, p2}, Lcom/android/common/o/l;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    or-int/2addr v0, v1

    return v0

    :cond_c4
    move v0, v1

    goto/16 :goto_1b

    :cond_c7
    move v0, v2

    move v1, p1

    goto/16 :goto_14

    .line 1533
    nop

    :sswitch_data_cc
    .sparse-switch
        0x18 -> :sswitch_2f
        0x19 -> :sswitch_2f
        0x1b -> :sswitch_2f
        0x42 -> :sswitch_2f
        0x4f -> :sswitch_2f
        0x50 -> :sswitch_2f
        0x52 -> :sswitch_2f
        0x55 -> :sswitch_2f
        0x7e -> :sswitch_2f
        0x7f -> :sswitch_2f
        0x2710 -> :sswitch_2f
        0x2714 -> :sswitch_2f
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1636
    iget-boolean v0, p0, Lcom/android/common/o/a;->adv:Z

    if-nez v0, :cond_a

    .line 1637
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_b

    .line 1638
    :cond_a
    return v3

    .line 1641
    :cond_b
    sget v0, Lcom/android/common/h;->aht:I

    if-ne p1, v0, :cond_3c

    .line 1643
    const/16 v0, 0x1b

    move v2, v3

    .line 1645
    :goto_12
    sparse-switch v0, :sswitch_data_40

    .line 1663
    :cond_15
    if-eqz v2, :cond_19

    .line 1664
    sget v0, Lcom/android/common/h;->aht:I

    .line 1667
    :cond_19
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiD()[Lcom/android/common/o/l;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1f
    if-ge v2, v4, :cond_36

    aget-object v5, v3, v2

    .line 1668
    if-eqz v5, :cond_2a

    .line 1669
    invoke-virtual {v5, v0, p2}, Lcom/android/common/o/l;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 1667
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1656
    :sswitch_2d
    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v4

    sget-object v5, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-eq v4, v5, :cond_15

    .line 1657
    return v3

    .line 1673
    :cond_36
    invoke-super {p0, v0, p2}, Lcom/android/common/o/l;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    or-int/2addr v0, v1

    return v0

    :cond_3c
    move v2, v1

    move v0, p1

    goto :goto_12

    .line 1645
    nop

    :sswitch_data_40
    .sparse-switch
        0x18 -> :sswitch_2d
        0x19 -> :sswitch_2d
        0x1b -> :sswitch_2d
        0x42 -> :sswitch_2d
        0x4f -> :sswitch_2d
        0x50 -> :sswitch_2d
        0x55 -> :sswitch_2d
        0x7e -> :sswitch_2d
        0x7f -> :sswitch_2d
        0x2710 -> :sswitch_2d
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1594
    iget-boolean v0, p0, Lcom/android/common/o/a;->adv:Z

    if-nez v0, :cond_a

    .line 1595
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_b

    .line 1596
    :cond_a
    return v3

    .line 1599
    :cond_b
    sget v0, Lcom/android/common/h;->aht:I

    if-ne p1, v0, :cond_3c

    .line 1601
    const/16 v0, 0x1b

    move v2, v3

    .line 1603
    :goto_12
    sparse-switch v0, :sswitch_data_40

    .line 1621
    :cond_15
    if-eqz v2, :cond_19

    .line 1622
    sget v0, Lcom/android/common/h;->aht:I

    .line 1625
    :cond_19
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiD()[Lcom/android/common/o/l;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1f
    if-ge v2, v4, :cond_36

    aget-object v5, v3, v2

    .line 1626
    if-eqz v5, :cond_2a

    .line 1627
    invoke-virtual {v5, v0, p2}, Lcom/android/common/o/l;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 1625
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1614
    :sswitch_2d
    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v4

    sget-object v5, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-eq v4, v5, :cond_15

    .line 1615
    return v3

    .line 1631
    :cond_36
    invoke-super {p0, v0, p2}, Lcom/android/common/o/l;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    or-int/2addr v0, v1

    return v0

    :cond_3c
    move v2, v1

    move v0, p1

    goto :goto_12

    .line 1603
    nop

    :sswitch_data_40
    .sparse-switch
        0x18 -> :sswitch_2d
        0x19 -> :sswitch_2d
        0x1b -> :sswitch_2d
        0x42 -> :sswitch_2d
        0x4f -> :sswitch_2d
        0x50 -> :sswitch_2d
        0x55 -> :sswitch_2d
        0x7e -> :sswitch_2d
        0x7f -> :sswitch_2d
        0x2710 -> :sswitch_2d
    .end sparse-switch
.end method

.method public onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 303
    iget-boolean v0, p0, Lcom/android/common/o/a;->adu:Z

    if-eqz v0, :cond_a

    .line 304
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 305
    return-void

    .line 307
    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/common/o/a;->nk(Z)Z

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/h;->apV(Ljava/lang/String;Landroid/content/Context;)V

    .line 309
    invoke-virtual {p0, v3}, Lcom/android/common/o/a;->nq(Z)V

    .line 310
    invoke-direct {p0}, Lcom/android/common/o/a;->ajk()V

    .line 311
    iput-boolean v3, p0, Lcom/android/common/o/a;->acE:Z

    .line 312
    invoke-direct {p0}, Lcom/android/common/o/a;->ajl()V

    .line 313
    iget-object v0, p0, Lcom/android/common/o/a;->abI:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/common/o/a;->abI:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 314
    iget-object v0, p0, Lcom/android/common/o/a;->abI:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 315
    :cond_4a
    iget-object v0, p0, Lcom/android/common/o/a;->abH:Lcom/android/common/ui/E;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/common/o/a;->abH:Lcom/android/common/ui/E;

    invoke-virtual {v0}, Lcom/android/common/ui/E;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 316
    iget-object v0, p0, Lcom/android/common/o/a;->abH:Lcom/android/common/ui/E;

    invoke-virtual {v0}, Lcom/android/common/ui/E;->cancel()V

    .line 317
    :cond_5b
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/common/setting/o;->XP(Lcom/android/common/setting/p;)V

    .line 318
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dF()V

    .line 319
    iget-object v0, p0, Lcom/android/common/o/a;->act:Landroid/widget/Toast;

    if-eqz v0, :cond_78

    .line 320
    iget-object v0, p0, Lcom/android/common/o/a;->act:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 321
    iput-object v2, p0, Lcom/android/common/o/a;->act:Landroid/widget/Toast;

    .line 323
    :cond_78
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qM()V

    .line 324
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hY()V

    .line 325
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 302
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 2572
    packed-switch p1, :pswitch_data_50

    .line 2571
    :goto_4
    return-void

    .line 2575
    :pswitch_5
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_recordlocation_key"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 2576
    array-length v1, p3

    if-lez v1, :cond_40

    .line 2577
    aget v1, p3, v2

    if-nez v1, :cond_40

    .line 2578
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 2579
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "Location permission is granted"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    :goto_28
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/setting/RecordLocationPreference;->YO(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 2585
    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/r/a;->anf(Z)V

    .line 2586
    invoke-virtual {p0}, Lcom/android/common/o/a;->ne()V

    goto :goto_4

    .line 2581
    :cond_40
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 2582
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "Location permission is denied"

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 2572
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 266
    iget-boolean v0, p0, Lcom/android/common/o/a;->adu:Z

    if-eqz v0, :cond_a

    return-void

    .line 267
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/h;->apW(Ljava/lang/String;Landroid/content/Context;)V

    .line 268
    invoke-direct {p0}, Lcom/android/common/o/a;->aiO()V

    .line 269
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v1

    .line 270
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->atb()Lcom/android/common/appService/R;

    move-result-object v0

    .line 269
    invoke-virtual {v1, v0}, Lcom/android/common/independentFocusExposure/g;->dD(Lcom/android/common/appService/R;)V

    .line 271
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dE()V

    .line 272
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qS()V

    .line 273
    iget-object v0, p0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/common/setting/o;->Xk(Lcom/android/common/setting/p;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/common/o/a;->mV()V

    .line 275
    invoke-direct {p0}, Lcom/android/common/o/a;->ajw()V

    .line 276
    invoke-virtual {p0, v2}, Lcom/android/common/o/a;->mJ(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_7b

    .line 278
    invoke-virtual {p0, v3, v2}, Lcom/android/common/o/a;->mN(ZZ)V

    .line 282
    :goto_6e
    iput-boolean v2, p0, Lcom/android/common/o/a;->abR:Z

    .line 283
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 284
    invoke-virtual {p0, v3}, Lcom/android/common/o/a;->mU(Z)V

    .line 264
    return-void

    .line 280
    :cond_7b
    invoke-virtual {p0}, Lcom/android/common/o/a;->aiA()V

    goto :goto_6e
.end method

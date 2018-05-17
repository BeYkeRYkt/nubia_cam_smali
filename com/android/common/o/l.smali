.class public Lcom/android/common/o/l;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field protected adA:Landroid/animation/ObjectAnimator;

.field private adB:F

.field private adC:Lcom/android/common/o/m;

.field protected adD:Landroid/os/Handler;

.field private adE:Z

.field private adF:Lcom/android/common/appService/S;

.field protected adt:Lcom/android/common/appService/W;

.field protected adu:Z

.field protected adv:Z

.field protected adw:[Lcom/android/common/ui/h;

.field protected adx:Lcom/android/common/camerastate/a;

.field protected ady:Ljava/util/ArrayList;

.field protected adz:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/android/common/o/l;->adw:[Lcom/android/common/ui/h;

    .line 56
    new-instance v0, Lcom/android/common/o/m;

    invoke-direct {v0, p0, v1}, Lcom/android/common/o/m;-><init>(Lcom/android/common/o/l;Lcom/android/common/o/m;)V

    iput-object v0, p0, Lcom/android/common/o/l;->adC:Lcom/android/common/o/m;

    .line 57
    iput-object v1, p0, Lcom/android/common/o/l;->adt:Lcom/android/common/appService/W;

    .line 59
    iput-object v1, p0, Lcom/android/common/o/l;->adx:Lcom/android/common/camerastate/a;

    .line 60
    iput-object v1, p0, Lcom/android/common/o/l;->adD:Landroid/os/Handler;

    .line 62
    iput-boolean v2, p0, Lcom/android/common/o/l;->adu:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/common/o/l;->adv:Z

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/o/l;->adE:Z

    .line 66
    iput-object v1, p0, Lcom/android/common/o/l;->adA:Landroid/animation/ObjectAnimator;

    .line 67
    iput-object v1, p0, Lcom/android/common/o/l;->adz:Landroid/animation/ObjectAnimator;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    iput-object v0, p0, Lcom/android/common/o/l;->ady:Ljava/util/ArrayList;

    .line 480
    new-instance v0, Lcom/android/common/o/E;

    invoke-direct {v0, p0}, Lcom/android/common/o/E;-><init>(Lcom/android/common/o/l;)V

    iput-object v0, p0, Lcom/android/common/o/l;->adF:Lcom/android/common/appService/S;

    .line 514
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/o/l;->adB:F

    .line 74
    iput-boolean v2, p0, Lcom/android/common/o/l;->adu:Z

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/android/common/o/l;->adw:[Lcom/android/common/ui/h;

    .line 56
    new-instance v0, Lcom/android/common/o/m;

    invoke-direct {v0, p0, v1}, Lcom/android/common/o/m;-><init>(Lcom/android/common/o/l;Lcom/android/common/o/m;)V

    iput-object v0, p0, Lcom/android/common/o/l;->adC:Lcom/android/common/o/m;

    .line 57
    iput-object v1, p0, Lcom/android/common/o/l;->adt:Lcom/android/common/appService/W;

    .line 59
    iput-object v1, p0, Lcom/android/common/o/l;->adx:Lcom/android/common/camerastate/a;

    .line 60
    iput-object v1, p0, Lcom/android/common/o/l;->adD:Landroid/os/Handler;

    .line 62
    iput-boolean v3, p0, Lcom/android/common/o/l;->adu:Z

    .line 63
    iput-boolean v3, p0, Lcom/android/common/o/l;->adv:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/common/o/l;->adE:Z

    .line 66
    iput-object v1, p0, Lcom/android/common/o/l;->adA:Landroid/animation/ObjectAnimator;

    .line 67
    iput-object v1, p0, Lcom/android/common/o/l;->adz:Landroid/animation/ObjectAnimator;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    iput-object v0, p0, Lcom/android/common/o/l;->ady:Ljava/util/ArrayList;

    .line 480
    new-instance v0, Lcom/android/common/o/E;

    invoke-direct {v0, p0}, Lcom/android/common/o/E;-><init>(Lcom/android/common/o/l;)V

    iput-object v0, p0, Lcom/android/common/o/l;->adF:Lcom/android/common/appService/S;

    .line 514
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/o/l;->adB:F

    .line 70
    iput-boolean v2, p0, Lcom/android/common/o/l;->adu:Z

    .line 69
    return-void
.end method

.method private alM(Lcom/android/common/appService/O;)V
    .registers 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/common/o/l;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->ry(Lcom/android/common/appService/O;)V

    .line 198
    return-void
.end method

.method private alN()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 377
    invoke-virtual {p0}, Lcom/android/common/o/l;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_18

    .line 378
    iget-boolean v0, p0, Lcom/android/common/o/l;->adE:Z

    .line 377
    if-eqz v0, :cond_18

    .line 379
    const-string/jumbo v0, "BaseFragment"

    const-string/jumbo v1, "Ignore repeat call initAfterOpen."

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/4 v0, 0x0

    return v0

    .line 383
    :cond_18
    invoke-virtual {p0}, Lcom/android/common/o/l;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_22

    .line 384
    iput-boolean v2, p0, Lcom/android/common/o/l;->adE:Z

    .line 386
    :cond_22
    return v2
.end method

.method private alP(Lcom/android/common/appService/O;)V
    .registers 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/common/o/l;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->rz(Lcom/android/common/appService/O;)V

    .line 203
    return-void
.end method

.method static synthetic alQ(Lcom/android/common/o/l;)F
    .registers 2

    iget v0, p0, Lcom/android/common/o/l;->adB:F

    return v0
.end method

.method static synthetic alR(Lcom/android/common/o/l;F)F
    .registers 2

    iput p1, p0, Lcom/android/common/o/l;->adB:F

    return p1
.end method


# virtual methods
.method public aij(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V
    .registers 4

    .prologue
    .line 549
    return-void
.end method

.method public aik()V
    .registers 1

    .prologue
    .line 535
    return-void
.end method

.method public aiz()V
    .registers 1

    .prologue
    .line 323
    return-void
.end method

.method protected aji(IIII)V
    .registers 5

    .prologue
    .line 519
    return-void
.end method

.method protected ajt(IZ)V
    .registers 7

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/common/o/l;->adw:[Lcom/android/common/ui/h;

    if-eqz v0, :cond_14

    .line 190
    iget-object v1, p0, Lcom/android/common/o/l;->adw:[Lcom/android/common/ui/h;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_8
    if-ge v0, v2, :cond_14

    aget-object v3, v1, v0

    .line 191
    if-eqz v3, :cond_11

    .line 192
    invoke-interface {v3, p1, p2}, Lcom/android/common/ui/h;->vn(IZ)V

    .line 190
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 188
    :cond_14
    return-void
.end method

.method protected akC()V
    .registers 1

    .prologue
    .line 397
    return-void
.end method

.method public akI(ZZ)V
    .registers 3

    .prologue
    .line 553
    return-void
.end method

.method public akU(Z)V
    .registers 2

    .prologue
    .line 214
    return-void
.end method

.method protected alA()Lcom/android/common/setting/PreferenceGroup;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/common/o/l;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method protected alB(ZJJ)V
    .registers 14

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/common/o/l;->ady:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/e/h;

    .line 265
    if-eqz v0, :cond_6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 266
    invoke-interface/range {v0 .. v5}, Lcom/android/common/e/h;->ZQ(ZJJ)V

    goto :goto_6

    .line 269
    :cond_1b
    invoke-virtual {p0}, Lcom/android/common/o/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 270
    invoke-virtual {p0}, Lcom/android/common/o/l;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/common/ActivityBase;

    const/16 v2, 0x8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/common/ActivityBase;->ate(IZJJ)V

    .line 263
    :cond_2f
    return-void
.end method

.method protected alC(ZJJ)V
    .registers 14

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/common/o/l;->ady:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/e/h;

    .line 251
    if-eqz v0, :cond_6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 252
    invoke-interface/range {v0 .. v5}, Lcom/android/common/e/h;->ZP(ZJJ)V

    goto :goto_6

    .line 255
    :cond_1b
    invoke-virtual {p0}, Lcom/android/common/o/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 256
    invoke-virtual {p0}, Lcom/android/common/o/l;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/common/ActivityBase;

    const/4 v2, 0x0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/common/ActivityBase;->ate(IZJJ)V

    .line 249
    :cond_2e
    return-void
.end method

.method protected alD()F
    .registers 2

    .prologue
    .line 516
    iget v0, p0, Lcom/android/common/o/l;->adB:F

    return v0
.end method

.method protected alE(Landroid/content/SharedPreferences;)I
    .registers 4

    .prologue
    .line 309
    const-string/jumbo v0, "settingNum"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected alF([Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .registers 7

    .prologue
    .line 299
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 300
    if-nez p2, :cond_7

    return-void

    .line 301
    :cond_7
    const-string/jumbo v0, "settingNum"

    array-length v2, p1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 302
    const/4 v0, 0x0

    :goto_f
    array-length v2, p1

    if-ge v0, v2, :cond_2e

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 305
    :cond_2e
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 298
    return-void
.end method

.method public alG()V
    .registers 1

    .prologue
    .line 294
    return-void
.end method

.method protected alH(Lcom/android/common/camerastate/UIState;)V
    .registers 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/common/o/l;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v0, p1}, Lcom/android/common/camerastate/a;->amO(Lcom/android/common/camerastate/UIState;)V

    .line 354
    return-void
.end method

.method protected alI()Z
    .registers 3

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/common/o/l;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_d

    .line 369
    invoke-direct {p0}, Lcom/android/common/o/l;->alN()Z

    move-result v0

    .line 368
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected alJ()V
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/common/o/l;->adA:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_11

    .line 407
    iget-object v0, p0, Lcom/android/common/o/l;->adA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 408
    iget-object v0, p0, Lcom/android/common/o/l;->adA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 413
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/common/o/l;->adz:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_22

    .line 414
    iget-object v0, p0, Lcom/android/common/o/l;->adz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 415
    iget-object v0, p0, Lcom/android/common/o/l;->adz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 405
    :cond_22
    :goto_22
    return-void

    .line 410
    :cond_23
    iget-object v0, p0, Lcom/android/common/o/l;->adA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_11

    .line 417
    :cond_29
    iget-object v0, p0, Lcom/android/common/o/l;->adz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_22
.end method

.method protected alK()V
    .registers 4

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/common/o/l;->adz:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    .line 454
    return-void

    .line 456
    :cond_5
    invoke-virtual {p0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_2e

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/o/l;->adz:Landroid/animation/ObjectAnimator;

    .line 457
    iget-object v0, p0, Lcom/android/common/o/l;->adz:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 458
    iget-object v0, p0, Lcom/android/common/o/l;->adz:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/common/o/G;

    invoke-direct {v1, p0}, Lcom/android/common/o/G;-><init>(Lcom/android/common/o/l;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 452
    return-void

    .line 456
    nop

    :array_2e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected alL()V
    .registers 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/common/o/l;->adA:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    .line 424
    return-void

    .line 427
    :cond_5
    invoke-virtual {p0}, Lcom/android/common/o/l;->getView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_2e

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/o/l;->adA:Landroid/animation/ObjectAnimator;

    .line 428
    iget-object v0, p0, Lcom/android/common/o/l;->adA:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 429
    iget-object v0, p0, Lcom/android/common/o/l;->adA:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/common/o/F;

    invoke-direct {v1, p0}, Lcom/android/common/o/F;-><init>(Lcom/android/common/o/l;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 422
    return-void

    .line 427
    nop

    :array_2e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public alO(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 400
    return-void
.end method

.method protected alk()Lcom/android/common/camerastate/UIState;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/common/o/l;->adx:Lcom/android/common/camerastate/a;

    if-nez v0, :cond_7

    .line 360
    sget-object v0, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    return-object v0

    .line 362
    :cond_7
    iget-object v0, p0, Lcom/android/common/o/l;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amE()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    return-object v0
.end method

.method protected all()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/common/o/l;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method protected alm()I
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/common/o/l;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qv()I

    move-result v0

    return v0
.end method

.method protected aln()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/common/o/l;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method protected alo()Lcom/android/common/camerastate/DeviceState;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/common/o/l;->adx:Lcom/android/common/camerastate/a;

    if-nez v0, :cond_7

    .line 332
    sget-object v0, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    return-object v0

    .line 334
    :cond_7
    iget-object v0, p0, Lcom/android/common/o/l;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    return-object v0
.end method

.method protected alp()Lcom/android/common/camerastate/FunctionState;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/common/o/l;->adx:Lcom/android/common/camerastate/a;

    if-nez v0, :cond_7

    .line 344
    sget-object v0, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    return-object v0

    .line 346
    :cond_7
    iget-object v0, p0, Lcom/android/common/o/l;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    return-object v0
.end method

.method protected alq()V
    .registers 7

    .prologue
    const-wide/16 v2, -0x1

    .line 236
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/o/l;->alC(ZJJ)V

    .line 235
    return-void
.end method

.method protected alr()V
    .registers 7

    .prologue
    const-wide/16 v2, -0x1

    .line 243
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/o/l;->alB(ZJJ)V

    .line 242
    return-void
.end method

.method protected als(Lcom/android/common/camerastate/DeviceState;)V
    .registers 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/common/o/l;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v0, p1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 338
    return-void
.end method

.method protected alt(Lcom/android/common/camerastate/FunctionState;)V
    .registers 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/common/o/l;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v0, p1}, Lcom/android/common/camerastate/a;->amK(Lcom/android/common/camerastate/FunctionState;)V

    .line 350
    return-void
.end method

.method public alu(Lcom/android/common/e/h;)V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/common/o/l;->ady:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 224
    iget-object v0, p0, Lcom/android/common/o/l;->ady:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_d
    return-void
.end method

.method public alv(Lcom/android/common/e/h;)V
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/common/o/l;->ady:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method protected alw()Lcom/android/common/h/l;
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/common/o/l;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rU()Lcom/android/common/h/l;

    move-result-object v0

    return-object v0
.end method

.method protected alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;
    .registers 3

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/common/o/l;->alA()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/IconListPreference;

    return-object v0
.end method

.method protected aly()V
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/common/o/l;->ady:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/e/h;

    .line 276
    if-eqz v0, :cond_6

    .line 277
    invoke-interface {v0}, Lcom/android/common/e/h;->ZR()V

    goto :goto_6

    .line 274
    :cond_18
    return-void
.end method

.method protected alz()V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/common/o/l;->ady:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/e/h;

    .line 284
    if-eqz v0, :cond_6

    .line 285
    invoke-interface {v0}, Lcom/android/common/e/h;->ZS()V

    goto :goto_6

    .line 282
    :cond_18
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public mY([B)Z
    .registers 3

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public nD()Z
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public nE(II)Z
    .registers 4

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public nJ()V
    .registers 1

    .prologue
    .line 290
    return-void
.end method

.method public ny(Z)Z
    .registers 3

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 83
    iget-boolean v0, p0, Lcom/android/common/o/l;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 84
    :cond_8
    invoke-virtual {p0}, Lcom/android/common/o/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/o/l;->adt:Lcom/android/common/appService/W;

    .line 85
    invoke-virtual {p0}, Lcom/android/common/o/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->atm()Lcom/android/common/camerastate/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/o/l;->adx:Lcom/android/common/camerastate/a;

    .line 81
    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    iget-boolean v0, p0, Lcom/android/common/o/l;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 92
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/o/l;->adv:Z

    .line 89
    return-void
.end method

.method public onDetach()V
    .registers 4

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 127
    const-string/jumbo v0, "BaseFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDetach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/o/l;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-boolean v0, p0, Lcom/android/common/o/l;->adu:Z

    if-eqz v0, :cond_9

    .line 109
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 110
    return-void

    .line 113
    :cond_9
    invoke-virtual {p0}, Lcom/android/common/o/l;->alJ()V

    .line 114
    iput-object v1, p0, Lcom/android/common/o/l;->adA:Landroid/animation/ObjectAnimator;

    .line 115
    iput-object v1, p0, Lcom/android/common/o/l;->adz:Landroid/animation/ObjectAnimator;

    .line 117
    iget-object v0, p0, Lcom/android/common/o/l;->adC:Lcom/android/common/o/m;

    invoke-direct {p0, v0}, Lcom/android/common/o/l;->alP(Lcom/android/common/appService/O;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/common/o/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->atb()Lcom/android/common/appService/R;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/o/l;->adF:Lcom/android/common/appService/S;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/R;->ov(Lcom/android/common/appService/S;)V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/o/l;->adv:Z

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/o/l;->adE:Z

    .line 121
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 107
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 98
    iget-boolean v0, p0, Lcom/android/common/o/l;->adu:Z

    if-eqz v0, :cond_9

    return-void

    .line 99
    :cond_9
    iput-boolean v2, p0, Lcom/android/common/o/l;->adv:Z

    .line 100
    iget-object v0, p0, Lcom/android/common/o/l;->adC:Lcom/android/common/o/m;

    invoke-direct {p0, v0}, Lcom/android/common/o/l;->alM(Lcom/android/common/appService/O;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/common/o/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->atb()Lcom/android/common/appService/R;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/o/l;->adF:Lcom/android/common/appService/S;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/R;->ou(Lcom/android/common/appService/S;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/common/o/l;->alm()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/common/o/l;->ajt(IZ)V

    .line 96
    return-void
.end method

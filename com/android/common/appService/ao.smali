.class final Lcom/android/common/appService/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/ab;


# instance fields
.field final synthetic nq:Lcom/android/common/appService/t;


# direct methods
.method constructor <init>(Lcom/android/common/appService/t;)V
    .registers 2

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tS(IIF)V
    .registers 6

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lx(Lcom/android/common/appService/t;)Lcom/android/common/effects/e;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 465
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lx(Lcom/android/common/appService/t;)Lcom/android/common/effects/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/common/effects/e;->IK(IIF)V

    .line 467
    :cond_11
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lu(Lcom/android/common/appService/t;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 463
    return-void
.end method

.method public tT(I)V
    .registers 5

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lA(Lcom/android/common/appService/t;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 447
    return-void

    .line 449
    :cond_9
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->ly(Lcom/android/common/appService/t;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    .line 450
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    .line 451
    new-instance v1, Lcom/android/common/c/c;

    iget-object v2, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-direct {v1, v2}, Lcom/android/common/c/c;-><init>(Lcom/android/common/appService/t;)V

    .line 450
    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 445
    return-void
.end method

.method public tU()V
    .registers 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lt(Lcom/android/common/appService/t;)Lcom/android/common/ui/EffectPage;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/EffectPage;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lx(Lcom/android/common/appService/t;)Lcom/android/common/effects/e;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 474
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lx(Lcom/android/common/appService/t;)Lcom/android/common/effects/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/effects/e;->IL(Z)V

    .line 475
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lr(Lcom/android/common/appService/t;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->aw()V

    .line 471
    :cond_2a
    return-void
.end method

.method public tV()V
    .registers 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lx(Lcom/android/common/appService/t;)Lcom/android/common/effects/e;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 482
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lx(Lcom/android/common/appService/t;)Lcom/android/common/effects/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/effects/e;->IL(Z)V

    .line 483
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lr(Lcom/android/common/appService/t;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->aw()V

    .line 480
    :cond_1f
    return-void
.end method

.method public tW()V
    .registers 3

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lx(Lcom/android/common/appService/t;)Lcom/android/common/effects/e;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 490
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lx(Lcom/android/common/appService/t;)Lcom/android/common/effects/e;

    move-result-object v0

    sget-object v1, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->Mp:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    invoke-virtual {v0, v1}, Lcom/android/common/effects/e;->IM(Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;)V

    .line 488
    :cond_13
    return-void
.end method

.method public tX(IIF)V
    .registers 6

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lx(Lcom/android/common/appService/t;)Lcom/android/common/effects/e;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 457
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lx(Lcom/android/common/appService/t;)Lcom/android/common/effects/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/common/effects/e;->IJ(IIF)V

    .line 459
    :cond_11
    iget-object v0, p0, Lcom/android/common/appService/ao;->nq:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lu(Lcom/android/common/appService/t;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 455
    return-void
.end method

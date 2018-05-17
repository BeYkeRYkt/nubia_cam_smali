.class final Lcom/android/multiexposure/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/multiexposure/m;


# instance fields
.field final synthetic arx:Lcom/android/multiexposure/o;


# direct methods
.method constructor <init>(Lcom/android/multiexposure/o;)V
    .registers 2

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aCu(ILandroid/graphics/Bitmap;I)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 595
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDv(Lcom/android/multiexposure/o;)Lcom/android/common/appService/W;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 596
    :cond_b
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDv(Lcom/android/multiexposure/o;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->se(Z)V

    .line 597
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0, p1}, Lcom/android/multiexposure/o;->aDF(Lcom/android/multiexposure/o;I)V

    .line 598
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDD(Lcom/android/multiexposure/o;)V

    .line 599
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0, p1, p2}, Lcom/android/multiexposure/o;->aDE(Lcom/android/multiexposure/o;ILandroid/graphics/Bitmap;)V

    .line 600
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDr(Lcom/android/multiexposure/o;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    .line 601
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDo(Lcom/android/multiexposure/o;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    .line 602
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDp(Lcom/android/multiexposure/o;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    .line 604
    :cond_3e
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-virtual {v0, v2}, Lcom/android/multiexposure/o;->aCE(Z)V

    .line 605
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 594
    return-void
.end method

.method public aCv(Z)V
    .registers 4

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDq(Lcom/android/multiexposure/o;)Lcom/android/common/ui/ZtemtSlidingDrawer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtSlidingDrawer;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDy(Lcom/android/multiexposure/o;)V

    .line 587
    if-eqz p1, :cond_1b

    .line 588
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDl(Lcom/android/multiexposure/o;)Lcom/android/common/appService/W;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 584
    :cond_1b
    return-void
.end method

.method public aCw(Z)V
    .registers 5

    .prologue
    const/16 v2, 0x3ec

    const/4 v1, 0x1

    .line 610
    if-eqz p1, :cond_20

    .line 611
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDn(Lcom/android/multiexposure/o;)Lcom/android/multiexposure/p;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/multiexposure/p;->removeMessages(I)V

    .line 612
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/o;->aDj(Z)V

    .line 613
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->ht()V

    .line 614
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0, v1}, Lcom/android/multiexposure/o;->aDt(Lcom/android/multiexposure/o;Z)Z

    .line 609
    :goto_1f
    return-void

    .line 616
    :cond_20
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 617
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/multiexposure/o;->aDt(Lcom/android/multiexposure/o;Z)Z

    .line 618
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDn(Lcom/android/multiexposure/o;)Lcom/android/multiexposure/p;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/multiexposure/p;->sendEmptyMessage(I)Z

    goto :goto_1f
.end method

.method public aCx([BLandroid/net/Uri;)V
    .registers 7

    .prologue
    const/16 v2, 0x13

    const/4 v0, 0x0

    .line 553
    iget-object v1, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v1}, Lcom/android/multiexposure/o;->aDv(Lcom/android/multiexposure/o;)Lcom/android/common/appService/W;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-virtual {v1}, Lcom/android/multiexposure/o;->aCF()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_3f

    .line 554
    :cond_17
    const-string/jumbo v1, "MultiExposureFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onImageSaveDone mAppService.getHandler() == null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v3}, Lcom/android/multiexposure/o;->aDl(Lcom/android/multiexposure/o;)Lcom/android/common/appService/W;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_33

    const/4 v0, 0x1

    :cond_33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    return-void

    .line 558
    :cond_3f
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDv(Lcom/android/multiexposure/o;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 559
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-virtual {v0}, Lcom/android/multiexposure/o;->aCF()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->pD([B)V

    .line 560
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDr(Lcom/android/multiexposure/o;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_63

    .line 561
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0, p1}, Lcom/android/multiexposure/o;->aDG(Lcom/android/multiexposure/o;[B)V

    .line 565
    :goto_62
    return-void

    .line 563
    :cond_63
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-virtual {v0}, Lcom/android/multiexposure/o;->aCF()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pE()V

    goto :goto_62

    .line 568
    :cond_6d
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDz(Lcom/android/multiexposure/o;)V

    .line 569
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-virtual {v0}, Lcom/android/multiexposure/o;->aCF()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 570
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    iget-object v0, v0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    instance-of v0, v0, Lcom/android/multiexposure/k;

    if-eqz v0, :cond_9d

    .line 571
    const-string/jumbo v0, "MultiExposureFragment"

    const-string/jumbo v1, "play animation for alphaMultiExoposure!"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDv(Lcom/android/multiexposure/o;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 574
    :cond_9d
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDB(Lcom/android/multiexposure/o;)V

    .line 575
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 576
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDr(Lcom/android/multiexposure/o;)I

    move-result v0

    if-lez v0, :cond_ef

    .line 577
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-virtual {v0}, Lcom/android/multiexposure/o;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "multiexposure_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v2}, Lcom/android/multiexposure/o;->aDr(Lcom/android/multiexposure/o;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v3}, Lcom/android/multiexposure/o;->aDr(Lcom/android/multiexposure/o;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_ee
    :goto_ee
    return-void

    .line 578
    :cond_ef
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDr(Lcom/android/multiexposure/o;)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_ee

    .line 579
    iget-object v0, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-virtual {v0}, Lcom/android/multiexposure/o;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "multiexposure_6"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/multiexposure/v;->arx:Lcom/android/multiexposure/o;

    invoke-static {v3}, Lcom/android/multiexposure/o;->aDr(Lcom/android/multiexposure/o;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ee
.end method

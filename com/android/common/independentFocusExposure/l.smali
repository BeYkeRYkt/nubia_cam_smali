.class Lcom/android/common/independentFocusExposure/l;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic fa:Lcom/android/common/independentFocusExposure/i;


# direct methods
.method private constructor <init>(Lcom/android/common/independentFocusExposure/i;)V
    .registers 2

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/independentFocusExposure/i;Lcom/android/common/independentFocusExposure/l;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/independentFocusExposure/l;-><init>(Lcom/android/common/independentFocusExposure/i;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 516
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_116

    .line 515
    :cond_a
    :goto_a
    return-void

    .line 519
    :sswitch_b
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/i;->fA(Lcom/android/common/independentFocusExposure/i;)Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    move-result-object v0

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eW:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    if-ne v0, v1, :cond_16

    .line 520
    return-void

    .line 522
    :cond_16
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    iget-object v0, v0, Lcom/android/common/independentFocusExposure/i;->ea:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 524
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/i;->fz(Lcom/android/common/independentFocusExposure/i;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 525
    const-wide/16 v2, 0xc8

    .line 524
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    invoke-static {v1}, Lcom/android/common/independentFocusExposure/i;->fx(Lcom/android/common/independentFocusExposure/i;)Ljava/lang/Runnable;

    move-result-object v1

    .line 524
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 527
    const-string/jumbo v0, "CameraFocusService"

    const-string/jumbo v1, "FS -- 99 start"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    invoke-static {v0, v4}, Lcom/android/common/independentFocusExposure/i;->fD(Lcom/android/common/independentFocusExposure/i;Z)Z

    .line 529
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    invoke-static {v0, v4}, Lcom/android/common/independentFocusExposure/i;->fE(Lcom/android/common/independentFocusExposure/i;Z)Z

    goto :goto_a

    .line 532
    :sswitch_5a
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    iget-object v0, v0, Lcom/android/common/independentFocusExposure/i;->ea:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_a

    .line 535
    :sswitch_62
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    iget-object v0, v0, Lcom/android/common/independentFocusExposure/i;->eb:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_a

    .line 538
    :sswitch_6a
    const-string/jumbo v0, "CameraFocusService"

    const-string/jumbo v1, "MESSAGE_SET_MODE_CAF"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eT:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    invoke-static {v0, v1}, Lcom/android/common/independentFocusExposure/i;->fC(Lcom/android/common/independentFocusExposure/i;Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;)Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 540
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    iget-object v0, v0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->pU(I)V

    .line 541
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/common/independentFocusExposure/i;->fE(Lcom/android/common/independentFocusExposure/i;Z)Z

    goto :goto_a

    .line 544
    :sswitch_88
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    iget-object v0, v0, Lcom/android/common/independentFocusExposure/i;->ea:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto/16 :goto_a

    .line 547
    :sswitch_91
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    iget-object v0, v0, Lcom/android/common/independentFocusExposure/i;->ea:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_a

    .line 550
    :sswitch_9a
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/i;->fH(Lcom/android/common/independentFocusExposure/i;)V

    .line 551
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/i;->fB(Lcom/android/common/independentFocusExposure/i;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_a

    .line 554
    :sswitch_ac
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/i;->fG(Lcom/android/common/independentFocusExposure/i;)V

    .line 555
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/i;->fB(Lcom/android/common/independentFocusExposure/i;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_a

    .line 558
    :sswitch_be
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    invoke-virtual {v0, v4}, Lcom/android/common/independentFocusExposure/i;->fo(I)V

    goto/16 :goto_a

    .line 561
    :sswitch_c5
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/i;->fF(Lcom/android/common/independentFocusExposure/i;)V

    goto/16 :goto_a

    .line 565
    :sswitch_cc
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eT:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    invoke-static {v0, v1}, Lcom/android/common/independentFocusExposure/i;->fC(Lcom/android/common/independentFocusExposure/i;Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;)Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    .line 566
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    iget-object v0, v0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_a

    .line 567
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    iget-object v0, v0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->pU(I)V

    goto/16 :goto_a

    .line 572
    :sswitch_ec
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/i;->fy(Lcom/android/common/independentFocusExposure/i;)Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 573
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/i;->fy(Lcom/android/common/independentFocusExposure/i;)Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    iget-object v0, v0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cA()V

    .line 575
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/l;->fa:Lcom/android/common/independentFocusExposure/i;

    iget-object v0, v0, Lcom/android/common/independentFocusExposure/i;->dV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->gk()V

    goto/16 :goto_a

    .line 516
    :sswitch_data_116
    .sparse-switch
        0x1f -> :sswitch_c5
        0x62 -> :sswitch_be
        0x63 -> :sswitch_b
        0x65 -> :sswitch_5a
        0x66 -> :sswitch_62
        0x67 -> :sswitch_6a
        0x69 -> :sswitch_88
        0x6a -> :sswitch_91
        0x6b -> :sswitch_9a
        0x6c -> :sswitch_ac
        0x6d -> :sswitch_cc
        0x6e -> :sswitch_ec
    .end sparse-switch
.end method

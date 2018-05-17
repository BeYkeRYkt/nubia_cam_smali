.class Lcom/android/common/independentFocusExposure/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic dS:Lcom/android/common/independentFocusExposure/a;


# direct methods
.method private constructor <init>(Lcom/android/common/independentFocusExposure/a;)V
    .registers 2

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/e;->dS:Lcom/android/common/independentFocusExposure/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/independentFocusExposure/a;Lcom/android/common/independentFocusExposure/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/independentFocusExposure/e;-><init>(Lcom/android/common/independentFocusExposure/a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 570
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_58

    .line 569
    :goto_7
    :pswitch_7
    return-void

    .line 572
    :pswitch_8
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/e;->dS:Lcom/android/common/independentFocusExposure/a;

    iget-object v0, v0, Lcom/android/common/independentFocusExposure/a;->cO:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 573
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/e;->dS:Lcom/android/common/independentFocusExposure/a;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/a;->dn(Lcom/android/common/independentFocusExposure/a;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 574
    const-wide/16 v2, 0xc8

    .line 573
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/e;->dS:Lcom/android/common/independentFocusExposure/a;

    invoke-static {v1}, Lcom/android/common/independentFocusExposure/a;->dm(Lcom/android/common/independentFocusExposure/a;)Ljava/lang/Runnable;

    move-result-object v1

    .line 573
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 576
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/e;->dS:Lcom/android/common/independentFocusExposure/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/independentFocusExposure/a;->du(Lcom/android/common/independentFocusExposure/a;Z)Z

    goto :goto_7

    .line 579
    :pswitch_3f
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/e;->dS:Lcom/android/common/independentFocusExposure/a;

    iget-object v0, v0, Lcom/android/common/independentFocusExposure/a;->cO:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_7

    .line 582
    :pswitch_47
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/e;->dS:Lcom/android/common/independentFocusExposure/a;

    iget-object v0, v0, Lcom/android/common/independentFocusExposure/a;->cP:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_7

    .line 585
    :pswitch_4f
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/e;->dS:Lcom/android/common/independentFocusExposure/a;

    iget-object v0, v0, Lcom/android/common/independentFocusExposure/a;->dd:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_7

    .line 570
    nop

    :pswitch_data_58
    .packed-switch 0x63
        :pswitch_8
        :pswitch_7
        :pswitch_3f
        :pswitch_47
        :pswitch_7
        :pswitch_4f
    .end packed-switch
.end method

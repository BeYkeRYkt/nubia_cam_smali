.class Lcom/android/common/independentFocusExposure/s;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic gs:Lcom/android/common/independentFocusExposure/o;


# direct methods
.method private constructor <init>(Lcom/android/common/independentFocusExposure/o;)V
    .registers 2

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/s;->gs:Lcom/android/common/independentFocusExposure/o;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/independentFocusExposure/o;Lcom/android/common/independentFocusExposure/s;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/independentFocusExposure/s;-><init>(Lcom/android/common/independentFocusExposure/o;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 732
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_76

    .line 731
    :goto_8
    :pswitch_8
    return-void

    .line 734
    :pswitch_9
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/s;->gs:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/o;->hf(Lcom/android/common/independentFocusExposure/o;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 735
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/s;->gs:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/o;->gV(Lcom/android/common/independentFocusExposure/o;)Lcom/android/common/independentFocusExposure/MwbIndicatorView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/s;->gs:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/o;->gM(Lcom/android/common/independentFocusExposure/o;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 737
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/s;->gs:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/o;->gW(Lcom/android/common/independentFocusExposure/o;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 738
    const-wide/16 v2, 0xc8

    .line 737
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/s;->gs:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v1}, Lcom/android/common/independentFocusExposure/o;->gQ(Lcom/android/common/independentFocusExposure/o;)Ljava/lang/Runnable;

    move-result-object v1

    .line 737
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 740
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/s;->gs:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0, v4}, Lcom/android/common/independentFocusExposure/o;->hd(Lcom/android/common/independentFocusExposure/o;Z)Z

    goto :goto_8

    .line 742
    :cond_52
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/s;->gs:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/o;->gM(Lcom/android/common/independentFocusExposure/o;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_8

    .line 746
    :pswitch_5c
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/s;->gs:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/o;->gM(Lcom/android/common/independentFocusExposure/o;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_8

    .line 749
    :pswitch_66
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/s;->gs:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/o;->gN(Lcom/android/common/independentFocusExposure/o;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_8

    .line 752
    :pswitch_70
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/s;->gs:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0, v4}, Lcom/android/common/independentFocusExposure/o;->hc(Lcom/android/common/independentFocusExposure/o;Z)Z

    goto :goto_8

    .line 732
    :pswitch_data_76
    .packed-switch 0x63
        :pswitch_9
        :pswitch_8
        :pswitch_5c
        :pswitch_66
        :pswitch_70
    .end packed-switch
.end method

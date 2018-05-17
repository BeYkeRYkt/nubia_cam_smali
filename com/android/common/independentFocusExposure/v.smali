.class final Lcom/android/common/independentFocusExposure/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic gz:Lcom/android/common/independentFocusExposure/i;


# direct methods
.method constructor <init>(Lcom/android/common/independentFocusExposure/i;)V
    .registers 2

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/v;->gz:Lcom/android/common/independentFocusExposure/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 687
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/v;->gz:Lcom/android/common/independentFocusExposure/i;

    iget-object v0, v0, Lcom/android/common/independentFocusExposure/i;->eb:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 683
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 679
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 675
    return-void
.end method

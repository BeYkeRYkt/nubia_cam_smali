.class final Lcom/android/common/independentFocusExposure/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic gy:Lcom/android/common/independentFocusExposure/a;


# direct methods
.method constructor <init>(Lcom/android/common/independentFocusExposure/a;)V
    .registers 2

    .prologue
    .line 679
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/u;->gy:Lcom/android/common/independentFocusExposure/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 693
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/u;->gy:Lcom/android/common/independentFocusExposure/a;

    iget-object v0, v0, Lcom/android/common/independentFocusExposure/a;->cP:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 689
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 685
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 681
    return-void
.end method

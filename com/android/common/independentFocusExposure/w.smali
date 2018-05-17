.class final Lcom/android/common/independentFocusExposure/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic gA:Lcom/android/common/independentFocusExposure/o;


# direct methods
.method constructor <init>(Lcom/android/common/independentFocusExposure/o;)V
    .registers 2

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/w;->gA:Lcom/android/common/independentFocusExposure/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 187
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/w;->gA:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/o;->gN(Lcom/android/common/independentFocusExposure/o;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 183
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 179
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 175
    return-void
.end method

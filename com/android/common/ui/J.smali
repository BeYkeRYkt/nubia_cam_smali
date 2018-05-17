.class public Lcom/android/common/ui/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private vV:Landroid/animation/AnimatorSet;

.field private vW:Z

.field private vX:Lcom/android/common/ui/K;

.field private vY:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>([Ljava/lang/Object;Ljava/lang/String;FFJ)V
    .registers 16

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/J;->vW:Z

    .line 34
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/J;->vV:Landroid/animation/AnimatorSet;

    .line 35
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/J;->vY:Landroid/animation/AnimatorSet;

    .line 36
    array-length v0, p1

    .line 37
    const/4 v1, 0x0

    .line 38
    new-array v2, v0, [Landroid/animation/ObjectAnimator;

    .line 39
    new-array v3, v0, [Landroid/animation/ObjectAnimator;

    .line 40
    const/4 v0, 0x0

    array-length v4, p1

    :goto_1c
    if-ge v0, v4, :cond_43

    aget-object v5, p1, v0

    .line 41
    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput p3, v6, v7

    const/4 v7, 0x1

    aput p4, v6, v7

    invoke-static {v5, p2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v1

    .line 42
    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput p4, v6, v7

    const/4 v7, 0x1

    aput p3, v6, v7

    invoke-static {v5, p2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 45
    :cond_43
    iget-object v0, p0, Lcom/android/common/ui/J;->vV:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p5, p6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 46
    iget-object v0, p0, Lcom/android/common/ui/J;->vY:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p5, p6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 47
    iget-object v0, p0, Lcom/android/common/ui/J;->vV:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/common/ui/aT;

    invoke-direct {v1, p0}, Lcom/android/common/ui/aT;-><init>(Lcom/android/common/ui/J;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/common/ui/J;->vY:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/common/ui/aU;

    invoke-direct {v1, p0}, Lcom/android/common/ui/aU;-><init>(Lcom/android/common/ui/J;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/common/ui/J;->vV:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 82
    iget-object v0, p0, Lcom/android/common/ui/J;->vY:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 83
    iget-object v0, p0, Lcom/android/common/ui/J;->vV:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 84
    iget-object v0, p0, Lcom/android/common/ui/J;->vY:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/J;->vW:Z

    .line 33
    return-void
.end method

.method static synthetic Al(Lcom/android/common/ui/J;)Lcom/android/common/ui/K;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/J;->vX:Lcom/android/common/ui/K;

    return-object v0
.end method


# virtual methods
.method public Aj(Lcom/android/common/ui/K;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/common/ui/J;->vX:Lcom/android/common/ui/K;

    .line 29
    return-void
.end method

.method public Ak()V
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/common/ui/J;->vW:Z

    if-nez v0, :cond_5

    return-void

    .line 96
    :cond_5
    iget-object v0, p0, Lcom/android/common/ui/J;->vY:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 97
    iget-object v0, p0, Lcom/android/common/ui/J;->vY:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 94
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/J;->vW:Z

    .line 102
    iget-object v0, p0, Lcom/android/common/ui/J;->vV:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 103
    iget-object v0, p0, Lcom/android/common/ui/J;->vV:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 105
    :cond_11
    iget-object v0, p0, Lcom/android/common/ui/J;->vY:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 106
    iget-object v0, p0, Lcom/android/common/ui/J;->vY:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 108
    :cond_1e
    iget-object v0, p0, Lcom/android/common/ui/J;->vY:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 109
    iput-object v1, p0, Lcom/android/common/ui/J;->vY:Landroid/animation/AnimatorSet;

    .line 110
    iget-object v0, p0, Lcom/android/common/ui/J;->vV:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 111
    iput-object v1, p0, Lcom/android/common/ui/J;->vV:Landroid/animation/AnimatorSet;

    .line 100
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/common/ui/J;->vW:Z

    if-nez v0, :cond_5

    return-void

    .line 90
    :cond_5
    iget-object v0, p0, Lcom/android/common/ui/J;->vV:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 91
    iget-object v0, p0, Lcom/android/common/ui/J;->vV:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 88
    return-void
.end method

.class final Lcom/android/common/ui/aU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic Ec:Lcom/android/common/ui/J;


# direct methods
.method constructor <init>(Lcom/android/common/ui/J;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/common/ui/aU;->Ec:Lcom/android/common/ui/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 78
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/common/ui/aU;->Ec:Lcom/android/common/ui/J;

    invoke-static {v0}, Lcom/android/common/ui/J;->Al(Lcom/android/common/ui/J;)Lcom/android/common/ui/K;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 74
    iget-object v0, p0, Lcom/android/common/ui/aU;->Ec:Lcom/android/common/ui/J;

    invoke-static {v0}, Lcom/android/common/ui/J;->Al(Lcom/android/common/ui/J;)Lcom/android/common/ui/K;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/common/ui/K;->Am(Z)V

    .line 72
    :cond_12
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 69
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 66
    return-void
.end method

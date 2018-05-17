.class final Lcom/android/common/o/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic aeC:Lcom/android/common/o/a;


# direct methods
.method constructor <init>(Lcom/android/common/o/a;)V
    .registers 2

    .prologue
    .line 2398
    iput-object p1, p0, Lcom/android/common/o/A;->aeC:Lcom/android/common/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 2414
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 2410
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 2406
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/android/common/o/A;->aeC:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajI(Lcom/android/common/o/a;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2401
    return-void
.end method

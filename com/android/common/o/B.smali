.class final Lcom/android/common/o/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic aeD:Lcom/android/common/o/a;


# direct methods
.method constructor <init>(Lcom/android/common/o/a;)V
    .registers 2

    .prologue
    .line 2419
    iput-object p1, p0, Lcom/android/common/o/B;->aeD:Lcom/android/common/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 2435
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/android/common/o/B;->aeD:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajP(Lcom/android/common/o/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2430
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 2426
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 2422
    return-void
.end method

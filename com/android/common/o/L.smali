.class final Lcom/android/common/o/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic aeN:Lcom/android/common/o/p;


# direct methods
.method constructor <init>(Lcom/android/common/o/p;)V
    .registers 2

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/common/o/L;->aeN:Lcom/android/common/o/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 274
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/common/o/L;->aeN:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->aml(Lcom/android/common/o/p;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 269
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 264
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 260
    return-void
.end method

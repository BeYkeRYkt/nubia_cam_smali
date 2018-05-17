.class final Lcom/android/common/o/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic aeW:Lcom/android/common/o/p;


# direct methods
.method constructor <init>(Lcom/android/common/o/p;)V
    .registers 2

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/common/o/U;->aeW:Lcom/android/common/o/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 549
    invoke-static {}, Lcom/android/common/o/p;->ami()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAnimationCancel"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/common/o/U;->aeW:Lcom/android/common/o/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/o/p;->amx(Lcom/android/common/o/p;Z)Z

    .line 548
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 544
    invoke-static {}, Lcom/android/common/o/p;->ami()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/android/common/o/U;->aeW:Lcom/android/common/o/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/o/p;->amx(Lcom/android/common/o/p;Z)Z

    .line 543
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 540
    invoke-static {}, Lcom/android/common/o/p;->ami()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAnimationRepeat"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 535
    invoke-static {}, Lcom/android/common/o/p;->ami()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAnimationStart"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/android/common/o/U;->aeW:Lcom/android/common/o/p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/common/o/p;->amx(Lcom/android/common/o/p;Z)Z

    .line 534
    return-void
.end method

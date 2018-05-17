.class final Lcom/android/gallery3d/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private awW:Z

.field final synthetic awX:Lcom/android/gallery3d/ui/j;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/j;)V
    .registers 3

    .prologue
    .line 1930
    iput-object p1, p0, Lcom/android/gallery3d/ui/w;->awX:Lcom/android/gallery3d/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1931
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/w;->awW:Z

    .line 1930
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 1947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/w;->awW:Z

    .line 1946
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 1939
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/w;->awW:Z

    if-nez v0, :cond_9

    .line 1940
    iget-object v0, p0, Lcom/android/gallery3d/ui/w;->awX:Lcom/android/gallery3d/ui/j;

    invoke-static {v0}, Lcom/android/gallery3d/ui/j;->aLy(Lcom/android/gallery3d/ui/j;)V

    .line 1942
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/ui/w;->awX:Lcom/android/gallery3d/ui/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/j;->aLq(Lcom/android/gallery3d/ui/j;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1938
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 1951
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 1933
    return-void
.end method

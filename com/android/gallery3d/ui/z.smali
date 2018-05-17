.class final Lcom/android/gallery3d/ui/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic axa:Lcom/android/gallery3d/ui/l;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/l;)V
    .registers 2

    .prologue
    .line 2274
    iput-object p1, p0, Lcom/android/gallery3d/ui/z;->axa:Lcom/android/gallery3d/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 2276
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/gallery3d/ui/z;->axa:Lcom/android/gallery3d/ui/l;

    invoke-static {v0}, Lcom/android/gallery3d/ui/l;->aLK(Lcom/android/gallery3d/ui/l;)Lcom/android/gallery3d/ui/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/m;->aLM()V

    .line 2281
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 2286
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 2291
    return-void
.end method

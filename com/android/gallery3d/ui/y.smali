.class final Lcom/android/gallery3d/ui/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic awZ:Lcom/android/gallery3d/ui/l;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/l;)V
    .registers 2

    .prologue
    .line 2266
    iput-object p1, p0, Lcom/android/gallery3d/ui/y;->awZ:Lcom/android/gallery3d/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/android/gallery3d/ui/y;->awZ:Lcom/android/gallery3d/ui/l;

    invoke-static {v0}, Lcom/android/gallery3d/ui/l;->aLK(Lcom/android/gallery3d/ui/l;)Lcom/android/gallery3d/ui/m;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/gallery3d/ui/m;->aLN(II)V

    .line 2268
    return-void
.end method

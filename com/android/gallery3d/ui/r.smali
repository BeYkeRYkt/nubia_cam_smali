.class final Lcom/android/gallery3d/ui/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic awH:Lcom/android/gallery3d/ui/j;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/j;)V
    .registers 2

    .prologue
    .line 1716
    iput-object p1, p0, Lcom/android/gallery3d/ui/r;->awH:Lcom/android/gallery3d/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/android/gallery3d/ui/r;->awH:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_e

    .line 1720
    return-void

    .line 1722
    :cond_e
    iget-object v0, p0, Lcom/android/gallery3d/ui/r;->awH:Lcom/android/gallery3d/ui/j;

    iget-object v1, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJT(Lcom/android/gallery3d/ui/FilmStripView;F)F

    .line 1723
    iget-object v0, p0, Lcom/android/gallery3d/ui/r;->awH:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->invalidate()V

    .line 1718
    return-void
.end method

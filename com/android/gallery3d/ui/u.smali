.class final Lcom/android/gallery3d/ui/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic awR:Lcom/android/gallery3d/ui/j;

.field final synthetic awS:Landroid/animation/ValueAnimator;

.field final synthetic awT:Landroid/animation/ValueAnimator;

.field final synthetic awU:Lcom/android/gallery3d/ui/i;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/j;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Lcom/android/gallery3d/ui/i;)V
    .registers 5

    .prologue
    .line 1910
    iput-object p1, p0, Lcom/android/gallery3d/ui/u;->awR:Lcom/android/gallery3d/ui/j;

    iput-object p2, p0, Lcom/android/gallery3d/ui/u;->awS:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/gallery3d/ui/u;->awT:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/android/gallery3d/ui/u;->awU:Lcom/android/gallery3d/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/gallery3d/ui/u;->awS:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1914
    iget-object v0, p0, Lcom/android/gallery3d/ui/u;->awT:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1916
    iget-object v0, p0, Lcom/android/gallery3d/ui/u;->awU:Lcom/android/gallery3d/ui/i;

    iget-object v3, p0, Lcom/android/gallery3d/ui/u;->awR:Lcom/android/gallery3d/ui/j;

    iget-object v3, v3, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v3

    .line 1917
    iget-object v4, p0, Lcom/android/gallery3d/ui/u;->awR:Lcom/android/gallery3d/ui/j;

    iget-object v4, v4, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/u;->awR:Lcom/android/gallery3d/ui/j;

    iget-object v5, v5, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/gallery3d/ui/FilmStripView;->aJF(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/ui/u;->awR:Lcom/android/gallery3d/ui/j;

    iget-object v6, v6, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/gallery3d/ui/FilmStripView;->aJF(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 1916
    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/i;->aKP(FFFFII)V

    .line 1912
    return-void
.end method

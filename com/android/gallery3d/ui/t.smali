.class final Lcom/android/gallery3d/ui/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic awN:Lcom/android/gallery3d/ui/j;

.field final synthetic awO:Lcom/android/gallery3d/ui/i;

.field final synthetic awP:F

.field final synthetic awQ:F


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/j;Lcom/android/gallery3d/ui/i;FF)V
    .registers 5

    .prologue
    .line 1814
    iput-object p1, p0, Lcom/android/gallery3d/ui/t;->awN:Lcom/android/gallery3d/ui/j;

    iput-object p2, p0, Lcom/android/gallery3d/ui/t;->awO:Lcom/android/gallery3d/ui/i;

    iput p3, p0, Lcom/android/gallery3d/ui/t;->awP:F

    iput p4, p0, Lcom/android/gallery3d/ui/t;->awQ:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    .prologue
    .line 1817
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1818
    iget-object v1, p0, Lcom/android/gallery3d/ui/t;->awN:Lcom/android/gallery3d/ui/j;

    iget-object v1, v1, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v1

    div-float v3, v0, v1

    .line 1819
    iget-object v1, p0, Lcom/android/gallery3d/ui/t;->awN:Lcom/android/gallery3d/ui/j;

    iget-object v1, v1, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJT(Lcom/android/gallery3d/ui/FilmStripView;F)F

    .line 1820
    iget-object v0, p0, Lcom/android/gallery3d/ui/t;->awO:Lcom/android/gallery3d/ui/i;

    iget v1, p0, Lcom/android/gallery3d/ui/t;->awP:F

    iget v2, p0, Lcom/android/gallery3d/ui/t;->awQ:F

    iget-object v4, p0, Lcom/android/gallery3d/ui/t;->awN:Lcom/android/gallery3d/ui/j;

    iget-object v4, v4, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/gallery3d/ui/FilmStripView;->aJF(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1821
    iget-object v5, p0, Lcom/android/gallery3d/ui/t;->awN:Lcom/android/gallery3d/ui/j;

    iget-object v5, v5, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/gallery3d/ui/FilmStripView;->aJF(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1820
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/i;->aKI(FFFII)V

    .line 1816
    return-void
.end method

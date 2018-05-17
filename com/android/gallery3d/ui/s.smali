.class final Lcom/android/gallery3d/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic awI:Lcom/android/gallery3d/ui/j;

.field final synthetic awJ:F

.field final synthetic awK:Lcom/android/gallery3d/ui/i;

.field final synthetic awL:F

.field final synthetic awM:F


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/j;FLcom/android/gallery3d/ui/i;FF)V
    .registers 6

    .prologue
    .line 1773
    iput-object p1, p0, Lcom/android/gallery3d/ui/s;->awI:Lcom/android/gallery3d/ui/j;

    iput p2, p0, Lcom/android/gallery3d/ui/s;->awJ:F

    iput-object p3, p0, Lcom/android/gallery3d/ui/s;->awK:Lcom/android/gallery3d/ui/i;

    iput p4, p0, Lcom/android/gallery3d/ui/s;->awL:F

    iput p5, p0, Lcom/android/gallery3d/ui/s;->awM:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 1804
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->awI:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/ui/s;->awJ:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_43

    .line 1788
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->awK:Lcom/android/gallery3d/ui/i;

    iget v1, p0, Lcom/android/gallery3d/ui/s;->awL:F

    iget v2, p0, Lcom/android/gallery3d/ui/s;->awM:F

    iget v3, p0, Lcom/android/gallery3d/ui/s;->awJ:F

    iget-object v4, p0, Lcom/android/gallery3d/ui/s;->awI:Lcom/android/gallery3d/ui/j;

    iget-object v4, v4, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/gallery3d/ui/s;->awI:Lcom/android/gallery3d/ui/j;

    iget-object v4, v4, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/gallery3d/ui/FilmStripView;->aJF(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1789
    iget-object v5, p0, Lcom/android/gallery3d/ui/s;->awI:Lcom/android/gallery3d/ui/j;

    iget-object v5, v5, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/gallery3d/ui/FilmStripView;->aJF(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1788
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/i;->aKI(FFFII)V

    .line 1790
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->awI:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    iget v1, p0, Lcom/android/gallery3d/ui/s;->awJ:F

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJT(Lcom/android/gallery3d/ui/FilmStripView;F)F

    .line 1793
    :cond_43
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->awI:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_70

    .line 1794
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->awI:Lcom/android/gallery3d/ui/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/j;->aLz(Lcom/android/gallery3d/ui/j;Z)V

    .line 1795
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->awI:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJN(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/a;->setVisibility(I)V

    .line 1796
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->awK:Lcom/android/gallery3d/ui/i;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKJ()V

    .line 1800
    :goto_69
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->awI:Lcom/android/gallery3d/ui/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/j;->aLr(Lcom/android/gallery3d/ui/j;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1784
    return-void

    .line 1798
    :cond_70
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->awI:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/ui/j;->aLy(Lcom/android/gallery3d/ui/j;)V

    goto :goto_69
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 1809
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->awI:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    .line 1777
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->awI:Lcom/android/gallery3d/ui/j;

    invoke-static {v0}, Lcom/android/gallery3d/ui/j;->aLw(Lcom/android/gallery3d/ui/j;)V

    .line 1778
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->awI:Lcom/android/gallery3d/ui/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/j;->aLz(Lcom/android/gallery3d/ui/j;Z)V

    .line 1780
    :cond_19
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->awI:Lcom/android/gallery3d/ui/j;

    invoke-static {v0}, Lcom/android/gallery3d/ui/j;->aLu(Lcom/android/gallery3d/ui/j;)V

    .line 1775
    return-void
.end method

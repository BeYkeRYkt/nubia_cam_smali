.class final Lcom/android/gallery3d/ui/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic axc:Lcom/android/gallery3d/ui/FilmStripView;

.field final synthetic axd:Lcom/android/gallery3d/a/g;

.field final synthetic axe:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/FilmStripView;Lcom/android/gallery3d/a/g;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/android/gallery3d/ui/B;->axc:Lcom/android/gallery3d/ui/FilmStripView;

    iput-object p2, p0, Lcom/android/gallery3d/ui/B;->axd:Lcom/android/gallery3d/a/g;

    iput-object p3, p0, Lcom/android/gallery3d/ui/B;->axe:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/gallery3d/ui/B;->axc:Lcom/android/gallery3d/ui/FilmStripView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJQ(Lcom/android/gallery3d/ui/FilmStripView;Z)Z

    .line 1312
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/gallery3d/ui/B;->axc:Lcom/android/gallery3d/ui/FilmStripView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/B;->axd:Lcom/android/gallery3d/a/g;

    iget-object v2, p0, Lcom/android/gallery3d/ui/B;->axe:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJY(Lcom/android/gallery3d/ui/FilmStripView;Lcom/android/gallery3d/a/g;Landroid/view/View;)V

    .line 1308
    iget-object v0, p0, Lcom/android/gallery3d/ui/B;->axc:Lcom/android/gallery3d/ui/FilmStripView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJQ(Lcom/android/gallery3d/ui/FilmStripView;Z)Z

    .line 1306
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 1317
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 1301
    return-void
.end method

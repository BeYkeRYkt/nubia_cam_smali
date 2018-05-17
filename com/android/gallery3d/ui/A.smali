.class final Lcom/android/gallery3d/ui/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic axb:Lcom/android/gallery3d/ui/FilmStripView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/FilmStripView;)V
    .registers 2

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/gallery3d/ui/A;->axb:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/gallery3d/ui/A;->axb:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->invalidate()V

    .line 494
    return-void
.end method

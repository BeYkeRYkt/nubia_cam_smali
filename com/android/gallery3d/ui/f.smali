.class Lcom/android/gallery3d/ui/f;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic avF:Lcom/android/gallery3d/ui/b;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/b;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/gallery3d/ui/f;->avF:Lcom/android/gallery3d/ui/b;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/f;-><init>(Lcom/android/gallery3d/ui/b;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 6

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/ui/f;->avF:Lcom/android/gallery3d/ui/b;

    invoke-static {v0}, Lcom/android/gallery3d/ui/b;->aIG(Lcom/android/gallery3d/ui/b;)Lcom/android/gallery3d/ui/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    .line 124
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    .line 123
    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/c;->aIL(FFF)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 5

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/ui/f;->avF:Lcom/android/gallery3d/ui/b;

    invoke-static {v0}, Lcom/android/gallery3d/ui/b;->aIG(Lcom/android/gallery3d/ui/b;)Lcom/android/gallery3d/ui/c;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    .line 117
    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/c;->aIM(FF)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/ui/f;->avF:Lcom/android/gallery3d/ui/b;

    invoke-static {v0}, Lcom/android/gallery3d/ui/b;->aIG(Lcom/android/gallery3d/ui/b;)Lcom/android/gallery3d/ui/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/c;->aIN()V

    .line 128
    return-void
.end method

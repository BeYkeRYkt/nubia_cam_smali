.class Lcom/android/common/j/f;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic ZC:Lcom/android/common/j/c;


# direct methods
.method private constructor <init>(Lcom/android/common/j/c;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/common/j/f;->ZC:Lcom/android/common/j/c;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/j/c;Lcom/android/common/j/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/j/f;-><init>(Lcom/android/common/j/c;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 6

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/common/j/f;->ZC:Lcom/android/common/j/c;

    invoke-static {v0}, Lcom/android/common/j/c;->afQ(Lcom/android/common/j/c;)Lcom/android/common/j/d;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    .line 134
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    .line 133
    invoke-interface {v0, v1, v2, v3}, Lcom/android/common/j/d;->afU(FFF)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 5

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/common/j/f;->ZC:Lcom/android/common/j/c;

    invoke-static {v0}, Lcom/android/common/j/c;->afQ(Lcom/android/common/j/c;)Lcom/android/common/j/d;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    .line 127
    invoke-interface {v0, v1, v2}, Lcom/android/common/j/d;->afV(FF)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/common/j/f;->ZC:Lcom/android/common/j/c;

    invoke-static {v0}, Lcom/android/common/j/c;->afQ(Lcom/android/common/j/c;)Lcom/android/common/j/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/j/d;->afW()V

    .line 138
    return-void
.end method

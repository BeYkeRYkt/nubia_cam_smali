.class Lcom/android/gallery3d/ui/d;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic avD:Lcom/android/gallery3d/ui/b;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/b;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/ui/d;->avD:Lcom/android/gallery3d/ui/b;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/d;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/d;-><init>(Lcom/android/gallery3d/ui/b;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/ui/d;->avD:Lcom/android/gallery3d/ui/b;

    invoke-static {v0}, Lcom/android/gallery3d/ui/b;->aIG(Lcom/android/gallery3d/ui/b;)Lcom/android/gallery3d/ui/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/c;->aII(FF)Z

    .line 81
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/ui/d;->avD:Lcom/android/gallery3d/ui/b;

    invoke-static {v0}, Lcom/android/gallery3d/ui/b;->aIG(Lcom/android/gallery3d/ui/b;)Lcom/android/gallery3d/ui/c;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/android/gallery3d/ui/c;->aIJ(FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/d;->avD:Lcom/android/gallery3d/ui/b;

    invoke-static {v0}, Lcom/android/gallery3d/ui/b;->aIG(Lcom/android/gallery3d/ui/b;)Lcom/android/gallery3d/ui/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/c;->aIK(FF)Z

    .line 87
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 85
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/ui/d;->avD:Lcom/android/gallery3d/ui/b;

    invoke-static {v0}, Lcom/android/gallery3d/ui/b;->aIG(Lcom/android/gallery3d/ui/b;)Lcom/android/gallery3d/ui/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/android/gallery3d/ui/c;->aIO(FFFF)Z

    move-result v0

    return v0
.end method

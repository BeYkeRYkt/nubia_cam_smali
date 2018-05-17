.class Lcom/android/gallery3d/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field final synthetic avE:Lcom/android/gallery3d/ui/b;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/b;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/gallery3d/ui/e;->avE:Lcom/android/gallery3d/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/e;-><init>(Lcom/android/gallery3d/ui/b;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/ui/e;->avE:Lcom/android/gallery3d/ui/b;

    invoke-static {v0}, Lcom/android/gallery3d/ui/b;->aIG(Lcom/android/gallery3d/ui/b;)Lcom/android/gallery3d/ui/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/c;->aIH(FF)Z

    move-result v0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/ui/e;->avE:Lcom/android/gallery3d/ui/b;

    invoke-static {v0}, Lcom/android/gallery3d/ui/b;->aIG(Lcom/android/gallery3d/ui/b;)Lcom/android/gallery3d/ui/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/c;->aIP(FF)Z

    move-result v0

    return v0
.end method

.class public Lcom/android/gallery3d/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final avA:Landroid/view/GestureDetector;

.field private final avB:Lcom/android/gallery3d/ui/c;

.field private final avC:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/c;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/android/gallery3d/ui/b;->avB:Lcom/android/gallery3d/ui/c;

    .line 49
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/gallery3d/ui/d;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/ui/d;-><init>(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/d;)V

    .line 50
    const/4 v2, 0x1

    .line 49
    invoke-direct {v0, p1, v1, v3, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/b;->avA:Landroid/view/GestureDetector;

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/b;->avA:Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/gallery3d/ui/e;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/ui/e;-><init>(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/e;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 52
    new-instance v0, Landroid/view/ScaleGestureDetector;

    .line 53
    new-instance v1, Lcom/android/gallery3d/ui/f;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/ui/f;-><init>(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/f;)V

    .line 52
    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/b;->avC:Landroid/view/ScaleGestureDetector;

    .line 47
    return-void
.end method

.method static synthetic aIG(Lcom/android/gallery3d/ui/b;)Lcom/android/gallery3d/ui/c;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/b;->avB:Lcom/android/gallery3d/ui/c;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 5

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/ui/b;->avA:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/b;->avC:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/ui/b;->avB:Lcom/android/gallery3d/ui/c;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/c;->aIQ(FF)Z

    .line 56
    :cond_1e
    return-void
.end method

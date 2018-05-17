.class Lcom/android/common/j/e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic ZB:Lcom/android/common/j/c;


# direct methods
.method private constructor <init>(Lcom/android/common/j/c;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/common/j/e;->ZB:Lcom/android/common/j/c;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/j/c;Lcom/android/common/j/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/j/e;-><init>(Lcom/android/common/j/c;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/common/j/e;->ZB:Lcom/android/common/j/c;

    invoke-static {v0}, Lcom/android/common/j/c;->afQ(Lcom/android/common/j/c;)Lcom/android/common/j/d;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/common/j/d;->afR(FF)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    .prologue
    .line 115
    if-eqz p1, :cond_4

    if-nez p2, :cond_f

    .line 116
    :cond_4
    const-string/jumbo v0, "GestureRecognizer"

    const-string/jumbo v1, "onFling null"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_f
    iget-object v0, p0, Lcom/android/common/j/e;->ZB:Lcom/android/common/j/c;

    invoke-static {v0}, Lcom/android/common/j/c;->afQ(Lcom/android/common/j/c;)Lcom/android/common/j/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/common/j/d;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/common/j/e;->ZB:Lcom/android/common/j/c;

    invoke-static {v0}, Lcom/android/common/j/c;->afQ(Lcom/android/common/j/c;)Lcom/android/common/j/d;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/common/j/d;->afT(FF)V

    .line 90
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/common/j/e;->ZB:Lcom/android/common/j/c;

    invoke-static {v0}, Lcom/android/common/j/c;->afQ(Lcom/android/common/j/c;)Lcom/android/common/j/d;

    move-result-object v0

    .line 105
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 104
    invoke-interface {v0, p3, p4, v1, v2}, Lcom/android/common/j/d;->afX(FFFF)Z
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result v0

    .line 109
    return v0

    .line 106
    :catch_1d
    move-exception v0

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/common/j/e;->ZB:Lcom/android/common/j/c;

    invoke-static {v0}, Lcom/android/common/j/c;->afQ(Lcom/android/common/j/c;)Lcom/android/common/j/d;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/common/j/d;->afY(FF)Z

    move-result v0

    return v0
.end method

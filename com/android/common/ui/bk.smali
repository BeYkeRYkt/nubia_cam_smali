.class final Lcom/android/common/ui/bk;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic Ev:Lcom/android/common/ui/WheelView;


# direct methods
.method constructor <init>(Lcom/android/common/ui/WheelView;)V
    .registers 2

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/common/ui/bk;->Ev:Lcom/android/common/ui/WheelView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14

    .prologue
    const v6, 0x7fffffff

    const v5, -0x7fffffff

    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/android/common/ui/bk;->Ev:Lcom/android/common/ui/WheelView;

    invoke-static {v0, v1}, Lcom/android/common/ui/WheelView;->Fw(Lcom/android/common/ui/WheelView;I)I

    .line 337
    iget-object v0, p0, Lcom/android/common/ui/bk;->Ev:Lcom/android/common/ui/WheelView;

    invoke-static {v0}, Lcom/android/common/ui/WheelView;->Fv(Lcom/android/common/ui/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    neg-float v2, p3

    float-to-int v3, v2

    move v2, v1

    move v4, v1

    move v7, v1

    move v8, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 338
    iget-object v0, p0, Lcom/android/common/ui/bk;->Ev:Lcom/android/common/ui/WheelView;

    invoke-static {v0, v1}, Lcom/android/common/ui/WheelView;->FD(Lcom/android/common/ui/WheelView;I)V

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .prologue
    .line 329
    const/4 v0, 0x1

    return v0
.end method

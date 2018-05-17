.class final Lcom/android/common/ui/at;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic Dr:Lcom/android/common/ui/nubiaWheelView;


# direct methods
.method constructor <init>(Lcom/android/common/ui/nubiaWheelView;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/common/ui/at;->Dr:Lcom/android/common/ui/nubiaWheelView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/android/common/ui/at;->Dr:Lcom/android/common/ui/nubiaWheelView;

    invoke-static {v0, v2}, Lcom/android/common/ui/nubiaWheelView;->wC(Lcom/android/common/ui/nubiaWheelView;I)I

    .line 105
    iget-object v0, p0, Lcom/android/common/ui/at;->Dr:Lcom/android/common/ui/nubiaWheelView;

    float-to-int v1, p4

    invoke-static {v0, v1}, Lcom/android/common/ui/nubiaWheelView;->wD(Lcom/android/common/ui/nubiaWheelView;I)V

    .line 106
    iget-object v0, p0, Lcom/android/common/ui/at;->Dr:Lcom/android/common/ui/nubiaWheelView;

    invoke-static {v0, v2}, Lcom/android/common/ui/nubiaWheelView;->wF(Lcom/android/common/ui/nubiaWheelView;I)V

    .line 107
    const/4 v0, 0x1

    return v0
.end method

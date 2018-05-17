.class public Lcom/android/common/ui/InterruptedRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private tj:Lcom/android/common/ui/A;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/InterruptedRelativeLayout;->tj:Lcom/android/common/ui/A;

    .line 19
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/common/ui/InterruptedRelativeLayout;->tj:Lcom/android/common/ui/A;

    if-eqz v0, :cond_17

    .line 31
    iget-object v0, p0, Lcom/android/common/ui/InterruptedRelativeLayout;->tj:Lcom/android/common/ui/A;

    invoke-interface {v0}, Lcom/android/common/ui/A;->xV()Z

    move-result v0

    .line 30
    if-eqz v0, :cond_17

    .line 32
    const-string/jumbo v0, "InterruptedRelativeLayout"

    const-string/jumbo v1, "interrpted"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    return v0

    .line 35
    :cond_17
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public xU(Lcom/android/common/ui/A;)V
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/common/ui/InterruptedRelativeLayout;->tj:Lcom/android/common/ui/A;

    .line 23
    return-void
.end method

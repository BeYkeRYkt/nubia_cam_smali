.class public Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private gu:Lcom/android/common/independentFocusExposure/i;

.field private gv:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->gu:Lcom/android/common/independentFocusExposure/i;

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->gv:Landroid/util/SparseArray;

    .line 19
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 25
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->gu:Lcom/android/common/independentFocusExposure/i;

    if-nez v0, :cond_6

    return v2

    .line 26
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_25

    .line 27
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->gu:Lcom/android/common/independentFocusExposure/i;

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eP()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->ch()Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

    move-result-object v0

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;->dN:Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

    if-ne v0, v1, :cond_25

    .line 28
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->gu:Lcom/android/common/independentFocusExposure/i;

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;->eP:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/i;->fr(Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;)V

    .line 30
    :cond_25
    return v2
.end method

.method public hi(Lcom/android/common/independentFocusExposure/i;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->gu:Lcom/android/common/independentFocusExposure/i;

    .line 53
    return-void
.end method

.method public hj()V
    .registers 2

    .prologue
    .line 46
    const v0, 0x7f0200ed

    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->hk(I)V

    .line 45
    return-void
.end method

.method public hk(I)V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->gv:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_15

    .line 35
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->gv:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    :cond_15
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->gv:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/CameraFocusIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    return-void
.end method

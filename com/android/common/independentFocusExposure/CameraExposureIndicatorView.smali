.class public Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private gw:Lcom/android/common/independentFocusExposure/a;

.field private gx:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->gw:Lcom/android/common/independentFocusExposure/a;

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->gx:Landroid/util/SparseArray;

    .line 21
    return-void
.end method


# virtual methods
.method public cg()V
    .registers 2

    .prologue
    .line 44
    const v0, 0x7f0200e9

    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->hm(I)V

    .line 43
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 27
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->gw:Lcom/android/common/independentFocusExposure/a;

    if-nez v0, :cond_6

    return v2

    .line 28
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    .line 29
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->gw:Lcom/android/common/independentFocusExposure/a;

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;->dM:Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/a;->dj(Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;)V

    .line 32
    :cond_13
    return v2
.end method

.method public hl(Lcom/android/common/independentFocusExposure/a;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->gw:Lcom/android/common/independentFocusExposure/a;

    .line 55
    return-void
.end method

.method public hm(I)V
    .registers 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->gx:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_15

    .line 37
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->gx:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    :cond_15
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->gx:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/CameraExposureIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    return-void
.end method

.class public Lcom/android/common/independentFocusExposure/MwbIndicatorView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private cM:Landroid/util/SparseArray;

.field private cN:Lcom/android/common/independentFocusExposure/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->cN:Lcom/android/common/independentFocusExposure/o;

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->cM:Landroid/util/SparseArray;

    .line 23
    return-void
.end method

.method private cc()Z
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->cN:Lcom/android/common/independentFocusExposure/o;

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fN()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->ch()Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

    move-result-object v0

    .line 67
    sget-object v1, Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;->dM:Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

    .line 66
    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private cd()Z
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->cN:Lcom/android/common/independentFocusExposure/o;

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fN()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->dW()Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;->eP:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;

    .line 71
    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public ce(I)V
    .registers 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->cM:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_15

    .line 43
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->cM:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    :cond_15
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->cM:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    return-void
.end method

.method public cf(Lcom/android/common/independentFocusExposure/o;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->cN:Lcom/android/common/independentFocusExposure/o;

    .line 61
    return-void
.end method

.method public cg()V
    .registers 2

    .prologue
    .line 50
    const v0, 0x7f020119

    invoke-virtual {p0, v0}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->ce(I)V

    .line 49
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    .line 30
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->cc()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    :cond_d
    :goto_d
    return v2

    .line 30
    :cond_e
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->cd()Z

    move-result v0

    if-nez v0, :cond_d

    .line 31
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->cN:Lcom/android/common/independentFocusExposure/o;

    sget-object v1, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;->gi:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/o;->fJ(Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;)V

    .line 32
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->cN:Lcom/android/common/independentFocusExposure/o;

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fK()V

    .line 33
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->ade()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 34
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->cN:Lcom/android/common/independentFocusExposure/o;

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fL()V

    .line 35
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/MwbIndicatorView;->cN:Lcom/android/common/independentFocusExposure/o;

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fM()V

    goto :goto_d
.end method

.class Lcom/android/common/independentFocusExposure/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dP:Lcom/android/common/independentFocusExposure/a;


# direct methods
.method private constructor <init>(Lcom/android/common/independentFocusExposure/a;)V
    .registers 2

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/b;->dP:Lcom/android/common/independentFocusExposure/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/independentFocusExposure/a;Lcom/android/common/independentFocusExposure/b;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/independentFocusExposure/b;-><init>(Lcom/android/common/independentFocusExposure/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/b;->dP:Lcom/android/common/independentFocusExposure/a;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/a;->dq(Lcom/android/common/independentFocusExposure/a;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 546
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/b;->dP:Lcom/android/common/independentFocusExposure/a;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/a;->dt(Lcom/android/common/independentFocusExposure/a;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 548
    :cond_12
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/b;->dP:Lcom/android/common/independentFocusExposure/a;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/a;->dp(Lcom/android/common/independentFocusExposure/a;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 543
    return-void
.end method

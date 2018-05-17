.class Lcom/android/common/independentFocusExposure/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dQ:Lcom/android/common/independentFocusExposure/a;


# direct methods
.method private constructor <init>(Lcom/android/common/independentFocusExposure/a;)V
    .registers 2

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/c;->dQ:Lcom/android/common/independentFocusExposure/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/independentFocusExposure/a;Lcom/android/common/independentFocusExposure/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/independentFocusExposure/c;-><init>(Lcom/android/common/independentFocusExposure/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/c;->dQ:Lcom/android/common/independentFocusExposure/a;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/a;->dp(Lcom/android/common/independentFocusExposure/a;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 554
    return-void
.end method

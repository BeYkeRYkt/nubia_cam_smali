.class Lcom/android/common/independentFocusExposure/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic eZ:Lcom/android/common/independentFocusExposure/i;


# direct methods
.method private constructor <init>(Lcom/android/common/independentFocusExposure/i;)V
    .registers 2

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/k;->eZ:Lcom/android/common/independentFocusExposure/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/independentFocusExposure/i;Lcom/android/common/independentFocusExposure/k;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/independentFocusExposure/k;-><init>(Lcom/android/common/independentFocusExposure/i;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/k;->eZ:Lcom/android/common/independentFocusExposure/i;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/i;->fB(Lcom/android/common/independentFocusExposure/i;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 507
    return-void
.end method

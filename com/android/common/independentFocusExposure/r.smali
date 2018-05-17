.class Lcom/android/common/independentFocusExposure/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gr:Lcom/android/common/independentFocusExposure/o;


# direct methods
.method private constructor <init>(Lcom/android/common/independentFocusExposure/o;)V
    .registers 2

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/r;->gr:Lcom/android/common/independentFocusExposure/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/independentFocusExposure/o;Lcom/android/common/independentFocusExposure/r;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/independentFocusExposure/r;-><init>(Lcom/android/common/independentFocusExposure/o;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/r;->gr:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/o;->gT(Lcom/android/common/independentFocusExposure/o;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 724
    return-void
.end method

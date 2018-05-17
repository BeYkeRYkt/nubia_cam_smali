.class final Lcom/android/common/ui/bo;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic EA:Lcom/android/common/ui/NubiaProgressWheel;


# direct methods
.method constructor <init>(Lcom/android/common/ui/NubiaProgressWheel;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/common/ui/bo;->EA:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .prologue
    const-wide v6, 0x3fd3333340000000L    # 0.30000001192092896

    .line 40
    iget-object v0, p0, Lcom/android/common/ui/bo;->EA:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->FW(Lcom/android/common/ui/NubiaProgressWheel;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 41
    iget-object v0, p0, Lcom/android/common/ui/bo;->EA:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->FY(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v2

    iget-object v1, p0, Lcom/android/common/ui/bo;->EA:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v1}, Lcom/android/common/ui/NubiaProgressWheel;->FZ(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/android/common/ui/NubiaProgressWheel;->Gd(Lcom/android/common/ui/NubiaProgressWheel;D)D

    .line 42
    iget-object v0, p0, Lcom/android/common/ui/bo;->EA:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->postInvalidate()V

    .line 43
    iget-object v0, p0, Lcom/android/common/ui/bo;->EA:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->Ga(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v2

    add-double/2addr v2, v6

    invoke-static {v0, v2, v3}, Lcom/android/common/ui/NubiaProgressWheel;->Gf(Lcom/android/common/ui/NubiaProgressWheel;D)D

    .line 44
    iget-object v0, p0, Lcom/android/common/ui/bo;->EA:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->FY(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    cmpl-double v0, v0, v2

    if-gez v0, :cond_44

    iget-object v0, p0, Lcom/android/common/ui/bo;->EA:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->FY(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_58

    .line 45
    :cond_44
    iget-object v0, p0, Lcom/android/common/ui/bo;->EA:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->FZ(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-nez v0, :cond_59

    .line 46
    iget-object v0, p0, Lcom/android/common/ui/bo;->EA:Lcom/android/common/ui/NubiaProgressWheel;

    const-wide v2, -0x402cccccc0000000L    # -0.30000001192092896

    invoke-static {v0, v2, v3}, Lcom/android/common/ui/NubiaProgressWheel;->Ge(Lcom/android/common/ui/NubiaProgressWheel;D)D

    .line 39
    :cond_58
    :goto_58
    return-void

    .line 48
    :cond_59
    iget-object v0, p0, Lcom/android/common/ui/bo;->EA:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0, v6, v7}, Lcom/android/common/ui/NubiaProgressWheel;->Ge(Lcom/android/common/ui/NubiaProgressWheel;D)D

    goto :goto_58
.end method

.class final Lcom/android/common/appService/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nd:Lcom/android/common/appService/i;


# direct methods
.method constructor <init>(Lcom/android/common/appService/i;)V
    .registers 2

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/common/appService/ad;->nd:Lcom/android/common/appService/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/common/appService/ad;->nd:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jo(Lcom/android/common/appService/i;)Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_b

    .line 439
    return-void

    .line 441
    :cond_b
    iget-object v0, p0, Lcom/android/common/appService/ad;->nd:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jl(Lcom/android/common/appService/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 442
    iget-object v0, p0, Lcom/android/common/appService/ad;->nd:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jl(Lcom/android/common/appService/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 443
    iget-object v0, p0, Lcom/android/common/appService/ad;->nd:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jl(Lcom/android/common/appService/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 444
    iget-object v0, p0, Lcom/android/common/appService/ad;->nd:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jl(Lcom/android/common/appService/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dB()V

    .line 445
    iget-object v0, p0, Lcom/android/common/appService/ad;->nd:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jl(Lcom/android/common/appService/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eg()V

    .line 446
    iget-object v0, p0, Lcom/android/common/appService/ad;->nd:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jl(Lcom/android/common/appService/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cn()V

    .line 447
    iget-object v0, p0, Lcom/android/common/appService/ad;->nd:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jl(Lcom/android/common/appService/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fQ()V

    .line 448
    iget-object v0, p0, Lcom/android/common/appService/ad;->nd:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jl(Lcom/android/common/appService/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qM()V

    .line 437
    :cond_6c
    return-void
.end method

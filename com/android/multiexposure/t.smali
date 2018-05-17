.class public Lcom/android/multiexposure/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/u;


# instance fields
.field private ars:Lcom/android/common/appService/W;

.field private art:Lcom/android/common/camerastate/a;

.field private aru:Lcom/android/multiexposure/o;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/multiexposure/o;)V
    .registers 4

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/multiexposure/t;->ars:Lcom/android/common/appService/W;

    .line 26
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/multiexposure/t;->art:Lcom/android/common/camerastate/a;

    .line 27
    iput-object p2, p0, Lcom/android/multiexposure/t;->aru:Lcom/android/multiexposure/o;

    .line 24
    return-void
.end method

.method private aDI()Z
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/multiexposure/t;->ars:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public aDH()V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/multiexposure/t;->aru:Lcom/android/multiexposure/o;

    invoke-virtual {v0}, Lcom/android/multiexposure/o;->aDb()V

    .line 66
    iget-object v0, p0, Lcom/android/multiexposure/t;->aru:Lcom/android/multiexposure/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/o;->aCE(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/multiexposure/t;->aru:Lcom/android/multiexposure/o;

    iget-object v0, v0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    if-eqz v0, :cond_18

    .line 69
    iget-object v0, p0, Lcom/android/multiexposure/t;->aru:Lcom/android/multiexposure/o;

    iget-object v0, v0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCm()V

    .line 64
    :cond_18
    return-void
.end method

.method public xf()V
    .registers 4

    .prologue
    .line 32
    const-string/jumbo v0, "MultiExposureOnShutterButtonListener"

    const-string/jumbo v1, "onShutterButtonClick"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/android/multiexposure/t;->ars:Lcom/android/common/appService/W;

    if-nez v0, :cond_17

    .line 35
    const-string/jumbo v0, "MultiExposureOnShutterButtonListener"

    const-string/jumbo v1, "mAppservcie: null"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void

    .line 39
    :cond_17
    invoke-direct {p0}, Lcom/android/multiexposure/t;->aDI()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 40
    iget-object v0, p0, Lcom/android/multiexposure/t;->ars:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 46
    iget-object v0, p0, Lcom/android/multiexposure/t;->art:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amE()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_39

    .line 47
    iget-object v0, p0, Lcom/android/multiexposure/t;->art:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_ac

    .line 50
    :cond_39
    const-string/jumbo v0, "MultiExposureOnShutterButtonListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uiState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/multiexposure/t;->art:Lcom/android/common/camerastate/a;

    invoke-virtual {v2}, Lcom/android/common/camerastate/a;->amE()Lcom/android/common/camerastate/UIState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51
    const-string/jumbo v2, "; functionState: "

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/android/multiexposure/t;->art:Lcom/android/common/camerastate/a;

    invoke-virtual {v2}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    const-string/jumbo v2, "; DeviceState: "

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/android/multiexposure/t;->art:Lcom/android/common/camerastate/a;

    invoke-virtual {v2}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 41
    :cond_7c
    const-string/jumbo v0, "MultiExposureOnShutterButtonListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onshutter fail. paused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/multiexposure/t;->aDI()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    const-string/jumbo v2, "; storageEnough: "

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/android/multiexposure/t;->ars:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pK()Z

    move-result v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void

    .line 48
    :cond_ac
    iget-object v0, p0, Lcom/android/multiexposure/t;->art:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_c0

    .line 49
    iget-object v0, p0, Lcom/android/multiexposure/t;->art:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_39

    .line 56
    :cond_c0
    iget-object v0, p0, Lcom/android/multiexposure/t;->aru:Lcom/android/multiexposure/o;

    if-nez v0, :cond_ce

    .line 57
    const-string/jumbo v0, "MultiExposureOnShutterButtonListener"

    const-string/jumbo v1, "mMultiExposureFragment is null!"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void

    .line 60
    :cond_ce
    invoke-static {p0}, Lcom/android/multiexposure/a/a;->aBS(Lcom/android/multiexposure/t;)Lcom/android/common/c/a;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 31
    return-void
.end method

.method public xg(Z)V
    .registers 2

    .prologue
    .line 84
    return-void
.end method

.method public xh()V
    .registers 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/multiexposure/t;->xf()V

    .line 78
    return-void
.end method

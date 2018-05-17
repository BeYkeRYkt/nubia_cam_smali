.class final Lcom/android/common/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/h;


# instance fields
.field final synthetic akO:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/android/common/V;->akO:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aN()V
    .registers 2

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/common/V;->akO:Lcom/android/common/ActivityBase;

    invoke-static {v0}, Lcom/android/common/ActivityBase;->avX(Lcom/android/common/ActivityBase;)V

    .line 1366
    return-void
.end method

.method public aO()V
    .registers 3

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/android/common/V;->akO:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->atP()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1372
    iget-object v0, p0, Lcom/android/common/V;->akO:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_20

    .line 1373
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "surfaceDestroy call stopPreview"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    iget-object v0, p0, Lcom/android/common/V;->akO:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asF()V

    .line 1370
    :cond_20
    return-void
.end method

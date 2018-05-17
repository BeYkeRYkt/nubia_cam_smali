.class final Lcom/android/dng/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/L;


# instance fields
.field final synthetic aBv:Lcom/android/dng/j;


# direct methods
.method constructor <init>(Lcom/android/dng/j;)V
    .registers 2

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/dng/D;->aBv:Lcom/android/dng/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nV()V
    .registers 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/dng/D;->aBv:Lcom/android/dng/j;

    invoke-virtual {v0}, Lcom/android/dng/j;->aPM()V

    .line 391
    iget-object v0, p0, Lcom/android/dng/D;->aBv:Lcom/android/dng/j;

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-static {v0, v1}, Lcom/android/dng/j;->aQb(Lcom/android/dng/j;Lcom/android/common/camerastate/DeviceState;)V

    .line 392
    iget-object v0, p0, Lcom/android/dng/D;->aBv:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPQ(Lcom/android/dng/j;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 393
    iget-object v0, p0, Lcom/android/dng/D;->aBv:Lcom/android/dng/j;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    invoke-static {v0, v1}, Lcom/android/dng/j;->aQc(Lcom/android/dng/j;Lcom/android/common/camerastate/FunctionState;)V

    .line 395
    :cond_1b
    iget-object v0, p0, Lcom/android/dng/D;->aBv:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPR(Lcom/android/dng/j;)Lcom/android/common/appService/W;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pM(Z)V

    .line 396
    iget-object v0, p0, Lcom/android/dng/D;->aBv:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aQe(Lcom/android/dng/j;)V

    .line 389
    return-void
.end method

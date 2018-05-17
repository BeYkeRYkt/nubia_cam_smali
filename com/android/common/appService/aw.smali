.class final Lcom/android/common/appService/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/K;


# instance fields
.field final synthetic nM:Lcom/android/common/appService/W;

.field final synthetic nN:Lcom/android/common/appService/L;


# direct methods
.method constructor <init>(Lcom/android/common/appService/W;Lcom/android/common/appService/L;)V
    .registers 3

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/common/appService/aw;->nM:Lcom/android/common/appService/W;

    iput-object p2, p0, Lcom/android/common/appService/aw;->nN:Lcom/android/common/appService/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nT([ILcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V
    .registers 5

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/common/appService/aw;->nM:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afy:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amL(Lcom/android/common/camerastate/FunctionState;)V

    .line 925
    iget-object v0, p0, Lcom/android/common/appService/aw;->nN:Lcom/android/common/appService/L;

    if-eqz v0, :cond_14

    .line 926
    iget-object v0, p0, Lcom/android/common/appService/aw;->nN:Lcom/android/common/appService/L;

    invoke-interface {v0}, Lcom/android/common/appService/L;->nV()V

    .line 929
    :cond_14
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 923
    return-void
.end method

.method public nU()V
    .registers 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/common/appService/aw;->nM:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pB()V

    .line 918
    iget-object v0, p0, Lcom/android/common/appService/aw;->nM:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sl()V

    .line 916
    return-void
.end method

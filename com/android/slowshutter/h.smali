.class final Lcom/android/slowshutter/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/L;


# instance fields
.field final synthetic aym:Lcom/android/slowshutter/a;


# direct methods
.method constructor <init>(Lcom/android/slowshutter/a;)V
    .registers 2

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/slowshutter/h;->aym:Lcom/android/slowshutter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nV()V
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/slowshutter/h;->aym:Lcom/android/slowshutter/a;

    invoke-virtual {v0}, Lcom/android/slowshutter/a;->aMT()V

    .line 229
    iget-object v0, p0, Lcom/android/slowshutter/h;->aym:Lcom/android/slowshutter/a;

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-static {v0, v1}, Lcom/android/slowshutter/a;->aNd(Lcom/android/slowshutter/a;Lcom/android/common/camerastate/DeviceState;)V

    .line 230
    iget-object v0, p0, Lcom/android/slowshutter/h;->aym:Lcom/android/slowshutter/a;

    invoke-static {v0}, Lcom/android/slowshutter/a;->aMW(Lcom/android/slowshutter/a;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 231
    iget-object v0, p0, Lcom/android/slowshutter/h;->aym:Lcom/android/slowshutter/a;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    invoke-static {v0, v1}, Lcom/android/slowshutter/a;->aNe(Lcom/android/slowshutter/a;Lcom/android/common/camerastate/FunctionState;)V

    .line 233
    :cond_1b
    iget-object v0, p0, Lcom/android/slowshutter/h;->aym:Lcom/android/slowshutter/a;

    invoke-static {v0}, Lcom/android/slowshutter/a;->aMX(Lcom/android/slowshutter/a;)Lcom/android/common/appService/W;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pM(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/slowshutter/h;->aym:Lcom/android/slowshutter/a;

    invoke-static {v0}, Lcom/android/slowshutter/a;->aNf(Lcom/android/slowshutter/a;)V

    .line 227
    return-void
.end method

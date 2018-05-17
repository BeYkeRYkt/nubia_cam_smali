.class final Lcom/android/common/appService/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/H;


# instance fields
.field final synthetic nk:Lcom/android/common/appService/q;


# direct methods
.method constructor <init>(Lcom/android/common/appService/q;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/common/appService/ai;->nk:Lcom/android/common/appService/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tL(I)V
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/common/appService/ai;->nk:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->ku(Lcom/android/common/appService/q;)Lcom/android/common/appService/W;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 82
    iget-object v0, p0, Lcom/android/common/appService/ai;->nk:Lcom/android/common/appService/q;

    iget-object v1, p0, Lcom/android/common/appService/ai;->nk:Lcom/android/common/appService/q;

    invoke-static {v1}, Lcom/android/common/appService/q;->kz(Lcom/android/common/appService/q;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/appService/q;->kB(Lcom/android/common/appService/q;Z)V

    .line 84
    :cond_13
    iget-object v0, p0, Lcom/android/common/appService/ai;->nk:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->kx(Lcom/android/common/appService/q;)Lcom/android/common/appService/T;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/appService/T;->oI(I)V

    .line 80
    return-void
.end method

.method public tM()V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/common/appService/ai;->nk:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->ku(Lcom/android/common/appService/q;)Lcom/android/common/appService/W;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 72
    iget-object v0, p0, Lcom/android/common/appService/ai;->nk:Lcom/android/common/appService/q;

    iget-object v1, p0, Lcom/android/common/appService/ai;->nk:Lcom/android/common/appService/q;

    invoke-static {v1}, Lcom/android/common/appService/q;->kz(Lcom/android/common/appService/q;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/appService/q;->kB(Lcom/android/common/appService/q;Z)V

    .line 73
    iget-object v0, p0, Lcom/android/common/appService/ai;->nk:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->kz(Lcom/android/common/appService/q;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 74
    iget-object v0, p0, Lcom/android/common/appService/ai;->nk:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->ku(Lcom/android/common/appService/q;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afx:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amK(Lcom/android/common/camerastate/FunctionState;)V

    .line 70
    :cond_2a
    return-void
.end method

.method public tN()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/common/appService/ai;->nk:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->ku(Lcom/android/common/appService/q;)Lcom/android/common/appService/W;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 64
    iget-object v0, p0, Lcom/android/common/appService/ai;->nk:Lcom/android/common/appService/q;

    iget-object v1, p0, Lcom/android/common/appService/ai;->nk:Lcom/android/common/appService/q;

    invoke-static {v1}, Lcom/android/common/appService/q;->kz(Lcom/android/common/appService/q;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/appService/q;->kB(Lcom/android/common/appService/q;Z)V

    .line 65
    iget-object v0, p0, Lcom/android/common/appService/ai;->nk:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->ku(Lcom/android/common/appService/q;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afx:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amL(Lcom/android/common/camerastate/FunctionState;)V

    .line 62
    :cond_22
    return-void
.end method

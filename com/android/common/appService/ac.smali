.class final Lcom/android/common/appService/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/cameradevice/q;


# instance fields
.field final synthetic nc:Lcom/android/common/appService/i;


# direct methods
.method constructor <init>(Lcom/android/common/appService/i;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/common/appService/ac;->nc:Lcom/android/common/appService/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tK(Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/common/appService/ac;->nc:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jl(Lcom/android/common/appService/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/i;->ef(Ljava/util/ArrayList;)V

    .line 44
    iget-object v0, p0, Lcom/android/common/appService/ac;->nc:Lcom/android/common/appService/i;

    invoke-static {v0, p1}, Lcom/android/common/appService/i;->jt(Lcom/android/common/appService/i;Ljava/util/ArrayList;)V

    .line 45
    iget-object v0, p0, Lcom/android/common/appService/ac;->nc:Lcom/android/common/appService/i;

    invoke-static {v0, p1}, Lcom/android/common/appService/i;->jq(Lcom/android/common/appService/i;Ljava/util/ArrayList;)V

    .line 46
    iget-object v0, p0, Lcom/android/common/appService/ac;->nc:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jl(Lcom/android/common/appService/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/common/appService/b;->ia(Ljava/util/ArrayList;)V

    .line 42
    return-void
.end method

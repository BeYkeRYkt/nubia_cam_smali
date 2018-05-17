.class final Lcom/android/common/appService/aA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/L;


# instance fields
.field final synthetic nS:Lcom/android/common/appService/W;

.field final synthetic nT:Lcom/android/common/appService/L;


# direct methods
.method constructor <init>(Lcom/android/common/appService/W;Lcom/android/common/appService/L;)V
    .registers 3

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/android/common/appService/aA;->nS:Lcom/android/common/appService/W;

    iput-object p2, p0, Lcom/android/common/appService/aA;->nT:Lcom/android/common/appService/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nV()V
    .registers 2

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/common/appService/aA;->nT:Lcom/android/common/appService/L;

    if-eqz v0, :cond_9

    .line 1407
    iget-object v0, p0, Lcom/android/common/appService/aA;->nT:Lcom/android/common/appService/L;

    invoke-interface {v0}, Lcom/android/common/appService/L;->nV()V

    .line 1409
    :cond_9
    iget-object v0, p0, Lcom/android/common/appService/aA;->nS:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 1405
    return-void
.end method

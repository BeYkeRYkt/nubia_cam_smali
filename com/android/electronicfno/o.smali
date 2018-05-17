.class final Lcom/android/electronicfno/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/electronicfno/j;


# instance fields
.field final synthetic aVW:Lcom/android/electronicfno/h;


# direct methods
.method constructor <init>(Lcom/android/electronicfno/h;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/electronicfno/o;->aVW:Lcom/android/electronicfno/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bnN()V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/electronicfno/o;->aVW:Lcom/android/electronicfno/h;

    invoke-static {v0}, Lcom/android/electronicfno/h;->bmY(Lcom/android/electronicfno/h;)Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_19

    .line 82
    iget-object v0, p0, Lcom/android/electronicfno/o;->aVW:Lcom/android/electronicfno/h;

    iget-object v1, p0, Lcom/android/electronicfno/o;->aVW:Lcom/android/electronicfno/h;

    invoke-static {v1}, Lcom/android/electronicfno/h;->bmX(Lcom/android/electronicfno/h;)Lcom/android/common/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/n;->arb()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/electronicfno/h;->bmZ(Lcom/android/electronicfno/h;I)V

    .line 80
    :cond_19
    return-void
.end method

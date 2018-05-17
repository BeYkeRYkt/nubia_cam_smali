.class public Lcom/android/electronicfno/ElectronicFnoActivity;
.super Lcom/android/common/ActivityBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/android/common/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected auf()Lcom/android/common/appService/y;
    .registers 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/electronicfno/ElectronicFnoActivity;->aiY:Lcom/android/common/appService/y;

    if-nez v0, :cond_b

    .line 11
    new-instance v0, Lcom/android/electronicfno/e;

    invoke-direct {v0}, Lcom/android/electronicfno/e;-><init>()V

    iput-object v0, p0, Lcom/android/electronicfno/ElectronicFnoActivity;->aiY:Lcom/android/common/appService/y;

    .line 13
    :cond_b
    iget-object v0, p0, Lcom/android/electronicfno/ElectronicFnoActivity;->aiY:Lcom/android/common/appService/y;

    return-object v0
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/electronicfno/ElectronicFnoActivity;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/electronicfno/ElectronicFnoActivity;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->na(Lcom/android/common/appService/W;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 19
    return-void

    .line 21
    :cond_f
    invoke-super {p0}, Lcom/android/common/ActivityBase;->onBackPressed()V

    .line 17
    return-void
.end method

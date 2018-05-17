.class final Lcom/android/common/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/S;


# instance fields
.field final synthetic akW:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/android/common/ac;->akW:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bb()Z
    .registers 2

    .prologue
    .line 1045
    const/4 v0, 0x1

    return v0
.end method

.method public bc(Lcom/android/common/appService/R;IIIIIIII)V
    .registers 12

    .prologue
    .line 1031
    if-ne p2, p6, :cond_9

    if-ne p3, p7, :cond_9

    if-ne p4, p8, :cond_9

    .line 1032
    if-ne p5, p9, :cond_9

    .line 1033
    return-void

    .line 1035
    :cond_9
    iget-object v0, p0, Lcom/android/common/ac;->akW:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ac;->akW:Lcom/android/common/ActivityBase;

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->atb()Lcom/android/common/appService/R;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/g;->dU(Lcom/android/common/appService/R;)V

    .line 1030
    return-void
.end method

.method public bd(IIII)V
    .registers 5

    .prologue
    .line 1040
    return-void
.end method

.class final Lcom/android/common/R;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/storagemanager/h;


# instance fields
.field final synthetic akJ:Lcom/android/common/Q;


# direct methods
.method constructor <init>(Lcom/android/common/Q;)V
    .registers 2

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/common/R;->akJ:Lcom/android/common/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public agP(JZ)V
    .registers 5

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/common/R;->akJ:Lcom/android/common/Q;

    iget-object v0, v0, Lcom/android/common/Q;->akI:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    if-nez v0, :cond_18

    .line 333
    iget-object v0, p0, Lcom/android/common/R;->akJ:Lcom/android/common/Q;

    iget-object v0, v0, Lcom/android/common/Q;->akI:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 331
    :cond_18
    :goto_18
    return-void

    .line 334
    :cond_19
    iget-object v0, p0, Lcom/android/common/R;->akJ:Lcom/android/common/Q;

    iget-object v0, v0, Lcom/android/common/Q;->akI:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aiZ:Lcom/android/common/m/c;

    invoke-virtual {v0}, Lcom/android/common/m/c;->ahw()V

    goto :goto_18
.end method

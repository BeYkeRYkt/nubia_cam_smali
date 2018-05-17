.class public Lcom/android/c/j;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected TL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/c/j;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pd()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 33
    iget-object v0, p0, Lcom/android/c/j;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rR()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 34
    const-string/jumbo v0, "on"

    return-object v0

    .line 36
    :cond_14
    const-string/jumbo v0, "off"

    return-object v0

    .line 39
    :cond_18
    invoke-super {p0}, Lcom/android/common/setting/c;->TL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Uo()I
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

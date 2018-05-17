.class public Lcom/android/c/d;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected TL()Ljava/lang/String;
    .registers 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/c/d;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rR()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/c/d;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "auto_steps"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 37
    :cond_19
    const-string/jumbo v0, "on"

    return-object v0

    .line 39
    :cond_1d
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected TR()I
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method protected Tm()Ljava/lang/String;
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/c/d;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "auto_steps"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 50
    const-string/jumbo v0, "infinity"

    return-object v0

    .line 52
    :cond_15
    invoke-super {p0}, Lcom/android/common/setting/c;->Tm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Uo()I
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

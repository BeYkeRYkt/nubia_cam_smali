.class public Lcom/android/startrack/l;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected TL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected TS()I
    .registers 4

    .prologue
    .line 29
    sget v0, Lcom/android/common/setting/j;->TQ:I

    .line 30
    invoke-virtual {p0}, Lcom/android/startrack/l;->UF()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 31
    invoke-virtual {p0}, Lcom/android/startrack/l;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "maf_key"

    .line 32
    sget v2, Lcom/android/common/setting/j;->TQ:I

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 35
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 36
    sget v0, Lcom/android/common/setting/j;->TQ:I

    .line 38
    :cond_1a
    return v0
.end method

.method protected Tm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    const-string/jumbo v0, "manual"

    return-object v0
.end method

.method protected UF()Z
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method protected Un()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    const-string/jumbo v0, "on"

    return-object v0
.end method

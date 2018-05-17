.class public Lcom/android/common/custom/B;
.super Lcom/android/common/custom/n;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/common/custom/n;-><init>()V

    return-void
.end method


# virtual methods
.method public acI()Z
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public acz()Z
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public adE()Z
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public adI()Z
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public adJ()Z
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public adf()Z
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public adj()Z
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public aeJ()Z
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public aez()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    const-string/jumbo v0, "auto"

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

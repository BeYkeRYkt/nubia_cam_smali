.class public Lcom/android/common/custom/q;
.super Lcom/android/common/custom/I;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/common/custom/I;-><init>()V

    return-void
.end method


# virtual methods
.method public acE()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    const-string/jumbo v0, "on"

    return-object v0
.end method

.method public acF()I
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x2

    return v0
.end method

.method public acH()Z
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public acJ()Z
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public acK()Z
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public acP()Z
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public acW()Z
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public acX()Z
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public adZ()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public aea()I
    .registers 2

    .prologue
    .line 75
    const/16 v0, 0xc8

    return v0
.end method

.method public aeb()Z
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public aec()Z
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public aed()Z
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

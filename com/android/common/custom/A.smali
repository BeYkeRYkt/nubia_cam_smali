.class public Lcom/android/common/custom/A;
.super Lcom/android/common/custom/I;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/common/custom/I;-><init>()V

    return-void
.end method


# virtual methods
.method public acF()I
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x2

    return v0
.end method

.method public acJ()Z
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public acK()Z
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public acX()Z
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public adv()Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public adz()Z
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

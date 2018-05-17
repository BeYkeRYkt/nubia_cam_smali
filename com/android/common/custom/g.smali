.class public Lcom/android/common/custom/g;
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
    .line 46
    const/4 v0, 0x2

    return v0
.end method

.method public acJ()Z
    .registers 2

    .prologue
    .line 36
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
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public acU()Z
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public adf()Z
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public adj()Z
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public adw()Z
    .registers 2

    .prologue
    .line 19
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

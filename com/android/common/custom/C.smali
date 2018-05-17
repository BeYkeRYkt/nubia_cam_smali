.class public Lcom/android/common/custom/C;
.super Lcom/android/common/custom/H;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/common/custom/H;-><init>()V

    return-void
.end method


# virtual methods
.method public acu()Z
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public acw()Z
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method public acx()Z
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method protected acy()Z
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public acz()Z
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public adF()Z
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public adK()Z
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public aen()Ljava/lang/String;
    .registers 3

    .prologue
    .line 45
    const-string/jumbo v0, "ro.product.model"

    const-string/jumbo v1, "model"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    const-string/jumbo v0, "zx55q05_64"

    return-object v0
.end method

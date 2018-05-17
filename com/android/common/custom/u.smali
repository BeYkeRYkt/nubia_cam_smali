.class public Lcom/android/common/custom/u;
.super Lcom/android/common/custom/L;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/android/common/custom/L;-><init>()V

    return-void
.end method


# virtual methods
.method public adA()Z
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public adx()F
    .registers 2

    .prologue
    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6
    const-string/jumbo v0, "NX507J"

    return-object v0
.end method

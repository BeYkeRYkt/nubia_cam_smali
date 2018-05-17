.class public Lcom/android/demister/c;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected TL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Tf()I
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 4

    .prologue
    .line 26
    new-instance v0, Lcom/android/common/custom/v;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v0
.end method

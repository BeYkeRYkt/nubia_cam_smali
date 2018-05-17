.class public Lcom/android/triaxial/b;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected TR()I
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 4

    .prologue
    .line 29
    new-instance v0, Lcom/android/common/custom/v;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v0
.end method

.class public Lcom/android/lightpainting/d;
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
    .line 24
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected TU()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    const-string/jumbo v0, "on"

    return-object v0
.end method

.method protected To()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    const-string/jumbo v0, "640x480"

    return-object v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/lightpainting/d;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yw()Lcom/android/common/custom/v;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 30
    iget-object v0, p0, Lcom/android/lightpainting/d;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yw()Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0

    .line 31
    :cond_f
    iget-object v0, p0, Lcom/android/lightpainting/d;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yx()Lcom/android/common/custom/v;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 32
    iget-object v0, p0, Lcom/android/lightpainting/d;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yx()Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0

    .line 34
    :cond_1e
    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-virtual {p0, v0, v1}, Lcom/android/lightpainting/d;->SZ(D)Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0
.end method

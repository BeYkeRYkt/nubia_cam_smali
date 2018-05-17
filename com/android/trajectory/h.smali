.class public Lcom/android/trajectory/h;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected TB()I
    .registers 2

    .prologue
    .line 35
    const/16 v0, 0x13

    return v0
.end method

.method protected To()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/trajectory/h;->SY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/trajectory/h;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yx()Lcom/android/common/custom/v;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 27
    iget-object v0, p0, Lcom/android/trajectory/h;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yx()Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0

    .line 29
    :cond_f
    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-virtual {p0, v0, v1}, Lcom/android/trajectory/h;->SZ(D)Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/intervalometer/j;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected TB()I
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x7

    return v0
.end method

.method protected To()Ljava/lang/String;
    .registers 5

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/intervalometer/j;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/intervalometer/j;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v1}, Lcom/android/common/setting/s;->Yy()Ljava/util/List;

    move-result-object v1

    .line 27
    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 25
    invoke-static {v0, v1, v2, v3}, Lcom/android/common/h;->apA(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tu()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/intervalometer/j;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yx()Lcom/android/common/custom/v;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 34
    iget-object v0, p0, Lcom/android/intervalometer/j;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yx()Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0

    .line 36
    :cond_f
    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-virtual {p0, v0, v1}, Lcom/android/intervalometer/j;->SZ(D)Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0
.end method

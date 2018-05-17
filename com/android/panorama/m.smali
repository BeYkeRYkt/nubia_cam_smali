.class public Lcom/android/panorama/m;
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
.method protected TB()I
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x3

    return v0
.end method

.method protected TR()I
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method protected To()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acX()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 20
    const-string/jumbo v0, "3840x2160"

    return-object v0

    .line 22
    :cond_12
    const-string/jumbo v0, "1920x1080"

    return-object v0
.end method

.method protected UA()I
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/panorama/m;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yx()Lcom/android/common/custom/v;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 28
    iget-object v0, p0, Lcom/android/panorama/m;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yx()Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0

    .line 30
    :cond_f
    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-virtual {p0, v0, v1}, Lcom/android/panorama/m;->SZ(D)Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0
.end method

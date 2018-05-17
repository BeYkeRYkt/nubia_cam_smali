.class public Lcom/android/c/c;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected TB()I
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method protected TE()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Th()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    const-string/jumbo v0, "on"

    return-object v0
.end method

.method protected Tj()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    const-string/jumbo v0, "5"

    return-object v0
.end method

.method protected Tk()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    const-string/jumbo v0, "2"

    return-object v0
.end method

.method protected UH()Z
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 7

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/c/c;->Te()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 32
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v1

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 34
    iget-object v2, p0, Lcom/android/c/c;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/android/c/c;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v3}, Lcom/android/common/setting/s;->Yy()Ljava/util/List;

    move-result-object v3

    .line 33
    invoke-static {v2, v3, v0, v1}, Lcom/android/common/h;->apA(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 37
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/custom/x;->adH()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 39
    const-wide v4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v0, v0, v4

    if-gez v0, :cond_4b

    .line 40
    new-instance v0, Lcom/android/common/custom/v;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v0

    .line 42
    :cond_4b
    new-instance v0, Lcom/android/common/custom/v;

    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v0
.end method

.method protected Un()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    const v0, 0x7f0a0384

    invoke-virtual {p0, v0}, Lcom/android/c/c;->Tb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Uo()I
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method protected Up()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Ux()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    const-string/jumbo v0, "off"

    return-object v0
.end method

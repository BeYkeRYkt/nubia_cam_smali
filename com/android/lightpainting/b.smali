.class public Lcom/android/lightpainting/b;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# instance fields
.field private final atg:[Ljava/lang/String;

.field private final ath:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 10

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ISO100"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ISO100"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ISO200"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ISO400"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ISO800"

    aput-object v1, v0, v7

    const-string/jumbo v1, "ISO1600"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/lightpainting/b;->atg:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "-1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "1/2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "1"

    aput-object v1, v0, v5

    const-string/jumbo v1, "2"

    aput-object v1, v0, v6

    const-string/jumbo v1, "3"

    aput-object v1, v0, v7

    const-string/jumbo v1, "4"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/lightpainting/b;->ath:[Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method protected TB()I
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x5

    return v0
.end method

.method protected TI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected TN()Ljava/lang/String;
    .registers 3

    .prologue
    .line 58
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adB()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 59
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adB()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_1b
    invoke-virtual {p0}, Lcom/android/lightpainting/b;->aFz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/android/lightpainting/b;->atg:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0
.end method

.method protected TS()I
    .registers 2

    .prologue
    .line 52
    sget v0, Lcom/android/common/setting/j;->TQ:I

    return v0
.end method

.method protected TU()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/lightpainting/b;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pZ()I

    move-result v0

    if-nez v0, :cond_c

    .line 87
    const-string/jumbo v0, "on"

    return-object v0

    .line 89
    :cond_c
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Tm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const-string/jumbo v0, "manual"

    return-object v0
.end method

.method protected To()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/lightpainting/b;->SY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Tr()Ljava/lang/String;
    .registers 4

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/lightpainting/b;->aFz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 69
    const-string/jumbo v1, "0"

    iget-object v2, p0, Lcom/android/lightpainting/b;->ath:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {p0, v1, v0}, Lcom/android/lightpainting/b;->Ta(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected UF()Z
    .registers 2

    .prologue
    .line 103
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adf()Z

    move-result v0

    return v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/lightpainting/b;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yw()Lcom/android/common/custom/v;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 34
    iget-object v0, p0, Lcom/android/lightpainting/b;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yw()Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0

    .line 35
    :cond_f
    iget-object v0, p0, Lcom/android/lightpainting/b;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yx()Lcom/android/common/custom/v;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 36
    iget-object v0, p0, Lcom/android/lightpainting/b;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yx()Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0

    .line 38
    :cond_1e
    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-virtual {p0, v0, v1}, Lcom/android/lightpainting/b;->SZ(D)Lcom/android/common/custom/v;

    move-result-object v0

    return-object v0
.end method

.method protected Ul()I
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lightpainting/b;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pZ()I

    move-result v0

    return v0
.end method

.method protected aFz()Ljava/lang/String;
    .registers 4

    .prologue
    .line 77
    const v0, 0x7f0a0470

    invoke-virtual {p0, v0}, Lcom/android/lightpainting/b;->Tb(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/android/lightpainting/b;->UF()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 79
    invoke-virtual {p0}, Lcom/android/lightpainting/b;->Tc()Lcom/android/common/setting/e;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_light_draw_step"

    invoke-virtual {v1, v2, v0}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82
    :cond_19
    return-object v0
.end method

.class public Lcom/android/e/a;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# instance fields
.field aVZ:Landroid/hardware/Camera$Size;

.field aWa:Landroid/hardware/Camera$Size;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 24
    return-void
.end method

.method private bnP()V
    .registers 9

    .prologue
    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 75
    iget-object v0, p0, Lcom/android/e/a;->aVZ:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/e/a;->aVZ:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 76
    iget-object v0, p0, Lcom/android/e/a;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->Yz()Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 78
    iget-object v1, p0, Lcom/android/e/a;->aWa:Landroid/hardware/Camera$Size;

    if-nez v1, :cond_2e

    .line 79
    iput-object v0, p0, Lcom/android/e/a;->aWa:Landroid/hardware/Camera$Size;

    goto :goto_1b

    .line 82
    :cond_2e
    iget-object v1, p0, Lcom/android/e/a;->aWa:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/android/e/a;->aWa:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 83
    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v4, v1

    cmpg-double v1, v4, v6

    if-gez v1, :cond_6b

    const/4 v1, 0x1

    .line 84
    :goto_44
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v4, v4

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 85
    if-eqz v1, :cond_6d

    .line 86
    sub-float v1, v4, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v4, v1

    cmpg-double v1, v4, v6

    if-gez v1, :cond_1b

    .line 87
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v4

    iget-object v4, p0, Lcom/android/e/a;->aWa:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    iget-object v5, p0, Lcom/android/e/a;->aWa:Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    if-le v1, v4, :cond_1b

    .line 88
    iput-object v0, p0, Lcom/android/e/a;->aWa:Landroid/hardware/Camera$Size;

    goto :goto_1b

    .line 83
    :cond_6b
    const/4 v1, 0x0

    goto :goto_44

    .line 91
    :cond_6d
    sub-float v1, v4, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v4, v1

    cmpg-double v1, v4, v6

    if-ltz v1, :cond_88

    .line 92
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v4

    iget-object v4, p0, Lcom/android/e/a;->aWa:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    iget-object v5, p0, Lcom/android/e/a;->aWa:Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    if-le v1, v4, :cond_1b

    .line 93
    :cond_88
    iput-object v0, p0, Lcom/android/e/a;->aWa:Landroid/hardware/Camera$Size;

    goto :goto_1b

    .line 74
    :cond_8b
    return-void
.end method

.method private bnQ()V
    .registers 6

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/android/e/a;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v1}, Lcom/android/common/setting/s;->Yy()Ljava/util/List;

    move-result-object v1

    .line 103
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 104
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v4

    .line 105
    if-le v2, v1, :cond_25

    .line 107
    iput-object v0, p0, Lcom/android/e/a;->aVZ:Landroid/hardware/Camera$Size;

    move v0, v2

    :goto_22
    move v1, v0

    goto :goto_c

    .line 100
    :cond_24
    return-void

    :cond_25
    move v0, v1

    goto :goto_22
.end method


# virtual methods
.method protected TB()I
    .registers 2

    .prologue
    .line 61
    const/16 v0, 0xe

    return v0
.end method

.method protected Ts()Z
    .registers 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/e/a;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "pref_camera_interval_switch"

    .line 68
    const v2, 0x7f0a0477

    invoke-virtual {p0, v2}, Lcom/android/e/a;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 70
    iget-object v0, p0, Lcom/android/e/a;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    .line 69
    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x1

    goto :goto_27
.end method

.method public Tt(ILcom/android/common/setting/s;)V
    .registers 3

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/android/common/setting/c;->Tt(ILcom/android/common/setting/s;)V

    .line 31
    invoke-direct {p0}, Lcom/android/e/a;->bnQ()V

    .line 32
    invoke-direct {p0}, Lcom/android/e/a;->bnP()V

    .line 29
    return-void
.end method

.method protected Tu()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->adM()Z

    move-result v1

    .line 43
    invoke-virtual {p0}, Lcom/android/e/a;->Tr()Ljava/lang/String;

    move-result-object v2

    .line 44
    const-string/jumbo v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_27

    .line 45
    if-eqz v1, :cond_27

    const/4 v0, 0x1

    .line 49
    :cond_27
    if-eqz v0, :cond_2d

    .line 50
    const-string/jumbo v0, "on"

    return-object v0

    .line 51
    :cond_2d
    invoke-super {p0}, Lcom/android/common/setting/c;->Tu()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected UF()Z
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/android/front/d;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected TB()I
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method protected TE()Ljava/lang/String;
    .registers 4

    .prologue
    .line 76
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aet()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 77
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adK()Z

    move-result v0

    .line 76
    if-eqz v0, :cond_20

    .line 78
    :cond_1c
    const-string/jumbo v0, "off"

    return-object v0

    .line 80
    :cond_20
    invoke-virtual {p0}, Lcom/android/front/d;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 81
    const-string/jumbo v1, "pref_camera_doc_pretty"

    .line 82
    const v2, 0x7f0a02d5

    invoke-virtual {p0, v2}, Lcom/android/front/d;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Th()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    const-string/jumbo v0, "on"

    return-object v0
.end method

.method protected Ti()Ljava/lang/String;
    .registers 4

    .prologue
    .line 120
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 121
    invoke-virtual {p0}, Lcom/android/front/d;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 122
    const-string/jumbo v1, "pref_third_arith_hdr_key"

    .line 123
    const v2, 0x7f0a04c4

    invoke-virtual {p0, v2}, Lcom/android/front/d;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :cond_21
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Tj()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const-string/jumbo v0, "5"

    return-object v0
.end method

.method protected Tk()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    const-string/jumbo v0, "2"

    return-object v0
.end method

.method protected UH()Z
    .registers 5

    .prologue
    .line 87
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aet()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 88
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adK()Z

    move-result v0

    .line 87
    if-nez v0, :cond_44

    .line 89
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acY()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 92
    const-string/jumbo v0, "on"

    invoke-virtual {p0}, Lcom/android/front/d;->Tc()Lcom/android/common/setting/e;

    move-result-object v1

    .line 93
    const-string/jumbo v2, "pref_camera_doc_pretty"

    .line 94
    const v3, 0x7f0a02d5

    invoke-virtual {p0, v3}, Lcom/android/front/d;->Tb(I)Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 90
    :cond_44
    const/4 v0, 0x0

    return v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 7

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/front/d;->Te()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 33
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v1

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 35
    iget-object v2, p0, Lcom/android/front/d;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/android/front/d;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v3}, Lcom/android/common/setting/s;->Yy()Ljava/util/List;

    move-result-object v3

    .line 34
    invoke-static {v2, v3, v0, v1}, Lcom/android/common/h;->apA(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 38
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/custom/x;->adH()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 40
    const-wide v4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v0, v0, v4

    if-gez v0, :cond_4b

    .line 41
    new-instance v0, Lcom/android/common/custom/v;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v0

    .line 43
    :cond_4b
    new-instance v0, Lcom/android/common/custom/v;

    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v0
.end method

.method protected Un()Ljava/lang/String;
    .registers 4

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/front/d;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 109
    const-string/jumbo v1, "pref_snapshot_mirror_key"

    .line 110
    const v2, 0x7f0a0384

    invoke-virtual {p0, v2}, Lcom/android/front/d;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Up()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Ux()Ljava/lang/String;
    .registers 4

    .prologue
    .line 98
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aet()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 99
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adK()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 102
    invoke-virtual {p0}, Lcom/android/front/d;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_zk_pretty"

    .line 103
    const v2, 0x7f0a02d6

    invoke-virtual {p0, v2}, Lcom/android/front/d;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_2f
    const-string/jumbo v0, "off"

    return-object v0
.end method

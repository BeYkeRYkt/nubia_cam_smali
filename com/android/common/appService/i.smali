.class public Lcom/android/common/appService/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final synthetic hI:[I


# instance fields
.field private hC:Lcom/android/common/appService/W;

.field private final hD:Lcom/android/common/b;

.field private hE:Lcom/android/common/cameradevice/q;

.field private hF:Ljava/lang/Runnable;

.field private hG:Ljava/lang/Object;

.field private hH:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    .line 37
    new-instance v0, Lcom/android/common/b;

    invoke-direct {v0}, Lcom/android/common/b;-><init>()V

    iput-object v0, p0, Lcom/android/common/appService/i;->hD:Lcom/android/common/b;

    .line 39
    new-instance v0, Lcom/android/common/appService/ac;

    invoke-direct {v0, p0}, Lcom/android/common/appService/ac;-><init>(Lcom/android/common/appService/i;)V

    iput-object v0, p0, Lcom/android/common/appService/i;->hE:Lcom/android/common/cameradevice/q;

    .line 434
    new-instance v0, Lcom/android/common/appService/ad;

    invoke-direct {v0, p0}, Lcom/android/common/appService/ad;-><init>(Lcom/android/common/appService/i;)V

    iput-object v0, p0, Lcom/android/common/appService/i;->hF:Ljava/lang/Runnable;

    .line 68
    iput-object p1, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    .line 69
    new-instance v0, Ljava/util/BitSet;

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MU()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/common/appService/i;->hH:Ljava/util/BitSet;

    .line 70
    iget-object v0, p0, Lcom/android/common/appService/i;->hH:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/appService/i;->hG:Ljava/lang/Object;

    .line 67
    return-void
.end method

.method private iM(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 542
    const-string/jumbo v0, "PreviewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "debuglog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method private iN(I)Lcom/android/common/cameradevice/j;
    .registers 3

    .prologue
    .line 534
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method private iO()Lcom/android/common/camerastate/DeviceState;
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    return-object v0
.end method

.method private iP()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    return-object v0
.end method

.method private iQ(I)Lcom/android/common/setting/o;
    .registers 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v0

    return-object v0
.end method

.method private iR(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    sget-boolean v2, Lcom/android/common/h;->ahs:Z

    if-eqz v2, :cond_13

    .line 109
    if-eq p1, p2, :cond_13

    .line 110
    sget-object v2, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    if-eq p1, v2, :cond_10

    sget-object v2, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    if-ne p2, v2, :cond_11

    .line 108
    :cond_10
    :goto_10
    return v0

    :cond_11
    move v0, v1

    .line 110
    goto :goto_10

    :cond_13
    move v0, v1

    .line 108
    goto :goto_10
.end method

.method private iS()Z
    .registers 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jf:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_34

    .line 115
    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v1

    const-string/jumbo v2, "pref_big_aperature_key"

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 114
    if-nez v0, :cond_34

    .line 116
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/h;->apH(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;)Z

    move-result v0

    .line 114
    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x1

    goto :goto_33
.end method

.method private iT()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 103
    iget-object v1, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qX()Z

    move-result v1

    if-nez v1, :cond_13

    .line 104
    iget-object v1, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jl:Lcom/android/common/appService/CameraMember;

    if-ne v1, v2, :cond_14

    .line 103
    :cond_13
    :goto_13
    return v0

    .line 104
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private iU()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 485
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    .line 487
    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    .line 489
    const-string/jumbo v3, "pref_camera_ae_bracket_hdr_key"

    .line 490
    const v4, 0x7f0a015a

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 489
    invoke-virtual {v0, v3, v4}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 491
    const-string/jumbo v4, "pref_camera_interval_switch"

    .line 492
    const v5, 0x7f0a0477

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 491
    invoke-virtual {v0, v4, v5}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    sget-object v4, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-eq v1, v4, :cond_37

    .line 495
    sget-object v4, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    if-ne v1, v4, :cond_45

    .line 496
    :cond_37
    const v4, 0x7f0a0159

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 494
    if-eqz v3, :cond_45

    .line 497
    return v6

    .line 500
    :cond_45
    sget-object v3, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    if-ne v1, v3, :cond_57

    .line 501
    const v3, 0x7f0a0476

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 500
    if-eqz v0, :cond_57

    .line 502
    return v6

    .line 505
    :cond_57
    sget-object v0, Lcom/android/common/appService/CameraMember;->jm:Lcom/android/common/appService/CameraMember;

    if-eq v1, v0, :cond_5f

    .line 506
    sget-object v0, Lcom/android/common/appService/CameraMember;->jF:Lcom/android/common/appService/CameraMember;

    if-ne v1, v0, :cond_60

    .line 507
    :cond_5f
    return v6

    .line 510
    :cond_60
    const/4 v0, 0x0

    return v0
.end method

.method private iV(Lcom/android/common/appService/W;)Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 121
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Vh()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Nm()Ljava/lang/String;

    move-result-object v1

    .line 123
    if-eqz v0, :cond_5a

    .line 124
    if-eqz v0, :cond_1b

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 129
    :cond_1b
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Xx()Z

    move-result v0

    .line 130
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LG()Z

    move-result v1

    .line 131
    if-eq v0, v1, :cond_87

    .line 132
    const-string/jumbo v2, "PreviewManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recordingHint old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "; new: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Need restart preview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return v5

    .line 125
    :cond_5a
    const-string/jumbo v2, "PreviewManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "zsl old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "; new: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", need restart Preview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return v5

    .line 136
    :cond_87
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XJ()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 137
    const-string/jumbo v0, "PreviewManager"

    const-string/jumbo v1, "Preview size changed, Need restart preview"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return v5

    .line 141
    :cond_9b
    const/4 v0, 0x0

    return v0
.end method

.method private iW(Lcom/android/common/setting/o;)V
    .registers 8

    .prologue
    .line 351
    invoke-interface {p1}, Lcom/android/common/setting/o;->XC()Lcom/android/common/custom/v;

    move-result-object v0

    .line 352
    if-nez v0, :cond_7

    .line 353
    return-void

    .line 355
    :cond_7
    iget v1, v0, Lcom/android/common/custom/v;->width:I

    int-to-double v2, v1

    iget v0, v0, Lcom/android/common/custom/v;->height:I

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 356
    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/ActivityBase;->atb()Lcom/android/common/appService/R;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/R;->ot()D

    move-result-wide v2

    .line 358
    cmpl-double v4, v0, v2

    if-eqz v4, :cond_4b

    .line 359
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v2, v4, v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4b

    .line 360
    const-string/jumbo v0, "PreviewManager"

    const-string/jumbo v1, "reset zoom value"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asV()Lcom/android/common/appService/T;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 362
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asV()Lcom/android/common/appService/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/T;->oH()V

    .line 350
    :cond_4b
    return-void
.end method

.method private iX(I)V
    .registers 5

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lcom/android/common/appService/i;->iN(I)Lcom/android/common/cameradevice/j;

    move-result-object v1

    monitor-enter v1

    .line 515
    :try_start_5
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    .line 516
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/common/cameradevice/p;->No(I)V

    .line 517
    invoke-direct {p0, p1}, Lcom/android/common/appService/i;->iN(I)Lcom/android/common/cameradevice/j;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    .line 513
    return-void

    .line 514
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private iY(Ljava/util/ArrayList;)V
    .registers 4

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1f

    .line 51
    iget-object v1, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/common/appService/W;->qW(I)V

    .line 49
    :cond_1f
    return-void
.end method

.method private iZ(Lcom/android/common/camerastate/DeviceState;)V
    .registers 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 525
    return-void
.end method

.method private ja()V
    .registers 7

    .prologue
    const/4 v1, -0x1

    .line 186
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/g;->Kj()I

    move-result v0

    .line 187
    if-ne v0, v1, :cond_e

    .line 188
    return-void

    .line 190
    :cond_e
    iget-object v1, p0, Lcom/android/common/appService/i;->hG:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_11
    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iN(I)Lcom/android/common/cameradevice/j;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 192
    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pk()Z
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_64

    move-result v2

    .line 191
    if-eqz v2, :cond_21

    :cond_1f
    monitor-exit v1

    .line 193
    return-void

    .line 195
    :cond_21
    :try_start_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSubCameraPara4OpticalZoom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/common/appService/i;->iM(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iN(I)Lcom/android/common/cameradevice/j;

    move-result-object v2

    .line 197
    iget-object v3, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v3, v0}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/android/common/setting/o;->XS(I)V

    .line 198
    iget-object v3, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v3, v0}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/setting/o;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v3

    .line 199
    const-string/jumbo v4, "no-display-mode"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    .line 200
    invoke-virtual {v2, v3}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    .line 201
    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/android/common/h;->aoQ(II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/common/cameradevice/j;->KL(I)V
    :try_end_62
    .catchall {:try_start_21 .. :try_end_62} :catchall_64

    monitor-exit v1

    .line 185
    return-void

    .line 190
    :catchall_64
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private jb(Ljava/util/ArrayList;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 55
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XB()Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-ne v1, v0, :cond_3e

    .line 58
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_3f

    .line 59
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->qs(Z)V

    .line 63
    :goto_35
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/appService/H;->mU(Z)V

    .line 54
    :cond_3e
    return-void

    .line 61
    :cond_3f
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->qs(Z)V

    goto :goto_35
.end method

.method private jc()V
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 242
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/g;->Kh()I

    move-result v1

    .line 243
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/g;->Kj()I

    move-result v2

    .line 245
    if-eq v1, v3, :cond_19

    .line 246
    if-ne v2, v3, :cond_22

    .line 247
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Dual preview not supported in this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_22
    invoke-virtual {p0}, Lcom/android/common/appService/i;->ji()V

    .line 252
    const/4 v0, 0x0

    .line 253
    invoke-direct {p0}, Lcom/android/common/appService/i;->iP()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v3

    sget-object v4, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v3, v4, :cond_57

    .line 254
    const/16 v0, 0x1e

    .line 261
    :cond_30
    :goto_30
    iget-object v3, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v3, v1}, Lcom/android/common/appService/W;->qm(I)Lcom/android/common/cameradevice/p;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/cameradevice/p;->Nn()I

    move-result v3

    if-ne v3, v0, :cond_42

    .line 262
    invoke-direct {p0, v1}, Lcom/android/common/appService/i;->iX(I)V

    .line 263
    invoke-direct {p0, v2}, Lcom/android/common/appService/i;->iX(I)V

    .line 266
    :cond_42
    invoke-direct {p0}, Lcom/android/common/appService/i;->jd()Z

    move-result v0

    .line 267
    if-eqz v0, :cond_56

    .line 268
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    new-instance v2, Lcom/android/common/appService/af;

    invoke-direct {v2, p0, v1}, Lcom/android/common/appService/af;-><init>(Lcom/android/common/appService/i;I)V

    invoke-virtual {v0, v2, v1}, Lcom/android/common/appService/k;->jG(Landroid/hardware/Camera$PreviewCallback;I)V

    .line 241
    :cond_56
    return-void

    .line 255
    :cond_57
    invoke-direct {p0}, Lcom/android/common/appService/i;->iP()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v3

    sget-object v4, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v3, v4, :cond_30

    .line 256
    const/16 v0, 0x1c

    goto :goto_30
.end method

.method private jd()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 291
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/g;->Kh()I

    move-result v0

    .line 292
    const-string/jumbo v1, "PreviewManager"

    const-string/jumbo v2, "startPreview"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/android/common/appService/i;->hG:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_19
    iget-object v2, p0, Lcom/android/common/appService/i;->hH:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_10f

    move-result v2

    if-nez v2, :cond_23

    .line 296
    if-ne v0, v3, :cond_25

    :cond_23
    monitor-exit v1

    .line 299
    return v5

    .line 297
    :cond_25
    :try_start_25
    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iN(I)Lcom/android/common/cameradevice/j;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 298
    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pk()Z

    move-result v2

    .line 295
    if-nez v2, :cond_23

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPreview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/common/appService/i;->iM(Ljava/lang/String;)V

    .line 303
    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iN(I)Lcom/android/common/cameradevice/j;

    move-result-object v2

    .line 305
    iget-object v3, p0, Lcom/android/common/appService/i;->hD:Lcom/android/common/b;

    invoke-virtual {v2, v3}, Lcom/android/common/cameradevice/j;->KM(Landroid/hardware/Camera$ErrorCallback;)V

    .line 306
    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/android/common/h;->aoQ(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/common/cameradevice/j;->KL(I)V

    .line 310
    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iQ(I)Lcom/android/common/setting/o;

    move-result-object v3

    if-eqz v3, :cond_75

    .line 311
    const-string/jumbo v3, "continuous-picture"

    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iQ(I)Lcom/android/common/setting/o;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/common/setting/o;->Xs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 310
    if-eqz v3, :cond_75

    .line 312
    invoke-virtual {v2}, Lcom/android/common/cameradevice/j;->KN()V

    .line 315
    :cond_75
    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iQ(I)Lcom/android/common/setting/o;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/common/appService/i;->iW(Lcom/android/common/setting/o;)V

    .line 317
    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iQ(I)Lcom/android/common/setting/o;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/android/common/setting/o;->XS(I)V

    .line 319
    iget-object v3, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/common/a/g;->az(Lcom/android/common/cameradevice/j;Z)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 320
    const-string/jumbo v0, "PreviewManager"

    const-string/jumbo v2, "setCameraPrevieweTarget fail"

    invoke-static {v0, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_25 .. :try_end_9a} :catchall_10f

    monitor-exit v1

    .line 321
    return v5

    .line 324
    :cond_9c
    :try_start_9c
    iget-object v3, p0, Lcom/android/common/appService/i;->hH:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->set(I)V

    .line 325
    invoke-virtual {v2}, Lcom/android/common/cameradevice/j;->KH()V

    .line 329
    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    sget-object v3, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    if-ne v2, v3, :cond_b4

    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    iget-boolean v2, v2, Lcom/android/common/appService/W;->lr:Z

    if-eqz v2, :cond_be

    .line 330
    :cond_b4
    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    sget-object v3, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    if-ne v2, v3, :cond_c9

    .line 331
    :cond_be
    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/common/ActivityBase;->asZ(I)V

    .line 334
    :cond_c9
    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    sget-object v3, Lcom/android/common/appService/CameraMember;->jl:Lcom/android/common/appService/CameraMember;

    if-ne v2, v3, :cond_dc

    .line 335
    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iQ(I)Lcom/android/common/setting/o;

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/android/common/setting/o;->XS(I)V

    .line 338
    :cond_dc
    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->qZ()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_fb

    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->ra()Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 339
    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 342
    :cond_fb
    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/ActivityBase;->ata()V

    .line 344
    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iN(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v2, p0, Lcom/android/common/appService/i;->hE:Lcom/android/common/cameradevice/q;

    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->KO(Lcom/android/common/cameradevice/q;)V
    :try_end_10d
    .catchall {:try_start_9c .. :try_end_10d} :catchall_10f

    monitor-exit v1

    .line 345
    return v6

    .line 294
    :catchall_10f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private je()V
    .registers 4

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/common/appService/i;->ji()V

    .line 209
    invoke-direct {p0}, Lcom/android/common/appService/i;->jd()Z

    move-result v0

    .line 210
    if-eqz v0, :cond_29

    .line 211
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qY()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 212
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/g;->Kh()I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v1

    new-instance v2, Lcom/android/common/appService/ae;

    invoke-direct {v2, p0, v0}, Lcom/android/common/appService/ae;-><init>(Lcom/android/common/appService/i;I)V

    invoke-virtual {v1, v2, v0}, Lcom/android/common/appService/k;->jG(Landroid/hardware/Camera$PreviewCallback;I)V

    .line 231
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qY()Z

    move-result v0

    if-nez v0, :cond_34

    .line 232
    invoke-direct {p0}, Lcom/android/common/appService/i;->jk()V

    .line 206
    :cond_34
    return-void

    .line 228
    :cond_35
    sget-object v0, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iZ(Lcom/android/common/camerastate/DeviceState;)V

    goto :goto_29
.end method

.method private jg()V
    .registers 7

    .prologue
    const/4 v3, -0x1

    .line 368
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/g;->Kj()I

    move-result v0

    .line 369
    if-ne v0, v3, :cond_e

    .line 370
    return-void

    .line 372
    :cond_e
    iget-object v1, p0, Lcom/android/common/appService/i;->hG:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_11
    iget-object v2, p0, Lcom/android/common/appService/i;->hH:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_89

    move-result v2

    if-nez v2, :cond_1b

    .line 374
    if-ne v0, v3, :cond_1d

    :cond_1b
    monitor-exit v1

    .line 377
    return-void

    .line 375
    :cond_1d
    :try_start_1d
    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iN(I)Lcom/android/common/cameradevice/j;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 376
    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pk()Z

    move-result v2

    .line 373
    if-nez v2, :cond_1b

    .line 379
    iget-object v2, p0, Lcom/android/common/appService/i;->hH:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPreview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/common/appService/i;->iM(Ljava/lang/String;)V

    .line 381
    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iN(I)Lcom/android/common/cameradevice/j;

    move-result-object v2

    .line 382
    iget-object v3, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v3, v0}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/android/common/setting/o;->XS(I)V

    .line 383
    iget-object v3, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v3, v0}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/setting/o;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v3

    .line 384
    const-string/jumbo v4, "no-display-mode"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    .line 385
    invoke-virtual {v2, v3}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    .line 386
    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/android/common/h;->aoQ(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/common/cameradevice/j;->KL(I)V

    .line 387
    invoke-virtual {v2}, Lcom/android/common/cameradevice/j;->KH()V

    .line 388
    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    sget-object v3, Lcom/android/common/appService/CameraMember;->jl:Lcom/android/common/appService/CameraMember;

    if-ne v2, v3, :cond_87

    .line 389
    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iQ(I)Lcom/android/common/setting/o;

    move-result-object v0

    const/16 v2, 0x8

    invoke-interface {v0, v2}, Lcom/android/common/setting/o;->XS(I)V
    :try_end_87
    .catchall {:try_start_1d .. :try_end_87} :catchall_89

    :cond_87
    monitor-exit v1

    .line 367
    return-void

    .line 372
    :catchall_89
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private jh()V
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 395
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/g;->Kh()I

    move-result v0

    .line 396
    if-ne v0, v3, :cond_e

    .line 397
    return-void

    .line 399
    :cond_e
    iget-object v1, p0, Lcom/android/common/appService/i;->hG:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_11
    iget-object v2, p0, Lcom/android/common/appService/i;->hH:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_a5

    move-result v2

    if-eqz v2, :cond_1b

    .line 401
    if-ne v0, v3, :cond_1d

    :cond_1b
    monitor-exit v1

    .line 402
    return-void

    .line 405
    :cond_1d
    :try_start_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPreview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/common/appService/i;->iM(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iN(I)Lcom/android/common/cameradevice/j;

    move-result-object v2

    .line 408
    if-eqz v2, :cond_75

    .line 409
    const-string/jumbo v3, "PreviewManager"

    const-string/jumbo v4, "stopPreview"

    invoke-static {v3, v4}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-direct {p0}, Lcom/android/common/appService/i;->iO()Lcom/android/common/camerastate/DeviceState;

    move-result-object v3

    sget-object v4, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-ne v3, v4, :cond_55

    .line 411
    iget-object v3, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v3

    sget-object v4, Lcom/android/common/appService/CameraMember;->jm:Lcom/android/common/appService/CameraMember;

    if-eq v3, v4, :cond_60

    .line 412
    :cond_55
    iget-object v3, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pk()Z

    move-result v3

    if-nez v3, :cond_60

    .line 413
    invoke-virtual {v2}, Lcom/android/common/cameradevice/j;->KN()V

    .line 416
    :cond_60
    iget-object v3, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->qR()V

    .line 417
    invoke-virtual {v2}, Lcom/android/common/cameradevice/j;->KP()V

    .line 418
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/common/cameradevice/j;->KO(Lcom/android/common/cameradevice/q;)V

    .line 419
    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/common/appService/k;->jH(I)V

    .line 422
    :cond_75
    iget-object v2, p0, Lcom/android/common/appService/i;->hH:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->clear(I)V

    .line 423
    invoke-direct {p0}, Lcom/android/common/appService/i;->iO()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v2, :cond_88

    invoke-direct {p0}, Lcom/android/common/appService/i;->iU()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 425
    :cond_88
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_9f

    .line 426
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/common/appService/i;->hF:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9d
    .catchall {:try_start_1d .. :try_end_9d} :catchall_a5

    :cond_9d
    :goto_9d
    monitor-exit v1

    .line 394
    return-void

    .line 428
    :cond_9f
    :try_start_9f
    iget-object v0, p0, Lcom/android/common/appService/i;->hF:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_a4
    .catchall {:try_start_9f .. :try_end_a4} :catchall_a5

    goto :goto_9d

    .line 399
    :catchall_a5
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private jj()V
    .registers 5

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/g;->Kj()I

    move-result v0

    .line 455
    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 456
    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iN(I)Lcom/android/common/cameradevice/j;

    move-result-object v1

    if-nez v1, :cond_14

    .line 457
    :cond_13
    return-void

    .line 459
    :cond_14
    iget-object v1, p0, Lcom/android/common/appService/i;->hG:Ljava/lang/Object;

    monitor-enter v1

    .line 460
    :try_start_17
    iget-object v2, p0, Lcom/android/common/appService/i;->hH:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_51

    move-result v2

    if-nez v2, :cond_21

    monitor-exit v1

    .line 461
    return-void

    .line 463
    :cond_21
    :try_start_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPreview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/common/appService/i;->iM(Ljava/lang/String;)V

    .line 464
    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iN(I)Lcom/android/common/cameradevice/j;

    move-result-object v2

    .line 465
    if-eqz v2, :cond_41

    .line 466
    invoke-virtual {v2}, Lcom/android/common/cameradevice/j;->KP()V

    .line 468
    :cond_41
    iget-object v2, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/common/appService/k;->jH(I)V

    .line 469
    iget-object v2, p0, Lcom/android/common/appService/i;->hH:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->clear(I)V
    :try_end_4f
    .catchall {:try_start_21 .. :try_end_4f} :catchall_51

    monitor-exit v1

    .line 453
    return-void

    .line 459
    :catchall_51
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private jk()V
    .registers 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Xq()Ljava/lang/String;

    move-result-object v0

    .line 475
    if-nez v0, :cond_d

    return-void

    .line 477
    :cond_d
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 478
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qR()V

    .line 473
    :goto_1b
    return-void

    .line 480
    :cond_1c
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qS()V

    goto :goto_1b
.end method

.method static synthetic jl(Lcom/android/common/appService/i;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic jm(Lcom/android/common/appService/i;)Ljava/util/BitSet;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/i;->hH:Ljava/util/BitSet;

    return-object v0
.end method

.method static synthetic jn(Lcom/android/common/appService/i;)Lcom/android/common/appService/IDualCameraControl$DualCameraMode;
    .registers 2

    invoke-direct {p0}, Lcom/android/common/appService/i;->iP()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic jo(Lcom/android/common/appService/i;)Lcom/android/common/camerastate/DeviceState;
    .registers 2

    invoke-direct {p0}, Lcom/android/common/appService/i;->iO()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic jp(Lcom/android/common/appService/i;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/appService/i;->iM(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic jq(Lcom/android/common/appService/i;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/appService/i;->iY(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic jr(Lcom/android/common/appService/i;Lcom/android/common/camerastate/DeviceState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/appService/i;->iZ(Lcom/android/common/camerastate/DeviceState;)V

    return-void
.end method

.method static synthetic js(Lcom/android/common/appService/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/appService/i;->ja()V

    return-void
.end method

.method static synthetic jt(Lcom/android/common/appService/i;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/appService/i;->jb(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic ju(Lcom/android/common/appService/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/appService/i;->jg()V

    return-void
.end method

.method static synthetic jv(Lcom/android/common/appService/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/appService/i;->jk()V

    return-void
.end method

.method private static synthetic jw()[I
    .registers 3

    sget-object v0, Lcom/android/common/appService/i;->hI:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/common/appService/i;->hI:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->values()[Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    invoke-virtual {v1}, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    invoke-virtual {v1}, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hc:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    invoke-virtual {v1}, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/android/common/appService/i;->hI:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method


# virtual methods
.method public iK()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 148
    invoke-direct {p0}, Lcom/android/common/appService/i;->iS()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 149
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/common/appService/b;->hW(Z)V

    .line 155
    :goto_14
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asY()V

    .line 147
    return-void

    .line 150
    :cond_1e
    invoke-direct {p0}, Lcom/android/common/appService/i;->iT()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 151
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/common/appService/b;->hZ(Z)V

    goto :goto_14

    .line 153
    :cond_32
    invoke-virtual {p0}, Lcom/android/common/appService/i;->jf()V

    goto :goto_14
.end method

.method public iL(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/common/appService/i;->iP()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    .line 76
    invoke-direct {p0}, Lcom/android/common/appService/i;->iT()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 77
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/common/appService/b;->hZ(Z)V

    .line 74
    :goto_19
    return-void

    .line 78
    :cond_1a
    invoke-direct {p0}, Lcom/android/common/appService/i;->iS()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 79
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/common/appService/b;->hW(Z)V

    goto :goto_19

    .line 81
    :cond_2e
    invoke-static {}, Lcom/android/common/appService/i;->jw()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_80

    goto :goto_19

    .line 83
    :pswitch_3c
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/common/appService/b;->hW(Z)V

    goto :goto_19

    .line 86
    :pswitch_4a
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/common/appService/b;->hZ(Z)V

    goto :goto_19

    .line 89
    :pswitch_58
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iV(Lcom/android/common/appService/W;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/common/appService/i;->iR(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)Z

    move-result v0

    .line 89
    if-eqz v0, :cond_73

    .line 91
    :cond_66
    invoke-virtual {p0}, Lcom/android/common/appService/i;->jf()V

    .line 92
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asY()V

    goto :goto_19

    .line 94
    :cond_73
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_19

    .line 81
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_4a
        :pswitch_58
    .end packed-switch
.end method

.method public jf()V
    .registers 5

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/common/appService/i;->hG:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_3
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_43

    move-result v0

    if-eqz v0, :cond_d

    monitor-exit v1

    .line 161
    return-void

    .line 164
    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/android/common/appService/i;->iP()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/common/appService/i;->iM(Ljava/lang/String;)V

    .line 167
    sget-object v2, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-eq v0, v2, :cond_30

    .line 168
    sget-object v2, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v2, :cond_35

    .line 170
    :cond_30
    invoke-direct {p0}, Lcom/android/common/appService/i;->jc()V
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_43

    :goto_33
    monitor-exit v1

    .line 158
    return-void

    .line 169
    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/android/common/appService/i;->hC:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v2, Lcom/android/common/appService/CameraMember;->jz:Lcom/android/common/appService/CameraMember;

    if-eq v0, v2, :cond_30

    .line 172
    invoke-direct {p0}, Lcom/android/common/appService/i;->je()V
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_43

    goto :goto_33

    .line 159
    :catchall_43
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public ji()V
    .registers 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/common/appService/i;->hG:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_3
    invoke-direct {p0}, Lcom/android/common/appService/i;->jj()V

    .line 180
    invoke-direct {p0}, Lcom/android/common/appService/i;->jh()V

    .line 181
    sget-object v0, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    invoke-direct {p0, v0}, Lcom/android/common/appService/i;->iZ(Lcom/android/common/camerastate/DeviceState;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v1

    .line 177
    return-void

    .line 178
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

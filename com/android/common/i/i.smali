.class public Lcom/android/common/i/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/i/c;


# instance fields
.field private Zg:Lcom/android/common/appService/W;

.field private Zh:Lcom/android/common/i/k;

.field private Zi:Landroid/hardware/Camera$ShutterCallback;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    .line 30
    iput-object v1, p0, Lcom/android/common/i/i;->Zi:Landroid/hardware/Camera$ShutterCallback;

    .line 31
    iput-object v1, p0, Lcom/android/common/i/i;->Zh:Lcom/android/common/i/k;

    .line 34
    iput-object p1, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    .line 35
    new-instance v0, Lcom/android/common/i/k;

    invoke-direct {v0, p1}, Lcom/android/common/i/k;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/i/i;->Zh:Lcom/android/common/i/k;

    .line 36
    new-instance v0, Lcom/android/common/i/j;

    invoke-direct {v0, p0, v1}, Lcom/android/common/i/j;-><init>(Lcom/android/common/i/i;Lcom/android/common/i/j;)V

    iput-object v0, p0, Lcom/android/common/i/i;->Zi:Landroid/hardware/Camera$ShutterCallback;

    .line 33
    return-void
.end method

.method static synthetic afA(Lcom/android/common/i/i;)Lcom/android/common/cameradevice/j;
    .registers 2

    invoke-direct {p0}, Lcom/android/common/i/i;->afw()Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method private afw()Lcom/android/common/cameradevice/j;
    .registers 3

    .prologue
    .line 120
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic afx(Lcom/android/common/i/i;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic afy(Lcom/android/common/i/i;)Lcom/android/common/i/k;
    .registers 2

    iget-object v0, p0, Lcom/android/common/i/i;->Zh:Lcom/android/common/i/k;

    return-object v0
.end method

.method static synthetic afz(Lcom/android/common/i/i;)Landroid/hardware/Camera$ShutterCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/common/i/i;->Zi:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method


# virtual methods
.method public aeS()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 41
    const-string/jumbo v0, "QCOMContinousShot"

    const-string/jumbo v1, "startMultiShoot"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 43
    const-string/jumbo v0, "QCOMContinousShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FunctionState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return v5

    .line 47
    :cond_3e
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v0, v4}, Lcom/android/common/appService/W;->pM(Z)V

    .line 48
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v0, v4}, Lcom/android/common/appService/W;->qn(Z)V

    .line 49
    invoke-direct {p0}, Lcom/android/common/i/i;->afw()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/common/cameradevice/j;->Ld(Z)V

    .line 50
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amK(Lcom/android/common/camerastate/FunctionState;)V

    .line 53
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "/"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a04b6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    const/16 v1, 0x2f

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/common/h;->apn(J)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/android/common/i/i;->Zh:Lcom/android/common/i/k;

    invoke-virtual {v1, v0}, Lcom/android/common/i/k;->afB(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/common/i/i;->Zh:Lcom/android/common/i/k;

    invoke-virtual {v0, v4}, Lcom/android/common/i/k;->afC(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/common/m/c;->ahn(Z)V

    .line 60
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->ht()V

    .line 61
    return v4
.end method

.method public aeT()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    const-string/jumbo v0, "QCOMContinousShot"

    const-string/jumbo v1, "stopMultiShoot"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_3e

    .line 69
    const-string/jumbo v0, "QCOMContinousShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FunctionState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return v3

    .line 74
    :cond_3e
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->pM(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qP()V

    .line 78
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->qn(Z)V

    .line 79
    invoke-direct {p0}, Lcom/android/common/i/i;->afw()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/common/cameradevice/j;->Ld(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/m/c;->ahn(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/common/i/i;->Zh:Lcom/android/common/i/k;

    invoke-virtual {v0, v3}, Lcom/android/common/i/k;->afC(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amL(Lcom/android/common/camerastate/FunctionState;)V

    .line 84
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 86
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->WJ()V

    .line 88
    const-string/jumbo v0, "continuous-picture"

    .line 89
    iget-object v1, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Lo()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 90
    invoke-direct {p0}, Lcom/android/common/i/i;->afw()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KN()V

    .line 94
    :cond_9b
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 95
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 96
    return v2
.end method

.method public pa()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_3b

    .line 102
    const-string/jumbo v0, "QCOMContinousShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FunctionState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    const-string/jumbo v2, ", not support to continous shot"

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return v3

    .line 106
    :cond_3b
    invoke-direct {p0}, Lcom/android/common/i/i;->afw()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/common/cameradevice/j;->KB(Z)V

    .line 107
    invoke-direct {p0}, Lcom/android/common/i/i;->afw()Lcom/android/common/cameradevice/j;

    move-result-object v1

    monitor-enter v1

    .line 108
    :try_start_47
    invoke-direct {p0}, Lcom/android/common/i/i;->afw()Lcom/android/common/cameradevice/j;

    move-result-object v0

    .line 109
    iget-object v2, p0, Lcom/android/common/i/i;->Zi:Landroid/hardware/Camera$ShutterCallback;

    .line 112
    iget-object v3, p0, Lcom/android/common/i/i;->Zh:Lcom/android/common/i/k;

    .line 110
    const/4 v4, 0x0

    .line 111
    const/4 v5, 0x0

    .line 108
    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/android/common/cameradevice/j;->KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_5c

    monitor-exit v1

    .line 115
    iget-object v0, p0, Lcom/android/common/i/i;->Zg:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qQ()V

    .line 116
    const/4 v0, 0x1

    return v0

    .line 107
    :catchall_5c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

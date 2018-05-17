.class public Lcom/android/common/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/cameradevice/c;
.implements Lcom/android/common/i/c;


# instance fields
.field private YG:Lcom/android/common/appService/W;

.field private YH:Z

.field private YI:Lcom/android/common/i/k;

.field private YJ:Landroid/hardware/Camera$ShutterCallback;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    .line 30
    iput-object v1, p0, Lcom/android/common/i/a;->YJ:Landroid/hardware/Camera$ShutterCallback;

    .line 31
    iput-object v1, p0, Lcom/android/common/i/a;->YI:Lcom/android/common/i/k;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/i/a;->YH:Z

    .line 35
    iput-object p1, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    .line 36
    new-instance v0, Lcom/android/common/i/k;

    invoke-direct {v0, p1}, Lcom/android/common/i/k;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/i/a;->YI:Lcom/android/common/i/k;

    .line 37
    new-instance v0, Lcom/android/common/i/b;

    invoke-direct {v0, p0, v1}, Lcom/android/common/i/b;-><init>(Lcom/android/common/i/a;Lcom/android/common/i/b;)V

    iput-object v0, p0, Lcom/android/common/i/a;->YJ:Landroid/hardware/Camera$ShutterCallback;

    .line 34
    return-void
.end method

.method private aeR()Lcom/android/common/cameradevice/j;
    .registers 3

    .prologue
    .line 155
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aeU(Lcom/android/common/i/a;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    return-object v0
.end method


# virtual methods
.method public aeS()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 42
    const-string/jumbo v0, "MTKContinousShot"

    const-string/jumbo v1, "startMultiShoot"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 44
    iget-boolean v0, p0, Lcom/android/common/i/a;->YH:Z

    .line 43
    if-eqz v0, :cond_3a

    .line 45
    :cond_1d
    const-string/jumbo v0, "MTKContinousShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ContinousShotStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/common/i/a;->YH:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return v5

    .line 48
    :cond_3a
    iget-object v0, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    invoke-virtual {v0, v4}, Lcom/android/common/appService/W;->pM(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    invoke-virtual {v0, v4}, Lcom/android/common/appService/W;->qn(Z)V

    .line 50
    iget-object v0, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amK(Lcom/android/common/camerastate/FunctionState;)V

    .line 53
    iget-object v0, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

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
    iget-object v1, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

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
    iget-object v1, p0, Lcom/android/common/i/a;->YI:Lcom/android/common/i/k;

    invoke-virtual {v1, v0}, Lcom/android/common/i/k;->afB(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/common/i/a;->YI:Lcom/android/common/i/k;

    invoke-virtual {v0, v4}, Lcom/android/common/i/k;->afC(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/common/m/c;->ahn(Z)V

    .line 60
    invoke-direct {p0}, Lcom/android/common/i/a;->aeR()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/cameradevice/j;->KF(Lcom/android/common/cameradevice/c;)V

    .line 61
    iput-boolean v4, p0, Lcom/android/common/i/a;->YH:Z

    .line 62
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->ht()V

    .line 63
    return v4
.end method

.method public aeT()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 68
    const-string/jumbo v0, "MTKContinousShot"

    const-string/jumbo v1, "stopMultiShoot"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_44

    .line 70
    iget-boolean v0, p0, Lcom/android/common/i/a;->YH:Z

    if-eqz v0, :cond_44

    .line 75
    iget-object v0, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->pM(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qP()V

    .line 78
    iget-object v0, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->qn(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/m/c;->ahn(Z)V

    .line 82
    invoke-direct {p0}, Lcom/android/common/i/a;->aeR()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KG()V

    .line 83
    iput-boolean v3, p0, Lcom/android/common/i/a;->YH:Z

    .line 84
    iget-object v0, p0, Lcom/android/common/i/a;->YI:Lcom/android/common/i/k;

    invoke-virtual {v0, v3}, Lcom/android/common/i/k;->afC(Z)V

    .line 85
    return v2

    .line 71
    :cond_44
    const-string/jumbo v0, "MTKContinousShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ContinousShotStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/common/i/a;->YH:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; functionState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return v3
.end method

.method public pa()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v0, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_3b

    .line 91
    const-string/jumbo v0, "MTKContinousShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FunctionState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    const-string/jumbo v2, ", not support to continous shot"

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return v3

    .line 95
    :cond_3b
    invoke-direct {p0}, Lcom/android/common/i/a;->aeR()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/common/cameradevice/j;->KB(Z)V

    .line 96
    invoke-direct {p0}, Lcom/android/common/i/a;->aeR()Lcom/android/common/cameradevice/j;

    move-result-object v1

    monitor-enter v1

    .line 97
    :try_start_47
    invoke-direct {p0}, Lcom/android/common/i/a;->aeR()Lcom/android/common/cameradevice/j;

    move-result-object v0

    .line 98
    iget-object v2, p0, Lcom/android/common/i/a;->YJ:Landroid/hardware/Camera$ShutterCallback;

    .line 101
    iget-object v3, p0, Lcom/android/common/i/a;->YI:Lcom/android/common/i/k;

    .line 99
    const/4 v4, 0x0

    .line 100
    const/4 v5, 0x0

    .line 97
    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/android/common/cameradevice/j;->KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_5c

    monitor-exit v1

    .line 104
    iget-object v0, p0, Lcom/android/common/i/a;->YG:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qQ()V

    .line 105
    const/4 v0, 0x1

    return v0

    .line 96
    :catchall_5c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

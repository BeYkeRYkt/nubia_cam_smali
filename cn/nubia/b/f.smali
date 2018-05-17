.class public Lcn/nubia/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/b;


# instance fields
.field private bpe:Z

.field private bpf:Lcom/android/common/appService/W;

.field private bpg:Lcn/nubia/bigAperture/BigApertureProcess;

.field private bph:Ljava/lang/Object;

.field private bpi:Landroid/content/ServiceConnection;

.field private bpj:Z

.field private bpk:Landroid/os/IBinder$DeathRecipient;

.field private bpl:Lcn/nubia/b/g;

.field private bpm:Lcn/nubia/b/m;

.field private bpn:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcn/nubia/b/f;->bpi:Landroid/content/ServiceConnection;

    .line 35
    iput-object v0, p0, Lcn/nubia/b/f;->bpg:Lcn/nubia/bigAperture/BigApertureProcess;

    .line 36
    iput-object v0, p0, Lcn/nubia/b/f;->bpf:Lcom/android/common/appService/W;

    .line 37
    iput-object v0, p0, Lcn/nubia/b/f;->bpl:Lcn/nubia/b/g;

    .line 39
    iput-boolean v1, p0, Lcn/nubia/b/f;->bpe:Z

    .line 41
    iput-boolean v1, p0, Lcn/nubia/b/f;->bpj:Z

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/b/f;->bph:Ljava/lang/Object;

    .line 47
    new-instance v0, Lcn/nubia/b/n;

    invoke-direct {v0, p0}, Lcn/nubia/b/n;-><init>(Lcn/nubia/b/f;)V

    iput-object v0, p0, Lcn/nubia/b/f;->bpn:Landroid/os/Handler;

    .line 262
    new-instance v0, Lcn/nubia/b/o;

    invoke-direct {v0, p0}, Lcn/nubia/b/o;-><init>(Lcn/nubia/b/f;)V

    iput-object v0, p0, Lcn/nubia/b/f;->bpk:Landroid/os/IBinder$DeathRecipient;

    .line 61
    iput-object p1, p0, Lcn/nubia/b/f;->bpf:Lcom/android/common/appService/W;

    .line 62
    new-instance v0, Lcn/nubia/b/g;

    iget-object v1, p0, Lcn/nubia/b/f;->bpf:Lcom/android/common/appService/W;

    invoke-direct {v0, v1}, Lcn/nubia/b/g;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcn/nubia/b/f;->bpl:Lcn/nubia/b/g;

    .line 63
    new-instance v0, Lcn/nubia/b/m;

    iget-object v1, p0, Lcn/nubia/b/f;->bpf:Lcom/android/common/appService/W;

    invoke-direct {v0, v1}, Lcn/nubia/b/m;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcn/nubia/b/f;->bpm:Lcn/nubia/b/m;

    .line 60
    return-void
.end method

.method private bLp()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 155
    const-string/jumbo v0, "nubia.camera.bigApertureService"

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "nubia.camera.bigApertureService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v1, "com.android.camera"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string/jumbo v1, "isFromCamera"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    new-instance v1, Lcn/nubia/b/p;

    invoke-direct {v1, p0}, Lcn/nubia/b/p;-><init>(Lcn/nubia/b/f;)V

    iput-object v1, p0, Lcn/nubia/b/f;->bpi:Landroid/content/ServiceConnection;

    .line 183
    iget-object v1, p0, Lcn/nubia/b/f;->bpf:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/b/f;->bpi:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 154
    return-void
.end method

.method private bLq(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 5

    .prologue
    .line 144
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adQ()Z

    move-result v0

    if-nez v0, :cond_10

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "nubia.camera.bigApertureService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    const-string/jumbo v1, "com.android.camera"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string/jumbo v1, "stop-after-task-done"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 151
    return-object v0
.end method

.method private bLr()V
    .registers 5

    .prologue
    .line 187
    iget-object v1, p0, Lcn/nubia/b/f;->bph:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_3
    iget-object v0, p0, Lcn/nubia/b/f;->bpi:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2b

    .line 189
    iget-object v0, p0, Lcn/nubia/b/f;->bpg:Lcn/nubia/bigAperture/BigApertureProcess;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_35

    if-eqz v0, :cond_20

    .line 191
    :try_start_b
    iget-object v0, p0, Lcn/nubia/b/f;->bpg:Lcn/nubia/bigAperture/BigApertureProcess;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcn/nubia/bigAperture/BigApertureProcess;->setServiceStoppedAfterTasksDone(Z)V

    .line 192
    iget-object v0, p0, Lcn/nubia/b/f;->bpg:Lcn/nubia/bigAperture/BigApertureProcess;

    invoke-interface {v0}, Lcn/nubia/bigAperture/BigApertureProcess;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/b/f;->bpk:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1d} :catch_38
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_1d} :catch_2d
    .catchall {:try_start_b .. :try_end_1d} :catchall_40

    .line 198
    const/4 v0, 0x0

    :try_start_1e
    iput-object v0, p0, Lcn/nubia/b/f;->bpg:Lcn/nubia/bigAperture/BigApertureProcess;

    .line 201
    :cond_20
    :goto_20
    iget-object v0, p0, Lcn/nubia/b/f;->bpf:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/b/f;->bpi:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_35

    :cond_2b
    monitor-exit v1

    .line 186
    return-void

    .line 195
    :catch_2d
    move-exception v0

    .line 196
    :try_start_2e
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_40

    .line 198
    const/4 v0, 0x0

    :try_start_32
    iput-object v0, p0, Lcn/nubia/b/f;->bpg:Lcn/nubia/bigAperture/BigApertureProcess;
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_35

    goto :goto_20

    .line 187
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0

    .line 193
    :catch_38
    move-exception v0

    .line 194
    :try_start_39
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_40

    .line 198
    const/4 v0, 0x0

    :try_start_3d
    iput-object v0, p0, Lcn/nubia/b/f;->bpg:Lcn/nubia/bigAperture/BigApertureProcess;

    goto :goto_20

    .line 197
    :catchall_40
    move-exception v0

    .line 198
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/b/f;->bpg:Lcn/nubia/bigAperture/BigApertureProcess;

    .line 197
    throw v0
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_35
.end method

.method static synthetic bLs(Lcn/nubia/b/f;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcn/nubia/b/f;->bpf:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic bLt(Lcn/nubia/b/f;)Lcn/nubia/bigAperture/BigApertureProcess;
    .registers 2

    iget-object v0, p0, Lcn/nubia/b/f;->bpg:Lcn/nubia/bigAperture/BigApertureProcess;

    return-object v0
.end method

.method static synthetic bLu(Lcn/nubia/b/f;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcn/nubia/b/f;->bph:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic bLv(Lcn/nubia/b/f;)Landroid/os/IBinder$DeathRecipient;
    .registers 2

    iget-object v0, p0, Lcn/nubia/b/f;->bpk:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic bLw(Lcn/nubia/b/f;)Lcn/nubia/b/g;
    .registers 2

    iget-object v0, p0, Lcn/nubia/b/f;->bpl:Lcn/nubia/b/g;

    return-object v0
.end method

.method static synthetic bLx(Lcn/nubia/b/f;Lcn/nubia/bigAperture/BigApertureProcess;)Lcn/nubia/bigAperture/BigApertureProcess;
    .registers 2

    iput-object p1, p0, Lcn/nubia/b/f;->bpg:Lcn/nubia/bigAperture/BigApertureProcess;

    return-object p1
.end method

.method static synthetic bLy(Lcn/nubia/b/f;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcn/nubia/b/f;->bpj:Z

    return p1
.end method


# virtual methods
.method public hM(Z)V
    .registers 2

    .prologue
    .line 89
    iput-boolean p1, p0, Lcn/nubia/b/f;->bpe:Z

    .line 88
    return-void
.end method

.method public hN()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcn/nubia/b/f;->bpf:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/b/f;->bLq(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 126
    invoke-direct {p0}, Lcn/nubia/b/f;->bLp()V

    .line 124
    :cond_f
    return-void
.end method

.method public hO()V
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/b/f;->bpj:Z

    .line 241
    return-void
.end method

.method public hP()V
    .registers 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcn/nubia/b/f;->bLr()V

    .line 131
    return-void
.end method

.method public hQ()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 247
    iget-object v0, p0, Lcn/nubia/b/f;->bpn:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcn/nubia/b/f;->bpf:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v1

    const-string/jumbo v2, "pref_big_aperature_key"

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 249
    iget-object v0, p0, Lcn/nubia/b/f;->bpf:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/b/f;->bpf:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/h;->apH(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;)Z

    move-result v0

    .line 248
    if-eqz v0, :cond_3c

    .line 250
    :cond_31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/b/f;->bpj:Z

    .line 251
    iget-object v0, p0, Lcn/nubia/b/f;->bpn:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 246
    :goto_3b
    return-void

    .line 253
    :cond_3c
    iput-boolean v4, p0, Lcn/nubia/b/f;->bpj:Z

    goto :goto_3b
.end method

.method public hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcn/nubia/b/f;->bpm:Lcn/nubia/b/m;

    invoke-virtual {v0}, Lcn/nubia/b/m;->bMt()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    return-object v0
.end method

.method public hS()Lcom/android/common/appService/V;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcn/nubia/b/f;->bpl:Lcn/nubia/b/g;

    return-object v0
.end method

.method public hT()Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcn/nubia/b/f;->bpe:Z

    return v0
.end method

.method public hU()Z
    .registers 2

    .prologue
    .line 259
    iget-boolean v0, p0, Lcn/nubia/b/f;->bpj:Z

    return v0
.end method

.method public hV()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcn/nubia/b/f;->bpl:Lcn/nubia/b/g;

    invoke-virtual {v0}, Lcn/nubia/b/g;->bLz()V

    .line 103
    return-void
.end method

.method public hW(Z)V
    .registers 4

    .prologue
    .line 68
    if-eqz p1, :cond_16

    .line 69
    iget-object v0, p0, Lcn/nubia/b/f;->bpf:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asV()Lcom/android/common/appService/T;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/T;->oI(I)V

    .line 70
    iget-object v0, p0, Lcn/nubia/b/f;->bpm:Lcn/nubia/b/m;

    invoke-virtual {v0}, Lcn/nubia/b/m;->bMp()V

    .line 67
    :goto_15
    return-void

    .line 72
    :cond_16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/b/f;->hM(Z)V

    .line 73
    iget-object v0, p0, Lcn/nubia/b/f;->bpm:Lcn/nubia/b/m;

    invoke-virtual {v0}, Lcn/nubia/b/m;->bMq()V

    goto :goto_15
.end method

.method public hX()V
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcn/nubia/b/f;->bpm:Lcn/nubia/b/m;

    invoke-virtual {v0}, Lcn/nubia/b/m;->bMu()V

    .line 114
    return-void
.end method

.method public hY()V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/b/f;->bpn:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/b/f;->bpj:Z

    .line 108
    return-void
.end method

.method public hZ(Z)V
    .registers 3

    .prologue
    .line 79
    if-eqz p1, :cond_8

    .line 80
    iget-object v0, p0, Lcn/nubia/b/f;->bpm:Lcn/nubia/b/m;

    invoke-virtual {v0}, Lcn/nubia/b/m;->bMr()V

    .line 78
    :goto_7
    return-void

    .line 82
    :cond_8
    iget-object v0, p0, Lcn/nubia/b/f;->bpm:Lcn/nubia/b/m;

    invoke-virtual {v0}, Lcn/nubia/b/m;->bMs()V

    goto :goto_7
.end method

.method public ia(Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcn/nubia/b/f;->bpl:Lcn/nubia/b/g;

    if-eqz v0, :cond_9

    .line 138
    iget-object v0, p0, Lcn/nubia/b/f;->bpl:Lcn/nubia/b/g;

    invoke-virtual {v0, p1}, Lcn/nubia/b/g;->bLA(Ljava/util/ArrayList;)V

    .line 140
    :cond_9
    iget-object v0, p0, Lcn/nubia/b/f;->bpm:Lcn/nubia/b/m;

    invoke-virtual {v0, p1}, Lcn/nubia/b/m;->bMv(Ljava/util/ArrayList;)V

    .line 136
    return-void
.end method

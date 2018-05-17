.class public Lcom/android/common/appService/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hs:Lcom/android/common/appService/W;

.field private ht:Z

.field private hu:Lcom/android/common/appService/SmileShot$State;

.field private hv:Ljava/lang/Object;

.field private final hw:Lcom/android/common/appService/h;

.field private hx:Lcom/android/common/cameradevice/a;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/appService/g;->hs:Lcom/android/common/appService/W;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/appService/g;->ht:Z

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/appService/g;->hv:Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/common/appService/SmileShot$State;->hy:Lcom/android/common/appService/SmileShot$State;

    iput-object v0, p0, Lcom/android/common/appService/g;->hu:Lcom/android/common/appService/SmileShot$State;

    .line 148
    new-instance v0, Lcom/android/common/appService/ab;

    invoke-direct {v0, p0}, Lcom/android/common/appService/ab;-><init>(Lcom/android/common/appService/g;)V

    iput-object v0, p0, Lcom/android/common/appService/g;->hx:Lcom/android/common/cameradevice/a;

    .line 72
    iput-object p1, p0, Lcom/android/common/appService/g;->hs:Lcom/android/common/appService/W;

    .line 73
    new-instance v0, Lcom/android/common/appService/h;

    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/common/appService/h;-><init>(Lcom/android/common/appService/g;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/common/appService/g;->hw:Lcom/android/common/appService/h;

    .line 70
    return-void
.end method

.method private iB()Lcom/android/common/cameradevice/j;
    .registers 3

    .prologue
    .line 145
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/appService/g;->hs:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method private iF()V
    .registers 4

    .prologue
    .line 113
    const-string/jumbo v0, "SmileShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[startSmileShot]mCurState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/appService/g;->hu:Lcom/android/common/appService/SmileShot$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/android/common/appService/g;->hv:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_1f
    iget-object v0, p0, Lcom/android/common/appService/g;->hu:Lcom/android/common/appService/SmileShot$State;

    sget-object v2, Lcom/android/common/appService/SmileShot$State;->hz:Lcom/android/common/appService/SmileShot$State;

    if-ne v0, v2, :cond_35

    .line 116
    iget-object v0, p0, Lcom/android/common/appService/g;->hs:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_5b

    if-eq v0, v2, :cond_35

    :cond_33
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/android/common/appService/g;->hs:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    .line 115
    if-nez v0, :cond_33

    .line 120
    invoke-direct {p0}, Lcom/android/common/appService/g;->iB()Lcom/android/common/cameradevice/j;
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_5b

    move-result-object v0

    if-nez v0, :cond_45

    monitor-exit v1

    .line 121
    return-void

    .line 123
    :cond_45
    :try_start_45
    invoke-direct {p0}, Lcom/android/common/appService/g;->iB()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v2, p0, Lcom/android/common/appService/g;->hx:Lcom/android/common/cameradevice/a;

    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->KI(Lcom/android/common/cameradevice/a;)V

    .line 124
    invoke-direct {p0}, Lcom/android/common/appService/g;->iB()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KJ()V

    .line 125
    sget-object v0, Lcom/android/common/appService/SmileShot$State;->hz:Lcom/android/common/appService/SmileShot$State;

    iput-object v0, p0, Lcom/android/common/appService/g;->hu:Lcom/android/common/appService/SmileShot$State;
    :try_end_59
    .catchall {:try_start_45 .. :try_end_59} :catchall_5b

    monitor-exit v1

    .line 112
    return-void

    .line 114
    :catchall_5b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private iG()V
    .registers 4

    .prologue
    .line 130
    const-string/jumbo v0, "SmileShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stopSmileShot]mCurState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/appService/g;->hu:Lcom/android/common/appService/SmileShot$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/android/common/appService/g;->hv:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_1f
    iget-object v0, p0, Lcom/android/common/appService/g;->hu:Lcom/android/common/appService/SmileShot$State;

    sget-object v2, Lcom/android/common/appService/SmileShot$State;->hy:Lcom/android/common/appService/SmileShot$State;
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_42

    if-ne v0, v2, :cond_27

    monitor-exit v1

    .line 133
    return-void

    .line 136
    :cond_27
    :try_start_27
    invoke-direct {p0}, Lcom/android/common/appService/g;->iB()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 137
    invoke-direct {p0}, Lcom/android/common/appService/g;->iB()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KK()V

    .line 138
    invoke-direct {p0}, Lcom/android/common/appService/g;->iB()Lcom/android/common/cameradevice/j;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->KI(Lcom/android/common/cameradevice/a;)V

    .line 140
    :cond_3c
    sget-object v0, Lcom/android/common/appService/SmileShot$State;->hy:Lcom/android/common/appService/SmileShot$State;

    iput-object v0, p0, Lcom/android/common/appService/g;->hu:Lcom/android/common/appService/SmileShot$State;
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_42

    monitor-exit v1

    .line 129
    return-void

    .line 131
    :catchall_42
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic iH(Lcom/android/common/appService/g;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/g;->hs:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic iI(Lcom/android/common/appService/g;)Lcom/android/common/appService/SmileShot$State;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/g;->hu:Lcom/android/common/appService/SmileShot$State;

    return-object v0
.end method

.method static synthetic iJ(Lcom/android/common/appService/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/appService/g;->iF()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 94
    const-string/jumbo v0, "SmileShot"

    const-string/jumbo v1, "[close]..."

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/common/appService/g;->hw:Lcom/android/common/appService/h;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/h;->removeMessages(I)V

    .line 96
    invoke-direct {p0}, Lcom/android/common/appService/g;->iG()V

    .line 93
    return-void
.end method

.method public iC()Z
    .registers 4

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    sget-object v1, Lcom/android/common/appService/SmileShot$State;->hy:Lcom/android/common/appService/SmileShot$State;

    iget-object v2, p0, Lcom/android/common/appService/g;->hu:Lcom/android/common/appService/SmileShot$State;

    if-eq v1, v2, :cond_8

    .line 87
    const/4 v0, 0x1

    .line 90
    :cond_8
    return v0
.end method

.method public iD()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/android/common/appService/g;->hs:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    if-ne v1, v2, :cond_c

    .line 102
    return v0

    .line 104
    :cond_c
    const-string/jumbo v1, "on"

    iget-object v2, p0, Lcom/android/common/appService/g;->hs:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v2

    const-string/jumbo v3, "pref_camera_front_smile_shoot"

    .line 105
    iget-object v4, p0, Lcom/android/common/appService/g;->hs:Lcom/android/common/appService/W;

    const v5, 0x7f0a02dd

    invoke-virtual {v4, v5}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-virtual {v2, v3, v4}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 106
    const/4 v0, 0x1

    .line 109
    :cond_2c
    return v0
.end method

.method public iE()V
    .registers 4

    .prologue
    const/16 v2, 0x3e8

    .line 77
    const-string/jumbo v0, "SmileShot"

    const-string/jumbo v1, "[open]..."

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/common/appService/g;->hw:Lcom/android/common/appService/h;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/h;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 79
    iget-object v0, p0, Lcom/android/common/appService/g;->hw:Lcom/android/common/appService/h;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/h;->sendEmptyMessage(I)Z

    .line 76
    :cond_18
    return-void
.end method

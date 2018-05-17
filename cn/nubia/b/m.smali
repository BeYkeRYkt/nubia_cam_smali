.class public Lcn/nubia/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bpR:Lcom/android/common/appService/W;

.field private bpS:I

.field private bpT:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

.field private bpU:Z

.field private bpV:I

.field private bpW:I

.field private bpX:Ljava/lang/Object;

.field private bpY:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hc:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    iput-object v0, p0, Lcn/nubia/b/m;->bpT:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    .line 47
    iput-object v2, p0, Lcn/nubia/b/m;->bpR:Lcom/android/common/appService/W;

    .line 50
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v0

    iput v0, p0, Lcn/nubia/b/m;->bpW:I

    .line 51
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v0

    iput v0, p0, Lcn/nubia/b/m;->bpS:I

    .line 52
    iput v1, p0, Lcn/nubia/b/m;->bpY:I

    .line 53
    iput v1, p0, Lcn/nubia/b/m;->bpV:I

    .line 54
    iput-boolean v1, p0, Lcn/nubia/b/m;->bpU:Z

    .line 55
    iput-object v2, p0, Lcn/nubia/b/m;->bpX:Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lcn/nubia/b/m;->bpR:Lcom/android/common/appService/W;

    .line 59
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adS()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/b/m;->bpU:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/b/m;->bpX:Ljava/lang/Object;

    .line 57
    return-void
.end method

.method private bMw(I)Lcom/android/common/cameradevice/j;
    .registers 3

    .prologue
    .line 170
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bMp()V
    .registers 5

    .prologue
    .line 118
    iget-object v1, p0, Lcn/nubia/b/m;->bpX:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_3
    iget-object v0, p0, Lcn/nubia/b/m;->bpT:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    sget-object v2, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v2, :cond_19

    .line 121
    iget-object v0, p0, Lcn/nubia/b/m;->bpR:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_67

    if-eq v0, v2, :cond_19

    :cond_17
    monitor-exit v1

    .line 125
    return-void

    .line 122
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcn/nubia/b/m;->bpR:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v2, :cond_17

    .line 123
    iget v0, p0, Lcn/nubia/b/m;->bpS:I

    invoke-direct {p0, v0}, Lcn/nubia/b/m;->bMw(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 124
    iget v0, p0, Lcn/nubia/b/m;->bpW:I

    invoke-direct {p0, v0}, Lcn/nubia/b/m;->bMw(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 127
    const-string/jumbo v0, "DualCameraConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startApertureMode MonoCameraMode before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/b/m;->bpT:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    iput-object v0, p0, Lcn/nubia/b/m;->bpT:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    .line 130
    iget-object v0, p0, Lcn/nubia/b/m;->bpR:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 131
    iget-object v0, p0, Lcn/nubia/b/m;->bpR:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asY()V
    :try_end_65
    .catchall {:try_start_19 .. :try_end_65} :catchall_67

    monitor-exit v1

    .line 117
    return-void

    .line 118
    :catchall_67
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bMq()V
    .registers 4

    .prologue
    .line 136
    iget-object v1, p0, Lcn/nubia/b/m;->bpX:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_3
    iget-object v0, p0, Lcn/nubia/b/m;->bpT:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    sget-object v2, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v2, :cond_17

    .line 138
    iget-object v0, p0, Lcn/nubia/b/m;->bpR:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_46

    if-ne v0, v2, :cond_19

    :cond_17
    monitor-exit v1

    .line 141
    return-void

    .line 139
    :cond_19
    :try_start_19
    iget v0, p0, Lcn/nubia/b/m;->bpS:I

    invoke-direct {p0, v0}, Lcn/nubia/b/m;->bMw(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 140
    iget v0, p0, Lcn/nubia/b/m;->bpW:I

    invoke-direct {p0, v0}, Lcn/nubia/b/m;->bMw(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 144
    const-string/jumbo v0, "DualCameraConnector"

    const-string/jumbo v2, "stopApertureMode"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hc:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    iput-object v0, p0, Lcn/nubia/b/m;->bpT:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    .line 146
    iget-object v0, p0, Lcn/nubia/b/m;->bpR:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 147
    iget-object v0, p0, Lcn/nubia/b/m;->bpR:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asY()V
    :try_end_44
    .catchall {:try_start_19 .. :try_end_44} :catchall_46

    monitor-exit v1

    .line 135
    return-void

    .line 136
    :catchall_46
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bMr()V
    .registers 5

    .prologue
    .line 152
    iget-object v1, p0, Lcn/nubia/b/m;->bpX:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_3
    iget-object v0, p0, Lcn/nubia/b/m;->bpT:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    sget-object v2, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v2, :cond_19

    .line 155
    iget-object v0, p0, Lcn/nubia/b/m;->bpR:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_67

    if-eq v0, v2, :cond_19

    :cond_17
    monitor-exit v1

    .line 159
    return-void

    .line 156
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcn/nubia/b/m;->bpR:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v2, :cond_17

    .line 157
    iget v0, p0, Lcn/nubia/b/m;->bpS:I

    invoke-direct {p0, v0}, Lcn/nubia/b/m;->bMw(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 158
    iget v0, p0, Lcn/nubia/b/m;->bpW:I

    invoke-direct {p0, v0}, Lcn/nubia/b/m;->bMw(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 162
    const-string/jumbo v0, "DualCameraConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startFushionMode MonoCameraMode before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/b/m;->bpT:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    iput-object v0, p0, Lcn/nubia/b/m;->bpT:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    .line 164
    iget-object v0, p0, Lcn/nubia/b/m;->bpR:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 165
    iget-object v0, p0, Lcn/nubia/b/m;->bpR:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asY()V
    :try_end_65
    .catchall {:try_start_19 .. :try_end_65} :catchall_67

    monitor-exit v1

    .line 151
    return-void

    .line 152
    :catchall_67
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bMs()V
    .registers 4

    .prologue
    .line 174
    iget-object v1, p0, Lcn/nubia/b/m;->bpX:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_3
    iget-object v0, p0, Lcn/nubia/b/m;->bpR:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v2, :cond_17

    .line 176
    iget-object v0, p0, Lcn/nubia/b/m;->bpT:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    sget-object v2, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_46

    if-eq v0, v2, :cond_19

    :cond_17
    monitor-exit v1

    .line 179
    return-void

    .line 177
    :cond_19
    :try_start_19
    iget v0, p0, Lcn/nubia/b/m;->bpS:I

    invoke-direct {p0, v0}, Lcn/nubia/b/m;->bMw(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 178
    iget v0, p0, Lcn/nubia/b/m;->bpW:I

    invoke-direct {p0, v0}, Lcn/nubia/b/m;->bMw(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 182
    const-string/jumbo v0, "DualCameraConnector"

    const-string/jumbo v2, "stopFusionMode"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hc:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    iput-object v0, p0, Lcn/nubia/b/m;->bpT:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    .line 185
    iget-object v0, p0, Lcn/nubia/b/m;->bpR:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 186
    iget-object v0, p0, Lcn/nubia/b/m;->bpR:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asY()V
    :try_end_44
    .catchall {:try_start_19 .. :try_end_44} :catchall_46

    monitor-exit v1

    .line 173
    return-void

    .line 174
    :catchall_46
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bMt()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcn/nubia/b/m;->bpT:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    return-object v0
.end method

.method public bMu()V
    .registers 2

    .prologue
    .line 109
    sget-object v0, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hc:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    iput-object v0, p0, Lcn/nubia/b/m;->bpT:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    .line 108
    return-void
.end method

.method public bMv(Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 63
    return-void
.end method

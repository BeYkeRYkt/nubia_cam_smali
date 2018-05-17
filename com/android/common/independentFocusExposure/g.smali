.class public Lcom/android/common/independentFocusExposure/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dU:Lcom/android/common/appService/W;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    .line 24
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    .line 23
    return-void
.end method

.method private dG()Z
    .registers 3

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->rt()Lcom/android/common/ui/FaceView;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 65
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rt()Lcom/android/common/ui/FaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/FaceView;->GH()Z

    move-result v0

    .line 67
    :cond_13
    return v0
.end method

.method private dH()Z
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Xr()Z

    move-result v0

    return v0
.end method

.method private dI()Z
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Xt()Z

    move-result v0

    return v0
.end method

.method private dJ()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dA()Z
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/android/common/appService/CameraMember;->jG:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_e

    .line 150
    sget-object v1, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_10

    .line 152
    :cond_e
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_10
    sget-object v1, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_e

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public dB()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fZ()V

    .line 85
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eu()V

    .line 86
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cQ()V

    .line 83
    return-void
.end method

.method public dC()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->ex()V

    .line 126
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cX()V

    .line 127
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->gd()V

    .line 128
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/g;->dB()V

    .line 124
    return-void
.end method

.method public dD(Lcom/android/common/appService/R;)V
    .registers 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-eq v0, v1, :cond_3d

    .line 106
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/common/independentFocusExposure/a;->cD(Landroid/app/Activity;Lcom/android/common/appService/R;)V

    .line 107
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/common/independentFocusExposure/i;->ev(Landroid/app/Activity;Lcom/android/common/appService/R;)V

    .line 108
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/common/independentFocusExposure/o;->gb(Landroid/app/Activity;Lcom/android/common/appService/R;)V

    .line 104
    :cond_3d
    return-void
.end method

.method public dE()V
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eC()V

    .line 200
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cq()V

    .line 201
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->gi()V

    .line 198
    return-void
.end method

.method public dF()V
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eD()V

    .line 206
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->db()V

    .line 207
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->gj()V

    .line 204
    return-void
.end method

.method public dK()Z
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->ch()Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;->dM:Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

    .line 96
    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public dL()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/independentFocusExposure/i;->dW()Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;

    move-result-object v1

    sget-object v2, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;->eP:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;

    if-ne v1, v2, :cond_1e

    .line 91
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/independentFocusExposure/a;->ch()Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

    move-result-object v1

    .line 92
    sget-object v2, Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;->dN:Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

    .line 91
    if-ne v1, v2, :cond_1e

    const/4 v0, 0x1

    .line 90
    :cond_1e
    return v0
.end method

.method public dM()Z
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eA()Z

    move-result v0

    if-nez v0, :cond_23

    .line 188
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cK()Z

    move-result v0

    .line 187
    if-nez v0, :cond_23

    .line 189
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->gg()Z

    move-result v0

    .line 187
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x1

    goto :goto_22
.end method

.method public dN()Z
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->ga()Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    move-result-object v0

    sget-object v1, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;->gi:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public dO()Z
    .registers 5

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/g;->dJ()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_shutter_priority_key"

    .line 177
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a044e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string/jumbo v1, "off"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dP(Z)V
    .registers 4

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/g;->dG()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 72
    const-string/jumbo v0, "FocusExposureMwbManager"

    const-string/jumbo v1, "FaceTrackingFocusSupported and faceExists, return"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void

    .line 76
    :cond_10
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/g;->dA()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 77
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/i;->et(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/a;->cS(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/o;->fY(Z)V

    .line 70
    :cond_31
    return-void
.end method

.method public dQ()V
    .registers 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/g;->dN()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 53
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fX()V

    .line 54
    :cond_f
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/g;->dL()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 55
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->es()V

    .line 56
    :cond_1e
    invoke-virtual {p0}, Lcom/android/common/independentFocusExposure/g;->dK()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 57
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jn:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_41

    .line 58
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jl:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_41

    .line 59
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cW()V

    .line 51
    :cond_41
    return-void
.end method

.method public dR(II)V
    .registers 5

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/g;->dH()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/common/independentFocusExposure/g;->dI()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 39
    :cond_c
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 40
    :cond_1c
    return-void

    .line 43
    :cond_1d
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/common/independentFocusExposure/i;->er(II)V

    .line 44
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/common/independentFocusExposure/a;->cU(II)Z

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/common/independentFocusExposure/o;->fW(II)Z

    move-result v1

    or-int/2addr v0, v1

    .line 46
    if-eqz v0, :cond_44

    .line 47
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 35
    :cond_44
    return-void
.end method

.method public dS()V
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->ez()V

    .line 182
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->da()V

    .line 183
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->gf()V

    .line 180
    return-void
.end method

.method public dT()V
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eB()V

    .line 194
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->dd()V

    .line 195
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->gh()V

    .line 192
    return-void
.end method

.method public dU(Lcom/android/common/appService/R;)V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/i;->ew(Lcom/android/common/appService/R;)V

    .line 114
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/a;->dh(Lcom/android/common/appService/R;)V

    .line 115
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/o;->gc(Lcom/android/common/appService/R;)V

    .line 112
    return-void
.end method

.method public dy(Z)V
    .registers 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/a;->cM(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/i;->ey(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/o;->ge(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 158
    return-void
.end method

.method public dz(I)V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/i;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/a;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/g;->dU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/o;->setVisibility(I)V

    .line 141
    return-void
.end method

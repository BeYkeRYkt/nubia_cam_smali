.class Lcom/android/camera/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/b;


# instance fields
.field final synthetic aoR:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .registers 2

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/android/camera/h;->aoR:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/h;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/h;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public aAp(Z)V
    .registers 4

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/camera/h;->aoR:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/common/appService/H;->mN(ZZ)V

    .line 1318
    return-void
.end method

.method public aAq(Lcom/android/common/appService/CameraMember;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1314
    iget-object v0, p0, Lcom/android/camera/h;->aoR:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/common/appService/H;->mN(ZZ)V

    .line 1313
    return-void
.end method

.method public aAr(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)V
    .registers 8

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/camera/h;->aoR:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->ec()V

    .line 1325
    iget-object v0, p0, Lcom/android/camera/h;->aoR:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    .line 1326
    iget-object v1, p0, Lcom/android/camera/h;->aoR:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/common/appService/W;->qx(Lcom/android/common/appService/CameraMember;)V

    .line 1328
    iget-object v1, p0, Lcom/android/camera/h;->aoR:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/common/cameradevice/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1329
    if-eq p1, v0, :cond_47

    invoke-virtual {p2}, Lcom/android/common/cameradevice/g;->Kf()Z

    move-result v0

    .line 1328
    if-eqz v0, :cond_47

    .line 1330
    :cond_38
    iget-object v0, p0, Lcom/android/camera/h;->aoR:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/common/appService/W;->qy(Lcom/android/common/cameradevice/g;)V

    .line 1331
    iget-object v0, p0, Lcom/android/camera/h;->aoR:Lcom/android/camera/Camera;

    invoke-static {v0, p2, p1, p3}, Lcom/android/camera/Camera;->aBw(Lcom/android/camera/Camera;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V

    .line 1323
    :goto_46
    return-void

    .line 1333
    :cond_47
    iget-object v0, p0, Lcom/android/camera/h;->aoR:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBm(Lcom/android/camera/Camera;)Lcom/android/camera/i;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/h;->aoR:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->aBn(Lcom/android/camera/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/h;->aoR:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/h;->aoR:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p3, v3}, Lcom/android/camera/i;->aBy(ILcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/W;)V

    goto :goto_46
.end method

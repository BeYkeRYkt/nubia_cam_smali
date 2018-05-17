.class public Lcom/android/camera/Trajectory/NubiaTrajectory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private amT:Lcom/android/common/appService/W;

.field private amU:I

.field private amV:I

.field private amW:Z

.field private amX:Z

.field private amY:Z

.field private amZ:I

.field private ana:[B

.field private anb:Lcom/android/camera/Trajectory/b;

.field private anc:Ljava/lang/Thread;

.field private and:I

.field private ane:I

.field private anf:Lcom/android/camera/Trajectory/a;

.field private ang:I

.field private anh:Landroid/hardware/Camera$Size;

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 206
    const-string/jumbo v0, "nubia_trajectory"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/camera/Trajectory/a;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->ane:I

    .line 31
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amU:I

    .line 32
    iput-object v2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amT:Lcom/android/common/appService/W;

    .line 33
    iput-object v2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anf:Lcom/android/camera/Trajectory/a;

    .line 34
    new-instance v0, Lcom/android/camera/Trajectory/b;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Trajectory/b;-><init>(Lcom/android/camera/Trajectory/NubiaTrajectory;Lcom/android/camera/Trajectory/b;)V

    iput-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anb:Lcom/android/camera/Trajectory/b;

    .line 37
    iput v3, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amZ:I

    .line 38
    iput-object v2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->ana:[B

    .line 39
    iput-boolean v3, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amX:Z

    .line 40
    iput-boolean v3, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amY:Z

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->mStartTime:J

    .line 42
    iput-object v2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anc:Ljava/lang/Thread;

    .line 43
    iput-object v2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anh:Landroid/hardware/Camera$Size;

    .line 44
    iput v3, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->and:I

    .line 45
    iput-boolean v3, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amW:Z

    .line 49
    iput-object p1, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amT:Lcom/android/common/appService/W;

    .line 50
    iput-object p2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anf:Lcom/android/camera/Trajectory/a;

    .line 51
    invoke-direct {p0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayE()V

    .line 48
    return-void
.end method

.method public static native Compose([ILandroid/graphics/Bitmap;)I
.end method

.method public static native ComposePrepare()I
.end method

.method public static native CompositionCancel()V
.end method

.method public static native GetSavedImageRGBA(ILandroid/graphics/Bitmap;)I
.end method

.method public static native PreRegister()I
.end method

.method public static native RotateBitmapRGBA8888(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)V
.end method

.method public static native SaveYuvData(IIII[B)I
.end method

.method private ayC(Ljava/lang/String;ILjava/lang/Thread;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 194
    iget v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->and:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->and:I

    .line 195
    const-string/jumbo v0, "Trajectory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": mSaveDataNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->and:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->and:I

    iget v1, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amU:I

    if-ne v0, v1, :cond_40

    iget v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amZ:I

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amY:Z

    if-eqz v0, :cond_41

    .line 193
    :cond_40
    :goto_40
    return-void

    .line 197
    :cond_41
    iput-object p3, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anc:Ljava/lang/Thread;

    .line 198
    iput v3, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->and:I

    .line 199
    invoke-direct {p0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayD()V

    .line 200
    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anf:Lcom/android/camera/Trajectory/a;

    .line 201
    iget v1, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->ang:I

    iget v2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amV:I

    iget v3, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amZ:I

    .line 200
    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/Trajectory/a;->ayR(III)V

    goto :goto_40
.end method

.method private ayD()V
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->ana:[B

    .line 110
    return-void
.end method

.method private ayE()V
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amZ:I

    .line 54
    return-void
.end method

.method private ayF([B)V
    .registers 5

    .prologue
    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->ana:[B

    .line 157
    const-string/jumbo v0, "Trajectory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveYuvData mIsPreviewRunning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amX:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; mNumTaken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amZ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-boolean v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amY:Z

    if-eqz v0, :cond_36

    return-void

    .line 159
    :cond_36
    new-instance v0, Lcom/android/camera/Trajectory/c;

    invoke-direct {v0, p0}, Lcom/android/camera/Trajectory/c;-><init>(Lcom/android/camera/Trajectory/NubiaTrajectory;)V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amZ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 169
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 170
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 171
    iget v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amZ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amZ:I

    .line 172
    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anf:Lcom/android/camera/Trajectory/a;

    iget v1, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amZ:I

    invoke-interface {v0, v1}, Lcom/android/camera/Trajectory/a;->ayQ(I)V

    .line 173
    iget v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amZ:I

    iget v1, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amU:I

    if-ne v0, v1, :cond_72

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amX:Z

    .line 155
    :cond_72
    return-void
.end method

.method static synthetic ayH(Lcom/android/camera/Trajectory/NubiaTrajectory;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amT:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic ayI(Lcom/android/camera/Trajectory/NubiaTrajectory;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amX:Z

    return v0
.end method

.method static synthetic ayJ(Lcom/android/camera/Trajectory/NubiaTrajectory;)[B
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->ana:[B

    return-object v0
.end method

.method static synthetic ayK(Lcom/android/camera/Trajectory/NubiaTrajectory;)Lcom/android/camera/Trajectory/b;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anb:Lcom/android/camera/Trajectory/b;

    return-object v0
.end method

.method static synthetic ayL(Lcom/android/camera/Trajectory/NubiaTrajectory;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->mStartTime:J

    return-wide v0
.end method

.method static synthetic ayM(Lcom/android/camera/Trajectory/NubiaTrajectory;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->ane:I

    return v0
.end method

.method static synthetic ayN(Lcom/android/camera/Trajectory/NubiaTrajectory;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->mStartTime:J

    return-wide p1
.end method

.method static synthetic ayO(Lcom/android/camera/Trajectory/NubiaTrajectory;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayF([B)V

    return-void
.end method


# virtual methods
.method public ayA()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amU:I

    return v0
.end method

.method public ayB()Z
    .registers 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amY:Z

    return v0
.end method

.method protected ayG([BLjava/lang/Thread;)V
    .registers 8

    .prologue
    .line 179
    if-nez p1, :cond_c

    .line 180
    const-string/jumbo v0, "Trajectory"

    const-string/jumbo v1, "saveYuvDate failed. Because yuv_data is null."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void

    .line 183
    :cond_c
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 184
    iget v1, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amU:I

    iget v2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->ang:I

    iget v3, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amV:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/camera/Trajectory/NubiaTrajectory;->SaveYuvData(IIII[B)I

    move-result v1

    .line 186
    if-eqz v1, :cond_4c

    .line 187
    invoke-virtual {p0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->stop()V

    .line 188
    const-string/jumbo v2, "Trajectory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "save yuv filed; ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_4c
    const-string/jumbo v0, "Yuv Save finish"

    invoke-direct {p0, v0, v1, p2}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayC(Ljava/lang/String;ILjava/lang/Thread;)V

    .line 178
    return-void
.end method

.method public ayv(Z)V
    .registers 2

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amW:Z

    .line 118
    return-void
.end method

.method public ayw()V
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anf:Lcom/android/camera/Trajectory/a;

    invoke-interface {v0}, Lcom/android/camera/Trajectory/a;->ayT()V

    .line 114
    return-void
.end method

.method public ayx(I)V
    .registers 2

    .prologue
    .line 85
    iput p1, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amU:I

    .line 84
    return-void
.end method

.method public ayy(I)V
    .registers 2

    .prologue
    .line 81
    iput p1, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->ane:I

    .line 80
    return-void
.end method

.method public ayz()Z
    .registers 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amW:Z

    return v0
.end method

.method public start()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amT:Lcom/android/common/appService/W;

    if-eqz v0, :cond_88

    .line 60
    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amT:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anh:Landroid/hardware/Camera$Size;

    .line 61
    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anh:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->ang:I

    .line 62
    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anh:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amV:I

    .line 63
    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anf:Lcom/android/camera/Trajectory/a;

    invoke-interface {v0}, Lcom/android/camera/Trajectory/a;->ayP()V

    .line 64
    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amT:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/common/independentFocusExposure/g;->dy(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amT:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/common/camerastate/b;

    sget-object v2, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    aput-object v2, v1, v4

    .line 66
    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    aput-object v2, v1, v5

    .line 67
    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 68
    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amM([Lcom/android/common/camerastate/b;)V

    .line 69
    iput v4, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amZ:I

    .line 70
    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amT:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KQ()Landroid/hardware/Camera;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anb:Lcom/android/camera/Trajectory/b;

    .line 70
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 72
    iput-boolean v5, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amX:Z

    .line 73
    iput-boolean v4, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amY:Z

    .line 75
    const-string/jumbo v0, "Trajectory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->ang:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amV:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_88
    return-void
.end method

.method public stop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 93
    const-string/jumbo v0, "Trajectory"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amY:Z

    .line 95
    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anc:Ljava/lang/Thread;

    if-eqz v0, :cond_19

    .line 96
    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anc:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 97
    iput-object v3, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anc:Ljava/lang/Thread;

    .line 99
    :cond_19
    iput-boolean v2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amX:Z

    .line 100
    iget-object v0, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->anf:Lcom/android/camera/Trajectory/a;

    invoke-interface {v0}, Lcom/android/camera/Trajectory/a;->ayS()V

    .line 101
    iput v2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->amZ:I

    .line 102
    iput v2, p0, Lcom/android/camera/Trajectory/NubiaTrajectory;->and:I

    .line 103
    invoke-direct {p0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayD()V

    .line 92
    return-void
.end method

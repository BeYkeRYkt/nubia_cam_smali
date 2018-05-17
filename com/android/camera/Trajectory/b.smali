.class Lcom/android/camera/Trajectory/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field final synthetic ani:Lcom/android/camera/Trajectory/NubiaTrajectory;


# direct methods
.method private constructor <init>(Lcom/android/camera/Trajectory/NubiaTrajectory;)V
    .registers 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/Trajectory/b;->ani:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Trajectory/NubiaTrajectory;Lcom/android/camera/Trajectory/b;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/Trajectory/b;-><init>(Lcom/android/camera/Trajectory/NubiaTrajectory;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 7

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/Trajectory/b;->ani:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-static {v0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayI(Lcom/android/camera/Trajectory/NubiaTrajectory;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/Trajectory/b;->ani:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-static {v2}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayL(Lcom/android/camera/Trajectory/NubiaTrajectory;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/camera/Trajectory/b;->ani:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-static {v2}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayM(Lcom/android/camera/Trajectory/NubiaTrajectory;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2c

    .line 144
    iget-object v0, p0, Lcom/android/camera/Trajectory/b;->ani:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayN(Lcom/android/camera/Trajectory/NubiaTrajectory;J)J

    .line 145
    iget-object v0, p0, Lcom/android/camera/Trajectory/b;->ani:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-static {v0, p1}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayO(Lcom/android/camera/Trajectory/NubiaTrajectory;[B)V

    .line 148
    :cond_2c
    iget-object v0, p0, Lcom/android/camera/Trajectory/b;->ani:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-static {v0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayI(Lcom/android/camera/Trajectory/NubiaTrajectory;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 149
    iget-object v0, p0, Lcom/android/camera/Trajectory/b;->ani:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-static {v0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayH(Lcom/android/camera/Trajectory/NubiaTrajectory;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/android/camera/Trajectory/b;->ani:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-static {v1}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayK(Lcom/android/camera/Trajectory/NubiaTrajectory;)Lcom/android/camera/Trajectory/b;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Trajectory/b;->ani:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-static {v2}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayH(Lcom/android/camera/Trajectory/NubiaTrajectory;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pv()I

    move-result v2

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/android/common/appService/k;->jG(Landroid/hardware/Camera$PreviewCallback;I)V

    .line 141
    :cond_51
    return-void
.end method

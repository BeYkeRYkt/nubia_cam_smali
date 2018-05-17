.class final Lcom/android/trajectory/p;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic atf:Lcom/android/trajectory/a;


# direct methods
.method constructor <init>(Lcom/android/trajectory/a;)V
    .registers 2

    .prologue
    .line 862
    iput-object p1, p0, Lcom/android/trajectory/p;->atf:Lcom/android/trajectory/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 864
    iget-object v0, p0, Lcom/android/trajectory/p;->atf:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aES(Lcom/android/trajectory/a;)Lcom/android/camera/Trajectory/NubiaTrajectory;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/trajectory/p;->atf:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aES(Lcom/android/trajectory/a;)Lcom/android/camera/Trajectory/NubiaTrajectory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayB()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 865
    return-void

    .line 866
    :cond_17
    iget-object v0, p0, Lcom/android/trajectory/p;->atf:Lcom/android/trajectory/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/trajectory/a;->aEY(Lcom/android/trajectory/a;Z)Z

    .line 867
    invoke-static {}, Lcom/android/camera/Trajectory/NubiaTrajectory;->PreRegister()I

    move-result v0

    .line 868
    invoke-static {}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ComposePrepare()I

    move-result v1

    .line 869
    if-eq v0, v2, :cond_29

    if-ne v1, v2, :cond_66

    .line 870
    :cond_29
    const-string/jumbo v2, "TrajectoryFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PreRegister failed: ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "; ret2 = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/android/trajectory/p;->atf:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEF(Lcom/android/trajectory/a;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 873
    iget-object v0, p0, Lcom/android/trajectory/p;->atf:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aED(Lcom/android/trajectory/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 875
    :cond_60
    iget-object v0, p0, Lcom/android/trajectory/p;->atf:Lcom/android/trajectory/a;

    invoke-static {v0, v5}, Lcom/android/trajectory/a;->aEY(Lcom/android/trajectory/a;Z)Z

    .line 876
    return-void

    .line 878
    :cond_66
    iget-object v1, p0, Lcom/android/trajectory/p;->atf:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aEF(Lcom/android/trajectory/a;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 879
    iget-object v1, p0, Lcom/android/trajectory/p;->atf:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aED(Lcom/android/trajectory/a;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 881
    :cond_78
    const-string/jumbo v1, "TrajectoryFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PreRegister finish. ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/android/trajectory/p;->atf:Lcom/android/trajectory/a;

    invoke-static {v0, v5}, Lcom/android/trajectory/a;->aEY(Lcom/android/trajectory/a;Z)Z

    .line 863
    return-void
.end method

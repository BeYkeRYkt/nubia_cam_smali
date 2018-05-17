.class final Lcom/android/camera/Trajectory/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic anj:Lcom/android/camera/Trajectory/NubiaTrajectory;


# direct methods
.method constructor <init>(Lcom/android/camera/Trajectory/NubiaTrajectory;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/camera/Trajectory/c;->anj:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Trajectory/c;->anj:Lcom/android/camera/Trajectory/NubiaTrajectory;

    iget-object v1, p0, Lcom/android/camera/Trajectory/c;->anj:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-static {v1}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayJ(Lcom/android/camera/Trajectory/NubiaTrajectory;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayG([BLjava/lang/Thread;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 160
    :goto_b
    return-void

    .line 163
    :catch_c
    move-exception v0

    .line 164
    const-string/jumbo v1, "Trajectory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception occured in saveYuvData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

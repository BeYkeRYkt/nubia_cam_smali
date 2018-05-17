.class Lcom/loc/o;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field final synthetic bdr:Lcom/loc/af;


# direct methods
.method constructor <init>(Lcom/loc/af;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLooperPrepared()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    iget-object v6, v0, Lcom/loc/af;->bfb:Ljava/lang/Object;

    monitor-enter v6
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_43

    :try_start_5
    sget-boolean v0, Lcom/loc/af;->a:Z

    if-nez v0, :cond_b

    :goto_9
    monitor-exit v6

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    new-instance v1, Lcom/loc/S;

    iget-object v2, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-direct {v1, v2}, Lcom/loc/S;-><init>(Lcom/loc/af;)V

    invoke-static {v0, v1}, Lcom/loc/af;->bxT(Lcom/loc/af;Lcom/loc/S;)Lcom/loc/S;

    iget-object v0, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->bxV(Lcom/loc/af;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v1}, Lcom/loc/af;->bxU(Lcom/loc/af;)Lcom/loc/S;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    iget-object v0, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->bxV(Lcom/loc/af;)Landroid/location/LocationManager;

    move-result-object v0

    const-string/jumbo v1, "passive"

    const-wide/16 v2, 0x3e8

    invoke-static {}, Lcom/loc/af;->n()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v5}, Lcom/loc/af;->bxW(Lcom/loc/af;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_9

    :catchall_40
    move-exception v0

    monitor-exit v6
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_40

    :try_start_42
    throw v0
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_43} :catch_43

    :catch_43
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "requestLocationUpdates-onLooperPrepared"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public run()V
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_10
    .catchall {:try_start_1 .. :try_end_4} :catchall_26

    iget-object v0, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->bxU(Lcom/loc/af;)Lcom/loc/S;

    move-result-object v0

    if-nez v0, :cond_33

    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/loc/o;->quit()Z

    :goto_f
    return-void

    :catch_10
    move-exception v0

    :try_start_11
    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "requestLocationUpdates-run"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_26

    iget-object v0, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->bxU(Lcom/loc/af;)Lcom/loc/S;

    move-result-object v0

    if-nez v0, :cond_5f

    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/loc/o;->quit()Z

    goto :goto_f

    :catchall_26
    move-exception v0

    iget-object v1, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v1}, Lcom/loc/af;->bxU(Lcom/loc/af;)Lcom/loc/S;

    move-result-object v1

    if-nez v1, :cond_8b

    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/loc/o;->quit()Z

    throw v0

    :cond_33
    iget-object v0, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->bxV(Lcom/loc/af;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->bxV(Lcom/loc/af;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v1}, Lcom/loc/af;->bxU(Lcom/loc/af;)Lcom/loc/S;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iget-object v0, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->bxV(Lcom/loc/af;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v1}, Lcom/loc/af;->bxW(Lcom/loc/af;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v0, v3}, Lcom/loc/af;->bxT(Lcom/loc/af;Lcom/loc/S;)Lcom/loc/S;

    goto :goto_c

    :cond_5f
    iget-object v0, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->bxV(Lcom/loc/af;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->bxV(Lcom/loc/af;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v1}, Lcom/loc/af;->bxU(Lcom/loc/af;)Lcom/loc/S;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iget-object v0, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->bxV(Lcom/loc/af;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v1}, Lcom/loc/af;->bxW(Lcom/loc/af;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v0, v3}, Lcom/loc/af;->bxT(Lcom/loc/af;Lcom/loc/S;)Lcom/loc/S;

    goto :goto_22

    :cond_8b
    iget-object v1, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v1}, Lcom/loc/af;->bxV(Lcom/loc/af;)Landroid/location/LocationManager;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v1}, Lcom/loc/af;->bxV(Lcom/loc/af;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v2}, Lcom/loc/af;->bxU(Lcom/loc/af;)Lcom/loc/S;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iget-object v1, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v1}, Lcom/loc/af;->bxV(Lcom/loc/af;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v2}, Lcom/loc/af;->bxW(Lcom/loc/af;)Landroid/location/LocationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v1, p0, Lcom/loc/o;->bdr:Lcom/loc/af;

    invoke-static {v1, v3}, Lcom/loc/af;->bxT(Lcom/loc/af;Lcom/loc/S;)Lcom/loc/S;

    goto/16 :goto_2f
.end method

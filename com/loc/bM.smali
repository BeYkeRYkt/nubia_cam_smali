.class Lcom/loc/bM;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field final synthetic bhR:Lcom/loc/at;


# direct methods
.method constructor <init>(Lcom/loc/at;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLooperPrepared()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    iget-object v1, v0, Lcom/loc/at;->bfL:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_4d

    :try_start_5
    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v2}, Lcom/loc/at;->byP(Lcom/loc/at;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    new-instance v2, Lcom/loc/cq;

    iget-object v3, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/loc/cq;-><init>(Lcom/loc/at;Lcom/loc/bM;)V

    invoke-static {v0, v2}, Lcom/loc/at;->byQ(Lcom/loc/at;Lcom/loc/cq;)Lcom/loc/cq;

    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    iget-object v0, v0, Lcom/loc/at;->bfO:Lcom/loc/aI;

    if-nez v0, :cond_3c

    :goto_22
    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    new-instance v2, Lcom/loc/cF;

    iget-object v3, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/loc/cF;-><init>(Lcom/loc/at;Lcom/loc/bM;)V

    invoke-static {v0, v2}, Lcom/loc/at;->byS(Lcom/loc/at;Lcom/loc/cF;)Lcom/loc/cF;
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_4a

    :try_start_2f
    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    iget-object v2, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    invoke-static {v2}, Lcom/loc/at;->byT(Lcom/loc/at;)Lcom/loc/cF;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/loc/at;->byU(Lcom/loc/at;Landroid/location/GpsStatus$NmeaListener;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_58
    .catchall {:try_start_2f .. :try_end_3a} :catchall_4a

    :goto_3a
    :try_start_3a
    monitor-exit v1

    :goto_3b
    return-void

    :cond_3c
    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    iget-object v0, v0, Lcom/loc/at;->bfO:Lcom/loc/aI;

    iget-object v2, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    invoke-static {v2}, Lcom/loc/at;->byR(Lcom/loc/at;)Lcom/loc/cq;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/loc/aI;->bzH(Landroid/telephony/PhoneStateListener;)V

    goto :goto_22

    :catchall_4a
    move-exception v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v0
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "startInnerListen-onLooperPrepared"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :catch_58
    move-exception v0

    goto :goto_3a
.end method

.method public run()V
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_16
    .catchall {:try_start_1 .. :try_end_4} :catchall_32

    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    iget-object v0, v0, Lcom/loc/at;->bfO:Lcom/loc/aI;

    if-nez v0, :cond_45

    :goto_a
    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    invoke-static {v0}, Lcom/loc/at;->byT(Lcom/loc/at;)Lcom/loc/cF;

    move-result-object v0

    if-nez v0, :cond_4d

    :goto_12
    invoke-virtual {p0}, Lcom/loc/bM;->quit()Z

    :goto_15
    return-void

    :catch_16
    move-exception v0

    :try_start_17
    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "startInnerListen-run"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_32

    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    iget-object v0, v0, Lcom/loc/at;->bfO:Lcom/loc/aI;

    if-nez v0, :cond_5e

    :goto_26
    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    invoke-static {v0}, Lcom/loc/at;->byT(Lcom/loc/at;)Lcom/loc/cF;

    move-result-object v0

    if-nez v0, :cond_66

    :goto_2e
    invoke-virtual {p0}, Lcom/loc/bM;->quit()Z

    goto :goto_15

    :catchall_32
    move-exception v0

    iget-object v1, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    iget-object v1, v1, Lcom/loc/at;->bfO:Lcom/loc/aI;

    if-nez v1, :cond_77

    :goto_39
    iget-object v1, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    invoke-static {v1}, Lcom/loc/at;->byT(Lcom/loc/at;)Lcom/loc/cF;

    move-result-object v1

    if-nez v1, :cond_7f

    :goto_41
    invoke-virtual {p0}, Lcom/loc/bM;->quit()Z

    throw v0

    :cond_45
    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    iget-object v0, v0, Lcom/loc/at;->bfO:Lcom/loc/aI;

    invoke-virtual {v0, v3}, Lcom/loc/aI;->bzH(Landroid/telephony/PhoneStateListener;)V

    goto :goto_a

    :cond_4d
    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    iget-object v1, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    invoke-static {v1}, Lcom/loc/at;->byT(Lcom/loc/at;)Lcom/loc/cF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/at;->byV(Lcom/loc/at;Landroid/location/GpsStatus$NmeaListener;)V

    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    invoke-static {v0, v3}, Lcom/loc/at;->byS(Lcom/loc/at;Lcom/loc/cF;)Lcom/loc/cF;

    goto :goto_12

    :cond_5e
    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    iget-object v0, v0, Lcom/loc/at;->bfO:Lcom/loc/aI;

    invoke-virtual {v0, v3}, Lcom/loc/aI;->bzH(Landroid/telephony/PhoneStateListener;)V

    goto :goto_26

    :cond_66
    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    iget-object v1, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    invoke-static {v1}, Lcom/loc/at;->byT(Lcom/loc/at;)Lcom/loc/cF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/at;->byV(Lcom/loc/at;Landroid/location/GpsStatus$NmeaListener;)V

    iget-object v0, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    invoke-static {v0, v3}, Lcom/loc/at;->byS(Lcom/loc/at;Lcom/loc/cF;)Lcom/loc/cF;

    goto :goto_2e

    :cond_77
    iget-object v1, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    iget-object v1, v1, Lcom/loc/at;->bfO:Lcom/loc/aI;

    invoke-virtual {v1, v3}, Lcom/loc/aI;->bzH(Landroid/telephony/PhoneStateListener;)V

    goto :goto_39

    :cond_7f
    iget-object v1, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    iget-object v2, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    invoke-static {v2}, Lcom/loc/at;->byT(Lcom/loc/at;)Lcom/loc/cF;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loc/at;->byV(Lcom/loc/at;Landroid/location/GpsStatus$NmeaListener;)V

    iget-object v1, p0, Lcom/loc/bM;->bhR:Lcom/loc/at;

    invoke-static {v1, v3}, Lcom/loc/at;->byS(Lcom/loc/at;Lcom/loc/cF;)Lcom/loc/cF;

    goto :goto_41
.end method

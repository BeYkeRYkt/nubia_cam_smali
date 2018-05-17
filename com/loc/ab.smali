.class Lcom/loc/ab;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field final synthetic beF:Lcom/loc/aI;


# direct methods
.method public constructor <init>(Lcom/loc/aI;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/loc/ab;->beF:Lcom/loc/aI;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .registers 3

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    iget-object v0, p0, Lcom/loc/ab;->beF:Lcom/loc/aI;

    invoke-static {v0}, Lcom/loc/aI;->bzI(Lcom/loc/aI;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_1d

    :try_start_a
    iget-object v0, p0, Lcom/loc/ab;->beF:Lcom/loc/aI;

    invoke-static {v0}, Lcom/loc/aI;->bzJ(Lcom/loc/aI;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_12
    monitor-exit v1

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/loc/ab;->beF:Lcom/loc/aI;

    invoke-static {v0}, Lcom/loc/aI;->bzK(Lcom/loc/aI;)V

    goto :goto_12

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v0
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1d} :catch_1d

    :catch_1d
    move-exception v0

    goto :goto_13
.end method

.method public run()V
    .registers 4

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    :try_start_5
    iget-object v0, p0, Lcom/loc/ab;->beF:Lcom/loc/aI;

    invoke-static {v0}, Lcom/loc/aI;->bzM(Lcom/loc/aI;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/ab;->beF:Lcom/loc/aI;

    invoke-static {v1}, Lcom/loc/aI;->bzL(Lcom/loc/aI;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/loc/ab;->beF:Lcom/loc/aI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/aI;->bzN(Lcom/loc/aI;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    invoke-virtual {p0}, Lcom/loc/ab;->quit()Z
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1e} :catch_1f

    goto :goto_3

    :catch_1f
    move-exception v0

    goto :goto_3
.end method

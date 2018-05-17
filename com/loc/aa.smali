.class Lcom/loc/aa;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic beE:Lcom/loc/cv;


# direct methods
.method constructor <init>(Lcom/loc/cv;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v1, 0x0

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-boolean v0, v0, Lcom/loc/cv;->j:Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_5} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_9a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5} :catch_cb
    .catchall {:try_start_1 .. :try_end_5} :catchall_138

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGE(Lcom/loc/cv;)Z

    move-result v0

    if-eqz v0, :cond_1aa

    :cond_f
    :goto_f
    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-boolean v0, v0, Lcom/loc/cv;->k:Z

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v2, v0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_1b} :catch_9a
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1b} :catch_cb
    .catchall {:try_start_10 .. :try_end_1b} :catchall_138

    :try_start_1b
    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGE(Lcom/loc/cv;)Z

    move-result v0

    if-nez v0, :cond_19e

    :goto_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_1a7

    move-object v0, v1

    :goto_25
    :try_start_25
    iget-object v2, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v2}, Lcom/loc/cv;->bGF(Lcom/loc/cv;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v2}, Lcom/loc/cv;->bGG(Lcom/loc/cv;)V

    iget-object v2, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v2}, Lcom/loc/cv;->bGH(Lcom/loc/cv;)V

    iget-object v2, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v2, v0}, Lcom/loc/cv;->bGI(Lcom/loc/cv;Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGJ(Lcom/loc/cv;)V

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGK(Lcom/loc/cv;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_46} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_46} :catch_9a
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_46} :catch_cb
    .catchall {:try_start_25 .. :try_end_46} :catchall_138

    goto :goto_1

    :catch_47
    move-exception v0

    :try_start_48
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "run part3"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_138

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGE(Lcom/loc/cv;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGL(Lcom/loc/cv;)V

    goto :goto_f

    :cond_5f
    :try_start_5f
    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGw(Lcom/loc/cv;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_64} :catch_b1
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_64} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_64} :catch_9a
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_64} :catch_cb
    .catchall {:try_start_5f .. :try_end_64} :catchall_138

    :goto_64
    :try_start_64
    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGz(Lcom/loc/cv;)Z

    move-result v0

    if-nez v0, :cond_e4

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v2, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v4}, Lcom/loc/cv;->bGD(Lcom/loc/cv;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/loc/cv;->bGC(Lcom/loc/cv;ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v2

    iput-object v2, v0, Lcom/loc/cv;->blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v3, v0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    monitor-enter v3
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_83} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_83} :catch_9a
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_83} :catch_cb
    .catchall {:try_start_64 .. :try_end_83} :catchall_138

    :try_start_83
    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v0, :cond_142

    :cond_89
    :goto_89
    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/loc/cv;->k:Z

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->bkY:Ljava/util/Vector;

    if-nez v0, :cond_156

    :cond_94
    move-object v0, v1

    :cond_95
    monitor-exit v3

    goto :goto_25

    :catchall_97
    move-exception v0

    monitor-exit v3
    :try_end_99
    .catchall {:try_start_83 .. :try_end_99} :catchall_97

    :try_start_99
    throw v0
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_9a} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_99 .. :try_end_9a} :catch_9a
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9a} :catch_cb
    .catchall {:try_start_99 .. :try_end_9a} :catchall_138

    :catch_9a
    move-exception v0

    :try_start_9b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_138

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGE(Lcom/loc/cv;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGL(Lcom/loc/cv;)V

    goto/16 :goto_f

    :catch_b1
    move-exception v0

    :try_start_b2
    iget-object v2, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/loc/cv;->bGx(Lcom/loc/cv;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/loc/cv;->bGy(Lcom/loc/cv;Z)Z

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "run part1"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_ca} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_b2 .. :try_end_ca} :catch_9a
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_ca} :catch_cb
    .catchall {:try_start_b2 .. :try_end_ca} :catchall_138

    goto :goto_64

    :catch_cb
    move-exception v0

    :try_start_cc
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "run part5"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d5
    .catchall {:try_start_cc .. :try_end_d5} :catchall_138

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGE(Lcom/loc/cv;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGL(Lcom/loc/cv;)V

    goto/16 :goto_f

    :cond_e4
    :try_start_e4
    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v2, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v2}, Lcom/loc/cv;->bGA(Lcom/loc/cv;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v2

    iput-object v2, v0, Lcom/loc/cv;->blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGB(Lcom/loc/cv;)Lcom/loc/cd;

    move-result-object v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHS()J

    move-result-wide v2

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v4, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v4}, Lcom/loc/cv;->bGB(Lcom/loc/cv;)Lcom/loc/cd;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v5, v5, Lcom/loc/cv;->blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/loc/cd;->bEu(Lcom/autonavi/aps/amapapi/model/AmapLoc;[Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v4

    iput-object v4, v0, Lcom/loc/cv;->blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHT(J)V
    :try_end_11a
    .catch Ljava/lang/Throwable; {:try_start_e4 .. :try_end_11a} :catch_11c
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_11a} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_e4 .. :try_end_11a} :catch_9a
    .catch Ljava/lang/Throwable; {:try_start_e4 .. :try_end_11a} :catch_cb
    .catchall {:try_start_e4 .. :try_end_11a} :catchall_138

    goto/16 :goto_7e

    :catch_11c
    move-exception v0

    :try_start_11d
    iget-object v2, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v3, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    const/16 v4, 0x8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/loc/cv;->bGC(Lcom/loc/cv;ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/cv;->blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "run part2"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_136
    .catch Landroid/os/RemoteException; {:try_start_11d .. :try_end_136} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_11d .. :try_end_136} :catch_9a
    .catch Ljava/lang/Throwable; {:try_start_11d .. :try_end_136} :catch_cb
    .catchall {:try_start_11d .. :try_end_136} :catchall_138

    goto/16 :goto_7e

    :catchall_138
    move-exception v0

    iget-object v1, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v1}, Lcom/loc/cv;->bGE(Lcom/loc/cv;)Z

    move-result v1

    if-eqz v1, :cond_1b1

    :goto_141
    throw v0

    :cond_142
    :try_start_142
    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHv()I

    move-result v0

    if-nez v0, :cond_89

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/loc/cv;->n:J

    goto/16 :goto_89

    :cond_156
    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->bkY:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_94

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->bkY:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v2, v0

    move-object v0, v1

    :goto_16a
    if-lez v2, :cond_95

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "location"

    iget-object v6, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v6, v6, Lcom/loc/cv;->blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput v0, v4, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->bkY:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object v4, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v4, v4, Lcom/loc/cv;->bkY:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_19b
    .catchall {:try_start_142 .. :try_end_19b} :catchall_97

    add-int/lit8 v2, v2, -0x1

    goto :goto_16a

    :cond_19e
    :try_start_19e
    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto/16 :goto_23

    :catchall_1a7
    move-exception v0

    monitor-exit v2
    :try_end_1a9
    .catchall {:try_start_19e .. :try_end_1a9} :catchall_1a7

    :try_start_1a9
    throw v0
    :try_end_1aa
    .catch Landroid/os/RemoteException; {:try_start_1a9 .. :try_end_1aa} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_1a9 .. :try_end_1aa} :catch_9a
    .catch Ljava/lang/Throwable; {:try_start_1a9 .. :try_end_1aa} :catch_cb
    .catchall {:try_start_1a9 .. :try_end_1aa} :catchall_138

    :cond_1aa
    iget-object v0, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGL(Lcom/loc/cv;)V

    goto/16 :goto_f

    :cond_1b1
    iget-object v1, p0, Lcom/loc/aa;->beE:Lcom/loc/cv;

    invoke-static {v1}, Lcom/loc/cv;->bGL(Lcom/loc/cv;)V

    goto :goto_141
.end method

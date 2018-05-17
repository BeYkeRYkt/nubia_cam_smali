.class public Lcom/loc/bo;
.super Lcom/loc/s;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static bho:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private bhn:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/loc/ag;)V
    .registers 4

    invoke-direct {p0}, Lcom/loc/s;-><init>()V

    iput-object p1, p0, Lcom/loc/bo;->bhn:Landroid/content/Context;

    new-instance v0, Lcom/loc/aH;

    invoke-direct {v0, p1}, Lcom/loc/aH;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/loc/ba;->bAz(Lcom/loc/ay;)V

    invoke-direct {p0}, Lcom/loc/bo;->c()V

    return-void
.end method

.method public static declared-synchronized a()V
    .registers 3

    const-class v1, Lcom/loc/bo;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/loc/bo;->bho:Ljava/util/concurrent/ExecutorService;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_5} :catch_16
    .catchall {:try_start_3 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_10

    :goto_7
    :try_start_7
    sget-object v0, Lcom/loc/s;->bdz:Lcom/loc/s;

    if-nez v0, :cond_1e

    :cond_b
    :goto_b
    const/4 v0, 0x0

    sput-object v0, Lcom/loc/s;->bdz:Lcom/loc/s;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_34
    .catchall {:try_start_7 .. :try_end_e} :catchall_1b

    :goto_e
    monitor-exit v1

    return-void

    :cond_10
    :try_start_10
    sget-object v0, Lcom/loc/bo;->bho:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_16
    .catchall {:try_start_10 .. :try_end_15} :catchall_1b

    goto :goto_7

    :catch_16
    move-exception v0

    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_7

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1e
    :try_start_1e
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sget-object v2, Lcom/loc/s;->bdz:Lcom/loc/s;

    if-ne v0, v2, :cond_b

    sget-object v0, Lcom/loc/s;->bdz:Lcom/loc/s;

    iget-object v0, v0, Lcom/loc/s;->bdA:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/loc/s;->bdz:Lcom/loc/s;

    iget-object v0, v0, Lcom/loc/s;->bdA:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_33} :catch_34
    .catchall {:try_start_1e .. :try_end_33} :catchall_1b

    goto :goto_b

    :catch_34
    move-exception v0

    :try_start_35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_1b

    goto :goto_e
.end method

.method static declared-synchronized b()Ljava/util/concurrent/ExecutorService;
    .registers 2

    const-class v1, Lcom/loc/bo;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/loc/bo;->bho:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_11

    :cond_7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/loc/bo;->bho:Ljava/util/concurrent/ExecutorService;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_d} :catch_1a
    .catchall {:try_start_3 .. :try_end_d} :catchall_1f

    :goto_d
    :try_start_d
    sget-object v0, Lcom/loc/bo;->bho:Ljava/util/concurrent/ExecutorService;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_1f

    monitor-exit v1

    return-object v0

    :cond_11
    :try_start_11
    sget-object v0, Lcom/loc/bo;->bho:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_1a
    .catchall {:try_start_11 .. :try_end_16} :catchall_1f

    move-result v0

    if-nez v0, :cond_7

    goto :goto_d

    :catch_1a
    move-exception v0

    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_d

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized bBd(Landroid/content/Context;Lcom/loc/ag;)Lcom/loc/bo;
    .registers 5

    const-class v1, Lcom/loc/bo;

    monitor-enter v1

    if-eqz p1, :cond_17

    :try_start_5
    invoke-virtual {p1}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    :cond_b
    new-instance v0, Lcom/loc/i;

    const-string/jumbo v2, "sdk name is invalid"

    invoke-direct {v0, v2}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_17
    :try_start_17
    new-instance v0, Lcom/loc/i;

    const-string/jumbo v2, "sdk info is null"

    invoke-direct {v0, v2}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_14

    move-result v0

    if-nez v0, :cond_b

    :try_start_2d
    sget-object v0, Lcom/loc/s;->bdz:Lcom/loc/s;

    if-eqz v0, :cond_45

    sget-object v0, Lcom/loc/s;->bdz:Lcom/loc/s;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/loc/s;->bdB:Z

    :goto_36
    sget-object v0, Lcom/loc/s;->bdz:Lcom/loc/s;

    sget-object v2, Lcom/loc/s;->bdz:Lcom/loc/s;

    iget-boolean v2, v2, Lcom/loc/s;->bdB:Z

    invoke-virtual {v0, p0, p1, v2}, Lcom/loc/s;->bwm(Landroid/content/Context;Lcom/loc/ag;Z)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_3f} :catch_4d
    .catchall {:try_start_2d .. :try_end_3f} :catchall_14

    :goto_3f
    :try_start_3f
    sget-object v0, Lcom/loc/s;->bdz:Lcom/loc/s;

    check-cast v0, Lcom/loc/bo;
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_14

    monitor-exit v1

    return-object v0

    :cond_45
    :try_start_45
    new-instance v0, Lcom/loc/bo;

    invoke-direct {v0, p0, p1}, Lcom/loc/bo;-><init>(Landroid/content/Context;Lcom/loc/ag;)V

    sput-object v0, Lcom/loc/s;->bdz:Lcom/loc/s;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_4c} :catch_4d
    .catchall {:try_start_45 .. :try_end_4c} :catchall_14

    goto :goto_36

    :catch_4d
    move-exception v0

    :try_start_4e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_14

    goto :goto_3f
.end method

.method public static bBe(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/loc/s;->bdz:Lcom/loc/s;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/loc/s;->bdz:Lcom/loc/s;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/loc/s;->bwl(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static bBf(Lcom/loc/ag;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/loc/s;->bdz:Lcom/loc/s;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/loc/s;->bdz:Lcom/loc/s;

    invoke-virtual {v0, p0, p1}, Lcom/loc/s;->bwn(Lcom/loc/ag;Ljava/lang/String;)V

    goto :goto_4
.end method

.method static synthetic bBg(Lcom/loc/bo;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/loc/bo;->bhn:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .registers 3

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bo;->bdA:Ljava/lang/Thread$UncaughtExceptionHandler;

    iget-object v0, p0, Lcom/loc/bo;->bdA:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/loc/bo;->bdA:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.amap.api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2d

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bo;->bdB:Z

    :goto_20
    return-void

    :cond_21
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bo;->bdB:Z
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_20

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_20

    :cond_2d
    const/4 v0, 0x0

    :try_start_2e
    iput-boolean v0, p0, Lcom/loc/bo;->bdB:Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_30} :catch_28

    goto :goto_20
.end method


# virtual methods
.method protected bwl(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/loc/bo;->bhn:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/loc/D;->bwx(Landroid/content/Context;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bwm(Landroid/content/Context;Lcom/loc/ag;Z)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/loc/bo;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Lcom/loc/F;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/loc/F;-><init>(Lcom/loc/bo;Landroid/content/Context;Lcom/loc/ag;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_15
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_18

    :goto_15
    return-void

    :catch_16
    move-exception v0

    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_15
.end method

.method protected bwn(Lcom/loc/ag;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/loc/bo;->bhn:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/loc/D;->bww(Landroid/content/Context;Lcom/loc/ag;Ljava/lang/String;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v1, 0x0

    if-eqz p2, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1, v1}, Lcom/loc/bo;->bwl(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bo;->bdA:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_d

    :goto_b
    return-void

    :cond_c
    return-void

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/loc/bo;->bdA:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_18

    :goto_12
    iget-object v0, p0, Lcom/loc/bo;->bdA:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_18
    move-exception v0

    goto :goto_12
.end method

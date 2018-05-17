.class public Lcom/umeng/analytics/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/List;

.field private static b:Ljava/util/concurrent/ExecutorService;

.field private static c:J

.field private static d:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/umeng/analytics/f;->a:Ljava/util/List;

    .line 15
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/f;->b:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x5

    .line 16
    sput-wide v0, Lcom/umeng/analytics/f;->c:J

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 4

    .prologue
    .line 33
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_34

    .line 39
    sget-object v0, Lcom/umeng/analytics/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    sget-object v0, Lcom/umeng/analytics/f;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 43
    :goto_19
    sget-object v0, Lcom/umeng/analytics/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 46
    :goto_21
    sget-object v0, Lcom/umeng/analytics/f;->b:Ljava/util/concurrent/ExecutorService;

    sget-wide v2, Lcom/umeng/analytics/f;->c:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 47
    sget-object v0, Lcom/umeng/analytics/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    sget-wide v2, Lcom/umeng/analytics/f;->c:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 50
    :goto_33
    return-void

    .line 33
    :cond_34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 34
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 35
    if-eqz v0, :cond_6

    .line 36
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_6

    .line 49
    :catch_47
    move-exception v0

    goto :goto_33

    .line 42
    :cond_49
    sget-object v0, Lcom/umeng/analytics/f;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_19

    .line 44
    :cond_4f
    sget-object v0, Lcom/umeng/analytics/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_47

    goto :goto_21
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 24
    sget-object v0, Lcom/umeng/analytics/f;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_e

    .line 28
    :goto_8
    sget-object v0, Lcom/umeng/analytics/f;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 29
    return-void

    .line 25
    :cond_e
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/f;->b:Ljava/util/concurrent/ExecutorService;

    goto :goto_8
.end method

.method public static declared-synchronized a(Ljava/lang/Runnable;J)V
    .registers 8

    .prologue
    const-class v1, Lcom/umeng/analytics/f;

    monitor-enter v1

    .line 68
    :try_start_3
    sget-object v0, Lcom/umeng/analytics/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 72
    :goto_b
    sget-object v0, Lcom/umeng/analytics/f;->a:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    sget-object v3, Lcom/umeng/analytics/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, p0, p1, p2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_26

    monitor-exit v1

    .line 73
    return-void

    .line 69
    :cond_1f
    :try_start_1f
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/f;->d:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_26

    goto :goto_b

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    const-class v1, Lcom/umeng/analytics/f;

    monitor-enter v1

    .line 61
    :try_start_3
    sget-object v0, Lcom/umeng/analytics/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_12

    .line 64
    :goto_b
    sget-object v0, Lcom/umeng/analytics/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_19

    monitor-exit v1

    .line 65
    return-void

    .line 62
    :cond_12
    :try_start_12
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/f;->d:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_19

    goto :goto_b

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c(Ljava/lang/Runnable;)V
    .registers 6

    .prologue
    const-class v1, Lcom/umeng/analytics/f;

    monitor-enter v1

    .line 76
    :try_start_3
    sget-object v0, Lcom/umeng/analytics/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 80
    :goto_b
    sget-object v0, Lcom/umeng/analytics/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    move-result-object v0

    const-wide/16 v2, 0x5

    .line 82
    :try_start_13
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_24
    .catchall {:try_start_13 .. :try_end_18} :catchall_21

    :goto_18
    monitor-exit v1

    .line 85
    return-void

    .line 77
    :cond_1a
    :try_start_1a
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/f;->d:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_21

    goto :goto_b

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0

    .line 84
    :catch_24
    move-exception v0

    goto :goto_18
.end method

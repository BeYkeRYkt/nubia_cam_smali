.class public Lcom/loc/cB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static blC:Lcom/loc/cB;


# instance fields
.field private blD:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private blE:Landroid/content/Context;

.field private blF:Lcom/loc/ag;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/loc/ag;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cB;->blE:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/cB;->blF:Lcom/loc/ag;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cB;->blD:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method static declared-synchronized bHe(Landroid/content/Context;Lcom/loc/ag;)Lcom/loc/cB;
    .registers 4

    const-class v1, Lcom/loc/cB;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/loc/cB;->blC:Lcom/loc/cB;

    if-eqz v0, :cond_b

    :goto_7
    sget-object v0, Lcom/loc/cB;->blC:Lcom/loc/cB;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, Lcom/loc/cB;

    invoke-direct {v0, p0, p1}, Lcom/loc/cB;-><init>(Landroid/content/Context;Lcom/loc/ag;)V

    sput-object v0, Lcom/loc/cB;->blC:Lcom/loc/cB;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_7

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    invoke-static {p2}, Lcom/loc/bv;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :try_start_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_34

    move-result v1

    if-eqz v1, :cond_f

    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/loc/cB;->blD:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_49

    :goto_e
    return-void

    :cond_f
    :try_start_f
    const-string/jumbo v1, "amapdynamic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    :cond_18
    const-string/jumbo v1, "com.amap.api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/loc/n;

    iget-object v1, p0, Lcom/loc/cB;->blE:Landroid/content/Context;

    invoke-static {}, Lcom/loc/bX;->c()Lcom/loc/bX;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/loc/n;-><init>(Landroid/content/Context;Lcom/loc/aC;)V

    iget-object v1, p0, Lcom/loc/cB;->blE:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/cB;->blF:Lcom/loc/ag;

    invoke-static {v0, v1, v2}, Lcom/loc/cl;->bFH(Lcom/loc/n;Landroid/content/Context;Lcom/loc/ag;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_33} :catch_34

    goto :goto_a

    :catch_34
    move-exception v0

    const-string/jumbo v1, "DynamicExceptionHandler"

    const-string/jumbo v2, "uncaughtException"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_3f
    :try_start_3f
    const-string/jumbo v1, "admic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_45} :catch_34

    move-result v1

    if-nez v1, :cond_18

    goto :goto_a

    :cond_49
    iget-object v0, p0, Lcom/loc/cB;->blD:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

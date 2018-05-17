.class Lcom/loc/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic bdY:Lcom/loc/ag;

.field final synthetic bdZ:Z

.field final synthetic bea:Lcom/loc/bo;


# direct methods
.method constructor <init>(Lcom/loc/bo;Landroid/content/Context;Lcom/loc/ag;Z)V
    .registers 5

    iput-object p1, p0, Lcom/loc/F;->bea:Lcom/loc/bo;

    iput-object p2, p0, Lcom/loc/F;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/loc/F;->bdY:Lcom/loc/ag;

    iput-boolean p4, p0, Lcom/loc/F;->bdZ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_1b

    :try_start_5
    new-instance v0, Lcom/loc/aY;

    iget-object v2, p0, Lcom/loc/F;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/loc/aY;-><init>(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/loc/F;->bdY:Lcom/loc/ag;

    invoke-virtual {v0, v2}, Lcom/loc/aY;->bAy(Lcom/loc/ag;)V

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_18

    :try_start_13
    iget-boolean v0, p0, Lcom/loc/F;->bdZ:Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_15} :catch_1b

    if-nez v0, :cond_20

    :goto_17
    return-void

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v0
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_17

    :cond_20
    :try_start_20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_25} :catch_1b

    :try_start_25
    new-instance v0, Lcom/loc/h;

    iget-object v2, p0, Lcom/loc/F;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/loc/h;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/loc/av;

    invoke-direct {v2}, Lcom/loc/av;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/loc/av;->bzi(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/loc/av;->a(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/loc/av;->bzh(Z)V

    invoke-virtual {v0, v2}, Lcom/loc/h;->bvG(Lcom/loc/av;)V

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_4b

    :try_start_41
    iget-object v0, p0, Lcom/loc/F;->bea:Lcom/loc/bo;

    invoke-static {v0}, Lcom/loc/bo;->bBg(Lcom/loc/bo;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/D;->a(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_4a} :catch_1b

    goto :goto_17

    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v0
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4e} :catch_1b
.end method

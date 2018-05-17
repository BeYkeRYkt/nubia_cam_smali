.class public Lcom/loc/bf;
.super Lcom/loc/aR;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/bf;->a:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/aR;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/content/Context;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/loc/cn;->bFW(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v5, :cond_9

    :cond_8
    return v4

    :cond_9
    sget-boolean v0, Lcom/loc/bf;->a:Z

    if-eqz v0, :cond_8

    sput-boolean v4, Lcom/loc/bf;->a:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1

    :try_start_14
    new-instance v0, Lcom/loc/h;

    invoke-direct {v0, p1}, Lcom/loc/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/loc/h;->a()Lcom/loc/av;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lcom/loc/av;->b()Z

    move-result v3

    if-nez v3, :cond_29

    monitor-exit v1

    return v4

    :cond_27
    monitor-exit v1

    return v5

    :cond_29
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/loc/av;->bzh(Z)V

    invoke-virtual {v0, v2}, Lcom/loc/h;->bvG(Lcom/loc/av;)V

    monitor-exit v1

    return v5

    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_32

    throw v0
.end method

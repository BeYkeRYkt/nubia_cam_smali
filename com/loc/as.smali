.class public Lcom/loc/as;
.super Lcom/loc/aR;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/as;->a:Z

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
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/loc/bv;->a(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bU;->bDK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/List;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/content/Context;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/loc/as;->a:Z

    if-nez v0, :cond_7

    return v4

    :cond_7
    sput-boolean v4, Lcom/loc/as;->a:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1

    :try_start_e
    new-instance v0, Lcom/loc/h;

    invoke-direct {v0, p1}, Lcom/loc/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/loc/h;->a()Lcom/loc/av;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/loc/av;->a()Z

    move-result v3

    if-nez v3, :cond_23

    monitor-exit v1

    return v4

    :cond_21
    monitor-exit v1

    return v5

    :cond_23
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/loc/av;->a(Z)V

    invoke-virtual {v0, v2}, Lcom/loc/h;->bvG(Lcom/loc/av;)V

    monitor-exit v1

    return v5

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_2c

    throw v0
.end method

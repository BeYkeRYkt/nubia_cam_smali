.class public Lcom/loc/bE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bhM:Lcom/loc/bE;


# instance fields
.field private final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/loc/bE;

    invoke-direct {v0}, Lcom/loc/bE;-><init>()V

    sput-object v0, Lcom/loc/bE;->bhM:Lcom/loc/bE;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loc/bE;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/loc/bE;
    .registers 1

    sget-object v0, Lcom/loc/bE;->bhM:Lcom/loc/bE;

    return-object v0
.end method

.method private bCo(Lcom/loc/ag;)Z
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p1}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized bCm(Landroid/content/Context;Lcom/loc/ag;)Lcom/loc/W;
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p2}, Lcom/loc/bE;->bCo(Lcom/loc/ag;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p2}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/bE;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/W;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_20

    if-eqz v0, :cond_23

    :goto_15
    monitor-exit p0

    return-object v0

    :cond_17
    :try_start_17
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "sdkInfo referance is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_23
    :try_start_23
    new-instance v1, Lcom/loc/cc;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, p2, v4}, Lcom/loc/cc;-><init>(Landroid/content/Context;Lcom/loc/ag;Z)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2d} :catch_37
    .catchall {:try_start_23 .. :try_end_2d} :catchall_20

    :try_start_2d
    iget-object v0, p0, Lcom/loc/bE;->b:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/loc/cB;->bHe(Landroid/content/Context;Lcom/loc/ag;)Lcom/loc/cB;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_35} :catch_39
    .catchall {:try_start_2d .. :try_end_35} :catchall_20

    move-object v0, v1

    goto :goto_15

    :catch_37
    move-exception v1

    goto :goto_15

    :catch_39
    move-exception v0

    move-object v0, v1

    goto :goto_15
.end method

.method public bCn(Landroid/content/Context;Lcom/loc/ag;)Lcom/loc/W;
    .registers 6

    iget-object v0, p0, Lcom/loc/bE;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/W;

    if-nez v0, :cond_28

    new-instance v0, Lcom/loc/cc;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/loc/cc;-><init>(Landroid/content/Context;Lcom/loc/ag;Z)V

    invoke-virtual {v0, p1, p2}, Lcom/loc/W;->bwX(Landroid/content/Context;Lcom/loc/ag;)V

    iget-object v1, p0, Lcom/loc/bE;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/loc/cB;->bHe(Landroid/content/Context;Lcom/loc/ag;)Lcom/loc/cB;

    :goto_27
    return-object v0

    :cond_28
    invoke-virtual {v0, p1, p2}, Lcom/loc/W;->bwX(Landroid/content/Context;Lcom/loc/ag;)V

    goto :goto_27
.end method

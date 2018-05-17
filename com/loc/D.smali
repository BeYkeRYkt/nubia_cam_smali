.class public Lcom/loc/D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "/a/"

    sput-object v0, Lcom/loc/D;->a:Ljava/lang/String;

    const-string/jumbo v0, "b"

    sput-object v0, Lcom/loc/D;->b:Ljava/lang/String;

    const-string/jumbo v0, "c"

    sput-object v0, Lcom/loc/D;->c:Ljava/lang/String;

    const-string/jumbo v0, "d"

    sput-object v0, Lcom/loc/D;->d:Ljava/lang/String;

    const-string/jumbo v0, "e"

    sput-object v0, Lcom/loc/D;->e:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(I)Ljava/lang/Class;
    .registers 2

    packed-switch p0, :pswitch_data_e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-class v0, Lcom/loc/cC;

    return-object v0

    :pswitch_8
    const-class v0, Lcom/loc/H;

    return-object v0

    :pswitch_b
    const-class v0, Lcom/loc/bt;

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/loc/D;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x2

    :try_start_1
    invoke-static {p0, v0}, Lcom/loc/D;->bwv(Landroid/content/Context;I)Lcom/loc/aR;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p0}, Lcom/loc/aR;->b(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_c

    :goto_a
    return-void

    :cond_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a
.end method

.method static b(Landroid/content/Context;)V
    .registers 4

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

    new-instance v1, Lcom/loc/al;

    invoke-direct {v1, p0}, Lcom/loc/al;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    const-string/jumbo v1, "Log"

    const-string/jumbo v2, "processLog"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public static bwt(I)Lcom/loc/a;
    .registers 2

    packed-switch p0, :pswitch_data_18

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/loc/cC;

    invoke-direct {v0}, Lcom/loc/cC;-><init>()V

    return-object v0

    :pswitch_b
    new-instance v0, Lcom/loc/H;

    invoke-direct {v0}, Lcom/loc/H;-><init>()V

    return-object v0

    :pswitch_11
    new-instance v0, Lcom/loc/bt;

    invoke-direct {v0}, Lcom/loc/bt;-><init>()V

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_5
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method public static bwu(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_10

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_7
    sget-object v0, Lcom/loc/D;->d:Ljava/lang/String;

    return-object v0

    :pswitch_a
    sget-object v0, Lcom/loc/D;->c:Ljava/lang/String;

    return-object v0

    :pswitch_d
    sget-object v0, Lcom/loc/D;->b:Ljava/lang/String;

    return-object v0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a
        :pswitch_d
        :pswitch_7
    .end packed-switch
.end method

.method static bwv(Landroid/content/Context;I)Lcom/loc/aR;
    .registers 3

    packed-switch p1, :pswitch_data_18

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/loc/as;

    invoke-direct {v0, p1}, Lcom/loc/as;-><init>(I)V

    :goto_a
    return-object v0

    :pswitch_b
    new-instance v0, Lcom/loc/bf;

    invoke-direct {v0, p1}, Lcom/loc/bf;-><init>(I)V

    goto :goto_a

    :pswitch_11
    new-instance v0, Lcom/loc/ce;

    invoke-direct {v0, p1}, Lcom/loc/ce;-><init>(I)V

    goto :goto_a

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_5
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method static bww(Landroid/content/Context;Lcom/loc/ag;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Lcom/loc/ag;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/loc/bo;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_c
    return-void

    :cond_d
    return-void

    :cond_e
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Lcom/loc/aO;

    invoke-direct {v1, p0, p1, p2}, Lcom/loc/aO;-><init>(Landroid/content/Context;Lcom/loc/ag;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1c
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1f

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    return-void

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1c
.end method

.method static bwx(Landroid/content/Context;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    invoke-static {}, Lcom/loc/bo;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    if-nez v6, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/loc/aZ;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/loc/aZ;-><init>(Landroid/content/Context;ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1d

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    return-void

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a
.end method

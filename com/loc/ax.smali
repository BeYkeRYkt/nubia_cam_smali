.class Lcom/loc/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic bfQ:Lcom/loc/cD;


# direct methods
.method constructor <init>(Lcom/loc/cD;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/ax;->bfQ:Lcom/loc/cD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/loc/ax;->bfQ:Lcom/loc/cD;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/loc/ax;->bfQ:Lcom/loc/cD;

    invoke-static {v0}, Lcom/loc/cD;->bHn(Lcom/loc/cD;)Ljava/io/Writer;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/loc/ax;->bfQ:Lcom/loc/cD;

    invoke-static {v0}, Lcom/loc/cD;->bHo(Lcom/loc/cD;)V

    iget-object v0, p0, Lcom/loc/ax;->bfQ:Lcom/loc/cD;

    invoke-static {v0}, Lcom/loc/cD;->bHp(Lcom/loc/cD;)Z

    move-result v0

    if-nez v0, :cond_1d

    :goto_19
    monitor-exit v1

    return-object v3

    :cond_1b
    monitor-exit v1

    return-object v3

    :cond_1d
    iget-object v0, p0, Lcom/loc/ax;->bfQ:Lcom/loc/cD;

    invoke-static {v0}, Lcom/loc/cD;->bHq(Lcom/loc/cD;)V

    iget-object v0, p0, Lcom/loc/ax;->bfQ:Lcom/loc/cD;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/loc/cD;->bHr(Lcom/loc/cD;I)I

    goto :goto_19

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/loc/ax;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

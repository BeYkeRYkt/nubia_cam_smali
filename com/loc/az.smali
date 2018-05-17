.class Lcom/loc/az;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic bfR:Lcom/loc/cd;


# direct methods
.method constructor <init>(Lcom/loc/cd;I)V
    .registers 3

    iput-object p1, p0, Lcom/loc/az;->bfR:Lcom/loc/cd;

    iput p2, p0, Lcom/loc/az;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/loc/az;->bfR:Lcom/loc/cd;

    invoke-static {v4}, Lcom/loc/cd;->bFs(Lcom/loc/cd;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1e

    :goto_1b
    if-nez v0, :cond_20

    return-void

    :cond_1e
    move v0, v1

    goto :goto_1b

    :cond_20
    iget-object v0, p0, Lcom/loc/az;->bfR:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->bFq(Lcom/loc/cd;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/loc/az;->bfR:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->bFu(Lcom/loc/cd;)V

    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/loc/az;->bfR:Lcom/loc/cd;

    iget v1, p0, Lcom/loc/az;->a:I

    invoke-static {v0, v1}, Lcom/loc/cd;->bFt(Lcom/loc/cd;I)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_35} :catch_36

    goto :goto_2d

    :catch_36
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "timerTaskU run"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

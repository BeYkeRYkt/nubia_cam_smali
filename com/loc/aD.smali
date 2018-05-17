.class Lcom/loc/aD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bfT:Lcom/loc/bQ;


# direct methods
.method constructor <init>(Lcom/loc/bQ;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/aD;->bfT:Lcom/loc/bQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/aD;->bfT:Lcom/loc/bQ;

    invoke-static {v0}, Lcom/loc/bQ;->bCS(Lcom/loc/bQ;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_8
    iget-object v0, p0, Lcom/loc/aD;->bfT:Lcom/loc/bQ;

    iget-boolean v0, v0, Lcom/loc/bQ;->bik:Z

    if-nez v0, :cond_25

    :goto_e
    iget-object v0, p0, Lcom/loc/aD;->bfT:Lcom/loc/bQ;

    invoke-static {v0}, Lcom/loc/bQ;->bCU(Lcom/loc/bQ;)Z

    move-result v0

    if-nez v0, :cond_3b

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/loc/aD;->bfT:Lcom/loc/bQ;

    iget-boolean v0, v0, Lcom/loc/bQ;->bip:Z
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_30

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x7d0

    :try_start_1f
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_23
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_30

    :goto_22
    return-void

    :catch_23
    move-exception v0

    goto :goto_22

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/loc/aD;->bfT:Lcom/loc/bQ;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/loc/bQ;->bik:Z

    iget-object v0, p0, Lcom/loc/aD;->bfT:Lcom/loc/bQ;

    invoke-static {v0}, Lcom/loc/bQ;->bCT(Lcom/loc/bQ;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2f} :catch_30

    goto :goto_e

    :catch_30
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$NetWorkTask"

    const-string/jumbo v2, "run"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/loc/aD;->bfT:Lcom/loc/bQ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/bQ;->bCV(Lcom/loc/bQ;Z)Z

    iget-object v0, p0, Lcom/loc/aD;->bfT:Lcom/loc/bQ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/bQ;->bCW(Lcom/loc/bQ;I)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_47} :catch_30

    goto :goto_16
.end method

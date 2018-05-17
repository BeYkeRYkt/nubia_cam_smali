.class Lcom/loc/bs;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic bhq:Lcom/loc/cv;


# direct methods
.method constructor <init>(Lcom/loc/cv;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/bs;->bhq:Lcom/loc/cv;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/bs;->bhq:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGM(Lcom/loc/cv;)Z

    move-result v0

    if-eqz v0, :cond_18

    :goto_8
    iget-object v0, p0, Lcom/loc/bs;->bhq:Lcom/loc/cv;

    iget-boolean v0, v0, Lcom/loc/cv;->blt:Z

    if-eqz v0, :cond_29

    :goto_e
    iget-object v0, p0, Lcom/loc/bs;->bhq:Lcom/loc/cv;

    iget-boolean v0, v0, Lcom/loc/cv;->blt:Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_1e

    if-nez v0, :cond_3b

    :goto_14
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/loc/bs;->bhq:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGN(Lcom/loc/cv;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_8

    :catch_1e
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "run"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/loc/bs;->bhq:Lcom/loc/cv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/cv;->blt:Z

    iget-object v0, p0, Lcom/loc/bs;->bhq:Lcom/loc/cv;

    new-instance v1, Ljava/net/ServerSocket;

    const v2, 0xaaa9

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, v0, Lcom/loc/cv;->bls:Ljava/net/ServerSocket;

    goto :goto_e

    :cond_3b
    iget-object v0, p0, Lcom/loc/bs;->bhq:Lcom/loc/cv;

    iget-object v1, p0, Lcom/loc/bs;->bhq:Lcom/loc/cv;

    iget-object v1, v1, Lcom/loc/cv;->bls:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/cv;->blu:Ljava/net/Socket;

    iget-object v0, p0, Lcom/loc/bs;->bhq:Lcom/loc/cv;

    iget-object v1, p0, Lcom/loc/bs;->bhq:Lcom/loc/cv;

    iget-object v1, v1, Lcom/loc/cv;->blu:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/loc/cv;->bGO(Lcom/loc/cv;Ljava/net/Socket;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_50} :catch_1e

    goto :goto_e
.end method

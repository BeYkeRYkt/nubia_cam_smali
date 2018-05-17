.class Lcom/loc/ao;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic bfo:Lcom/loc/at;


# direct methods
.method constructor <init>(Lcom/loc/at;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/ao;->bfo:Lcom/loc/at;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    sget-boolean v0, Lcom/loc/at;->d:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/loc/ao;->bfo:Lcom/loc/at;

    invoke-static {v0}, Lcom/loc/at;->byW(Lcom/loc/at;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_4

    :catch_b
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "onReceive run"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

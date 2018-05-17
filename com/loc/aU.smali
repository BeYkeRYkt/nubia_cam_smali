.class Lcom/loc/aU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic bgu:Lcom/loc/bQ;


# direct methods
.method constructor <init>(Lcom/loc/bQ;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/aU;->bgu:Lcom/loc/bQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Messenger;
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/loc/aU;->bgu:Lcom/loc/bQ;

    iget-object v0, v0, Lcom/loc/bQ;->bim:Landroid/os/Messenger;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/loc/aU;->bgu:Lcom/loc/bQ;

    iget-object v0, v0, Lcom/loc/bQ;->bim:Landroid/os/Messenger;

    return-object v0

    :cond_b
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/loc/aU;->a()Landroid/os/Messenger;

    move-result-object v0

    return-object v0
.end method

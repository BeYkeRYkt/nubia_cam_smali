.class Lcom/loc/cE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic blU:Lcom/loc/an;

.field final synthetic blV:Lcom/loc/bi;


# direct methods
.method constructor <init>(Lcom/loc/bi;Lcom/loc/an;)V
    .registers 3

    iput-object p1, p0, Lcom/loc/cE;->blV:Lcom/loc/bi;

    iput-object p2, p0, Lcom/loc/cE;->blU:Lcom/loc/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/loc/cE;->blV:Lcom/loc/bi;

    invoke-static {p2}, Lcom/loc/aJ;->bzU(Landroid/os/IBinder;)Lcom/loc/bd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/bi;->bAN(Lcom/loc/bi;Lcom/loc/bd;)Lcom/loc/bd;

    iget-object v0, p0, Lcom/loc/cE;->blU:Lcom/loc/an;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/loc/an;->a(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/loc/cE;->blV:Lcom/loc/bi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/bi;->bAN(Lcom/loc/bi;Lcom/loc/bd;)Lcom/loc/bd;

    return-void
.end method

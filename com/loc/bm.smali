.class Lcom/loc/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic bhl:Lcom/loc/bQ;


# direct methods
.method constructor <init>(Lcom/loc/bQ;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/bm;->bhl:Lcom/loc/bQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/loc/bm;->bhl:Lcom/loc/bQ;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/loc/bQ;->bim:Landroid/os/Messenger;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/loc/bm;->bhl:Lcom/loc/bQ;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/loc/bQ;->bim:Landroid/os/Messenger;

    return-void
.end method

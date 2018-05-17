.class Lcom/loc/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic bkI:Lcom/loc/bi;


# direct methods
.method constructor <init>(Lcom/loc/bi;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/ck;->bkI:Lcom/loc/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method

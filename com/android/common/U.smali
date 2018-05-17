.class final Lcom/android/common/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic akN:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/common/U;->akN:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/common/U;->akN:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sp(Z)V

    .line 382
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/common/U;->akN:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sp(Z)V

    .line 389
    iget-object v0, p0, Lcom/android/common/U;->akN:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->finish()V

    .line 387
    return-void
.end method

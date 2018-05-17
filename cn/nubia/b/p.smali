.class final Lcn/nubia/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic bqb:Lcn/nubia/b/f;


# direct methods
.method constructor <init>(Lcn/nubia/b/f;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcn/nubia/b/p;->bqb:Lcn/nubia/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .prologue
    .line 168
    iget-object v0, p0, Lcn/nubia/b/p;->bqb:Lcn/nubia/b/f;

    invoke-static {v0}, Lcn/nubia/b/f;->bLs(Lcn/nubia/b/f;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 169
    return-void

    .line 171
    :cond_d
    iget-object v0, p0, Lcn/nubia/b/p;->bqb:Lcn/nubia/b/f;

    invoke-static {v0}, Lcn/nubia/b/f;->bLu(Lcn/nubia/b/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 172
    :try_start_14
    iget-object v0, p0, Lcn/nubia/b/p;->bqb:Lcn/nubia/b/f;

    invoke-static {p2}, Lcn/nubia/bigAperture/j;->bKm(Landroid/os/IBinder;)Lcn/nubia/bigAperture/BigApertureProcess;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/b/f;->bLx(Lcn/nubia/b/f;Lcn/nubia/bigAperture/BigApertureProcess;)Lcn/nubia/bigAperture/BigApertureProcess;

    .line 173
    iget-object v0, p0, Lcn/nubia/b/p;->bqb:Lcn/nubia/b/f;

    invoke-static {v0}, Lcn/nubia/b/f;->bLw(Lcn/nubia/b/f;)Lcn/nubia/b/g;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/b/p;->bqb:Lcn/nubia/b/f;

    invoke-static {v2}, Lcn/nubia/b/f;->bLt(Lcn/nubia/b/f;)Lcn/nubia/bigAperture/BigApertureProcess;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/b/g;->bLB(Lcn/nubia/bigAperture/BigApertureProcess;)V
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_47

    .line 175
    :try_start_2c
    iget-object v0, p0, Lcn/nubia/b/p;->bqb:Lcn/nubia/b/f;

    invoke-static {v0}, Lcn/nubia/b/f;->bLv(Lcn/nubia/b/f;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 176
    iget-object v0, p0, Lcn/nubia/b/p;->bqb:Lcn/nubia/b/f;

    invoke-static {v0}, Lcn/nubia/b/f;->bLt(Lcn/nubia/b/f;)Lcn/nubia/bigAperture/BigApertureProcess;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcn/nubia/bigAperture/BigApertureProcess;->setServiceStoppedAfterTasksDone(Z)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_40} :catch_42
    .catchall {:try_start_2c .. :try_end_40} :catchall_47

    :goto_40
    monitor-exit v1

    .line 167
    return-void

    .line 177
    :catch_42
    move-exception v0

    .line 178
    :try_start_43
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_40

    .line 171
    :catchall_47
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .prologue
    .line 162
    return-void
.end method

.class final Lcn/nubia/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic bqa:Lcn/nubia/b/f;


# direct methods
.method constructor <init>(Lcn/nubia/b/f;)V
    .registers 2

    .prologue
    .line 262
    iput-object p1, p0, Lcn/nubia/b/o;->bqa:Lcn/nubia/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 267
    iget-object v0, p0, Lcn/nubia/b/o;->bqa:Lcn/nubia/b/f;

    invoke-static {v0}, Lcn/nubia/b/f;->bLu(Lcn/nubia/b/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 268
    :try_start_7
    iget-object v0, p0, Lcn/nubia/b/o;->bqa:Lcn/nubia/b/f;

    invoke-static {v0}, Lcn/nubia/b/f;->bLt(Lcn/nubia/b/f;)Lcn/nubia/bigAperture/BigApertureProcess;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_3b

    move-result-object v0

    if-nez v0, :cond_11

    monitor-exit v1

    .line 269
    return-void

    .line 271
    :cond_11
    :try_start_11
    const-string/jumbo v0, "DualCameraControl"

    const-string/jumbo v2, "binderDied"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcn/nubia/b/o;->bqa:Lcn/nubia/b/f;

    invoke-static {v0}, Lcn/nubia/b/f;->bLt(Lcn/nubia/b/f;)Lcn/nubia/bigAperture/BigApertureProcess;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/bigAperture/BigApertureProcess;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/b/o;->bqa:Lcn/nubia/b/f;

    invoke-static {v2}, Lcn/nubia/b/f;->bLv(Lcn/nubia/b/f;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 273
    iget-object v0, p0, Lcn/nubia/b/o;->bqa:Lcn/nubia/b/f;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/nubia/b/f;->bLx(Lcn/nubia/b/f;Lcn/nubia/bigAperture/BigApertureProcess;)Lcn/nubia/bigAperture/BigApertureProcess;

    .line 275
    iget-object v0, p0, Lcn/nubia/b/o;->bqa:Lcn/nubia/b/f;

    invoke-virtual {v0}, Lcn/nubia/b/f;->hN()V
    :try_end_39
    .catchall {:try_start_11 .. :try_end_39} :catchall_3b

    monitor-exit v1

    .line 265
    return-void

    .line 267
    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.class public Lcom/amap/api/location/APSService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field bcZ:Lcom/amap/api/location/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public bvn(Landroid/content/Context;)V
    .registers 8

    :try_start_0
    const-string/jumbo v0, "2.5.1"

    invoke-static {v0}, Lcom/loc/bx;->a(Ljava/lang/String;)Lcom/loc/ag;

    move-result-object v1

    const-string/jumbo v2, "com.amap.api.location.APSServiceWrapper"

    const-class v3, Lcom/loc/cv;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/loc/bH;->bCq(Landroid/content/Context;Lcom/loc/ag;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/e;

    iput-object v0, p0, Lcom/amap/api/location/APSService;->bcZ:Lcom/amap/api/location/e;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_43

    :goto_23
    :try_start_23
    iget-object v0, p0, Lcom/amap/api/location/APSService;->bcZ:Lcom/amap/api/location/e;

    if-eqz v0, :cond_30

    :goto_27
    iget-object v0, p0, Lcom/amap/api/location/APSService;->bcZ:Lcom/amap/api/location/e;

    invoke-interface {v0}, Lcom/amap/api/location/e;->onCreate()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2c} :catch_38

    :goto_2c
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void

    :cond_30
    :try_start_30
    new-instance v0, Lcom/loc/cv;

    invoke-direct {v0, p0}, Lcom/loc/cv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/location/APSService;->bcZ:Lcom/amap/api/location/e;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_37} :catch_38

    goto :goto_27

    :catch_38
    move-exception v0

    const-string/jumbo v1, "APSService"

    const-string/jumbo v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :catch_43
    move-exception v0

    goto :goto_23
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->bcZ:Lcom/amap/api/location/e;

    invoke-interface {v0, p1}, Lcom/amap/api/location/e;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    const-string/jumbo v1, "APSService"

    const-string/jumbo v2, "onBind"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    invoke-virtual {p0, p0}, Lcom/amap/api/location/APSService;->bvn(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->bcZ:Lcom/amap/api/location/e;

    invoke-interface {v0}, Lcom/amap/api/location/e;->onDestroy()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_9

    :goto_5
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_9
    move-exception v0

    const-string/jumbo v1, "APSService"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->bcZ:Lcom/amap/api/location/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/location/e;->onStartCommand(Landroid/content/Intent;II)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    :catch_7
    move-exception v0

    const-string/jumbo v1, "APSService"

    const-string/jumbo v2, "onStartCommand"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

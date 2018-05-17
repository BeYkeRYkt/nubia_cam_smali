.class public Lcom/amap/api/location/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field bcP:Lcom/amap/api/location/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_15

    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/location/b;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amap/api/location/b;->buQ(Landroid/content/Context;Landroid/content/Intent;)Lcom/amap/api/location/c;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/b;->bcP:Lcom/amap/api/location/c;

    :goto_14
    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "AMapLocationClient 1"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method private buQ(Landroid/content/Context;Landroid/content/Intent;)Lcom/amap/api/location/c;
    .registers 9

    :try_start_0
    const-string/jumbo v0, "2.5.1"

    invoke-static {v0}, Lcom/loc/bx;->a(Ljava/lang/String;)Lcom/loc/ag;

    move-result-object v1

    const-string/jumbo v2, "com.amap.api.location.LocationManagerWrapper"

    const-class v3, Lcom/loc/bQ;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object p2, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/loc/bH;->bCq(Landroid/content/Context;Lcom/loc/ag;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/c;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2c

    :goto_29
    if-eqz v0, :cond_33

    :goto_2b
    return-object v0

    :catch_2c
    move-exception v0

    new-instance v0, Lcom/loc/bQ;

    invoke-direct {v0, p1, p2}, Lcom/loc/bQ;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_29

    :cond_33
    new-instance v0, Lcom/loc/bQ;

    invoke-direct {v0, p1, p2}, Lcom/loc/bQ;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2b
.end method


# virtual methods
.method public buR(Lcom/amap/api/location/a;)V
    .registers 5

    if-eqz p1, :cond_8

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/location/b;->bcP:Lcom/amap/api/location/c;

    invoke-interface {v0, p1}, Lcom/amap/api/location/c;->buU(Lcom/amap/api/location/a;)V

    :goto_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_11} :catch_11

    :catch_11
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "setLocationListener"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public buS()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/b;->bcP:Lcom/amap/api/location/c;

    invoke-interface {v0}, Lcom/amap/api/location/c;->buV()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "startLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public buT()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/b;->bcP:Lcom/amap/api/location/c;

    invoke-interface {v0}, Lcom/amap/api/location/c;->buW()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public onDestroy()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/b;->bcP:Lcom/amap/api/location/c;

    invoke-interface {v0}, Lcom/amap/api/location/c;->onDestroy()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

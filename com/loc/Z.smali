.class public Lcom/loc/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field b:Landroid/content/Context;

.field beA:Landroid/os/Handler;

.field beB:Landroid/location/LocationManager;

.field beC:Lcom/amap/api/location/d;

.field beD:Landroid/location/LocationListener;

.field e:J

.field f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/K;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/loc/Z;->e:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/Z;->f:J

    new-instance v0, Lcom/loc/cA;

    invoke-direct {v0, p0}, Lcom/loc/cA;-><init>(Lcom/loc/Z;)V

    iput-object v0, p0, Lcom/loc/Z;->beD:Landroid/location/LocationListener;

    iput-object p1, p0, Lcom/loc/Z;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/Z;->beA:Landroid/os/Handler;

    iget-object v0, p0, Lcom/loc/Z;->b:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/loc/Z;->beB:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/loc/Z;->beB:Landroid/location/LocationManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/loc/Z;->beD:Landroid/location/LocationListener;

    if-nez v0, :cond_a

    :goto_8
    return-void

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/loc/Z;->beB:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/loc/Z;->beD:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_8
.end method

.method public bxA(Lcom/amap/api/location/d;)V
    .registers 5

    iput-object p1, p0, Lcom/loc/Z;->beC:Lcom/amap/api/location/d;

    iget-object v0, p0, Lcom/loc/Z;->beC:Lcom/amap/api/location/d;

    invoke-virtual {v0}, Lcom/amap/api/location/d;->buZ()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/loc/Z;->bxB(JF)V

    return-void
.end method

.method bxB(JF)V
    .registers 11

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-eqz v6, :cond_16

    :goto_6
    iput-wide p1, p0, Lcom/loc/Z;->e:J

    iget-object v0, p0, Lcom/loc/Z;->beB:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x3e8

    iget-object v5, p0, Lcom/loc/Z;->beD:Landroid/location/LocationListener;

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/loc/Z;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1b} :catch_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_59

    move-result-object v6

    goto :goto_6

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->bcW:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v1, p0, Lcom/loc/Z;->beC:Lcom/amap/api/location/d;

    invoke-virtual {v1}, Lcom/amap/api/location/d;->bvf()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "gps"

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->bux(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->buu(I)V

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/loc/Z;->beA:Landroid/os/Handler;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/loc/Z;->beA:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15

    :catch_59
    move-exception v0

    const-string/jumbo v1, "GPSLocation"

    const-string/jumbo v2, "requestLocationUpdates part2"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

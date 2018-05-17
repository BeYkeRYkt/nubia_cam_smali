.class Lcom/loc/cA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic blB:Lcom/loc/Z;


# direct methods
.method constructor <init>(Lcom/loc/Z;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/cA;->blB:Lcom/loc/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_65

    :try_start_4
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_66

    move v2, v1

    :goto_b
    if-lez v2, :cond_6e

    :cond_d
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v4

    iget-object v3, p0, Lcom/loc/cA;->blB:Lcom/loc/Z;

    iget-wide v6, v3, Lcom/loc/Z;->f:J

    sub-long/2addr v4, v6

    iget-object v3, p0, Lcom/loc/cA;->blB:Lcom/loc/Z;

    iget-wide v6, v3, Lcom/loc/Z;->e:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_79

    :goto_1e
    if-nez v0, :cond_d2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/loc/bx;->bBz(DD)Z

    move-result v0

    if-nez v0, :cond_7b

    :cond_2e
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->buu(I)V

    :goto_45
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->buJ(I)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/loc/cA;->blB:Lcom/loc/Z;

    iget-object v0, v0, Lcom/loc/Z;->beA:Landroid/os/Handler;

    if-nez v0, :cond_b8

    :goto_58
    sget-boolean v0, Lcom/loc/bx;->bhC:Z

    if-eqz v0, :cond_c0

    :goto_5c
    iget-object v0, p0, Lcom/loc/cA;->blB:Lcom/loc/Z;

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/Z;->f:J

    :cond_64
    :goto_64
    return-void

    :cond_65
    return-void

    :cond_66
    const-string/jumbo v3, "satellites"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_b

    :cond_6e
    iget-object v3, p0, Lcom/loc/cA;->blB:Lcom/loc/Z;

    iget-object v3, v3, Lcom/loc/Z;->beC:Lcom/amap/api/location/d;

    invoke-virtual {v3}, Lcom/amap/api/location/d;->buY()Z

    move-result v3

    if-nez v3, :cond_d

    return-void

    :cond_79
    move v0, v1

    goto :goto_1e

    :cond_7b
    iget-object v0, p0, Lcom/loc/cA;->blB:Lcom/loc/Z;

    iget-object v0, v0, Lcom/loc/Z;->beC:Lcom/amap/api/location/d;

    invoke-virtual {v0}, Lcom/amap/api/location/d;->bvk()Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->buu(I)V

    iget-object v1, p0, Lcom/loc/cA;->blB:Lcom/loc/Z;

    iget-object v1, v1, Lcom/loc/Z;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v1, v4, v5, v6, v7}, Lcom/loc/ap;->byn(Landroid/content/Context;DD)Lcom/amap/api/location/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/f;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {v1}, Lcom/amap/api/location/f;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_ac} :catch_ad

    goto :goto_45

    :catch_ad
    move-exception v0

    const-string/jumbo v1, "GPSLocation"

    const-string/jumbo v2, "onLocationChanged"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :cond_b8
    :try_start_b8
    iget-object v0, p0, Lcom/loc/cA;->blB:Lcom/loc/Z;

    iget-object v0, v0, Lcom/loc/Z;->beA:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_58

    :cond_c0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/bx;->bhC:Z

    iget-object v0, p0, Lcom/loc/cA;->blB:Lcom/loc/Z;

    iget-object v0, v0, Lcom/loc/Z;->b:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "ded"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/loc/bA;->bCc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5c

    :cond_d2
    iget-object v0, p0, Lcom/loc/cA;->blB:Lcom/loc/Z;

    iget-object v0, v0, Lcom/loc/Z;->beA:Landroid/os/Handler;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/loc/cA;->blB:Lcom/loc/Z;

    iget-object v0, v0, Lcom/loc/Z;->beA:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_e0} :catch_ad

    goto :goto_64
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    const-string/jumbo v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/loc/cA;->blB:Lcom/loc/Z;

    iget-object v0, v0, Lcom/loc/Z;->beA:Landroid/os/Handler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/loc/cA;->blB:Lcom/loc/Z;

    iget-object v0, v0, Lcom/loc/Z;->beA:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_9

    :catch_19
    move-exception v0

    const-string/jumbo v1, "GPSLocation"

    const-string/jumbo v2, "onProviderDisabled"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7

    if-nez p2, :cond_9

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/loc/cA;->blB:Lcom/loc/Z;

    iget-object v0, v0, Lcom/loc/Z;->beA:Landroid/os/Handler;

    if-nez v0, :cond_d

    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    goto :goto_8

    :cond_d
    iget-object v0, p0, Lcom/loc/cA;->blB:Lcom/loc/Z;

    iget-object v0, v0, Lcom/loc/Z;->beA:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_15} :catch_16

    goto :goto_8

    :catch_16
    move-exception v0

    const-string/jumbo v1, "GPSLocation"

    const-string/jumbo v2, "onStatusChanged"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

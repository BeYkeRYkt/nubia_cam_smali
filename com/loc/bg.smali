.class Lcom/loc/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic bgU:Lcom/loc/af;


# direct methods
.method constructor <init>(Lcom/loc/af;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/bg;->bgU:Lcom/loc/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bAJ(Landroid/location/Location;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    :try_start_4
    const-string/jumbo v1, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_3b} :catch_47

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :catch_47
    move-exception v1

    const-string/jumbo v2, "CollectorManager"

    const-string/jumbo v3, "isValid"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 10

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_26

    const/4 v4, 0x1

    :cond_26
    if-nez v4, :cond_2b

    :goto_28
    if-nez p1, :cond_2d

    :cond_2a
    return-void

    :cond_2b
    move-wide v0, v2

    goto :goto_28

    :cond_2d
    invoke-direct {p0, p1}, Lcom/loc/bg;->bAJ(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {}, Lcom/loc/af;->i()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_69

    invoke-static {}, Lcom/loc/af;->j()I

    move-result v2

    invoke-static {v2}, Lcom/loc/cm;->a(I)V

    invoke-static {}, Lcom/loc/af;->j()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Lcom/loc/cm;->bFO(I)V

    :goto_50
    iget-object v2, p0, Lcom/loc/bg;->bgU:Lcom/loc/af;

    invoke-static {v2}, Lcom/loc/af;->bxR(Lcom/loc/af;)Lcom/loc/bW;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loc/bW;->a()Z

    invoke-direct {p0, p1}, Lcom/loc/bg;->bAJ(Landroid/location/Location;)Z

    iget-object v2, p0, Lcom/loc/bg;->bgU:Lcom/loc/af;

    invoke-static {v2}, Lcom/loc/af;->bxR(Lcom/loc/af;)Lcom/loc/bW;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loc/bW;->a()Z

    move-result v2

    if-nez v2, :cond_a3

    :cond_68
    :goto_68
    return-void

    :cond_69
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {}, Lcom/loc/af;->k()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_92

    invoke-static {}, Lcom/loc/af;->l()I

    move-result v2

    invoke-static {v2}, Lcom/loc/cm;->a(I)V

    invoke-static {}, Lcom/loc/af;->l()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Lcom/loc/cm;->bFO(I)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_86} :catch_87

    goto :goto_50

    :catch_87
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "onLocationChanged"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    :cond_92
    :try_start_92
    invoke-static {}, Lcom/loc/af;->m()I

    move-result v2

    invoke-static {v2}, Lcom/loc/cm;->a(I)V

    invoke-static {}, Lcom/loc/af;->m()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Lcom/loc/cm;->bFO(I)V

    goto :goto_50

    :cond_a3
    invoke-direct {p0, p1}, Lcom/loc/bg;->bAJ(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/location/Location;->setTime(J)V

    iget-object v2, p0, Lcom/loc/bg;->bgU:Lcom/loc/af;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, v0, v1}, Lcom/loc/af;->bxS(Lcom/loc/af;Landroid/location/Location;IJ)V
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_b6} :catch_87

    goto :goto_68
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

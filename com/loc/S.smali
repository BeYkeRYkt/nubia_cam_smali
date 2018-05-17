.class Lcom/loc/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/GpsStatus$NmeaListener;


# instance fields
.field a:J

.field final synthetic ben:Lcom/loc/af;


# direct methods
.method protected constructor <init>(Lcom/loc/af;)V
    .registers 4

    iput-object p1, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/S;->a:J

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .registers 9

    const/4 v6, 0x4

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    invoke-static {v1}, Lcom/loc/af;->bxV(Lcom/loc/af;)Landroid/location/LocationManager;

    move-result-object v1

    if-eqz v1, :cond_e

    packed-switch p1, :pswitch_data_f4

    :cond_d
    :goto_d
    :pswitch_d
    return-void

    :cond_e
    return-void

    :pswitch_f
    sget-boolean v1, Lcom/loc/af;->a:Z

    if-eqz v1, :cond_80

    :cond_13
    iget-object v1, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    invoke-static {v1}, Lcom/loc/af;->bxX(Lcom/loc/af;)Landroid/location/GpsStatus;

    move-result-object v1

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    invoke-static {v1}, Lcom/loc/af;->bxV(Lcom/loc/af;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    invoke-static {v2}, Lcom/loc/af;->bxX(Lcom/loc/af;)Landroid/location/GpsStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    :goto_2a
    iget-object v1, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    invoke-static {v1}, Lcom/loc/af;->bxX(Lcom/loc/af;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    move v1, v0

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a4

    iget-object v0, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->bxZ(Lcom/loc/af;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_b8

    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    invoke-static {v0, v1}, Lcom/loc/af;->bya(Lcom/loc/af;I)I

    if-lt v1, v6, :cond_cf

    iget-object v0, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->byb(Lcom/loc/af;)Lcom/loc/at;

    move-result-object v0

    if-nez v0, :cond_e2

    :cond_58
    :goto_58
    sget-boolean v0, Lcom/loc/af;->a:Z

    if-nez v0, :cond_ed

    const/4 v0, 0x3

    if-le v1, v0, :cond_ee

    :cond_5f
    iget-object v0, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->bxV(Lcom/loc/af;)Landroid/location/LocationManager;

    move-result-object v0

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/S;->a:J
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_74} :catch_75

    goto :goto_d

    :catch_75
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "onGpsStatusChanged"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_80
    :try_start_80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/S;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-ltz v1, :cond_91

    const/4 v1, 0x1

    :goto_8e
    if-nez v1, :cond_13

    return-void

    :cond_91
    move v1, v0

    goto :goto_8e

    :cond_93
    iget-object v1, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    iget-object v2, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    invoke-static {v2}, Lcom/loc/af;->bxV(Lcom/loc/af;)Landroid/location/LocationManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loc/af;->bxY(Lcom/loc/af;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    goto :goto_2a

    :cond_a4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-nez v0, :cond_b5

    move v0, v1

    :goto_b3
    move v1, v0

    goto :goto_3a

    :cond_b5
    add-int/lit8 v0, v1, 0x1

    goto :goto_b3

    :cond_b8
    if-ge v1, v6, :cond_c5

    :cond_ba
    if-ge v1, v6, :cond_58

    iget-object v0, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->bxZ(Lcom/loc/af;)I

    move-result v0

    if-ge v0, v6, :cond_49

    goto :goto_58

    :cond_c5
    iget-object v0, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->bxZ(Lcom/loc/af;)I

    move-result v0

    if-ge v0, v6, :cond_ba

    goto/16 :goto_49

    :cond_cf
    iget-object v0, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->byb(Lcom/loc/af;)Lcom/loc/at;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->byb(Lcom/loc/af;)Lcom/loc/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/at;->byx()V

    goto/16 :goto_58

    :cond_e2
    iget-object v0, p0, Lcom/loc/S;->ben:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->byb(Lcom/loc/af;)Lcom/loc/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/at;->byw()V
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_eb} :catch_75

    goto/16 :goto_58

    :cond_ed
    return-void

    :cond_ee
    const/16 v0, 0xf

    if-gt v2, v0, :cond_5f

    goto/16 :goto_d

    :pswitch_data_f4
    .packed-switch 0x2
        :pswitch_d
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .registers 4

    return-void
.end method

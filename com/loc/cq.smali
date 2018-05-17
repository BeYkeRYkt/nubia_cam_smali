.class Lcom/loc/cq;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field final synthetic bkP:Lcom/loc/at;


# direct methods
.method private constructor <init>(Lcom/loc/at;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/cq;->bkP:Lcom/loc/at;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/at;Lcom/loc/bM;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/loc/cq;-><init>(Lcom/loc/at;)V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/loc/cq;->bkP:Lcom/loc/at;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/loc/at;->bza(Lcom/loc/at;J)J

    iget-object v0, p0, Lcom/loc/cq;->bkP:Lcom/loc/at;

    invoke-static {v0, p1}, Lcom/loc/at;->bzb(Lcom/loc/at;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_a

    :goto_6
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/loc/cq;->bkP:Lcom/loc/at;

    invoke-static {v0}, Lcom/loc/at;->byX(Lcom/loc/at;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/X;->bxd(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cq;->bkP:Lcom/loc/at;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/loc/at;->byY(Lcom/loc/at;I)I

    iget-object v1, p0, Lcom/loc/cq;->bkP:Lcom/loc/at;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/loc/at;->byZ(Lcom/loc/at;I)I
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_6

    :catch_2d
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "onServiceStateChanged"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/loc/cq;->bkP:Lcom/loc/at;

    invoke-static {v0}, Lcom/loc/at;->bzc(Lcom/loc/at;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/loc/cq;->bkP:Lcom/loc/at;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    invoke-static {v0, v1}, Lcom/loc/at;->bzd(Lcom/loc/at;I)I

    iget-object v0, p0, Lcom/loc/cq;->bkP:Lcom/loc/at;

    invoke-static {v0}, Lcom/loc/at;->bze(Lcom/loc/at;)I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_43

    iget-object v0, p0, Lcom/loc/cq;->bkP:Lcom/loc/at;

    iget-object v1, p0, Lcom/loc/cq;->bkP:Lcom/loc/at;

    invoke-static {v1}, Lcom/loc/at;->bze(Lcom/loc/at;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x71

    invoke-static {v0, v1}, Lcom/loc/at;->bzd(Lcom/loc/at;I)I

    :goto_2a
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/loc/cq;->bkP:Lcom/loc/at;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    invoke-static {v0, v1}, Lcom/loc/at;->bzd(Lcom/loc/at;I)I
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_2a

    :catch_38
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "onSignalStrengthsChanged"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_43
    :try_start_43
    iget-object v0, p0, Lcom/loc/cq;->bkP:Lcom/loc/at;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/loc/at;->bzd(Lcom/loc/at;I)I
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_49} :catch_38

    goto :goto_2a
.end method

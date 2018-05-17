.class Lcom/loc/cp;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field final synthetic bkO:Lcom/loc/aI;


# direct methods
.method constructor <init>(Lcom/loc/aI;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-virtual {v0, p1}, Lcom/loc/aI;->bzw(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-static {v0, p1}, Lcom/loc/aI;->bzO(Lcom/loc/aI;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;

    iget-object v0, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-static {v0}, Lcom/loc/aI;->bzP(Lcom/loc/aI;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    if-nez v0, :cond_17

    :goto_15
    return-void

    :cond_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-static {v0}, Lcom/loc/aI;->bzP(Lcom/loc/aI;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_15

    :catch_21
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "initPhoneStateListener7"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    :goto_7
    iget-object v0, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-static {v0}, Lcom/loc/aI;->bzP(Lcom/loc/aI;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    if-nez v0, :cond_27

    :goto_f
    return-void

    :pswitch_10
    iget-object v0, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-static {v0}, Lcom/loc/aI;->bzS(Lcom/loc/aI;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_7

    :catch_16
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "initPhoneStateListener4"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :pswitch_21
    :try_start_21
    iget-object v0, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-static {v0}, Lcom/loc/aI;->bzT(Lcom/loc/aI;)V

    goto :goto_7

    :cond_27
    iget-object v0, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-static {v0}, Lcom/loc/aI;->bzP(Lcom/loc/aI;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_30} :catch_16

    goto :goto_f

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_21
        :pswitch_10
    .end packed-switch
.end method

.method public onSignalStrengthChanged(I)V
    .registers 5

    const/16 v0, -0x71

    :try_start_2
    iget-object v1, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-static {v1}, Lcom/loc/aI;->bzQ(Lcom/loc/aI;)I

    move-result v1

    packed-switch v1, :pswitch_data_38

    :goto_b
    iget-object v1, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-static {v1, v0}, Lcom/loc/aI;->bzR(Lcom/loc/aI;I)V

    iget-object v0, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-static {v0}, Lcom/loc/aI;->bzP(Lcom/loc/aI;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    if-nez v0, :cond_23

    :goto_18
    return-void

    :pswitch_19
    invoke-static {p1}, Lcom/loc/X;->a(I)I

    move-result v0

    goto :goto_b

    :pswitch_1e
    invoke-static {p1}, Lcom/loc/X;->a(I)I

    move-result v0

    goto :goto_b

    :cond_23
    iget-object v0, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-static {v0}, Lcom/loc/aI;->bzP(Lcom/loc/aI;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2c} :catch_2d

    goto :goto_18

    :catch_2d
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "initPhoneStateListener6"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1e
    .end packed-switch
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 5

    if-eqz p1, :cond_1b

    const/16 v0, -0x71

    :try_start_4
    iget-object v1, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-static {v1}, Lcom/loc/aI;->bzQ(Lcom/loc/aI;)I

    move-result v1

    packed-switch v1, :pswitch_data_40

    :goto_d
    iget-object v1, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-static {v1, v0}, Lcom/loc/aI;->bzR(Lcom/loc/aI;I)V

    iget-object v0, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-static {v0}, Lcom/loc/aI;->bzP(Lcom/loc/aI;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    if-nez v0, :cond_2a

    :goto_1a
    return-void

    :cond_1b
    return-void

    :pswitch_1c
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    invoke-static {v0}, Lcom/loc/X;->a(I)I

    move-result v0

    goto :goto_d

    :pswitch_25
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    goto :goto_d

    :cond_2a
    iget-object v0, p0, Lcom/loc/cp;->bkO:Lcom/loc/aI;

    invoke-static {v0}, Lcom/loc/aI;->bzP(Lcom/loc/aI;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_33} :catch_34

    goto :goto_1a

    :catch_34
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "initPhoneStateListener5"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_25
    .end packed-switch
.end method

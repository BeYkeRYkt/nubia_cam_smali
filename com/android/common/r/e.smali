.class Lcom/android/common/r/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field afX:Landroid/location/Location;

.field afY:Ljava/lang/String;

.field afZ:Z

.field final synthetic aga:Lcom/android/common/r/d;


# direct methods
.method public constructor <init>(Lcom/android/common/r/d;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/common/r/e;->aga:Lcom/android/common/r/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/r/e;->afZ:Z

    .line 127
    iput-object p2, p0, Lcom/android/common/r/e;->afY:Ljava/lang/String;

    .line 128
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/android/common/r/e;->afY:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/common/r/e;->afX:Landroid/location/Location;

    .line 126
    return-void
.end method


# virtual methods
.method public ano()Landroid/location/Location;
    .registers 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/common/r/e;->afZ:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/common/r/e;->afX:Landroid/location/Location;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 133
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    .line 134
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    .line 136
    return-void

    .line 140
    :cond_13
    iget-object v0, p0, Lcom/android/common/r/e;->aga:Lcom/android/common/r/d;

    invoke-static {v0}, Lcom/android/common/r/d;->ann(Lcom/android/common/r/d;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 141
    const-string/jumbo v0, "gps"

    iget-object v1, p0, Lcom/android/common/r/e;->afY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 140
    if-eqz v0, :cond_26

    .line 143
    :cond_26
    iget-boolean v0, p0, Lcom/android/common/r/e;->afZ:Z

    if-nez v0, :cond_33

    .line 144
    const-string/jumbo v0, "NubiaLocationManager"

    const-string/jumbo v1, "Got first location."

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_33
    iget-object v0, p0, Lcom/android/common/r/e;->afX:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/r/e;->afZ:Z

    .line 132
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/r/e;->afZ:Z

    .line 155
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 151
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 162
    packed-switch p2, :pswitch_data_1a

    .line 161
    :cond_3
    :goto_3
    return-void

    .line 165
    :pswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/r/e;->afZ:Z

    .line 166
    iget-object v0, p0, Lcom/android/common/r/e;->aga:Lcom/android/common/r/d;

    invoke-static {v0}, Lcom/android/common/r/d;->ann(Lcom/android/common/r/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    const-string/jumbo v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 166
    if-eqz v0, :cond_3

    goto :goto_3

    .line 162
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

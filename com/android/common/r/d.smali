.class public Lcom/android/common/r/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/r/a;


# instance fields
.field private afT:Landroid/content/Context;

.field afU:[Lcom/android/common/r/e;

.field private afV:Landroid/location/LocationManager;

.field private afW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v3, p0, Lcom/android/common/r/d;->afW:Z

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/common/r/e;

    .line 37
    new-instance v1, Lcom/android/common/r/e;

    const-string/jumbo v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/android/common/r/e;-><init>(Lcom/android/common/r/d;Ljava/lang/String;)V

    aput-object v1, v0, v3

    .line 38
    new-instance v1, Lcom/android/common/r/e;

    const-string/jumbo v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/android/common/r/e;-><init>(Lcom/android/common/r/d;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 36
    iput-object v0, p0, Lcom/android/common/r/d;->afU:[Lcom/android/common/r/e;

    .line 42
    iput-object p1, p0, Lcom/android/common/r/d;->afT:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private anl()V
    .registers 7

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/common/r/d;->afV:Landroid/location/LocationManager;

    if-nez v0, :cond_11

    .line 78
    iget-object v0, p0, Lcom/android/common/r/d;->afT:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/common/r/d;->afV:Landroid/location/LocationManager;

    .line 80
    :cond_11
    iget-object v0, p0, Lcom/android/common/r/d;->afV:Landroid/location/LocationManager;

    if-eqz v0, :cond_3e

    .line 82
    :try_start_15
    iget-object v0, p0, Lcom/android/common/r/d;->afV:Landroid/location/LocationManager;

    .line 83
    const-string/jumbo v1, "network"

    .line 84
    const-wide/16 v2, 0x3e8

    .line 86
    iget-object v4, p0, Lcom/android/common/r/d;->afU:[Lcom/android/common/r/e;

    const/4 v5, 0x1

    aget-object v5, v4, v5

    .line 85
    const/4 v4, 0x0

    .line 82
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_25} :catch_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_25} :catch_3f

    .line 93
    :goto_25
    :try_start_25
    iget-object v0, p0, Lcom/android/common/r/d;->afV:Landroid/location/LocationManager;

    .line 94
    const-string/jumbo v1, "gps"

    .line 95
    const-wide/16 v2, 0x3e8

    .line 97
    iget-object v4, p0, Lcom/android/common/r/d;->afU:[Lcom/android/common/r/e;

    const/4 v5, 0x0

    aget-object v5, v4, v5

    .line 96
    const/4 v4, 0x0

    .line 93
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_35} :catch_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_35} :catch_6a

    .line 103
    :goto_35
    const-string/jumbo v0, "NubiaLocationManager"

    const-string/jumbo v1, "startReceivingLocationUpdates"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_3e
    return-void

    .line 89
    :catch_3f
    move-exception v0

    .line 90
    const-string/jumbo v1, "NubiaLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider does not exist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 87
    :catch_5f
    move-exception v0

    .line 88
    const-string/jumbo v1, "NubiaLocationManager"

    const-string/jumbo v2, "fail to request location update, ignore"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    .line 100
    :catch_6a
    move-exception v0

    .line 101
    const-string/jumbo v1, "NubiaLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider does not exist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 98
    :catch_8a
    move-exception v0

    .line 99
    const-string/jumbo v1, "NubiaLocationManager"

    const-string/jumbo v2, "fail to request location update, ignore"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35
.end method

.method private anm()V
    .registers 5

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/common/r/d;->afV:Landroid/location/LocationManager;

    if-eqz v0, :cond_2a

    .line 109
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/android/common/r/d;->afU:[Lcom/android/common/r/e;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 111
    :try_start_a
    iget-object v1, p0, Lcom/android/common/r/d;->afV:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/common/r/d;->afU:[Lcom/android/common/r/e;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_16

    .line 109
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 112
    :catch_16
    move-exception v1

    .line 113
    const-string/jumbo v2, "NubiaLocationManager"

    const-string/jumbo v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v1}, Lcom/a/a;->bvu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 116
    :cond_21
    const-string/jumbo v0, "NubiaLocationManager"

    const-string/jumbo v1, "stopReceivingLocationUpdates"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_2a
    return-void
.end method

.method static synthetic ann(Lcom/android/common/r/d;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/r/d;->afW:Z

    return v0
.end method


# virtual methods
.method public ane()Landroid/location/Location;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-boolean v0, p0, Lcom/android/common/r/d;->afW:Z

    if-nez v0, :cond_6

    return-object v2

    .line 56
    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/android/common/r/d;->afU:[Lcom/android/common/r/e;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 57
    iget-object v1, p0, Lcom/android/common/r/d;->afU:[Lcom/android/common/r/e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/common/r/e;->ano()Landroid/location/Location;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_17

    return-object v1

    .line 56
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 60
    :cond_1a
    const-string/jumbo v0, "NubiaLocationManager"

    const-string/jumbo v1, "No location received yet."

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-object v2
.end method

.method public anf(Z)V
    .registers 3

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/common/r/d;->afW:Z

    if-eq v0, p1, :cond_b

    .line 66
    iput-boolean p1, p0, Lcom/android/common/r/d;->afW:Z

    .line 67
    if-eqz p1, :cond_c

    .line 68
    invoke-direct {p0}, Lcom/android/common/r/d;->anl()V

    .line 64
    :cond_b
    :goto_b
    return-void

    .line 70
    :cond_c
    invoke-direct {p0}, Lcom/android/common/r/d;->anm()V

    goto :goto_b
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 47
    iput-object v2, p0, Lcom/android/common/r/d;->afT:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/android/common/r/d;->afU:[Lcom/android/common/r/e;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 49
    iget-object v0, p0, Lcom/android/common/r/d;->afU:[Lcom/android/common/r/e;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 46
    return-void
.end method

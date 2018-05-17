.class public Lcom/loc/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J

.field private bdw:Landroid/net/wifi/WifiManager;

.field private bdx:Lorg/json/JSONObject;

.field private bdy:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lorg/json/JSONObject;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/r;->a:J

    iput-object p2, p0, Lcom/loc/r;->bdw:Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/loc/r;->bdx:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/loc/r;->bdy:Landroid/content/Context;

    return-void
.end method

.method private bwj(Landroid/net/wifi/WifiInfo;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_6

    :cond_4
    move v0, v1

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/loc/r;->bdw:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_6

    return-object v3

    :cond_6
    iget-object v0, p0, Lcom/loc/r;->bdw:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_d

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v0

    const-string/jumbo v1, "WifiManagerWrapper"

    const-string/jumbo v2, "getScanResults"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public a(Z)V
    .registers 9

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/loc/r;->bdy:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/r;->bdw:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_a

    :cond_9
    return-void

    :cond_a
    if-eqz v1, :cond_9

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/loc/X;->c()I

    move-result v0

    const/16 v2, 0x11

    if-le v0, v2, :cond_4b

    const-string/jumbo v0, "autoenablewifialwaysscan"

    iget-object v2, p0, Lcom/loc/r;->bdx:Lorg/json/JSONObject;

    invoke-static {v2, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    :cond_21
    :goto_21
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android.provider.Settings$Global"

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v5

    const-string/jumbo v3, "wifi_scan_always_enabled"

    aput-object v3, v0, v6

    new-array v3, v4, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    :try_start_3b
    const-string/jumbo v4, "getInt"

    invoke-static {v2, v4, v0, v3}, Lcom/loc/br;->bBj(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_47} :catch_94

    move-result v0

    if-eqz v0, :cond_67

    :goto_4a
    return-void

    :cond_4b
    return-void

    :cond_4c
    :try_start_4c
    const-string/jumbo v2, "0"

    iget-object v3, p0, Lcom/loc/r;->bdx:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_58} :catch_5c

    move-result v0

    if-eqz v0, :cond_21

    return-void

    :catch_5c
    move-exception v0

    const-string/jumbo v2, "WifiManagerWrapper"

    const-string/jumbo v3, "enableWifiAlwaysScan1"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_67
    const/4 v0, 0x3

    :try_start_68
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v3, "wifi_scan_always_enabled"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v3

    const-string/jumbo v3, "putInt"

    invoke-static {v2, v3, v0, v1}, Lcom/loc/br;->bBj(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_93} :catch_94

    goto :goto_4a

    :catch_94
    move-exception v0

    const-string/jumbo v1, "WifiManagerWrapper"

    const-string/jumbo v2, "enableWifiAlwaysScan"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a
.end method

.method public b()Landroid/net/wifi/WifiInfo;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/r;->bdw:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/loc/r;->bdw:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public bwh(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/r;->bdx:Lorg/json/JSONObject;

    return-void
.end method

.method public bwi(Landroid/net/ConnectivityManager;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/loc/r;->bdw:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/loc/r;->f()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    :goto_c
    return v0

    :cond_d
    return v0

    :cond_e
    :try_start_e
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/bu;->bBn(Landroid/net/NetworkInfo;)I

    move-result v3

    if-ne v3, v1, :cond_c

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/loc/r;->bwj(Landroid/net/wifi/WifiInfo;)Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1f} :catch_24

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_c

    :catch_24
    move-exception v1

    const-string/jumbo v2, "WifiManagerWrapper"

    const-string/jumbo v3, "wifiAccess"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lcom/loc/r;->bdw:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_6

    const/4 v0, 0x4

    return v0

    :cond_6
    iget-object v0, p0, Lcom/loc/r;->bdw:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 7

    const/4 v1, 0x0

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/r;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_12

    const/4 v0, 0x1

    :goto_f
    if-nez v0, :cond_14

    return v1

    :cond_12
    move v0, v1

    goto :goto_f

    :cond_14
    iget-object v0, p0, Lcom/loc/r;->bdw:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_19

    return v1

    :cond_19
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/r;->a:J

    iget-object v0, p0, Lcom/loc/r;->bdw:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/loc/r;->bdw:Landroid/net/wifi/WifiManager;

    const-string/jumbo v1, "startScanActive"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/loc/br;->bBh(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_17} :catch_1d

    move-result v0

    if-nez v0, :cond_1b

    :goto_1a
    return v3

    :cond_1b
    const/4 v0, 0x1

    return v0

    :catch_1d
    move-exception v0

    const-string/jumbo v1, "WifiManagerWrapper"

    const-string/jumbo v2, "startScanActive"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public f()Z
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/r;->bdw:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_d

    :try_start_5
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_e

    move-result v1

    :goto_9
    if-eqz v1, :cond_19

    :cond_b
    :goto_b
    move v0, v1

    :goto_c
    return v0

    :cond_d
    return v1

    :catch_e
    move-exception v2

    const-string/jumbo v3, "WifiManagerWrapper"

    const-string/jumbo v4, "wifiEnabled1"

    invoke-static {v2, v3, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_19
    invoke-static {}, Lcom/loc/X;->c()I

    move-result v2

    const/16 v3, 0x11

    if-le v2, v3, :cond_b

    :try_start_21
    const-string/jumbo v2, "isScanAlwaysAvailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/loc/br;->bBh(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_35} :catch_37

    move-result v0

    goto :goto_c

    :catch_37
    move-exception v0

    const-string/jumbo v2, "WifiManagerWrapper"

    const-string/jumbo v3, "wifiEnabled"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

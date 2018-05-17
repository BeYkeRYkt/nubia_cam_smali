.class public Lcom/loc/cn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/cn;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/cn;->b:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/cn;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/cn;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/cn;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/cn;->f:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/loc/cn;->bGe(Landroid/content/Context;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v0, ""

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/loc/cn;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .registers 7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_6
    add-int/lit8 v0, v3, -0x1

    if-lt v2, v0, :cond_b

    return-object p0

    :cond_b
    const/4 v0, 0x1

    move v1, v0

    :goto_d
    sub-int v0, v3, v2

    if-lt v1, v0, :cond_15

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_15
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v4, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-gt v4, v0, :cond_2d

    :goto_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_2d
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_29
.end method

.method public static a()V
    .registers 5

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-gt v0, v1, :cond_7

    :goto_6
    return-void

    :cond_7
    const-class v0, Landroid/net/TrafficStats;

    const-string/jumbo v1, "setThreadStatsTag"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xa004

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_6

    :catch_2a
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "setTraficTag"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/loc/cn;->b:Z

    return p0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, ""

    :try_start_3
    invoke-static {p0}, Lcom/loc/cn;->bGh(Landroid/content/Context;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v0

    return-object v0

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method static synthetic b()Z
    .registers 1

    sget-boolean v0, Lcom/loc/cn;->b:Z

    return v0
.end method

.method static bFR(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_d

    :cond_8
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/loc/cn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_22} :catch_63

    move-result v1

    if-nez v1, :cond_2a

    :cond_25
    :goto_25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    :try_start_2a
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_35

    :cond_30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {v0}, Lcom/loc/cn;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const/4 v1, 0x1

    move v3, v2

    :goto_41
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_25

    const/4 v0, 0x7

    if-ge v3, v0, :cond_25

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    if-nez v1, :cond_61

    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_58
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_5d} :catch_63

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_41

    :cond_61
    move v1, v2

    goto :goto_58

    :catch_63
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getWifiMacs"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method public static bFS(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/loc/cn;->c:Ljava/lang/String;

    if-nez v0, :cond_23

    :cond_4
    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/loc/cn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/cn;->c:Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_34

    :goto_20
    sget-object v0, Lcom/loc/cn;->c:Ljava/lang/String;

    return-object v0

    :cond_23
    :try_start_23
    const-string/jumbo v0, ""

    sget-object v1, Lcom/loc/cn;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/loc/cn;->c:Ljava/lang/String;

    return-object v0

    :cond_31
    sget-object v0, Lcom/loc/cn;->c:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_33} :catch_34

    return-object v0

    :catch_34
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getDeviceMac"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

.method static bFT(Landroid/content/Context;)[Ljava/lang/String;
    .registers 10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_3
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/loc/cn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_c
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    return-object v0

    :cond_1c
    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/loc/cn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v1, :cond_47

    instance-of v1, v0, Landroid/telephony/cdma/CdmaCellLocation;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_38} :catch_bb

    if-nez v1, :cond_76

    :goto_3a
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v6

    const-string/jumbo v1, ""

    aput-object v1, v0, v7

    return-object v0

    :cond_47
    :try_start_47
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "||"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string/jumbo v1, "gsm"

    aput-object v1, v2, v0

    return-object v2

    :cond_76
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    if-gez v1, :cond_b6

    :cond_86
    :goto_86
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "||"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string/jumbo v1, "cdma"

    aput-object v1, v3, v0
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_b5} :catch_bb

    return-object v3

    :cond_b6
    if-ltz v2, :cond_86

    if-ltz v0, :cond_86

    goto :goto_86

    :catch_bb
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "cellInfo"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3a
.end method

.method static bFU(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x3

    const-string/jumbo v1, ""

    :try_start_4
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/loc/cn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {p0}, Lcom/loc/cn;->bGj(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_1b
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    return-object v1

    :cond_22
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_25} :catch_29

    move-result v2

    if-ge v2, v3, :cond_1b

    return-object v1

    :catch_29
    move-exception v0

    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "getMNC"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_20
.end method

.method public static bFV(Landroid/content/Context;)I
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/loc/cn;->bGi(Landroid/content/Context;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    return v0

    :catch_5
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getNetWorkType"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public static bFW(Landroid/content/Context;)I
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/loc/cn;->bGf(Landroid/content/Context;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    return v0

    :catch_5
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getActiveNetWorkType"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public static bFX(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 3

    const/4 v1, 0x0

    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/loc/cn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p0}, Lcom/loc/cn;->bGg(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0

    :cond_15
    return-object v1

    :cond_16
    return-object v1
.end method

.method static bFY(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/loc/cn;->bFX(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_d

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    return-object v1

    :catch_d
    move-exception v0

    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "getNetworkExtraInfo"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_b
.end method

.method static bFZ(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/loc/cn;->d:Ljava/lang/String;

    if-nez v0, :cond_3c

    :cond_4
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v1, v0, :cond_4a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_37
    sput-object v0, Lcom/loc/cn;->d:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_39} :catch_63

    :goto_39
    sget-object v0, Lcom/loc/cn;->d:Ljava/lang/String;

    return-object v0

    :cond_3c
    :try_start_3c
    const-string/jumbo v0, ""

    sget-object v1, Lcom/loc/cn;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/loc/cn;->d:Ljava/lang/String;

    return-object v0

    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_61} :catch_63

    move-result-object v0

    goto :goto_37

    :catch_63
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getReslution"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method

.method public static bGa(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/loc/cn;->e:Ljava/lang/String;

    if-nez v0, :cond_1e

    :cond_4
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/loc/cn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p0}, Lcom/loc/cn;->bGj(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/cn;->e:Ljava/lang/String;

    sget-object v0, Lcom/loc/cn;->e:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_35

    if-eqz v0, :cond_2f

    :goto_1b
    sget-object v0, Lcom/loc/cn;->e:Ljava/lang/String;

    return-object v0

    :cond_1e
    :try_start_1e
    const-string/jumbo v0, ""

    sget-object v1, Lcom/loc/cn;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/loc/cn;->e:Ljava/lang/String;

    return-object v0

    :cond_2c
    sget-object v0, Lcom/loc/cn;->e:Ljava/lang/String;

    return-object v0

    :cond_2f
    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/cn;->e:Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_34} :catch_35

    goto :goto_1b

    :catch_35
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getDeviceID"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public static bGb(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, ""

    :try_start_3
    invoke-static {p0}, Lcom/loc/cn;->bGd(Landroid/content/Context;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v0

    return-object v0

    :catch_8
    move-exception v1

    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "getSubscriberId"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static bGc(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/loc/cn;->bGe(Landroid/content/Context;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getNetworkOperatorName"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    return-object v0
.end method

.method private static bGd(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/loc/cn;->f:Ljava/lang/String;

    if-nez v0, :cond_1e

    :cond_4
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/loc/cn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p0}, Lcom/loc/cn;->bGj(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/cn;->f:Ljava/lang/String;

    sget-object v0, Lcom/loc/cn;->f:Ljava/lang/String;

    if-eqz v0, :cond_2f

    :goto_1b
    sget-object v0, Lcom/loc/cn;->f:Ljava/lang/String;

    return-object v0

    :cond_1e
    const-string/jumbo v0, ""

    sget-object v1, Lcom/loc/cn;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/loc/cn;->f:Ljava/lang/String;

    return-object v0

    :cond_2c
    sget-object v0, Lcom/loc/cn;->f:Ljava/lang/String;

    return-object v0

    :cond_2f
    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/cn;->f:Ljava/lang/String;

    goto :goto_1b
.end method

.method private static bGe(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/loc/cn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0}, Lcom/loc/cn;->bGj(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    return-object v0

    :cond_1a
    invoke-static {p0}, Lcom/loc/cn;->bGj(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method private static bGf(Landroid/content/Context;)I
    .registers 3

    const/4 v1, -0x1

    if-nez p0, :cond_4

    :cond_3
    return v1

    :cond_4
    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/loc/cn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/loc/cn;->bGg(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0

    :cond_1e
    return v1

    :cond_1f
    return v1
.end method

.method private static bGg(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private static bGh(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x5

    const-string/jumbo v0, ""

    invoke-static {p0}, Lcom/loc/cn;->bGb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_a
    return-object v0

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_a

    const/4 v0, 0x3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bGi(Landroid/content/Context;)I
    .registers 2

    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/loc/cn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/loc/cn;->bGj(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0

    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method private static bGj(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static c(Landroid/content/Context;)I
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/loc/cn;->bGi(Landroid/content/Context;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    return v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method static d(Landroid/content/Context;)I
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/loc/cn;->bGf(Landroid/content/Context;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    return v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/loc/cn;->bGd(Landroid/content/Context;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/loc/cn;->a:Ljava/lang/String;

    if-nez v0, :cond_21

    :cond_4
    const-string/jumbo v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p0, v0}, Lcom/loc/cn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    :goto_d
    sget-object v0, Lcom/loc/cn;->a:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_3d

    if-nez v0, :cond_48

    :cond_11
    :goto_11
    :try_start_11
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1b} :catch_8e

    move-result v0

    if-nez v0, :cond_56

    :cond_1e
    :goto_1e
    sget-object v0, Lcom/loc/cn;->a:Ljava/lang/String;

    return-object v0

    :cond_21
    :try_start_21
    const-string/jumbo v0, ""

    sget-object v1, Lcom/loc/cn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/loc/cn;->a:Ljava/lang/String;

    return-object v0

    :cond_2f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/cn;->a:Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_3c} :catch_3d

    goto :goto_d

    :catch_3d
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getUTDID"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_48
    :try_start_48
    const-string/jumbo v0, ""

    sget-object v1, Lcom/loc/cn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/loc/cn;->a:Ljava/lang/String;
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_55} :catch_3d

    return-object v0

    :cond_56
    :try_start_56
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/.UTSystemConfig/Global/Alvin2.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    new-instance v2, Lcom/loc/bT;

    invoke-direct {v2}, Lcom/loc/bT;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_8d} :catch_8e

    goto :goto_1e

    :catch_8e
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getUTDID"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    return-object v1

    :cond_4
    :try_start_4
    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/loc/cn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1e

    :goto_1c
    move-object v0, v1

    :goto_1d
    return-object v0

    :cond_1e
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_25} :catch_27

    move-result-object v0

    goto :goto_1d

    :catch_27
    move-exception v0

    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "getWifiMacs"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

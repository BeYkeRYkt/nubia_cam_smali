.class public Lcom/loc/at;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field private static bfB:Lcom/loc/at;

.field private static bfJ:I

.field protected static bfK:Z

.field protected static final bfP:[Ljava/lang/String;

.field private static bfs:Landroid/location/LocationManager;

.field static c:Ljava/lang/String;

.field protected static d:Z


# instance fields
.field private bfA:J

.field private bfC:Lcom/loc/cq;

.field private bfD:Lcom/loc/cF;

.field private bfE:Landroid/telephony/CellLocation;

.field private bfF:J

.field private bfG:Ljava/util/List;

.field private bfH:Ljava/util/Timer;

.field private bfI:Landroid/os/HandlerThread;

.field bfL:Ljava/lang/Object;

.field bfM:Z

.field bfN:Lcom/loc/r;

.field bfO:Lcom/loc/aI;

.field private bfq:Landroid/content/Context;

.field private bfr:Landroid/telephony/TelephonyManager;

.field private bft:Landroid/hardware/SensorManager;

.field private bfu:Z

.field private bfv:I

.field private bfw:J

.field private bfx:I

.field private bfy:I

.field private bfz:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-object v0, Lcom/loc/at;->bfs:Landroid/location/LocationManager;

    sput-object v0, Lcom/loc/at;->bfB:Lcom/loc/at;

    const/16 v0, 0x2710

    sput v0, Lcom/loc/at;->bfJ:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/at;->a:Ljava/lang/String;

    const-string/jumbo v0, "log.txt"

    sput-object v0, Lcom/loc/at;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/at;->c:Ljava/lang/String;

    sput-boolean v3, Lcom/loc/at;->d:Z

    sput-boolean v2, Lcom/loc/at;->bfK:Z

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "android.permission.CHANGE_WIFI_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/loc/at;->bfP:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/loc/r;Lcom/loc/aI;)V
    .registers 12

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/loc/at;->bfq:Landroid/content/Context;

    iput-object v3, p0, Lcom/loc/at;->bfr:Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/at;->o:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/loc/at;->bfu:Z

    iput v1, p0, Lcom/loc/at;->bfv:I

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/loc/at;->bfw:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/at;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/at;->t:Ljava/lang/String;

    iput v1, p0, Lcom/loc/at;->u:I

    iput v1, p0, Lcom/loc/at;->bfx:I

    iput v1, p0, Lcom/loc/at;->bfy:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/at;->bfz:Ljava/lang/String;

    iput-wide v6, p0, Lcom/loc/at;->bfA:J

    iput-object v3, p0, Lcom/loc/at;->bfC:Lcom/loc/cq;

    iput-object v3, p0, Lcom/loc/at;->bfD:Lcom/loc/cF;

    iput-object v3, p0, Lcom/loc/at;->bfE:Landroid/telephony/CellLocation;

    iput-wide v6, p0, Lcom/loc/at;->bfF:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/at;->bfG:Ljava/util/List;

    iput-object v3, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    iput-object v3, p0, Lcom/loc/at;->bfI:Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/at;->bfL:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/loc/at;->bfM:Z

    if-eqz p1, :cond_75

    :try_start_50
    iput-object p2, p0, Lcom/loc/at;->bfN:Lcom/loc/r;

    iput-object p3, p0, Lcom/loc/at;->bfO:Lcom/loc/aI;

    iput-object p1, p0, Lcom/loc/at;->bfq:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/loc/at;->bfr:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/loc/at;->bfs:Landroid/location/LocationManager;

    if-eqz v0, :cond_76

    :goto_65
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/loc/at;->bfr:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_8d

    :cond_74
    return-void

    :cond_75
    return-void

    :cond_76
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/loc/at;->bfs:Landroid/location/LocationManager;
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_81} :catch_82

    goto :goto_65

    :catch_82
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "ClientInfoUtil"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8c
    return-void

    :cond_8d
    if-eqz p2, :cond_74

    :try_start_8f
    iget-object v0, p0, Lcom/loc/at;->bfr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/at;->o:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/loc/r;->b()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_d0

    :cond_9d
    :goto_9d
    iget-object v0, p0, Lcom/loc/at;->bfr:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/loc/X;->bxd(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/loc/at;->u:I

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loc/at;->bfx:I

    iget-object v0, p0, Lcom/loc/at;->bfr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    iput v0, p0, Lcom/loc/at;->bfy:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/at;->bfz:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/at;->bfr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_f1

    move v0, v1

    :goto_cd
    iput-boolean v0, p0, Lcom/loc/at;->bfu:Z

    goto :goto_8c

    :cond_d0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/at;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/at;->t:Ljava/lang/String;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/loc/at;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9d

    iget-object v0, p0, Lcom/loc/at;->t:Ljava/lang/String;

    const-string/jumbo v3, ":"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/at;->t:Ljava/lang/String;
    :try_end_f0
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_f0} :catch_82

    goto :goto_9d

    :cond_f1
    move v0, v2

    goto :goto_cd
.end method

.method private a(Ljava/util/List;)V
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    return-void

    :cond_4
    :try_start_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v1, v0

    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3b

    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_57

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    :goto_3a
    return-void

    :cond_3b
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v3, :cond_4a

    const-string/jumbo v3, "null"

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :cond_4a
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_62} :catch_63

    goto :goto_2e

    :catch_63
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "setWifiOrder"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method protected static a(Landroid/content/Context;)Z
    .registers 13

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_1a

    :try_start_4
    const-string/jumbo v0, "mock_location"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v1, v3

    :cond_19
    :goto_19
    return v1

    :cond_1a
    return v2

    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v0, 0x80

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v6, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_2f} :catch_67

    move-result-object v8

    move v1, v3

    :goto_31
    :try_start_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_3d} :catch_73

    if-nez v1, :cond_19

    :try_start_3f
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x1000

    invoke-virtual {v5, v4, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v9, :cond_4e

    :cond_4b
    :goto_4b
    move v0, v1

    :goto_4c
    move v1, v0

    goto :goto_31

    :cond_4e
    array-length v10, v9

    move v4, v3

    :goto_50
    if-ge v4, v10, :cond_4b

    aget-object v11, v9, v4

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5d

    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    :cond_5d
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_62} :catch_75
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_62} :catch_73

    move-result v0

    if-nez v0, :cond_4b

    move v0, v2

    goto :goto_4c

    :catch_67
    move-exception v0

    move v1, v3

    :goto_69
    const-string/jumbo v2, "ClientInfoUtil"

    const-string/jumbo v3, "isMockGps"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :catch_73
    move-exception v0

    goto :goto_69

    :catch_75
    move-exception v0

    goto :goto_4b
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    sget-object v0, Lcom/loc/at;->bfs:Landroid/location/LocationManager;

    if-eqz v0, :cond_a

    :goto_5
    sget-object v0, Lcom/loc/at;->bfs:Landroid/location/LocationManager;

    if-nez v0, :cond_21

    :cond_9
    :goto_9
    return v3

    :cond_a
    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/loc/at;->bfs:Landroid/location/LocationManager;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_15} :catch_16

    goto :goto_5

    :catch_16
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "isProviderEnabled"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_21
    :try_start_21
    sget-object v0, Lcom/loc/at;->bfs:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "passive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_40
    const/4 v0, 0x1

    return v0

    :cond_42
    const-string/jumbo v2, "gps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_48} :catch_16

    move-result v0

    if-nez v0, :cond_40

    goto :goto_2b
.end method

.method private static byH(Ljava/lang/Object;)I
    .registers 4

    :try_start_0
    const-class v1, Landroid/hardware/Sensor;

    const-string/jumbo v2, "getMinDelay"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_10

    :goto_e
    const/4 v0, 0x0

    return v0

    :cond_10
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1e} :catch_20

    move-result v0

    return v0

    :catch_20
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "getMinDelay"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method private byI()Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/at;->bfF:J
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_8} :catch_17

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xdac

    cmp-long v2, v2, v4

    if-ltz v2, :cond_13

    move v2, v0

    :goto_10
    if-nez v2, :cond_15

    :goto_12
    return v0

    :cond_13
    move v2, v1

    goto :goto_10

    :cond_15
    move v0, v1

    goto :goto_12

    :catch_17
    move-exception v1

    const-string/jumbo v2, "ClientInfoUtil"

    const-string/jumbo v3, "isFresh_wifi"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private byJ()V
    .registers 4

    iget-object v0, p0, Lcom/loc/at;->bfN:Lcom/loc/r;

    if-eqz v0, :cond_9

    :try_start_4
    sget-boolean v0, Lcom/loc/at;->d:Z

    if-nez v0, :cond_a

    :goto_8
    return-void

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/loc/at;->bfN:Lcom/loc/r;

    invoke-virtual {v0}, Lcom/loc/r;->d()Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_f} :catch_10

    goto :goto_8

    :catch_10
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "scanWifi"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private byK(Landroid/location/GpsStatus$NmeaListener;)V
    .registers 3

    sget-object v0, Lcom/loc/at;->bfs:Landroid/location/LocationManager;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    sget-object v0, Lcom/loc/at;->bfs:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    return-void
.end method

.method private byL(Landroid/location/GpsStatus$NmeaListener;)V
    .registers 3

    sget-object v0, Lcom/loc/at;->bfs:Landroid/location/LocationManager;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    sget-object v0, Lcom/loc/at;->bfs:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    return-void
.end method

.method protected static byO([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v1

    :cond_4
    if-eqz p1, :cond_3

    move v0, v1

    :goto_7
    :try_start_7
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-object v2, p0, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_17

    move-result v2

    if-nez v2, :cond_15

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    const/4 v0, 0x1

    return v0

    :catch_17
    move-exception v0

    const-string/jumbo v2, "ClientInfoUtil"

    const-string/jumbo v3, "hasString"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method static synthetic byP(Lcom/loc/at;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2

    iput-object p1, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic byQ(Lcom/loc/at;Lcom/loc/cq;)Lcom/loc/cq;
    .registers 2

    iput-object p1, p0, Lcom/loc/at;->bfC:Lcom/loc/cq;

    return-object p1
.end method

.method static synthetic byR(Lcom/loc/at;)Lcom/loc/cq;
    .registers 2

    iget-object v0, p0, Lcom/loc/at;->bfC:Lcom/loc/cq;

    return-object v0
.end method

.method static synthetic byS(Lcom/loc/at;Lcom/loc/cF;)Lcom/loc/cF;
    .registers 2

    iput-object p1, p0, Lcom/loc/at;->bfD:Lcom/loc/cF;

    return-object p1
.end method

.method static synthetic byT(Lcom/loc/at;)Lcom/loc/cF;
    .registers 2

    iget-object v0, p0, Lcom/loc/at;->bfD:Lcom/loc/cF;

    return-object v0
.end method

.method static synthetic byU(Lcom/loc/at;Landroid/location/GpsStatus$NmeaListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/at;->byK(Landroid/location/GpsStatus$NmeaListener;)V

    return-void
.end method

.method static synthetic byV(Lcom/loc/at;Landroid/location/GpsStatus$NmeaListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/at;->byL(Landroid/location/GpsStatus$NmeaListener;)V

    return-void
.end method

.method static synthetic byW(Lcom/loc/at;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/at;->byJ()V

    return-void
.end method

.method static synthetic byX(Lcom/loc/at;)Landroid/telephony/TelephonyManager;
    .registers 2

    iget-object v0, p0, Lcom/loc/at;->bfr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic byY(Lcom/loc/at;I)I
    .registers 2

    iput p1, p0, Lcom/loc/at;->u:I

    return p1
.end method

.method static synthetic byZ(Lcom/loc/at;I)I
    .registers 2

    iput p1, p0, Lcom/loc/at;->bfx:I

    return p1
.end method

.method protected static byp(Landroid/content/Context;Lcom/loc/r;Lcom/loc/aI;)Lcom/loc/at;
    .registers 6

    sget-object v0, Lcom/loc/at;->bfB:Lcom/loc/at;

    if-eqz v0, :cond_7

    :cond_4
    :goto_4
    sget-object v0, Lcom/loc/at;->bfB:Lcom/loc/at;

    return-object v0

    :cond_7
    :try_start_7
    invoke-static {p0}, Lcom/loc/at;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/loc/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/loc/at;

    invoke-direct {v0, p0, p1, p2}, Lcom/loc/at;-><init>(Landroid/content/Context;Lcom/loc/r;Lcom/loc/aI;)V

    sput-object v0, Lcom/loc/at;->bfB:Lcom/loc/at;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_4

    :catch_1b
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "getInstance"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method static synthetic bza(Lcom/loc/at;J)J
    .registers 4

    iput-wide p1, p0, Lcom/loc/at;->bfA:J

    return-wide p1
.end method

.method static synthetic bzb(Lcom/loc/at;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .registers 2

    iput-object p1, p0, Lcom/loc/at;->bfE:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method static synthetic bzc(Lcom/loc/at;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/loc/at;->bfu:Z

    return v0
.end method

.method static synthetic bzd(Lcom/loc/at;I)I
    .registers 2

    iput p1, p0, Lcom/loc/at;->bfv:I

    return p1
.end method

.method static synthetic bze(Lcom/loc/at;)I
    .registers 2

    iget v0, p0, Lcom/loc/at;->bfv:I

    return v0
.end method

.method static synthetic bzf(Lcom/loc/at;J)J
    .registers 4

    iput-wide p1, p0, Lcom/loc/at;->bfw:J

    return-wide p1
.end method

.method static synthetic bzg(Lcom/loc/at;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/loc/at;->s:Ljava/lang/String;

    return-object p1
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_29

    move-result-object v0

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_e} :catch_19
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_e} :catch_29

    move-result-object v0

    :try_start_f
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move v0, v1

    :goto_12
    sget-object v3, Lcom/loc/at;->bfP:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_1b

    :goto_17
    const/4 v0, 0x1

    return v0

    :catch_19
    move-exception v0

    return v1

    :cond_1b
    sget-object v3, Lcom/loc/at;->bfP:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/loc/at;->byO([Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_22} :catch_29

    move-result v3

    if-eqz v3, :cond_28

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_28
    return v1

    :catch_29
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "getPermission"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method


# virtual methods
.method protected a(Z)Ljava/util/List;
    .registers 8

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    invoke-virtual {p0}, Lcom/loc/at;->c()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_46

    move-result v2

    if-nez v2, :cond_12

    :goto_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_12
    :try_start_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_18} :catch_46

    if-eqz p1, :cond_30

    :cond_1a
    :try_start_1a
    iget-wide v4, p0, Lcom/loc/at;->bfF:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_23
    iget-object v3, p0, Lcom/loc/at;->bfG:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_37

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2e
    monitor-exit p0

    return-object v2

    :cond_30
    invoke-direct {p0}, Lcom/loc/at;->byI()Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_2e

    :cond_37
    iget-object v3, p0, Lcom/loc/at;->bfG:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_43

    :try_start_45
    throw v0
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_46} :catch_46

    :catch_46
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "getWifiScanResults"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method protected a()V
    .registers 4

    :try_start_0
    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/loc/at;->b()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/loc/at;->bfM:Z

    iget-object v1, p0, Lcom/loc/at;->bfI:Landroid/os/HandlerThread;

    if-nez v1, :cond_1a

    :goto_d
    new-instance v1, Lcom/loc/bM;

    invoke-direct {v1, p0, v0}, Lcom/loc/bM;-><init>(Lcom/loc/at;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/at;->bfI:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/loc/at;->bfI:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :goto_19
    return-void

    :cond_1a
    iget-object v1, p0, Lcom/loc/at;->bfI:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_d

    :catch_20
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "startInnerListen"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method protected a(I)V
    .registers 5

    :try_start_0
    sget v0, Lcom/loc/at;->bfJ:I

    if-eq p1, v0, :cond_14

    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_18

    :try_start_5
    iget-object v0, p0, Lcom/loc/at;->bfG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_15

    :try_start_b
    iget-object v0, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_d} :catch_18

    if-nez v0, :cond_23

    :goto_f
    const/16 v0, 0x1388

    if-ge p1, v0, :cond_2c

    :goto_13
    return-void

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v0
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_18} :catch_18

    :catch_18
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "setWifiScanFreq"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    goto :goto_f

    :cond_2c
    sput p1, Lcom/loc/at;->bfJ:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/loc/at;->byJ()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_38} :catch_18

    goto :goto_13
.end method

.method protected b()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/loc/at;->bfL:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_22

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/loc/at;->bfM:Z

    iget-object v0, p0, Lcom/loc/at;->bfO:Lcom/loc/aI;

    if-nez v0, :cond_18

    :goto_a
    iget-object v0, p0, Lcom/loc/at;->bfD:Lcom/loc/cF;

    if-nez v0, :cond_2d

    :goto_e
    iget-object v0, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    if-nez v0, :cond_36

    :goto_12
    iget-object v0, p0, Lcom/loc/at;->bfI:Landroid/os/HandlerThread;

    if-nez v0, :cond_3f

    :goto_16
    monitor-exit v1

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/loc/at;->bfO:Lcom/loc/aI;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/loc/aI;->bzH(Landroid/telephony/PhoneStateListener;)V

    goto :goto_a

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    :try_start_21
    throw v0
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_22} :catch_22

    :catch_22
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "stopInnerListen"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/loc/at;->bfD:Lcom/loc/cF;

    invoke-direct {p0, v0}, Lcom/loc/at;->byL(Landroid/location/GpsStatus$NmeaListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/at;->bfD:Lcom/loc/cF;

    goto :goto_e

    :cond_36
    iget-object v0, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    goto :goto_12

    :cond_3f
    iget-object v0, p0, Lcom/loc/at;->bfI:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/at;->bfI:Landroid/os/HandlerThread;
    :try_end_47
    .catchall {:try_start_2d .. :try_end_47} :catchall_1f

    goto :goto_16
.end method

.method protected byA(I)D
    .registers 8

    const-wide/16 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_16

    :cond_14
    return-wide v4

    :cond_15
    return-wide v4

    :cond_16
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_19} :catch_28

    move-result-object v0

    if-eqz v0, :cond_14

    :goto_1c
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :catch_28
    move-exception v0

    const-string/jumbo v2, "ClientInfoUtil"

    const-string/jumbo v3, "getSensorMaxRange"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method protected byB(I)I
    .registers 6

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_15

    :cond_13
    return v3

    :cond_14
    return v3

    :cond_15
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_18} :catch_24

    move-result-object v0

    if-eqz v0, :cond_13

    :goto_1b
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/at;->byH(Ljava/lang/Object;)I

    move-result v0

    return v0

    :catch_24
    move-exception v0

    const-string/jumbo v2, "ClientInfoUtil"

    const-string/jumbo v3, "getSensorMinDelay"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method protected byC(I)I
    .registers 6

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_15

    :cond_13
    return v3

    :cond_14
    return v3

    :cond_15
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_18} :catch_2b

    move-result-object v0

    if-eqz v0, :cond_13

    :goto_1b
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getPower()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    :catch_2b
    move-exception v0

    const-string/jumbo v2, "ClientInfoUtil"

    const-string/jumbo v3, "getSensorPower"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method protected byD(I)D
    .registers 8

    const-wide/16 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_16

    :cond_14
    return-wide v4

    :cond_15
    return-wide v4

    :cond_16
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_19} :catch_28

    move-result-object v0

    if-eqz v0, :cond_14

    :goto_1c
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getResolution()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :catch_28
    move-exception v0

    const-string/jumbo v2, "ClientInfoUtil"

    const-string/jumbo v3, "getSensorResolution"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method protected byE(I)B
    .registers 6

    const/16 v3, 0x7f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_16

    :cond_14
    return v3

    :cond_15
    return v3

    :cond_16
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_25} :catch_34

    move-result v0

    if-gt v0, v3, :cond_14

    :goto_28
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    int-to-byte v0, v0

    return v0

    :catch_34
    move-exception v0

    const-string/jumbo v2, "ClientInfoUtil"

    const-string/jumbo v3, "getSensorType"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method protected byF(I)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1a

    :cond_12
    const-string/jumbo v0, "null"

    return-object v0

    :cond_16
    const-string/jumbo v0, "null"

    return-object v0

    :cond_1a
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_39} :catch_47

    move-result v0

    if-lez v0, :cond_12

    :goto_3c
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_47
    move-exception v0

    const-string/jumbo v2, "ClientInfoUtil"

    const-string/jumbo v3, "getSensorVendor"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method protected byG(I)B
    .registers 6

    const/16 v3, 0x7f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_16

    :cond_14
    return v3

    :cond_15
    return v3

    :cond_16
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_25} :catch_34

    move-result v0

    if-gt v0, v3, :cond_14

    :goto_28
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v0

    int-to-byte v0, v0

    return v0

    :catch_34
    move-exception v0

    const-string/jumbo v2, "ClientInfoUtil"

    const-string/jumbo v3, "getSensorVersion"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method public byM()V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2} :catch_50

    :try_start_2
    iget-object v1, p0, Lcom/loc/at;->bfG:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/loc/at;->bfN:Lcom/loc/r;

    invoke-virtual {v1}, Lcom/loc/r;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/at;->bfF:J

    if-nez v2, :cond_31

    :cond_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_4d

    :try_start_16
    new-instance v0, Lcom/loc/ao;

    invoke-direct {v0, p0}, Lcom/loc/ao;-><init>(Lcom/loc/at;)V

    monitor-enter p0
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1c} :catch_50

    :try_start_1c
    iget-object v1, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    if-nez v1, :cond_5b

    :goto_20
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    iget-object v1, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    sget v2, Lcom/loc/at;->bfJ:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_64

    :goto_30
    return-void

    :cond_31
    :try_start_31
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15

    move v1, v0

    :goto_38
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v3, p0, Lcom/loc/at;->bfG:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_38

    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v0
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_50} :catch_50

    :catch_50
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "onReceive"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    :cond_5b
    :try_start_5b
    iget-object v1, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    goto :goto_20

    :catchall_64
    move-exception v0

    monitor-exit p0
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_64

    :try_start_66
    throw v0
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_67} :catch_50
.end method

.method protected byN()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/loc/at;->bfq:Landroid/content/Context;

    return-object v0
.end method

.method protected byq()I
    .registers 2

    iget v0, p0, Lcom/loc/at;->bfx:I

    return v0
.end method

.method protected byr()I
    .registers 2

    iget v0, p0, Lcom/loc/at;->bfy:I

    return v0
.end method

.method protected bys()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/at;->bfz:Ljava/lang/String;

    if-eqz v0, :cond_c

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/loc/at;->bfz:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_19

    if-nez v0, :cond_24

    :goto_8
    const-string/jumbo v0, ""

    return-object v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/loc/at;->bfq:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/at;->bfq:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/at;->bfz:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_4

    :catch_19
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "getSourceName"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/loc/at;->bfz:Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_26} :catch_19

    return-object v0
.end method

.method protected byt(F)Ljava/util/List;
    .registers 12

    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_14

    move p1, v2

    :cond_14
    invoke-virtual {p0}, Lcom/loc/at;->h()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellLocation;

    if-nez v2, :cond_22

    :cond_21
    :goto_21
    return-object v4

    :cond_22
    instance-of v3, v2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_21

    move-object v0, v2

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/loc/at;->h()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v6, v2

    long-to-double v2, v2

    float-to-double v6, p1

    const-wide v8, 0x40e86a0000000000L    # 50000.0

    div-double v6, v8, v6

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_74

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_68} :catch_69

    goto :goto_21

    :catch_69
    move-exception v2

    const-string/jumbo v3, "ClientInfoUtil"

    const-string/jumbo v5, "getGsmData"

    invoke-static {v2, v3, v5}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_74
    const/4 v2, 0x0

    :try_start_75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_7c} :catch_69

    goto :goto_21
.end method

.method protected byu(F)Ljava/util/List;
    .registers 10

    const/high16 v0, 0x3f800000    # 1.0f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_14

    move p1, v0

    :cond_14
    invoke-virtual {p0}, Lcom/loc/at;->h()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellLocation;

    if-nez v0, :cond_22

    :cond_21
    :goto_21
    return-object v1

    :cond_22
    instance-of v4, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v4, :cond_21

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/loc/at;->h()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    float-to-double v4, p1

    const-wide v6, 0x40e86a0000000000L    # 50000.0

    div-double v4, v6, v4

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_90

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_84} :catch_85

    goto :goto_21

    :catch_85
    move-exception v0

    const-string/jumbo v2, "ClientInfoUtil"

    const-string/jumbo v3, "getCdmaCell"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_90
    const/4 v0, 0x0

    :try_start_91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_98} :catch_85

    goto :goto_21
.end method

.method protected byv()Ljava/util/List;
    .registers 9

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    invoke-virtual {p0}, Lcom/loc/at;->c()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-object v3

    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/loc/at;->a(Z)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v0}, Lcom/loc/at;->a(Ljava/util/List;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    :goto_36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_c

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x28

    if-ge v4, v5, :cond_c

    if-nez v1, :cond_52

    :goto_4e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_36

    :cond_52
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v6, ":"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_77} :catch_78

    goto :goto_4e

    :catch_78
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "getWifiData"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method protected byw()V
    .registers 4

    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1} :catch_19

    :try_start_1
    iget-object v0, p0, Lcom/loc/at;->bfG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_16

    :try_start_7
    iget-object v0, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    if-nez v0, :cond_24

    :goto_b
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/loc/at;->byJ()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_15} :catch_19

    :goto_15
    return-void

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_19} :catch_19

    :catch_19
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "openWifiScan"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_2c} :catch_19

    goto :goto_b
.end method

.method protected byx()V
    .registers 4

    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1} :catch_f

    :try_start_1
    iget-object v0, p0, Lcom/loc/at;->bfG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    :try_start_7
    iget-object v0, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_9} :catch_f

    if-nez v0, :cond_1a

    :goto_b
    return-void

    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    :try_start_e
    throw v0
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_f} :catch_f

    :catch_f
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "closeWifiScan"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/at;->bfH:Ljava/util/Timer;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_22} :catch_f

    goto :goto_b
.end method

.method protected byy()B
    .registers 5

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_10} :catch_1b

    move-result-object v0

    if-eqz v0, :cond_1a

    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-byte v0, v0

    return v0

    :cond_19
    return v3

    :cond_1a
    return v3

    :catch_1b
    move-exception v0

    const-string/jumbo v2, "ClientInfoUtil"

    const-string/jumbo v3, "getSensorNum"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_13
.end method

.method protected byz(I)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/loc/at;->bft:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1a

    :cond_12
    const-string/jumbo v0, "null"

    return-object v0

    :cond_16
    const-string/jumbo v0, "null"

    return-object v0

    :cond_1a
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_39} :catch_47

    move-result v0

    if-lez v0, :cond_12

    :goto_3c
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_47
    move-exception v0

    const-string/jumbo v2, "ClientInfoUtil"

    const-string/jumbo v3, "getSensorName"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method protected c()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/loc/at;->bfN:Lcom/loc/r;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/loc/at;->bfN:Lcom/loc/r;

    invoke-virtual {v1}, Lcom/loc/r;->f()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_10

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :catch_10
    move-exception v1

    const-string/jumbo v2, "ClientInfoUtil"

    const-string/jumbo v3, "isWifiEnabled"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected d()Z
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    sget-object v0, Lcom/loc/at;->bfs:Landroid/location/LocationManager;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return v3

    :cond_6
    sget-object v0, Lcom/loc/at;->bfs:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_13

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    return v0

    :catch_13
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "isGPSEnabled"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method protected e()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/at;->bfq:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_f

    if-nez v0, :cond_8

    :goto_4
    const-string/jumbo v0, ""

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/loc/at;->bfq:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cn;->bGa(Landroid/content/Context;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v0

    return-object v0

    :catch_f
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "isGPSEnabled"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected f()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/at;->bfq:Landroid/content/Context;

    if-nez v0, :cond_c

    :goto_4
    iget-object v0, p0, Lcom/loc/at;->o:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_12

    if-nez v0, :cond_1d

    :goto_8
    const-string/jumbo v0, ""

    return-object v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/loc/at;->bfq:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cn;->bGb(Landroid/content/Context;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_4

    :catch_12
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "getImsi"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/loc/at;->o:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1f} :catch_12

    return-object v0
.end method

.method protected g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/loc/at;->bfu:Z

    return v0
.end method

.method protected h()Ljava/util/List;
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/at;->bfq:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    :try_start_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/at;->bfE:Landroid/telephony/CellLocation;

    if-eqz v0, :cond_3f

    :goto_1a
    iget-object v0, p0, Lcom/loc/at;->bfO:Lcom/loc/aI;

    iget-object v2, p0, Lcom/loc/at;->bfE:Landroid/telephony/CellLocation;

    invoke-virtual {v0, v2}, Lcom/loc/aI;->bzw(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/at;->bfA:J

    iget-object v0, p0, Lcom/loc/at;->bfE:Landroid/telephony/CellLocation;

    :goto_2c
    iget-wide v2, p0, Lcom/loc/at;->bfA:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_38} :catch_68

    return-object v1

    :cond_39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/loc/at;->bfr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/at;->bfE:Landroid/telephony/CellLocation;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_47} :catch_48
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_47} :catch_68

    goto :goto_1a

    :catch_48
    move-exception v0

    goto :goto_1a

    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lcom/loc/at;->bfO:Lcom/loc/aI;

    iget-object v2, p0, Lcom/loc/at;->bfq:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/X;->a(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/loc/aI;->bzv(ZZ)Landroid/telephony/CellLocation;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/at;->bfO:Lcom/loc/aI;

    invoke-virtual {v2, v0}, Lcom/loc/aI;->bzw(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_78

    iput-object v0, p0, Lcom/loc/at;->bfE:Landroid/telephony/CellLocation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/at;->bfA:J
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_67} :catch_68

    goto :goto_2c

    :catch_68
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "getMainCellLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_78
    :try_start_78
    iget-object v0, p0, Lcom/loc/at;->bfE:Landroid/telephony/CellLocation;
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7a} :catch_68

    goto :goto_2c
.end method

.method protected i()B
    .registers 2

    iget v0, p0, Lcom/loc/at;->bfv:I

    int-to-byte v0, v0

    return v0
.end method

.method protected j()Ljava/util/List;
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/loc/at;->bfO:Lcom/loc/aI;

    if-nez v0, :cond_6

    :goto_5
    return-object v3

    :cond_6
    iget-object v0, p0, Lcom/loc/at;->bfO:Lcom/loc/aI;

    iget-object v1, p0, Lcom/loc/at;->bfq:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/X;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/loc/aI;->bzv(ZZ)Landroid/telephony/CellLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/at;->bfE:Landroid/telephony/CellLocation;

    iget-object v0, p0, Lcom/loc/at;->bfO:Lcom/loc/aI;

    iget-object v1, p0, Lcom/loc/at;->bfE:Landroid/telephony/CellLocation;

    invoke-virtual {v0, v1}, Lcom/loc/aI;->bzw(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_26

    :goto_1f
    iget-object v0, p0, Lcom/loc/at;->bfO:Lcom/loc/aI;

    invoke-virtual {v0}, Lcom/loc/aI;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/at;->bfA:J
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2c} :catch_2d

    goto :goto_1f

    :catch_2d
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "getNeighboringInfo"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method protected k()Ljava/util/List;
    .registers 11

    const/4 v1, 0x1

    const/4 v4, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, -0x1

    :try_start_9
    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/loc/at;->d()Z

    move-result v5

    if-nez v5, :cond_39

    :goto_12
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_3e

    move v5, v1

    :goto_19
    if-nez v5, :cond_22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    :cond_22
    const-wide/32 v8, 0x7fffffff

    cmp-long v5, v2, v8

    if-gtz v5, :cond_40

    :goto_29
    if-nez v1, :cond_2e

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    :cond_2e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_38
    return-object v6

    :cond_39
    iget-wide v2, p0, Lcom/loc/at;->bfw:J

    iget-object v0, p0, Lcom/loc/at;->s:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_3d} :catch_42

    goto :goto_12

    :cond_3e
    move v5, v4

    goto :goto_19

    :cond_40
    move v1, v4

    goto :goto_29

    :catch_42
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "getNmea"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method protected l()J
    .registers 11

    const-wide/16 v8, 0xa

    const-wide/16 v6, 0x0

    const/16 v4, 0xd

    iget-wide v2, p0, Lcom/loc/at;->bfw:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    if-nez v0, :cond_12

    return-wide v6

    :cond_10
    const/4 v0, 0x0

    goto :goto_d

    :cond_12
    :try_start_12
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1a
    if-ne v0, v4, :cond_1d

    :goto_1c
    return-wide v2

    :cond_1d
    if-gt v0, v4, :cond_29

    mul-long/2addr v2, v8

    :goto_20
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1a

    :cond_29
    const-wide/16 v0, 0xa

    div-long/2addr v2, v0
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_2c} :catch_2d

    goto :goto_20

    :catch_2d
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v4, "getNmeaTime"

    invoke-static {v0, v1, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method protected m()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/loc/at;->t:Ljava/lang/String;

    if-eqz v1, :cond_d

    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/loc/at;->t:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7} :catch_34

    if-nez v0, :cond_46

    :goto_9
    const-string/jumbo v0, ""

    return-object v0

    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/loc/at;->bfN:Lcom/loc/r;

    if-nez v1, :cond_3f

    :goto_11
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/at;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/at;->t:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/at;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/loc/at;->t:Ljava/lang/String;

    const-string/jumbo v1, ":"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/at;->t:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_33} :catch_34

    goto :goto_5

    :catch_34
    move-exception v0

    const-string/jumbo v1, "ClientInfoUtil"

    const-string/jumbo v2, "getDeviceMac"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/loc/at;->bfN:Lcom/loc/r;

    invoke-virtual {v0}, Lcom/loc/r;->b()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_11

    :cond_46
    iget-object v0, p0, Lcom/loc/at;->t:Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_48} :catch_34

    return-object v0
.end method

.method protected n()I
    .registers 2

    iget v0, p0, Lcom/loc/at;->u:I

    return v0
.end method

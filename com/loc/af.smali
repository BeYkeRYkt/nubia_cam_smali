.class public Lcom/loc/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Z

.field protected static b:Z

.field private static beI:I

.field private static beJ:I

.field private static beK:Ljava/lang/Object;

.field private static beL:Lcom/loc/af;

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static j:J


# instance fields
.field private beM:Z

.field private beN:I

.field private beO:I

.field private beP:I

.field private beQ:Landroid/content/Context;

.field private beR:Landroid/location/LocationManager;

.field private beS:Lcom/loc/at;

.field private beT:Lcom/loc/cm;

.field private beU:Lcom/loc/aT;

.field private beV:Lcom/loc/N;

.field private beW:Lcom/loc/bP;

.field private beX:Lcom/loc/bW;

.field private beY:Lcom/loc/cg;

.field private beZ:Landroid/os/HandlerThread;

.field private bfa:Lcom/loc/S;

.field bfb:Ljava/lang/Object;

.field private bfc:Lcom/loc/e;

.field private bfd:Landroid/location/LocationListener;

.field private bfe:Landroid/content/BroadcastReceiver;

.field private bff:Landroid/content/BroadcastReceiver;

.field private bfg:Landroid/location/GpsStatus;

.field private bfh:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0xa

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/af;->a:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/af;->b:Z

    sput v1, Lcom/loc/af;->d:I

    const/4 v0, 0x2

    sput v0, Lcom/loc/af;->e:I

    sput v1, Lcom/loc/af;->f:I

    sput v1, Lcom/loc/af;->g:I

    const/16 v0, 0x32

    sput v0, Lcom/loc/af;->beI:I

    const/16 v0, 0xc8

    sput v0, Lcom/loc/af;->beJ:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/loc/af;->j:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/loc/af;->beK:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/loc/r;Lcom/loc/aI;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/loc/af;->beM:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/af;->beN:I

    iput v1, p0, Lcom/loc/af;->beO:I

    iput v1, p0, Lcom/loc/af;->beP:I

    iput-object v2, p0, Lcom/loc/af;->beZ:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/loc/af;->bfa:Lcom/loc/S;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/af;->bfb:Ljava/lang/Object;

    new-instance v0, Lcom/loc/aS;

    invoke-direct {v0, p0}, Lcom/loc/aS;-><init>(Lcom/loc/af;)V

    iput-object v0, p0, Lcom/loc/af;->bfc:Lcom/loc/e;

    new-instance v0, Lcom/loc/bg;

    invoke-direct {v0, p0}, Lcom/loc/bg;-><init>(Lcom/loc/af;)V

    iput-object v0, p0, Lcom/loc/af;->bfd:Landroid/location/LocationListener;

    new-instance v0, Lcom/loc/ar;

    invoke-direct {v0, p0}, Lcom/loc/ar;-><init>(Lcom/loc/af;)V

    iput-object v0, p0, Lcom/loc/af;->bfe:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/loc/ad;

    invoke-direct {v0, p0}, Lcom/loc/ad;-><init>(Lcom/loc/af;)V

    iput-object v0, p0, Lcom/loc/af;->bff:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/loc/af;->bfg:Landroid/location/GpsStatus;

    iput v1, p0, Lcom/loc/af;->bfh:I

    :try_start_39
    iput-object p1, p0, Lcom/loc/af;->beQ:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/loc/at;->byp(Landroid/content/Context;Lcom/loc/r;Lcom/loc/aI;)Lcom/loc/at;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    new-instance v0, Lcom/loc/cg;

    invoke-direct {v0}, Lcom/loc/cg;-><init>()V

    iput-object v0, p0, Lcom/loc/af;->beY:Lcom/loc/cg;

    new-instance v0, Lcom/loc/cm;

    iget-object v1, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    invoke-direct {v0, v1}, Lcom/loc/cm;-><init>(Lcom/loc/at;)V

    iput-object v0, p0, Lcom/loc/af;->beT:Lcom/loc/cm;

    new-instance v0, Lcom/loc/N;

    invoke-direct {v0, p1}, Lcom/loc/N;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/af;->beV:Lcom/loc/N;

    new-instance v0, Lcom/loc/aT;

    iget-object v1, p0, Lcom/loc/af;->beV:Lcom/loc/N;

    invoke-direct {v0, v1}, Lcom/loc/aT;-><init>(Lcom/loc/N;)V

    iput-object v0, p0, Lcom/loc/af;->beU:Lcom/loc/aT;

    new-instance v0, Lcom/loc/bP;

    iget-object v1, p0, Lcom/loc/af;->beV:Lcom/loc/N;

    invoke-direct {v0, v1}, Lcom/loc/bP;-><init>(Lcom/loc/N;)V

    iput-object v0, p0, Lcom/loc/af;->beW:Lcom/loc/bP;

    iget-object v0, p0, Lcom/loc/af;->beQ:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/loc/af;->beR:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/loc/af;->beQ:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bW;->a(Landroid/content/Context;)Lcom/loc/bW;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/af;->beX:Lcom/loc/bW;

    iget-object v0, p0, Lcom/loc/af;->beX:Lcom/loc/bW;

    iget-object v1, p0, Lcom/loc/af;->bfc:Lcom/loc/e;

    invoke-virtual {v0, v1}, Lcom/loc/bW;->bDT(Lcom/loc/e;)V

    invoke-direct {p0}, Lcom/loc/af;->bxK()V

    invoke-direct {p0}, Lcom/loc/af;->bxM()Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/af;->beM:Z
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_8f} :catch_90

    :goto_8f
    return-void

    :catch_90
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "CollectorManager"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "version"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "date"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    return-object v0

    :cond_14
    const-string/jumbo v0, "V1.0.0r"

    return-object v0

    :cond_18
    const-string/jumbo v0, "COL.15.0929r"

    return-object v0
.end method

.method public static bxH(Landroid/content/Context;Lcom/loc/r;Lcom/loc/aI;)Lcom/loc/af;
    .registers 6

    sget-object v0, Lcom/loc/af;->beL:Lcom/loc/af;

    if-eqz v0, :cond_7

    :goto_4
    sget-object v0, Lcom/loc/af;->beL:Lcom/loc/af;

    return-object v0

    :cond_7
    :try_start_7
    sget-object v1, Lcom/loc/af;->beK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_13

    :try_start_a
    sget-object v0, Lcom/loc/af;->beL:Lcom/loc/af;

    if-eqz v0, :cond_1e

    :goto_e
    monitor-exit v1

    goto :goto_4

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_10

    :try_start_12
    throw v0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_13} :catch_13

    :catch_13
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "getInstance"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_1e
    :try_start_1e
    new-instance v0, Lcom/loc/af;

    invoke-direct {v0, p0, p1, p2}, Lcom/loc/af;-><init>(Landroid/content/Context;Lcom/loc/r;Lcom/loc/aI;)V

    sput-object v0, Lcom/loc/af;->beL:Lcom/loc/af;
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_10

    goto :goto_e
.end method

.method private bxK()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/af;->beX:Lcom/loc/bW;

    invoke-virtual {v0}, Lcom/loc/bW;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/loc/af;->beO:I

    iget-object v0, p0, Lcom/loc/af;->beX:Lcom/loc/bW;

    invoke-virtual {v0}, Lcom/loc/bW;->c()I

    move-result v0

    iput v0, p0, Lcom/loc/af;->beP:I

    iget-object v0, p0, Lcom/loc/af;->beT:Lcom/loc/cm;

    iget v1, p0, Lcom/loc/af;->beO:I

    iget v2, p0, Lcom/loc/af;->beP:I

    invoke-virtual {v0, v1, v2}, Lcom/loc/cm;->bFM(II)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "updateStrategy"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private bxL()V
    .registers 4

    const-string/jumbo v0, ""

    :try_start_3
    iget-object v1, p0, Lcom/loc/af;->beR:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/loc/af;->bfa:Lcom/loc/S;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/af;->bfa:Lcom/loc/S;

    iget-object v1, p0, Lcom/loc/af;->beR:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/loc/af;->bfd:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v1, p0, Lcom/loc/af;->beZ:Landroid/os/HandlerThread;

    if-nez v1, :cond_25

    :goto_18
    new-instance v1, Lcom/loc/o;

    invoke-direct {v1, p0, v0}, Lcom/loc/o;-><init>(Lcom/loc/af;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/af;->beZ:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/loc/af;->beZ:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :goto_24
    return-void

    :cond_25
    iget-object v1, p0, Lcom/loc/af;->beZ:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/af;->beZ:Landroid/os/HandlerThread;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2d} :catch_2e

    goto :goto_18

    :catch_2e
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "requestLocationUpdates"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method private bxM()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/loc/af;->beR:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const-string/jumbo v2, "gps"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "passive"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_19} :catch_1e

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :catch_1e
    move-exception v1

    const-string/jumbo v2, "CollectorManager"

    const-string/jumbo v3, "canCollect"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private bxN(Landroid/location/Location;IJ)V
    .registers 16

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/loc/af;->j:J

    iget-object v2, p0, Lcom/loc/af;->beT:Lcom/loc/cm;

    invoke-virtual {v2, p1}, Lcom/loc/cm;->bFN(Landroid/location/Location;)Z

    move-result v3

    if-nez v3, :cond_38

    :goto_12
    iget-object v2, p0, Lcom/loc/af;->beT:Lcom/loc/cm;

    invoke-virtual {v2, p1}, Lcom/loc/cm;->bFP(Landroid/location/Location;)Z
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_17} :catch_44

    move-result v2

    if-nez v2, :cond_4f

    :goto_1a
    if-eq p2, v1, :cond_5b

    if-eq p2, v0, :cond_5e

    :goto_1e
    if-nez v3, :cond_61

    if-nez v2, :cond_67

    :goto_22
    :try_start_22
    iget-object v1, p0, Lcom/loc/af;->beY:Lcom/loc/cg;

    iget-object v3, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    iget v0, p0, Lcom/loc/af;->bfh:I

    int-to-byte v5, v0

    const/4 v8, 0x0

    move-object v2, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/loc/cg;->bFC(Landroid/location/Location;Lcom/loc/at;IBJZ)Lcom/loc/de;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2f} :catch_69
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2f} :catch_44

    move-result-object v0

    move-object v1, v0

    :goto_31
    if-nez v1, :cond_6c

    :cond_33
    :goto_33
    :try_start_33
    iget-object v0, p0, Lcom/loc/af;->beQ:Landroid/content/Context;

    if-nez v0, :cond_9a

    :cond_37
    return-void

    :cond_38
    iget-object v2, p0, Lcom/loc/af;->beT:Lcom/loc/cm;

    iget-object v2, v2, Lcom/loc/cm;->bkM:Lcom/loc/aW;

    new-instance v5, Landroid/location/Location;

    invoke-direct {v5, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v5, v2, Lcom/loc/aW;->bgw:Landroid/location/Location;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_43} :catch_44

    goto :goto_12

    :catch_44
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "collect"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    :try_start_4f
    iget-object v5, p0, Lcom/loc/af;->beT:Lcom/loc/cm;

    iget-object v5, v5, Lcom/loc/cm;->bkL:Lcom/loc/R;

    new-instance v6, Landroid/location/Location;

    invoke-direct {v6, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v6, v5, Lcom/loc/R;->bel:Landroid/location/Location;

    goto :goto_1a

    :cond_5b
    move v2, v1

    move v3, v1

    goto :goto_1e

    :cond_5e
    move v2, v1

    move v3, v4

    goto :goto_1e

    :cond_61
    if-nez v2, :cond_65

    move v4, v1

    goto :goto_22

    :cond_65
    const/4 v4, 0x3

    goto :goto_22

    :cond_67
    move v4, v0

    goto :goto_22

    :catch_69
    move-exception v0

    move-object v1, v9

    goto :goto_31

    :cond_6c
    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    invoke-virtual {v0}, Lcom/loc/at;->k()Ljava/util/List;

    move-result-object v2

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-nez v2, :cond_8c

    :cond_7e
    :goto_7e
    invoke-virtual {v1}, Lcom/loc/de;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/loc/af;->beU:Lcom/loc/aT;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7, v1}, Lcom/loc/aT;->bAq(J[B)V

    goto :goto_33

    :cond_8c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7e

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_7e

    :cond_9a
    iget-object v0, p0, Lcom/loc/af;->beY:Lcom/loc/cg;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/loc/af;->beQ:Landroid/content/Context;

    const-string/jumbo v1, "app_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string/jumbo v0, "get_sensor"

    const-string/jumbo v1, ""

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_b8} :catch_44

    move-result v0

    if-nez v0, :cond_fe

    :try_start_bb
    iget-object v1, p0, Lcom/loc/af;->beY:Lcom/loc/cg;

    iget-object v3, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    iget v0, p0, Lcom/loc/af;->bfh:I

    int-to-byte v5, v0

    const/4 v2, 0x0

    const/4 v8, 0x1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/loc/cg;->bFC(Landroid/location/Location;Lcom/loc/at;IBJZ)Lcom/loc/de;
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_c8} :catch_ff
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_c8} :catch_44

    move-result-object v0

    move-object v1, v0

    :goto_ca
    if-eqz v1, :cond_4e

    :try_start_cc
    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    invoke-virtual {v0}, Lcom/loc/at;->k()Ljava/util/List;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-nez v2, :cond_10b

    :cond_de
    :goto_de
    invoke-virtual {v1}, Lcom/loc/de;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/loc/af;->beU:Lcom/loc/aT;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v1}, Lcom/loc/aT;->bAq(J[B)V

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "get_sensor"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_4e

    :cond_fe
    return-void

    :catch_ff
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "collect inner"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    goto :goto_ca

    :cond_10b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_de

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_cc .. :try_end_118} :catch_44

    goto :goto_de
.end method

.method private bxO()V
    .registers 4

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/loc/af;->b:Z

    iget-object v1, p0, Lcom/loc/af;->beQ:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/af;->bff:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/af;->beQ:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/af;->bfe:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_41} :catch_42

    :goto_41
    return-void

    :catch_42
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "registerReceiver"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method private bxP()V
    .registers 4

    iget-object v0, p0, Lcom/loc/af;->bff:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_9

    :goto_4
    iget-object v0, p0, Lcom/loc/af;->bfe:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1f

    :goto_8
    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/loc/af;->beQ:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/af;->bff:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/af;->bff:Landroid/content/BroadcastReceiver;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_4

    :catch_14
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "registerReceiver"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/loc/af;->beQ:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/af;->bfe:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/af;->bfe:Landroid/content/BroadcastReceiver;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_29} :catch_2a

    goto :goto_8

    :catch_2a
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "registerReceiver"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method static synthetic bxQ(Lcom/loc/af;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/af;->bxK()V

    return-void
.end method

.method static synthetic bxR(Lcom/loc/af;)Lcom/loc/bW;
    .registers 2

    iget-object v0, p0, Lcom/loc/af;->beX:Lcom/loc/bW;

    return-object v0
.end method

.method static synthetic bxS(Lcom/loc/af;Landroid/location/Location;IJ)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/loc/af;->bxN(Landroid/location/Location;IJ)V

    return-void
.end method

.method static synthetic bxT(Lcom/loc/af;Lcom/loc/S;)Lcom/loc/S;
    .registers 2

    iput-object p1, p0, Lcom/loc/af;->bfa:Lcom/loc/S;

    return-object p1
.end method

.method static synthetic bxU(Lcom/loc/af;)Lcom/loc/S;
    .registers 2

    iget-object v0, p0, Lcom/loc/af;->bfa:Lcom/loc/S;

    return-object v0
.end method

.method static synthetic bxV(Lcom/loc/af;)Landroid/location/LocationManager;
    .registers 2

    iget-object v0, p0, Lcom/loc/af;->beR:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic bxW(Lcom/loc/af;)Landroid/location/LocationListener;
    .registers 2

    iget-object v0, p0, Lcom/loc/af;->bfd:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic bxX(Lcom/loc/af;)Landroid/location/GpsStatus;
    .registers 2

    iget-object v0, p0, Lcom/loc/af;->bfg:Landroid/location/GpsStatus;

    return-object v0
.end method

.method static synthetic bxY(Lcom/loc/af;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .registers 2

    iput-object p1, p0, Lcom/loc/af;->bfg:Landroid/location/GpsStatus;

    return-object p1
.end method

.method static synthetic bxZ(Lcom/loc/af;)I
    .registers 2

    iget v0, p0, Lcom/loc/af;->beN:I

    return v0
.end method

.method static synthetic bya(Lcom/loc/af;I)I
    .registers 2

    iput p1, p0, Lcom/loc/af;->beN:I

    return p1
.end method

.method static synthetic byb(Lcom/loc/af;)Lcom/loc/at;
    .registers 2

    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    return-object v0
.end method

.method static synthetic i()I
    .registers 1

    sget v0, Lcom/loc/af;->f:I

    return v0
.end method

.method static synthetic j()I
    .registers 1

    sget v0, Lcom/loc/af;->beJ:I

    return v0
.end method

.method static synthetic k()I
    .registers 1

    sget v0, Lcom/loc/af;->e:I

    return v0
.end method

.method static synthetic l()I
    .registers 1

    sget v0, Lcom/loc/af;->beI:I

    return v0
.end method

.method static synthetic m()I
    .registers 1

    sget v0, Lcom/loc/af;->g:I

    return v0
.end method

.method static synthetic n()I
    .registers 1

    sget v0, Lcom/loc/af;->d:I

    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    invoke-virtual {v0}, Lcom/loc/at;->byM()V

    goto :goto_4
.end method

.method public a(I)V
    .registers 5

    const/16 v0, 0x100

    if-ne p1, v0, :cond_a

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/loc/af;->beV:Lcom/loc/N;

    invoke-virtual {v0, p1}, Lcom/loc/N;->a(I)V

    :goto_9
    return-void

    :cond_a
    const/16 v0, 0x2220

    if-eq p1, v0, :cond_4

    const/16 v0, 0x300

    if-eq p1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid Size! must be COLLECTOR_SMALL_SIZE or COLLECTOR_BIG_SIZE or COLLECTOR_MEDIUM_SIZE"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "setCollectorSize"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public b()V
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/loc/at;->d:Z

    iget-boolean v0, p0, Lcom/loc/af;->beM:Z

    if-nez v0, :cond_8

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/loc/af;->a:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/af;->a:Z

    invoke-direct {p0}, Lcom/loc/af;->bxO()V

    invoke-direct {p0}, Lcom/loc/af;->bxL()V

    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    invoke-virtual {v0}, Lcom/loc/at;->a()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1e} :catch_20

    :goto_1e
    return-void

    :cond_1f
    return-void

    :catch_20
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "start"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public bxI(Lcom/loc/bK;Ljava/lang/String;)V
    .registers 7

    sget-boolean v0, Lcom/loc/at;->bfK:Z

    if-nez v0, :cond_d

    :try_start_4
    iget-object v0, p0, Lcom/loc/af;->beX:Lcom/loc/bW;

    invoke-virtual {v0, p2}, Lcom/loc/bW;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez p1, :cond_e

    :goto_c
    return-void

    :cond_d
    return-void

    :cond_e
    invoke-virtual {p1}, Lcom/loc/bK;->a()[B

    move-result-object v2

    if-nez v1, :cond_28

    :cond_14
    :goto_14
    invoke-virtual {p1, v1}, Lcom/loc/bK;->a(Z)V

    iget-object v0, p0, Lcom/loc/af;->beW:Lcom/loc/bP;

    invoke-virtual {v0, p1}, Lcom/loc/bP;->bCB(Lcom/loc/bK;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1c} :catch_1d

    goto :goto_c

    :catch_1d
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "callBackWrapData"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_28
    if-eqz v2, :cond_14

    :try_start_2a
    iget-object v0, p0, Lcom/loc/af;->beQ:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_58

    iget-object v0, p0, Lcom/loc/af;->beX:Lcom/loc/bW;

    iget-object v3, p0, Lcom/loc/af;->beX:Lcom/loc/bW;

    invoke-virtual {v3}, Lcom/loc/bW;->f()I

    move-result v3

    array-length v2, v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/loc/bW;->bDS(I)V

    goto :goto_14

    :cond_58
    iget-object v0, p0, Lcom/loc/af;->beX:Lcom/loc/bW;

    iget-object v3, p0, Lcom/loc/af;->beX:Lcom/loc/bW;

    invoke-virtual {v3}, Lcom/loc/bW;->e()I

    move-result v3

    array-length v2, v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/loc/bW;->a(I)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_65} :catch_1d

    goto :goto_14
.end method

.method public bxJ(I)V
    .registers 5

    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    if-eqz v0, :cond_a

    :try_start_4
    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    invoke-virtual {v0, p1}, Lcom/loc/at;->a(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    :goto_9
    return-void

    :cond_a
    return-void

    :catch_b
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "setWifiScanFreq"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public c()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/loc/at;->d:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/at;->bfK:Z

    iget-boolean v0, p0, Lcom/loc/af;->beM:Z

    if-nez v0, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/loc/af;->a:Z

    if-eqz v0, :cond_43

    invoke-direct {p0}, Lcom/loc/af;->bxP()V

    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    if-nez v0, :cond_44

    :goto_1a
    iget-object v1, p0, Lcom/loc/af;->bfb:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1d} :catch_4a

    const/4 v0, 0x0

    :try_start_1e
    sput-boolean v0, Lcom/loc/af;->a:Z

    iget-object v0, p0, Lcom/loc/af;->beR:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/loc/af;->bfa:Lcom/loc/S;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iget-object v0, p0, Lcom/loc/af;->beR:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/loc/af;->bfa:Lcom/loc/S;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/af;->bfa:Lcom/loc/S;

    iget-object v0, p0, Lcom/loc/af;->beR:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/loc/af;->bfd:Landroid/location/LocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/loc/af;->beZ:Landroid/os/HandlerThread;

    if-nez v0, :cond_55

    :goto_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_1e .. :try_end_3d} :catchall_5e

    :try_start_3d
    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    invoke-virtual {v0}, Lcom/loc/at;->b()V

    :goto_42
    return-void

    :cond_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    invoke-virtual {v0}, Lcom/loc/at;->byx()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_49} :catch_4a

    goto :goto_1a

    :catch_4a
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "stop"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_55
    :try_start_55
    iget-object v0, p0, Lcom/loc/af;->beZ:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/af;->beZ:Landroid/os/HandlerThread;

    goto :goto_3c

    :catchall_5e
    move-exception v0

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_55 .. :try_end_60} :catchall_5e

    :try_start_60
    throw v0
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_61} :catch_4a
.end method

.method public d()V
    .registers 4

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/af;->beM:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/loc/af;->c()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    :goto_7
    return-void

    :cond_8
    return-void

    :catch_9
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public e()Z
    .registers 2

    sget-boolean v0, Lcom/loc/af;->a:Z

    return v0
.end method

.method public f()Lcom/loc/bK;
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/loc/af;->beW:Lcom/loc/bP;

    if-eqz v0, :cond_21

    :try_start_5
    invoke-virtual {p0}, Lcom/loc/af;->g()Z

    iget-object v0, p0, Lcom/loc/af;->beX:Lcom/loc/bW;

    invoke-virtual {v0}, Lcom/loc/bW;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-boolean v0, Lcom/loc/at;->bfK:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/loc/af;->beW:Lcom/loc/bP;

    iget-object v1, p0, Lcom/loc/af;->beX:Lcom/loc/bW;

    invoke-virtual {v1}, Lcom/loc/bW;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loc/bP;->a(I)Lcom/loc/bK;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1f} :catch_24

    move-result-object v0

    return-object v0

    :cond_21
    return-object v3

    :cond_22
    return-object v3

    :cond_23
    return-object v3

    :catch_24
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "getWrapData"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public g()Z
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return v4

    :cond_6
    iget-object v0, p0, Lcom/loc/af;->beS:Lcom/loc/at;

    invoke-virtual {v0}, Lcom/loc/at;->k()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/loc/af;->beV:Lcom/loc/N;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/loc/N;->bwB(J)Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_24} :catch_26

    move-result v0

    return v0

    :catch_26
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "setUploadEnabled"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public h()I
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/af;->beW:Lcom/loc/bP;

    if-nez v0, :cond_6

    :goto_4
    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/loc/af;->beW:Lcom/loc/bP;

    invoke-virtual {v0}, Lcom/loc/bP;->a()I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    return v0

    :catch_d
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "getLeftUploadNum"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

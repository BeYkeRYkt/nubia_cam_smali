.class public Lcom/loc/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:J

.field private static bkx:I


# instance fields
.field public b:Z

.field private bjA:Ljava/util/ArrayList;

.field private bjB:Ljava/util/ArrayList;

.field private bjC:Ljava/util/HashMap;

.field private bjD:Lcom/loc/v;

.field private bjE:Landroid/net/wifi/WifiInfo;

.field private bjF:Lorg/json/JSONObject;

.field private bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field private bjH:J

.field private bjI:J

.field private bjJ:Z

.field private bjK:Z

.field private bjL:J

.field private bjM:J

.field private bjN:I

.field private bjO:Ljava/lang/String;

.field private bjP:Ljava/lang/String;

.field private bjQ:Lcom/loc/t;

.field private bjR:Ljava/util/Timer;

.field private bjS:Ljava/util/TimerTask;

.field private bjT:I

.field private bjU:Lcom/loc/af;

.field private bjV:Lcom/loc/bK;

.field private bjW:[I

.field private bjX:Ljava/lang/String;

.field private bjY:Ljava/lang/String;

.field private bjZ:J

.field private bjw:Landroid/content/Context;

.field private bjx:Landroid/net/ConnectivityManager;

.field private bjy:Lcom/loc/r;

.field private bjz:Lcom/loc/aI;

.field bkA:Ljava/lang/StringBuilder;

.field private bkB:Z

.field private bka:J

.field private bkb:Ljava/lang/String;

.field private bkc:Lcom/loc/am;

.field private bkd:Lcom/loc/bu;

.field private bke:Ljava/lang/StringBuilder;

.field bkf:Lcom/loc/bi;

.field bkg:Z

.field private bkh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field private bki:Ljava/lang/String;

.field private bkj:Ljava/util/Timer;

.field private bkk:Ljava/util/TimerTask;

.field private bkl:Ljava/lang/String;

.field private bkm:I

.field private bkn:I

.field private bko:Z

.field private bkp:Z

.field private bkq:Z

.field bkr:Ljava/lang/Object;

.field public bks:Z

.field private bkt:Z

.field bku:I

.field bkv:Ljava/util/TreeMap;

.field bkw:Lcom/loc/co;

.field private bky:Ljava/lang/String;

.field private bkz:Ljava/lang/String;

.field d:I

.field j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/loc/cd;->a:J

    const/4 v0, -0x1

    sput v0, Lcom/loc/cd;->bkx:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 8

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    iput-object v2, p0, Lcom/loc/cd;->bjx:Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    iput-object v2, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/cd;->bjB:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loc/cd;->bjC:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/loc/cd;->bjD:Lcom/loc/v;

    iput-object v2, p0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    iput-object v2, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    iput-object v2, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-wide v4, p0, Lcom/loc/cd;->bjH:J

    iput-wide v4, p0, Lcom/loc/cd;->bjI:J

    iput-boolean v3, p0, Lcom/loc/cd;->bjJ:Z

    iput-boolean v3, p0, Lcom/loc/cd;->bjK:Z

    iput-wide v4, p0, Lcom/loc/cd;->bjL:J

    iput-wide v4, p0, Lcom/loc/cd;->bjM:J

    iput v3, p0, Lcom/loc/cd;->bjN:I

    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/loc/cd;->bjO:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/cd;->bjP:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    iput-object v2, p0, Lcom/loc/cd;->bjR:Ljava/util/Timer;

    iput-object v2, p0, Lcom/loc/cd;->bjS:Ljava/util/TimerTask;

    iput v3, p0, Lcom/loc/cd;->bjT:I

    iput-object v2, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    iput-object v2, p0, Lcom/loc/cd;->bjV:Lcom/loc/bK;

    iput-boolean v3, p0, Lcom/loc/cd;->b:Z

    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v3, v0, v6

    const/4 v1, 0x2

    aput v3, v0, v1

    iput-object v0, p0, Lcom/loc/cd;->bjW:[I

    iput-object v2, p0, Lcom/loc/cd;->bjX:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/cd;->bjY:Ljava/lang/String;

    iput-wide v4, p0, Lcom/loc/cd;->bjZ:J

    iput-wide v4, p0, Lcom/loc/cd;->bka:J

    iput-object v2, p0, Lcom/loc/cd;->bkb:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/cd;->bkc:Lcom/loc/am;

    iput-object v2, p0, Lcom/loc/cd;->bkd:Lcom/loc/bu;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/cd;->d:I

    iput-boolean v3, p0, Lcom/loc/cd;->bkg:Z

    iput-object v2, p0, Lcom/loc/cd;->bkh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-object v2, p0, Lcom/loc/cd;->bki:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/cd;->bkj:Ljava/util/Timer;

    iput-object v2, p0, Lcom/loc/cd;->bkk:Ljava/util/TimerTask;

    iput-object v2, p0, Lcom/loc/cd;->bkl:Ljava/lang/String;

    iput v3, p0, Lcom/loc/cd;->bkm:I

    iput v3, p0, Lcom/loc/cd;->bkn:I

    iput-boolean v6, p0, Lcom/loc/cd;->bko:Z

    iput-boolean v6, p0, Lcom/loc/cd;->bkp:Z

    iput-boolean v6, p0, Lcom/loc/cd;->bkq:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/cd;->bkr:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/loc/cd;->bks:Z

    iput-boolean v3, p0, Lcom/loc/cd;->bkt:Z

    const/16 v0, 0xc

    iput v0, p0, Lcom/loc/cd;->bku:I

    iput-object v2, p0, Lcom/loc/cd;->bkv:Ljava/util/TreeMap;

    iput-boolean v6, p0, Lcom/loc/cd;->j:Z

    new-instance v0, Lcom/loc/co;

    invoke-direct {v0, p0}, Lcom/loc/co;-><init>(Lcom/loc/cd;)V

    iput-object v0, p0, Lcom/loc/cd;->bkw:Lcom/loc/co;

    iput-object v2, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/cd;->bkz:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    iput-boolean v3, p0, Lcom/loc/cd;->bkB:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 15

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/loc/bR;->f()Z

    move-result v0

    if-eqz v0, :cond_22

    if-nez p1, :cond_23

    :cond_a
    invoke-direct {p0}, Lcom/loc/cd;->bFb()V

    invoke-static {}, Lcom/loc/p;->a()Lcom/loc/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/p;->b()Ljava/util/ArrayList;

    move-result-object v8

    :try_start_15
    invoke-static {}, Lcom/loc/by;->b()Z

    move-result v0

    if-nez v0, :cond_32

    :cond_1b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1e} :catch_92

    move-result v7

    if-nez v7, :cond_8a

    :goto_21
    return-object v11

    :cond_22
    return-object v11

    :cond_23
    iget-object v0, p0, Lcom/loc/cd;->bki:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/cd;->bkh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/cd;->bkh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    return-object v0

    :cond_32
    const/4 v0, 0x0

    :try_start_33
    invoke-static {p1, v0}, Lcom/loc/by;->bBO(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v7, v6

    :goto_3e
    if-ge v7, v10, :cond_1b

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/loc/cd;->bFd(Ljava/lang/String;Ljava/lang/String;[DLjava/lang/String;I)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_69

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3e

    :cond_69
    iput-object p1, p0, Lcom/loc/cd;->bki:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/cd;->bkh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    return-object v0

    :cond_6e
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/au;

    invoke-virtual {v0}, Lcom/loc/au;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/loc/cd;->bFd(Ljava/lang/String;Ljava/lang/String;[DLjava/lang/String;I)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_8d

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    :cond_8a
    if-lt v6, v7, :cond_6e

    goto :goto_21

    :cond_8d
    iput-object p1, p0, Lcom/loc/cd;->bki:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/cd;->bkh:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_91} :catch_92

    return-object v0

    :catch_92
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "getPureOfflineLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method private a(I)Z
    .registers 7

    const/16 v1, 0x14

    const/4 v0, 0x1

    const/16 v2, 0x14

    :try_start_5
    invoke-static {p1, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_8
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_8} :catch_d

    move-result v1

    :goto_9
    if-ge v1, v0, :cond_c

    const/4 v0, 0x0

    :cond_c
    return v0

    :catch_d
    move-exception v2

    const-string/jumbo v3, "APS"

    const-string/jumbo v4, "wifiSigFine"

    invoke-static {v2, v3, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private a(J)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-ltz v2, :cond_24

    move v2, v1

    :goto_e
    if-nez v2, :cond_23

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v4}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v4

    if-nez v4, :cond_26

    :goto_1a
    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gtz v2, :cond_32

    move v2, v1

    :goto_21
    if-nez v2, :cond_34

    :cond_23
    :goto_23
    return v0

    :cond_24
    move v2, v0

    goto :goto_e

    :cond_26
    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHS()J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_1a

    :cond_32
    move v2, v0

    goto :goto_21

    :cond_34
    move v0, v1

    goto :goto_23
.end method

.method private bEA()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/cd;->bjM:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/loc/cd;->bkr:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/loc/cd;->bjB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/loc/cd;->bjC:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_16

    throw v0
.end method

.method private bEB()V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/loc/cd;->bEC()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/loc/X;->c()I

    move-result v0

    const/16 v2, 0x12

    if-lt v0, v2, :cond_16

    :cond_f
    :goto_f
    move v0, v1

    :goto_10
    if-nez v0, :cond_44

    :cond_12
    :goto_12
    if-eqz v1, :cond_5e

    :cond_14
    :goto_14
    return-void

    :cond_15
    return-void

    :cond_16
    invoke-static {}, Lcom/loc/X;->c()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_f

    iget-object v0, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v2, "wifiactivescan"

    invoke-static {v0, v2}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :try_start_28
    const-string/jumbo v0, "1"

    iget-object v2, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v3, "wifiactivescan"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_37} :catch_39

    move-result v0

    goto :goto_10

    :catch_39
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "updateWifi part1"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    invoke-virtual {v0}, Lcom/loc/r;->e()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/cd;->bjL:J
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_52} :catch_53

    goto :goto_12

    :catch_53
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "updateWifi part"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    invoke-virtual {v0}, Lcom/loc/r;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/cd;->bjL:J
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_6c} :catch_6d

    goto :goto_14

    :catch_6d
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "updateWifi"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method private bEC()Z
    .registers 2

    iget-object v0, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    invoke-virtual {v0}, Lcom/loc/r;->f()Z

    move-result v0

    return v0
.end method

.method private bED()Z
    .registers 2

    iget-object v0, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private bEE()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/loc/cd;->bED()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    invoke-virtual {v1}, Lcom/loc/af;->e()Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    :cond_d
    :goto_d
    return v0

    :catch_e
    move-exception v1

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "collStarted"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method private bEF()V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/loc/cd;->bED()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v3, "coll"

    invoke-static {v2, v3}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    :cond_13
    :goto_13
    if-eqz v0, :cond_50

    invoke-direct {p0}, Lcom/loc/cd;->bEE()Z

    move-result v0

    if-nez v0, :cond_54

    :try_start_1b
    iget-object v0, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    sget v1, Lcom/loc/bx;->l:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/loc/af;->bxJ(I)V

    invoke-direct {p0}, Lcom/loc/cd;->bEO()V

    invoke-direct {p0}, Lcom/loc/cd;->bEG()V

    iget-object v0, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    invoke-virtual {v0}, Lcom/loc/af;->b()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_2f} :catch_55

    :goto_2f
    return-void

    :cond_30
    return-void

    :cond_31
    :try_start_31
    iget-object v2, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v3, "coll"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_40} :catch_45

    move-result v2

    if-eqz v2, :cond_13

    move v0, v1

    goto :goto_13

    :catch_45
    move-exception v1

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "start3rdCM"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_50
    invoke-direct {p0}, Lcom/loc/cd;->bEH()V

    return-void

    :cond_54
    return-void

    :catch_55
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "start3rdCM"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method private bEG()V
    .registers 4

    invoke-direct {p0}, Lcom/loc/cd;->bED()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/loc/cd;->bED()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_c
    :try_start_c
    invoke-direct {p0}, Lcom/loc/cd;->bED()Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_26

    move-result v0

    if-nez v0, :cond_1d

    :cond_12
    :goto_12
    return-void

    :cond_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    invoke-virtual {v0}, Lcom/loc/af;->h()I

    move-result v0

    if-lez v0, :cond_c

    return-void

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    invoke-virtual {v0}, Lcom/loc/af;->g()Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_22} :catch_26

    move-result v0

    if-nez v0, :cond_12

    goto :goto_12

    :catch_26
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "collFileSwitch"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method private bEH()V
    .registers 4

    invoke-direct {p0}, Lcom/loc/cd;->bEE()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x14

    sput v0, Lcom/loc/bx;->l:I

    :try_start_a
    iget-object v0, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    invoke-virtual {v0}, Lcom/loc/af;->d()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_11

    :goto_f
    return-void

    :cond_10
    return-void

    :catch_11
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "stop3rdCM"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method private bEI(Landroid/content/SharedPreferences;)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_19

    const-string/jumbo v2, "smac"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    :goto_10
    move-object v0, v1

    :goto_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    :cond_17
    :goto_17
    return-void

    :cond_18
    return-void

    :cond_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    :try_start_1b
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/String;

    invoke-static {v3}, Lcom/loc/cz;->b(Ljava/lang/String;)[B

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_2b} :catch_2c

    goto :goto_11

    :catch_2c
    move-exception v0

    const-string/jumbo v3, "APS"

    const-string/jumbo v4, "getSmac"

    invoke-static {v0, v3, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_10

    :cond_42
    const-string/jumbo v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iput-object v0, p0, Lcom/loc/cd;->bjO:Ljava/lang/String;

    goto :goto_17
.end method

.method private bEJ()V
    .registers 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/loc/cd;->bjO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    :try_start_17
    iget-object v0, p0, Lcom/loc/cd;->bjO:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cz;->a([B)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_23} :catch_2d

    move-result-object v0

    :goto_24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    :goto_2a
    return-void

    :cond_2b
    return-void

    :cond_2c
    return-void

    :catch_2d
    move-exception v0

    const-string/jumbo v3, "APS"

    const-string/jumbo v4, "setSmac"

    invoke-static {v0, v3, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_24

    :cond_39
    const-string/jumbo v1, "smac"

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2a
.end method

.method private bEK()V
    .registers 2

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bx;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bx;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bx;->g:Ljava/lang/String;

    return-void
.end method

.method private bEL(I)V
    .registers 8

    const v1, 0x282fffff

    const v0, 0x42fffff

    invoke-direct {p0}, Lcom/loc/cd;->bED()Z

    move-result v2

    if-eqz v2, :cond_39

    :try_start_c
    invoke-direct {p0}, Lcom/loc/cd;->bEO()V

    packed-switch p1, :pswitch_data_10c

    :goto_12
    :pswitch_12
    iget-object v1, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3}, Lcom/loc/cd;->bEP(III)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/loc/af;->bxI(Lcom/loc/bK;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    invoke-virtual {v1}, Lcom/loc/af;->f()Lcom/loc/bK;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/cd;->bjV:Lcom/loc/bK;

    iget-object v1, p0, Lcom/loc/cd;->bjV:Lcom/loc/bK;

    if-nez v1, :cond_46

    :cond_2a
    :goto_2a
    invoke-direct {p0}, Lcom/loc/cd;->bEG()V

    invoke-direct {p0}, Lcom/loc/cd;->bED()Z

    move-result v0

    if-nez v0, :cond_f9

    :cond_33
    iget v0, p0, Lcom/loc/cd;->bjT:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_106

    :goto_38
    return-void

    :cond_39
    return-void

    :cond_3a
    :pswitch_3a
    move v0, v1

    goto :goto_12

    :pswitch_3c
    invoke-direct {p0}, Lcom/loc/cd;->bEQ()Z

    move-result v0

    if-eqz v0, :cond_3a

    const v0, 0x7c2fffff

    goto :goto_12

    :cond_46
    iget-object v1, p0, Lcom/loc/cd;->bjV:Lcom/loc/bK;

    invoke-virtual {v1}, Lcom/loc/bK;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/loc/cd;->bkd:Lcom/loc/bu;

    iget-object v3, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    const-string/jumbo v4, "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&"

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/loc/bu;->bBm([BLandroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/loc/cd;->bED()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_83

    :cond_64
    iget v1, p0, Lcom/loc/cd;->bjT:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/loc/cd;->bjT:I

    iget-object v1, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    iget-object v2, p0, Lcom/loc/cd;->bjV:Lcom/loc/bK;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4}, Lcom/loc/cd;->bEP(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/loc/af;->bxI(Lcom/loc/bK;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_77} :catch_78

    goto :goto_2a

    :catch_78
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "up"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_83
    :try_start_83
    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    iget-object v3, p0, Lcom/loc/cd;->bjV:Lcom/loc/bK;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, v4, v0, v5}, Lcom/loc/cd;->bEP(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/loc/af;->bxI(Lcom/loc/bK;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const-string/jumbo v0, "yyyyMMdd"

    invoke-static {v2, v3, v0}, Lcom/loc/X;->bxu(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/cd;->bjW:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_ae} :catch_78

    move-result v2

    if-nez v2, :cond_d1

    :try_start_b1
    iget-object v2, p0, Lcom/loc/cd;->bjW:[I

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v2, v3
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_ba} :catch_dc
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_ba} :catch_78

    :goto_ba
    :try_start_ba
    iget-object v0, p0, Lcom/loc/cd;->bjW:[I

    const/4 v2, 0x1

    array-length v1, v1

    aput v1, v0, v2

    :goto_c0
    iget-object v0, p0, Lcom/loc/cd;->bjW:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/loc/cd;->bjW:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    invoke-direct {p0}, Lcom/loc/cd;->bEW()V

    goto/16 :goto_2a

    :cond_d1
    iget-object v0, p0, Lcom/loc/cd;->bjW:[I

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v0, v3

    array-length v1, v1

    add-int/2addr v1, v3

    aput v1, v0, v2

    goto :goto_c0

    :catch_dc
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "up part"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/cd;->bjW:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    iget-object v0, p0, Lcom/loc/cd;->bjW:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v0, v2

    iget-object v0, p0, Lcom/loc/cd;->bjW:[I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v0, v2

    goto :goto_ba

    :cond_f9
    iget-object v0, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    invoke-virtual {v0}, Lcom/loc/af;->h()I

    move-result v0

    if-nez v0, :cond_33

    invoke-direct {p0}, Lcom/loc/cd;->bEN()V

    goto/16 :goto_38

    :cond_106
    invoke-direct {p0}, Lcom/loc/cd;->bEN()V
    :try_end_109
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_109} :catch_78

    goto/16 :goto_38

    nop

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_12
        :pswitch_3a
        :pswitch_3c
    .end packed-switch
.end method

.method private bEM(I)V
    .registers 8

    const-wide/16 v2, 0x7d0

    iget-object v0, p0, Lcom/loc/cd;->bjS:Ljava/util/TimerTask;

    if-eqz v0, :cond_b

    :goto_6
    iget-object v0, p0, Lcom/loc/cd;->bjR:Ljava/util/Timer;

    if-eqz v0, :cond_13

    :goto_a
    return-void

    :cond_b
    new-instance v0, Lcom/loc/az;

    invoke-direct {v0, p0, p1}, Lcom/loc/az;-><init>(Lcom/loc/cd;I)V

    iput-object v0, p0, Lcom/loc/cd;->bjS:Ljava/util/TimerTask;

    goto :goto_6

    :cond_13
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "T-U"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/loc/cd;->bjR:Ljava/util/Timer;

    iget-object v0, p0, Lcom/loc/cd;->bjR:Ljava/util/Timer;

    iget-object v1, p0, Lcom/loc/cd;->bjS:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_a
.end method

.method private declared-synchronized bEN()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/loc/cd;->bjS:Ljava/util/TimerTask;

    if-nez v0, :cond_b

    :goto_5
    iget-object v0, p0, Lcom/loc/cd;->bjR:Ljava/util/Timer;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_14

    if-nez v0, :cond_17

    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/loc/cd;->bjS:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->bjS:Ljava/util/TimerTask;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_14

    goto :goto_5

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/loc/cd;->bjR:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/loc/cd;->bjR:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->bjR:Ljava/util/Timer;
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_14

    goto :goto_9
.end method

.method private bEO()V
    .registers 4

    invoke-direct {p0}, Lcom/loc/cd;->bED()Z

    move-result v0

    if-eqz v0, :cond_e

    :try_start_6
    iget-object v0, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Lcom/loc/af;->a(I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_d} :catch_f

    :goto_d
    return-void

    :cond_e
    return-void

    :catch_f
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "setCollSize"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method private bEP(III)Ljava/lang/String;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "e"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "d"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bEQ()Z
    .registers 3

    iget-object v0, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    if-nez v0, :cond_6

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/loc/cd;->bjx:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    iget-object v1, p0, Lcom/loc/cd;->bjx:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/loc/r;->bwi(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method

.method private bER()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v1, "poiid"

    invoke-static {v0, v1}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    iput-object v2, p0, Lcom/loc/cd;->bjP:Ljava/lang/String;

    :goto_e
    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v1, "poiid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_38

    iput-object v0, p0, Lcom/loc/cd;->bjP:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_28} :catch_29

    goto :goto_e

    :catch_29
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "setPoiid"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_34
    const/4 v0, 0x0

    :try_start_35
    iput-object v0, p0, Lcom/loc/cd;->bjP:Ljava/lang/String;

    goto :goto_e

    :cond_38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->bjP:Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3b} :catch_29

    goto :goto_e
.end method

.method private bES()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    const-string/jumbo v0, "version"

    invoke-static {v0}, Lcom/loc/af;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "getCollVer"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_8
.end method

.method private bET()V
    .registers 3

    iget-object v0, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/loc/cd;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    iget-boolean v1, p0, Lcom/loc/cd;->b:Z

    invoke-virtual {v0, v1}, Lcom/loc/r;->a(Z)V

    return-void
.end method

.method private bEU()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/loc/bx;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/loc/bx;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x1

    return v0

    :cond_17
    iget-object v0, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    :cond_20
    iget-object v0, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "src is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    :cond_29
    iget-object v0, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "license is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2
.end method

.method private bEV(Landroid/content/SharedPreferences;)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_1b

    const-string/jumbo v2, "coluphist"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_19
    :goto_19
    return-void

    :cond_1a
    return-void

    :cond_1b
    return-void

    :cond_1c
    :try_start_1c
    const-string/jumbo v2, "coluphist"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cz;->a([B)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_36
    const/4 v3, 0x3

    if-ge v0, v3, :cond_19

    iget-object v3, p0, Lcom/loc/cd;->bjW:[I

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_43} :catch_46

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :catch_46
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "getColUpHist"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "coluphist"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_19
.end method

.method private bEW()V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/loc/cd;->bjW:[I

    aget v0, v0, v1

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_4c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_1c
    iget-object v4, p0, Lcom/loc/cd;->bjW:[I

    array-length v4, v4

    if-lt v0, v4, :cond_4d

    :try_start_21
    iget-object v0, p0, Lcom/loc/cd;->bjW:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cz;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "coluphist"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_42} :catch_5e

    :goto_42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void

    :cond_4a
    return-void

    :cond_4b
    return-void

    :cond_4c
    return-void

    :cond_4d
    iget-object v4, p0, Lcom/loc/cd;->bjW:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :catch_5e
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v4, "setColUpHist"

    invoke-static {v0, v2, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method

.method private declared-synchronized bEX()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/loc/cd;->bky:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_31

    if-nez v0, :cond_27

    :goto_5
    :try_start_5
    iget-boolean v0, p0, Lcom/loc/cd;->bjJ:Z

    if-eqz v0, :cond_34

    :goto_9
    invoke-virtual {p0}, Lcom/loc/cd;->e()V

    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    if-nez v0, :cond_48

    :cond_10
    :goto_10
    invoke-virtual {p0}, Lcom/loc/cd;->f()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_13} :catch_3d
    .catchall {:try_start_5 .. :try_end_13} :catchall_31

    :goto_13
    const/4 v0, 0x0

    :try_start_14
    invoke-virtual {p0, v0}, Lcom/loc/cd;->a(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7d

    :goto_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cd;->bkB:Z
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_31

    monitor-exit p0

    return-void

    :cond_27
    const/4 v0, 0x0

    :try_start_28
    iput-object v0, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->bkz:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_31

    goto :goto_5

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    iget-boolean v1, p0, Lcom/loc/cd;->bjJ:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loc/aI;->bzv(ZZ)Landroid/telephony/CellLocation;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3c} :catch_3d
    .catchall {:try_start_34 .. :try_end_3c} :catchall_31

    goto :goto_9

    :catch_3d
    move-exception v0

    :try_start_3e
    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "initFirstLocateParam"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_31

    goto :goto_13

    :cond_48
    :try_start_48
    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/cd;->bjM:J

    iget-object v0, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    invoke-virtual {v0}, Lcom/loc/r;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/loc/cd;->bkr:Ljava/lang/Object;

    monitor-enter v1
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_66} :catch_3d
    .catchall {:try_start_48 .. :try_end_66} :catchall_31

    :try_start_66
    iget-object v2, p0, Lcom/loc/cd;->bjB:Ljava/util/ArrayList;

    if-nez v2, :cond_6f

    :cond_6a
    :goto_6a
    monitor-exit v1

    goto :goto_10

    :catchall_6c
    move-exception v0

    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v0
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6f} :catch_3d
    .catchall {:try_start_6e .. :try_end_6f} :catchall_31

    :cond_6f
    :try_start_6f
    iget-object v2, p0, Lcom/loc/cd;->bjB:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/loc/cd;->bjB:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_7c
    .catchall {:try_start_6f .. :try_end_7c} :catchall_6c

    goto :goto_6a

    :cond_7d
    :try_start_7d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/cd;->bkp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/cd;->bko:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->bkz:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/loc/cd;->bEw(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;
    :try_end_af
    .catchall {:try_start_7d .. :try_end_af} :catchall_31

    goto/16 :goto_22
.end method

.method private bEt(ZI)V
    .registers 3

    if-eqz p1, :cond_6

    invoke-direct {p0, p2}, Lcom/loc/cd;->bEM(I)V

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/loc/cd;->bEN()V

    goto :goto_5
.end method

.method private bEv(Landroid/net/wifi/WifiInfo;)Z
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

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

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

    goto :goto_5
.end method

.method private bEx()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/cd;->bjP:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/loc/cd;->bEC()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-wide v2, p0, Lcom/loc/cd;->bjL:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    :cond_18
    :goto_18
    return v0

    :cond_19
    return v0

    :cond_1a
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/cd;->bjL:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2c

    move v2, v0

    :goto_28
    if-nez v2, :cond_2e

    :cond_2a
    :goto_2a
    move v0, v1

    goto :goto_18

    :cond_2c
    move v2, v1

    goto :goto_28

    :cond_2e
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/cd;->bjM:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3f

    move v2, v0

    :goto_3c
    if-nez v2, :cond_18

    goto :goto_2a

    :cond_3f
    move v2, v1

    goto :goto_3c
.end method

.method private bEy(ZZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 15

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x6

    if-eqz p1, :cond_27

    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/loc/cd;->m()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_4c

    new-instance v6, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v6}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    new-instance v7, Lcom/loc/L;

    invoke-direct {v7}, Lcom/loc/L;-><init>()V

    :try_start_12
    iget-object v0, p0, Lcom/loc/cd;->bkd:Lcom/loc/bu;

    iget-object v1, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    invoke-static {}, Lcom/loc/bx;->a()Ljava/lang/String;

    move-result-object v4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/loc/bu;->bBl(Landroid/content/Context;Lorg/json/JSONObject;Lcom/loc/t;Ljava/lang/String;Z)[B
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_22} :catch_7d

    move-result-object v0

    if-eqz p1, :cond_98

    move-object v0, v6

    :goto_26
    return-object v0

    :cond_27
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/loc/cd;->a:J

    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHy(I)V

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V

    return-object v0

    :catch_4c
    move-exception v0

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get parames error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHy(I)V

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V

    return-object v0

    :catch_7d
    move-exception v0

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {v0, v9}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHy(I)V

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "please check the network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V

    return-object v0

    :cond_98
    if-nez v0, :cond_b4

    :cond_9a
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {v0, v9}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHy(I)V

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "please check the network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V

    return-object v0

    :cond_b4
    array-length v1, v0

    if-eqz v1, :cond_9a

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v2, "\"status\":\"0\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f4

    invoke-static {v0}, Lcom/loc/ai;->a([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f9

    invoke-virtual {v7, v0}, Lcom/loc/L;->a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-nez v0, :cond_113

    if-nez v1, :cond_12c

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {v0, v8}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHy(I)V

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "location is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V

    return-object v0

    :cond_f4
    invoke-virtual {v7, v1}, Lcom/loc/L;->b(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0

    :cond_f9
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {v0, v10}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHy(I)V

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "decrypt response data error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V

    return-object v0

    :cond_113
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIH()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_119

    :cond_119
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHv()I

    move-result v0

    if-eqz v0, :cond_171

    :cond_11f
    :goto_11f
    iget-boolean v0, p0, Lcom/loc/cd;->bkp:Z

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHE(Z)V

    iget-boolean v0, p0, Lcom/loc/cd;->bko:Z

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHG(Z)V

    move-object v0, v1

    goto/16 :goto_26

    :cond_12c
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->bjX:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHy(I)V

    iget-object v2, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "location faile retype:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " rdesc:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/loc/cd;->bjX:Ljava/lang/String;

    if-nez v0, :cond_16e

    const-string/jumbo v0, "null"

    :goto_159
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V

    return-object v1

    :cond_16e
    iget-object v0, p0, Lcom/loc/cd;->bjX:Ljava/lang/String;

    goto :goto_159

    :cond_171
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHw()I

    move-result v0

    if-nez v0, :cond_11f

    const-string/jumbo v0, "-5"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18f

    :cond_184
    invoke-virtual {v1, v10}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHx(I)V

    :goto_187
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V

    goto :goto_11f

    :cond_18f
    const-string/jumbo v0, "1"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_184

    const-string/jumbo v0, "2"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_184

    const-string/jumbo v0, "14"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_184

    const-string/jumbo v0, "24"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_184

    const-string/jumbo v0, "-1"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_184

    invoke-virtual {v1, v8}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHx(I)V

    goto :goto_187
.end method

.method private bEz()Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-wide v2, Lcom/loc/cd;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    return v0

    :cond_b
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/loc/cd;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1c

    move v2, v0

    :goto_19
    if-nez v2, :cond_1e

    :goto_1b
    return v0

    :cond_1c
    move v2, v1

    goto :goto_19

    :cond_1e
    move v0, v1

    goto :goto_1b
.end method

.method static synthetic bFA(Lcom/loc/cd;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/cd;->bFf()V

    return-void
.end method

.method private bFa()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->bkh:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-object v0, p0, Lcom/loc/cd;->bki:Ljava/lang/String;

    return-void
.end method

.method private bFb()V
    .registers 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/loc/bR;->f()Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/loc/by;->a:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_36

    iget-object v0, p0, Lcom/loc/cd;->bkj:Ljava/util/Timer;

    if-nez v0, :cond_3a

    :cond_14
    new-instance v0, Lcom/loc/bq;

    invoke-direct {v0, p0}, Lcom/loc/bq;-><init>(Lcom/loc/cd;)V

    iput-object v0, p0, Lcom/loc/cd;->bkk:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "T-O"

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/loc/cd;->bkj:Ljava/util/Timer;

    iget-object v0, p0, Lcom/loc/cd;->bkj:Ljava/util/Timer;

    iget-object v1, p0, Lcom/loc/cd;->bkk:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void

    :cond_32
    invoke-direct {p0}, Lcom/loc/cd;->bFc()V

    return-void

    :cond_36
    invoke-direct {p0}, Lcom/loc/cd;->bFc()V

    return-void

    :cond_3a
    iget-object v0, p0, Lcom/loc/cd;->bkk:Ljava/util/TimerTask;

    if-eqz v0, :cond_14

    return-void
.end method

.method private bFc()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/cd;->bkk:Ljava/util/TimerTask;

    if-nez v0, :cond_a

    :goto_5
    iget-object v0, p0, Lcom/loc/cd;->bkj:Ljava/util/Timer;

    if-nez v0, :cond_12

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/loc/cd;->bkk:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/loc/cd;->bkk:Ljava/util/TimerTask;

    goto :goto_5

    :cond_12
    iget-object v0, p0, Lcom/loc/cd;->bkj:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/loc/cd;->bkj:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v1, p0, Lcom/loc/cd;->bkj:Ljava/util/Timer;

    goto :goto_9
.end method

.method private bFd(Ljava/lang/String;Ljava/lang/String;[DLjava/lang/String;I)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 14

    const/4 v7, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/loc/X;->k()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    move-object v0, p3

    :goto_12
    invoke-static {}, Lcom/loc/X;->b()J

    const/4 v1, 0x2

    new-array v6, v1, [I

    iget v1, p0, Lcom/loc/cd;->bkn:I

    aput v1, v6, v2

    iget v1, p0, Lcom/loc/cd;->bkm:I

    aput v1, v6, v7

    iget-object v5, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    invoke-static/range {v0 .. v6}, Lcom/loc/by;->bBF([DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;[I)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0

    :cond_2b
    return-object v3

    :cond_2c
    if-eqz p3, :cond_3b

    :goto_2e
    aget-wide v0, p3, v2

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_3a

    aget-wide v0, p3, v7

    cmpl-double v0, v0, v4

    if-nez v0, :cond_40

    :cond_3a
    return-object v3

    :cond_3b
    invoke-direct {p0}, Lcom/loc/cd;->bFg()[D

    move-result-object p3

    goto :goto_2e

    :cond_40
    move-object v0, p3

    goto :goto_12
.end method

.method private bFe()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/cd;->bkm:I

    iput v0, p0, Lcom/loc/cd;->bkn:I

    return-void
.end method

.method private bFf()V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    if-eqz v0, :cond_48

    sget-object v0, Lcom/loc/by;->a:[I

    aget v0, v0, v1

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_4a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "activityoffdl"

    move v0, v1

    :goto_1f
    sget-object v5, Lcom/loc/by;->a:[I

    array-length v5, v5

    if-lt v0, v5, :cond_4b

    :try_start_24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/X;->bxp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_40} :catch_5c

    :goto_40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void

    :cond_48
    return-void

    :cond_49
    return-void

    :cond_4a
    return-void

    :cond_4b
    sget-object v5, Lcom/loc/by;->a:[I

    aget v5, v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :catch_5c
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v4, "setOffDlHist"

    invoke-static {v0, v2, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method private bFg()[D
    .registers 7

    const/4 v5, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [D

    iget-object v1, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v1}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_14

    aput-wide v2, v0, v4

    aput-wide v2, v0, v5

    :goto_13
    return-object v0

    :cond_14
    iget-object v1, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHL()D

    move-result-wide v2

    aput-wide v2, v0, v4

    iget-object v1, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHI()D

    move-result-wide v2

    aput-wide v2, v0, v5

    goto :goto_13
.end method

.method private bFh(Landroid/content/SharedPreferences;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    const-string/jumbo v1, "activityoffdl"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    :goto_c
    return-void

    :cond_d
    return-void

    :cond_e
    const/4 v2, 0x0

    :try_start_f
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/X;->bxr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_1e
    const/4 v3, 0x2

    if-ge v0, v3, :cond_c

    sget-object v3, Lcom/loc/by;->a:[I

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_2b} :catch_2e

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :catch_2e
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "getOffDlHist"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_c
.end method

.method private bFi()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/loc/cd;->bkb:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/cd;->bka:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/loc/cd;->a:J

    invoke-static {}, Lcom/loc/d;->a()Lcom/loc/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/d;->b()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "cleanCache"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method static synthetic bFj(Lcom/loc/cd;)Lcom/loc/r;
    .registers 2

    iget-object v0, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    return-object v0
.end method

.method static synthetic bFk(Lcom/loc/cd;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/loc/cd;->bjB:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic bFl(Lcom/loc/cd;)Lcom/loc/af;
    .registers 2

    iget-object v0, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    return-object v0
.end method

.method static synthetic bFm(Lcom/loc/cd;J)J
    .registers 4

    iput-wide p1, p0, Lcom/loc/cd;->bjM:J

    return-wide p1
.end method

.method static synthetic bFn(Lcom/loc/cd;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/loc/cd;->bjB:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic bFo(Lcom/loc/cd;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/cd;->bEA()V

    return-void
.end method

.method static synthetic bFp(Lcom/loc/cd;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/cd;->bEH()V

    return-void
.end method

.method static synthetic bFq(Lcom/loc/cd;)Z
    .registers 2

    invoke-direct {p0}, Lcom/loc/cd;->bEQ()Z

    move-result v0

    return v0
.end method

.method static synthetic bFr(Lcom/loc/cd;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/loc/cd;->bEt(ZI)V

    return-void
.end method

.method static synthetic bFs(Lcom/loc/cd;)J
    .registers 3

    iget-wide v0, p0, Lcom/loc/cd;->bjI:J

    return-wide v0
.end method

.method static synthetic bFt(Lcom/loc/cd;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/cd;->bEL(I)V

    return-void
.end method

.method static synthetic bFu(Lcom/loc/cd;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/cd;->bEN()V

    return-void
.end method

.method static synthetic bFv(Lcom/loc/cd;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/cd;->bFc()V

    return-void
.end method

.method static synthetic bFw(Lcom/loc/cd;)Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic bFx(Lcom/loc/cd;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/cd;->bkl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bFy(Lcom/loc/cd;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/loc/cd;->bkl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic bFz(Lcom/loc/cd;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    return-object v0
.end method

.method private j()V
    .registers 6

    const/4 v1, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v2, "reversegeo"

    invoke-static {v0, v2}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_9} :catch_64

    move-result v0

    if-nez v0, :cond_3d

    move v2, v1

    :goto_d
    :try_start_d
    iget-object v0, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v3, "isOffset"

    invoke-static {v0, v3}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_15} :catch_69

    move-result v0

    if-nez v0, :cond_47

    move v3, v1

    :goto_19
    :try_start_19
    iget-object v0, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v4, "isLocationCacheEnable"

    invoke-static {v0, v4}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_21} :catch_6d

    move-result v0

    if-nez v0, :cond_51

    move v0, v1

    :goto_25
    :try_start_25
    iget-boolean v4, p0, Lcom/loc/cd;->bkp:Z

    if-eq v3, v4, :cond_5b

    :cond_29
    invoke-direct {p0}, Lcom/loc/cd;->bFi()V
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2c} :catch_70

    :goto_2c
    iput-boolean v3, p0, Lcom/loc/cd;->bkp:Z

    iput-boolean v2, p0, Lcom/loc/cd;->bko:Z

    iput-boolean v0, p0, Lcom/loc/cd;->bkq:Z

    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/X;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/cd;->bjJ:Z

    iput-boolean v1, p0, Lcom/loc/cd;->bkt:Z

    return-void

    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v2, "reversegeo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_45} :catch_64

    move-result v2

    goto :goto_d

    :cond_47
    :try_start_47
    iget-object v0, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v3, "isOffset"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_4f} :catch_69

    move-result v3

    goto :goto_19

    :cond_51
    :try_start_51
    iget-object v0, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v4, "isLocationCacheEnable"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_59} :catch_6d

    move-result v0

    goto :goto_25

    :cond_5b
    :try_start_5b
    iget-boolean v4, p0, Lcom/loc/cd;->bko:Z

    if-ne v2, v4, :cond_29

    iget-boolean v4, p0, Lcom/loc/cd;->bkq:Z
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_61} :catch_70

    if-ne v0, v4, :cond_29

    goto :goto_2c

    :catch_64
    move-exception v0

    move v0, v1

    move v2, v1

    move v3, v1

    goto :goto_2c

    :catch_69
    move-exception v0

    move v0, v1

    move v3, v1

    goto :goto_2c

    :catch_6d
    move-exception v0

    move v0, v1

    goto :goto_2c

    :catch_70
    move-exception v4

    goto :goto_2c
.end method

.method private k()V
    .registers 4

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/cd;->bjD:Lcom/loc/v;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/loc/cd;->bEB()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_39} :catch_3a

    :goto_39
    return-void

    :catch_3a
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "initBroadcastListener"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method

.method private l()V
    .registers 2

    iget-object v0, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    invoke-virtual {v0}, Lcom/loc/aI;->a()V

    iget-object v0, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    invoke-virtual {v0}, Lcom/loc/aI;->h()V

    return-void
.end method

.method private m()V
    .registers 25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/loc/cd;->bjJ:Z

    invoke-virtual {v2, v3}, Lcom/loc/aI;->a(Z)Z

    move-result v2

    if-nez v2, :cond_1f2

    :goto_e
    const-string/jumbo v5, "0"

    const-string/jumbo v11, "0"

    const-string/jumbo v12, "0"

    const-string/jumbo v13, "0"

    const-string/jumbo v14, "0"

    sget-object v15, Lcom/loc/bx;->h:Ljava/lang/String;

    const-string/jumbo v2, ""

    sput-object v2, Lcom/loc/bx;->c:Ljava/lang/String;

    const/16 v2, -0x8000

    const/16 v3, 0x7fff

    invoke-static {v2, v3}, Lcom/loc/X;->bxi(II)I

    move-result v16

    const-string/jumbo v7, ""

    const-string/jumbo v6, ""

    const-string/jumbo v8, ""

    sget-object v3, Lcom/loc/bx;->d:Ljava/lang/String;

    sget-object v2, Lcom/loc/bx;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/loc/cd;->bkp:Z

    if-eqz v4, :cond_1fb

    :goto_3f
    move-object v4, v3

    move-object v3, v2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    invoke-virtual {v2}, Lcom/loc/aI;->d()I

    move-result v20

    invoke-virtual {v2}, Lcom/loc/aI;->f()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v2}, Lcom/loc/aI;->b()Ljava/util/ArrayList;

    move-result-object v21

    const/4 v2, 0x2

    move/from16 v0, v20

    if-eq v0, v2, :cond_203

    move-object v10, v5

    :goto_66
    if-nez v9, :cond_209

    :cond_68
    :goto_68
    const/4 v5, 0x0

    :try_start_69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjx:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_70} :catch_262

    move-result-object v2

    :goto_71
    invoke-static {v2}, Lcom/loc/X;->bxl(Landroid/net/NetworkInfo;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_273

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    move-object v5, v6

    move-object v6, v7

    :goto_7f
    invoke-direct/range {p0 .. p0}, Lcom/loc/cd;->bER()V

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2ab

    :goto_88
    invoke-direct/range {p0 .. p0}, Lcom/loc/cd;->bEC()Z

    move-result v2

    if-nez v2, :cond_43b

    invoke-direct/range {p0 .. p0}, Lcom/loc/cd;->bEA()V

    :cond_91
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_513

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :goto_a2
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v9, "reversegeo"

    invoke-static {v2, v9}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_518

    :goto_b0
    move v2, v7

    :goto_b1
    if-eqz v2, :cond_533

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    const/4 v7, 0x0

    iput-short v7, v2, Lcom/loc/t;->b:S

    :goto_ba
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v7, "multi"

    invoke-static {v2, v7}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53c

    :cond_c7
    :goto_c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    iput-object v4, v2, Lcom/loc/t;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    iput-object v3, v2, Lcom/loc/t;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    invoke-static {}, Lcom/loc/X;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/t;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/loc/X;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/t;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/X;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/t;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    iput-object v10, v2, Lcom/loc/t;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    iput-object v11, v2, Lcom/loc/t;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/loc/cd;->bjK:Z

    if-nez v2, :cond_565

    const-string/jumbo v2, "0"

    :goto_122
    iput-object v2, v3, Lcom/loc/t;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    iput-object v12, v2, Lcom/loc/t;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    iput-object v13, v2, Lcom/loc/t;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    iput-object v14, v2, Lcom/loc/t;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    iput-object v15, v2, Lcom/loc/t;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    sget-object v3, Lcom/loc/bx;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/t;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    sget-object v3, Lcom/loc/bx;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/t;->q:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/t;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/cd;->bjO:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/t;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    invoke-virtual/range {p0 .. p0}, Lcom/loc/cd;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/t;->bdD:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    invoke-direct/range {p0 .. p0}, Lcom/loc/cd;->bES()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/t;->bdE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/cd;->bjP:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/t;->bdN:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    sget-object v3, Lcom/loc/bx;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/t;->bdC:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    iput-object v6, v2, Lcom/loc/t;->bdF:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    iput-object v5, v2, Lcom/loc/t;->bdG:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/t;->bdH:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    iput-object v8, v2, Lcom/loc/t;->bdI:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/t;->bdJ:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/t;->bdL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/loc/cd;->bjM:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/t;->bdM:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/t;->bdK:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void

    :cond_1f2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    invoke-virtual {v2}, Lcom/loc/aI;->h()V

    goto/16 :goto_e

    :cond_1fb
    const-string/jumbo v3, "UC_nlp_20131029"

    const-string/jumbo v2, "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U"

    goto/16 :goto_3f

    :cond_203
    const-string/jumbo v2, "1"

    move-object v10, v2

    goto/16 :goto_66

    :cond_209
    sget-object v2, Lcom/loc/bx;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_230

    :goto_211
    sget-object v2, Lcom/loc/bx;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_248

    :goto_219
    sget-object v2, Lcom/loc/bx;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24e

    :goto_221
    sget-object v2, Lcom/loc/bx;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_68

    const-string/jumbo v2, "888888888888888"

    sput-object v2, Lcom/loc/bx;->b:Ljava/lang/String;

    goto/16 :goto_68

    :cond_230
    :try_start_230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/cn;->bGa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/bx;->a:Ljava/lang/String;
    :try_end_23a
    .catch Ljava/lang/Throwable; {:try_start_230 .. :try_end_23a} :catch_23b

    goto :goto_211

    :catch_23b
    move-exception v2

    const-string/jumbo v5, "APS"

    const-string/jumbo v22, "getApsReq part4"

    move-object/from16 v0, v22

    invoke-static {v2, v5, v0}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_211

    :cond_248
    const-string/jumbo v2, "888888888888888"

    sput-object v2, Lcom/loc/bx;->a:Ljava/lang/String;

    goto :goto_219

    :cond_24e
    :try_start_24e
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/bx;->b:Ljava/lang/String;
    :try_end_254
    .catch Ljava/lang/Throwable; {:try_start_24e .. :try_end_254} :catch_255

    goto :goto_221

    :catch_255
    move-exception v2

    const-string/jumbo v5, "APS"

    const-string/jumbo v22, "getApsReq part2"

    move-object/from16 v0, v22

    invoke-static {v2, v5, v0}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_221

    :catch_262
    move-exception v2

    const-string/jumbo v22, "APS"

    const-string/jumbo v23, "getApsReq part"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v2, v0, v1}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    goto/16 :goto_71

    :cond_273
    invoke-static {v9}, Lcom/loc/X;->bxm(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/loc/cd;->bEC()Z

    move-result v2

    if-nez v2, :cond_28a

    :cond_27d
    const-string/jumbo v2, "1"

    :goto_280
    invoke-direct/range {p0 .. p0}, Lcom/loc/cd;->bEC()Z

    move-result v6

    if-eqz v6, :cond_29a

    :cond_286
    :goto_286
    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_7f

    :cond_28a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/cd;->bEv(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_27d

    const-string/jumbo v2, "2"

    goto :goto_280

    :cond_29a
    invoke-direct/range {p0 .. p0}, Lcom/loc/cd;->bEA()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    if-eqz v6, :cond_286

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_286

    :cond_2ab
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch v20, :pswitch_data_56a

    invoke-direct/range {p0 .. p0}, Lcom/loc/cd;->bFe()V

    :cond_2b6
    move-object v2, v8

    :goto_2b7
    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v8, v2

    goto/16 :goto_88

    :pswitch_2c2
    invoke-direct/range {p0 .. p0}, Lcom/loc/cd;->bFe()V

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/am;

    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<mcc>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/loc/am;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</mcc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<mnc>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/loc/am;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</mnc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<lac>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/am;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</lac>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<cellid>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/am;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "</cellid>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<signal>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v2, v2, Lcom/loc/am;->j:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</signal>"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x1

    move v7, v2

    :goto_339
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_2b6

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/am;

    iget v0, v2, Lcom/loc/am;->c:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/loc/am;->d:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/loc/am;->j:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v7, v2, :cond_37e

    :goto_37a
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_339

    :cond_37e
    const-string/jumbo v2, "*"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37a

    :pswitch_387
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/am;

    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<mcc>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/loc/am;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</mcc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<sid>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/am;->g:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</sid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<nid>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/am;->bfm:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</nid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<bid>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/am;->bfn:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</bid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/loc/am;->f:I

    if-gtz v7, :cond_404

    :cond_3e8
    invoke-direct/range {p0 .. p0}, Lcom/loc/cd;->bFe()V

    :goto_3eb
    const-string/jumbo v7, "<signal>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v2, v2, Lcom/loc/am;->j:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "</signal>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b7

    :cond_404
    iget v7, v2, Lcom/loc/am;->e:I

    if-lez v7, :cond_3e8

    iget v7, v2, Lcom/loc/am;->f:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/loc/cd;->bkm:I

    iget v7, v2, Lcom/loc/am;->e:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/loc/cd;->bkn:I

    const-string/jumbo v7, "<lon>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/am;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</lon>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<lat>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/am;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</lat>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3eb

    :cond_43b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/cd;->bEv(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-nez v2, :cond_49b

    :goto_447
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v9, 0xf

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v7, v2

    :goto_457
    if-ge v7, v9, :cond_91

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v21, "*"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_457

    :cond_49b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v7, -0x80

    if-lt v2, v7, :cond_4fd

    const/16 v7, 0x7f

    if-gt v2, v7, :cond_4fd

    :goto_4bf
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x20

    :try_start_4d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v21, "UTF-8"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2
    :try_end_4e7
    .catch Ljava/lang/Throwable; {:try_start_4d5 .. :try_end_4e7} :catch_4ff

    :goto_4e7
    const/16 v9, 0x20

    if-ge v2, v9, :cond_50f

    move-object v2, v7

    :goto_4ec
    const-string/jumbo v7, "*"

    const-string/jumbo v9, "."

    invoke-virtual {v2, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_447

    :cond_4fd
    const/4 v2, 0x0

    goto :goto_4bf

    :catch_4ff
    move-exception v2

    const-string/jumbo v21, "APS"

    const-string/jumbo v22, "getApsReq"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v2, v0, v1}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v9

    goto :goto_4e7

    :cond_50f
    const-string/jumbo v2, "unkwn"

    goto :goto_4ec

    :cond_513
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_a2

    :cond_518
    :try_start_518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v9, "reversegeo"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_522
    .catch Ljava/lang/Throwable; {:try_start_518 .. :try_end_522} :catch_525

    move-result v2

    goto/16 :goto_b1

    :catch_525
    move-exception v2

    const-string/jumbo v9, "APS"

    const-string/jumbo v21, "getApsReq part"

    move-object/from16 v0, v21

    invoke-static {v2, v9, v0}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b0

    :cond_533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    const/4 v7, 0x2

    iput-short v7, v2, Lcom/loc/t;->b:S

    goto/16 :goto_ba

    :cond_53c
    :try_start_53c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v7, "multi"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/cd;->bjQ:Lcom/loc/t;

    const/4 v7, 0x1

    iput-short v7, v2, Lcom/loc/t;->b:S
    :try_end_557
    .catch Ljava/lang/Throwable; {:try_start_53c .. :try_end_557} :catch_559

    goto/16 :goto_c7

    :catch_559
    move-exception v2

    const-string/jumbo v7, "APS"

    const-string/jumbo v9, "getApsReq"

    invoke-static {v2, v7, v9}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c7

    :cond_565
    const-string/jumbo v2, "1"

    goto/16 :goto_122

    :pswitch_data_56a
    .packed-switch 0x1
        :pswitch_2c2
        :pswitch_387
    .end packed-switch
.end method

.method private n()V
    .registers 11

    const-wide/16 v8, 0x2710

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/loc/cd;->bEx()Z

    move-result v0

    if-nez v0, :cond_17

    :goto_e
    iget-object v0, p0, Lcom/loc/cd;->bjB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_65

    :cond_16
    :goto_16
    return-void

    :cond_17
    const/16 v0, 0x14

    iget-wide v6, p0, Lcom/loc/cd;->bjH:J

    sub-long v6, v4, v6

    cmp-long v3, v6, v8

    if-gez v3, :cond_43

    move v3, v1

    :goto_22
    if-nez v3, :cond_2d

    iget-object v3, p0, Lcom/loc/cd;->bkr:Ljava/lang/Object;

    monitor-enter v3

    :try_start_27
    iget-object v6, p0, Lcom/loc/cd;->bjB:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_45

    :cond_2d
    invoke-direct {p0}, Lcom/loc/cd;->bEB()V

    iget-wide v6, p0, Lcom/loc/cd;->bjH:J

    sub-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-gez v3, :cond_48

    :goto_37
    if-nez v1, :cond_3b

    :goto_39
    if-gtz v0, :cond_4a

    :cond_3b
    iget-object v1, p0, Lcom/loc/cd;->bkr:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3e
    monitor-exit v1

    goto :goto_e

    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_40

    throw v0

    :cond_43
    move v3, v2

    goto :goto_22

    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0

    :cond_48
    move v1, v2

    goto :goto_37

    :cond_4a
    iget-object v1, p0, Lcom/loc/cd;->bjB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    const-wide/16 v2, 0x96

    :try_start_54
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_5a

    :goto_57
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    :catch_5a
    move-exception v1

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "mayWaitForWifi"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_65
    iget-object v0, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/cd;->bjM:J

    invoke-static {}, Lcom/loc/X;->a()J

    iget-object v0, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    invoke-virtual {v0}, Lcom/loc/r;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/loc/cd;->bkr:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7d
    iget-object v2, p0, Lcom/loc/cd;->bjB:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    goto :goto_16

    :catchall_84
    move-exception v0

    monitor-exit v1
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_84

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 15

    const-wide/16 v12, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_78

    :goto_e
    invoke-direct {p0}, Lcom/loc/cd;->bEU()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-direct {p0}, Lcom/loc/cd;->j()V

    iget v0, p0, Lcom/loc/cd;->bjN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/cd;->bjN:I

    invoke-direct {p0}, Lcom/loc/cd;->bEG()V

    invoke-direct {p0}, Lcom/loc/cd;->bET()V

    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    if-nez v0, :cond_9c

    :goto_27
    invoke-direct {p0}, Lcom/loc/cd;->bFb()V

    sget-wide v4, Lcom/loc/cd;->a:J

    invoke-direct {p0, v4, v5}, Lcom/loc/cd;->a(J)Z

    move-result v0

    if-nez v0, :cond_b1

    :cond_32
    iget-object v0, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    iget-boolean v4, p0, Lcom/loc/cd;->bjJ:Z

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/loc/aI;->bzv(ZZ)Landroid/telephony/CellLocation;
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_85

    :try_start_3a
    invoke-direct {p0}, Lcom/loc/cd;->n()V

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/cd;->bjH:J

    invoke-virtual {p0}, Lcom/loc/cd;->e()V

    invoke-virtual {p0}, Lcom/loc/cd;->f()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_49} :catch_ce
    .catchall {:try_start_3a .. :try_end_49} :catchall_85

    :goto_49
    const/4 v0, 0x0

    :try_start_4a
    invoke-virtual {p0, v0}, Lcom/loc/cd;->a(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_fc

    iget-boolean v0, p0, Lcom/loc/cd;->bkg:Z

    if-eqz v0, :cond_da

    :goto_5c
    const/4 v0, 0x4

    :goto_5d
    if-gtz v0, :cond_df

    :cond_5f
    iget v0, p0, Lcom/loc/cd;->d:I

    if-eqz v0, :cond_ec

    :cond_63
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    iget v1, p0, Lcom/loc/cd;->bku:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHy(I)V

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_4a .. :try_end_76} :catchall_85

    monitor-exit p0

    return-object v0

    :cond_78
    :try_start_78
    iget-object v0, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_84
    .catchall {:try_start_78 .. :try_end_84} :catchall_85

    goto :goto_e

    :catchall_85
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_88
    :try_start_88
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHy(I)V

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_88 .. :try_end_9a} :catchall_85

    monitor-exit p0

    return-object v0

    :cond_9c
    :try_start_9c
    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    const-string/jumbo v4, "pref"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/cd;->bEV(Landroid/content/SharedPreferences;)V

    invoke-direct {p0, v0}, Lcom/loc/cd;->bFh(Landroid/content/SharedPreferences;)V

    invoke-direct {p0, v0}, Lcom/loc/cd;->bEI(Landroid/content/SharedPreferences;)V

    goto/16 :goto_27

    :cond_b1
    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/loc/cd;->bkq:Z

    if-nez v0, :cond_c1

    :cond_bd
    :goto_bd
    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_bf
    .catchall {:try_start_9c .. :try_end_bf} :catchall_85

    monitor-exit p0

    return-object v0

    :cond_c1
    :try_start_c1
    invoke-static {}, Lcom/loc/bR;->bDB()Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHx(I)V

    goto :goto_bd

    :catch_ce
    move-exception v0

    const-string/jumbo v4, "APS"

    const-string/jumbo v5, "getLocation"

    invoke-static {v0, v4, v5}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_49

    :cond_da
    invoke-virtual {p0}, Lcom/loc/cd;->g()V

    goto/16 :goto_5c

    :cond_df
    iget v1, p0, Lcom/loc/cd;->d:I

    if-eqz v1, :cond_5f

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_5d

    :cond_ec
    iget-object v0, p0, Lcom/loc/cd;->bkf:Lcom/loc/bi;

    invoke-virtual {v0}, Lcom/loc/bi;->d()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_fa
    .catchall {:try_start_c1 .. :try_end_fa} :catchall_85

    monitor-exit p0

    return-object v0

    :cond_fc
    const/4 v0, 0x0

    :try_start_fd
    invoke-virtual {p0, v0}, Lcom/loc/cd;->bEw(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/loc/cd;->bjJ:Z

    if-eqz v0, :cond_1ac

    move-object v6, v3

    :goto_108
    if-eqz v6, :cond_1b5

    :cond_10a
    iget-object v0, p0, Lcom/loc/cd;->bkc:Lcom/loc/am;

    if-nez v0, :cond_1bc

    :cond_10e
    move v4, v1

    :goto_10f
    invoke-direct {p0}, Lcom/loc/cd;->bEz()Z

    move-result v7

    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v0, :cond_1c5

    move v5, v2

    :goto_118
    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v0, :cond_1e1

    :cond_11c
    move v0, v2

    :cond_11d
    if-eqz v0, :cond_25c

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/loc/cd;->bka:J

    :goto_123
    iget-object v0, p0, Lcom/loc/cd;->bjY:Ljava/lang/String;

    if-nez v0, :cond_264

    :cond_127
    iget-object v0, p0, Lcom/loc/cd;->bjY:Ljava/lang/String;

    if-eqz v0, :cond_291

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/cd;->bjZ:J

    :goto_131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/cd;->bkp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/cd;->bko:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->bkz:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/loc/cd;->bkq:Z

    if-nez v0, :cond_29d

    :cond_160
    move-object v0, v3

    :goto_161
    if-eqz v7, :cond_2b1

    :cond_163
    if-nez v5, :cond_2b7

    if-nez v7, :cond_2df

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/loc/cd;->bka:J

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHx(I)V

    iput-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {p0}, Lcom/loc/cd;->bFa()V

    :cond_174
    :goto_174
    invoke-static {}, Lcom/loc/bj;->a()Lcom/loc/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cd;->bkz:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v4, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/loc/bj;->bAO(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V

    invoke-static {}, Lcom/loc/p;->a()Lcom/loc/p;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/p;->bwe(Landroid/content/Context;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;)V

    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_2ff

    :cond_199
    :goto_199
    iget-object v0, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_1aa
    .catchall {:try_start_fd .. :try_end_1aa} :catchall_85

    monitor-exit p0

    return-object v0

    :cond_1ac
    :try_start_1ac
    iget-object v0, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    invoke-virtual {v0}, Lcom/loc/aI;->c()Lcom/loc/am;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_108

    :cond_1b5
    iget-object v0, p0, Lcom/loc/cd;->bkc:Lcom/loc/am;

    if-nez v0, :cond_10a

    :goto_1b9
    move v4, v2

    goto/16 :goto_10f

    :cond_1bc
    iget-object v0, p0, Lcom/loc/cd;->bkc:Lcom/loc/am;

    invoke-virtual {v0, v6}, Lcom/loc/am;->byl(Lcom/loc/am;)Z

    move-result v0

    if-eqz v0, :cond_10e

    goto :goto_1b9

    :cond_1c5
    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v5, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getAccuracy()F

    move-result v5

    const v8, 0x43958000    # 299.0f

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1db

    const/4 v5, 0x5

    if-gt v0, v5, :cond_1df

    :cond_1db
    move v0, v2

    :goto_1dc
    move v5, v0

    goto/16 :goto_118

    :cond_1df
    move v0, v1

    goto :goto_1dc

    :cond_1e1
    iget-object v0, p0, Lcom/loc/cd;->bkb:Ljava/lang/String;

    if-eqz v0, :cond_11c

    if-nez v5, :cond_11c

    if-nez v4, :cond_11c

    iget-boolean v0, p0, Lcom/loc/cd;->bkq:Z

    if-eqz v0, :cond_11c

    invoke-static {}, Lcom/loc/bR;->bDB()Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v8

    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHS()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {}, Lcom/loc/bR;->bDC()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-lez v0, :cond_23b

    move v0, v1

    :goto_207
    if-nez v0, :cond_11c

    invoke-static {}, Lcom/loc/bj;->a()Lcom/loc/bj;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/cd;->bkb:Ljava/lang/String;

    iget-object v8, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v8}, Lcom/loc/bj;->bAV(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_23d

    :goto_217
    iget-object v4, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    iget-boolean v8, p0, Lcom/loc/cd;->bjJ:Z

    invoke-virtual {v4, v8}, Lcom/loc/aI;->a(Z)Z

    move-result v4

    if-nez v4, :cond_256

    :goto_221
    iget-object v4, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v4}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v4

    if-eqz v4, :cond_11d

    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string/jumbo v1, "mem"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHV(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHx(I)V

    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_239
    .catchall {:try_start_1ac .. :try_end_239} :catchall_85

    monitor-exit p0

    return-object v0

    :cond_23b
    move v0, v2

    goto :goto_207

    :cond_23d
    :try_start_23d
    iget-wide v8, p0, Lcom/loc/cd;->bka:J

    cmp-long v4, v8, v12

    if-eqz v4, :cond_11d

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/loc/cd;->bka:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xbb8

    cmp-long v4, v8, v10

    if-ltz v4, :cond_254

    move v4, v1

    :goto_251
    if-nez v4, :cond_11d

    goto :goto_217

    :cond_254
    move v4, v2

    goto :goto_251

    :cond_256
    iget-object v4, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    invoke-virtual {v4}, Lcom/loc/aI;->h()V

    goto :goto_221

    :cond_25c
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/loc/cd;->bka:J

    goto/16 :goto_123

    :cond_264
    iget-object v0, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/cd;->bjY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_127

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/loc/cd;->bjZ:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xbb8

    cmp-long v0, v8, v10

    if-ltz v0, :cond_283

    :goto_27b
    if-nez v1, :cond_285

    iget-object v0, p0, Lcom/loc/cd;->bjY:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    goto/16 :goto_131

    :cond_283
    move v1, v2

    goto :goto_27b

    :cond_285
    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/cd;->bjZ:J

    iget-object v0, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/cd;->bjY:Ljava/lang/String;

    goto/16 :goto_131

    :cond_291
    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/cd;->bjZ:J

    iget-object v0, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/cd;->bjY:Ljava/lang/String;

    goto/16 :goto_131

    :cond_29d
    if-nez v5, :cond_160

    if-nez v7, :cond_160

    invoke-static {}, Lcom/loc/bj;->a()Lcom/loc/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cd;->bkz:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/loc/cd;->bkq:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/bj;->bAP(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    goto/16 :goto_161

    :cond_2b1
    invoke-static {v0}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_163

    :cond_2b7
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/loc/cd;->bEy(ZZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_174

    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string/jumbo v1, "new"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHV(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->bkb:Ljava/lang/String;

    iput-object v6, p0, Lcom/loc/cd;->bkc:Lcom/loc/am;

    invoke-direct {p0}, Lcom/loc/cd;->bFa()V

    goto/16 :goto_174

    :cond_2df
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/loc/cd;->bEy(ZZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_174

    iget-object v0, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->bkb:Ljava/lang/String;

    iput-object v6, p0, Lcom/loc/cd;->bkc:Lcom/loc/am;

    invoke-direct {p0}, Lcom/loc/cd;->bFa()V

    goto/16 :goto_174

    :cond_2ff
    iget-object v0, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/loc/cd;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-eqz v1, :cond_199

    iget-object v1, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/cd;->bkb:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHx(I)V

    iget-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u79bb\u7ebf\u5b9a\u4f4d\uff0c\u5728\u7ebf\u5b9a\u4f4d\u5931\u8d25\u539f\u56e0:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V
    :try_end_341
    .catchall {:try_start_23d .. :try_end_341} :catchall_85

    goto/16 :goto_199
.end method

.method public declared-synchronized a(Z)Ljava/lang/String;
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lcom/loc/cd;->bjJ:Z

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    invoke-virtual {v0}, Lcom/loc/aI;->j()V

    :goto_c
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    const-string/jumbo v4, "network"

    invoke-direct {p0}, Lcom/loc/cd;->bEC()Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-direct {p0}, Lcom/loc/cd;->bEA()V

    iget-object v1, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    if-nez v1, :cond_57

    :goto_22
    const-string/jumbo v1, ""

    iget-object v1, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    invoke-virtual {v1}, Lcom/loc/aI;->d()I

    move-result v1

    iget-object v5, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    invoke-virtual {v5}, Lcom/loc/aI;->b()Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_5d

    :cond_33
    iget-object v6, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    if-nez v6, :cond_7a

    :cond_37
    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2297 lstCgi & \u2297 wifis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    iput v1, p0, Lcom/loc/cd;->bku:I
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_4b

    monitor-exit p0

    return-object v0

    :cond_45
    :try_start_45
    iget-object v0, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    invoke-virtual {v0}, Lcom/loc/aI;->g()V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4b

    goto :goto_c

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4e
    :try_start_4e
    iget-object v1, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    invoke-virtual {v1}, Lcom/loc/r;->b()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    goto :goto_22

    :cond_57
    iget-object v1, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_22

    :cond_5d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_33

    :goto_63
    sparse-switch v1, :sswitch_data_24a

    const/16 v1, 0xb

    iput v1, p0, Lcom/loc/cd;->bku:I

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get cgi failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_72
    :goto_72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_75
    .catchall {:try_start_4e .. :try_end_75} :catchall_4b

    move-result v1

    if-eqz v1, :cond_214

    :goto_78
    monitor-exit p0

    return-object v0

    :cond_7a
    :try_start_7a
    iget-object v6, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_37

    goto :goto_63

    :sswitch_83
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_72

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/am;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/loc/am;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/loc/am;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/loc/am;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/loc/am;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e2

    :cond_d7
    const-string/jumbo v0, "cgiwifi"

    :goto_da
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_72

    :cond_e2
    iget-object v0, p0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/cd;->bEv(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_d7

    const-string/jumbo v0, "cgi"

    goto :goto_da

    :sswitch_ee
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_72

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/am;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/loc/am;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/loc/am;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/loc/am;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/loc/am;->bfm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/loc/am;->bfn:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15a

    :cond_14e
    const-string/jumbo v0, "cgiwifi"

    :goto_151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_72

    :cond_15a
    iget-object v0, p0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/cd;->bEv(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_14e

    const-string/jumbo v0, "cgi"

    goto :goto_151

    :sswitch_166
    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19b

    :cond_16e
    move v1, v3

    :goto_16f
    if-eqz p1, :cond_1a5

    :cond_171
    :goto_171
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "#%s#"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1fe

    const-string/jumbo v1, "network"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    const-string/jumbo v0, ""

    const/4 v1, 0x2

    iput v1, p0, Lcom/loc/cd;->bku:I

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "is network & no wifi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_72

    :cond_19b
    iget-object v0, p0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/cd;->bEv(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_16e

    move v1, v2

    goto :goto_16f

    :cond_1a5
    iget-object v0, p0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/cd;->bEv(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_1e1

    :cond_1ad
    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_171

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/cd;->bku:I

    iget-object v0, p0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/cd;->bEv(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_171

    iget-object v0, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "same access wifi & around wifi 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1df
    move v1, v2

    goto :goto_171

    :cond_1e1
    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1ad

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/cd;->bku:I

    iget-object v0, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2297 around wifi(s) & has access wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1df

    :cond_1f5
    iget-object v0, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2297 access wifi & around wifi 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1df

    :cond_1fe
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_72

    :cond_214
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_234

    :goto_21d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loc/X;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_78

    :cond_234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_247
    .catchall {:try_start_7a .. :try_end_247} :catchall_4b

    move-result-object v0

    goto :goto_21d

    nop

    :sswitch_data_24a
    .sparse-switch
        0x1 -> :sswitch_83
        0x2 -> :sswitch_ee
        0x9 -> :sswitch_166
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_7
    invoke-direct {p0}, Lcom/loc/cd;->bEK()V

    return-void

    :cond_b
    const-string/jumbo v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_33

    aget-object v1, v0, v3

    sput-object v1, Lcom/loc/bx;->d:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    sput-object v1, Lcom/loc/bx;->e:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    sput-object v1, Lcom/loc/bx;->g:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sput-object v0, Lcom/loc/bx;->h:Ljava/lang/String;

    return-void

    :cond_33
    invoke-direct {p0}, Lcom/loc/cd;->bEK()V

    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;)Z
    .registers 7

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    if-nez v0, :cond_2b

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bR;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/X;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    if-eqz v0, :cond_30

    :goto_1c
    iget-object v0, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    if-eqz v0, :cond_4a

    :goto_20
    invoke-static {}, Lcom/loc/bj;->a()Lcom/loc/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/bj;->a(Landroid/content/Context;)V
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_47

    monitor-exit p0

    return v4

    :cond_2b
    monitor-exit p0

    return v4

    :cond_2d
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-static {v0, v1}, Lcom/loc/X;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/loc/r;

    iget-object v2, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    invoke-direct {v1, v2, v0, v3}, Lcom/loc/r;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_47

    goto :goto_1c

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4a
    :try_start_4a
    new-instance v0, Lcom/loc/aI;

    iget-object v1, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2}, Lcom/loc/aI;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_47

    goto :goto_20
.end method

.method public b()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/loc/cd;->j()V

    invoke-direct {p0}, Lcom/loc/cd;->bEX()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/loc/cd;->bEy(ZZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loc/cd;->bEZ(Lcom/autonavi/aps/amapapi/model/AmapLoc;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "doFusionLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/loc/cd;->bEr(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/bx;->bhy:Z

    iget-object v0, p0, Lcom/loc/cd;->bjD:Lcom/loc/v;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_45

    if-eqz v0, :cond_3c

    :goto_f
    :try_start_f
    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    iget-object v2, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    invoke-static {v0, v1, v2}, Lcom/loc/af;->bxH(Landroid/content/Context;Lcom/loc/r;Lcom/loc/aI;)Lcom/loc/af;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/cd;->bjI:J
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_21} :catch_48
    .catchall {:try_start_f .. :try_end_21} :catchall_45

    :goto_21
    :try_start_21
    invoke-direct {p0}, Lcom/loc/cd;->k()V

    invoke-direct {p0}, Lcom/loc/cd;->l()V

    iget-object v0, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    invoke-virtual {v0}, Lcom/loc/aI;->e()Landroid/telephony/CellLocation;

    invoke-static {}, Lcom/loc/p;->a()Lcom/loc/p;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/p;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cd;->bks:Z
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_45

    monitor-exit p0

    return-void

    :cond_3a
    monitor-exit p0

    return-void

    :cond_3c
    :try_start_3c
    new-instance v0, Lcom/loc/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loc/v;-><init>(Lcom/loc/cd;Lcom/loc/az;)V

    iput-object v0, p0, Lcom/loc/cd;->bjD:Lcom/loc/v;
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_45

    goto :goto_f

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_48
    move-exception v0

    :try_start_49
    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "setExtra"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_45

    goto :goto_21
.end method

.method public declared-synchronized bEY(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_3e

    :goto_a
    iget-boolean v1, p0, Lcom/loc/cd;->bkt:Z

    if-eqz v1, :cond_4e

    :goto_e
    iget-boolean v1, p0, Lcom/loc/cd;->bkB:Z
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_4b

    if-eqz v1, :cond_52

    :goto_12
    :try_start_12
    iget-boolean v1, p0, Lcom/loc/cd;->bjJ:Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_14} :catch_5d
    .catchall {:try_start_12 .. :try_end_14} :catchall_4b

    if-eqz v1, :cond_56

    :goto_16
    :try_start_16
    iget-object v1, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p1}, Lcom/loc/cd;->bEy(ZZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v2

    if-nez v2, :cond_7d

    iget-object v0, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/loc/cd;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_4b

    move-result v2

    if-nez v2, :cond_94

    monitor-exit p0

    return-object v1

    :cond_3e
    :try_start_3e
    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_4b

    goto :goto_a

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4e
    :try_start_4e
    invoke-direct {p0}, Lcom/loc/cd;->j()V

    goto :goto_e

    :cond_52
    invoke-direct {p0}, Lcom/loc/cd;->bEX()V
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_4b

    goto :goto_12

    :cond_56
    :try_start_56
    iget-object v1, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    invoke-virtual {v1}, Lcom/loc/aI;->c()Lcom/loc/am;
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5b} :catch_5d
    .catchall {:try_start_56 .. :try_end_5b} :catchall_4b

    move-result-object v0

    goto :goto_16

    :catch_5d
    move-exception v1

    :try_start_5e
    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "doFirstNetLocate"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_68
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    iget v1, p0, Lcom/loc/cd;->bku:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHy(I)V

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_5e .. :try_end_7b} :catchall_4b

    :goto_7b
    monitor-exit p0

    return-object v0

    :cond_7d
    :try_start_7d
    const-string/jumbo v2, "new"

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHV(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/cd;->bkb:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/cd;->bkc:Lcom/loc/am;

    iput-object v1, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {p0}, Lcom/loc/cd;->bFa()V

    move-object v0, v1

    goto :goto_7b

    :cond_94
    iget-object v2, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/cd;->bkb:Ljava/lang/String;

    const-string/jumbo v2, "file"

    invoke-virtual {v0, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHV(Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHx(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u79bb\u7ebf\u5b9a\u4f4d\u7ed3\u679c\uff0c\u5728\u7ebf\u5b9a\u4f4d\u5931\u8d25\u539f\u56e0:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_c4
    .catchall {:try_start_7d .. :try_end_c4} :catchall_4b

    goto :goto_7b
.end method

.method public declared-synchronized bEZ(Lcom/autonavi/aps/amapapi/model/AmapLoc;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_19

    move-result v0

    if-nez v0, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    invoke-static {}, Lcom/loc/bj;->a()Lcom/loc/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cd;->bkz:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/loc/bj;->bAO(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    goto :goto_7

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bEr(Landroid/content/Context;Z)Z
    .registers 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/loc/cd;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/loc/bu;->bBk(Landroid/content/Context;Z)Lcom/loc/bu;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->bkd:Lcom/loc/bu;

    iget-object v0, p0, Lcom/loc/cd;->bjx:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_20

    :goto_14
    new-instance v0, Lcom/loc/t;

    invoke-direct {v0}, Lcom/loc/t;-><init>()V

    iput-object v0, p0, Lcom/loc/cd;->bjQ:Lcom/loc/t;
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_2e

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_1e
    monitor-exit p0

    return v1

    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-static {v0, v1}, Lcom/loc/X;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/loc/cd;->bjx:Landroid/net/ConnectivityManager;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2e

    goto :goto_14

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bEs(Lorg/json/JSONObject;)V
    .registers 5

    iput-object p1, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v0, "collwifiscan"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    if-nez v0, :cond_49

    :goto_f
    iget-object v0, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    if-nez v0, :cond_4f

    :goto_13
    return-void

    :cond_14
    :try_start_14
    const-string/jumbo v0, "collwifiscan"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/loc/bx;->l:I

    :goto_29
    invoke-direct {p0}, Lcom/loc/cd;->bEE()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    sget v1, Lcom/loc/bx;->l:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/loc/af;->bxJ(I)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_38} :catch_39

    goto :goto_b

    :catch_39
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "setExtra"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_44
    const/16 v0, 0x14

    :try_start_46
    sput v0, Lcom/loc/bx;->l:I
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_48} :catch_39

    goto :goto_29

    :cond_49
    iget-object v0, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    invoke-virtual {v0, p1}, Lcom/loc/aI;->bzy(Lorg/json/JSONObject;)V

    goto :goto_f

    :cond_4f
    iget-object v0, p0, Lcom/loc/cd;->bjy:Lcom/loc/r;

    invoke-virtual {v0, p1}, Lcom/loc/r;->bwh(Lorg/json/JSONObject;)V

    goto :goto_13
.end method

.method public varargs bEu(Lcom/autonavi/aps/amapapi/model/AmapLoc;[Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/loc/d;->a()Lcom/loc/d;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/cd;->bkq:Z

    invoke-virtual {v0, v1}, Lcom/loc/d;->a(Z)V

    if-nez p2, :cond_15

    :cond_c
    invoke-static {}, Lcom/loc/d;->a()Lcom/loc/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/d;->bvC(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0

    :cond_15
    array-length v0, p2

    if-eqz v0, :cond_c

    aget-object v0, p2, v2

    const-string/jumbo v1, "shake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    aget-object v0, p2, v2

    const-string/jumbo v1, "fusion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    return-object p1

    :cond_2f
    invoke-static {}, Lcom/loc/d;->a()Lcom/loc/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/d;->bvC(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0

    :cond_38
    invoke-static {}, Lcom/loc/d;->a()Lcom/loc/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/d;->bvE(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized bEw(Z)Ljava/lang/StringBuilder;
    .registers 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    iget-boolean v3, p0, Lcom/loc/cd;->bjJ:Z

    if-nez v3, :cond_3d

    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v3, 0x2bc

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0}, Lcom/loc/aI;->d()I

    move-result v3

    invoke-virtual {v0}, Lcom/loc/aI;->b()Ljava/util/ArrayList;

    move-result-object v4

    packed-switch v3, :pswitch_data_120

    :cond_1b
    if-eqz p1, :cond_85

    :cond_1d
    iget-object v0, p0, Lcom/loc/cd;->bjO:Ljava/lang/String;

    const-string/jumbo v3, "00:00:00:00:00:00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    :cond_28
    :goto_28
    invoke-direct {p0}, Lcom/loc/cd;->bEC()Z

    move-result v0

    if-nez v0, :cond_ab

    invoke-direct {p0}, Lcom/loc/cd;->bEA()V

    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    if-nez v0, :cond_112

    :cond_35
    :goto_35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_41

    move-result v0

    if-gtz v0, :cond_119

    :goto_3b
    monitor-exit p0

    return-object v5

    :cond_3d
    :try_start_3d
    invoke-virtual {v0}, Lcom/loc/aI;->g()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_9

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_44
    move v3, v2

    :goto_45
    :try_start_45
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1b

    const-string/jumbo v0, "#"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/am;

    iget-object v0, v0, Lcom/loc/am;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/am;

    iget v0, v0, Lcom/loc/am;->c:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/am;

    iget v0, v0, Lcom/loc/am;->d:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_45

    :cond_85
    iget-object v0, p0, Lcom/loc/cd;->bjO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_8d
    iget-object v0, p0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->bjO:Ljava/lang/String;

    invoke-direct {p0}, Lcom/loc/cd;->bEJ()V

    iget-object v0, p0, Lcom/loc/cd;->bjO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/loc/cd;->bjO:Ljava/lang/String;

    goto/16 :goto_28

    :cond_ab
    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v3}, Lcom/loc/cd;->bEv(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-nez v3, :cond_da

    :goto_b6
    move-object v4, v0

    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v1

    :goto_be
    if-lt v3, v6, :cond_e1

    if-nez v1, :cond_35

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string/jumbo v0, "#"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ",access"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_35

    :cond_da
    iget-object v0, p0, Lcom/loc/cd;->bjE:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    :cond_e1
    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v7, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v0, "nb"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10d

    :goto_f4
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "#%s,%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v7, 0x1

    aput-object v0, v10, v7

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_be

    :cond_10d
    const-string/jumbo v0, "access"

    move v1, v2

    goto :goto_f4

    :cond_112
    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_35

    :cond_119
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_11d
    .catchall {:try_start_45 .. :try_end_11d} :catchall_41

    goto/16 :goto_3b

    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_44
    .end packed-switch
.end method

.method public declared-synchronized c()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/loc/cd;->bkt:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cd;->bkB:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cd;->bks:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/bx;->bhy:Z

    invoke-direct {p0}, Lcom/loc/cd;->bEH()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->bjU:Lcom/loc/af;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->bjV:Lcom/loc/bK;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->bkb:Ljava/lang/String;

    invoke-direct {p0}, Lcom/loc/cd;->bFa()V

    iget-object v0, p0, Lcom/loc/cd;->bkf:Lcom/loc/bi;

    if-nez v0, :cond_69

    :goto_20
    invoke-direct {p0}, Lcom/loc/cd;->bEN()V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_78

    :try_start_23
    invoke-static {}, Lcom/loc/bI;->a()Lcom/loc/bI;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loc/bI;->bCs(Landroid/content/Context;I)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2d} :catch_7b
    .catchall {:try_start_23 .. :try_end_2d} :catchall_78

    :goto_2d
    :try_start_2d
    invoke-static {}, Lcom/loc/d;->a()Lcom/loc/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/d;->b()V

    invoke-static {}, Lcom/loc/X;->i()V
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_78

    :try_start_37
    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_39} :catch_92
    .catchall {:try_start_37 .. :try_end_39} :catchall_a0

    if-nez v0, :cond_86

    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    :try_start_3c
    iput-object v0, p0, Lcom/loc/cd;->bjD:Lcom/loc/v;

    :goto_3e
    iget-object v0, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    if-nez v0, :cond_a5

    :goto_42
    invoke-static {}, Lcom/loc/p;->a()Lcom/loc/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/p;->c()V

    invoke-static {}, Lcom/loc/by;->a()V

    invoke-direct {p0}, Lcom/loc/cd;->bFc()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/cd;->bjZ:J

    invoke-direct {p0}, Lcom/loc/cd;->bEA()V

    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    if-nez v0, :cond_ab

    :goto_5a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/cd;->bkv:Ljava/util/TreeMap;

    if-nez v0, :cond_b1

    :goto_64
    const/4 v0, -0x1

    sput v0, Lcom/loc/cd;->bkx:I
    :try_end_67
    .catchall {:try_start_3c .. :try_end_67} :catchall_78

    monitor-exit p0

    return-void

    :cond_69
    :try_start_69
    iget-object v0, p0, Lcom/loc/cd;->bkf:Lcom/loc/bi;

    invoke-virtual {v0}, Lcom/loc/bi;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->bkf:Lcom/loc/bi;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cd;->bkg:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/cd;->d:I
    :try_end_77
    .catchall {:try_start_69 .. :try_end_77} :catchall_78

    goto :goto_20

    :catchall_78
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_7b
    move-exception v0

    :try_start_7c
    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "destroy part"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_78

    goto :goto_2d

    :cond_86
    :try_start_86
    iget-object v0, p0, Lcom/loc/cd;->bjD:Lcom/loc/v;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/cd;->bjD:Lcom/loc/v;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_91} :catch_92
    .catchall {:try_start_86 .. :try_end_91} :catchall_a0

    goto :goto_3b

    :catch_92
    move-exception v0

    :try_start_93
    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_a0

    const/4 v0, 0x0

    :try_start_9d
    iput-object v0, p0, Lcom/loc/cd;->bjD:Lcom/loc/v;

    goto :goto_3e

    :catchall_a0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/cd;->bjD:Lcom/loc/v;

    throw v0

    :cond_a5
    iget-object v0, p0, Lcom/loc/cd;->bjz:Lcom/loc/aI;

    invoke-virtual {v0}, Lcom/loc/aI;->i()V

    goto :goto_42

    :cond_ab
    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_5a

    :cond_b1
    iget-object v0, p0, Lcom/loc/cd;->bkv:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->bkv:Ljava/util/TreeMap;
    :try_end_b9
    .catchall {:try_start_9d .. :try_end_b9} :catchall_78

    goto :goto_64
.end method

.method public declared-synchronized c(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/loc/cd;->bkx:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3} :catch_f
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    :goto_6
    monitor-exit p0

    return-void

    :cond_8
    const/4 v0, 0x1

    :try_start_9
    sput v0, Lcom/loc/cd;->bkx:I

    invoke-static {p1}, Lcom/loc/bR;->a(Landroid/content/Context;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_1a

    goto :goto_6

    :catch_f
    move-exception v0

    :try_start_10
    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "initAuth"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1a

    goto :goto_6

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "2.5.1"

    return-object v0
.end method

.method public declared-synchronized e()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/loc/cd;->bjB:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/loc/cd;->bkr:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1d

    if-nez v1, :cond_10

    :cond_d
    :goto_d
    :try_start_d
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_1a

    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_d

    :catchall_1a
    move-exception v0

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .registers 9

    const/16 v3, 0x20

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_71

    if-nez v0, :cond_b

    :cond_9
    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/loc/cd;->bjM:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v0, v4, v6

    if-gtz v0, :cond_69

    move v0, v2

    :goto_22
    if-nez v0, :cond_2b

    invoke-direct {p0}, Lcom/loc/cd;->bEA()V

    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    if-nez v0, :cond_6b

    :cond_2b
    :goto_2b
    invoke-static {}, Lcom/loc/X;->h()Z

    move-result v0

    iget-object v4, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v5, "nbssid"

    invoke-static {v4, v5}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_74

    :goto_3a
    move v4, v0

    :goto_3b
    iget-object v0, p0, Lcom/loc/cd;->bkv:Ljava/util/TreeMap;

    if-eqz v0, :cond_a9

    :goto_3f
    iget-object v0, p0, Lcom/loc/cd;->bkv:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v1

    :goto_4b
    if-lt v2, v5, :cond_b5

    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/loc/cd;->bkv:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/loc/cd;->bkv:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V
    :try_end_67
    .catchall {:try_start_b .. :try_end_67} :catchall_71

    monitor-exit p0

    return-void

    :cond_69
    move v0, v1

    goto :goto_22

    :cond_6b
    :try_start_6b
    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_71

    goto :goto_2b

    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_74
    :try_start_74
    iget-object v4, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v5, "nbssid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9a

    iget-object v2, p0, Lcom/loc/cd;->bjF:Lorg/json/JSONObject;

    const-string/jumbo v4, "nbssid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_95} :catch_9e
    .catchall {:try_start_74 .. :try_end_95} :catchall_71

    move-result v2

    if-nez v2, :cond_9c

    :goto_98
    move v4, v0

    goto :goto_3b

    :cond_9a
    move v0, v2

    goto :goto_98

    :cond_9c
    move v0, v1

    goto :goto_98

    :catch_9e
    move-exception v2

    :try_start_9f
    const-string/jumbo v4, "APS"

    const-string/jumbo v5, "setWifiOrder part"

    invoke-static {v2, v4, v5}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    :cond_a9
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/loc/cd;->bkv:Ljava/util/TreeMap;

    goto :goto_3f

    :cond_b5
    iget-object v0, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    invoke-static {v0}, Lcom/loc/X;->bxk(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_e2

    const/16 v1, 0x14

    if-gt v5, v1, :cond_e7

    :goto_c7
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f0

    const-string/jumbo v1, "unkwn"

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :cond_d4
    :goto_d4
    iget-object v1, p0, Lcom/loc/cd;->bkv:Ljava/util/TreeMap;

    iget v6, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v6, v6, 0x1e

    add-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_4b

    :cond_e7
    iget v1, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v1}, Lcom/loc/cd;->a(I)Z

    move-result v1

    if-eqz v1, :cond_e2

    goto :goto_c7

    :cond_f0
    if-nez v4, :cond_f9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_d4

    :cond_f9
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string/jumbo v6, "*"

    const-string/jumbo v7, "."

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
    :try_end_107
    .catchall {:try_start_9f .. :try_end_107} :catchall_71

    :try_start_107
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1
    :try_end_111
    .catch Ljava/lang/Throwable; {:try_start_107 .. :try_end_111} :catch_11a
    .catchall {:try_start_107 .. :try_end_111} :catchall_71

    :goto_111
    if-lt v1, v3, :cond_d4

    :try_start_113
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_d4

    :catch_11a
    move-exception v1

    const-string/jumbo v6, "APS"

    const-string/jumbo v7, "setWifiOrder"

    invoke-static {v1, v6, v7}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_111

    :cond_126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, p0, Lcom/loc/cd;->bjA:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_131
    .catchall {:try_start_113 .. :try_end_131} :catchall_71

    goto/16 :goto_5c
.end method

.method public declared-synchronized g()V
    .registers 4

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/loc/cd;->bjN:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_26

    if-ge v0, v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    iget-boolean v0, p0, Lcom/loc/cd;->bkg:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/loc/cd;->bkf:Lcom/loc/bi;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_26

    if-eqz v0, :cond_29

    :goto_10
    :try_start_10
    iget-object v0, p0, Lcom/loc/cd;->bkf:Lcom/loc/bi;

    if-nez v0, :cond_3e

    :goto_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cd;->bkg:Z
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_17} :catch_18
    .catchall {:try_start_10 .. :try_end_17} :catchall_26

    goto :goto_6

    :catch_18
    move-exception v0

    :try_start_19
    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "bindService"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cd;->bkg:Z
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_26

    goto :goto_6

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_29
    :try_start_29
    new-instance v0, Lcom/loc/bi;

    iget-object v1, p0, Lcom/loc/cd;->bjw:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/loc/bi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/cd;->bkf:Lcom/loc/bi;

    iget-object v0, p0, Lcom/loc/cd;->bkf:Lcom/loc/bi;

    iget-object v1, p0, Lcom/loc/cd;->bkw:Lcom/loc/co;

    invoke-virtual {v0, v1}, Lcom/loc/bi;->bAL(Lcom/loc/an;)V
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_26

    goto :goto_10

    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/loc/cd;->bkf:Lcom/loc/bi;

    invoke-virtual {v0}, Lcom/loc/bi;->b()Z
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_43} :catch_18
    .catchall {:try_start_3e .. :try_end_43} :catchall_26

    goto :goto_14
.end method

.method public declared-synchronized h()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_2e

    :goto_9
    iget-boolean v0, p0, Lcom/loc/cd;->bkt:Z

    if-eqz v0, :cond_3e

    :goto_d
    invoke-direct {p0}, Lcom/loc/cd;->bEX()V

    iget-object v0, p0, Lcom/loc/cd;->bky:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {}, Lcom/loc/bj;->a()Lcom/loc/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cd;->bkz:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/cd;->bkA:Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/loc/cd;->bkq:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/bj;->bAP(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_3b

    move-result v1

    if-nez v1, :cond_56

    :goto_2c
    monitor-exit p0

    return-object v0

    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_3b

    goto :goto_9

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3e
    :try_start_3e
    invoke-direct {p0}, Lcom/loc/cd;->j()V

    goto :goto_d

    :cond_42
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    iget v1, p0, Lcom/loc/cd;->bku:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHy(I)V

    iget-object v1, p0, Lcom/loc/cd;->bke:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V

    goto :goto_2c

    :cond_56
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/loc/cd;->bka:J

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHx(I)V

    iput-object v0, p0, Lcom/loc/cd;->bjG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {p0}, Lcom/loc/cd;->bFa()V
    :try_end_63
    .catchall {:try_start_3e .. :try_end_63} :catchall_3b

    monitor-exit p0

    return-object v0
.end method

.method public i()V
    .registers 2

    iget-boolean v0, p0, Lcom/loc/cd;->j:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/loc/cd;->bEE()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/loc/cd;->bEF()V

    goto :goto_4
.end method

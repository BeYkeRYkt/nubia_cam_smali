.class public Lcom/loc/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static bhr:Lcom/loc/bu;

.field private static d:Ljava/lang/String;


# instance fields
.field bhs:Lcom/loc/U;

.field bht:Lcom/loc/aM;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/bu;->bhr:Lcom/loc/bu;

    sput-object v0, Lcom/loc/bu;->d:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/bu;->bhs:Lcom/loc/U;

    iput-object v0, p0, Lcom/loc/bu;->bht:Lcom/loc/aM;

    sget v0, Lcom/loc/bx;->bhx:I

    iput v0, p0, Lcom/loc/bu;->e:I

    sget v0, Lcom/loc/bx;->bhx:I

    iput v0, p0, Lcom/loc/bu;->f:I

    invoke-static {}, Lcom/loc/U;->a()Lcom/loc/U;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bu;->bhs:Lcom/loc/U;

    return-void
.end method

.method public static declared-synchronized bBk(Landroid/content/Context;Z)Lcom/loc/bu;
    .registers 4

    const-class v1, Lcom/loc/bu;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/loc/bu;->bhr:Lcom/loc/bu;

    if-eqz v0, :cond_d

    :goto_7
    if-nez p1, :cond_18

    :goto_9
    sget-object v0, Lcom/loc/bu;->bhr:Lcom/loc/bu;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    monitor-exit v1

    return-object v0

    :cond_d
    :try_start_d
    new-instance v0, Lcom/loc/bu;

    invoke-direct {v0, p0}, Lcom/loc/bu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loc/bu;->bhr:Lcom/loc/bu;
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_15

    goto :goto_7

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_18
    :try_start_18
    invoke-static {p0}, Lcom/loc/bZ;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bu;->d:Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_15

    goto :goto_9
.end method

.method public static bBn(Landroid/net/NetworkInfo;)I
    .registers 3

    const/4 v0, -0x1

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    :cond_13
    return v0
.end method


# virtual methods
.method public bBl(Landroid/content/Context;Lorg/json/JSONObject;Lcom/loc/t;Ljava/lang/String;Z)[B
    .registers 16

    const/4 v3, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x0

    const-string/jumbo v0, "httptimeout"

    invoke-static {p2, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f2

    :goto_c
    invoke-static {p1}, Lcom/loc/X;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bu;->bBn(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_109

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/loc/bO;

    invoke-direct {v2}, Lcom/loc/bO;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v3, "application/octet-stream"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Accept-Encoding"

    const-string/jumbo v3, "gzip"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "gzipped"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Connection"

    const-string/jumbo v3, "Keep-Alive"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "User-Agent"

    const-string/jumbo v3, "AMAP_Location_SDK_Android 2.5.1"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p5, :cond_10a

    :cond_53
    :goto_53
    const-string/jumbo v0, "KEY"

    invoke-static {p1}, Lcom/loc/M;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "enginever"

    const-string/jumbo v3, "4.2"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/loc/bZ;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/loc/M;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/loc/bZ;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ts"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "scode"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "loc"

    if-eqz p5, :cond_118

    :goto_97
    const-string/jumbo v3, "platinfo"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "2.5.1"

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "logversion"

    const-string/jumbo v3, "2.1"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "encr"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/loc/bO;->bCx(Ljava/util/Map;)V

    invoke-virtual {v2, p4}, Lcom/loc/bO;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/loc/t;->a()[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/X;->a([B)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/loc/bO;->a([B)V

    invoke-static {p1}, Lcom/loc/x;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/loc/bO;->bwg(Ljava/net/Proxy;)V

    iget v0, p0, Lcom/loc/bu;->e:I

    invoke-virtual {v2, v0}, Lcom/loc/bO;->a(I)V

    iget v0, p0, Lcom/loc/bu;->e:I

    invoke-virtual {v2, v0}, Lcom/loc/bO;->bwf(I)V

    iget-object v0, p0, Lcom/loc/bu;->bhs:Lcom/loc/U;

    invoke-virtual {v0, v2}, Lcom/loc/U;->bwT(Lcom/loc/q;)[B

    move-result-object v0

    return-object v0

    :cond_f2
    :try_start_f2
    const-string/jumbo v0, "httptimeout"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loc/bu;->e:I
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_f2 .. :try_end_fb} :catch_fd

    goto/16 :goto_c

    :catch_fd
    move-exception v0

    const-string/jumbo v1, "LocNetManager"

    const-string/jumbo v2, "req"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_109
    return-object v3

    :cond_10a
    sget-object v0, Lcom/loc/bu;->d:Ljava/lang/String;

    if-eqz v0, :cond_53

    const-string/jumbo v0, "X-INFO"

    sget-object v3, Lcom/loc/bu;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_53

    :cond_118
    const-string/jumbo v0, "locf"

    goto/16 :goto_97
.end method

.method public bBm([BLandroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 15

    const/4 v9, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-static {p2}, Lcom/loc/X;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bu;->bBn(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/loc/bO;

    invoke-direct {v2}, Lcom/loc/bO;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Connection"

    const-string/jumbo v4, "Keep-Alive"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_5c

    :goto_2f
    invoke-virtual {v2, v0}, Lcom/loc/bO;->bCx(Ljava/util/Map;)V

    invoke-virtual {v2, p3}, Lcom/loc/bO;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/loc/bO;->a([B)V

    invoke-static {p2}, Lcom/loc/x;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/loc/bO;->bwg(Ljava/net/Proxy;)V

    sget v0, Lcom/loc/bx;->bhx:I

    invoke-virtual {v2, v0}, Lcom/loc/bO;->a(I)V

    sget v0, Lcom/loc/bx;->bhx:I

    invoke-virtual {v2, v0}, Lcom/loc/bO;->bwf(I)V

    if-nez p4, :cond_9b

    :try_start_4b
    iget-object v0, p0, Lcom/loc/bu;->bhs:Lcom/loc/U;

    invoke-virtual {v0, v2}, Lcom/loc/U;->bwT(Lcom/loc/q;)[B

    move-result-object v0

    :goto_51
    move-object v2, v0

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5a
    .catch Lcom/loc/i; {:try_start_4b .. :try_end_5a} :catch_a2
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_5a} :catch_ae

    :goto_5a
    return-object v0

    :cond_5b
    return-object v1

    :cond_5c
    const-string/jumbo v3, "Accept-Encoding"

    const-string/jumbo v4, "gzip"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "User-Agent"

    const-string/jumbo v4, "AMAP_Location_SDK_Android 2.5.1"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "platinfo"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "2.5.1"

    aput-object v7, v6, v8

    const/4 v7, 0x1

    const-string/jumbo v8, "loc"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "logversion"

    const-string/jumbo v4, "2.1"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_9b
    :try_start_9b
    iget-object v0, p0, Lcom/loc/bu;->bhs:Lcom/loc/U;

    invoke-virtual {v0, v2}, Lcom/loc/U;->bwS(Lcom/loc/q;)[B
    :try_end_a0
    .catch Lcom/loc/i; {:try_start_9b .. :try_end_a0} :catch_a2
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_a0} :catch_ae

    move-result-object v0

    goto :goto_51

    :catch_a2
    move-exception v0

    const-string/jumbo v2, "LocNetManager"

    const-string/jumbo v3, "post"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_ac
    move-object v0, v1

    goto :goto_5a

    :catch_ae
    move-exception v0

    const-string/jumbo v2, "LocNetManager"

    const-string/jumbo v3, "post"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac
.end method

.method public bBo(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;[B)Ljava/net/HttpURLConnection;
    .registers 10

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/loc/X;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/bu;->bBn(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_42

    new-instance v1, Lcom/loc/bO;

    invoke-direct {v1}, Lcom/loc/bO;-><init>()V

    invoke-virtual {v1, p3}, Lcom/loc/bO;->bCx(Ljava/util/Map;)V

    invoke-virtual {v1, p2}, Lcom/loc/bO;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lcom/loc/bO;->a([B)V

    invoke-static {p1}, Lcom/loc/x;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loc/bO;->bwg(Ljava/net/Proxy;)V

    sget v2, Lcom/loc/bx;->bhx:I

    invoke-virtual {v1, v2}, Lcom/loc/bO;->a(I)V

    sget v2, Lcom/loc/bx;->bhx:I

    invoke-virtual {v1, v2}, Lcom/loc/bO;->bwf(I)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    :goto_3b
    iget-object v2, p0, Lcom/loc/bu;->bhs:Lcom/loc/U;

    invoke-virtual {v2, v1, v0}, Lcom/loc/U;->bwR(Lcom/loc/q;Z)Ljava/net/HttpURLConnection;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_40} :catch_45

    move-result-object v0

    return-object v0

    :cond_42
    return-object v4

    :cond_43
    const/4 v0, 0x1

    goto :goto_3b

    :catch_45
    move-exception v0

    const-string/jumbo v1, "LocNetManager"

    const-string/jumbo v2, "doHttpPost"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

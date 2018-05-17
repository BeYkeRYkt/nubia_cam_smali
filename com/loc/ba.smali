.class public Lcom/loc/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bgB:Lcom/loc/ay;


# instance fields
.field private b:I

.field private bgC:Ljavax/net/ssl/SSLContext;

.field private bgD:Ljava/net/Proxy;

.field private volatile bgE:Z

.field private bgF:Ljavax/net/ssl/HostnameVerifier;

.field private c:I

.field private d:Z

.field private h:J

.field private i:J


# direct methods
.method constructor <init>(IILjava/net/Proxy;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/loc/ba;-><init>(IILjava/net/Proxy;Z)V

    return-void
.end method

.method constructor <init>(IILjava/net/Proxy;Z)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/loc/ba;->bgE:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/loc/ba;->h:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/ba;->i:J

    new-instance v0, Lcom/loc/Q;

    invoke-direct {v0, p0}, Lcom/loc/Q;-><init>(Lcom/loc/ba;)V

    iput-object v0, p0, Lcom/loc/ba;->bgF:Ljavax/net/ssl/HostnameVerifier;

    iput p1, p0, Lcom/loc/ba;->b:I

    iput p2, p0, Lcom/loc/ba;->c:I

    iput-object p3, p0, Lcom/loc/ba;->bgD:Ljava/net/Proxy;

    iput-boolean p4, p0, Lcom/loc/ba;->d:Z

    if-nez p4, :cond_20

    :goto_1f
    return-void

    :cond_20
    :try_start_20
    const-string/jumbo v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/loc/ba;->bgC:Ljavax/net/ssl/SSLContext;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_2f} :catch_30

    goto :goto_1f

    :catch_30
    move-exception v0

    const-string/jumbo v1, "HttpUtil"

    const-string/jumbo v2, "HttpUtil"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method private bAE(Ljava/net/HttpURLConnection;)Lcom/loc/B;
    .registers 11

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_54

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_7d
    .catchall {:try_start_1 .. :try_end_12} :catchall_150

    :try_start_12
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_165
    .catchall {:try_start_12 .. :try_end_15} :catchall_156

    move-result-object v3

    :try_start_16
    new-instance v1, Ljava/io/PushbackInputStream;

    const/4 v0, 0x2

    invoke-direct {v1, v3, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1c} :catch_16a
    .catchall {:try_start_16 .. :try_end_1c} :catchall_15b

    const/4 v0, 0x2

    :try_start_1d
    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->read([B)I

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    const/4 v6, 0x0

    aget-byte v6, v0, v6
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_28} :catch_a4
    .catchall {:try_start_1d .. :try_end_28} :catchall_15f

    const/16 v7, 0x1f

    if-eq v6, v7, :cond_91

    :cond_2c
    move-object v2, v1

    :goto_2d
    const/16 v0, 0x400

    :try_start_2f
    new-array v0, v0, [B

    :goto_31
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_9f

    sget-object v0, Lcom/loc/ba;->bgB:Lcom/loc/ay;

    if-nez v0, :cond_a6

    :goto_3c
    new-instance v0, Lcom/loc/B;

    invoke-direct {v0}, Lcom/loc/B;-><init>()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v0, Lcom/loc/B;->a:[B

    iput-object v5, v0, Lcom/loc/B;->b:Ljava/util/Map;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_49} :catch_a4
    .catchall {:try_start_2f .. :try_end_49} :catchall_82

    if-nez v4, :cond_ac

    :goto_4b
    if-nez v3, :cond_bb

    :goto_4d
    if-nez v1, :cond_ca

    :goto_4f
    if-nez v2, :cond_da

    :goto_51
    if-nez p1, :cond_eb

    :goto_53
    return-object v0

    :cond_54
    :try_start_54
    new-instance v1, Lcom/loc/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_7d} :catch_7d
    .catchall {:try_start_54 .. :try_end_7d} :catchall_150

    :catch_7d
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_81
    :try_start_81
    throw v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    :catchall_82
    move-exception v0

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    :goto_86
    if-nez v4, :cond_fc

    :goto_88
    if-nez v3, :cond_10c

    :goto_8a
    if-nez v2, :cond_11d

    :goto_8c
    if-nez v1, :cond_12e

    :goto_8e
    if-nez p1, :cond_13f

    :goto_90
    throw v0

    :cond_91
    const/4 v6, 0x1

    :try_start_92
    aget-byte v0, v0, v6

    const/16 v6, -0x75

    if-ne v0, v6, :cond_2c

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9d} :catch_a4
    .catchall {:try_start_92 .. :try_end_9d} :catchall_15f

    move-object v2, v0

    goto :goto_2d

    :cond_9f
    const/4 v7, 0x0

    :try_start_a0
    invoke-virtual {v4, v0, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_31

    :catch_a4
    move-exception v0

    goto :goto_81

    :cond_a6
    sget-object v0, Lcom/loc/ba;->bgB:Lcom/loc/ay;

    invoke-interface {v0}, Lcom/loc/ay;->a()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_ab} :catch_a4
    .catchall {:try_start_a0 .. :try_end_ab} :catchall_82

    goto :goto_3c

    :cond_ac
    :try_start_ac
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_4b

    :catch_b0
    move-exception v4

    const-string/jumbo v5, "HttpUrlUtil"

    const-string/jumbo v6, "parseResult"

    invoke-static {v4, v5, v6}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    :cond_bb
    :try_start_bb
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_4d

    :catch_bf
    move-exception v3

    const-string/jumbo v4, "HttpUrlUtil"

    const-string/jumbo v5, "parseResult"

    invoke-static {v3, v4, v5}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    :cond_ca
    :try_start_ca
    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->close()V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_cd} :catch_ce

    goto :goto_4f

    :catch_ce
    move-exception v1

    const-string/jumbo v3, "HttpUrlUtil"

    const-string/jumbo v4, "parseResult"

    invoke-static {v1, v3, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f

    :cond_da
    :try_start_da
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_da .. :try_end_dd} :catch_df

    goto/16 :goto_51

    :catch_df
    move-exception v1

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "parseResult"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    :cond_eb
    :try_start_eb
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ee
    .catch Ljava/lang/Throwable; {:try_start_eb .. :try_end_ee} :catch_f0

    goto/16 :goto_53

    :catch_f0
    move-exception v1

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "parseResult"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_53

    :cond_fc
    :try_start_fc
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_ff
    .catch Ljava/lang/Throwable; {:try_start_fc .. :try_end_ff} :catch_100

    goto :goto_88

    :catch_100
    move-exception v4

    const-string/jumbo v5, "HttpUrlUtil"

    const-string/jumbo v6, "parseResult"

    invoke-static {v4, v5, v6}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_88

    :cond_10c
    :try_start_10c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10f
    .catch Ljava/lang/Throwable; {:try_start_10c .. :try_end_10f} :catch_111

    goto/16 :goto_8a

    :catch_111
    move-exception v3

    const-string/jumbo v4, "HttpUrlUtil"

    const-string/jumbo v5, "parseResult"

    invoke-static {v3, v4, v5}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8a

    :cond_11d
    :try_start_11d
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->close()V
    :try_end_120
    .catch Ljava/lang/Throwable; {:try_start_11d .. :try_end_120} :catch_122

    goto/16 :goto_8c

    :catch_122
    move-exception v2

    const-string/jumbo v3, "HttpUrlUtil"

    const-string/jumbo v4, "parseResult"

    invoke-static {v2, v3, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8c

    :cond_12e
    :try_start_12e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_131
    .catch Ljava/lang/Throwable; {:try_start_12e .. :try_end_131} :catch_133

    goto/16 :goto_8e

    :catch_133
    move-exception v1

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "parseResult"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8e

    :cond_13f
    :try_start_13f
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_142
    .catch Ljava/lang/Throwable; {:try_start_13f .. :try_end_142} :catch_144

    goto/16 :goto_90

    :catch_144
    move-exception v1

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "parseResult"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_90

    :catchall_150
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_86

    :catchall_156
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_86

    :catchall_15b
    move-exception v0

    move-object v1, v2

    goto/16 :goto_86

    :catchall_15f
    move-exception v0

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_86

    :catch_165
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_81

    :catch_16a
    move-exception v0

    move-object v1, v2

    goto/16 :goto_81
.end method

.method private bAF(Ljava/util/Map;Ljava/net/HttpURLConnection;)V
    .registers 6

    if-nez p1, :cond_29

    :cond_2
    :try_start_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "csid"

    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1e} :catch_47

    :goto_1e
    iget v0, p0, Lcom/loc/ba;->b:I

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lcom/loc/ba;->c:I

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void

    :cond_29
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :catch_47
    move-exception v0

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "addHeaders"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method static bAG(Ljava/util/Map;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4b

    :goto_30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-gtz v4, :cond_4f

    :goto_36
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_4b
    const-string/jumbo v0, ""

    goto :goto_30

    :cond_4f
    const-string/jumbo v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36
.end method

.method public static bAz(Lcom/loc/ay;)V
    .registers 1

    sput-object p0, Lcom/loc/ba;->bgB:Lcom/loc/ay;

    return-void
.end method


# virtual methods
.method a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/loc/ba;->i:J

    return-void
.end method

.method bAA(J)V
    .registers 4

    iput-wide p1, p0, Lcom/loc/ba;->h:J

    return-void
.end method

.method bAB(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/loc/f;)V
    .registers 15

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p4, :cond_6d

    :try_start_4
    invoke-static {p3}, Lcom/loc/ba;->bAG(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v0, :cond_6e

    :goto_12
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, p2, v3}, Lcom/loc/ba;->bAD(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bytes="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/loc/ba;->i:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "RANGE"

    invoke-virtual {v1, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v0, 0xc8

    if-ne v4, v0, :cond_93

    const/4 v0, 0x0

    move v3, v0

    :goto_4b
    const/16 v0, 0xce

    if-ne v4, v0, :cond_96

    const/4 v0, 0x0

    :goto_50
    and-int/2addr v0, v3

    if-nez v0, :cond_98

    :goto_53
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v0, 0x400

    new-array v3, v0, [B

    :goto_5b
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_ca

    :cond_61
    iget-boolean v0, p0, Lcom/loc/ba;->bgE:Z

    if-nez v0, :cond_10a

    invoke-interface {p4}, Lcom/loc/f;->c()V

    :goto_68
    if-nez v2, :cond_10f

    :goto_6a
    if-nez v1, :cond_132

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    return-void

    :cond_6e
    const-string/jumbo v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_78} :catch_79
    .catchall {:try_start_4 .. :try_end_78} :catchall_c4

    goto :goto_12

    :catch_79
    move-exception v0

    :try_start_7a
    invoke-interface {p4, v0}, Lcom/loc/f;->a(Ljava/lang/Throwable;)V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_c4

    if-nez v2, :cond_146

    :goto_7f
    if-eqz v1, :cond_6c

    :try_start_81
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_6c

    :catch_85
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makeDownloadGetRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    :cond_93
    const/4 v0, 0x1

    move v3, v0

    goto :goto_4b

    :cond_96
    const/4 v0, 0x1

    goto :goto_50

    :cond_98
    :try_start_98
    new-instance v0, Lcom/loc/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/loc/f;->a(Ljava/lang/Throwable;)V
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_c3} :catch_79
    .catchall {:try_start_98 .. :try_end_c3} :catchall_c4

    goto :goto_53

    :catchall_c4
    move-exception v0

    if-nez v2, :cond_169

    :goto_c7
    if-nez v1, :cond_18c

    :goto_c9
    throw v0

    :cond_ca
    :try_start_ca
    iget-boolean v0, p0, Lcom/loc/ba;->bgE:Z

    if-nez v0, :cond_61

    const/4 v0, 0x0

    const/16 v4, 0x400

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_61

    iget-wide v6, p0, Lcom/loc/ba;->h:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_ea

    iget-wide v6, p0, Lcom/loc/ba;->i:J

    iget-wide v8, p0, Lcom/loc/ba;->h:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_102

    const/4 v0, 0x1

    :goto_e8
    if-nez v0, :cond_61

    :cond_ea
    const/16 v0, 0x400

    if-eq v4, v0, :cond_104

    new-array v0, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v6, p0, Lcom/loc/ba;->i:J

    invoke-interface {p4, v0, v6, v7}, Lcom/loc/f;->bvF([BJ)V

    :goto_fa
    iget-wide v6, p0, Lcom/loc/ba;->i:J

    int-to-long v4, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/loc/ba;->i:J

    goto/16 :goto_5b

    :cond_102
    const/4 v0, 0x0

    goto :goto_e8

    :cond_104
    iget-wide v6, p0, Lcom/loc/ba;->i:J

    invoke-interface {p4, v3, v6, v7}, Lcom/loc/f;->bvF([BJ)V

    goto :goto_fa

    :cond_10a
    invoke-interface {p4}, Lcom/loc/f;->b()V
    :try_end_10d
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_10d} :catch_79
    .catchall {:try_start_ca .. :try_end_10d} :catchall_c4

    goto/16 :goto_68

    :cond_10f
    :try_start_10f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_114
    .catch Ljava/lang/Throwable; {:try_start_10f .. :try_end_112} :catch_123

    goto/16 :goto_6a

    :catch_114
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6a

    :catch_123
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6a

    :cond_132
    :try_start_132
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_132 .. :try_end_135} :catch_137

    goto/16 :goto_6c

    :catch_137
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makeDownloadGetRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6c

    :cond_146
    :try_start_146
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_149} :catch_14b
    .catch Ljava/lang/Throwable; {:try_start_146 .. :try_end_149} :catch_15a

    goto/16 :goto_7f

    :catch_14b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7f

    :catch_15a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7f

    :cond_169
    :try_start_169
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_16c} :catch_16e
    .catch Ljava/lang/Throwable; {:try_start_169 .. :try_end_16c} :catch_17d

    goto/16 :goto_c7

    :catch_16e
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v3, "HttpUrlUtil"

    const-string/jumbo v4, "makeDownloadGetRequest"

    invoke-static {v2, v3, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c7

    :catch_17d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v3, "HttpUrlUtil"

    const-string/jumbo v4, "makeDownloadGetRequest"

    invoke-static {v2, v3, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c7

    :cond_18c
    :try_start_18c
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18f
    .catch Ljava/lang/Throwable; {:try_start_18c .. :try_end_18f} :catch_191

    goto/16 :goto_c9

    :catch_191
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c9
.end method

.method bAC(Ljava/lang/String;Ljava/util/Map;[B)Lcom/loc/B;
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/loc/ba;->bAD(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-nez p3, :cond_f

    :cond_7
    :goto_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-direct {p0, v0}, Lcom/loc/ba;->bAE(Ljava/net/HttpURLConnection;)Lcom/loc/B;

    move-result-object v0

    return-object v0

    :cond_f
    array-length v1, p3

    if-lez v1, :cond_7

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_21
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_21} :catch_22
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_21} :catch_2f
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_21} :catch_3c
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_21} :catch_49
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_21} :catch_56
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_21} :catch_63
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_21} :catch_6d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_21} :catch_7a

    goto :goto_7

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    new-instance v0, Lcom/loc/i;

    const-string/jumbo v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    new-instance v0, Lcom/loc/i;

    const-string/jumbo v1, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    new-instance v0, Lcom/loc/i;

    const-string/jumbo v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    new-instance v0, Lcom/loc/i;

    const-string/jumbo v1, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_56
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    new-instance v0, Lcom/loc/i;

    const-string/jumbo v1, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_63
    move-exception v0

    new-instance v0, Lcom/loc/i;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v0, Lcom/loc/i;

    const-string/jumbo v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_7a
    move-exception v0

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makePostReqeust"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/loc/i;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method bAD(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/loc/cn;->a()V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/ba;->bgD:Ljava/net/Proxy;

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_14
    iget-boolean v1, p0, Lcom/loc/ba;->d:Z

    if-nez v1, :cond_34

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_1a
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-nez v1, :cond_4b

    :cond_1e
    :goto_1e
    invoke-direct {p0, p2, v0}, Lcom/loc/ba;->bAF(Ljava/util/Map;Ljava/net/HttpURLConnection;)V

    if-nez p3, :cond_5b

    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    :goto_2c
    return-object v0

    :cond_2d
    iget-object v1, p0, Lcom/loc/ba;->bgD:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_14

    :cond_34
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/loc/ba;->bgC:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/loc/ba;->bgF:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_1a

    :cond_4b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v1, v2, :cond_1e

    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_5b
    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_2c
.end method

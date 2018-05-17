.class public Lcom/loc/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bep:Lcom/loc/U;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/loc/U;
    .registers 1

    sget-object v0, Lcom/loc/U;->bep:Lcom/loc/U;

    if-eqz v0, :cond_7

    :goto_4
    sget-object v0, Lcom/loc/U;->bep:Lcom/loc/U;

    return-object v0

    :cond_7
    new-instance v0, Lcom/loc/U;

    invoke-direct {v0}, Lcom/loc/U;-><init>()V

    sput-object v0, Lcom/loc/U;->bep:Lcom/loc/U;

    goto :goto_4
.end method


# virtual methods
.method public bwR(Lcom/loc/q;Z)Ljava/net/HttpURLConnection;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/loc/U;->bwU(Lcom/loc/q;)V

    iget-object v1, p1, Lcom/loc/q;->bdv:Ljava/net/Proxy;

    if-eqz v1, :cond_2e

    iget-object v0, p1, Lcom/loc/q;->bdv:Ljava/net/Proxy;

    move-object v1, v0

    :goto_b
    if-nez p2, :cond_30

    new-instance v0, Lcom/loc/ba;

    iget v2, p1, Lcom/loc/q;->c:I

    iget v3, p1, Lcom/loc/q;->d:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/loc/ba;-><init>(IILjava/net/Proxy;Z)V

    :goto_17
    invoke-virtual {p1}, Lcom/loc/q;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/loc/q;->a()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/ba;->bAD(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/q;->h()[B

    move-result-object v1

    if-nez v1, :cond_3d

    :cond_2a
    :goto_2a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    return-object v0

    :cond_2e
    move-object v1, v0

    goto :goto_b

    :cond_30
    new-instance v0, Lcom/loc/ba;

    iget v2, p1, Lcom/loc/q;->c:I

    iget v3, p1, Lcom/loc/q;->d:I

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/loc/ba;-><init>(IILjava/net/Proxy;Z)V
    :try_end_3a
    .catch Lcom/loc/i; {:try_start_1 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3a} :catch_50

    goto :goto_17

    :catch_3b
    move-exception v0

    throw v0

    :cond_3d
    :try_start_3d
    array-length v2, v1

    if-lez v2, :cond_2a

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4f
    .catch Lcom/loc/i; {:try_start_3d .. :try_end_4f} :catch_3b
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_4f} :catch_50

    goto :goto_2a

    :catch_50
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/loc/i;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bwS(Lcom/loc/q;)[B
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/loc/U;->bwV(Lcom/loc/q;Z)Lcom/loc/B;
    :try_end_5
    .catch Lcom/loc/i; {:try_start_2 .. :try_end_5} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_b

    move-result-object v0

    if-nez v0, :cond_15

    return-object v1

    :catch_9
    move-exception v0

    throw v0

    :catch_b
    move-exception v0

    new-instance v0, Lcom/loc/i;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget-object v0, v0, Lcom/loc/B;->a:[B

    return-object v0
.end method

.method public bwT(Lcom/loc/q;)[B
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/loc/U;->bwV(Lcom/loc/q;Z)Lcom/loc/B;
    :try_end_5
    .catch Lcom/loc/i; {:try_start_2 .. :try_end_5} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_b

    move-result-object v0

    if-nez v0, :cond_1e

    return-object v1

    :catch_9
    move-exception v0

    throw v0

    :catch_b
    move-exception v0

    const-string/jumbo v1, "BaseNetManager"

    const-string/jumbo v2, "makeSyncPostRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/loc/i;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-object v0, v0, Lcom/loc/B;->a:[B

    return-object v0
.end method

.method protected bwU(Lcom/loc/q;)V
    .registers 4

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/loc/q;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    :cond_8
    new-instance v0, Lcom/loc/i;

    const-string/jumbo v1, "request url is empty"

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Lcom/loc/i;

    const-string/jumbo v1, "requeust is null"

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/loc/q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void
.end method

.method protected bwV(Lcom/loc/q;Z)Lcom/loc/B;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/loc/U;->bwU(Lcom/loc/q;)V

    iget-object v1, p1, Lcom/loc/q;->bdv:Ljava/net/Proxy;

    if-eqz v1, :cond_a

    iget-object v0, p1, Lcom/loc/q;->bdv:Ljava/net/Proxy;

    :cond_a
    new-instance v1, Lcom/loc/ba;

    iget v2, p1, Lcom/loc/q;->c:I

    iget v3, p1, Lcom/loc/q;->d:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/loc/ba;-><init>(IILjava/net/Proxy;Z)V

    invoke-virtual {p1}, Lcom/loc/q;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/q;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/loc/q;->h()[B

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/loc/ba;->bAC(Ljava/lang/String;Ljava/util/Map;[B)Lcom/loc/B;
    :try_end_22
    .catch Lcom/loc/i; {:try_start_1 .. :try_end_22} :catch_24
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_22} :catch_26

    move-result-object v0

    return-object v0

    :catch_24
    move-exception v0

    throw v0

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/loc/i;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

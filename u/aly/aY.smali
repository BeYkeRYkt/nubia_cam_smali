.class public Lu/aly/aY;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private bxr:Landroid/content/Context;

.field private bxs:Lu/aly/Y;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "10.0.0.172"

    .line 43
    iput-object v0, p0, Lu/aly/aY;->b:Ljava/lang/String;

    const/16 v0, 0x50

    .line 44
    iput v0, p0, Lu/aly/aY;->c:I

    .line 50
    iput-object p1, p0, Lu/aly/aY;->bxr:Landroid/content/Context;

    .line 51
    invoke-direct {p0, p1}, Lu/aly/aY;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aY;->a:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 174
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v0, "Android"

    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "/"

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "5.6.1"

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " "

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :try_start_1d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    invoke-static {p1}, Lu/aly/e;->bQH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "/"

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-static {p1}, Lu/aly/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, " "

    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "/"

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, " "

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lu/aly/bu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_6b} :catch_70

    .line 198
    :goto_6b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 196
    :catch_70
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6b
.end method

.method private a()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    iget-object v0, p0, Lu/aly/aY;->bxr:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 84
    iget-object v2, p0, Lu/aly/aY;->bxr:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    .line 88
    :try_start_17
    iget-object v0, p0, Lu/aly/aY;->bxr:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 90
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 92
    if-nez v0, :cond_2a

    .line 104
    :cond_28
    :goto_28
    return v3

    .line 85
    :cond_29
    return v3

    .line 92
    :cond_2a
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eq v1, v4, :cond_28

    .line 93
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_28

    const-string/jumbo v1, "cmwap"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 97
    :cond_3f
    return v4

    :cond_40
    const-string/jumbo v1, "3gwap"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string/jumbo v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4f} :catch_53

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_28

    .line 102
    :catch_53
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method

.method private bVT([BLjava/lang/String;)[B
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 109
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v2, 0x2710

    .line 111
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x7530

    .line 112
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 113
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    const-string/jumbo v1, "X-Umeng-UTC"

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "X-Umeng-Sdk"

    .line 117
    iget-object v3, p0, Lu/aly/aY;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Msg-Type"

    const-string/jumbo v3, "envelope"

    .line 118
    invoke-virtual {v0, v1, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :try_start_39
    invoke-direct {p0}, Lu/aly/aY;->a()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 126
    :goto_3f
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v4, p1

    int-to-long v4, v4

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 127
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 129
    iget-object v1, p0, Lu/aly/aY;->bxs:Lu/aly/Y;

    if-nez v1, :cond_ae

    .line 132
    :goto_52
    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lu/aly/aY;->bxs:Lu/aly/Y;

    if-nez v1, :cond_bf

    .line 137
    :goto_5a
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const-string/jumbo v2, "Content-Type"

    .line 138
    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    const-string/jumbo v3, "application/thrift"

    .line 140
    invoke-static {v2, v3}, Lu/aly/bu;->bWb(Lorg/apache/http/Header;Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "MobclickAgent"

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lu/aly/O;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    .line 143
    if-eq v1, v3, :cond_c5

    .line 160
    :cond_8e
    return-object v6

    .line 122
    :cond_8f
    new-instance v1, Lorg/apache/http/HttpHost;

    iget-object v3, p0, Lu/aly/aY;->b:Ljava/lang/String;

    iget v4, p0, Lu/aly/aY;->c:I

    invoke-direct {v1, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 123
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string/jumbo v4, "http.route.default-proxy"

    invoke-interface {v3, v4, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_a2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_39 .. :try_end_a2} :catch_a3
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_a2} :catch_b4

    goto :goto_3f

    .line 160
    :catch_a3
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "ClientProtocolException,Failed to send message."

    .line 164
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 165
    return-object v6

    .line 130
    :cond_ae
    :try_start_ae
    iget-object v1, p0, Lu/aly/aY;->bxs:Lu/aly/Y;

    invoke-interface {v1}, Lu/aly/Y;->a()V
    :try_end_b3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_ae .. :try_end_b3} :catch_a3
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b3} :catch_b4

    goto :goto_52

    .line 165
    :catch_b4
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "IOException,Failed to send message."

    .line 167
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 168
    return-object v6

    .line 135
    :cond_bf
    :try_start_bf
    iget-object v1, p0, Lu/aly/aY;->bxs:Lu/aly/Y;

    invoke-interface {v1}, Lu/aly/Y;->b()V

    goto :goto_5a

    .line 143
    :cond_c5
    if-eqz v2, :cond_8e

    const-string/jumbo v1, "MobclickAgent"

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Send message to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 148
    if-nez v0, :cond_e8

    .line 158
    return-object v6

    .line 149
    :cond_e8
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_eb
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_bf .. :try_end_eb} :catch_a3
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_eb} :catch_b4

    move-result-object v0

    .line 152
    :try_start_ec
    invoke-static {v0}, Lu/aly/bu;->bVW(Ljava/io/InputStream;)[B
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_f4

    move-result-object v1

    .line 154
    :try_start_f0
    invoke-static {v0}, Lu/aly/bu;->bVZ(Ljava/io/InputStream;)V

    return-object v1

    :catchall_f4
    move-exception v1

    invoke-static {v0}, Lu/aly/bu;->bVZ(Ljava/io/InputStream;)V

    throw v1
    :try_end_f9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_f0 .. :try_end_f9} :catch_a3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f9} :catch_b4
.end method


# virtual methods
.method public a([B)[B
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    :goto_2
    sget-object v2, Lcom/umeng/analytics/a;->f:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_8

    .line 79
    :cond_7
    :goto_7
    return-object v1

    .line 68
    :cond_8
    sget-object v1, Lcom/umeng/analytics/a;->f:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, p1, v1}, Lu/aly/aY;->bVT([BLjava/lang/String;)[B

    move-result-object v1

    .line 69
    if-nez v1, :cond_19

    .line 75
    iget-object v2, p0, Lu/aly/aY;->bxs:Lu/aly/Y;

    if-nez v2, :cond_23

    .line 67
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 70
    :cond_19
    iget-object v0, p0, Lu/aly/aY;->bxs:Lu/aly/Y;

    if-eqz v0, :cond_7

    .line 71
    iget-object v0, p0, Lu/aly/aY;->bxs:Lu/aly/Y;

    invoke-interface {v0}, Lu/aly/Y;->c()V

    goto :goto_7

    .line 76
    :cond_23
    iget-object v2, p0, Lu/aly/aY;->bxs:Lu/aly/Y;

    invoke-interface {v2}, Lu/aly/Y;->d()V

    goto :goto_16
.end method

.method public bVS(Lu/aly/Y;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lu/aly/aY;->bxs:Lu/aly/Y;

    .line 56
    return-void
.end method

.class public Lcn/nubia/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized bMP(Ljava/lang/String;)Ljava/util/Map;
    .registers 7

    .prologue
    const/4 v0, 0x0

    const-class v1, Lcn/nubia/c/b;

    monitor-enter v1

    :try_start_4
    const-string/jumbo v2, "CheckVersion"

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 67
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcn/nubia/c/b;->bMS()Lorg/apache/http/client/HttpClient;
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_9f

    move-result-object v4

    .line 70
    :try_start_28
    invoke-interface {v4, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 71
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_45

    const-string/jumbo v0, "error"

    const/4 v3, 0x2

    .line 81
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_28 .. :try_end_43} :catch_5d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_43} :catch_88
    .catchall {:try_start_28 .. :try_end_43} :catchall_9f

    :goto_43
    monitor-exit v1

    .line 94
    return-object v2

    .line 72
    :cond_45
    :try_start_45
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    if-nez v4, :cond_74

    .line 74
    :goto_4b
    invoke-static {v0}, Lcn/nubia/c/b;->bMR(Ljava/lang/String;)Lcn/nubia/c/a;

    move-result-object v0

    .line 75
    if-nez v0, :cond_81

    const-string/jumbo v0, "error"

    const/4 v3, 0x1

    .line 78
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_45 .. :try_end_5c} :catch_5d
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_5c} :catch_88
    .catchall {:try_start_45 .. :try_end_5c} :catchall_9f

    goto :goto_43

    .line 83
    :catch_5d
    move-exception v0

    :try_start_5e
    const-string/jumbo v3, "CheckVersion"

    const-string/jumbo v4, "getVersionFromServer failed, because ClientProtocolException!"

    .line 84
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "error"

    const/4 v3, 0x0

    .line 87
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_5e .. :try_end_72} :catchall_9f

    monitor-exit v1

    .line 88
    return-object v2

    .line 73
    :cond_74
    :try_start_74
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :cond_81
    const-string/jumbo v3, "apkInfo"

    .line 76
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_74 .. :try_end_87} :catch_5d
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_87} :catch_88
    .catchall {:try_start_74 .. :try_end_87} :catchall_9f

    goto :goto_43

    .line 88
    :catch_88
    move-exception v0

    :try_start_89
    const-string/jumbo v3, "CheckVersion"

    const-string/jumbo v4, "getVersionFromServer failed, because IOException!"

    .line 90
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "error"

    const/4 v3, 0x0

    .line 91
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9d
    .catchall {:try_start_89 .. :try_end_9d} :catchall_9f

    monitor-exit v1

    .line 92
    return-object v2

    :catchall_9f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static bMQ(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    .prologue
    const-string/jumbo v0, "CheckVersion"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "download url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method private static bMR(Ljava/lang/String;)Lcn/nubia/c/a;
    .registers 11

    .prologue
    const/4 v7, 0x0

    const-string/jumbo v0, "CheckVersion"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "response = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-nez p0, :cond_1b

    move-object v0, v7

    .line 139
    :goto_1a
    return-object v0

    .line 119
    :cond_1b
    :try_start_1b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "app_name"

    .line 120
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "apk_name"

    .line 121
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ver_name"

    .line 122
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ver_code"

    .line 123
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "url"

    .line 124
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "history"

    .line 126
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 127
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 128
    :goto_50
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_60

    .line 129
    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 130
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 132
    :cond_60
    new-instance v0, Lcn/nubia/c/a;

    .line 133
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 132
    invoke-direct/range {v0 .. v6}, Lcn/nubia/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_69} :catch_6a

    goto :goto_1a

    .line 134
    :catch_6a
    move-exception v0

    .line 135
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 136
    return-object v7
.end method

.method private static bMS()Lorg/apache/http/client/HttpClient;
    .registers 4

    .prologue
    .line 143
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 144
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const/16 v2, 0x7530

    .line 145
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const-wide/16 v2, 0x7530

    .line 146
    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 147
    return-object v0
.end method

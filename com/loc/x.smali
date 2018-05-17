.class public Lcom/loc/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_8

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_13

    :goto_7
    return-object v0

    :catch_8
    move-exception v1

    const-string/jumbo v2, "ProxyUtil"

    const-string/jumbo v3, "getDefHost"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_13
    const-string/jumbo v0, "null"

    goto :goto_7
.end method

.method public static a(Landroid/content/Context;)Ljava/net/Proxy;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_c

    invoke-static {p0}, Lcom/loc/x;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/net/URI;

    const-string/jumbo v2, "http://restapi.amap.com"

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/loc/x;->bwr(Landroid/content/Context;Ljava/net/URI;)Ljava/net/Proxy;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_17} :catch_19

    move-result-object v0

    goto :goto_b

    :catch_19
    move-exception v0

    const-string/jumbo v2, "ProxyUtil"

    const-string/jumbo v3, "getProxy"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_b
.end method

.method private static b()I
    .registers 4

    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_6

    move-result v0

    :goto_5
    return v0

    :catch_6
    move-exception v1

    const-string/jumbo v2, "ProxyUtil"

    const-string/jumbo v3, "getDefPort"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private static b(Landroid/content/Context;)Ljava/net/Proxy;
    .registers 13

    const/16 v6, 0x50

    const/4 v10, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {p0}, Lcom/loc/x;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-object v7

    :cond_d
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1c
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_1f} :catch_c8
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_148
    .catchall {:try_start_1c .. :try_end_1f} :catchall_16e

    move-result-object v2

    if-nez v2, :cond_38

    :cond_22
    move v6, v8

    move-object v3, v7

    :cond_24
    :goto_24
    if-nez v2, :cond_b4

    :cond_26
    :goto_26
    :try_start_26
    invoke-static {v3, v6}, Lcom/loc/x;->bwq(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-static {v3, v6}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_37} :catch_185

    return-object v0

    :cond_38
    :try_start_38
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string/jumbo v0, "apn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6e

    :goto_4b
    if-nez v0, :cond_75

    :cond_4d
    if-eqz v0, :cond_22

    const-string/jumbo v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/loc/x;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/loc/x;->b()I
    :try_end_5f
    .catch Ljava/lang/SecurityException; {:try_start_38 .. :try_end_5f} :catch_1ac
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_5f} :catch_199
    .catchall {:try_start_38 .. :try_end_5f} :catchall_194

    move-result v1

    :try_start_60
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_63
    .catch Ljava/lang/SecurityException; {:try_start_60 .. :try_end_63} :catch_1c1
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_63} :catch_1a5
    .catchall {:try_start_60 .. :try_end_63} :catchall_194

    move-result v0

    if-eqz v0, :cond_a5

    :cond_66
    move v0, v9

    move-object v3, v7

    :goto_68
    if-eqz v0, :cond_b0

    :goto_6a
    if-eq v1, v8, :cond_24

    move v6, v1

    goto :goto_24

    :cond_6e
    :try_start_6e
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :cond_75
    const-string/jumbo v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-static {}, Lcom/loc/x;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/loc/x;->b()I
    :try_end_85
    .catch Ljava/lang/SecurityException; {:try_start_6e .. :try_end_85} :catch_1ac
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_85} :catch_199
    .catchall {:try_start_6e .. :try_end_85} :catchall_194

    move-result v0

    :try_start_86
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_94

    :cond_8c
    move v1, v9

    move-object v3, v7

    :goto_8e
    if-eqz v1, :cond_9f

    :goto_90
    if-eq v0, v8, :cond_a3

    :goto_92
    move v6, v0

    goto :goto_24

    :cond_94
    const-string/jumbo v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9a
    .catch Ljava/lang/SecurityException; {:try_start_86 .. :try_end_9a} :catch_1b2
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_9a} :catch_19c
    .catchall {:try_start_86 .. :try_end_9a} :catchall_194

    move-result v1

    if-nez v1, :cond_8c

    move v1, v10

    goto :goto_8e

    :cond_9f
    :try_start_9f
    const-string/jumbo v3, "10.0.0.200"
    :try_end_a2
    .catch Ljava/lang/SecurityException; {:try_start_9f .. :try_end_a2} :catch_1ba
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a2} :catch_1a1
    .catchall {:try_start_9f .. :try_end_a2} :catchall_194

    goto :goto_90

    :cond_a3
    move v0, v6

    goto :goto_92

    :cond_a5
    :try_start_a5
    const-string/jumbo v0, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_ab
    .catch Ljava/lang/SecurityException; {:try_start_a5 .. :try_end_ab} :catch_1c1
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_ab} :catch_1a5
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_194

    move-result v0

    if-nez v0, :cond_66

    move v0, v10

    goto :goto_68

    :cond_b0
    :try_start_b0
    const-string/jumbo v3, "10.0.0.172"
    :try_end_b3
    .catch Ljava/lang/SecurityException; {:try_start_b0 .. :try_end_b3} :catch_1c8
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_b3} :catch_1a9
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_194

    goto :goto_6a

    :cond_b4
    :try_start_b4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_b7} :catch_b9

    goto/16 :goto_26

    :catch_b9
    move-exception v0

    const-string/jumbo v1, "ProxyUtil"

    const-string/jumbo v2, "getHostProxy2"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_26

    :catch_c8
    move-exception v0

    move-object v1, v7

    move v2, v8

    move-object v3, v7

    :goto_cc
    :try_start_cc
    const-string/jumbo v4, "ProxyUtil"

    const-string/jumbo v5, "getHostProxy"

    invoke-static {v0, v4, v5}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/cn;->bFY(Landroid/content/Context;)Ljava/lang/String;
    :try_end_d8
    .catchall {:try_start_cc .. :try_end_d8} :catchall_196

    move-result-object v0

    if-nez v0, :cond_f2

    :cond_db
    :goto_db
    move v6, v2

    :cond_dc
    :goto_dc
    if-eqz v1, :cond_26

    :try_start_de
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_de .. :try_end_e1} :catch_e3

    goto/16 :goto_26

    :catch_e3
    move-exception v0

    const-string/jumbo v1, "ProxyUtil"

    const-string/jumbo v2, "getHostProxy2"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_26

    :cond_f2
    :try_start_f2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/loc/x;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/loc/x;->b()I

    move-result v2

    const-string/jumbo v5, "ctwap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_11e

    const-string/jumbo v5, "wap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_db

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_139

    :cond_118
    move v2, v9

    move-object v0, v3

    :goto_11a
    if-eqz v2, :cond_144

    :goto_11c
    move-object v3, v0

    goto :goto_dc

    :cond_11e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_129

    :cond_124
    :goto_124
    if-eqz v9, :cond_135

    :goto_126
    if-eq v2, v8, :cond_dc

    goto :goto_db

    :cond_129
    const-string/jumbo v4, "null"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_124

    move v9, v10

    move-object v3, v0

    goto :goto_124

    :cond_135
    const-string/jumbo v3, "10.0.0.200"

    goto :goto_126

    :cond_139
    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_118

    move v2, v10

    goto :goto_11a

    :cond_144
    const-string/jumbo v0, "10.0.0.200"
    :try_end_147
    .catchall {:try_start_f2 .. :try_end_147} :catchall_196

    goto :goto_11c

    :catch_148
    move-exception v0

    move-object v2, v7

    move-object v3, v7

    :goto_14b
    :try_start_14b
    const-string/jumbo v1, "ProxyUtil"

    const-string/jumbo v4, "getHostProxy1"

    invoke-static {v0, v1, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_157
    .catchall {:try_start_14b .. :try_end_157} :catchall_194

    if-nez v2, :cond_15c

    :goto_159
    move v6, v8

    goto/16 :goto_26

    :cond_15c
    :try_start_15c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_15f
    .catch Ljava/lang/Throwable; {:try_start_15c .. :try_end_15f} :catch_160

    goto :goto_159

    :catch_160
    move-exception v0

    const-string/jumbo v1, "ProxyUtil"

    const-string/jumbo v2, "getHostProxy2"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_159

    :catchall_16e
    move-exception v0

    move-object v2, v7

    :goto_170
    if-nez v2, :cond_173

    :goto_172
    throw v0

    :cond_173
    :try_start_173
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_176
    .catch Ljava/lang/Throwable; {:try_start_173 .. :try_end_176} :catch_177

    goto :goto_172

    :catch_177
    move-exception v1

    const-string/jumbo v2, "ProxyUtil"

    const-string/jumbo v3, "getHostProxy2"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_172

    :catch_185
    move-exception v0

    const-string/jumbo v1, "ProxyUtil"

    const-string/jumbo v2, "getHostProxy2"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_c

    :catchall_194
    move-exception v0

    goto :goto_170

    :catchall_196
    move-exception v0

    move-object v2, v1

    goto :goto_170

    :catch_199
    move-exception v0

    move-object v3, v7

    goto :goto_14b

    :catch_19c
    move-exception v1

    move v8, v0

    move-object v3, v7

    move-object v0, v1

    goto :goto_14b

    :catch_1a1
    move-exception v1

    move v8, v0

    move-object v0, v1

    goto :goto_14b

    :catch_1a5
    move-exception v0

    move v8, v1

    move-object v3, v7

    goto :goto_14b

    :catch_1a9
    move-exception v0

    move v8, v1

    goto :goto_14b

    :catch_1ac
    move-exception v0

    move-object v1, v2

    move-object v3, v7

    move v2, v8

    goto/16 :goto_cc

    :catch_1b2
    move-exception v1

    move-object v3, v7

    move-object v11, v2

    move v2, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_cc

    :catch_1ba
    move-exception v1

    move-object v11, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v11

    goto/16 :goto_cc

    :catch_1c1
    move-exception v0

    move-object v3, v7

    move v11, v1

    move-object v1, v2

    move v2, v11

    goto/16 :goto_cc

    :catch_1c8
    move-exception v0

    move-object v11, v2

    move v2, v1

    move-object v1, v11

    goto/16 :goto_cc
.end method

.method private static bwq(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static bwr(Landroid/content/Context;Ljava/net/URI;)Ljava/net/Proxy;
    .registers 6

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/loc/x;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    :try_start_8
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_14

    :cond_12
    move-object v0, v1

    :goto_13
    return-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_29} :catch_2c

    if-eq v2, v3, :cond_12

    goto :goto_13

    :catch_2c
    move-exception v0

    const-string/jumbo v2, "ProxyUtil"

    const-string/jumbo v3, "getProxySelectorCfg"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/loc/cn;->bFW(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

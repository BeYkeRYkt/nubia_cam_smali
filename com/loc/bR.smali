.class public Lcom/loc/bR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static biJ:J

.field private static biK:Z

.field private static biL:I

.field private static biM:Z

.field private static biN:I

.field private static biO:Z

.field private static biP:Z

.field private static biQ:Z

.field private static biR:I

.field private static biS:J

.field private static biT:Z

.field private static biU:I

.field private static biV:J

.field private static biW:Ljava/lang/String;

.field private static biX:Ljava/lang/String;

.field private static biY:Z

.field private static biZ:Z

.field private static bja:I

.field private static bjb:I

.field private static bjc:Z

.field private static bjd:J

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static i:J

.field private static j:J


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "\u63d0\u793a\u4fe1\u606f"

    sput-object v0, Lcom/loc/bR;->b:Ljava/lang/String;

    const-string/jumbo v0, "\u786e\u8ba4"

    sput-object v0, Lcom/loc/bR;->c:Ljava/lang/String;

    const-string/jumbo v0, "\u53d6\u6d88"

    sput-object v0, Lcom/loc/bR;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bR;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bR;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bR;->g:Ljava/lang/String;

    sput-boolean v2, Lcom/loc/bR;->h:Z

    sput-wide v4, Lcom/loc/bR;->i:J

    sput-wide v4, Lcom/loc/bR;->j:J

    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/loc/bR;->biJ:J

    sput-boolean v2, Lcom/loc/bR;->biK:Z

    sput v2, Lcom/loc/bR;->biL:I

    sput-boolean v2, Lcom/loc/bR;->biM:Z

    sput v2, Lcom/loc/bR;->biN:I

    sput-boolean v2, Lcom/loc/bR;->biO:Z

    sput-boolean v3, Lcom/loc/bR;->biP:Z

    sput-boolean v3, Lcom/loc/bR;->biQ:Z

    sput v6, Lcom/loc/bR;->biR:I

    sput-wide v4, Lcom/loc/bR;->biS:J

    sput-boolean v3, Lcom/loc/bR;->biT:Z

    sput v6, Lcom/loc/bR;->biU:I

    sput-wide v4, Lcom/loc/bR;->biV:J

    sput-boolean v2, Lcom/loc/bR;->biY:Z

    sput-boolean v2, Lcom/loc/bR;->biZ:Z

    const/16 v0, 0xbb8

    sput v0, Lcom/loc/bR;->bja:I

    sput v2, Lcom/loc/bR;->bjb:I

    sput-boolean v3, Lcom/loc/bR;->bjc:Z

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/loc/bR;->bjd:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized a(Z)V
    .registers 3

    const-class v0, Lcom/loc/bR;

    monitor-enter v0

    :try_start_3
    sput-boolean p0, Lcom/loc/bR;->biY:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/loc/bR;->biK:Z

    return v0
.end method

.method public static a(J)Z
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v4

    sget-boolean v0, Lcom/loc/bR;->h:Z

    if-nez v0, :cond_b

    :cond_a
    return v2

    :cond_b
    sget-wide v6, Lcom/loc/bR;->j:J

    sub-long v6, v4, v6

    sget-wide v8, Lcom/loc/bR;->i:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_23

    move v0, v1

    :goto_16
    if-nez v0, :cond_a

    sub-long/2addr v4, p0

    sget-wide v6, Lcom/loc/bR;->biJ:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_25

    move v0, v1

    :goto_20
    if-eqz v0, :cond_a

    return v1

    :cond_23
    move v0, v2

    goto :goto_16

    :cond_25
    move v0, v2

    goto :goto_20
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .registers 6

    const-class v2, Lcom/loc/bR;

    monitor-enter v2

    :try_start_3
    sput-object p0, Lcom/loc/bR;->a:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2c

    const/4 v0, 0x0

    :try_start_6
    const-string/jumbo v1, "2.5.1"

    invoke-static {v1}, Lcom/loc/bx;->a(Ljava/lang/String;)Lcom/loc/ag;

    move-result-object v1

    invoke-static {p0}, Lcom/loc/bx;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v1, v3, v4}, Lcom/loc/ae;->bxD(Landroid/content/Context;Lcom/loc/ag;Ljava/lang/String;Ljava/util/Map;)Lcom/loc/be;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_15} :catch_1f
    .catchall {:try_start_6 .. :try_end_15} :catchall_2a

    move-result-object v1

    if-nez v1, :cond_1a

    :goto_18
    monitor-exit v2

    return v0

    :cond_1a
    :try_start_1a
    invoke-static {v1}, Lcom/loc/bR;->bDv(Lcom/loc/be;)Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_1f
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2a

    move-result v0

    goto :goto_18

    :catch_1f
    move-exception v1

    :try_start_20
    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "getConfig"

    invoke-static {v1, v3, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2a

    goto :goto_18

    :catchall_2a
    move-exception v0

    :try_start_2b
    throw v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static b()I
    .registers 1

    sget v0, Lcom/loc/bR;->biL:I

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "exception"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/loc/bA;->bCd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "2.5.1"

    invoke-static {v1}, Lcom/loc/bx;->a(Ljava/lang/String;)Lcom/loc/ag;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/loc/ag;->a(Z)V

    invoke-static {p0, v1}, Lcom/loc/bo;->bBd(Landroid/content/Context;Lcom/loc/ag;)Lcom/loc/bo;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "isUploadException"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method private static bDA(Landroid/content/Context;J)V
    .registers 6

    :try_start_0
    const-string/jumbo v0, "pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "ngpsTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "ngpsCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/loc/bA;->bBW(Landroid/content/SharedPreferences$Editor;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "resetPrefsNGPS"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public static bDB()Z
    .registers 1

    sget-boolean v0, Lcom/loc/bR;->bjc:Z

    return v0
.end method

.method public static bDC()J
    .registers 2

    sget-wide v0, Lcom/loc/bR;->bjd:J

    return-wide v0
.end method

.method private static bDl(Lcom/loc/be;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/be;->bgM:Lorg/json/JSONObject;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const-string/jumbo v1, "opflag"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/ae;->bxC(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/bR;->biP:Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_4

    :catch_17
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "loadConfigData_offlineLoc"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static bDm(Lcom/loc/be;)V
    .registers 8

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    :try_start_3
    iget-object v0, p0, Lcom/loc/be;->bgI:Lorg/json/JSONObject;

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    const-string/jumbo v1, "callamapflag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/loc/ae;->bxC(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/loc/bR;->biQ:Z

    const-string/jumbo v1, "count"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/loc/bR;->biR:I

    const-string/jumbo v1, "sysTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/loc/bR;->biS:J

    sget v0, Lcom/loc/bR;->biR:I

    if-eq v0, v6, :cond_7

    sget-wide v0, Lcom/loc/bR;->biS:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "nowtime"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/loc/bA;->bBZ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sget-wide v2, Lcom/loc/bR;->biS:J

    invoke-static {v2, v3, v0, v1}, Lcom/loc/X;->bxv(JJ)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bR;->c(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_51} :catch_52

    goto :goto_7

    :catch_52
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "loadConfigData_callAMapSer"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private static bDn(Lcom/loc/be;)V
    .registers 8

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    :try_start_3
    iget-object v0, p0, Lcom/loc/be;->bgJ:Lorg/json/JSONObject;

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    const-string/jumbo v1, "amappushflag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/loc/ae;->bxC(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/loc/bR;->biT:Z

    const-string/jumbo v1, "count"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/loc/bR;->biU:I

    const-string/jumbo v1, "sysTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/loc/bR;->biV:J

    sget v0, Lcom/loc/bR;->biU:I

    if-eq v0, v6, :cond_7

    sget-wide v0, Lcom/loc/bR;->biV:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "pushSerTime"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/loc/bA;->bBZ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sget-wide v2, Lcom/loc/bR;->biV:J

    invoke-static {v2, v3, v0, v1}, Lcom/loc/X;->bxv(JJ)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bR;->d(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_51} :catch_52

    goto :goto_7

    :catch_52
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "loadConfigData_callAMapPush"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private static bDo(Lcom/loc/be;)V
    .registers 13

    const-wide/32 v10, 0x36ee80

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/loc/be;->bgK:Lorg/json/JSONObject;

    if-nez v3, :cond_a

    :goto_9
    return-void

    :cond_a
    const-string/jumbo v2, "f"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/loc/ae;->bxC(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/loc/bR;->biY:Z

    sget-boolean v2, Lcom/loc/bR;->biY:Z

    if-nez v2, :cond_84

    :cond_1d
    :goto_1d
    const-string/jumbo v0, "a"

    const-string/jumbo v1, "\u63d0\u793a\u4fe1\u606f"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bR;->b:Ljava/lang/String;

    const-string/jumbo v0, "o"

    const-string/jumbo v1, "\u786e\u8ba4"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bR;->c:Ljava/lang/String;

    const-string/jumbo v0, "c"

    const-string/jumbo v1, "\u53d6\u6d88"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bR;->d:Ljava/lang/String;

    const-string/jumbo v0, "i"

    const-string/jumbo v1, ""

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bR;->e:Ljava/lang/String;

    const-string/jumbo v0, "u"

    const-string/jumbo v1, ""

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bR;->f:Ljava/lang/String;

    const-string/jumbo v0, "t"

    const-string/jumbo v1, ""

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bR;->g:Ljava/lang/String;

    sget-object v0, Lcom/loc/bR;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_db

    :cond_6d
    sget-object v0, Lcom/loc/bR;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e8

    :cond_75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/bR;->biY:Z
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_78} :catch_79

    goto :goto_9

    :catch_79
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "loadConfigData_openAMap"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_84
    :try_start_84
    sget-object v2, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v4, "abcd"

    const-string/jumbo v5, "abc"

    const-wide/16 v6, 0x0

    invoke-static {v2, v4, v5, v6, v7}, Lcom/loc/bA;->bBZ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v4

    cmp-long v2, v8, v10

    if-gtz v2, :cond_d3

    move v2, v0

    :goto_9d
    if-nez v2, :cond_aa

    sget-object v2, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v8, "abcd"

    const-string/jumbo v9, "abc"

    invoke-static {v2, v8, v9, v6, v7}, Lcom/loc/bA;->bBY(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_aa
    cmp-long v2, v6, v4

    if-gtz v2, :cond_d5

    move v2, v0

    :goto_af
    if-nez v2, :cond_bd

    sub-long v8, v6, v4

    cmp-long v2, v8, v10

    if-ltz v2, :cond_d7

    move v2, v0

    :goto_b8
    if-nez v2, :cond_bd

    const/4 v2, 0x0

    sput-boolean v2, Lcom/loc/bR;->biY:Z

    :cond_bd
    cmp-long v2, v6, v4

    if-ltz v2, :cond_d9

    :goto_c1
    if-nez v0, :cond_1d

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/bR;->biY:Z

    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v1, "abcd"

    const-string/jumbo v2, "abc"

    invoke-static {v0, v1, v2, v6, v7}, Lcom/loc/bA;->bBY(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1d

    :cond_d3
    move v2, v1

    goto :goto_9d

    :cond_d5
    move v2, v1

    goto :goto_af

    :cond_d7
    move v2, v1

    goto :goto_b8

    :cond_d9
    move v0, v1

    goto :goto_c1

    :cond_db
    const-string/jumbo v0, "null"

    sget-object v1, Lcom/loc/bR;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_9

    :cond_e8
    const-string/jumbo v0, "null"

    sget-object v1, Lcom/loc/bR;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f0
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_f0} :catch_79

    move-result v0

    if-nez v0, :cond_75

    goto/16 :goto_9
.end method

.method private static bDp(Lcom/loc/be;)V
    .registers 6

    :try_start_0
    const-string/jumbo v0, "2.5.1"

    invoke-static {v0}, Lcom/loc/bx;->a(Ljava/lang/String;)Lcom/loc/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/be;->bgS:Lcom/loc/bL;

    if-nez v1, :cond_12

    sget-object v1, Lcom/loc/bR;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/loc/bH;->bCp(Landroid/content/Context;Lcom/loc/ch;Lcom/loc/ag;)V

    :goto_11
    return-void

    :cond_12
    iget-object v2, v1, Lcom/loc/bL;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/loc/bL;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/loc/bL;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_30

    :cond_1e
    sget-object v1, Lcom/loc/bR;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/loc/bH;->bCp(Landroid/content/Context;Lcom/loc/ch;Lcom/loc/ag;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_11

    :catch_25
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "loadConfigData_sdkUpdate"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_30
    :try_start_30
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    new-instance v4, Lcom/loc/ch;

    invoke-direct {v4, v3, v2, v1}, Lcom/loc/ch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/loc/bR;->a:Landroid/content/Context;

    invoke-static {v1, v4, v0}, Lcom/loc/bH;->bCp(Landroid/content/Context;Lcom/loc/ch;Lcom/loc/ag;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_46} :catch_25

    goto :goto_11
.end method

.method private static bDq(Lcom/loc/be;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/loc/be;->bgT:Lcom/loc/bl;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v1, v0, Lcom/loc/bl;->a:Ljava/lang/String;

    sput-object v1, Lcom/loc/bR;->biW:Ljava/lang/String;

    iget-object v0, v0, Lcom/loc/bl;->b:Ljava/lang/String;

    sput-object v0, Lcom/loc/bR;->biX:Ljava/lang/String;

    sget-object v0, Lcom/loc/bR;->biW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/loc/bR;->biX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/loc/V;

    sget-object v1, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v2, "loc"

    sget-object v3, Lcom/loc/bR;->biW:Ljava/lang/String;

    sget-object v4, Lcom/loc/bR;->biX:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/loc/V;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/loc/V;->a()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_4

    :catch_2f
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "loadConfigData_groupOffset"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static bDr(Lcom/loc/be;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/be;->bgR:Lcom/loc/aB;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-boolean v0, v0, Lcom/loc/aB;->a:Z

    const-string/jumbo v1, "2.5.1"

    invoke-static {v1}, Lcom/loc/bx;->a(Ljava/lang/String;)Lcom/loc/ag;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/loc/ag;->a(Z)V

    sget-object v2, Lcom/loc/bR;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/loc/bo;->bBd(Landroid/content/Context;Lcom/loc/ag;)Lcom/loc/bo;

    sget-object v1, Lcom/loc/bR;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/bR;->bDy(Landroid/content/Context;Z)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_4

    :catch_1c
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "loadConfigData_uploadException"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static bDs(Lcom/loc/be;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/loc/be;->bgL:Lorg/json/JSONObject;

    if-nez v1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const-string/jumbo v0, "able"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/loc/ae;->bxC(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "fs"

    invoke-static {v1, v0}, Lcom/loc/bR;->bDw(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/J;

    move-result-object v0

    if-nez v0, :cond_59

    :goto_1d
    const-string/jumbo v0, "us"

    invoke-static {v1, v0}, Lcom/loc/bR;->bDw(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/J;

    move-result-object v0

    if-nez v0, :cond_71

    :cond_26
    :goto_26
    const-string/jumbo v0, "rs"

    invoke-static {v1, v0}, Lcom/loc/bR;->bDw(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/J;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/loc/J;->bed:Z

    sput-boolean v1, Lcom/loc/bR;->h:Z

    sget-boolean v1, Lcom/loc/bR;->h:Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_35} :catch_4e

    if-nez v1, :cond_95

    :goto_37
    :try_start_37
    iget-object v0, v0, Lcom/loc/J;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lcom/loc/bR;->i:J
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_42} :catch_43
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_42} :catch_4e

    goto :goto_4

    :catch_43
    move-exception v0

    :try_start_44
    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "loadconfig part"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_4d} :catch_4e

    goto :goto_4

    :catch_4e
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "loadConfigData_locate"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_59
    :try_start_59
    iget-boolean v2, v0, Lcom/loc/J;->bed:Z

    sput-boolean v2, Lcom/loc/bR;->biK:Z
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5d} :catch_4e

    :try_start_5d
    iget-object v0, v0, Lcom/loc/J;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/loc/bR;->biL:I
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_65} :catch_66
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_65} :catch_4e

    goto :goto_1d

    :catch_66
    move-exception v0

    :try_start_67
    const-string/jumbo v2, "AuthUtil"

    const-string/jumbo v3, "loadconfig part2"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_71
    iget-boolean v2, v0, Lcom/loc/J;->bed:Z

    sput-boolean v2, Lcom/loc/bR;->biM:Z

    iget-boolean v2, v0, Lcom/loc/J;->a:Z

    sput-boolean v2, Lcom/loc/bR;->biO:Z
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_79} :catch_4e

    :try_start_79
    iget-object v0, v0, Lcom/loc/J;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/loc/bR;->biN:I
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_81} :catch_8a
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_81} :catch_4e

    :goto_81
    :try_start_81
    sget v0, Lcom/loc/bR;->biN:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_26

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/bR;->biM:Z

    goto :goto_26

    :catch_8a
    move-exception v0

    const-string/jumbo v2, "AuthUtil"

    const-string/jumbo v3, "loadconfig part1"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    :cond_95
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    sput-wide v2, Lcom/loc/bR;->j:J

    iget v1, v0, Lcom/loc/J;->d:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    sput-wide v2, Lcom/loc/bR;->biJ:J
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_a2} :catch_4e

    goto :goto_37
.end method

.method private static bDt(Lcom/loc/be;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/be;->bgN:Lorg/json/JSONObject;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const-string/jumbo v1, "able"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/loc/ae;->bxC(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/loc/bR;->biZ:Z

    const-string/jumbo v1, "c"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_39

    mul-int/lit16 v1, v1, 0x3e8

    sput v1, Lcom/loc/bR;->bja:I

    :goto_21
    const-string/jumbo v1, "t"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/loc/bR;->bjb:I
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_4

    :catch_2e
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "loadConfigData_ngps"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_39
    const/16 v1, 0xbb8

    :try_start_3b
    sput v1, Lcom/loc/bR;->bja:I
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3d} :catch_2e

    goto :goto_21
.end method

.method private static bDu(Lcom/loc/be;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/be;->bgO:Lorg/json/JSONObject;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const-string/jumbo v1, "able"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/loc/ae;->bxC(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/loc/bR;->bjc:Z

    const-string/jumbo v1, "c"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lcom/loc/bR;->bjd:J
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_4

    :catch_24
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "loadConfigData_cacheAble"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static bDv(Lcom/loc/be;)Z
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/loc/bR;->bDl(Lcom/loc/be;)V

    invoke-static {p0}, Lcom/loc/bR;->bDm(Lcom/loc/be;)V

    invoke-static {p0}, Lcom/loc/bR;->bDn(Lcom/loc/be;)V

    invoke-static {p0}, Lcom/loc/bR;->bDo(Lcom/loc/be;)V

    invoke-static {p0}, Lcom/loc/bR;->bDp(Lcom/loc/be;)V

    invoke-static {p0}, Lcom/loc/bR;->bDq(Lcom/loc/be;)V

    invoke-static {p0}, Lcom/loc/bR;->bDr(Lcom/loc/be;)V

    invoke-static {p0}, Lcom/loc/bR;->bDs(Lcom/loc/be;)V

    invoke-static {p0}, Lcom/loc/bR;->bDt(Lcom/loc/be;)V

    invoke-static {p0}, Lcom/loc/bR;->bDu(Lcom/loc/be;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1e} :catch_20

    const/4 v0, 0x1

    return v0

    :catch_20
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "loadconfig"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static bDw(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/J;
    .registers 8

    const/4 v5, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v1, Lcom/loc/J;

    invoke-direct {v1}, Lcom/loc/J;-><init>()V

    const-string/jumbo v3, "b"

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/loc/ae;->bxC(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/loc/J;->a:Z

    const-string/jumbo v3, "t"

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/loc/J;->b:Ljava/lang/String;

    const-string/jumbo v3, "st"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/loc/ae;->bxC(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/loc/J;->bed:Z

    const-string/jumbo v0, "i"

    const/4 v3, 0x5

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/loc/J;->d:I

    move-object v0, v1

    goto :goto_4
.end method

.method public static declared-synchronized bDx()Z
    .registers 2

    const-class v0, Lcom/loc/bR;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/loc/bR;->biY:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static bDy(Landroid/content/Context;Z)V
    .registers 4

    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "exception"

    invoke-static {p0, v0, v1, p1}, Lcom/loc/bA;->bCc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static bDz(J)Z
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/loc/bR;->biZ:Z

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v4

    sub-long v6, v4, p0

    sget v0, Lcom/loc/bR;->bja:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_18

    move v0, v1

    :goto_14
    if-nez v0, :cond_1a

    return v2

    :cond_17
    return v2

    :cond_18
    move v0, v2

    goto :goto_14

    :cond_1a
    sget v0, Lcom/loc/bR;->bjb:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_44

    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v3, "pref"

    const-string/jumbo v6, "ngpsTime"

    const-wide/16 v8, 0x0

    invoke-static {v0, v3, v6, v8, v9}, Lcom/loc/bA;->bBZ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/loc/X;->bxw(JJ)Z

    move-result v0

    if-eqz v0, :cond_45

    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v3, "pref"

    const-string/jumbo v4, "ngpsCount"

    invoke-static {v0, v3, v4, v2}, Lcom/loc/bA;->bCb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sget v3, Lcom/loc/bR;->bjb:I

    if-lt v0, v3, :cond_56

    return v2

    :cond_44
    return v1

    :cond_45
    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    invoke-static {v0, v4, v5}, Lcom/loc/bR;->bDA(Landroid/content/Context;J)V

    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "ngpsCount"

    invoke-static {v0, v2, v3, v1}, Lcom/loc/bA;->bCa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    :cond_56
    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v3, "pref"

    const-string/jumbo v4, "ngpsCount"

    invoke-static {v2, v3, v4, v0}, Lcom/loc/bA;->bCa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return v1
.end method

.method private static c(Landroid/content/Context;)V
    .registers 7

    :try_start_0
    const-string/jumbo v0, "pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-wide v2, Lcom/loc/bR;->biS:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2a

    const-string/jumbo v1, "nowtime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1a
    sget v1, Lcom/loc/bR;->biR:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_46

    const-string/jumbo v1, "count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_26
    invoke-static {v0}, Lcom/loc/bA;->bBW(Landroid/content/SharedPreferences$Editor;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_3b

    :goto_29
    return-void

    :cond_2a
    :try_start_2a
    const-string/jumbo v1, "nowtime"

    sget-wide v2, Lcom/loc/bR;->biS:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_32} :catch_33
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_32} :catch_3b

    goto :goto_1a

    :catch_33
    move-exception v1

    :try_start_34
    const-string/jumbo v1, "nowtime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3a} :catch_3b

    goto :goto_1a

    :catch_3b
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "resetPrefsBind"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :cond_46
    :try_start_46
    const-string/jumbo v1, "count"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_4c} :catch_3b

    goto :goto_26
.end method

.method public static c()Z
    .registers 1

    sget-boolean v0, Lcom/loc/bR;->biM:Z

    return v0
.end method

.method public static d()I
    .registers 1

    sget v0, Lcom/loc/bR;->biN:I

    return v0
.end method

.method private static d(Landroid/content/Context;)V
    .registers 7

    :try_start_0
    const-string/jumbo v0, "pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-wide v2, Lcom/loc/bR;->biV:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2a

    const-string/jumbo v1, "pushSerTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1a
    sget v1, Lcom/loc/bR;->biU:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_46

    const-string/jumbo v1, "pushCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_26
    invoke-static {v0}, Lcom/loc/bA;->bBW(Landroid/content/SharedPreferences$Editor;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_3b

    :goto_29
    return-void

    :cond_2a
    :try_start_2a
    const-string/jumbo v1, "pushSerTime"

    sget-wide v2, Lcom/loc/bR;->biV:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_32} :catch_33
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_32} :catch_3b

    goto :goto_1a

    :catch_33
    move-exception v1

    :try_start_34
    const-string/jumbo v1, "pushSerTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3a} :catch_3b

    goto :goto_1a

    :catch_3b
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "resetPrefsBind"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :cond_46
    :try_start_46
    const-string/jumbo v1, "pushCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_4c} :catch_3b

    goto :goto_26
.end method

.method public static e()Z
    .registers 1

    sget-boolean v0, Lcom/loc/bR;->biO:Z

    return v0
.end method

.method public static f()Z
    .registers 1

    sget-boolean v0, Lcom/loc/bR;->biP:Z

    sput-boolean v0, Lcom/loc/cu;->a:Z

    sget-boolean v0, Lcom/loc/bR;->biP:Z

    return v0
.end method

.method public static g()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/loc/bR;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/loc/bR;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/loc/bR;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/loc/bR;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/loc/bR;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/loc/bR;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static m()Z
    .registers 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/loc/bR;->biQ:Z

    if-eqz v0, :cond_e

    sget v0, Lcom/loc/bR;->biR:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    :cond_d
    return v5

    :cond_e
    return v4

    :cond_f
    sget-wide v0, Lcom/loc/bR;->biS:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_d

    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "nowtime"

    invoke-static {v0, v1, v2, v6, v7}, Lcom/loc/bA;->bBZ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sget-wide v2, Lcom/loc/bR;->biS:J

    invoke-static {v2, v3, v0, v1}, Lcom/loc/X;->bxv(JJ)Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "count"

    invoke-static {v0, v1, v2, v4}, Lcom/loc/bA;->bCb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/loc/bR;->biR:I

    if-lt v0, v1, :cond_4b

    return v4

    :cond_3a
    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bR;->c(Landroid/content/Context;)V

    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "count"

    invoke-static {v0, v1, v2, v5}, Lcom/loc/bA;->bCa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return v5

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "count"

    invoke-static {v1, v2, v3, v0}, Lcom/loc/bA;->bCa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return v5
.end method

.method public static n()Z
    .registers 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/loc/bR;->biT:Z

    if-eqz v0, :cond_e

    sget v0, Lcom/loc/bR;->biU:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    :cond_d
    return v5

    :cond_e
    return v4

    :cond_f
    sget-wide v0, Lcom/loc/bR;->biV:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_d

    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "pushSerTime"

    invoke-static {v0, v1, v2, v6, v7}, Lcom/loc/bA;->bBZ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sget-wide v2, Lcom/loc/bR;->biV:J

    invoke-static {v2, v3, v0, v1}, Lcom/loc/X;->bxv(JJ)Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "pushCount"

    invoke-static {v0, v1, v2, v4}, Lcom/loc/bA;->bCb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/loc/bR;->biU:I

    if-lt v0, v1, :cond_4b

    return v4

    :cond_3a
    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bR;->d(Landroid/content/Context;)V

    sget-object v0, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "pushCount"

    invoke-static {v0, v1, v2, v5}, Lcom/loc/bA;->bCa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return v5

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/loc/bR;->a:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "pushCount"

    invoke-static {v1, v2, v3, v0}, Lcom/loc/bA;->bCa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return v5
.end method

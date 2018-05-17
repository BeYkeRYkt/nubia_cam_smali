.class public Lu/aly/aZ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;)Lu/aly/bo;
    .registers 16

    .prologue
    const/4 v14, 0x0

    const-wide/16 v12, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 27
    :try_start_5
    new-instance v3, Lu/aly/bo;

    invoke-direct {v3}, Lu/aly/bo;-><init>()V

    .line 29
    invoke-static {p0}, Lu/aly/aZ;->b(Landroid/content/Context;)[J

    move-result-object v4

    const/4 v2, 0x0

    .line 30
    aget-wide v6, v4, v2

    cmp-long v2, v6, v12

    if-gtz v2, :cond_23

    move v2, v0

    :goto_16
    if-nez v2, :cond_22

    const/4 v2, 0x1

    aget-wide v6, v4, v2

    cmp-long v2, v6, v12

    if-lez v2, :cond_25

    move v2, v0

    :goto_20
    if-nez v2, :cond_27

    .line 31
    :cond_22
    return-object v14

    :cond_23
    move v2, v1

    .line 30
    goto :goto_16

    :cond_25
    move v2, v1

    goto :goto_20

    .line 33
    :cond_27
    invoke-static {p0}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v5, "uptr"

    const-wide/16 v6, -0x1

    .line 35
    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v5, "dntr"

    const-wide/16 v8, -0x1

    .line 36
    invoke-interface {v2, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 37
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v5, "uptr"

    const/4 v10, 0x1

    aget-wide v10, v4, v10

    invoke-interface {v2, v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v5, "dntr"

    const/4 v10, 0x0

    aget-wide v10, v4, v10

    invoke-interface {v2, v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    cmp-long v2, v6, v12

    if-gtz v2, :cond_67

    move v2, v0

    :goto_5d
    if-nez v2, :cond_66

    cmp-long v2, v8, v12

    if-lez v2, :cond_69

    move v2, v0

    :goto_64
    if-nez v2, :cond_6b

    .line 40
    :cond_66
    return-object v14

    :cond_67
    move v2, v1

    .line 39
    goto :goto_5d

    :cond_69
    move v2, v1

    goto :goto_64

    :cond_6b
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 42
    aget-wide v10, v4, v5

    sub-long v8, v10, v8

    aput-wide v8, v4, v2

    const/4 v2, 0x1

    const/4 v5, 0x1

    .line 43
    aget-wide v8, v4, v5

    sub-long v6, v8, v6

    aput-wide v6, v4, v2

    const/4 v2, 0x0

    .line 45
    aget-wide v6, v4, v2

    cmp-long v2, v6, v12

    if-gtz v2, :cond_8f

    move v2, v0

    :goto_83
    if-nez v2, :cond_8e

    const/4 v2, 0x1

    aget-wide v6, v4, v2

    cmp-long v2, v6, v12

    if-lez v2, :cond_91

    :goto_8c
    if-nez v0, :cond_93

    .line 46
    :cond_8e
    return-object v14

    :cond_8f
    move v2, v1

    .line 45
    goto :goto_83

    :cond_91
    move v0, v1

    goto :goto_8c

    :cond_93
    const/4 v0, 0x0

    .line 48
    aget-wide v0, v4, v0

    long-to-int v0, v0

    invoke-virtual {v3, v0}, Lu/aly/bo;->bZD(I)Lu/aly/bo;

    const/4 v0, 0x1

    .line 49
    aget-wide v0, v4, v0

    long-to-int v0, v0

    invoke-virtual {v3, v0}, Lu/aly/bo;->a(I)Lu/aly/bo;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a1} :catch_a2

    .line 51
    return-object v3

    :catch_a2
    move-exception v0

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "sdk less than 2.2 has get no traffic"

    .line 53
    invoke-static {v0, v1}, Lu/aly/O;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-object v14
.end method

.method private static b(Landroid/content/Context;)[J
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v0, "android.net.TrafficStats"

    .line 59
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getUidRxBytes"

    .line 60
    new-array v2, v7, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string/jumbo v2, "getUidTxBytes"

    .line 61
    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v0, -0x1

    .line 65
    if-eq v3, v0, :cond_59

    const/4 v0, 0x2

    .line 68
    new-array v4, v0, [J

    .line 69
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v6

    invoke-virtual {v1, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, v4, v6

    .line 70
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {v2, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, v4, v7

    .line 72
    return-object v4

    .line 66
    :cond_59
    return-object v8
.end method

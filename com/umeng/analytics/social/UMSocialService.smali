.class public abstract Lcom/umeng/analytics/social/UMSocialService;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method private static varargs a(Landroid/content/Context;Lcom/umeng/analytics/social/UMSocialService$b;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 47
    if-nez p3, :cond_13

    .line 54
    :cond_3
    :try_start_3
    invoke-static {p0, p2, p3}, Lcom/umeng/analytics/social/f;->a(Landroid/content/Context;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)[Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/umeng/analytics/social/UMSocialService$a;

    invoke-direct {v1, v0, p1, p3}, Lcom/umeng/analytics/social/UMSocialService$a;-><init>([Ljava/lang/String;Lcom/umeng/analytics/social/UMSocialService$b;[Lcom/umeng/analytics/social/UMPlatformData;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/social/UMSocialService$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    :goto_12
    return-void

    .line 48
    :cond_13
    array-length v1, p3

    :goto_14
    if-ge v0, v1, :cond_3

    aget-object v2, p3, v0

    .line 49
    invoke-virtual {v2}, Lcom/umeng/analytics/social/UMPlatformData;->isValid()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 50
    :cond_21
    new-instance v0, Lcom/umeng/analytics/social/a;

    const-string/jumbo v1, "parameter is not valid."

    invoke-direct {v0, v1}, Lcom/umeng/analytics/social/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catch Lcom/umeng/analytics/social/a; {:try_start_3 .. :try_end_2a} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_35

    .line 60
    :catch_2a
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "unable send event."

    .line 57
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 60
    :catch_35
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, ""

    .line 59
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public static varargs share(Landroid/content/Context;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-static {p0, v0, p1, p2}, Lcom/umeng/analytics/social/UMSocialService;->a(Landroid/content/Context;Lcom/umeng/analytics/social/UMSocialService$b;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V

    .line 65
    return-void
.end method

.method public static varargs share(Landroid/content/Context;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-static {p0, v0, v0, p1}, Lcom/umeng/analytics/social/UMSocialService;->a(Landroid/content/Context;Lcom/umeng/analytics/social/UMSocialService$b;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V

    .line 69
    return-void
.end method

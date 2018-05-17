.class public Lcom/loc/M;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/M;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/M;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/M;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/M;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/M;->e:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/loc/M;->g(Landroid/content/Context;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/loc/M;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/loc/M;->b:Ljava/lang/String;

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string/jumbo v0, ""

    sget-object v1, Lcom/loc/M;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/loc/M;->a:Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_26

    :goto_20
    sget-object v0, Lcom/loc/M;->a:Ljava/lang/String;

    return-object v0

    :cond_23
    :try_start_23
    sget-object v0, Lcom/loc/M;->a:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_25} :catch_26

    return-object v0

    :catch_26
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getApplicationName"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

.method public static b(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/loc/M;->e:Ljava/lang/String;

    return-void
.end method

.method static bwz(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/loc/M;->d:Ljava/lang/String;

    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/loc/M;->b:Ljava/lang/String;

    if-nez v0, :cond_11

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/M;->b:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_1f

    :goto_e
    sget-object v0, Lcom/loc/M;->b:Ljava/lang/String;

    return-object v0

    :cond_11
    :try_start_11
    const-string/jumbo v0, ""

    sget-object v1, Lcom/loc/M;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/loc/M;->b:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getPackageName"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string/jumbo v0, ""

    sget-object v1, Lcom/loc/M;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/loc/M;->c:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_22

    :goto_1c
    sget-object v0, Lcom/loc/M;->c:Ljava/lang/String;

    return-object v0

    :cond_1f
    :try_start_1f
    sget-object v0, Lcom/loc/M;->c:Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_21} :catch_22

    return-object v0

    :catch_22
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getApplicationVersion"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/loc/M;->e:Ljava/lang/String;

    if-nez v1, :cond_3d

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    const-string/jumbo v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2c
    array-length v4, v2

    if-lt v0, v4, :cond_4b

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/M;->e:Ljava/lang/String;

    sget-object v0, Lcom/loc/M;->e:Ljava/lang/String;

    return-object v0

    :cond_3d
    const-string/jumbo v1, ""

    sget-object v2, Lcom/loc/M;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v0, Lcom/loc/M;->e:Ljava/lang/String;

    return-object v0

    :cond_4b
    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6c

    :goto_60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_6c
    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_72} :catch_73

    goto :goto_60

    :catch_73
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getSHA1AndPackage"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/loc/M;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/loc/M;->g(Landroid/content/Context;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getKey"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/loc/M;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/loc/M;->d:Ljava/lang/String;

    if-nez v0, :cond_22

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.amap.api.v2.apikey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/M;->d:Ljava/lang/String;

    :goto_1f
    sget-object v0, Lcom/loc/M;->d:Ljava/lang/String;

    return-object v0

    :cond_22
    sget-object v0, Lcom/loc/M;->d:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1f

    :cond_2e
    sget-object v0, Lcom/loc/M;->d:Ljava/lang/String;

    return-object v0
.end method

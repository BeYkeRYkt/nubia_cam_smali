.class public Lcom/loc/C;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bdU:Lcom/loc/C;


# instance fields
.field a:Landroid/content/Context;

.field bdV:Landroid/content/SharedPreferences;

.field bdW:Landroid/content/SharedPreferences$Editor;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/C;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/C;->bdV:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/loc/C;->bdW:Landroid/content/SharedPreferences$Editor;

    iput-object p1, p0, Lcom/loc/C;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/C;->d:Ljava/lang/String;

    if-eqz v0, :cond_11

    :goto_10
    return-void

    :cond_11
    const-string/jumbo v0, "MD5"

    iget-object v1, p0, Lcom/loc/C;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/ai;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/C;->d:Ljava/lang/String;

    goto :goto_10
.end method

.method public static a(Landroid/content/Context;)Lcom/loc/C;
    .registers 2

    sget-object v0, Lcom/loc/C;->bdU:Lcom/loc/C;

    if-eqz v0, :cond_7

    :goto_4
    sget-object v0, Lcom/loc/C;->bdU:Lcom/loc/C;

    return-object v0

    :cond_7
    new-instance v0, Lcom/loc/C;

    invoke-direct {v0, p0}, Lcom/loc/C;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loc/C;->bdU:Lcom/loc/C;

    goto :goto_4
.end method


# virtual methods
.method public bws(Lcom/amap/api/location/AMapLocation;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/C;->a:Landroid/content/Context;

    if-nez v0, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-static {p1}, Lcom/loc/X;->bxb(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->but()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2d

    iget-object v0, p0, Lcom/loc/C;->bdV:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2e

    :goto_18
    iget-object v0, p0, Lcom/loc/C;->bdW:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_3a

    :goto_1c
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->buO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    :goto_26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_65

    :goto_2c
    return-void

    :cond_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/loc/C;->a:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/C;->bdV:Landroid/content/SharedPreferences;

    goto :goto_18

    :cond_3a
    iget-object v0, p0, Lcom/loc/C;->bdV:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/C;->bdW:Landroid/content/SharedPreferences$Editor;

    goto :goto_1c

    :cond_43
    :try_start_43
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->buO()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/loc/C;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/loc/ai;->byh([BLjava/lang/String;)[B
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_53} :catch_59

    move-result-object v0

    :goto_54
    invoke-static {v0}, Lcom/loc/cz;->a([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :catch_59
    move-exception v0

    const-string/jumbo v2, "LastLocationManager"

    const-string/jumbo v3, "setLastFix"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_54

    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lastfix"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/loc/bx;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/C;->bdW:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/loc/C;->bdW:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/loc/bA;->bBW(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_2c
.end method

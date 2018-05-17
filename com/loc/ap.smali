.class public Lcom/loc/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:D

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/ap;->b:Z

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    sput-wide v0, Lcom/loc/ap;->a:D

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static bym(Landroid/content/Context;Lcom/amap/api/location/f;)Lcom/amap/api/location/f;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    const-string/jumbo v0, "libwgs2gcj.so"

    invoke-static {p0, v0}, Lcom/loc/V;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_10
    :goto_10
    sget-boolean v0, Lcom/loc/ap;->b:Z

    invoke-static {p1, v0}, Lcom/loc/ap;->byo(Lcom/amap/api/location/f;Z)Lcom/amap/api/location/f;

    move-result-object v0

    return-object v0

    :cond_17
    return-object v0

    :cond_18
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-boolean v1, Lcom/loc/ap;->b:Z

    if-nez v1, :cond_10

    :try_start_27
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/ap;->b:Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2d} :catch_2e

    goto :goto_10

    :catch_2e
    move-exception v0

    const-string/jumbo v1, "OffsetUtil"

    const-string/jumbo v2, "offset"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public static byn(Landroid/content/Context;DD)Lcom/amap/api/location/f;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    new-instance v0, Lcom/amap/api/location/f;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/amap/api/location/f;-><init>(DD)V

    invoke-static {p0, v0}, Lcom/loc/ap;->bym(Landroid/content/Context;Lcom/amap/api/location/f;)Lcom/amap/api/location/f;

    move-result-object v0

    return-object v0

    :cond_d
    return-object v0
.end method

.method private static byo(Lcom/amap/api/location/f;Z)Lcom/amap/api/location/f;
    .registers 8

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/location/f;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/f;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/bx;->bBz(DD)Z

    move-result v0

    if-nez v0, :cond_f

    return-object p0

    :cond_f
    const/4 v0, 0x2

    new-array v0, v0, [D

    if-nez p1, :cond_2c

    invoke-virtual {p0}, Lcom/amap/api/location/f;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/f;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/m;->bvI(DD)[D

    move-result-object v0

    :cond_20
    :goto_20
    new-instance v1, Lcom/amap/api/location/f;

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/location/f;-><init>(DD)V

    return-object v1

    :cond_2c
    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/amap/api/location/f;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/amap/api/location/f;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v1, v2
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3d} :catch_74

    :try_start_3d
    invoke-static {v1, v0}, Lcom/amap/api/location/CoordUtil;->convertToGcj([D[D)I
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_40} :catch_50
    .catchall {:try_start_3d .. :try_end_40} :catchall_67

    move-result v1

    if-eqz v1, :cond_20

    :try_start_43
    invoke-virtual {p0}, Lcom/amap/api/location/f;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/f;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/m;->bvI(DD)[D
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_4e} :catch_74

    move-result-object v0

    goto :goto_20

    :catch_50
    move-exception v0

    :try_start_51
    const-string/jumbo v1, "OffsetUtil"

    const-string/jumbo v2, "cover part1"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_67

    :try_start_5a
    invoke-virtual {p0}, Lcom/amap/api/location/f;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/f;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/m;->bvI(DD)[D

    move-result-object v0

    goto :goto_20

    :catchall_67
    move-exception v0

    invoke-virtual {p0}, Lcom/amap/api/location/f;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amap/api/location/f;->getLatitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/loc/m;->bvI(DD)[D

    throw v0
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_74} :catch_74

    :catch_74
    move-exception v0

    const-string/jumbo v1, "OffsetUtil"

    const-string/jumbo v2, "cover part2"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

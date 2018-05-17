.class public Lcom/loc/X;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static bew:[Ljava/lang/String;

.field private static bex:Ljava/util/Hashtable;

.field private static bey:Ljava/text/DecimalFormat;

.field private static bez:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/loc/X;->a:I

    sput-object v1, Lcom/loc/X;->bew:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/loc/X;->bex:Ljava/util/Hashtable;

    sput-object v1, Lcom/loc/X;->bey:Ljava/text/DecimalFormat;

    sput-object v1, Lcom/loc/X;->bez:Ljava/text/SimpleDateFormat;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(I)I
    .registers 2

    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x71

    return v0
.end method

.method public static a()J
    .registers 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    const/4 v1, 0x0

    if-eqz p0, :cond_c

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a} :catch_d

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    return-object v1

    :catch_d
    move-exception v0

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "getServ"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    const/4 v2, 0x0

    if-eqz p0, :cond_13

    invoke-static {}, Lcom/loc/X;->c()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_14

    :try_start_b
    const-string/jumbo v0, "android.provider.Settings$Global"

    invoke-static {p0, v0}, Lcom/loc/X;->bxf(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_11} :catch_1c

    move-result v0

    return v0

    :cond_13
    return v2

    :cond_14
    :try_start_14
    const-string/jumbo v0, "android.provider.Settings$System"

    invoke-static {p0, v0}, Lcom/loc/X;->bxf(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1a} :catch_1e

    move-result v0

    return v0

    :catch_1c
    move-exception v0

    :goto_1d
    return v2

    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 4

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string/jumbo v0, ",111,123,134,199,202,204,206,208,212,213,214,216,218,219,220,222,225,226,228,230,231,232,234,235,238,240,242,244,246,247,248,250,255,257,259,260,262,266,268,270,272,274,276,278,280,282,283,284,286,288,289,290,292,293,294,295,297,302,308,310,311,312,313,314,315,316,310,330,332,334,338,340,342,344,346,348,350,352,354,356,358,360,362,363,364,365,366,368,370,372,374,376,400,401,402,404,405,406,410,412,413,414,415,416,417,418,419,420,421,422,424,425,426,427,428,429,430,431,432,434,436,437,438,440,441,450,452,454,455,456,457,466,467,470,472,502,505,510,514,515,520,525,528,530,534,535,536,537,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,555,560,598,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,645,646,647,648,649,650,651,652,653,654,655,657,659,665,702,704,706,708,710,712,714,716,722,724,730,732,734,736,738,740,742,744,746,748,750,850,901,"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_30
    return v1

    :cond_31
    return v1
.end method

.method public static a(J)[B
    .registers 8

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-lt v0, v2, :cond_9

    return-object v1

    :cond_9
    mul-int/lit8 v2, v0, 0x8

    shr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static final a(Ljava/io/File;)[B
    .registers 7

    const/4 v5, 0x0

    if-nez p0, :cond_c

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "can\'t operate on null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x800

    new-array v0, v0, [B

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_20
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_32

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_32
    invoke-virtual {v2, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_20
.end method

.method public static a([B)[B
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/loc/bv;->b([B)[B
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v1

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "gz"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static b()J
    .registers 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final b([B)J
    .registers 8

    const/16 v6, 0x8

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v6, :cond_8

    return-wide v2

    :cond_8
    shl-long/2addr v2, v6

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    sget-object v0, Lcom/loc/bx;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1c} :catch_48

    move-result-object v0

    move-object v2, v0

    :goto_1e
    :try_start_1e
    sget-object v0, Lcom/loc/bx;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_23} :catch_58

    move-result v0

    if-nez v0, :cond_54

    :goto_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_63

    :cond_2d
    :goto_2d
    sget-object v0, Lcom/loc/bx;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8b

    :goto_35
    sget-object v0, Lcom/loc/bx;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_98

    :goto_3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bx;->j:Ljava/lang/String;

    return-object v0

    :cond_44
    sget-object v0, Lcom/loc/bx;->j:Ljava/lang/String;

    return-object v0

    :cond_47
    return-object v1

    :catch_48
    move-exception v0

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "getAppName part"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_1e

    :cond_54
    const/4 v0, 0x0

    :try_start_55
    sput-object v0, Lcom/loc/bx;->k:Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_57} :catch_58

    goto :goto_26

    :catch_58
    move-exception v0

    const-string/jumbo v3, "Utils"

    const-string/jumbo v4, "getAppName"

    invoke-static {v0, v3, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    :cond_63
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_78

    move-object v0, v1

    :goto_68
    if-nez v0, :cond_83

    :goto_6a
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :cond_78
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_68

    :cond_83
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :cond_8b
    const-string/jumbo v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/loc/bx;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    :cond_98
    const-string/jumbo v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/loc/bx;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d
.end method

.method public static b(Ljava/lang/String;)[B
    .registers 6

    const/4 v0, 0x6

    new-array v1, v0, [B

    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_b
    array-length v3, v2

    if-lt v0, v3, :cond_f

    return-object v1

    :cond_f
    aget-object v3, v2, v0

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public static bwZ(D)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, p0, v2

    if-lez v2, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p0, v2

    if-ltz v2, :cond_b

    move v0, v1

    goto :goto_b
.end method

.method public static bxa(D)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v2, p0, v2

    if-lez v2, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, p0, v2

    if-ltz v2, :cond_b

    move v0, v1

    goto :goto_b
.end method

.method public static bxb(Lcom/amap/api/location/AMapLocation;)Z
    .registers 11

    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->buw()I

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v2

    cmpl-double v3, v4, v8

    if-nez v3, :cond_26

    cmpl-double v3, v6, v8

    if-nez v3, :cond_26

    float-to-double v2, v2

    cmpl-double v2, v2, v8

    if-nez v2, :cond_26

    :cond_25
    :goto_25
    return v0

    :cond_26
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, v4, v2

    if-lez v2, :cond_52

    move v2, v1

    :goto_30
    if-nez v2, :cond_25

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v2, v6, v2

    if-gtz v2, :cond_25

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v4, v2

    if-gez v2, :cond_54

    move v2, v1

    :goto_45
    if-nez v2, :cond_25

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v6, v2

    if-ltz v2, :cond_25

    move v0, v1

    goto :goto_25

    :cond_52
    move v2, v0

    goto :goto_30

    :cond_54
    move v2, v0

    goto :goto_45
.end method

.method public static bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    .registers 11

    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_46

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHW()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHW()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHW()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHI()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHL()D

    move-result-wide v6

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getAccuracy()F

    move-result v2

    cmpl-double v3, v4, v8

    if-nez v3, :cond_47

    cmpl-double v3, v6, v8

    if-nez v3, :cond_47

    float-to-double v2, v2

    cmpl-double v2, v2, v8

    if-nez v2, :cond_47

    :cond_46
    :goto_46
    return v0

    :cond_47
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, v4, v2

    if-lez v2, :cond_73

    move v2, v1

    :goto_51
    if-nez v2, :cond_46

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v2, v6, v2

    if-gtz v2, :cond_46

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v4, v2

    if-gez v2, :cond_75

    move v2, v1

    :goto_66
    if-nez v2, :cond_46

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v6, v2

    if-ltz v2, :cond_46

    move v0, v1

    goto :goto_46

    :cond_73
    move v2, v0

    goto :goto_51

    :cond_75
    move v2, v0

    goto :goto_66
.end method

.method public static bxd(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_4a

    :goto_6
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v3, v2

    const-string/jumbo v1, "0"

    aput-object v1, v3, v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x4

    if-le v1, v5, :cond_4f

    move v1, v4

    :goto_27
    if-nez v1, :cond_51

    :goto_29
    const/4 v0, 0x0

    :try_start_2a
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2f} :catch_77

    move-result v0

    :goto_30
    if-eqz v0, :cond_83

    :goto_32
    aget-object v0, v3, v2

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    :cond_3d
    aget-object v0, v3, v2

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    :cond_48
    :goto_48
    move-object v0, v3

    :goto_49
    return-object v0

    :cond_4a
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_4f
    move v1, v2

    goto :goto_27

    :cond_51
    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v1, v2

    :goto_60
    array-length v6, v5

    if-lt v1, v6, :cond_6c

    :cond_63
    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    goto :goto_29

    :cond_6c
    aget-char v6, v5, v1

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_63

    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    :catch_77
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v5, "getMccMnc"

    invoke-static {v0, v1, v5}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_30

    :cond_83
    const-string/jumbo v0, "0"

    aput-object v0, v3, v2

    goto :goto_32

    :cond_89
    aget-object v0, v3, v4

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    sput-object v3, Lcom/loc/X;->bew:[Ljava/lang/String;

    goto :goto_48

    :cond_97
    aget-object v0, v3, v4

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/loc/X;->bew:[Ljava/lang/String;

    if-eqz v0, :cond_48

    sget-object v0, Lcom/loc/X;->bew:[Ljava/lang/String;

    goto :goto_49
.end method

.method public static bxe(ZLandroid/telephony/CellLocation;Landroid/content/Context;)I
    .registers 7

    const/16 v1, 0x9

    if-nez p0, :cond_1c

    if-eqz p1, :cond_1c

    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v0, :cond_1e

    :try_start_a
    const-string/jumbo v0, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_10} :catch_12

    const/4 v0, 0x2

    :goto_11
    return v0

    :catch_12
    move-exception v0

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "getCellLocT"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    move v0, v1

    goto :goto_11

    :cond_1e
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private static bxf(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v0, "AIRPLANE_MODE_ON"

    invoke-static {p1, v0}, Lcom/loc/br;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v1

    aput-object v0, v4, v2

    new-array v0, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    aput-object v3, v0, v1

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    const-string/jumbo v3, "getInt"

    invoke-static {p1, v3, v4, v0}, Lcom/loc/br;->bBj(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_35

    move v0, v1

    :goto_34
    return v0

    :cond_35
    move v0, v2

    goto :goto_34
.end method

.method public static bxg([D)F
    .registers 11

    const/4 v2, 0x1

    const/4 v9, 0x0

    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    new-array v8, v2, [F

    aget-wide v0, p0, v9

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v9

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static bxh(Lcom/autonavi/aps/amapapi/model/AmapLoc;Lcom/autonavi/aps/amapapi/model/AmapLoc;)F
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHL()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHI()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHL()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHI()D

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-static {v0}, Lcom/loc/X;->bxg([D)F

    move-result v0

    return v0
.end method

.method public static bxi(II)I
    .registers 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/loc/bv;->bBs(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static bxk(Landroid/net/wifi/ScanResult;)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_6

    :cond_4
    move v0, v1

    :goto_5
    return v0

    :cond_6
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5
.end method

.method public static bxl(Landroid/net/NetworkInfo;)I
    .registers 3

    const/4 v0, -0x1

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    :cond_13
    return v0
.end method

.method public static bxm(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_f

    :goto_3
    sget-object v1, Lcom/loc/bx;->bhB:Landroid/util/SparseArray;

    const-string/jumbo v2, "UNKWN"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_f
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_3
.end method

.method public static final bxn([B)I
    .registers 3

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static final bxo([B)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-lt v0, v2, :cond_6

    return v1

    :cond_6
    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static bxp(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/loc/X;->bxq(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bxq(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7} :catch_d

    move-result-object v0

    :goto_8
    invoke-static {v0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v0

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "str2Base64"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_8
.end method

.method public static bxr(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    if-nez p0, :cond_7

    :cond_3
    const-string/jumbo v0, ""

    return-object v0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_e
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1a} :catch_1b

    :goto_1a
    return-object v0

    :catch_1b
    move-exception v0

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "base642Str"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1a
.end method

.method public static bxs(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/loc/X;->bxt(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static bxt(I)[B
    .registers 4

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static declared-synchronized bxu(JLjava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    const-class v2, Lcom/loc/X;

    monitor-enter v2

    :try_start_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    :goto_a
    sget-object v0, Lcom/loc/X;->bez:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/loc/X;->bez:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    :goto_13
    const-wide/16 v4, 0x0

    cmp-long v0, p0, v4

    if-lez v0, :cond_4c

    const/4 v0, 0x1

    :goto_1a
    if-nez v0, :cond_20

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide p0

    :cond_20
    sget-object v0, Lcom/loc/X;->bez:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/loc/X;->bez:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_49

    move-result-object v0

    :goto_2e
    monitor-exit v2

    return-object v0

    :cond_30
    :try_start_30
    const-string/jumbo p2, "yyyy-MM-dd HH:mm:ss"
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_49

    goto :goto_a

    :cond_34
    :try_start_34
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/loc/X;->bez:Ljava/text/SimpleDateFormat;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3d} :catch_3e
    .catchall {:try_start_34 .. :try_end_3d} :catchall_49

    goto :goto_13

    :catch_3e
    move-exception v0

    :try_start_3f
    const-string/jumbo v3, "Utils"

    const-string/jumbo v4, "formatUTC"

    invoke-static {v0, v3, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_49

    goto :goto_13

    :catchall_49
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4c
    move v0, v1

    goto :goto_1a

    :cond_4e
    :try_start_4e
    const-string/jumbo v0, "NULL"
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_49

    goto :goto_2e
.end method

.method public static declared-synchronized bxv(JJ)Z
    .registers 10

    const-class v2, Lcom/loc/X;

    monitor-enter v2

    :try_start_3
    const-string/jumbo v0, "yyyyMMdd"

    const/4 v1, 0x0

    sget-object v3, Lcom/loc/X;->bez:Ljava/text/SimpleDateFormat;

    if-eqz v3, :cond_17

    sget-object v3, Lcom/loc/X;->bez:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2c

    :goto_10
    :try_start_10
    sget-object v0, Lcom/loc/X;->bez:Ljava/text/SimpleDateFormat;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_12} :catch_48
    .catchall {:try_start_10 .. :try_end_12} :catchall_2c

    if-nez v0, :cond_2f

    :goto_14
    move v0, v1

    :goto_15
    monitor-exit v2

    return v0

    :cond_17
    :try_start_17
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v3, Lcom/loc/X;->bez:Ljava/text/SimpleDateFormat;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_20} :catch_21
    .catchall {:try_start_17 .. :try_end_20} :catchall_2c

    goto :goto_10

    :catch_21
    move-exception v0

    :try_start_22
    const-string/jumbo v3, "Utils"

    const-string/jumbo v4, "isSameDay part1"

    invoke-static {v0, v3, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2c

    goto :goto_10

    :catchall_2c
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2f
    :try_start_2f
    sget-object v0, Lcom/loc/X;->bez:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/loc/X;->bez:Ljava/text/SimpleDateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_46} :catch_48
    .catchall {:try_start_2f .. :try_end_46} :catchall_2c

    move-result v0

    goto :goto_15

    :catch_48
    move-exception v0

    :try_start_49
    const-string/jumbo v3, "Utils"

    const-string/jumbo v4, "isSameDay"

    invoke-static {v0, v3, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_2c

    goto :goto_14
.end method

.method public static declared-synchronized bxw(JJ)Z
    .registers 12

    const/4 v1, 0x1

    const/16 v6, 0xc

    const/4 v0, 0x0

    const-class v2, Lcom/loc/X;

    monitor-enter v2

    :try_start_7
    invoke-static {p0, p1, p2, p3}, Lcom/loc/X;->bxv(JJ)Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_31

    move-result v3

    if-gt v4, v6, :cond_2d

    if-le v3, v6, :cond_2f

    :cond_29
    :goto_29
    monitor-exit v2

    return v0

    :cond_2b
    monitor-exit v2

    return v0

    :cond_2d
    if-le v3, v6, :cond_29

    :cond_2f
    move v0, v1

    goto :goto_29

    :catchall_31
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static bxx(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/loc/X;->bxy(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static bxy(I)[B
    .registers 4

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static bxz(D)D
    .registers 6

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double v0, p0, v2

    double-to-long v0, v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static c()I
    .registers 3

    const/4 v0, 0x0

    sget v1, Lcom/loc/X;->a:I

    if-gtz v1, :cond_10

    const-string/jumbo v1, "android.os.Build$VERSION"

    :try_start_8
    const-string/jumbo v2, "SDK_INT"

    invoke-static {v1, v2}, Lcom/loc/br;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_e} :catch_13

    move-result v0

    :goto_f
    return v0

    :cond_10
    sget v0, Lcom/loc/X;->a:I

    return v0

    :catch_13
    move-exception v2

    :try_start_14
    const-string/jumbo v2, "SDK"

    invoke-static {v1, v2}, Lcom/loc/br;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_22} :catch_24

    move-result v0

    goto :goto_f

    :catch_24
    move-exception v1

    goto :goto_f
.end method

.method public static c(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/loc/cn;->bFX(Landroid/content/Context;)Landroid/net/NetworkInfo;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v1

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "getNetWorkInfo"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_2
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    return v4

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2e} :catch_34

    const/16 v1, 0x64

    if-ne v0, v1, :cond_33

    return v4

    :cond_33
    return v5

    :catch_34
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "isApplicationBroughtToBackground"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method public static e()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loc/X;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "amaplocationapi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Z
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/X;->bxi(II)I

    move-result v2

    if-eq v2, v1, :cond_9

    :goto_8
    return v0

    :cond_9
    move v0, v1

    goto :goto_8
.end method

.method public static i()V
    .registers 1

    sget-object v0, Lcom/loc/X;->bex:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public static j()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, ""

    :try_start_3
    sget-object v0, Lcom/loc/bx;->e:Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cz;->a([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_15} :catch_17

    move-result-object v0

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_16
.end method

.method public static k()Z
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

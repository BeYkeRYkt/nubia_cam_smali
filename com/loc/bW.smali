.class public Lcom/loc/bW;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private bjj:I

.field private bjk:I

.field private bjl:Lcom/loc/e;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private j:J


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/loc/bW;->a:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/loc/bW;->b:Z

    const/16 v0, 0x4f6

    iput v0, p0, Lcom/loc/bW;->c:I

    const/16 v0, 0x136

    iput v0, p0, Lcom/loc/bW;->d:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/loc/bW;->e:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/loc/bW;->f:I

    iput v2, p0, Lcom/loc/bW;->g:I

    iput v1, p0, Lcom/loc/bW;->bjj:I

    iput v1, p0, Lcom/loc/bW;->bjk:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bW;->j:J

    iput-object v3, p0, Lcom/loc/bW;->bjl:Lcom/loc/e;

    iput-object p1, p0, Lcom/loc/bW;->a:Landroid/content/Context;

    return-void
.end method

.method protected static a(Landroid/content/Context;)Lcom/loc/bW;
    .registers 15

    const-wide/32 v12, 0x5265c00

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/loc/bW;

    invoke-direct {v4, p0}, Lcom/loc/bW;-><init>(Landroid/content/Context;)V

    iput v3, v4, Lcom/loc/bW;->bjj:I

    iput v3, v4, Lcom/loc/bW;->bjk:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x1b77400

    add-long/2addr v6, v8

    div-long/2addr v6, v12

    mul-long/2addr v6, v12

    iput-wide v6, v4, Lcom/loc/bW;->j:J

    :try_start_1b
    new-instance v5, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/bW;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "data_carrier_status"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_68

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_49} :catch_e8
    .catchall {:try_start_1b .. :try_end_49} :catchall_e5

    :try_start_49
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x20

    new-array v2, v2, [B

    :goto_52
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_69

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    if-nez v6, :cond_80

    :cond_62
    :goto_62
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    if-nez v1, :cond_d9

    :cond_67
    :goto_67
    return-object v4

    :cond_68
    return-object v4

    :cond_69
    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_6d} :catch_6e
    .catchall {:try_start_49 .. :try_end_6d} :catchall_d1

    goto :goto_52

    :catch_6e
    move-exception v0

    :goto_6f
    :try_start_6f
    const-string/jumbo v2, "CollectorStatus"

    const-string/jumbo v3, "load"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_d1

    if-eqz v1, :cond_67

    :try_start_7a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_67

    :catch_7e
    move-exception v0

    goto :goto_67

    :cond_80
    :try_start_80
    array-length v2, v6

    const/16 v7, 0x16

    if-lt v2, v7, :cond_62

    const/4 v2, 0x0

    aget-byte v2, v6, v2

    if-nez v2, :cond_d5

    move v2, v3

    :goto_8b
    iput-boolean v2, v4, Lcom/loc/bW;->b:Z

    const/4 v2, 0x1

    aget-byte v2, v6, v2

    mul-int/lit8 v2, v2, 0xa

    mul-int/lit16 v2, v2, 0x400

    iput v2, v4, Lcom/loc/bW;->c:I

    const/4 v2, 0x2

    aget-byte v2, v6, v2

    mul-int/lit8 v2, v2, 0xa

    mul-int/lit16 v2, v2, 0x400

    iput v2, v4, Lcom/loc/bW;->d:I

    const/4 v2, 0x3

    aget-byte v2, v6, v2

    iput v2, v4, Lcom/loc/bW;->e:I

    const/4 v2, 0x4

    aget-byte v2, v6, v2

    mul-int/lit8 v2, v2, 0xa

    iput v2, v4, Lcom/loc/bW;->f:I

    const/4 v2, 0x5

    aget-byte v2, v6, v2

    iput v2, v4, Lcom/loc/bW;->g:I

    const/16 v2, 0xe

    invoke-static {v6, v2}, Lcom/loc/bW;->bDW([BI)J

    move-result-wide v8

    iget-wide v10, v4, Lcom/loc/bW;->j:J

    sub-long/2addr v10, v8

    cmp-long v2, v10, v12

    if-ltz v2, :cond_d7

    :goto_bd
    if-nez v0, :cond_62

    iput-wide v8, v4, Lcom/loc/bW;->j:J

    const/4 v0, 0x6

    invoke-static {v6, v0}, Lcom/loc/bW;->bDV([BI)I

    move-result v0

    iput v0, v4, Lcom/loc/bW;->bjj:I

    const/16 v0, 0xa

    invoke-static {v6, v0}, Lcom/loc/bW;->bDV([BI)I

    move-result v0

    iput v0, v4, Lcom/loc/bW;->bjk:I
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_d0} :catch_6e
    .catchall {:try_start_80 .. :try_end_d0} :catchall_d1

    goto :goto_62

    :catchall_d1
    move-exception v0

    :goto_d2
    if-nez v1, :cond_df

    :goto_d4
    throw v0

    :cond_d5
    move v2, v0

    goto :goto_8b

    :cond_d7
    move v0, v3

    goto :goto_bd

    :cond_d9
    :try_start_d9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_dc} :catch_dd

    goto :goto_67

    :catch_dd
    move-exception v0

    goto :goto_67

    :cond_df
    :try_start_df
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e2
    .catch Ljava/lang/Throwable; {:try_start_df .. :try_end_e2} :catch_e3

    goto :goto_d4

    :catch_e3
    move-exception v1

    goto :goto_d4

    :catchall_e5
    move-exception v0

    move-object v1, v2

    goto :goto_d2

    :catch_e8
    move-exception v0

    move-object v1, v2

    goto :goto_6f
.end method

.method private static a(J)[B
    .registers 10

    const/16 v6, 0x8

    new-array v1, v6, [B

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v6, :cond_8

    return-object v1

    :cond_8
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

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_22

    move-object v0, v1

    :goto_a
    const-string/jumbo v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_17
    if-nez v0, :cond_2e

    :goto_19
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_21
    return-object v0

    :cond_22
    invoke-static {p0}, Lcom/loc/cw;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_a

    :cond_27
    invoke-static {}, Lcom/loc/cw;->a()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_19

    :cond_2e
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_31} :catch_33

    move-result-object v0

    goto :goto_21

    :catch_33
    move-exception v0

    const-string/jumbo v2, "CollectorStatus"

    const-string/jumbo v3, "getDiskFileDir"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_21
.end method

.method private static bDU(I)[B
    .registers 5

    const/4 v3, 0x4

    new-array v1, v3, [B

    const/4 v0, 0x0

    :goto_4
    if-lt v0, v3, :cond_7

    return-object v1

    :cond_7
    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private static bDV([BI)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-lt v0, v2, :cond_6

    return v1

    :cond_6
    add-int v2, v0, p1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static bDW([BI)J
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x8

    if-lt v0, v2, :cond_8

    int-to-long v0, v1

    return-wide v0

    :cond_8
    add-int v2, v0, p1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private h()V
    .registers 9

    const-wide/32 v6, 0x5265c00

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b77400

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/loc/bW;->j:J

    sub-long v4, v2, v4

    cmp-long v0, v4, v6

    if-gtz v0, :cond_20

    const/4 v0, 0x1

    :goto_15
    if-nez v0, :cond_1f

    div-long/2addr v2, v6

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lcom/loc/bW;->j:J

    iput v1, p0, Lcom/loc/bW;->bjj:I

    iput v1, p0, Lcom/loc/bW;->bjk:I

    :cond_1f
    return-void

    :cond_20
    move v0, v1

    goto :goto_15
.end method


# virtual methods
.method protected a(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/loc/bW;->h()V

    if-ltz p1, :cond_9

    :goto_6
    iput p1, p0, Lcom/loc/bW;->bjj:I

    return-void

    :cond_9
    move p1, v0

    goto :goto_6
.end method

.method protected a()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/loc/bW;->h()V

    iget-object v0, p0, Lcom/loc/bW;->a:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1b

    :cond_18
    iget-boolean v0, p0, Lcom/loc/bW;->b:Z

    return v0

    :cond_1b
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v1, :cond_2d

    iget-boolean v0, p0, Lcom/loc/bW;->b:Z

    if-nez v0, :cond_3b

    :goto_2b
    move v1, v2

    :cond_2c
    return v1

    :cond_2d
    iget-boolean v0, p0, Lcom/loc/bW;->b:Z

    if-nez v0, :cond_33

    :cond_31
    move v0, v2

    :goto_32
    return v0

    :cond_33
    iget v0, p0, Lcom/loc/bW;->bjj:I

    iget v3, p0, Lcom/loc/bW;->c:I

    if-ge v0, v3, :cond_31

    move v0, v1

    goto :goto_32

    :cond_3b
    iget v0, p0, Lcom/loc/bW;->bjk:I

    iget v3, p0, Lcom/loc/bW;->d:I
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3f} :catch_42

    if-lt v0, v3, :cond_2c

    goto :goto_2b

    :catch_42
    move-exception v0

    const-string/jumbo v1, "CollectorStatus"

    const-string/jumbo v3, "isEnabled"

    invoke-static {v0, v1, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method protected a(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "e"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    :goto_10
    const-string/jumbo v2, "d"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    :cond_19
    :goto_19
    const-string/jumbo v2, "u"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1f} :catch_33

    move-result v2

    if-nez v2, :cond_86

    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/loc/bW;->g()V

    return v0

    :cond_26
    :try_start_26
    const-string/jumbo v2, "e"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3e

    move v2, v0

    :goto_30
    iput-boolean v2, p0, Lcom/loc/bW;->b:Z
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_32} :catch_33

    goto :goto_10

    :catch_33
    move-exception v1

    const-string/jumbo v2, "CollectorStatus"

    const-string/jumbo v3, "parse"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_3e
    move v2, v1

    goto :goto_30

    :cond_40
    :try_start_40
    const-string/jumbo v2, "d"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    and-int/lit8 v4, v2, 0x7f

    mul-int/lit8 v4, v4, 0xa

    mul-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/loc/bW;->c:I

    and-int/lit16 v4, v2, 0xf80

    shr-int/lit8 v4, v4, 0x7

    mul-int/lit8 v4, v4, 0xa

    mul-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/loc/bW;->d:I

    const v4, 0x7f000

    and-int/2addr v4, v2

    shr-int/lit8 v4, v4, 0xc

    iput v4, p0, Lcom/loc/bW;->e:I

    const/high16 v4, 0x3f80000

    and-int/2addr v4, v2

    shr-int/lit8 v4, v4, 0x13

    mul-int/lit8 v4, v4, 0xa

    iput v4, p0, Lcom/loc/bW;->f:I

    const/high16 v4, 0x7c000000

    and-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x1a

    iput v2, p0, Lcom/loc/bW;->g:I

    iget v2, p0, Lcom/loc/bW;->g:I

    const/16 v4, 0x1f

    if-eq v2, v4, :cond_81

    :goto_77
    iget-object v2, p0, Lcom/loc/bW;->bjl:Lcom/loc/e;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/loc/bW;->bjl:Lcom/loc/e;

    invoke-interface {v2}, Lcom/loc/e;->a()V

    goto :goto_19

    :cond_81
    const/16 v2, 0x5dc

    iput v2, p0, Lcom/loc/bW;->g:I

    goto :goto_77

    :cond_86
    const-string/jumbo v2, "u"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_8c} :catch_33

    move-result v2

    if-eqz v2, :cond_22

    move v0, v1

    goto :goto_22
.end method

.method protected b()I
    .registers 2

    iget v0, p0, Lcom/loc/bW;->e:I

    return v0
.end method

.method protected bDS(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/loc/bW;->h()V

    if-ltz p1, :cond_9

    :goto_6
    iput p1, p0, Lcom/loc/bW;->bjk:I

    return-void

    :cond_9
    move p1, v0

    goto :goto_6
.end method

.method protected bDT(Lcom/loc/e;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/bW;->bjl:Lcom/loc/e;

    return-void
.end method

.method protected c()I
    .registers 2

    iget v0, p0, Lcom/loc/bW;->f:I

    return v0
.end method

.method protected d()I
    .registers 2

    iget v0, p0, Lcom/loc/bW;->g:I

    return v0
.end method

.method protected e()I
    .registers 2

    invoke-direct {p0}, Lcom/loc/bW;->h()V

    iget v0, p0, Lcom/loc/bW;->bjj:I

    return v0
.end method

.method protected f()I
    .registers 2

    invoke-direct {p0}, Lcom/loc/bW;->h()V

    iget v0, p0, Lcom/loc/bW;->bjk:I

    return v0
.end method

.method protected g()V
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/loc/bW;->h()V

    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/loc/bW;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/loc/bW;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "data_carrier_status"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_102

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_36} :catch_106
    .catchall {:try_start_3 .. :try_end_36} :catchall_119

    :try_start_36
    iget v2, p0, Lcom/loc/bW;->bjj:I

    invoke-static {v2}, Lcom/loc/bW;->bDU(I)[B

    move-result-object v2

    iget v4, p0, Lcom/loc/bW;->bjk:I

    invoke-static {v4}, Lcom/loc/bW;->bDU(I)[B

    move-result-object v4

    iget-wide v6, p0, Lcom/loc/bW;->j:J

    invoke-static {v6, v7}, Lcom/loc/bW;->a(J)[B

    move-result-object v5

    const/16 v6, 0x16

    new-array v6, v6, [B

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/loc/bW;->b:Z

    if-nez v8, :cond_103

    :goto_51
    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v6, v7

    const/4 v0, 0x1

    iget v3, p0, Lcom/loc/bW;->c:I

    div-int/lit16 v3, v3, 0x2800

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    const/4 v0, 0x2

    iget v3, p0, Lcom/loc/bW;->d:I

    div-int/lit16 v3, v3, 0x2800

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/loc/bW;->e:I

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    const/4 v0, 0x4

    iget v3, p0, Lcom/loc/bW;->f:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    const/4 v0, 0x5

    iget v3, p0, Lcom/loc/bW;->g:I

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    const/4 v0, 0x6

    const/4 v3, 0x0

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    const/4 v0, 0x7

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    const/16 v0, 0x8

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    const/16 v0, 0x9

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    const/16 v0, 0xa

    const/4 v2, 0x0

    aget-byte v2, v4, v2

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    const/16 v0, 0xb

    const/4 v2, 0x1

    aget-byte v2, v4, v2

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    const/16 v0, 0xc

    const/4 v2, 0x2

    aget-byte v2, v4, v2

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    const/16 v0, 0xd

    const/4 v2, 0x3

    aget-byte v2, v4, v2

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    const/16 v0, 0xe

    const/4 v2, 0x0

    aget-byte v2, v5, v2

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    const/16 v0, 0xf

    const/4 v2, 0x1

    aget-byte v2, v5, v2

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    const/16 v0, 0x10

    const/4 v2, 0x2

    aget-byte v2, v5, v2

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    const/16 v0, 0x11

    const/4 v2, 0x3

    aget-byte v2, v5, v2

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    const/16 v0, 0x12

    const/4 v2, 0x4

    aget-byte v2, v5, v2

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    const/16 v0, 0x13

    const/4 v2, 0x5

    aget-byte v2, v5, v2

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    const/16 v0, 0x14

    const/4 v2, 0x6

    aget-byte v2, v5, v2

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    const/16 v0, 0x15

    const/4 v2, 0x7

    aget-byte v2, v5, v2

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    invoke-virtual {v1, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_ff
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_ff} :catch_12c
    .catchall {:try_start_36 .. :try_end_ff} :catchall_12a

    if-nez v1, :cond_11e

    :cond_101
    :goto_101
    return-void

    :cond_102
    return-void

    :cond_103
    move v0, v3

    goto/16 :goto_51

    :catch_106
    move-exception v0

    move-object v1, v2

    :goto_108
    :try_start_108
    const-string/jumbo v2, "CollectorStatus"

    const-string/jumbo v3, "save"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_111
    .catchall {:try_start_108 .. :try_end_111} :catchall_12a

    if-eqz v1, :cond_101

    :try_start_113
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_116
    .catch Ljava/lang/Throwable; {:try_start_113 .. :try_end_116} :catch_117

    goto :goto_101

    :catch_117
    move-exception v0

    goto :goto_101

    :catchall_119
    move-exception v0

    move-object v1, v2

    :goto_11b
    if-nez v1, :cond_124

    :goto_11d
    throw v0

    :cond_11e
    :try_start_11e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_121
    .catch Ljava/lang/Throwable; {:try_start_11e .. :try_end_121} :catch_122

    goto :goto_101

    :catch_122
    move-exception v0

    goto :goto_101

    :cond_124
    :try_start_124
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_127
    .catch Ljava/lang/Throwable; {:try_start_124 .. :try_end_127} :catch_128

    goto :goto_11d

    :catch_128
    move-exception v1

    goto :goto_11d

    :catchall_12a
    move-exception v0

    goto :goto_11b

    :catch_12c
    move-exception v0

    goto :goto_108
.end method

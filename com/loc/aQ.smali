.class public Lcom/loc/aQ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/aQ;->a:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Landroid/content/Context;)V
    .registers 7

    :try_start_0
    invoke-static {p0}, Lcom/loc/aQ;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6f

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x35

    if-ne v1, v2, :cond_70

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bv;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0}, Lcom/loc/aQ;->b(Landroid/content/Context;)[B

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    array-length v0, v0

    array-length v4, v1

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lcom/loc/bv;->bBu([B)[B

    move-result-object v0

    new-instance v1, Lcom/loc/bF;

    const-string/jumbo v2, "2"

    invoke-direct {v1, v0, v2}, Lcom/loc/bF;-><init>([BLjava/lang/String;)V

    invoke-static {}, Lcom/loc/U;->a()Lcom/loc/U;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/loc/U;->bwT(Lcom/loc/q;)[B
    :try_end_6e
    .catch Lcom/loc/i; {:try_start_0 .. :try_end_6e} :catch_71
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6e} :catch_7c

    :goto_6e
    return-void

    :cond_6f
    return-void

    :cond_70
    return-void

    :catch_71
    move-exception v0

    const-string/jumbo v1, "StatisticsManager"

    const-string/jumbo v2, "updateStaticsData"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    :catch_7c
    move-exception v0

    const-string/jumbo v1, "StatisticsManager"

    const-string/jumbo v2, "updateStaticsData"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e
.end method

.method private static b(Landroid/content/Context;)[B
    .registers 6

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/loc/aQ;->c(Landroid/content/Context;)[B

    move-result-object v0

    invoke-static {p0}, Lcom/loc/aQ;->e(Landroid/content/Context;)[B

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v2}, Lcom/loc/aQ;->bzX(Landroid/content/Context;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static bzX(Landroid/content/Context;[B)[B
    .registers 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/loc/bZ;->bEd(Landroid/content/Context;[B)[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static bzY(Lcom/loc/cD;Ljava/lang/String;)[B
    .registers 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-array v1, v0, [B

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/loc/cD;->a(Ljava/lang/String;)Lcom/loc/A;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_1e
    .catchall {:try_start_4 .. :try_end_7} :catchall_28

    move-result-object v3

    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {v3, v0}, Lcom/loc/A;->a(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p0, p1}, Lcom/loc/cD;->bHl(Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_19} :catch_67
    .catchall {:try_start_9 .. :try_end_19} :catchall_65

    if-nez v2, :cond_2f

    :goto_1b
    if-nez v3, :cond_38

    :goto_1d
    return-object v1

    :catch_1e
    move-exception v0

    move-object v3, v2

    :goto_20
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_65

    if-nez v2, :cond_41

    :goto_25
    if-nez v3, :cond_4a

    :goto_27
    return-object v1

    :catchall_28
    move-exception v0

    move-object v3, v2

    :goto_2a
    if-nez v2, :cond_53

    :goto_2c
    if-nez v3, :cond_5c

    :goto_2e
    throw v0

    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_1b

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1b

    :cond_38
    :try_start_38
    invoke-virtual {v3}, Lcom/loc/A;->close()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_1d

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1d

    :cond_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_25

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_25

    :cond_4a
    :try_start_4a
    invoke-virtual {v3}, Lcom/loc/A;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_27

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_27

    :cond_53
    :try_start_53
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_2c

    :catch_57
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2c

    :cond_5c
    :try_start_5c
    invoke-virtual {v3}, Lcom/loc/A;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_2e

    :catch_60
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2e

    :catchall_65
    move-exception v0

    goto :goto_2a

    :catch_67
    move-exception v0

    goto :goto_20
.end method

.method private static bzZ(Landroid/content/Context;J)V
    .registers 8

    const/4 v2, 0x0

    const-string/jumbo v0, "c.log"

    invoke-static {p0, v0}, Lcom/loc/D;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a

    :goto_17
    :try_start_17
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1c} :catch_32
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_42
    .catchall {:try_start_17 .. :try_end_1c} :catchall_52

    :try_start_1c
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bv;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_27} :catch_6d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_6b
    .catchall {:try_start_1c .. :try_end_27} :catchall_69

    if-nez v1, :cond_57

    :cond_29
    :goto_29
    return-void

    :cond_2a
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_17

    :catch_32
    move-exception v0

    move-object v1, v2

    :goto_34
    :try_start_34
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_69

    if-eqz v1, :cond_29

    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_29

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_29

    :catch_42
    move-exception v0

    move-object v1, v2

    :goto_44
    :try_start_44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_69

    if-eqz v1, :cond_29

    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_29

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_29

    :catchall_52
    move-exception v0

    move-object v1, v2

    :goto_54
    if-nez v1, :cond_60

    :goto_56
    throw v0

    :cond_57
    :try_start_57
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_29

    :catch_5b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_29

    :cond_60
    :try_start_60
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_56

    :catch_64
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_56

    :catchall_69
    move-exception v0

    goto :goto_54

    :catch_6b
    move-exception v0

    goto :goto_44

    :catch_6d
    move-exception v0

    goto :goto_34
.end method

.method private static c(Landroid/content/Context;)[B
    .registers 6

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v1, v0, [B

    :try_start_8
    const-string/jumbo v0, "1.2.12.5"

    invoke-static {v2, v0}, Lcom/loc/bv;->bBp(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/cn;->bGa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/loc/bv;->bBp(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/cn;->bFS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/loc/bv;->bBp(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/cn;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/loc/bv;->bBp(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/bv;->bBp(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/bv;->bBp(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/bv;->bBp(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/cn;->bGb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/loc/bv;->bBp(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/M;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/loc/bv;->bBp(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/M;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/loc/bv;->bBp(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/M;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/loc/bv;->bBp(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-byte v4, v0, v3

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_5b} :catch_60
    .catchall {:try_start_8 .. :try_end_5b} :catchall_6f

    move-result-object v0

    :try_start_5c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_74

    :goto_5f
    return-object v0

    :catch_60
    move-exception v0

    :try_start_61
    const-string/jumbo v3, "StatisticsManager"

    const-string/jumbo v4, "getHeader"

    invoke-static {v0, v3, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_6f

    :try_start_6a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6d} :catch_79

    :goto_6d
    move-object v0, v1

    goto :goto_5f

    :catchall_6f
    move-exception v0

    :try_start_70
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_73} :catch_7e

    :goto_73
    throw v0

    :catch_74
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5f

    :catch_79
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6d

    :catch_7e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_73
.end method

.method private static d(Landroid/content/Context;)I
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Lcom/loc/D;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/loc/D;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_17} :catch_19

    :goto_17
    return v0

    :cond_18
    return v1

    :catch_19
    move-exception v0

    const-string/jumbo v2, "StatisticsManager"

    const-string/jumbo v3, "getFileNum"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_17
.end method

.method private static e(Landroid/content/Context;)[B
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v2, v0, [B

    sget-object v4, Lcom/loc/D;->e:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/loc/D;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_f
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v8, 0x2800

    invoke-static {v5, v6, v7, v8, v9}, Lcom/loc/cD;->bHg(Ljava/io/File;IIJ)Lcom/loc/cD;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v5, :cond_2c

    :cond_23
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-nez v3, :cond_85

    :goto_29
    if-nez v1, :cond_8e

    :goto_2b
    return-object v0

    :cond_2c
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_37
    if-ge v0, v5, :cond_23

    aget-object v6, v4, v0

    const-string/jumbo v7, ".0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_55

    const-string/jumbo v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v1, v6}, Lcom/loc/aQ;->bzY(Lcom/loc/cD;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_55} :catch_58
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_55} :catch_68
    .catchall {:try_start_f .. :try_end_55} :catchall_7f

    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :catch_58
    move-exception v0

    :try_start_59
    const-string/jumbo v4, "StatisticsManager"

    const-string/jumbo v5, "getContent"

    invoke-static {v0, v4, v5}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_97

    :goto_64
    if-nez v1, :cond_a0

    :cond_66
    :goto_66
    move-object v0, v2

    goto :goto_2b

    :catch_68
    move-exception v0

    const-string/jumbo v4, "StatisticsManager"

    const-string/jumbo v5, "getContent"

    invoke-static {v0, v4, v5}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_59 .. :try_end_72} :catchall_7f

    if-nez v3, :cond_a9

    :goto_74
    if-eqz v1, :cond_66

    :try_start_76
    invoke-virtual {v1}, Lcom/loc/cD;->close()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_66

    :catch_7a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_66

    :catchall_7f
    move-exception v0

    if-nez v3, :cond_b2

    :goto_82
    if-nez v1, :cond_bb

    :goto_84
    throw v0

    :cond_85
    :try_start_85
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_29

    :catch_89
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    :cond_8e
    :try_start_8e
    invoke-virtual {v1}, Lcom/loc/cD;->close()V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_2b

    :catch_92
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2b

    :cond_97
    :try_start_97
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_64

    :catch_9b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_64

    :cond_a0
    :try_start_a0
    invoke-virtual {v1}, Lcom/loc/cD;->close()V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_66

    :catch_a4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_66

    :cond_a9
    :try_start_a9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad

    goto :goto_74

    :catch_ad
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_74

    :cond_b2
    :try_start_b2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_82

    :catch_b6
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_82

    :cond_bb
    :try_start_bb
    invoke-virtual {v1}, Lcom/loc/cD;->close()V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_84

    :catch_bf
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_84
.end method

.method private static f(Landroid/content/Context;)J
    .registers 9

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "c.log"

    invoke-static {p0, v0}, Lcom/loc/D;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2e

    :try_start_15
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1a} :catch_2f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_3d
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1a} :catch_53
    .catchall {:try_start_15 .. :try_end_1a} :catchall_99

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-static {v0}, Lcom/loc/bv;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_2a} :catch_a0
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2a} :catch_9e
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_2a} :catch_9c
    .catchall {:try_start_1a .. :try_end_2a} :catchall_7a

    move-result-wide v2

    if-nez v1, :cond_7e

    :goto_2d
    return-wide v2

    :cond_2e
    return-wide v6

    :catch_2f
    move-exception v0

    move-object v1, v2

    :goto_31
    :try_start_31
    const-string/jumbo v2, "StatisticsManager"

    const-string/jumbo v3, "getUpdateTime"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_87

    :cond_3c
    :goto_3c
    return-wide v6

    :catch_3d
    move-exception v0

    move-object v1, v2

    :goto_3f
    const-string/jumbo v2, "StatisticsManager"

    const-string/jumbo v3, "getUpdateTime"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_7a

    if-eqz v1, :cond_3c

    :try_start_4a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_3c

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3c

    :catch_53
    move-exception v0

    move-object v1, v2

    :goto_55
    :try_start_55
    const-string/jumbo v2, "StatisticsManager"

    const-string/jumbo v4, "getUpdateTime"

    invoke-static {v0, v2, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_7a

    if-nez v3, :cond_6b

    :cond_60
    :goto_60
    if-eqz v1, :cond_3c

    :try_start_62
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_3c

    :catch_66
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3c

    :cond_6b
    :try_start_6b
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_74} :catch_75
    .catchall {:try_start_6b .. :try_end_74} :catchall_7a

    goto :goto_60

    :catch_75
    move-exception v0

    :try_start_76
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    goto :goto_60

    :catchall_7a
    move-exception v0

    :goto_7b
    if-nez v1, :cond_90

    :goto_7d
    throw v0

    :cond_7e
    :try_start_7e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_2d

    :catch_82
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    :cond_87
    :try_start_87
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_3c

    :catch_8b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3c

    :cond_90
    :try_start_90
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_7d

    :catch_94
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7d

    :catchall_99
    move-exception v0

    move-object v1, v2

    goto :goto_7b

    :catch_9c
    move-exception v0

    goto :goto_55

    :catch_9e
    move-exception v0

    goto :goto_3f

    :catch_a0
    move-exception v0

    goto :goto_31
.end method

.method private static g(Landroid/content/Context;)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    invoke-static {p0}, Lcom/loc/cn;->bFW(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v1, :cond_9

    :cond_8
    :goto_8
    return v2

    :cond_9
    sget-boolean v0, Lcom/loc/aQ;->a:Z

    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/loc/aQ;->d(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0x64

    if-lt v0, v3, :cond_2f

    invoke-static {p0}, Lcom/loc/aQ;->f(Landroid/content/Context;)J

    move-result-wide v4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v8, 0x36ee80

    cmp-long v0, v4, v8

    if-ltz v0, :cond_30

    move v0, v1

    :goto_2c
    if-nez v0, :cond_32

    return v2

    :cond_2f
    return v2

    :cond_30
    move v0, v2

    goto :goto_2c

    :cond_32
    invoke-static {p0, v6, v7}, Lcom/loc/aQ;->bzZ(Landroid/content/Context;J)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/aQ;->a:Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_38} :catch_39

    return v1

    :catch_39
    move-exception v0

    const-string/jumbo v1, "StatisticsManager"

    const-string/jumbo v3, "isUpdate"

    invoke-static {v0, v1, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

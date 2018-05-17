.class public Lcom/loc/bU;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_14

    :cond_12
    return-object v2

    :cond_13
    return-object v2

    :cond_14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x800

    new-array v3, v1, [B

    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2a} :catch_82
    .catchall {:try_start_1 .. :try_end_2a} :catchall_6c

    :goto_2a
    :try_start_2a
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_3c

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bv;->bBv([B)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_4e

    :goto_3b
    return-object v0

    :cond_3c
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v0}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_40} :catch_41
    .catchall {:try_start_2a .. :try_end_40} :catchall_7f

    goto :goto_2a

    :catch_41
    move-exception v0

    :goto_42
    :try_start_42
    const-string/jumbo v3, "MD5"

    const-string/jumbo v4, "getMd5FromFile"

    invoke-static {v0, v3, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_7f

    if-nez v1, :cond_5d

    :goto_4d
    return-object v2

    :cond_4e
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_3b

    :catch_52
    move-exception v1

    const-string/jumbo v2, "MD5"

    const-string/jumbo v3, "getMd5FromFile"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_5d
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_4d

    :catch_61
    move-exception v0

    const-string/jumbo v1, "MD5"

    const-string/jumbo v3, "getMd5FromFile"

    invoke-static {v0, v1, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    :catchall_6c
    move-exception v0

    :goto_6d
    if-nez v2, :cond_70

    :goto_6f
    throw v0

    :cond_70
    :try_start_70
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_6f

    :catch_74
    move-exception v1

    const-string/jumbo v2, "MD5"

    const-string/jumbo v3, "getMd5FromFile"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    :catchall_7f
    move-exception v0

    move-object v2, v1

    goto :goto_6d

    :catch_82
    move-exception v0

    move-object v1, v2

    goto :goto_42
.end method

.method public static a([B)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/loc/bU;->b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bv;->bBv([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    invoke-static {p0}, Lcom/loc/bU;->bDM(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bv;->bBv([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v0
.end method

.method private static b([B)[B
    .registers 2

    const-string/jumbo v0, "MD5"

    invoke-static {p0, v0}, Lcom/loc/bU;->bDL([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static bDK(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/loc/bU;->bDN(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bv;->bBw([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bDL([BLjava/lang/String;)[B
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    const-string/jumbo v2, "MD5"

    const-string/jumbo v3, "getMd5Bytes1"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_c
.end method

.method public static bDM(Ljava/lang/String;)[B
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/loc/bU;->bDO(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    const-string/jumbo v1, "MD5"

    const-string/jumbo v2, "getMd5Bytes"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method private static bDN(Ljava/lang/String;)[B
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/loc/bU;->bDO(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method private static bDO(Ljava/lang/String;)[B
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_16

    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/bv;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    :cond_16
    return-object v0
.end method

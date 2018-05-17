.class public Lu/aly/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-string/jumbo v0, "line.separator"

    .line 41
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    sput-object v0, Lu/aly/bu;->a:Ljava/lang/String;

    .line 42
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 278
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    .line 280
    new-array v1, v1, [C

    .line 283
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 285
    :goto_e
    invoke-virtual {v0, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v4, v3, :cond_1a

    const/4 v4, 0x0

    .line 286
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_e

    .line 289
    :cond_1a
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    if-eqz p0, :cond_3a

    .line 54
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string/jumbo v2, "MD5"

    .line 55
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 57
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 58
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 59
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    :goto_1e
    array-length v3, v1

    if-ge v0, v3, :cond_3b

    const-string/jumbo v3, "%02X"

    const/4 v4, 0x1

    .line 61
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, v1, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 52
    :cond_3a
    return-object v1

    .line 64
    :cond_3b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_40

    move-result-object v0

    return-object v0

    :catch_40
    move-exception v0

    const-string/jumbo v0, "[^[a-z][A-Z][0-9][.][_]]"

    const-string/jumbo v1, ""

    .line 67
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    :try_start_0
    const-string/jumbo v0, "MD5"

    .line 82
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 84
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 87
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    .line 88
    :goto_18
    array-length v3, v1

    if-ge v0, v3, :cond_29

    .line 89
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 92
    :cond_29
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2c} :catch_2e

    move-result-object v0

    return-object v0

    :catch_2e
    move-exception v0

    const-string/jumbo v1, "helper"

    const-string/jumbo v2, "getMD5 error"

    .line 95
    invoke-static {v1, v2, v0}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const-string/jumbo v0, ""

    .line 97
    return-object v0
.end method

.method public static bVW(Ljava/io/InputStream;)[B
    .registers 5

    .prologue
    .line 299
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 301
    new-array v1, v1, [B

    .line 304
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v3, v2, :cond_15

    const/4 v3, 0x0

    .line 305
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 308
    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static bVX(Ljava/io/File;[B)V
    .registers 4

    .prologue
    .line 318
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 321
    :try_start_5
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 322
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 324
    invoke-static {v1}, Lu/aly/bu;->bWa(Ljava/io/OutputStream;)V

    .line 326
    return-void

    .line 323
    :catchall_f
    move-exception v0

    .line 324
    invoke-static {v1}, Lu/aly/bu;->bWa(Ljava/io/OutputStream;)V

    .line 325
    throw v0
.end method

.method public static bVY(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lu/aly/bu;->bVX(Ljava/io/File;[B)V

    .line 336
    return-void
.end method

.method public static bVZ(Ljava/io/InputStream;)V
    .registers 2

    .prologue
    .line 343
    if-nez p0, :cond_3

    .line 348
    :goto_2
    return-void

    .line 345
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 346
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public static bWa(Ljava/io/OutputStream;)V
    .registers 2

    .prologue
    .line 354
    if-nez p0, :cond_3

    .line 359
    :goto_2
    return-void

    .line 356
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 357
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public static bWb(Lorg/apache/http/Header;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 362
    if-nez p0, :cond_4

    .line 363
    :cond_3
    return v1

    .line 362
    :cond_4
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 366
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 368
    array-length v3, v2

    move v0, v1

    :goto_17
    if-ge v0, v3, :cond_26

    aget-object v4, v2, v0

    .line 369
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 369
    :cond_24
    const/4 v0, 0x1

    return v0

    .line 372
    :cond_26
    return v1
.end method

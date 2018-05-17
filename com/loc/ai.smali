.class public Lcom/loc/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:[B

.field private static final bfk:[C

.field private static final bfl:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v0, 0x10

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x31

    aput-char v1, v0, v3

    const/16 v1, 0x32

    aput-char v1, v0, v4

    const/16 v1, 0x33

    aput-char v1, v0, v5

    const/4 v1, 0x4

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/16 v1, 0x35

    aput-char v1, v0, v6

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x38

    aput-char v1, v0, v7

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-char v2, v0, v1

    sput-object v0, Lcom/loc/ai;->bfk:[C

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    aput-byte v3, v0, v3

    aput-byte v3, v0, v4

    aput-byte v4, v0, v5

    const/4 v1, 0x4

    aput-byte v5, v0, v1

    aput-byte v6, v0, v6

    const/4 v1, 0x6

    aput-byte v7, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    aput-byte v7, v0, v7

    const/16 v1, 0x9

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    aput-byte v6, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v5, v0, v1

    const/16 v1, 0xe

    aput-byte v4, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    sput-object v0, Lcom/loc/ai;->b:[B

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/loc/ai;->b:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/loc/ai;->bfl:Ljavax/crypto/spec/IvParameterSpec;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    if-nez p0, :cond_4

    :cond_3
    return-object v3

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "SHA1"

    invoke-static {v0, p0}, Lcom/loc/ai;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MD5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/ai;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_28} :catch_2a

    move-result-object v0

    return-object v0

    :catch_2a
    move-exception v0

    const-string/jumbo v1, "Encrypt"

    const-string/jumbo v2, "generatorKey"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_13

    :try_start_3
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p0}, Lcom/loc/bU;->bDL([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ai;->b([B)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_14

    move-result-object v0

    return-object v0

    :cond_13
    return-object v3

    :catch_14
    move-exception v0

    const-string/jumbo v1, "Encrypt"

    const-string/jumbo v2, "encode"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static a([B)Ljava/lang/String;
    .registers 6

    const/16 v0, 0x10

    :try_start_2
    new-array v0, v0, [B

    array-length v1, p0

    add-int/lit8 v1, v1, -0x10

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {p0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x10

    const/4 v3, 0x0

    array-length v4, p0

    add-int/lit8 v4, v4, -0x10

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/loc/bv;->a()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_41} :catch_42

    return-object v1

    :catch_42
    move-exception v0

    const-string/jumbo v1, "Encrypt"

    const-string/jumbo v2, "decryptRsponse"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static a()[B
    .registers 1

    invoke-static {}, Lcom/loc/bv;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B[B)[B
    .registers 6

    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v3, Lcom/loc/ai;->bfl:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static b([B)Ljava/lang/String;
    .registers 6

    array-length v1, p0

    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v1, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_9
    if-lt v0, v1, :cond_10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    sget-object v3, Lcom/loc/ai;->bfk:[C

    aget-byte v4, p0, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/loc/ai;->bfk:[C

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private static b(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .registers 5

    const/4 v1, 0x0

    const/16 v3, 0x10

    if-eqz p0, :cond_2d

    :goto_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v2, v3, :cond_31

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-gt v2, v3, :cond_38

    :goto_19
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_23} :catch_3c

    move-result-object v0

    :goto_24
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_2d
    const-string/jumbo p0, ""

    goto :goto_5

    :cond_31
    const-string/jumbo v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :cond_38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_19

    :catch_3c
    move-exception v0

    const-string/jumbo v2, "Encrypt"

    const-string/jumbo v3, "createKey"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_24
.end method

.method public static declared-synchronized byf([BLjava/lang/String;)[B
    .registers 12

    const/16 v8, 0xf5

    const/4 v0, 0x0

    const-class v2, Lcom/loc/ai;

    monitor-enter v2

    :try_start_6
    invoke-static {p1}, Lcom/loc/cz;->b(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string/jumbo v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    const-string/jumbo v3, "RSA/ECB/PKCS1Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v4, p0

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v0

    :goto_2c
    sub-int v6, v4, v0

    if-gtz v6, :cond_39

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_57

    monitor-exit v2

    return-object v0

    :cond_39
    sub-int v6, v4, v0

    if-gt v6, v8, :cond_50

    sub-int v6, v4, v0

    :try_start_3f
    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    :goto_43
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v1, 0x1

    mul-int/lit16 v1, v0, 0xf5

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_2c

    :cond_50
    const/16 v6, 0xf5

    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_55
    .catchall {:try_start_3f .. :try_end_55} :catchall_57

    move-result-object v0

    goto :goto_43

    :catchall_57
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized byg([BLjava/lang/String;)[B
    .registers 12

    const/16 v8, 0x100

    const/4 v0, 0x0

    const-class v2, Lcom/loc/ai;

    monitor-enter v2

    :try_start_6
    invoke-static {p1}, Lcom/loc/cz;->b(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string/jumbo v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    const-string/jumbo v3, "RSA/ECB/PKCS1Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v4, p0

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v0

    :goto_2c
    sub-int v6, v4, v0

    if-gtz v6, :cond_39

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_57

    monitor-exit v2

    return-object v0

    :cond_39
    sub-int v6, v4, v0

    if-gt v6, v8, :cond_50

    sub-int v6, v4, v0

    :try_start_3f
    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    :goto_43
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v1, 0x1

    mul-int/lit16 v1, v0, 0x100

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_2c

    :cond_50
    const/16 v6, 0x100

    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_55
    .catchall {:try_start_3f .. :try_end_55} :catchall_57

    move-result-object v0

    goto :goto_43

    :catchall_57
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static byh([BLjava/lang/String;)[B
    .registers 6

    :try_start_0
    invoke-static {p1}, Lcom/loc/ai;->b(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    invoke-static {}, Lcom/loc/ai;->a()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string/jumbo v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_28

    move-result-object v1

    const/4 v3, 0x1

    :try_start_15
    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_18
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_15 .. :try_end_18} :catch_1d
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_28

    :goto_18
    :try_start_18
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0

    :catch_1d
    move-exception v0

    const-string/jumbo v2, "Encrypt"

    const-string/jumbo v3, "aesEncrypt1"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_27} :catch_28

    goto :goto_18

    :catch_28
    move-exception v0

    const-string/jumbo v1, "Encrypt"

    const-string/jumbo v2, "aesEncrypt"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static byi([BLjava/lang/String;)[B
    .registers 6

    :try_start_0
    invoke-static {p1}, Lcom/loc/ai;->b(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    invoke-static {}, Lcom/loc/ai;->a()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string/jumbo v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_28

    move-result-object v1

    const/4 v3, 0x2

    :try_start_15
    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_18
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_15 .. :try_end_18} :catch_1d
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_28

    :goto_18
    :try_start_18
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0

    :catch_1d
    move-exception v0

    const-string/jumbo v2, "Encrypt"

    const-string/jumbo v3, "aesDecrypt1"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_27} :catch_28

    goto :goto_18

    :catch_28
    move-exception v0

    const-string/jumbo v1, "Encrypt"

    const-string/jumbo v2, "aesDecrypt"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

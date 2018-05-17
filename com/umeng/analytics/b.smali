.class public Lcom/umeng/analytics/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0x10

    .line 14
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    aput-byte v3, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    aput-byte v6, v0, v4

    aput-byte v5, v0, v5

    const/16 v1, 0xf

    aput-byte v1, v0, v6

    const/4 v1, 0x7

    aput-byte v1, v0, v7

    const/4 v1, 0x7

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    const/16 v1, 0xb

    aput-byte v7, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    sput-object v0, Lcom/umeng/analytics/b;->a:[B

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;)I
    .registers 6

    .prologue
    .line 96
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 98
    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gez v0, :cond_33

    .line 99
    if-eqz p1, :cond_29

    :goto_15
    const/4 v0, 0x0

    const/16 v1, 0x9

    const/16 v2, 0xb

    .line 105
    :try_start_1a
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_4a

    move-result v0

    .line 109
    :goto_24
    or-int/lit16 v0, v0, 0x80

    mul-int/lit16 v0, v0, 0x3e8

    .line 117
    :cond_28
    :goto_28
    return v0

    :cond_29
    const-string/jumbo v0, "--->"

    const-string/jumbo v1, "null signature.."

    .line 100
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 111
    :cond_33
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const v1, 0x3e418

    .line 112
    if-gt v0, v1, :cond_28

    const v1, 0x1f400

    if-lt v0, v1, :cond_28

    const v0, 0x1f018

    .line 113
    goto :goto_28

    .line 107
    :catch_4a
    move-exception v1

    goto :goto_24
.end method

.method public static a([B)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    if-eqz p0, :cond_18

    .line 38
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 39
    :goto_a
    array-length v3, p0

    if-lt v0, v3, :cond_19

    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_18
    return-object v0

    :cond_19
    const-string/jumbo v3, "%02X"

    const/4 v4, 0x1

    .line 40
    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 17
    if-eqz p0, :cond_13

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 21
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_14

    .line 25
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    .line 26
    :goto_10
    if-lt v0, v1, :cond_15

    .line 30
    return-object v2

    .line 18
    :cond_13
    return-object v3

    .line 22
    :cond_14
    return-object v3

    .line 27
    :cond_15
    div-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 26
    add-int/lit8 v0, v0, 0x2

    goto :goto_10
.end method

.method public static a([B[B)[B
    .registers 6

    .prologue
    const-string/jumbo v0, "AES/CBC/PKCS7Padding"

    .line 62
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 63
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 64
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/umeng/analytics/b;->a:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    .line 65
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 66
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([B)[B
    .registers 2

    .prologue
    :try_start_0
    const-string/jumbo v0, "MD5"

    .line 49
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 51
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 53
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    return-object v0

    :catch_12
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 58
    return-object v0
.end method

.method public static b([B[B)[B
    .registers 6

    .prologue
    const-string/jumbo v0, "AES/CBC/PKCS7Padding"

    .line 80
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 81
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 82
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/umeng/analytics/b;->a:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    .line 83
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 84
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

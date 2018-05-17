.class public Lu/aly/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 28
    if-nez p0, :cond_4

    .line 29
    :cond_3
    return-object v2

    .line 28
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    :try_start_a
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lu/aly/bw;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 32
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1d

    move-result-object v0

    return-object v0

    :catch_1d
    move-exception v0

    .line 37
    return-object v2
.end method

.method public static a([B)Ljava/lang/String;
    .registers 4

    .prologue
    .line 41
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    .line 43
    :goto_6
    array-length v2, p0

    if-lt v0, v2, :cond_e

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :cond_e
    aget-byte v2, p0, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 45
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static b(Ljava/lang/String;)[B
    .registers 6

    .prologue
    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    .line 53
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_10

    .line 59
    return-object v1

    .line 54
    :cond_10
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 55
    div-int/lit8 v3, v0, 0x2

    add-int/lit8 v2, v2, -0x61

    shl-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 56
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 57
    div-int/lit8 v3, v0, 0x2

    aget-byte v4, v1, v3

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v2, v4

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 53
    add-int/lit8 v0, v0, 0x2

    goto :goto_9
.end method

.method public static bWd(Ljava/io/Serializable;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 12
    if-eqz p0, :cond_1c

    .line 15
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lu/aly/bw;->a([B)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_20

    move-result-object v0

    return-object v0

    :cond_1c
    const-string/jumbo v0, ""

    .line 13
    return-object v0

    .line 19
    :catch_20
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    return-object v2
.end method

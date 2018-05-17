.class public abstract Lcom/loc/aA;
.super Lcom/loc/q;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field protected bfS:Lcom/loc/ag;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/ag;)V
    .registers 4

    invoke-direct {p0}, Lcom/loc/q;-><init>()V

    if-nez p1, :cond_8

    :goto_5
    iput-object p2, p0, Lcom/loc/aA;->bfS:Lcom/loc/ag;

    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aA;->a:Landroid/content/Context;

    goto :goto_5
.end method

.method private i()[B
    .registers 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    const-string/jumbo v0, "PANDORA$"

    invoke-static {v0}, Lcom/loc/bv;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_26} :catch_36
    .catchall {:try_start_5 .. :try_end_26} :catchall_50

    move-result-object v0

    :try_start_27
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_2b

    :goto_2a
    return-object v0

    :catch_2b
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getBinaryHead"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    :catch_36
    move-exception v0

    :try_start_37
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getBinaryHead"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_50

    :try_start_40
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_45

    :goto_43
    const/4 v0, 0x0

    return-object v0

    :catch_45
    move-exception v0

    const-string/jumbo v1, "BinaryRequest"

    const-string/jumbo v2, "getBinaryHead"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :catchall_50
    move-exception v0

    :try_start_51
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_54} :catch_55

    :goto_54
    throw v0

    :catch_55
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getBinaryHead"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54
.end method

.method private j()[B
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_7
    invoke-virtual {p0}, Lcom/loc/aA;->bzk()[B

    move-result-object v0

    if-nez v0, :cond_1f

    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1a} :catch_54
    .catchall {:try_start_7 .. :try_end_1a} :catchall_71

    move-result-object v0

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_3e

    :goto_1e
    return-object v0

    :cond_1f
    :try_start_1f
    array-length v2, v0

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p0, v0}, Lcom/loc/aA;->a([B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_39} :catch_54
    .catchall {:try_start_1f .. :try_end_39} :catchall_71

    move-result-object v0

    :try_start_3a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_49

    :goto_3d
    return-object v0

    :catch_3e
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestRawData"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :catch_49
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestRawData"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :catch_54
    move-exception v0

    :try_start_55
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestRawData"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_71

    :try_start_5e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_66

    :goto_61
    new-array v0, v6, [B

    aput-byte v5, v0, v5

    return-object v0

    :catch_66
    move-exception v0

    const-string/jumbo v1, "BinaryRequest"

    const-string/jumbo v2, "getRequestRawData"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    :catchall_71
    move-exception v0

    :try_start_72
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_75} :catch_76

    :goto_75
    throw v0

    :catch_76
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestRawData"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75
.end method

.method private k()[B
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_7
    invoke-virtual {p0}, Lcom/loc/aA;->bzl()[B

    move-result-object v0

    if-nez v0, :cond_1f

    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1a} :catch_5a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_77

    move-result-object v0

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_44

    :goto_1e
    return-object v0

    :cond_1f
    :try_start_1f
    array-length v2, v0

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v2, p0, Lcom/loc/aA;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/loc/bZ;->bEd(Landroid/content/Context;[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loc/aA;->a([B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_3f} :catch_5a
    .catchall {:try_start_1f .. :try_end_3f} :catchall_77

    move-result-object v0

    :try_start_40
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_4f

    :goto_43
    return-object v0

    :catch_44
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :catch_4f
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :catch_5a
    move-exception v0

    :try_start_5b
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_77

    :try_start_64
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_67} :catch_6c

    :goto_67
    new-array v0, v6, [B

    aput-byte v5, v0, v5

    return-object v0

    :catch_6c
    move-exception v0

    const-string/jumbo v1, "BinaryRequest"

    const-string/jumbo v2, "getRequestEncryptData"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    :catchall_77
    move-exception v0

    :try_start_78
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_7c

    :goto_7b
    throw v0

    :catch_7c
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b
.end method


# virtual methods
.method protected a([B)[B
    .registers 6

    array-length v0, p1

    div-int/lit16 v1, v0, 0x100

    int-to-byte v1, v1

    rem-int/lit16 v0, v0, 0x100

    int-to-byte v0, v0

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    return-object v2
.end method

.method public abstract bzk()[B
.end method

.method public abstract bzl()[B
.end method

.method public c()Ljava/util/Map;
    .registers 6

    iget-object v0, p0, Lcom/loc/aA;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/M;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/loc/bZ;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/aA;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/loc/bZ;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "ts"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "key"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "scode"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public final d()[B
    .registers 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    invoke-direct {p0}, Lcom/loc/aA;->i()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/loc/aA;->f()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-direct {p0}, Lcom/loc/aA;->j()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-direct {p0}, Lcom/loc/aA;->k()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_24} :catch_34
    .catchall {:try_start_5 .. :try_end_24} :catchall_4e

    move-result-object v0

    :try_start_25
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_29

    :goto_28
    return-object v0

    :catch_29
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getEntityBytes"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :catch_34
    move-exception v0

    :try_start_35
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getEntityBytes"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_4e

    :try_start_3e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_43

    :goto_41
    const/4 v0, 0x0

    return-object v0

    :catch_43
    move-exception v0

    const-string/jumbo v1, "BinaryRequest"

    const-string/jumbo v2, "getEntityBytes"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :catchall_4e
    move-exception v0

    :try_start_4f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_53

    :goto_52
    throw v0

    :catch_53
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getEntityBytes"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "2.1"

    return-object v0
.end method

.method public f()[B
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_7
    iget-object v0, p0, Lcom/loc/aA;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/loc/bZ;->bEe(Landroid/content/Context;Z)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loc/aA;->a([B)[B

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x3

    aput-byte v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/loc/aA;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bv;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_72

    :cond_2c
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_3a
    const-string/jumbo v0, "platform=Android&sdkversion=%s&product=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/loc/aA;->bfS:Lcom/loc/ag;

    invoke-virtual {v4}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/loc/aA;->bfS:Lcom/loc/ag;

    invoke-virtual {v4}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bv;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_92

    :cond_5c
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_6a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_6d} :catch_80
    .catchall {:try_start_7 .. :try_end_6d} :catchall_a0

    move-result-object v0

    :try_start_6e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_a5

    :goto_71
    return-object v0

    :cond_72
    :try_start_72
    array-length v2, v0

    if-lez v2, :cond_2c

    invoke-virtual {p0, v0}, Lcom/loc/aA;->a([B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_7f} :catch_80
    .catchall {:try_start_72 .. :try_end_7f} :catchall_a0

    goto :goto_3a

    :catch_80
    move-exception v0

    :try_start_81
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getPublicData"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_81 .. :try_end_8a} :catchall_a0

    :try_start_8a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8d} :catch_b0

    :goto_8d
    new-array v0, v7, [B

    aput-byte v6, v0, v6

    return-object v0

    :cond_92
    :try_start_92
    array-length v2, v0

    if-lez v2, :cond_5c

    invoke-virtual {p0, v0}, Lcom/loc/aA;->a([B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_9f} :catch_80
    .catchall {:try_start_92 .. :try_end_9f} :catchall_a0

    goto :goto_6a

    :catchall_a0
    move-exception v0

    :try_start_a1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a4} :catch_bb

    :goto_a4
    throw v0

    :catch_a5
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    :catch_b0
    move-exception v0

    const-string/jumbo v1, "BinaryRequest"

    const-string/jumbo v2, "getRequestEncryptData"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :catch_bb
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a4
.end method

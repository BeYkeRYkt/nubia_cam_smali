.class public Lcom/loc/bZ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "1"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_31} :catch_33

    move-result-object v1

    :goto_32
    return-object v1

    :catch_33
    move-exception v0

    const-string/jumbo v2, "CInfo"

    const-string/jumbo v3, "getTS"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    new-instance v1, Lcom/loc/cj;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/loc/cj;-><init>(Lcom/loc/aL;)V

    invoke-static {p0}, Lcom/loc/cn;->bGa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/cn;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    :goto_13
    iput-object v0, v1, Lcom/loc/cj;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/M;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->d:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/M;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->h:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/M;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->i:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/cn;->bFW(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/cn;->bFV(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->n:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/cn;->bFU(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->p:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/loc/bZ;->bEh(Landroid/content/Context;Lcom/loc/cj;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6e
    const-string/jumbo v0, ""
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_71} :catch_72

    goto :goto_13

    :catch_72
    move-exception v0

    const-string/jumbo v1, "CInfo"

    const-string/jumbo v2, "InitXInfo"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/loc/M;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bU;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_36} :catch_38

    move-result-object v0

    :goto_37
    return-object v0

    :catch_38
    move-exception v0

    const-string/jumbo v2, "CInfo"

    const-string/jumbo v3, "Scode"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_37
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    const-string/jumbo v0, "\"key\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/M;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"platform\":\"android\",\"diu\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/cn;->bGa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"pkg\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/M;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"model\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"appname\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/M;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"appversion\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/M;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"sysversion\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_70} :catch_75

    :goto_70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_75
    move-exception v0

    const-string/jumbo v2, "CInfo"

    const-string/jumbo v3, "getPublicJSONInfo"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70
.end method

.method public static bEd(Landroid/content/Context;[B)[B
    .registers 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    if-eqz v0, :cond_35

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-static {p0}, Lcom/loc/bv;->a(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-static {v0, v1}, Lcom/loc/cz;->bHc([BLjava/security/Key;)[B

    move-result-object v1

    invoke-static {v0, p1}, Lcom/loc/cz;->a([B[B)[B

    move-result-object v0

    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    array-length v3, v0

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_35
    return-object v2

    :cond_36
    return-object v2
.end method

.method public static bEe(Landroid/content/Context;Z)[B
    .registers 5

    :try_start_0
    invoke-static {p0, p1}, Lcom/loc/bZ;->bEo(Landroid/content/Context;Z)Lcom/loc/cj;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/bZ;->bEi(Landroid/content/Context;Lcom/loc/cj;)[B
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    const-string/jumbo v1, "CInfo"

    const-string/jumbo v2, "getGZipXInfo"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static bEf(Landroid/content/Context;[B)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {p0, p1}, Lcom/loc/bZ;->bEk(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    const-string/jumbo v1, "CInfo"

    const-string/jumbo v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static bEg(Landroid/content/Context;[B)[B
    .registers 7

    const/16 v4, 0x80

    const/16 v3, 0x75

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/loc/bv;->a(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v0

    array-length v1, p1

    if-gt v1, v3, :cond_11

    invoke-static {p1, v0}, Lcom/loc/cz;->bHc([BLjava/security/Key;)[B

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    new-array v1, v3, [B

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v0}, Lcom/loc/cz;->bHc([BLjava/security/Key;)[B

    move-result-object v1

    array-length v0, p1

    add-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, -0x75

    new-array v0, v0, [B

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x75

    invoke-static {p1, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_10
.end method

.method private static bEh(Landroid/content/Context;Lcom/loc/cj;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/loc/bZ;->bEi(Landroid/content/Context;Lcom/loc/cj;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cz;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bEi(Landroid/content/Context;Lcom/loc/cj;)[B
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_7a
    .catchall {:try_start_1 .. :try_end_6} :catchall_91

    :try_start_6
    iget-object v0, p1, Lcom/loc/cj;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->f:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->g:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->h:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->i:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->l:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->n:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->o:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->p:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->q:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->r:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->s:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/cj;->t:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bZ;->bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/loc/bZ;->bEj(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)[B
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6d} :catch_a1
    .catchall {:try_start_6 .. :try_end_6d} :catchall_9f

    move-result-object v0

    if-nez v1, :cond_71

    :goto_70
    return-object v0

    :cond_71
    :try_start_71
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_70

    :catch_75
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_70

    :catch_7a
    move-exception v0

    move-object v1, v2

    :goto_7c
    :try_start_7c
    const-string/jumbo v3, "CInfo"

    const-string/jumbo v4, "InitXInfo"

    invoke-static {v0, v3, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_9f

    if-nez v1, :cond_88

    :goto_87
    return-object v2

    :cond_88
    :try_start_88
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_87

    :catch_8c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_87

    :catchall_91
    move-exception v0

    move-object v1, v2

    :goto_93
    if-nez v1, :cond_96

    :goto_95
    throw v0

    :cond_96
    :try_start_96
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_95

    :catch_9a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_95

    :catchall_9f
    move-exception v0

    goto :goto_93

    :catch_a1
    move-exception v0

    goto :goto_7c
.end method

.method private static bEj(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)[B
    .registers 3

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bv;->b([B)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/bZ;->bEg(Landroid/content/Context;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static bEk(Landroid/content/Context;[B)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/loc/bZ;->bEd(Landroid/content/Context;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bv;->b([B)[B

    move-result-object v0

    if-nez v0, :cond_e

    const-string/jumbo v0, ""

    return-object v0

    :cond_e
    invoke-static {v0}, Lcom/loc/cz;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bEl(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-array v0, v1, [B

    invoke-static {p0, v1, v0}, Lcom/loc/bv;->bBq(Ljava/io/ByteArrayOutputStream;B[B)V

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    :goto_1c
    invoke-static {p1}, Lcom/loc/bv;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/bv;->bBq(Ljava/io/ByteArrayOutputStream;B[B)V

    goto :goto_c

    :cond_24
    const/4 v0, -0x1

    goto :goto_1c
.end method

.method public static bEm(Landroid/content/Context;[B)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/loc/bZ;->bEk(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static bEn(Landroid/content/Context;Lcom/loc/ag;)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    invoke-static {p0}, Lcom/loc/cn;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\"sim\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"sdkversion\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"product\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"ed\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/ag;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"nt\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/cn;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"np\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/cn;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"mnc\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/cn;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"ant\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/cn;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_83} :catch_88

    :goto_83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_88
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_83
.end method

.method private static bEo(Landroid/content/Context;Z)Lcom/loc/cj;
    .registers 6

    const/4 v0, 0x0

    const/4 v3, 0x0

    new-instance v1, Lcom/loc/cj;

    invoke-direct {v1, v0}, Lcom/loc/cj;-><init>(Lcom/loc/aL;)V

    invoke-static {p0}, Lcom/loc/cn;->bGa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/cn;->bFS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/cn;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ad

    :goto_19
    iput-object v0, v1, Lcom/loc/cj;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/M;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->d:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v1, Lcom/loc/cj;->e:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, v1, Lcom/loc/cj;->f:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, v1, Lcom/loc/cj;->g:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/M;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->h:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/M;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->i:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->j:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/cn;->bGb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->k:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/cn;->bFZ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/cn;->bFW(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/cn;->bFV(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->n:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/cn;->bGc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->o:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/cn;->bFU(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/cj;->p:Ljava/lang/String;

    if-nez p1, :cond_b2

    invoke-static {p0}, Lcom/loc/cn;->bFR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_93
    iput-object v0, v1, Lcom/loc/cj;->q:Ljava/lang/String;

    if-nez p1, :cond_b6

    invoke-static {p0}, Lcom/loc/cn;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_9b
    iput-object v0, v1, Lcom/loc/cj;->r:Ljava/lang/String;

    if-nez p1, :cond_ba

    invoke-static {p0}, Lcom/loc/cn;->bFT(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v3

    iput-object v2, v1, Lcom/loc/cj;->s:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    :goto_aa
    iput-object v0, v1, Lcom/loc/cj;->t:Ljava/lang/String;

    return-object v1

    :cond_ad
    const-string/jumbo v0, ""

    goto/16 :goto_19

    :cond_b2
    const-string/jumbo v0, ""

    goto :goto_93

    :cond_b6
    const-string/jumbo v0, ""

    goto :goto_9b

    :cond_ba
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/loc/cj;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    goto :goto_aa
.end method

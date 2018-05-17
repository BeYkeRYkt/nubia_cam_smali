.class public Lcom/loc/cw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected static a(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    const-string/jumbo v0, "/files/"

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3d} :catch_3e

    return-object v1

    :catch_3e
    move-exception v0

    const-string/jumbo v1, "CollectorTools"

    const-string/jumbo v2, "getExternalFilesDir"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected static a([B)Ljava/util/BitSet;
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_3
    new-instance v1, Ljava/util/BitSet;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_b} :catch_30

    move v7, v3

    move v2, v3

    :goto_d
    :try_start_d
    array-length v0, p0

    if-lt v7, v0, :cond_11

    :goto_10
    return-object v1

    :cond_11
    const/4 v0, 0x7

    move v5, v2

    move v2, v0

    :goto_14
    if-gez v2, :cond_1b

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v2, v5

    goto :goto_d

    :cond_1b
    add-int/lit8 v6, v5, 0x1

    aget-byte v0, p0, v7

    shl-int v8, v4, v2

    and-int/2addr v0, v8

    shr-int/2addr v0, v2

    if-eq v0, v4, :cond_2e

    move v0, v3

    :goto_26
    invoke-virtual {v1, v5, v0}, Ljava/util/BitSet;->set(IZ)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_29} :catch_3c

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    move v5, v6

    goto :goto_14

    :cond_2e
    move v0, v4

    goto :goto_26

    :catch_30
    move-exception v0

    move-object v1, v2

    :goto_32
    const-string/jumbo v2, "CollectorTools"

    const-string/jumbo v3, "byteArray2BitSet"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catch_3c
    move-exception v0

    goto :goto_32
.end method

.method protected static a()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_8

    :goto_6
    const/4 v0, 0x1

    return v0

    :cond_8
    :try_start_8
    const-class v1, Landroid/os/Environment;

    const-string/jumbo v2, "isExternalStorageRemovable"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_23} :catch_25

    move-result v0

    return v0

    :catch_25
    move-exception v0

    const-string/jumbo v1, "CollectorTools"

    const-string/jumbo v2, "isExternalStorageRemovable"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method protected static b()J
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_19

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0

    :catch_19
    move-exception v0

    const-string/jumbo v1, "CollectorTools"

    const-string/jumbo v2, "getSDCardFreeSpace"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected static bGP(Landroid/location/Location;Lcom/loc/at;IBJZ)Lcom/loc/de;
    .registers 23

    new-instance v6, Lcom/loc/de;

    invoke-direct {v6}, Lcom/loc/de;-><init>()V

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ge v0, v2, :cond_c

    :cond_a
    const/4 v2, 0x0

    return-object v2

    :cond_c
    const/4 v2, 0x3

    move/from16 v0, p2

    if-gt v0, v2, :cond_a

    if-eqz p1, :cond_a

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_c8

    :cond_18
    const/4 v2, 0x1

    move v5, v2

    :goto_1a
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_d1

    :cond_1f
    const/4 v2, 0x1

    move v3, v2

    :goto_21
    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->m()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v7, v6, Lcom/loc/de;->d:[B

    const/4 v8, 0x0

    array-length v9, v2

    iget-object v10, v6, Lcom/loc/de;->d:[B

    array-length v10, v10

    invoke-static {v9, v10}, Lcom/loc/cw;->bGQ(II)I

    move-result v9

    invoke-static {v2, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/loc/X;->f()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v7, v6, Lcom/loc/de;->h:[B

    const/4 v8, 0x0

    array-length v9, v2

    iget-object v10, v6, Lcom/loc/de;->h:[B

    array-length v10, v10

    invoke-static {v9, v10}, Lcom/loc/cw;->bGQ(II)I

    move-result v9

    invoke-static {v2, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->e()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v7, v6, Lcom/loc/de;->b:[B

    const/4 v8, 0x0

    array-length v9, v2

    iget-object v10, v6, Lcom/loc/de;->b:[B

    array-length v10, v10

    invoke-static {v9, v10}, Lcom/loc/cw;->bGQ(II)I

    move-result v9

    invoke-static {v2, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->f()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v7, v6, Lcom/loc/de;->c:[B

    const/4 v8, 0x0

    array-length v9, v2

    iget-object v10, v6, Lcom/loc/de;->c:[B

    array-length v10, v10

    invoke-static {v9, v10}, Lcom/loc/cw;->bGQ(II)I

    move-result v9

    invoke-static {v2, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->n()I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, v6, Lcom/loc/de;->e:S

    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->byq()I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, v6, Lcom/loc/de;->f:S

    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->byr()I

    move-result v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    iput-byte v2, v6, Lcom/loc/de;->g:B

    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->bys()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v7, v6, Lcom/loc/de;->i:[B

    const/4 v8, 0x0

    array-length v9, v2

    iget-object v10, v6, Lcom/loc/de;->i:[B

    array-length v10, v10

    invoke-static {v9, v10}, Lcom/loc/cw;->bGQ(II)I

    move-result v9

    invoke-static {v2, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 v8, 0x3e8

    div-long v8, p4, v8

    if-nez p0, :cond_da

    :cond_c1
    const/4 v2, 0x0

    :goto_c2
    if-nez v2, :cond_e2

    if-nez p6, :cond_186

    const/4 v2, 0x0

    return-object v2

    :cond_c8
    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_18

    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_1a

    :cond_d1
    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_1f

    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_21

    :cond_da
    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->d()Z

    move-result v2

    if-eqz v2, :cond_c1

    const/4 v2, 0x1

    goto :goto_c2

    :cond_e2
    new-instance v4, Lcom/loc/dc;

    invoke-direct {v4}, Lcom/loc/dc;-><init>()V

    long-to-int v2, v8

    iput v2, v4, Lcom/loc/dc;->b:I

    new-instance v2, Lcom/loc/dd;

    invoke-direct {v2}, Lcom/loc/dd;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    double-to-int v7, v10

    iput v7, v2, Lcom/loc/dd;->a:I

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    double-to-int v7, v10

    iput v7, v2, Lcom/loc/dd;->b:I

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    double-to-int v7, v10

    iput v7, v2, Lcom/loc/dd;->c:I

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    float-to-int v7, v7

    iput v7, v2, Lcom/loc/dd;->d:I

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v7

    float-to-int v7, v7

    iput v7, v2, Lcom/loc/dd;->e:I

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearing()F

    move-result v7

    float-to-int v7, v7

    int-to-short v7, v7

    int-to-short v7, v7

    iput-short v7, v2, Lcom/loc/dd;->f:S

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v10, "sdk"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16f

    :goto_132
    const/4 v7, 0x1

    iput-byte v7, v2, Lcom/loc/dd;->g:B

    :goto_135
    move/from16 v0, p3

    int-to-byte v7, v0

    iput-byte v7, v2, Lcom/loc/dd;->h:B

    iget v7, v2, Lcom/loc/dd;->d:I

    const/16 v10, 0x19

    if-gt v7, v10, :cond_182

    :goto_140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/loc/dd;->i:J

    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->l()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/loc/dd;->j:J

    iput-object v2, v4, Lcom/loc/dc;->c:Lcom/loc/dd;

    const/4 v2, 0x1

    iget-object v7, v6, Lcom/loc/de;->k:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_154
    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->g()Z

    move-result v4

    if-eqz v4, :cond_230

    :cond_15a
    :goto_15a
    move v4, v2

    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->g()Z

    move-result v2

    if-nez v2, :cond_2c8

    :cond_161
    :goto_161
    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->c()Z

    move-result v2

    if-nez v2, :cond_344

    :cond_167
    :goto_167
    int-to-short v2, v4

    int-to-short v2, v2

    iput-short v2, v6, Lcom/loc/de;->j:S

    const/4 v2, 0x2

    if-lt v4, v2, :cond_3eb

    :cond_16e
    return-object v6

    :cond_16f
    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->byN()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/loc/at;->a(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_17d

    :cond_179
    const/4 v7, 0x0

    iput-byte v7, v2, Lcom/loc/dd;->g:B

    goto :goto_135

    :cond_17d
    sget-boolean v7, Lcom/loc/af;->b:Z

    if-eqz v7, :cond_179

    goto :goto_132

    :cond_182
    const/4 v7, 0x5

    iput-byte v7, v2, Lcom/loc/dd;->h:B

    goto :goto_140

    :cond_186
    new-instance v4, Lcom/loc/dc;

    invoke-direct {v4}, Lcom/loc/dc;-><init>()V

    long-to-int v2, v8

    iput v2, v4, Lcom/loc/dc;->b:I

    new-instance v7, Lcom/loc/dg;

    invoke-direct {v7}, Lcom/loc/dg;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->byy()B

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v7, Lcom/loc/dg;->a:B

    const/4 v2, 0x0

    :goto_19b
    iget-byte v10, v7, Lcom/loc/dg;->a:B

    if-lt v2, v10, :cond_1a8

    iput-object v7, v4, Lcom/loc/dc;->g:Lcom/loc/dg;

    const/4 v2, 0x1

    iget-object v7, v6, Lcom/loc/de;->k:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_154

    :cond_1a8
    new-instance v10, Lcom/loc/dh;

    invoke-direct {v10}, Lcom/loc/dh;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/at;->byz(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    int-to-byte v11, v11

    iput-byte v11, v10, Lcom/loc/dh;->a:B

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/at;->byz(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "UTF-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, v10, Lcom/loc/dh;->b:[B

    const/4 v14, 0x0

    iget-byte v15, v10, Lcom/loc/dh;->a:B

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/at;->byA(I)D

    move-result-wide v12

    iput-wide v12, v10, Lcom/loc/dh;->c:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/at;->byB(I)I

    move-result v11

    iput v11, v10, Lcom/loc/dh;->d:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/at;->byC(I)I

    move-result v11

    iput v11, v10, Lcom/loc/dh;->e:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/at;->byD(I)D

    move-result-wide v12

    iput-wide v12, v10, Lcom/loc/dh;->f:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/at;->byE(I)B

    move-result v11

    int-to-byte v11, v11

    iput-byte v11, v10, Lcom/loc/dh;->g:B

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/at;->byF(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    int-to-byte v11, v11

    iput-byte v11, v10, Lcom/loc/dh;->h:B

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/at;->byF(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "UTF-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, v10, Lcom/loc/dh;->i:[B

    const/4 v14, 0x0

    iget-byte v15, v10, Lcom/loc/dh;->h:B

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/at;->byG(I)B

    move-result v11

    int-to-byte v11, v11

    iput-byte v11, v10, Lcom/loc/dh;->j:B

    iget-object v11, v7, Lcom/loc/dg;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_19b

    :cond_230
    if-eqz v5, :cond_15a

    if-nez p6, :cond_15a

    new-instance v7, Lcom/loc/dc;

    invoke-direct {v7}, Lcom/loc/dc;-><init>()V

    long-to-int v2, v8

    iput v2, v7, Lcom/loc/dc;->b:I

    new-instance v10, Lcom/loc/db;

    invoke-direct {v10}, Lcom/loc/db;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/at;->byt(F)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_264

    :cond_24d
    :goto_24d
    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->i()B

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v10, Lcom/loc/db;->c:B

    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->j()Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_288

    :cond_25a
    iput-object v10, v7, Lcom/loc/dc;->d:Lcom/loc/db;

    const/4 v2, 0x2

    iget-object v4, v6, Lcom/loc/de;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15a

    :cond_264
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x3

    if-lt v2, v11, :cond_24d

    const/4 v2, 0x0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, v10, Lcom/loc/db;->a:S

    const/4 v2, 0x1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v10, Lcom/loc/db;->b:I

    goto :goto_24d

    :cond_288
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    iput-byte v2, v10, Lcom/loc/db;->d:B

    const/4 v2, 0x0

    move v4, v2

    :goto_292
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_25a

    new-instance v12, Lcom/loc/cs;

    invoke-direct {v12}, Lcom/loc/cs;-><init>()V

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/am;

    iget v2, v2, Lcom/loc/am;->c:I

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, v12, Lcom/loc/cs;->a:S

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/am;

    iget v2, v2, Lcom/loc/am;->d:I

    iput v2, v12, Lcom/loc/cs;->b:I

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/am;

    iget v2, v2, Lcom/loc/am;->j:I

    int-to-byte v2, v2

    int-to-byte v2, v2

    iput-byte v2, v12, Lcom/loc/cs;->c:B

    iget-object v2, v10, Lcom/loc/db;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_292

    :cond_2c8
    if-eqz v5, :cond_161

    if-nez p6, :cond_161

    new-instance v5, Lcom/loc/dc;

    invoke-direct {v5}, Lcom/loc/dc;-><init>()V

    long-to-int v2, v8

    iput v2, v5, Lcom/loc/dc;->b:I

    new-instance v7, Lcom/loc/cr;

    invoke-direct {v7}, Lcom/loc/cr;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/at;->byu(F)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_2f0

    :cond_2e5
    :goto_2e5
    iput-object v7, v5, Lcom/loc/dc;->e:Lcom/loc/cr;

    add-int/lit8 v4, v4, 0x1

    iget-object v2, v6, Lcom/loc/de;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_161

    :cond_2f0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x6

    if-lt v2, v9, :cond_2e5

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v7, Lcom/loc/cr;->a:I

    const/4 v2, 0x4

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v7, Lcom/loc/cr;->b:I

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, v7, Lcom/loc/cr;->c:S

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, v7, Lcom/loc/cr;->d:S

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v7, Lcom/loc/cr;->e:I

    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->i()B

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v7, Lcom/loc/cr;->f:B

    goto :goto_2e5

    :cond_344
    if-eqz v3, :cond_167

    if-nez p6, :cond_167

    new-instance v7, Lcom/loc/dc;

    invoke-direct {v7}, Lcom/loc/dc;-><init>()V

    new-instance v8, Lcom/loc/di;

    invoke-direct {v8}, Lcom/loc/di;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/loc/at;->byv()Ljava/util/List;

    move-result-object v9

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v2, v10

    long-to-int v2, v2

    iput v2, v7, Lcom/loc/dc;->b:I

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    iput-byte v2, v8, Lcom/loc/di;->a:B

    const/4 v2, 0x1

    move v5, v2

    :goto_373
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lt v5, v2, :cond_384

    iput-object v8, v7, Lcom/loc/dc;->f:Lcom/loc/di;

    add-int/lit8 v4, v4, 0x1

    iget-object v2, v6, Lcom/loc/de;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_167

    :cond_384
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_390

    :cond_38c
    :goto_38c
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_373

    :cond_390
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v10, 0x3

    if-lt v3, v10, :cond_38c

    new-instance v10, Lcom/loc/dj;

    invoke-direct {v10}, Lcom/loc/dj;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v3, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v11, 0x0

    iget-object v12, v10, Lcom/loc/dj;->a:[B

    const/4 v13, 0x0

    array-length v14, v3

    iget-object v15, v10, Lcom/loc/dj;->a:[B

    array-length v15, v15

    invoke-static {v14, v15}, Lcom/loc/cw;->bGQ(II)I

    move-result v14

    invoke-static {v3, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-short v3, v3

    int-to-short v3, v3

    iput-short v3, v10, Lcom/loc/dj;->b:S

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v11, v10, Lcom/loc/dj;->c:[B

    const/4 v12, 0x0

    array-length v13, v2

    iget-object v14, v10, Lcom/loc/dj;->c:[B

    array-length v14, v14

    invoke-static {v13, v14}, Lcom/loc/cw;->bGQ(II)I

    move-result v13

    invoke-static {v2, v3, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v8, Lcom/loc/di;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38c

    :cond_3eb
    if-nez p6, :cond_16e

    const/4 v2, 0x0

    return-object v2
.end method

.method private static bGQ(II)I
    .registers 2

    if-lt p0, p1, :cond_3

    :goto_2
    return p1

    :cond_3
    move p1, p0

    goto :goto_2
.end method

.method protected static bGR(Ljava/util/BitSet;)[B
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/util/BitSet;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    move v3, v2

    :goto_b
    invoke-virtual {p0}, Ljava/util/BitSet;->size()I

    move-result v0

    if-lt v3, v0, :cond_12

    :goto_11
    return-object v1

    :cond_12
    div-int/lit8 v4, v3, 0x8

    rem-int/lit8 v0, v3, 0x8

    rsub-int/lit8 v5, v0, 0x7

    aget-byte v6, v1, v4

    invoke-virtual {p0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v2

    :goto_21
    shl-int/2addr v0, v5

    or-int/2addr v0, v6

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v1, v4
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_27} :catch_2d

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b

    :cond_2b
    const/4 v0, 0x1

    goto :goto_21

    :catch_2d
    move-exception v0

    const-string/jumbo v2, "CollectorTools"

    const-string/jumbo v3, "bitSet2ByteArray"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

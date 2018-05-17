.class public Lcom/loc/bP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bhT:Ljava/io/RandomAccessFile;

.field private bhU:Lcom/loc/N;

.field private bhV:Ljava/io/File;


# direct methods
.method protected constructor <init>(Lcom/loc/N;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    iput-object p1, p0, Lcom/loc/bP;->bhU:Lcom/loc/N;

    return-void
.end method

.method private b()Ljava/util/BitSet;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/loc/bP;->bhU:Lcom/loc/N;

    invoke-virtual {v1}, Lcom/loc/N;->a()I

    move-result v1

    new-array v1, v1, [B
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_13

    :try_start_9
    iget-object v2, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v1}, Lcom/loc/cw;->a([B)Ljava/util/BitSet;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_11} :catch_13

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
    move-exception v1

    const-string/jumbo v2, "DataLoopReader"

    const-string/jumbo v3, "getCurrentBitset"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :catch_1e
    move-exception v1

    goto :goto_12
.end method

.method private bCA(III)I
    .registers 5

    add-int/lit8 v0, p3, -0x1

    mul-int/lit16 v0, v0, 0x5dc

    add-int/2addr v0, p1

    :goto_5
    if-ge v0, p2, :cond_8

    return v0

    :cond_8
    add-int/lit16 v0, v0, -0x5dc

    goto :goto_5
.end method

.method private bCy(II)Ljava/util/ArrayList;
    .registers 8

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    if-le p1, p2, :cond_9

    :goto_8
    return-object v1

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iget-object v2, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLong()J

    if-gtz v0, :cond_1d

    :cond_1c
    return-object v4

    :cond_1d
    const/16 v2, 0x5dc

    if-gt v0, v2, :cond_1c

    new-array v0, v0, [B

    iget-object v2, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p0, v0}, Lcom/loc/bP;->a([B)B

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_35

    :cond_2f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_32} :catch_48
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_32} :catch_3d

    :goto_32
    add-int/lit16 p1, p1, 0x5dc

    goto :goto_6

    :cond_35
    const/4 v3, 0x4

    if-eq v2, v3, :cond_2f

    const/16 v3, 0x29

    if-eq v2, v3, :cond_2f

    return-object v4

    :catch_3d
    move-exception v0

    const-string/jumbo v2, "DataLoopReader"

    const-string/jumbo v3, "getContents"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_48
    move-exception v0

    goto :goto_32
.end method

.method private bCz(Ljava/util/BitSet;)I
    .registers 6

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v2

    if-lt v0, v2, :cond_9

    :goto_8
    return v1

    :cond_9
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_12

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    mul-int/lit16 v0, v0, 0x5dc

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/loc/bP;->bhU:Lcom/loc/N;

    invoke-virtual {v2}, Lcom/loc/N;->a()I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1b} :catch_1e

    move-result v1

    add-int/2addr v1, v0

    goto :goto_8

    :catch_1e
    move-exception v0

    const-string/jumbo v2, "DataLoopReader"

    const-string/jumbo v3, "getStartPointer"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method


# virtual methods
.method protected a([B)B
    .registers 10

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_15
    const/4 v5, 0x0

    array-length v6, v3

    invoke-virtual {v2, v3, v5, v6}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_31

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2e} :catch_36

    :goto_2e
    aget-byte v0, v1, v7

    return v0

    :cond_31
    const/4 v6, 0x0

    :try_start_32
    invoke-virtual {v4, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_15

    :catch_36
    move-exception v0

    const-string/jumbo v2, "DataLoopReader"

    const-string/jumbo v3, "getVersion"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method protected a()I
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/loc/bP;->bhU:Lcom/loc/N;

    invoke-virtual {v1}, Lcom/loc/N;->b()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    iget-object v1, p0, Lcom/loc/bP;->bhV:Ljava/io/File;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c} :catch_5e
    .catchall {:try_start_2 .. :try_end_c} :catchall_71

    if-nez v1, :cond_17

    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_82

    :goto_12
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_77

    return v0

    :cond_17
    :try_start_17
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/loc/bP;->bhU:Lcom/loc/N;

    invoke-virtual {v2}, Lcom/loc/N;->b()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/loc/bP;->bhU:Lcom/loc/N;

    invoke-virtual {v1}, Lcom/loc/N;->a()I

    move-result v1

    new-array v1, v1, [B

    sget-boolean v2, Lcom/loc/at;->bfK:Z

    if-nez v2, :cond_4c

    :cond_33
    :goto_33
    iget-object v2, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v1}, Lcom/loc/cw;->a([B)Ljava/util/BitSet;

    move-result-object v2

    move v1, v0

    :goto_3d
    invoke-virtual {v2}, Ljava/util/BitSet;->size()I

    move-result v3

    if-ge v1, v3, :cond_e

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_5b

    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_4c
    iget-object v2, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_4e} :catch_5e
    .catchall {:try_start_17 .. :try_end_4e} :catchall_71

    if-eqz v2, :cond_33

    :try_start_50
    iget-object v2, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_55} :catch_9a
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_55} :catch_5e
    .catchall {:try_start_50 .. :try_end_55} :catchall_71

    :try_start_55
    iget-object v1, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_7a

    :goto_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_77

    return v0

    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :catch_5e
    move-exception v1

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    :try_start_62
    const-string/jumbo v2, "DataLoopReader"

    const-string/jumbo v3, "getCount"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_71

    :try_start_6b
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_8a

    :goto_6f
    move v0, v1

    goto :goto_12

    :catchall_71
    move-exception v0

    iget-object v1, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_92

    :goto_76
    throw v0

    :catchall_77
    move-exception v0

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_6b .. :try_end_79} :catchall_77

    throw v0

    :cond_7a
    :try_start_7a
    iget-object v1, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_59

    move-exception v1

    goto :goto_59

    :cond_82
    iget-object v1, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_12

    move-exception v1

    goto :goto_12

    :cond_8a
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_6f

    move-exception v0

    goto :goto_6f

    :cond_92
    iget-object v1, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_97
    .catchall {:try_start_7a .. :try_end_97} :catchall_77

    goto :goto_76

    move-exception v1

    goto :goto_76

    :catch_9a
    move-exception v2

    goto :goto_33
.end method

.method protected declared-synchronized a(I)Lcom/loc/bK;
    .registers 9

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/loc/bP;->bhU:Lcom/loc/N;

    if-eqz v0, :cond_75

    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_b2
    .catchall {:try_start_2 .. :try_end_7} :catchall_110

    :try_start_7
    iget-object v0, p0, Lcom/loc/bP;->bhU:Lcom/loc/N;

    invoke-virtual {v0}, Lcom/loc/N;->b()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    iget-object v0, p0, Lcom/loc/bP;->bhV:Ljava/io/File;
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_af

    if-eqz v0, :cond_77

    :try_start_13
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    const-string/jumbo v3, "rw"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    sget-boolean v0, Lcom/loc/at;->bfK:Z

    if-nez v0, :cond_7a

    :cond_23
    :goto_23
    invoke-direct {p0}, Lcom/loc/bP;->b()Ljava/util/BitSet;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-direct {p0, v0}, Lcom/loc/bP;->bCz(Ljava/util/BitSet;)I

    move-result v0

    iget-object v2, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v0, v2, p1}, Lcom/loc/bP;->bCA(III)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/loc/bP;->bCy(II)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_96

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/loc/bP;->bhU:Lcom/loc/N;

    invoke-virtual {v6}, Lcom/loc/N;->a()I

    move-result v6

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x4

    div-int/lit16 v0, v0, 0x5dc

    aput v0, v4, v5

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/loc/bP;->bhU:Lcom/loc/N;

    invoke-virtual {v5}, Lcom/loc/N;->a()I

    move-result v5

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x4

    div-int/lit16 v2, v2, 0x5dc

    aput v2, v4, v0

    new-instance v0, Lcom/loc/bK;

    iget-object v2, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    invoke-direct {v0, v2, v3, v4}, Lcom/loc/bK;-><init>(Ljava/io/File;Ljava/util/ArrayList;[I)V
    :try_end_64
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_64} :catch_a2
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_64} :catch_fb
    .catchall {:try_start_13 .. :try_end_64} :catchall_a9

    :try_start_64
    iget-object v2, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_66} :catch_b2
    .catchall {:try_start_64 .. :try_end_66} :catchall_af

    if-nez v2, :cond_e9

    :goto_68
    if-nez v0, :cond_be

    :cond_6a
    :try_start_6a
    iget-object v0, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_af

    monitor-exit p0

    return-object v1

    :cond_75
    monitor-exit p0

    return-object v1

    :cond_77
    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_af

    monitor-exit p0

    return-object v1

    :cond_7a
    :try_start_7a
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;
    :try_end_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_7a .. :try_end_7c} :catch_a2
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7c} :catch_fb
    .catchall {:try_start_7a .. :try_end_7c} :catchall_a9

    if-eqz v0, :cond_23

    :try_start_7e
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_83} :catch_113
    .catch Ljava/io/FileNotFoundException; {:try_start_7e .. :try_end_83} :catch_a2
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_83} :catch_fb
    .catchall {:try_start_7e .. :try_end_83} :catchall_a9

    :try_start_83
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_85} :catch_b2
    .catchall {:try_start_83 .. :try_end_85} :catchall_af

    if-nez v0, :cond_d1

    :goto_87
    :try_start_87
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_af

    monitor-exit p0

    return-object v1

    :cond_8a
    :try_start_8a
    iget-object v0, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_8f
    .catch Ljava/io/FileNotFoundException; {:try_start_8a .. :try_end_8f} :catch_a2
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8f} :catch_fb
    .catchall {:try_start_8a .. :try_end_8f} :catchall_a9

    :try_start_8f
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_91} :catch_b2
    .catchall {:try_start_8f .. :try_end_91} :catchall_af

    if-nez v0, :cond_d9

    :goto_93
    :try_start_93
    monitor-exit p0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_af

    monitor-exit p0

    return-object v1

    :cond_96
    :try_start_96
    iget-object v0, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_96 .. :try_end_9b} :catch_a2
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_9b} :catch_fb
    .catchall {:try_start_96 .. :try_end_9b} :catchall_a9

    :try_start_9b
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9d} :catch_b2
    .catchall {:try_start_9b .. :try_end_9d} :catchall_af

    if-nez v0, :cond_e1

    :goto_9f
    :try_start_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_af

    monitor-exit p0

    return-object v1

    :catch_a2
    move-exception v0

    :try_start_a3
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_f3

    :cond_a7
    :goto_a7
    move-object v0, v1

    goto :goto_68

    :catchall_a9
    move-exception v0

    iget-object v2, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_ac} :catch_b2
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_af

    if-nez v2, :cond_108

    :goto_ae
    :try_start_ae
    throw v0

    :catchall_af
    move-exception v0

    monitor-exit p0
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v0
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b2} :catch_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_110

    :catch_b2
    move-exception v0

    :try_start_b3
    const-string/jumbo v2, "DataLoopReader"

    const-string/jumbo v3, "get"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_b3 .. :try_end_bc} :catchall_110

    monitor-exit p0

    return-object v1

    :cond_be
    :try_start_be
    invoke-virtual {v0}, Lcom/loc/bK;->c()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_6a

    invoke-virtual {v0}, Lcom/loc/bK;->c()I

    move-result v2

    const/high16 v3, 0x500000

    if-ge v2, v3, :cond_6a

    monitor-exit p0
    :try_end_cf
    .catchall {:try_start_be .. :try_end_cf} :catchall_af

    monitor-exit p0

    return-object v0

    :cond_d1
    :try_start_d1
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_87

    move-exception v0

    goto :goto_87

    :cond_d9
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_93

    move-exception v0

    goto :goto_93

    :cond_e1
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_9f

    move-exception v0

    goto :goto_9f

    :cond_e9
    iget-object v2, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_68

    move-exception v2

    goto/16 :goto_68

    :cond_f3
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_a7

    move-exception v0

    goto :goto_a7

    :catch_fb
    move-exception v0

    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_a7

    move-exception v0

    goto :goto_a7

    :cond_108
    iget-object v2, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10d
    .catch Ljava/lang/Throwable; {:try_start_d1 .. :try_end_10d} :catch_b2
    .catchall {:try_start_d1 .. :try_end_10d} :catchall_af

    goto :goto_ae

    move-exception v2

    goto :goto_ae

    :catchall_110
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_113
    move-exception v0

    goto/16 :goto_23
.end method

.method protected declared-synchronized bCB(Lcom/loc/bK;)V
    .registers 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_2 .. :try_end_3} :catchall_92

    :try_start_3
    iget-object v0, p1, Lcom/loc/bK;->bhP:Ljava/io/File;

    iput-object v0, p0, Lcom/loc/bP;->bhV:Ljava/io/File;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_8f

    :try_start_7
    iget-object v0, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    const-string/jumbo v3, "rw"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/loc/bP;->bhU:Lcom/loc/N;

    invoke-virtual {v0}, Lcom/loc/N;->a()I

    move-result v0

    new-array v0, v0, [B

    sget-boolean v2, Lcom/loc/at;->bfK:Z

    if-nez v2, :cond_43

    :cond_23
    :goto_23
    iget-object v2, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v0}, Lcom/loc/cw;->a([B)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {p1}, Lcom/loc/bK;->b()Z
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2f} :catch_70
    .catchall {:try_start_7 .. :try_end_2f} :catchall_9c

    move-result v0

    if-nez v0, :cond_53

    :goto_32
    :try_start_32
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_ca

    :cond_36
    :goto_36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_8f

    monitor-exit p0

    return-void

    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_a2

    :cond_40
    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_8f

    monitor-exit p0

    return-void

    :cond_43
    :try_start_43
    iget-object v2, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_45} :catch_70
    .catchall {:try_start_43 .. :try_end_45} :catchall_9c

    if-eqz v2, :cond_23

    :try_start_47
    iget-object v2, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_f5
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4c} :catch_70
    .catchall {:try_start_47 .. :try_end_4c} :catchall_9c

    :try_start_4c
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_b6

    :cond_50
    :goto_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_8f

    monitor-exit p0

    return-void

    :cond_53
    :try_start_53
    iget-object v0, p1, Lcom/loc/bK;->bhQ:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    :goto_58
    iget-object v2, p1, Lcom/loc/bK;->bhQ:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-le v0, v2, :cond_95

    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-static {v1}, Lcom/loc/cw;->bGR(Ljava/util/BitSet;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_6f} :catch_70
    .catchall {:try_start_53 .. :try_end_6f} :catchall_9c

    goto :goto_32

    :catch_70
    move-exception v0

    :try_start_71
    const-string/jumbo v2, "DataLoopReader"

    const-string/jumbo v3, "changeData"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_9c

    :try_start_7a
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_36

    :catchall_8f
    move-exception v0

    monitor-exit p0
    :try_end_91
    .catchall {:try_start_7a .. :try_end_91} :catchall_8f

    :try_start_91
    throw v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_92

    :catchall_92
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_95
    const/4 v2, 0x0

    :try_start_96
    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->set(IZ)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_99} :catch_70
    .catchall {:try_start_96 .. :try_end_99} :catchall_9c

    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :catchall_9c
    move-exception v0

    :try_start_9d
    iget-object v2, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_df

    :cond_a1
    :goto_a1
    throw v0

    :cond_a2
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_40

    move-exception v0

    goto :goto_40

    :cond_b6
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_50

    move-exception v0

    goto :goto_50

    :cond_ca
    iget-object v0, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_36

    move-exception v0

    goto/16 :goto_36

    :cond_df
    iget-object v2, p0, Lcom/loc/bP;->bhT:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/loc/bP;->bhV:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_ef
    .catchall {:try_start_9d .. :try_end_ef} :catchall_8f

    goto :goto_a1

    move-exception v1

    goto :goto_a1

    move-exception v0

    goto/16 :goto_36

    :catch_f5
    move-exception v2

    goto/16 :goto_23
.end method

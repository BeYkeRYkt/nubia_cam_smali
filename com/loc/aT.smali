.class public Lcom/loc/aT;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:J

.field private bgr:Ljava/io/RandomAccessFile;

.field private bgs:Lcom/loc/N;

.field private bgt:Ljava/io/File;

.field private d:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/loc/N;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/aT;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aT;->bgt:Ljava/io/File;

    iput-object p1, p0, Lcom/loc/aT;->bgs:Lcom/loc/N;

    return-void
.end method


# virtual methods
.method protected declared-synchronized bAq(J[B)V
    .registers 13

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/loc/aT;->bgs:Lcom/loc/N;

    invoke-virtual {v0, p1, p2}, Lcom/loc/N;->a(J)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aT;->bgt:Ljava/io/File;

    iget-object v0, p0, Lcom/loc/aT;->bgt:Ljava/io/File;
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e5

    if-eqz v0, :cond_52

    :try_start_e
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/loc/aT;->bgt:Ljava/io/File;

    const-string/jumbo v3, "rw"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/loc/aT;->bgs:Lcom/loc/N;

    invoke-virtual {v0}, Lcom/loc/N;->a()I

    move-result v0

    new-array v2, v0, [B

    iget-object v0, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_54

    iget-object v0, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    :goto_31
    invoke-static {v2}, Lcom/loc/cw;->a([B)Ljava/util/BitSet;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/aT;->bgs:Lcom/loc/N;

    invoke-virtual {v3}, Lcom/loc/N;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    mul-int/lit16 v4, v0, 0x5dc

    add-int/2addr v3, v4

    if-gez v0, :cond_56

    :cond_42
    iget-object v0, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    iget-object v0, p0, Lcom/loc/aT;->bgt:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_4c} :catch_c9
    .catchall {:try_start_e .. :try_end_4c} :catchall_df

    :try_start_4c
    iget-object v0, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_e5

    if-nez v0, :cond_e8

    :goto_50
    monitor-exit p0

    return-void

    :cond_52
    monitor-exit p0

    return-void

    :cond_54
    move v0, v1

    goto :goto_31

    :cond_56
    :try_start_56
    iget-object v4, p0, Lcom/loc/aT;->bgs:Lcom/loc/N;

    invoke-virtual {v4}, Lcom/loc/N;->a()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    if-gt v0, v4, :cond_42

    iget-object v4, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    int-to-long v6, v3

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {p3}, Lcom/loc/X;->a([B)[B

    move-result-object v3

    iget-object v4, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v4, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-object v4, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->write([B)V

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/util/BitSet;->set(IZ)V

    iget-object v3, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v3, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    invoke-static {v2}, Lcom/loc/cw;->bGR(Ljava/util/BitSet;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->write([B)V

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/loc/aT;->bgs:Lcom/loc/N;

    invoke-virtual {v2}, Lcom/loc/N;->a()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    if-eq v0, v2, :cond_be

    :goto_9a
    iget-object v1, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/loc/aT;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/aT;->bgt:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c0

    :goto_ad
    iget-object v0, p0, Lcom/loc/aT;->bgt:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/aT;->a:J
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_b5} :catch_c9
    .catchall {:try_start_56 .. :try_end_b5} :catchall_df

    :try_start_b5
    iget-object v0, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_f2

    :cond_b9
    :goto_b9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aT;->bgt:Ljava/io/File;
    :try_end_bc
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_e5

    monitor-exit p0

    return-void

    :cond_be
    move v0, v1

    goto :goto_9a

    :cond_c0
    :try_start_c0
    iget-object v0, p0, Lcom/loc/aT;->bgt:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aT;->d:Ljava/lang/String;
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_c8} :catch_c9
    .catchall {:try_start_c0 .. :try_end_c8} :catchall_df

    goto :goto_ad

    :catch_c9
    move-exception v0

    :try_start_ca
    const-string/jumbo v1, "DataLoopWriter"

    const-string/jumbo v2, "write"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d3
    .catchall {:try_start_ca .. :try_end_d3} :catchall_df

    :try_start_d3
    iget-object v0, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;
    :try_end_d5
    .catchall {:try_start_d3 .. :try_end_d5} :catchall_e5

    if-eqz v0, :cond_b9

    :try_start_d7
    iget-object v0, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_d7 .. :try_end_dc} :catch_dd
    .catchall {:try_start_d7 .. :try_end_dc} :catchall_e5

    goto :goto_b9

    :catch_dd
    move-exception v0

    goto :goto_b9

    :catchall_df
    move-exception v0

    :try_start_e0
    iget-object v1, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_fa

    :goto_e4
    throw v0
    :try_end_e5
    .catchall {:try_start_e0 .. :try_end_e5} :catchall_e5

    :catchall_e5
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e8
    :try_start_e8
    iget-object v0, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ed
    .catch Ljava/lang/Throwable; {:try_start_e8 .. :try_end_ed} :catch_ef
    .catchall {:try_start_e8 .. :try_end_ed} :catchall_e5

    goto/16 :goto_50

    :catch_ef
    move-exception v0

    goto/16 :goto_50

    :cond_f2
    :try_start_f2
    iget-object v0, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f7
    .catch Ljava/lang/Throwable; {:try_start_f2 .. :try_end_f7} :catch_f8
    .catchall {:try_start_f2 .. :try_end_f7} :catchall_e5

    goto :goto_b9

    :catch_f8
    move-exception v0

    goto :goto_b9

    :cond_fa
    :try_start_fa
    iget-object v1, p0, Lcom/loc/aT;->bgr:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ff
    .catch Ljava/lang/Throwable; {:try_start_fa .. :try_end_ff} :catch_100
    .catchall {:try_start_fa .. :try_end_ff} :catchall_e5

    goto :goto_e4

    :catch_100
    move-exception v1

    goto :goto_e4
.end method

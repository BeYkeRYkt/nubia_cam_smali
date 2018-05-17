.class public Lcom/loc/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b:J

.field private bjq:Ljava/io/ByteArrayInputStream;

.field private bjr:Z

.field private bjs:Ljava/io/RandomAccessFile;

.field private bjt:Z

.field private final bju:[B

.field private bjv:Lcom/loc/I;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/loc/I;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/loc/cb;->bjr:Z

    iput-object v1, p0, Lcom/loc/cb;->bjs:Ljava/io/RandomAccessFile;

    iput-boolean v2, p0, Lcom/loc/cb;->bjt:Z

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loc/cb;->bju:[B

    iput-object v1, p0, Lcom/loc/cb;->h:Ljava/lang/String;

    if-nez p2, :cond_17

    :goto_16
    return-void

    :cond_17
    iget-boolean v0, p2, Lcom/loc/I;->a:Z

    if-eq v0, v3, :cond_2a

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/cb;->bjs:Ljava/io/RandomAccessFile;

    iput-boolean v3, p0, Lcom/loc/cb;->bjr:Z

    :goto_27
    iput-object p2, p0, Lcom/loc/cb;->bjv:Lcom/loc/I;

    goto :goto_16

    :cond_2a
    invoke-static {p1}, Lcom/loc/X;->a(Ljava/io/File;)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lcom/loc/cb;->bjq:Ljava/io/ByteArrayInputStream;

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/loc/cb;->b:J

    iput-boolean v2, p0, Lcom/loc/cb;->bjr:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cb;->h:Ljava/lang/String;

    goto :goto_27
.end method

.method private h()V
    .registers 3

    iget-boolean v0, p0, Lcom/loc/cb;->bjt:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "file closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(J)V
    .registers 8

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    if-nez v0, :cond_24

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "offset < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    invoke-direct {p0}, Lcom/loc/cb;->h()V

    iget-boolean v0, p0, Lcom/loc/cb;->bjr:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/loc/cb;->bjq:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    iget-object v0, p0, Lcom/loc/cb;->bjq:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/loc/cb;->bjs:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_35
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/loc/cb;->bjv:Lcom/loc/I;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/loc/cb;->bjv:Lcom/loc/I;

    iget-boolean v0, v0, Lcom/loc/I;->a:Z

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/loc/cb;->bjr:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/loc/cb;->bjs:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1e

    :cond_9
    :goto_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cb;->bjt:Z

    monitor-exit p0

    return-void

    :cond_e
    iget-object v0, p0, Lcom/loc/cb;->bjq:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/loc/cb;->bjq:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cb;->bjq:Ljava/io/ByteArrayInputStream;

    goto :goto_9

    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/loc/cb;->bjs:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cb;->bjs:Ljava/io/RandomAccessFile;
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_1b

    goto :goto_9
.end method

.method public final c()J
    .registers 3

    invoke-direct {p0}, Lcom/loc/cb;->h()V

    iget-boolean v0, p0, Lcom/loc/cb;->bjr:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/loc/cb;->bjq:Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/loc/cb;->bju:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    iget-object v0, p0, Lcom/loc/cb;->bju:[B

    invoke-static {v0}, Lcom/loc/X;->b([B)J

    move-result-wide v0

    return-wide v0

    :cond_15
    iget-object v0, p0, Lcom/loc/cb;->bjs:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()I
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/loc/cb;->h()V

    iget-boolean v0, p0, Lcom/loc/cb;->bjr:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/loc/cb;->bjq:Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/loc/cb;->bju:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    iget-object v0, p0, Lcom/loc/cb;->bju:[B

    invoke-static {v0}, Lcom/loc/X;->bxn([B)I

    move-result v0

    return v0

    :cond_17
    iget-object v0, p0, Lcom/loc/cb;->bjs:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public final e()I
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/loc/cb;->h()V

    iget-boolean v0, p0, Lcom/loc/cb;->bjr:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/loc/cb;->bjq:Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/loc/cb;->bju:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    iget-object v0, p0, Lcom/loc/cb;->bju:[B

    invoke-static {v0}, Lcom/loc/X;->bxo([B)I

    move-result v0

    return v0

    :cond_17
    iget-object v0, p0, Lcom/loc/cb;->bjs:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    return v0
.end method

.method public final f()I
    .registers 2

    invoke-direct {p0}, Lcom/loc/cb;->h()V

    iget-boolean v0, p0, Lcom/loc/cb;->bjr:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/loc/cb;->bjq:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    return v0

    :cond_e
    iget-object v0, p0, Lcom/loc/cb;->bjs:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .registers 1

    invoke-virtual {p0}, Lcom/loc/cb;->b()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g()J
    .registers 3

    iget-boolean v0, p0, Lcom/loc/cb;->bjt:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/loc/cb;->bjr:Z

    if-nez v0, :cond_14

    iget-wide v0, p0, Lcom/loc/cb;->b:J

    return-wide v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "file closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, p0, Lcom/loc/cb;->bjs:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

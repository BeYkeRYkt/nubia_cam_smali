.class public Lcom/loc/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final bkD:Ljava/io/InputStream;

.field private final bkE:Ljava/nio/charset/Charset;

.field private c:[B

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_b

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_b
    if-eqz p3, :cond_5

    if-ltz p2, :cond_20

    sget-object v0, Lcom/loc/G;->beb:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iput-object p1, p0, Lcom/loc/cf;->bkD:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/loc/cf;->bkE:Ljava/nio/charset/Charset;

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/loc/cf;->c:[B

    return-void

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/loc/cf;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method private b()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/loc/cf;->bkD:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/loc/cf;->c:[B

    iget-object v2, p0, Lcom/loc/cf;->c:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    iput v3, p0, Lcom/loc/cf;->d:I

    iput v0, p0, Lcom/loc/cf;->e:I

    return-void

    :cond_14
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method static synthetic bFB(Lcom/loc/cf;)Ljava/nio/charset/Charset;
    .registers 2

    iget-object v0, p0, Lcom/loc/cf;->bkE:Ljava/nio/charset/Charset;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 8

    const/16 v6, 0xa

    iget-object v2, p0, Lcom/loc/cf;->bkD:Ljava/io/InputStream;

    monitor-enter v2

    :try_start_5
    iget-object v0, p0, Lcom/loc/cf;->c:[B

    if-eqz v0, :cond_42

    iget v0, p0, Lcom/loc/cf;->d:I

    iget v1, p0, Lcom/loc/cf;->e:I

    if-ge v0, v1, :cond_4e

    :goto_f
    iget v1, p0, Lcom/loc/cf;->d:I

    :goto_11
    iget v0, p0, Lcom/loc/cf;->e:I

    if-ne v1, v0, :cond_52

    new-instance v1, Lcom/loc/w;

    iget v0, p0, Lcom/loc/cf;->e:I

    iget v3, p0, Lcom/loc/cf;->d:I

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v1, p0, v0}, Lcom/loc/w;-><init>(Lcom/loc/cf;I)V

    :cond_21
    iget-object v0, p0, Lcom/loc/cf;->c:[B

    iget v3, p0, Lcom/loc/cf;->d:I

    iget v4, p0, Lcom/loc/cf;->e:I

    iget v5, p0, Lcom/loc/cf;->d:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/cf;->e:I

    invoke-direct {p0}, Lcom/loc/cf;->b()V

    iget v0, p0, Lcom/loc/cf;->d:I

    :goto_35
    iget v3, p0, Lcom/loc/cf;->e:I

    if-eq v0, v3, :cond_21

    iget-object v3, p0, Lcom/loc/cf;->c:[B

    aget-byte v3, v3, v0

    if-eq v3, v6, :cond_85

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_42
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "LineReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4b
    move-exception v0

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_5 .. :try_end_4d} :catchall_4b

    throw v0

    :cond_4e
    :try_start_4e
    invoke-direct {p0}, Lcom/loc/cf;->b()V

    goto :goto_f

    :cond_52
    iget-object v0, p0, Lcom/loc/cf;->c:[B

    aget-byte v0, v0, v1

    if-eq v0, v6, :cond_5b

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_5b
    iget v0, p0, Lcom/loc/cf;->d:I

    if-ne v1, v0, :cond_78

    :cond_5f
    move v0, v1

    :goto_60
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/cf;->c:[B

    iget v5, p0, Lcom/loc/cf;->d:I

    iget v6, p0, Lcom/loc/cf;->d:I

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/loc/cf;->bkE:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v0, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/loc/cf;->d:I

    monitor-exit v2

    return-object v3

    :cond_78
    iget-object v0, p0, Lcom/loc/cf;->c:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v0, v0, v3

    const/16 v3, 0xd

    if-ne v0, v3, :cond_5f

    add-int/lit8 v0, v1, -0x1

    goto :goto_60

    :cond_85
    iget v3, p0, Lcom/loc/cf;->d:I

    if-ne v0, v3, :cond_93

    :goto_89
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/cf;->d:I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    return-object v0

    :cond_93
    iget-object v3, p0, Lcom/loc/cf;->c:[B

    iget v4, p0, Lcom/loc/cf;->d:I

    iget v5, p0, Lcom/loc/cf;->d:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_9e
    .catchall {:try_start_4e .. :try_end_9e} :catchall_4b

    goto :goto_89
.end method

.method public close()V
    .registers 3

    iget-object v1, p0, Lcom/loc/cf;->bkD:Ljava/io/InputStream;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/loc/cf;->c:[B

    if-nez v0, :cond_9

    :goto_7
    monitor-exit v1

    return-void

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cf;->c:[B

    iget-object v0, p0, Lcom/loc/cf;->bkD:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

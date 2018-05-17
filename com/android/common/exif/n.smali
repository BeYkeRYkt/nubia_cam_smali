.class Lcom/android/common/exif/n;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private PA:I

.field private final Py:[B

.field private final Pz:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lcom/android/common/exif/n;

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@13
    nop

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_9
    sput-boolean v0, Lcom/android/common/exif/n;->-assertionsDisabled:Z

    .line 27
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_c
    const/4 v0, 0x1

    goto :goto_9
.end method

.method protected constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/exif/n;->PA:I

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/common/exif/n;->Py:[B

    .line 33
    iget-object v0, p0, Lcom/android/common/exif/n;->Py:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/exif/n;->Pz:Ljava/nio/ByteBuffer;

    .line 35
    return-void
.end method


# virtual methods
.method public QA(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 132
    new-array v0, p1, [B

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/common/exif/n;->QC([B)V

    .line 134
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public QB()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/common/exif/n;->Pz:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public QC([B)V
    .registers 4

    .prologue
    .line 88
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/common/exif/n;->QD([BII)V

    .line 87
    return-void
.end method

.method public QD([BII)V
    .registers 5

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/common/exif/n;->read([BII)I

    move-result v0

    .line 84
    if-eq v0, p3, :cond_c

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 82
    :cond_c
    return-void
.end method

.method public QE(J)V
    .registers 6

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/android/common/exif/n;->skip(J)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 71
    :cond_e
    return-void
.end method

.method public Qt()J
    .registers 5

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/common/exif/n;->Qz()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public Qu()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/android/common/exif/n;->PA:I

    return v0
.end method

.method public Qv()I
    .registers 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/common/exif/n;->Qx()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public Qw(J)V
    .registers 8

    .prologue
    .line 76
    iget v0, p0, Lcom/android/common/exif/n;->PA:I

    int-to-long v0, v0

    .line 77
    sub-long v2, p1, v0

    .line 78
    sget-boolean v0, Lcom/android/common/exif/n;->-assertionsDisabled:Z

    if-nez v0, :cond_1a

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_18

    const/4 v0, 0x1

    :goto_10
    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_10

    .line 79
    :cond_1a
    invoke-virtual {p0, v2, v3}, Lcom/android/common/exif/n;->QE(J)V

    .line 75
    return-void
.end method

.method public Qx()S
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/common/exif/n;->Py:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/common/exif/n;->QD([BII)V

    .line 101
    iget-object v0, p0, Lcom/android/common/exif/n;->Pz:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 102
    iget-object v0, p0, Lcom/android/common/exif/n;->Pz:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public Qy(Ljava/nio/ByteOrder;)V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/common/exif/n;->Pz:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 91
    return-void
.end method

.method public Qz()I
    .registers 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/common/exif/n;->Py:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/common/exif/n;->QD([BII)V

    .line 111
    iget-object v0, p0, Lcom/android/common/exif/n;->Pz:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 112
    iget-object v0, p0, Lcom/android/common/exif/n;->Pz:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public read()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/android/common/exif/n;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 60
    iget v2, p0, Lcom/android/common/exif/n;->PA:I

    if-ltz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/common/exif/n;->PA:I

    .line 61
    return v1
.end method

.method public read([B)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/android/common/exif/n;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 46
    iget v2, p0, Lcom/android/common/exif/n;->PA:I

    if-ltz v1, :cond_c

    move v0, v1

    :cond_c
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/common/exif/n;->PA:I

    .line 47
    return v1
.end method

.method public read([BII)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lcom/android/common/exif/n;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 53
    iget v2, p0, Lcom/android/common/exif/n;->PA:I

    if-ltz v1, :cond_c

    move v0, v1

    :cond_c
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/common/exif/n;->PA:I

    .line 54
    return v1
.end method

.method public skip(J)J
    .registers 8

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/common/exif/n;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 67
    iget v2, p0, Lcom/android/common/exif/n;->PA:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/android/common/exif/n;->PA:I

    .line 68
    return-wide v0
.end method

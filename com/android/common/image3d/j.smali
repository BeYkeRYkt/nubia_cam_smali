.class public Lcom/android/common/image3d/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cl:Ljava/util/ArrayList;

.field private cm:I

.field private cn:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/image3d/j;->cm:I

    .line 16
    iput-object v1, p0, Lcom/android/common/image3d/j;->cn:Ljava/io/RandomAccessFile;

    .line 17
    iput-object v1, p0, Lcom/android/common/image3d/j;->cl:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/common/image3d/j;->cn:Ljava/io/RandomAccessFile;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/image3d/j;->cl:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method private bR()V
    .registers 7

    .prologue
    .line 45
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v0, p0, Lcom/android/common/image3d/j;->cm:I

    if-ge v1, v0, :cond_27

    .line 46
    iget-object v0, p0, Lcom/android/common/image3d/j;->cl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/image3d/g;

    .line 47
    iget-object v2, p0, Lcom/android/common/image3d/j;->cn:Ljava/io/RandomAccessFile;

    iget v3, v0, Lcom/android/common/image3d/g;->bU:I

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 48
    iget-object v2, p0, Lcom/android/common/image3d/j;->cn:Ljava/io/RandomAccessFile;

    iget-wide v4, v0, Lcom/android/common/image3d/g;->bW:J

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 49
    iget-object v2, p0, Lcom/android/common/image3d/j;->cn:Ljava/io/RandomAccessFile;

    iget v0, v0, Lcom/android/common/image3d/g;->bV:I

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 45
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 43
    :cond_27
    return-void
.end method


# virtual methods
.method public bQ(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 9

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/common/image3d/j;->cn:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 26
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v2, v2, [B

    .line 27
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 28
    iget-object v3, p0, Lcom/android/common/image3d/j;->cn:Ljava/io/RandomAccessFile;

    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 29
    iget-object v2, p0, Lcom/android/common/image3d/j;->cl:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/common/image3d/g;

    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-int v4, v4

    const v5, 0x80e8

    div-int/2addr v4, v5

    iget v5, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-direct {v3, v4, v0, v1, v5}, Lcom/android/common/image3d/g;-><init>(IJI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget v2, p0, Lcom/android/common/image3d/j;->cm:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/common/image3d/j;->cm:I

    .line 31
    const-string/jumbo v2, "Image3DFileMuxer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    const-string/jumbo v1, ",size:"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    const-string/jumbo v1, ",mDataList.size:"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/common/image3d/j;->cl:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method public close()I
    .registers 5

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/common/image3d/j;->bR()V

    .line 38
    const-string/jumbo v0, "aizhao"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file.length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/image3d/j;->cn:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mDataNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/image3d/j;->cm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/android/common/image3d/j;->cn:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 40
    iget v0, p0, Lcom/android/common/image3d/j;->cm:I

    return v0
.end method

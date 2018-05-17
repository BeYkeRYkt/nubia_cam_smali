.class public Lcom/android/common/image3d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bA:Ljava/util/concurrent/ExecutorService;

.field private bB:Lcom/android/common/image3d/c;

.field private bC:I

.field private bD:Lcom/android/common/image3d/d;

.field private bE:I

.field private by:Landroid/media/MediaCodec;

.field private bz:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/image3d/b;->bE:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/image3d/b;->bC:I

    .line 43
    new-instance v0, Lcom/android/common/image3d/d;

    invoke-direct {v0, p0, v1}, Lcom/android/common/image3d/d;-><init>(Lcom/android/common/image3d/b;Lcom/android/common/image3d/d;)V

    iput-object v0, p0, Lcom/android/common/image3d/b;->bD:Lcom/android/common/image3d/d;

    .line 44
    iput-object v1, p0, Lcom/android/common/image3d/b;->bB:Lcom/android/common/image3d/c;

    .line 45
    iput-object v1, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/image3d/b;->bA:Ljava/util/concurrent/ExecutorService;

    .line 150
    new-instance v0, Lcom/android/common/image3d/n;

    invoke-direct {v0, p0}, Lcom/android/common/image3d/n;-><init>(Lcom/android/common/image3d/b;)V

    iput-object v0, p0, Lcom/android/common/image3d/b;->bz:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method private static bo([BII)V
    .registers 8

    .prologue
    .line 135
    mul-int v1, p1, p2

    .line 137
    const/4 v0, 0x0

    :goto_3
    div-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_1e

    .line 138
    add-int v2, v1, v0

    aget-byte v2, p0, v2

    .line 139
    add-int v3, v1, v0

    add-int v4, v1, v0

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    aput-byte v4, p0, v3

    .line 140
    add-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    aput-byte v2, p0, v3

    .line 137
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 134
    :cond_1e
    return-void
.end method

.method private bq()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 160
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move v0, v1

    .line 161
    :goto_7
    if-nez v0, :cond_140

    .line 162
    iget-object v3, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 163
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1e

    .line 164
    const-string/jumbo v3, "H264Encoder"

    const-string/jumbo v4, "Encoder INFO_TRY_AGAIN_LATER."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 165
    :cond_1e
    const/4 v4, -0x2

    if-ne v3, v4, :cond_42

    .line 166
    iget-object v3, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 167
    const-string/jumbo v4, "H264Encoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Encoder output format changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 168
    :cond_42
    if-gez v3, :cond_5f

    .line 169
    const-string/jumbo v4, "H264Encoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Encoder unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 171
    :cond_5f
    const-string/jumbo v4, "H264Encoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "info.flags"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_91

    .line 173
    const-string/jumbo v0, "H264Encoder"

    const-string/jumbo v4, "BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x1

    .line 195
    :cond_8a
    :goto_8a
    iget-object v4, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_7

    .line 175
    :cond_91
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_ef

    .line 176
    const-string/jumbo v4, "H264Encoder"

    const-string/jumbo v5, "BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v4, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 178
    const-string/jumbo v5, "H264Encoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "offset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "frameNum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/common/image3d/b;->bC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget v5, p0, Lcom/android/common/image3d/b;->bC:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/common/image3d/b;->bC:I

    .line 180
    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v5, :cond_8a

    .line 181
    iget-object v5, p0, Lcom/android/common/image3d/b;->bB:Lcom/android/common/image3d/c;

    if-eqz v5, :cond_8a

    .line 182
    iget-object v5, p0, Lcom/android/common/image3d/b;->bB:Lcom/android/common/image3d/c;

    invoke-interface {v5, v4, v2}, Lcom/android/common/image3d/c;->bv(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_8a

    .line 186
    :cond_ef
    iget-object v4, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 187
    const-string/jumbo v5, "H264Encoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "offset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "frameNum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/common/image3d/b;->bC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget v5, p0, Lcom/android/common/image3d/b;->bC:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/common/image3d/b;->bC:I

    .line 189
    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v5, :cond_8a

    .line 190
    iget-object v5, p0, Lcom/android/common/image3d/b;->bB:Lcom/android/common/image3d/c;

    if-eqz v5, :cond_8a

    .line 191
    iget-object v5, p0, Lcom/android/common/image3d/b;->bB:Lcom/android/common/image3d/c;

    invoke-interface {v5, v4, v2}, Lcom/android/common/image3d/c;->bv(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_8a

    .line 158
    :cond_140
    return-void
.end method

.method private bt()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 146
    iget-object v0, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 144
    return-void
.end method

.method static synthetic bu(Lcom/android/common/image3d/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/image3d/b;->bq()V

    return-void
.end method


# virtual methods
.method public declared-synchronized bp(II)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    monitor-enter p0

    .line 53
    :try_start_2
    iget-object v0, p0, Lcom/android/common/image3d/b;->bD:Lcom/android/common/image3d/d;

    iput p1, v0, Lcom/android/common/image3d/d;->width:I

    .line 54
    iget-object v0, p0, Lcom/android/common/image3d/b;->bD:Lcom/android/common/image3d/d;

    iput p2, v0, Lcom/android/common/image3d/d;->height:I

    .line 55
    iget v0, p0, Lcom/android/common/image3d/b;->bE:I

    if-ne v0, v1, :cond_72

    .line 56
    const-string/jumbo v0, "H264Encoder"

    const-string/jumbo v1, "create"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_6f

    .line 58
    :try_start_17
    const-string/jumbo v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_20} :catch_64
    .catchall {:try_start_17 .. :try_end_20} :catchall_6f

    .line 63
    :goto_20
    :try_start_20
    const-string/jumbo v0, "video/avc"

    iget-object v1, p0, Lcom/android/common/image3d/b;->bD:Lcom/android/common/image3d/d;

    iget v1, v1, Lcom/android/common/image3d/d;->width:I

    iget-object v2, p0, Lcom/android/common/image3d/b;->bD:Lcom/android/common/image3d/d;

    iget v2, v2, Lcom/android/common/image3d/d;->height:I

    .line 62
    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 64
    const-string/jumbo v1, "bitrate"

    iget-object v2, p0, Lcom/android/common/image3d/b;->bD:Lcom/android/common/image3d/d;

    iget v2, v2, Lcom/android/common/image3d/d;->bF:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 65
    const-string/jumbo v1, "frame-rate"

    iget-object v2, p0, Lcom/android/common/image3d/b;->bD:Lcom/android/common/image3d/d;

    iget v2, v2, Lcom/android/common/image3d/d;->bH:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 66
    const-string/jumbo v1, "color-format"

    iget-object v2, p0, Lcom/android/common/image3d/b;->bD:Lcom/android/common/image3d/d;

    iget v2, v2, Lcom/android/common/image3d/d;->bG:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 67
    const-string/jumbo v1, "i-frame-interval"

    iget-object v2, p0, Lcom/android/common/image3d/b;->bD:Lcom/android/common/image3d/d;

    iget v2, v2, Lcom/android/common/image3d/d;->bI:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 68
    iget-object v1, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/image3d/b;->bE:I
    :try_end_62
    .catchall {:try_start_20 .. :try_end_62} :catchall_6f

    :goto_62
    monitor-exit p0

    .line 52
    return-void

    .line 59
    :catch_64
    move-exception v0

    .line 60
    :try_start_65
    const-string/jumbo v0, "H264Encoder"

    const-string/jumbo v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_6f

    goto :goto_20

    :catchall_6f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 71
    :cond_72
    :try_start_72
    const-string/jumbo v0, "H264Encoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "call create in error status["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/image3d/b;->bE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_72 .. :try_end_95} :catchall_6f

    goto :goto_62
.end method

.method public declared-synchronized br(Landroid/media/MediaCodec$BufferInfo;[BI)V
    .registers 11

    .prologue
    monitor-enter p0

    .line 120
    :try_start_1
    iget v0, p0, Lcom/android/common/image3d/b;->bE:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_23

    .line 121
    iget-object v0, p0, Lcom/android/common/image3d/b;->bD:Lcom/android/common/image3d/d;

    iget v0, v0, Lcom/android/common/image3d/d;->width:I

    iget-object v1, p0, Lcom/android/common/image3d/b;->bD:Lcom/android/common/image3d/d;

    iget v1, v1, Lcom/android/common/image3d/d;->height:I

    invoke-static {p2, v0, v1}, Lcom/android/common/image3d/b;->bo([BII)V

    .line 122
    iget-object v0, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 123
    if-gez v1, :cond_25

    .line 124
    const-string/jumbo v0, "H264Encoder"

    const-string/jumbo v1, "dequeueInputBuffer TimeOut."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_3b

    :cond_23
    :goto_23
    monitor-exit p0

    .line 119
    return-void

    .line 127
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 129
    iget-object v0, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;

    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v4, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v6, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_3b

    goto :goto_23

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bs(Lcom/android/common/image3d/c;)V
    .registers 3

    .prologue
    monitor-enter p0

    .line 76
    :try_start_1
    iput-object p1, p0, Lcom/android/common/image3d/b;->bB:Lcom/android/common/image3d/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    .line 75
    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    monitor-enter p0

    .line 109
    :try_start_2
    iget v0, p0, Lcom/android/common/image3d/b;->bE:I

    if-le v0, v1, :cond_22

    .line 110
    const-string/jumbo v0, "H264Encoder"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 112
    iget-object v0, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/image3d/b;->bE:I

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/image3d/b;->bC:I
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit p0

    .line 108
    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 80
    :try_start_1
    iget v0, p0, Lcom/android/common/image3d/b;->bE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 81
    const-string/jumbo v0, "H264Encoder"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/common/image3d/b;->by:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/image3d/b;->bC:I

    .line 84
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/common/image3d/b;->bE:I

    .line 85
    iget-object v0, p0, Lcom/android/common/image3d/b;->bA:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/common/image3d/b;->bz:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_47

    :goto_21
    monitor-exit p0

    .line 79
    return-void

    .line 87
    :cond_23
    :try_start_23
    const-string/jumbo v0, "H264Encoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "call start in error status["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/image3d/b;->bE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_47

    goto :goto_21

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 92
    :try_start_1
    iget v0, p0, Lcom/android/common/image3d/b;->bE:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2e

    const/4 v1, 0x4

    if-ne v0, v1, :cond_31

    .line 94
    :try_start_6
    const-string/jumbo v0, "H264Encoder"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/common/image3d/b;->bE:I

    .line 96
    invoke-direct {p0}, Lcom/android/common/image3d/b;->bt()V

    .line 97
    iget-object v0, p0, Lcom/android/common/image3d/b;->bA:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 98
    iget-object v0, p0, Lcom/android/common/image3d/b;->bA:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_27} :catch_29
    .catchall {:try_start_6 .. :try_end_27} :catchall_2e

    :goto_27
    monitor-exit p0

    .line 91
    return-void

    .line 99
    :catch_29
    move-exception v0

    .line 101
    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_27

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 104
    :cond_31
    :try_start_31
    const-string/jumbo v0, "H264Encoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "call stop in error status["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/image3d/b;->bE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_31 .. :try_end_54} :catchall_2e

    goto :goto_27
.end method

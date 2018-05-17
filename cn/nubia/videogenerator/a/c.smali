.class public Lcn/nubia/videogenerator/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/b/e;


# instance fields
.field private bqA:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private bqB:Landroid/view/Surface;

.field private bqC:Lcn/nubia/videogenerator/a/b;

.field private bqD:Lcn/nubia/videogenerator/a/a;

.field private bqE:I

.field private bqF:Ljava/lang/String;

.field private bqG:Lcn/nubia/videogenerator/b/d;

.field private bqH:Landroid/media/MediaCodec;

.field private bqI:Z

.field private bqJ:Z

.field private bqK:J

.field private bqL:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private bqM:J

.field private bqN:Lcn/nubia/videogenerator/a/f;

.field private bqO:Ljava/lang/Object;

.field private bqP:I

.field private bqQ:I

.field private bqR:Z


# direct methods
.method public constructor <init>(Lcn/nubia/videogenerator/a/a;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqA:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    iput-object v3, p0, Lcn/nubia/videogenerator/a/c;->bqB:Landroid/view/Surface;

    .line 33
    iput-boolean v2, p0, Lcn/nubia/videogenerator/a/c;->bqI:Z

    .line 34
    iput-boolean v1, p0, Lcn/nubia/videogenerator/a/c;->bqJ:Z

    .line 35
    iput-wide v4, p0, Lcn/nubia/videogenerator/a/c;->bqK:J

    .line 37
    iput-wide v4, p0, Lcn/nubia/videogenerator/a/c;->bqM:J

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqO:Ljava/lang/Object;

    .line 40
    iput v1, p0, Lcn/nubia/videogenerator/a/c;->bqP:I

    .line 41
    iput v1, p0, Lcn/nubia/videogenerator/a/c;->bqQ:I

    .line 42
    iput-boolean v2, p0, Lcn/nubia/videogenerator/a/c;->bqR:Z

    .line 45
    iput-object p1, p0, Lcn/nubia/videogenerator/a/c;->bqD:Lcn/nubia/videogenerator/a/a;

    .line 46
    invoke-virtual {p1}, Lcn/nubia/videogenerator/a/a;->bMX()I

    move-result v0

    iput v0, p0, Lcn/nubia/videogenerator/a/c;->bqE:I

    .line 47
    invoke-virtual {p1}, Lcn/nubia/videogenerator/a/a;->bNb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcn/nubia/videogenerator/a/a;->bNb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    .line 49
    invoke-virtual {p1}, Lcn/nubia/videogenerator/a/a;->bNh()Landroid/media/MediaFormat;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqD:Lcn/nubia/videogenerator/a/a;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/a/a;->bMU()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 53
    :goto_4a
    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqD:Lcn/nubia/videogenerator/a/a;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/a/a;->bMV()Z

    move-result v1

    if-nez v1, :cond_62

    .line 56
    :goto_52
    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 57
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/c;->bNu()V

    .line 58
    return-void

    :cond_5b
    const-string/jumbo v1, "recorder"

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_4a

    :cond_62
    const-string/jumbo v1, "enc-nonRefP"

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_52
.end method

.method public constructor <init>(Lcn/nubia/videogenerator/a/b;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqA:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    iput-object v3, p0, Lcn/nubia/videogenerator/a/c;->bqB:Landroid/view/Surface;

    .line 33
    iput-boolean v2, p0, Lcn/nubia/videogenerator/a/c;->bqI:Z

    .line 34
    iput-boolean v1, p0, Lcn/nubia/videogenerator/a/c;->bqJ:Z

    .line 35
    iput-wide v4, p0, Lcn/nubia/videogenerator/a/c;->bqK:J

    .line 37
    iput-wide v4, p0, Lcn/nubia/videogenerator/a/c;->bqM:J

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqO:Ljava/lang/Object;

    .line 40
    iput v1, p0, Lcn/nubia/videogenerator/a/c;->bqP:I

    .line 41
    iput v1, p0, Lcn/nubia/videogenerator/a/c;->bqQ:I

    .line 42
    iput-boolean v2, p0, Lcn/nubia/videogenerator/a/c;->bqR:Z

    .line 61
    iput-object p1, p0, Lcn/nubia/videogenerator/a/c;->bqC:Lcn/nubia/videogenerator/a/b;

    .line 62
    invoke-virtual {p1}, Lcn/nubia/videogenerator/a/b;->bNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcn/nubia/videogenerator/a/b;->bNo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    .line 64
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Lcn/nubia/videogenerator/a/b;->bNt()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 65
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/c;->bNu()V

    .line 66
    return-void
.end method

.method private bNE()V
    .registers 11

    .prologue
    .line 161
    iget-boolean v2, p0, Lcn/nubia/videogenerator/a/c;->bqI:Z

    if-eqz v2, :cond_13

    .line 164
    :cond_4
    iget-object v9, p0, Lcn/nubia/videogenerator/a/c;->bqO:Ljava/lang/Object;

    monitor-enter v9

    .line 165
    :try_start_7
    iget-object v2, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 166
    if-gez v3, :cond_1a

    .line 164
    :goto_11
    monitor-exit v9
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_6a

    .line 184
    return-void

    .line 161
    :cond_13
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/c;->bNJ()Z

    move-result v2

    if-nez v2, :cond_4

    .line 162
    return-void

    .line 167
    :cond_1a
    const/4 v2, 0x0

    :try_start_1b
    iput-boolean v2, p0, Lcn/nubia/videogenerator/a/c;->bqI:Z

    .line 168
    iget-object v2, p0, Lcn/nubia/videogenerator/a/c;->bqL:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcn/nubia/videogenerator/b/a;

    move-object v6, v0

    .line 169
    iget-object v2, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 171
    iget-object v4, v6, Lcn/nubia/videogenerator/b/a;->data:[B

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 173
    iget-object v2, v6, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v2, :cond_6d

    :cond_3b
    const-string/jumbo v2, "Encoder"

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " EOS received in fillInputBufferInner"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    iget-object v5, v6, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 179
    iget-object v6, v6, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v8, 0x4

    .line 178
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 180
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/videogenerator/a/c;->bqJ:Z

    goto :goto_11

    .line 164
    :catchall_6a
    move-exception v2

    monitor-exit v9
    :try_end_6c
    .catchall {:try_start_1b .. :try_end_6c} :catchall_6a

    throw v2

    .line 173
    :cond_6d
    :try_start_6d
    iget-object v2, v6, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_3b

    .line 174
    iget-object v2, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    iget-object v5, v6, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 175
    iget-object v6, v6, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v8, 0x0

    .line 174
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_84
    .catchall {:try_start_6d .. :try_end_84} :catchall_6a

    goto :goto_11
.end method

.method private bNF(Z)V
    .registers 16

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    .line 188
    if-nez p1, :cond_91

    .line 198
    :cond_5
    :goto_5
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 200
    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqO:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_d
    iget-object v2, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 200
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_bf

    .line 203
    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_90

    const/4 v1, -0x1

    .line 204
    if-eq v2, v1, :cond_c2

    const/4 v1, -0x2

    .line 212
    if-eq v2, v1, :cond_df

    .line 220
    if-ltz v2, :cond_f7

    .line 223
    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v1, v1, [B

    .line 224
    iget-object v3, p0, Lcn/nubia/videogenerator/a/c;->bqO:Ljava/lang/Object;

    monitor-enter v3

    .line 225
    :try_start_2d
    iget-object v4, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    invoke-virtual {v4, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 224
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_119

    .line 227
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_11c

    .line 231
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_139

    .line 234
    :goto_43
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v3, :cond_13d

    .line 252
    :goto_47
    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqO:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_4a
    iget-object v3, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 252
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_199

    .line 255
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_19c

    .line 267
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqB:Landroid/view/Surface;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqL:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcn/nubia/videogenerator/a/c;->bqQ:I

    iget v1, p0, Lcn/nubia/videogenerator/a/c;->bqP:I

    if-lt v0, v1, :cond_5

    .line 268
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "Encoder"

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " encoder data is over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_90
    :goto_90
    return-void

    :cond_91
    const-string/jumbo v0, "Encoder"

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " sending EOS to encoder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqB:Landroid/view/Surface;

    if-eqz v0, :cond_5

    .line 191
    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqO:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_b4
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 191
    monitor-exit v1

    goto/16 :goto_5

    :catchall_bc
    move-exception v0

    monitor-exit v1
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_bc

    throw v0

    .line 200
    :catchall_bf
    move-exception v0

    :try_start_c0
    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw v0

    .line 205
    :cond_c2
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqB:Landroid/view/Surface;

    if-nez v0, :cond_ce

    .line 209
    if-eqz p1, :cond_d6

    :cond_c8
    iget v0, p0, Lcn/nubia/videogenerator/a/c;->bqP:I

    if-eqz v0, :cond_90

    goto/16 :goto_5

    .line 206
    :cond_ce
    if-eqz p1, :cond_90

    iget v0, p0, Lcn/nubia/videogenerator/a/c;->bqP:I

    if-eqz v0, :cond_90

    goto/16 :goto_5

    .line 209
    :cond_d6
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqL:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c8

    goto :goto_90

    .line 214
    :cond_df
    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqO:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_e2
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 214
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_e2 .. :try_end_e9} :catchall_f4

    .line 217
    iget-wide v2, p0, Lcn/nubia/videogenerator/a/c;->bqK:J

    cmp-long v1, v2, v12

    if-nez v1, :cond_5

    .line 218
    invoke-direct {p0, v0}, Lcn/nubia/videogenerator/a/c;->bNI(Landroid/media/MediaFormat;)V

    goto/16 :goto_5

    .line 214
    :catchall_f4
    move-exception v0

    :try_start_f5
    monitor-exit v1
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    throw v0

    :cond_f7
    const-string/jumbo v0, "Encoder"

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 224
    :catchall_119
    move-exception v0

    :try_start_11a
    monitor-exit v3
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_119

    throw v0

    .line 229
    :cond_11c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "encoderOutputBuffer "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_139
    iput v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_43

    .line 235
    :cond_13d
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 236
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 237
    iget-object v3, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    const-string/jumbo v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16b

    .line 240
    iget-object v3, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    const-string/jumbo v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17d

    .line 246
    :cond_160
    :goto_160
    iget v3, p0, Lcn/nubia/videogenerator/a/c;->bqQ:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcn/nubia/videogenerator/a/c;->bqQ:I

    .line 249
    invoke-direct {p0, v1, v0}, Lcn/nubia/videogenerator/a/c;->bNH(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_47

    .line 238
    :cond_16b
    iget-wide v4, p0, Lcn/nubia/videogenerator/a/c;->bqK:J

    iput-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 239
    iget-wide v4, p0, Lcn/nubia/videogenerator/a/c;->bqK:J

    iget v3, p0, Lcn/nubia/videogenerator/a/c;->bqE:I

    int-to-long v6, v3

    const-wide/32 v8, 0xf4240

    div-long v6, v8, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/nubia/videogenerator/a/c;->bqK:J

    goto :goto_160

    .line 241
    :cond_17d
    iget-wide v4, p0, Lcn/nubia/videogenerator/a/c;->bqM:J

    iput-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 242
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/c;->bNJ()Z

    move-result v3

    if-eqz v3, :cond_160

    .line 243
    iget-wide v4, p0, Lcn/nubia/videogenerator/a/c;->bqM:J

    iget-object v3, p0, Lcn/nubia/videogenerator/a/c;->bqC:Lcn/nubia/videogenerator/a/b;

    invoke-virtual {v3}, Lcn/nubia/videogenerator/a/b;->bNr()I

    move-result v3

    int-to-long v6, v3

    const-wide/32 v8, 0x3d090000

    div-long v6, v8, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/nubia/videogenerator/a/c;->bqM:J

    goto :goto_160

    .line 252
    :catchall_199
    move-exception v0

    :try_start_19a
    monitor-exit v1
    :try_end_19b
    .catchall {:try_start_19a .. :try_end_19b} :catchall_199

    throw v0

    .line 256
    :cond_19c
    if-eqz p1, :cond_1cc

    const-string/jumbo v0, "Encoder"

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " end of stream reached "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_1c0
    iget-boolean v0, p0, Lcn/nubia/videogenerator/a/c;->bqR:Z

    if-nez v0, :cond_1ef

    .line 264
    :goto_1c4
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqA:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_90

    :cond_1cc
    const-string/jumbo v0, "Encoder"

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " reached end of stream unexpectedly "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c0

    .line 262
    :cond_1ef
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/c;->bNG()V

    goto :goto_1c4
.end method

.method private bNG()V
    .registers 3

    .prologue
    .line 277
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqG:Lcn/nubia/videogenerator/b/d;

    if-nez v0, :cond_5

    .line 280
    :goto_4
    return-void

    .line 278
    :cond_5
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqG:Lcn/nubia/videogenerator/b/d;

    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/b/d;->bro(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private bNH(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 5

    .prologue
    .line 283
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqG:Lcn/nubia/videogenerator/b/d;

    if-nez v0, :cond_5

    .line 286
    :goto_4
    return-void

    .line 284
    :cond_5
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqG:Lcn/nubia/videogenerator/b/d;

    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcn/nubia/videogenerator/b/d;->brn(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private bNI(Landroid/media/MediaFormat;)V
    .registers 5

    .prologue
    const-string/jumbo v0, "Encoder"

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyOutputFormatChanged format changed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqG:Lcn/nubia/videogenerator/b/d;

    if-nez v0, :cond_1f

    .line 293
    :goto_1e
    return-void

    .line 291
    :cond_1f
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqG:Lcn/nubia/videogenerator/b/d;

    invoke-interface {v0, p1}, Lcn/nubia/videogenerator/b/d;->brp(Landroid/media/MediaFormat;)V

    goto :goto_1e
.end method

.method private bNJ()Z
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqG:Lcn/nubia/videogenerator/b/d;

    invoke-interface {v0}, Lcn/nubia/videogenerator/b/d;->brm()Z

    move-result v0

    return v0
.end method

.method private bNK()V
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    if-nez v0, :cond_5

    .line 304
    :cond_4
    :goto_4
    return-void

    .line 300
    :cond_5
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 301
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/c;->bNE()V

    .line 302
    iget-boolean v0, p0, Lcn/nubia/videogenerator/a/c;->bqJ:Z

    invoke-direct {p0, v0}, Lcn/nubia/videogenerator/a/c;->bNF(Z)V

    goto :goto_4
.end method

.method private bNL()V
    .registers 3

    .prologue
    .line 307
    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqO:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    :try_start_3
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    if-nez v0, :cond_23

    .line 307
    :goto_7
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_29

    .line 312
    :goto_8
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_35

    .line 313
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqL:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 318
    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqO:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_1b
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/c;->bNK()V

    .line 318
    monitor-exit v1

    goto :goto_8

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_20

    throw v0

    .line 309
    :cond_23
    :try_start_23
    iget-boolean v0, p0, Lcn/nubia/videogenerator/a/c;->bqJ:Z

    invoke-direct {p0, v0}, Lcn/nubia/videogenerator/a/c;->bNF(Z)V

    goto :goto_7

    .line 307
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_29

    throw v0

    .line 314
    :cond_2c
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v0, 0x14

    .line 315
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_8

    .line 324
    :cond_35
    return-void
.end method

.method static synthetic bNM(Lcn/nubia/videogenerator/a/c;)V
    .registers 1

    .prologue
    .line 306
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/c;->bNL()V

    return-void
.end method

.method private bNu()V
    .registers 2

    .prologue
    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqL:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 70
    return-void
.end method


# virtual methods
.method public bNA(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 5

    .prologue
    .line 132
    new-instance v0, Lcn/nubia/videogenerator/b/a;

    invoke-direct {v0}, Lcn/nubia/videogenerator/b/a;-><init>()V

    .line 133
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/videogenerator/b/a;->data:[B

    .line 134
    iput-object p2, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    .line 135
    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqL:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 136
    iget v0, p0, Lcn/nubia/videogenerator/a/c;->bqP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/videogenerator/a/c;->bqP:I

    .line 138
    return-void
.end method

.method public bNB()Landroid/view/Surface;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqB:Landroid/view/Surface;

    return-object v0
.end method

.method public bNC(Lcn/nubia/videogenerator/b/d;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcn/nubia/videogenerator/a/c;->bqG:Lcn/nubia/videogenerator/b/d;

    .line 146
    return-void
.end method

.method public bND(Z)V
    .registers 4

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqO:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_10

    .line 151
    :try_start_3
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    if-nez v0, :cond_9

    .line 150
    :goto_7
    monitor-exit v1

    .line 158
    :goto_8
    return-void

    .line 152
    :cond_9
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/a/c;->bNF(Z)V

    goto :goto_7

    .line 150
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    :try_start_f
    throw v0
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_10} :catch_10

    :catch_10
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_8
.end method

.method public bNv(Lcn/nubia/videogenerator/a/f;)V
    .registers 3

    .prologue
    .line 77
    iput-object p1, p0, Lcn/nubia/videogenerator/a/c;->bqN:Lcn/nubia/videogenerator/a/f;

    .line 78
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    if-nez v0, :cond_7

    .line 81
    :goto_6
    return-void

    .line 79
    :cond_7
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqN:Lcn/nubia/videogenerator/a/f;

    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/a/f;->bOk(Lcn/nubia/videogenerator/b/e;)V

    goto :goto_6
.end method

.method public bNw(Lcn/nubia/videogenerator/a/e;)V
    .registers 5

    .prologue
    .line 84
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    if-nez v0, :cond_5

    .line 95
    :goto_4
    return-void

    .line 85
    :cond_5
    invoke-virtual {p1, p0}, Lcn/nubia/videogenerator/a/e;->bOi(Lcn/nubia/videogenerator/b/e;)V

    .line 87
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqB:Landroid/view/Surface;

    if-eqz v0, :cond_24

    .line 93
    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcn/nubia/videogenerator/a/c;->bNB()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/videogenerator/a/c;->bNx()Lcn/nubia/videogenerator/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/videogenerator/a/a;->bNc()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/videogenerator/a/c;->bNx()Lcn/nubia/videogenerator/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/videogenerator/a/a;->bNd()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/videogenerator/a/e;->bOc(Landroid/view/Surface;II)V

    goto :goto_4

    .line 88
    :cond_24
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqD:Lcn/nubia/videogenerator/a/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/a;->bNf()I

    move-result v0

    const v1, 0x7f000789

    if-ne v0, v1, :cond_c

    .line 89
    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqO:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_32
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqB:Landroid/view/Surface;

    .line 89
    monitor-exit v1

    goto :goto_c

    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public bNx()Lcn/nubia/videogenerator/a/a;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqD:Lcn/nubia/videogenerator/a/a;

    return-object v0
.end method

.method public bNy(I)Z
    .registers 5

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    iget v1, p0, Lcn/nubia/videogenerator/a/c;->bqP:I

    iget v2, p0, Lcn/nubia/videogenerator/a/c;->bqQ:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_9

    .line 119
    :goto_8
    return v0

    .line 117
    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public bNz(Z)V
    .registers 3

    .prologue
    .line 124
    iget v0, p0, Lcn/nubia/videogenerator/a/c;->bqP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/videogenerator/a/c;->bqP:I

    .line 126
    invoke-virtual {p0, p1}, Lcn/nubia/videogenerator/a/c;->bND(Z)V

    .line 127
    return-void
.end method

.method public release()V
    .registers 5

    .prologue
    .line 356
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqA:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 357
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    if-nez v0, :cond_10

    .line 369
    :goto_a
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqL:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 370
    return-void

    .line 358
    :cond_10
    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqO:Ljava/lang/Object;

    monitor-enter v1

    :try_start_13
    const-string/jumbo v0, "Encoder"

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " release"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 361
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    .line 363
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqB:Landroid/view/Surface;

    if-nez v0, :cond_45

    .line 358
    :goto_40
    monitor-exit v1

    goto :goto_a

    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_13 .. :try_end_44} :catchall_42

    throw v0

    .line 364
    :cond_45
    :try_start_45
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqB:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 365
    iput-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqB:Landroid/view/Surface;
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_42

    goto :goto_40
.end method

.method public start()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 334
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    if-nez v0, :cond_a

    .line 340
    :goto_5
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqB:Landroid/view/Surface;

    if-eqz v0, :cond_33

    .line 343
    :goto_9
    return-void

    :cond_a
    const-string/jumbo v0, "Encoder"

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/videogenerator/a/c;->bqF:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " Encoder start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v1, p0, Lcn/nubia/videogenerator/a/c;->bqO:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_29
    iget-object v0, p0, Lcn/nubia/videogenerator/a/c;->bqH:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 336
    monitor-exit v1

    goto :goto_5

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_30

    throw v0

    .line 341
    :cond_33
    new-instance v0, Lcn/nubia/videogenerator/a/i;

    invoke-direct {v0, p0, v3}, Lcn/nubia/videogenerator/a/i;-><init>(Lcn/nubia/videogenerator/a/c;Lcn/nubia/videogenerator/a/i;)V

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/i;->start()V

    goto :goto_9
.end method

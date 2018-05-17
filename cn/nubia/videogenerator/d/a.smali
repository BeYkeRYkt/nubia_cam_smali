.class public Lcn/nubia/videogenerator/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bsA:Lcn/nubia/videogenerator/b/c;

.field private bsB:I

.field private bsC:J

.field private bsD:J

.field private bsE:Ljava/lang/Object;

.field private bsF:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private bss:Landroid/media/MediaMuxer;

.field private bst:I

.field private bsu:J

.field private bsv:J

.field private bsw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private bsx:Ljava/lang/String;

.field private bsy:Ljava/util/HashMap;

.field private bsz:Lcn/nubia/videogenerator/b/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcn/nubia/videogenerator/d/a;->bst:I

    .line 25
    iput-wide v2, p0, Lcn/nubia/videogenerator/d/a;->bsu:J

    .line 26
    iput-wide v2, p0, Lcn/nubia/videogenerator/d/a;->bsv:J

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsw:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsx:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsy:Ljava/util/HashMap;

    .line 32
    iput v1, p0, Lcn/nubia/videogenerator/d/a;->bsB:I

    .line 33
    iput-wide v2, p0, Lcn/nubia/videogenerator/d/a;->bsC:J

    .line 34
    iput-wide v2, p0, Lcn/nubia/videogenerator/d/a;->bsD:J

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsE:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcn/nubia/videogenerator/d/a;->bsx:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsF:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 41
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->bss:Landroid/media/MediaMuxer;

    .line 42
    return-void
.end method

.method private bPs(Landroid/media/MediaFormat;)V
    .registers 8

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    .line 72
    if-nez p1, :cond_1d

    .line 91
    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string/jumbo v0, "MuxerWriter"

    const-string/jumbo v1, "Muxer has started , MediaFormat should not change"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "MediaFormat changed after MediaMuxer started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1d
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bss:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_a

    .line 73
    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->bsE:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_24
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bss:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    .line 75
    iget-object v2, p0, Lcn/nubia/videogenerator/d/a;->bsy:Ljava/util/HashMap;

    const-string/jumbo v3, "mime"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v2, p0, Lcn/nubia/videogenerator/d/a;->bst:I

    if-ge v0, v2, :cond_9d

    .line 82
    :goto_44
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsF:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b2

    .line 83
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsF:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/videogenerator/b/a;

    const-string/jumbo v2, "MuxerWriter"

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "chenpeng1 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 85
    iget-object v4, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v2, v0, Lcn/nubia/videogenerator/b/a;->data:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 87
    iget-object v3, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget-object v0, v0, Lcn/nubia/videogenerator/b/a;->brr:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Lcn/nubia/videogenerator/d/a;->bPt(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    goto :goto_44

    .line 73
    :catchall_9a
    move-exception v0

    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_24 .. :try_end_9c} :catchall_9a

    throw v0

    :cond_9d
    :try_start_9d
    const-string/jumbo v0, "MuxerWriter"

    const-string/jumbo v2, "all tracks have added, start Muxer"

    .line 78
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bss:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 80
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsw:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_44

    .line 73
    :cond_b2
    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_9d .. :try_end_b3} :catchall_9a

    goto/16 :goto_a
.end method

.method private bPt(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 96
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 105
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1, p3}, Lcn/nubia/videogenerator/d/a;->bPu(JLjava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->bsE:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_10
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bss:Landroid/media/MediaMuxer;

    if-nez v0, :cond_6c

    .line 106
    :goto_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_7e

    .line 112
    :goto_15
    return-void

    :cond_16
    const-string/jumbo v0, "MuxerWriter"

    const-string/jumbo v1, "Muxer hasn\'t started!"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Lcn/nubia/videogenerator/b/a;

    invoke-direct {v0}, Lcn/nubia/videogenerator/b/a;-><init>()V

    .line 99
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/videogenerator/b/a;->data:[B

    .line 100
    iput-object p2, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    .line 101
    iput-object p3, v0, Lcn/nubia/videogenerator/b/a;->brr:Ljava/lang/String;

    const-string/jumbo v1, "MuxerWriter"

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "chenpeng0 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->bsF:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 108
    :cond_6c
    :try_start_6c
    iget-object v2, p0, Lcn/nubia/videogenerator/d/a;->bss:Landroid/media/MediaMuxer;

    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsy:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_14

    .line 106
    :catchall_7e
    move-exception v0

    monitor-exit v1
    :try_end_80
    .catchall {:try_start_6c .. :try_end_80} :catchall_7e

    throw v0
.end method

.method private bPu(JLjava/lang/String;)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 115
    iget-wide v2, p0, Lcn/nubia/videogenerator/d/a;->bsC:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    if-nez v0, :cond_34

    const-string/jumbo v0, "video/"

    .line 116
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string/jumbo v0, "audio/"

    .line 118
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 121
    :goto_1e
    iget-wide v0, p0, Lcn/nubia/videogenerator/d/a;->bsv:J

    iget-wide v2, p0, Lcn/nubia/videogenerator/d/a;->bsu:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcn/nubia/videogenerator/d/a;->bsC:J

    iget v4, p0, Lcn/nubia/videogenerator/d/a;->bst:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcn/nubia/videogenerator/d/a;->bsD:J

    .line 122
    iget-wide v0, p0, Lcn/nubia/videogenerator/d/a;->bsD:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/videogenerator/d/a;->bPv(J)V

    .line 124
    :cond_34
    return-void

    .line 117
    :cond_35
    iput-wide p1, p0, Lcn/nubia/videogenerator/d/a;->bsv:J

    goto :goto_1e

    .line 119
    :cond_38
    iput-wide p1, p0, Lcn/nubia/videogenerator/d/a;->bsu:J

    goto :goto_1e
.end method

.method private bPv(J)V
    .registers 4

    .prologue
    .line 127
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsA:Lcn/nubia/videogenerator/b/c;

    if-nez v0, :cond_5

    .line 130
    :goto_4
    return-void

    .line 128
    :cond_5
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsA:Lcn/nubia/videogenerator/b/c;

    invoke-interface {v0, p1, p2}, Lcn/nubia/videogenerator/b/c;->aZa(J)V

    goto :goto_4
.end method


# virtual methods
.method public bPo(I)V
    .registers 2

    .prologue
    .line 51
    iput p1, p0, Lcn/nubia/videogenerator/d/a;->bst:I

    .line 52
    return-void
.end method

.method public bPp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/videogenerator/d/a;->bPt(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public bPq(Landroid/media/MediaFormat;)V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/d/a;->bPs(Landroid/media/MediaFormat;)V

    .line 61
    return-void
.end method

.method public bPr()Z
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public bPw(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 133
    iget v0, p0, Lcn/nubia/videogenerator/d/a;->bsB:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/videogenerator/d/a;->bsB:I

    iget v1, p0, Lcn/nubia/videogenerator/d/a;->bst:I

    if-ge v0, v1, :cond_b

    .line 142
    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string/jumbo v0, "MuxerWriter"

    const-string/jumbo v1, "onOutputComplete"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-wide v0, p0, Lcn/nubia/videogenerator/d/a;->bsC:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2e

    const/4 v0, 0x1

    :goto_1d
    if-nez v0, :cond_24

    const-wide/16 v0, 0x64

    .line 136
    invoke-direct {p0, v0, v1}, Lcn/nubia/videogenerator/d/a;->bPv(J)V

    .line 138
    :cond_24
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsz:Lcn/nubia/videogenerator/b/b;

    if-eqz v0, :cond_a

    .line 139
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsz:Lcn/nubia/videogenerator/b/b;

    invoke-interface {v0}, Lcn/nubia/videogenerator/b/b;->aYZ()V

    goto :goto_a

    .line 135
    :cond_2e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public bPx(Lcn/nubia/videogenerator/b/b;)V
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcn/nubia/videogenerator/d/a;->bsz:Lcn/nubia/videogenerator/b/b;

    .line 197
    return-void
.end method

.method public bPy(Lcn/nubia/videogenerator/b/c;)V
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcn/nubia/videogenerator/d/a;->bsA:Lcn/nubia/videogenerator/b/c;

    .line 202
    return-void
.end method

.method public bPz(J)V
    .registers 4

    .prologue
    .line 205
    iput-wide p1, p0, Lcn/nubia/videogenerator/d/a;->bsC:J

    .line 206
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->bsE:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_15

    .line 164
    :try_start_3
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bss:Landroid/media/MediaMuxer;

    if-nez v0, :cond_c

    .line 163
    :goto_7
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    const/4 v0, 0x0

    .line 168
    :try_start_9
    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->bss:Landroid/media/MediaMuxer;
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_b} :catch_15

    .line 172
    :goto_b
    return-void

    .line 165
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bss:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    goto :goto_7

    .line 163
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_12

    :try_start_14
    throw v0
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_15} :catch_15

    .line 169
    :catch_15
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_b
.end method

.method public setOrientation(I)V
    .registers 4

    .prologue
    .line 45
    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->bsE:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_3
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bss:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 45
    monitor-exit v1

    .line 48
    return-void

    .line 45
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public stop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "MuxerWriter"

    const-string/jumbo v1, "stop"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bss:Landroid/media/MediaMuxer;

    if-nez v0, :cond_f

    .line 159
    :goto_e
    return-void

    .line 147
    :cond_f
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 157
    :goto_17
    invoke-virtual {p0}, Lcn/nubia/videogenerator/d/a;->release()V

    goto :goto_e

    .line 149
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->bsE:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1e} :catch_2d

    .line 150
    :try_start_1e
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bss:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 149
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_2a

    .line 155
    :goto_24
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->bsw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_17

    .line 149
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v0
    :try_end_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_24
.end method

.class public Lcn/nubia/videogenerator/a/d;
.super Lcn/nubia/videogenerator/a/g;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/b/l;


# instance fields
.field private bqS:Z

.field private bqT:Landroid/media/MediaFormat;

.field private bqU:Ljava/lang/String;

.field private bqV:Landroid/media/MediaCodec;

.field private bqW:Lcn/nubia/videogenerator/b/d;

.field private bqX:Z

.field private bqY:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private bqZ:Ljava/lang/Object;

.field private bra:I

.field private brb:I

.field private brc:J

.field private brd:Lcn/nubia/videogenerator/b/j;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/g;-><init>()V

    .line 24
    iput-boolean v1, p0, Lcn/nubia/videogenerator/a/d;->bqS:Z

    .line 25
    iput-object v2, p0, Lcn/nubia/videogenerator/a/d;->bqT:Landroid/media/MediaFormat;

    .line 30
    iput-boolean v1, p0, Lcn/nubia/videogenerator/a/d;->bqX:Z

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqZ:Ljava/lang/Object;

    .line 33
    iput v1, p0, Lcn/nubia/videogenerator/a/d;->bra:I

    .line 34
    iput v1, p0, Lcn/nubia/videogenerator/a/d;->brb:I

    const-wide/16 v0, -0x1

    .line 35
    iput-wide v0, p0, Lcn/nubia/videogenerator/a/d;->brc:J

    .line 36
    iput-object v2, p0, Lcn/nubia/videogenerator/a/d;->brd:Lcn/nubia/videogenerator/b/j;

    .line 39
    iput-object p1, p0, Lcn/nubia/videogenerator/a/d;->bqT:Landroid/media/MediaFormat;

    .line 40
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqT:Landroid/media/MediaFormat;

    const-string/jumbo v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqU:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqT:Landroid/media/MediaFormat;

    invoke-direct {p0, v0}, Lcn/nubia/videogenerator/a/d;->bNN(Landroid/media/MediaFormat;)V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqY:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 43
    return-void
.end method

.method private bNN(Landroid/media/MediaFormat;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "max-input-size"

    const/16 v3, 0x4000

    .line 46
    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 47
    new-instance v2, Landroid/media/MediaCodecList;

    invoke-direct {v2, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 48
    invoke-virtual {v2, p1}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v2

    .line 51
    if-nez v2, :cond_34

    :try_start_15
    const-string/jumbo v2, "Decoder"

    const-string/jumbo v3, "KEY_MIME :mime"

    .line 56
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_52

    :try_start_1e
    const-string/jumbo v1, "mime"

    .line 58
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;

    .line 60
    :goto_2b
    iget-object v1, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_33} :catch_71

    .line 72
    :cond_33
    :goto_33
    return-void

    :cond_34
    :try_start_34
    const-string/jumbo v0, "Decoder"

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "decoderName :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_50} :catch_52

    move v0, v1

    .line 55
    goto :goto_2b

    .line 61
    :catch_52
    move-exception v0

    move v0, v1

    .line 63
    :goto_54
    :try_start_54
    invoke-virtual {p0}, Lcn/nubia/videogenerator/a/d;->release()V

    .line 64
    if-eqz v0, :cond_33

    const-string/jumbo v0, "mime"

    .line 65
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;

    .line 66
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_6e} :catch_6f

    goto :goto_33

    .line 68
    :catch_6f
    move-exception v0

    goto :goto_33

    .line 61
    :catch_71
    move-exception v1

    goto :goto_54
.end method

.method private bNO(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 5

    .prologue
    .line 95
    new-instance v0, Lcn/nubia/videogenerator/b/a;

    invoke-direct {v0}, Lcn/nubia/videogenerator/b/a;-><init>()V

    .line 96
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/videogenerator/b/a;->data:[B

    .line 97
    iput-object p2, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    .line 98
    iget-object v1, p0, Lcn/nubia/videogenerator/a/d;->bqY:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 99
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v0, :cond_17

    .line 103
    :goto_16
    return-void

    .line 100
    :cond_17
    iget v0, p0, Lcn/nubia/videogenerator/a/d;->bra:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/videogenerator/a/d;->bra:I

    goto :goto_16
.end method

.method private bNQ()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 112
    if-gez v1, :cond_c

    .line 128
    :goto_b
    return-void

    .line 113
    :cond_c
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqY:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcn/nubia/videogenerator/b/a;

    .line 114
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 116
    iget-object v3, v4, Lcn/nubia/videogenerator/b/a;->data:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 118
    iget-object v0, v4, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v0, :cond_44

    :cond_29
    const-string/jumbo v0, "Decoder"

    const-string/jumbo v3, "EOS recevied in fillInputBufferInner"

    .line 121
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;

    iget-object v3, v4, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v4, v4, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/videogenerator/a/d;->bqX:Z

    goto :goto_b

    .line 118
    :cond_44
    iget-object v0, v4, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_29

    .line 119
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;

    iget-object v3, v4, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v4, v4, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_b
.end method

.method private bNR(Landroid/media/MediaCodec;Z)V
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    :cond_2
    :goto_2
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v4, 0x0

    .line 134
    invoke-virtual {p1, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 135
    iget-boolean v0, p0, Lcn/nubia/videogenerator/a/d;->bqS:Z

    if-nez v0, :cond_70

    const/4 v0, -0x1

    .line 136
    if-eq v4, v0, :cond_71

    const/4 v0, -0x2

    .line 140
    if-eq v4, v0, :cond_85

    .line 144
    if-ltz v4, :cond_97

    .line 148
    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v8, p0, Lcn/nubia/videogenerator/a/d;->brc:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_af

    move v0, v1

    :goto_22
    if-nez v0, :cond_2a

    .line 149
    iget v0, p0, Lcn/nubia/videogenerator/a/d;->brb:I

    iget v5, p0, Lcn/nubia/videogenerator/a/d;->bra:I

    if-lt v0, v5, :cond_b2

    .line 158
    :cond_2a
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->brd:Lcn/nubia/videogenerator/b/j;

    if-nez v0, :cond_c0

    .line 166
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    .line 167
    invoke-virtual {p1, v4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 168
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 170
    :cond_3d
    :goto_3d
    if-eqz v0, :cond_10e

    .line 174
    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_134

    .line 178
    :goto_45
    invoke-direct {p0, v0, v3}, Lcn/nubia/videogenerator/a/d;->bNT(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 179
    iget v0, p0, Lcn/nubia/videogenerator/a/d;->brb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/videogenerator/a/d;->brb:I

    .line 181
    invoke-virtual {p1, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 182
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_138

    .line 192
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqY:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/nubia/videogenerator/a/d;->brb:I

    iget v3, p0, Lcn/nubia/videogenerator/a/d;->bra:I

    if-lt v0, v3, :cond_2

    .line 193
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqU:Ljava/lang/String;

    const-string/jumbo v3, "video/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    :cond_70
    :goto_70
    return-void

    .line 137
    :cond_71
    if-eqz p2, :cond_78

    :cond_73
    iget v0, p0, Lcn/nubia/videogenerator/a/d;->bra:I

    if-eqz v0, :cond_70

    goto :goto_2

    :cond_78
    iget v0, p0, Lcn/nubia/videogenerator/a/d;->bra:I

    if-lez v0, :cond_73

    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqY:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    goto :goto_70

    .line 141
    :cond_85
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v3, "mime"

    .line 142
    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/videogenerator/a/d;->bqU:Ljava/lang/String;

    .line 143
    invoke-direct {p0, v0}, Lcn/nubia/videogenerator/a/d;->bNU(Landroid/media/MediaFormat;)V

    goto/16 :goto_2

    :cond_97
    const-string/jumbo v0, "Decoder"

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_af
    move v0, v2

    .line 148
    goto/16 :goto_22

    .line 150
    :cond_b2
    iget v0, p0, Lcn/nubia/videogenerator/a/d;->brb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/videogenerator/a/d;->brb:I

    .line 151
    invoke-virtual {p1, v4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 152
    invoke-virtual {p1, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_2

    .line 159
    :cond_c0
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->brd:Lcn/nubia/videogenerator/b/j;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/b/j;->bOR()I

    move-result v0

    iget-object v5, p0, Lcn/nubia/videogenerator/a/d;->brd:Lcn/nubia/videogenerator/b/j;

    invoke-virtual {v5}, Lcn/nubia/videogenerator/b/j;->bOS()I

    move-result v5

    mul-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 160
    iget-object v5, p0, Lcn/nubia/videogenerator/a/d;->brd:Lcn/nubia/videogenerator/b/j;

    invoke-virtual {p1, v4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcn/nubia/videogenerator/b/j;->bOT(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)[B

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/videogenerator/a/d;->brd:Lcn/nubia/videogenerator/b/j;

    invoke-virtual {v6}, Lcn/nubia/videogenerator/b/j;->bOR()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/videogenerator/a/d;->brd:Lcn/nubia/videogenerator/b/j;

    invoke-virtual {v7}, Lcn/nubia/videogenerator/b/j;->bOS()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    invoke-static {v5, v2, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 162
    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v5, :cond_3d

    .line 163
    iget-object v5, p0, Lcn/nubia/videogenerator/a/d;->brd:Lcn/nubia/videogenerator/b/j;

    invoke-virtual {v5}, Lcn/nubia/videogenerator/b/j;->bOR()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/videogenerator/a/d;->brd:Lcn/nubia/videogenerator/b/j;

    invoke-virtual {v6}, Lcn/nubia/videogenerator/b/j;->bOS()I

    move-result v6

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    iput v5, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_3d

    :cond_10e
    const-string/jumbo v0, "Decoder"

    const-string/jumbo v1, "decodedData is null "

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "encoderOutputBuffer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_134
    iput v2, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_45

    .line 183
    :cond_138
    if-eqz p2, :cond_14a

    const-string/jumbo v0, "Decoder"

    const-string/jumbo v2, "end of stream reached"

    .line 186
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_143
    iput-boolean v1, p0, Lcn/nubia/videogenerator/a/d;->bqS:Z

    .line 189
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/d;->bNS()V

    goto/16 :goto_70

    :cond_14a
    const-string/jumbo v0, "Decoder"

    const-string/jumbo v2, "reached end of stream unexpectedly"

    .line 184
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_143
.end method

.method private bNS()V
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqW:Lcn/nubia/videogenerator/b/d;

    if-nez v0, :cond_5

    .line 212
    :goto_4
    return-void

    .line 210
    :cond_5
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqW:Lcn/nubia/videogenerator/b/d;

    iget-object v1, p0, Lcn/nubia/videogenerator/a/d;->bqU:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/b/d;->bro(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private declared-synchronized bNT(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 5

    .prologue
    monitor-enter p0

    .line 215
    :try_start_1
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqW:Lcn/nubia/videogenerator/b/d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    .line 218
    return-void

    .line 216
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqW:Lcn/nubia/videogenerator/b/d;

    iget-object v1, p0, Lcn/nubia/videogenerator/a/d;->bqU:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcn/nubia/videogenerator/b/d;->brn(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_5

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private bNU(Landroid/media/MediaFormat;)V
    .registers 5

    .prologue
    const-string/jumbo v0, "Decoder"

    .line 221
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

    .line 222
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqW:Lcn/nubia/videogenerator/b/d;

    if-nez v0, :cond_1f

    .line 225
    :goto_1e
    return-void

    .line 223
    :cond_1f
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqW:Lcn/nubia/videogenerator/b/d;

    invoke-interface {v0, p1}, Lcn/nubia/videogenerator/b/d;->brp(Landroid/media/MediaFormat;)V

    goto :goto_1e
.end method

.method private bNV()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    :try_start_2
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;

    if-nez v0, :cond_7

    .line 243
    :cond_6
    :goto_6
    return-void

    .line 229
    :cond_7
    iget-boolean v0, p0, Lcn/nubia/videogenerator/a/d;->bqS:Z

    if-nez v0, :cond_6

    .line 230
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/d;->bNQ()V

    .line 231
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;

    iget-boolean v1, p0, Lcn/nubia/videogenerator/a/d;->bqX:Z

    invoke-direct {p0, v0, v1}, Lcn/nubia/videogenerator/a/d;->bNR(Landroid/media/MediaCodec;Z)V
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_15} :catch_16

    goto :goto_6

    .line 233
    :catch_16
    move-exception v0

    .line 234
    new-array v0, v4, [B

    .line 235
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 236
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x4

    .line 237
    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 238
    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 239
    invoke-direct {p0, v0, v1}, Lcn/nubia/videogenerator/a/d;->bNT(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 240
    iput-boolean v4, p0, Lcn/nubia/videogenerator/a/d;->bqS:Z

    .line 241
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqY:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_6
.end method

.method private bNW()V
    .registers 3

    .prologue
    .line 246
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/videogenerator/a/d;->bqS:Z

    if-nez v0, :cond_3d

    .line 247
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqY:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 251
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqW:Lcn/nubia/videogenerator/b/d;

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/b/d;->brl(I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 258
    iget-object v1, p0, Lcn/nubia/videogenerator/a/d;->bqZ:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_19
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/d;->bNV()V

    .line 258
    monitor-exit v1

    goto :goto_0

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    throw v0

    .line 248
    :cond_21
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v0, 0x14

    .line 249
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 252
    :cond_2a
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v0, 0xa

    .line 253
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 254
    iget-object v1, p0, Lcn/nubia/videogenerator/a/d;->bqZ:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_35
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/d;->bNV()V

    .line 254
    monitor-exit v1

    goto :goto_0

    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3a

    throw v0

    .line 263
    :cond_3d
    return-void
.end method

.method static synthetic bNZ(Lcn/nubia/videogenerator/a/d;)V
    .registers 1

    .prologue
    .line 245
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/d;->bNW()V

    return-void
.end method


# virtual methods
.method public bNP(Lcn/nubia/videogenerator/b/d;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcn/nubia/videogenerator/a/d;->bqW:Lcn/nubia/videogenerator/b/d;

    .line 108
    return-void
.end method

.method public bNX(I)Z
    .registers 5

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    iget v1, p0, Lcn/nubia/videogenerator/a/d;->bra:I

    iget v2, p0, Lcn/nubia/videogenerator/a/d;->brb:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_9

    .line 277
    :goto_8
    return v0

    .line 275
    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public bNY(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 4

    .prologue
    .line 282
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    .line 283
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 284
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 285
    invoke-direct {p0, v0, p2}, Lcn/nubia/videogenerator/a/d;->bNO(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 286
    return-void
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "Decoder"

    const-string/jumbo v1, "releaseDecoder"

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/videogenerator/a/d;->bqS:Z

    .line 309
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;

    if-nez v0, :cond_19

    .line 320
    :goto_11
    iput-object v2, p0, Lcn/nubia/videogenerator/a/d;->brd:Lcn/nubia/videogenerator/b/j;

    .line 321
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqY:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 322
    return-void

    .line 310
    :cond_19
    iget-object v1, p0, Lcn/nubia/videogenerator/a/d;->bqZ:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_1c
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_21
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_21} :catch_2e
    .catchall {:try_start_1c .. :try_end_21} :catchall_2b

    .line 316
    :goto_21
    :try_start_21
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;

    .line 310
    monitor-exit v1

    goto :goto_11

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2b

    throw v0

    .line 313
    :catch_2e
    move-exception v0

    goto :goto_21
.end method

.method public start()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;

    if-nez v0, :cond_e

    .line 293
    :goto_5
    new-instance v0, Lcn/nubia/videogenerator/a/j;

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/a/j;-><init>(Lcn/nubia/videogenerator/a/d;Lcn/nubia/videogenerator/a/j;)V

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/j;->start()V

    .line 294
    return-void

    .line 291
    :cond_e
    iget-object v0, p0, Lcn/nubia/videogenerator/a/d;->bqV:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    goto :goto_5
.end method

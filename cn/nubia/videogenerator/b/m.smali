.class Lcn/nubia/videogenerator/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private brW:Ljava/util/TreeSet;

.field private brX:I

.field final synthetic brY:Lcn/nubia/videogenerator/b/f;


# direct methods
.method constructor <init>(Lcn/nubia/videogenerator/b/f;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/b/m;->brW:Ljava/util/TreeSet;

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcn/nubia/videogenerator/b/m;->brX:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v0}, Lcn/nubia/videogenerator/b/f;->bOu(Lcn/nubia/videogenerator/b/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v1, v2

    .line 105
    :goto_d
    iget-object v0, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v0}, Lcn/nubia/videogenerator/b/f;->bOu(Lcn/nubia/videogenerator/b/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 179
    :cond_19
    invoke-static {}, Lcn/nubia/videogenerator/b/f;->bOx()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Filter finish output: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/nubia/videogenerator/b/m;->brX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v2}, Lcn/nubia/videogenerator/b/f;->bOA(Lcn/nubia/videogenerator/b/f;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 105
    :cond_44
    iget-object v0, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v0}, Lcn/nubia/videogenerator/b/f;->bOv(Lcn/nubia/videogenerator/b/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_19

    .line 106
    iget-object v0, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v0}, Lcn/nubia/videogenerator/b/f;->bOw(Lcn/nubia/videogenerator/b/f;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    if-eqz v0, :cond_a1

    .line 110
    iget-object v0, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v0}, Lcn/nubia/videogenerator/b/f;->bOw(Lcn/nubia/videogenerator/b/f;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 114
    iget-object v0, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v0}, Lcn/nubia/videogenerator/b/f;->bOw(Lcn/nubia/videogenerator/b/f;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray()[Ljava/lang/Object;

    move-result-object v9

    .line 115
    iget-object v4, p0, Lcn/nubia/videogenerator/b/m;->brW:Ljava/util/TreeSet;

    array-length v0, v9

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v9, v0

    check-cast v0, Lcn/nubia/videogenerator/b/a;

    iget-object v0, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 119
    array-length v10, v9

    move v8, v2

    :goto_87
    if-ge v8, v10, :cond_c1

    aget-object v0, v9, v8

    .line 120
    check-cast v0, Lcn/nubia/videogenerator/b/a;

    .line 121
    iget-object v4, p0, Lcn/nubia/videogenerator/b/m;->brW:Ljava/util/TreeSet;

    iget-object v5, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 119
    :cond_9d
    :goto_9d
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_87

    .line 107
    :cond_a1
    invoke-static {}, Lcn/nubia/videogenerator/b/f;->bOx()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "InputQueue lost"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 111
    :cond_ad
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto/16 :goto_d

    .line 116
    :cond_b2
    invoke-static {}, Lcn/nubia/videogenerator/b/f;->bOx()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "no data update"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x14

    .line 117
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 176
    :cond_c1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v4, 0xa

    .line 177
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_d

    .line 122
    :cond_cb
    iget-object v4, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v6, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v6}, Lcn/nubia/videogenerator/b/f;->bOy(Lcn/nubia/videogenerator/b/f;)J

    move-result-wide v12

    cmp-long v4, v4, v12

    if-gez v4, :cond_176

    move v4, v7

    :goto_da
    if-nez v4, :cond_f8

    .line 123
    iget-object v4, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v6, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v6}, Lcn/nubia/videogenerator/b/f;->bOz(Lcn/nubia/videogenerator/b/f;)J

    move-result-wide v12

    cmp-long v4, v4, v12

    if-lez v4, :cond_179

    move v4, v7

    :goto_eb
    if-nez v4, :cond_f8

    .line 124
    iget-object v4, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v4}, Lcn/nubia/videogenerator/b/f;->bOA(Lcn/nubia/videogenerator/b/f;)I

    move-result v4

    iget v5, v0, Lcn/nubia/videogenerator/b/a;->brq:I

    and-int/2addr v4, v5

    if-nez v4, :cond_17c

    .line 142
    :cond_f8
    iget-object v4, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v6, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v6}, Lcn/nubia/videogenerator/b/f;->bOz(Lcn/nubia/videogenerator/b/f;)J

    move-result-wide v12

    cmp-long v4, v4, v12

    if-gtz v4, :cond_1c9

    move v4, v7

    :goto_107
    if-nez v4, :cond_9d

    .line 143
    iget v4, p0, Lcn/nubia/videogenerator/b/m;->brX:I

    if-eqz v4, :cond_1cc

    move v0, v1

    .line 159
    :goto_10e
    new-instance v11, Lcn/nubia/videogenerator/b/a;

    invoke-direct {v11}, Lcn/nubia/videogenerator/b/a;-><init>()V

    .line 160
    iget-object v1, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v1}, Lcn/nubia/videogenerator/b/f;->bOA(Lcn/nubia/videogenerator/b/f;)I

    move-result v1

    iput v1, v11, Lcn/nubia/videogenerator/b/a;->brq:I

    .line 161
    new-array v1, v3, [B

    iput-object v1, v11, Lcn/nubia/videogenerator/b/a;->data:[B

    .line 162
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, v11, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    .line 163
    iget-object v1, v11, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 164
    iget-object v1, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v1}, Lcn/nubia/videogenerator/b/f;->bOB(Lcn/nubia/videogenerator/b/f;)Lcn/nubia/videogenerator/b/d;

    move-result-object v1

    iget-object v4, v11, Lcn/nubia/videogenerator/b/a;->data:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, v11, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    .line 165
    iget-object v6, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v6}, Lcn/nubia/videogenerator/b/f;->bOC(Lcn/nubia/videogenerator/b/f;)Ljava/lang/String;

    move-result-object v6

    .line 164
    invoke-interface {v1, v4, v5, v6}, Lcn/nubia/videogenerator/b/d;->brn(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcn/nubia/videogenerator/b/f;->bOx()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "enough data has got,end of stream added:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v5}, Lcn/nubia/videogenerator/b/f;->bOA(Lcn/nubia/videogenerator/b/f;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v1}, Lcn/nubia/videogenerator/b/f;->bOE(Lcn/nubia/videogenerator/b/f;)Lcn/nubia/videogenerator/b/g;

    move-result-object v1

    if-nez v1, :cond_219

    .line 170
    :goto_16a
    iget-object v1, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v1}, Lcn/nubia/videogenerator/b/f;->bOv(Lcn/nubia/videogenerator/b/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v1, v0

    goto/16 :goto_9d

    :cond_176
    move v4, v2

    .line 122
    goto/16 :goto_da

    :cond_179
    move v4, v2

    .line 123
    goto/16 :goto_eb

    .line 125
    :cond_17c
    iget-object v4, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v4}, Lcn/nubia/videogenerator/b/f;->bOB(Lcn/nubia/videogenerator/b/f;)Lcn/nubia/videogenerator/b/d;

    move-result-object v4

    .line 126
    iget-object v5, v0, Lcn/nubia/videogenerator/b/a;->data:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v6, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget-object v11, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v11}, Lcn/nubia/videogenerator/b/f;->bOC(Lcn/nubia/videogenerator/b/f;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v5, v6, v11}, Lcn/nubia/videogenerator/b/d;->brn(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 127
    iget v4, p0, Lcn/nubia/videogenerator/b/m;->brX:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcn/nubia/videogenerator/b/m;->brX:I

    .line 128
    if-eqz v1, :cond_1aa

    .line 136
    :goto_19b
    iget-object v4, p0, Lcn/nubia/videogenerator/b/m;->brW:Ljava/util/TreeSet;

    iget-object v0, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9d

    .line 130
    :cond_1aa
    iget-object v1, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v1}, Lcn/nubia/videogenerator/b/f;->bOD(Lcn/nubia/videogenerator/b/f;)Lcn/nubia/videogenerator/b/h;

    move-result-object v1

    if-nez v1, :cond_1be

    .line 133
    invoke-static {}, Lcn/nubia/videogenerator/b/f;->bOx()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "big error, no listener for filter first out"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    goto :goto_19b

    .line 131
    :cond_1be
    iget-object v1, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v1}, Lcn/nubia/videogenerator/b/f;->bOD(Lcn/nubia/videogenerator/b/f;)Lcn/nubia/videogenerator/b/h;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/videogenerator/b/h;->brq()V

    move v1, v7

    .line 132
    goto :goto_19b

    :cond_1c9
    move v4, v2

    .line 142
    goto/16 :goto_107

    .line 144
    :cond_1cc
    invoke-static {}, Lcn/nubia/videogenerator/b/f;->bOx()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "serious!!!! no frame filterd out during the time window"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v4, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v4}, Lcn/nubia/videogenerator/b/f;->bOB(Lcn/nubia/videogenerator/b/f;)Lcn/nubia/videogenerator/b/d;

    move-result-object v4

    iget-object v5, v0, Lcn/nubia/videogenerator/b/a;->data:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v0, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    .line 146
    iget-object v6, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v6}, Lcn/nubia/videogenerator/b/f;->bOC(Lcn/nubia/videogenerator/b/f;)Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-interface {v4, v5, v0, v6}, Lcn/nubia/videogenerator/b/d;->brn(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 147
    iget v0, p0, Lcn/nubia/videogenerator/b/m;->brX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/videogenerator/b/m;->brX:I

    .line 148
    if-eqz v1, :cond_1f8

    move v0, v1

    goto/16 :goto_10e

    .line 150
    :cond_1f8
    iget-object v0, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v0}, Lcn/nubia/videogenerator/b/f;->bOD(Lcn/nubia/videogenerator/b/f;)Lcn/nubia/videogenerator/b/h;

    move-result-object v0

    if-nez v0, :cond_20d

    .line 153
    invoke-static {}, Lcn/nubia/videogenerator/b/f;->bOx()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "big error, no listener for filter first out"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 156
    goto/16 :goto_10e

    .line 151
    :cond_20d
    iget-object v0, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v0}, Lcn/nubia/videogenerator/b/f;->bOD(Lcn/nubia/videogenerator/b/f;)Lcn/nubia/videogenerator/b/h;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/videogenerator/b/h;->brq()V

    move v0, v7

    .line 152
    goto/16 :goto_10e

    .line 168
    :cond_219
    iget-object v1, p0, Lcn/nubia/videogenerator/b/m;->brY:Lcn/nubia/videogenerator/b/f;

    invoke-static {v1}, Lcn/nubia/videogenerator/b/f;->bOE(Lcn/nubia/videogenerator/b/f;)Lcn/nubia/videogenerator/b/g;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/videogenerator/b/g;->bOF()V

    goto/16 :goto_16a
.end method

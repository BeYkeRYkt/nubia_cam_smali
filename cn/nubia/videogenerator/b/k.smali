.class Lcn/nubia/videogenerator/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic brV:Lcn/nubia/videogenerator/b/i;


# direct methods
.method constructor <init>(Lcn/nubia/videogenerator/b/i;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcn/nubia/videogenerator/b/k;->brV:Lcn/nubia/videogenerator/b/i;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    .line 66
    iget-object v0, p0, Lcn/nubia/videogenerator/b/k;->brV:Lcn/nubia/videogenerator/b/i;

    invoke-static {v0}, Lcn/nubia/videogenerator/b/i;->bOK(Lcn/nubia/videogenerator/b/i;)J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/videogenerator/b/k;->brV:Lcn/nubia/videogenerator/b/i;

    invoke-static {v2}, Lcn/nubia/videogenerator/b/i;->bOL(Lcn/nubia/videogenerator/b/i;)Lcn/nubia/videogenerator/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/videogenerator/a/b;->bNr()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/videogenerator/b/k;->brV:Lcn/nubia/videogenerator/b/i;

    invoke-static {v2}, Lcn/nubia/videogenerator/b/i;->bOM(Lcn/nubia/videogenerator/b/i;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 67
    invoke-static {}, Lcn/nubia/videogenerator/b/i;->bON()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "samples cnt "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_45
    iget-object v1, p0, Lcn/nubia/videogenerator/b/k;->brV:Lcn/nubia/videogenerator/b/i;

    invoke-static {v1}, Lcn/nubia/videogenerator/b/i;->bOO(Lcn/nubia/videogenerator/b/i;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 69
    iget-object v1, p0, Lcn/nubia/videogenerator/b/k;->brV:Lcn/nubia/videogenerator/b/i;

    invoke-static {v1}, Lcn/nubia/videogenerator/b/i;->bOM(Lcn/nubia/videogenerator/b/i;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 70
    monitor-enter p0

    .line 71
    :try_start_5c
    iget-object v2, p0, Lcn/nubia/videogenerator/b/k;->brV:Lcn/nubia/videogenerator/b/i;

    invoke-static {v2}, Lcn/nubia/videogenerator/b/i;->bOP(Lcn/nubia/videogenerator/b/i;)Landroid/media/AudioRecord;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/nubia/videogenerator/b/k;->brV:Lcn/nubia/videogenerator/b/i;

    invoke-static {v4}, Lcn/nubia/videogenerator/b/i;->bOM(Lcn/nubia/videogenerator/b/i;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    .line 70
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_5c .. :try_end_70} :catchall_b2

    const/4 v3, -0x3

    .line 73
    if-eq v2, v3, :cond_b5

    .line 76
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 77
    new-instance v4, Lcn/nubia/videogenerator/b/a;

    invoke-direct {v4}, Lcn/nubia/videogenerator/b/a;-><init>()V

    .line 78
    iput-object v1, v4, Lcn/nubia/videogenerator/b/a;->data:[B

    .line 79
    iput v10, v4, Lcn/nubia/videogenerator/b/a;->brq:I

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iput-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 81
    iput v2, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 82
    iput v5, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    const/4 v1, 0x1

    .line 83
    iput v1, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 84
    iput-object v3, v4, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    .line 85
    iget-object v1, p0, Lcn/nubia/videogenerator/b/k;->brV:Lcn/nubia/videogenerator/b/i;

    invoke-static {v1}, Lcn/nubia/videogenerator/b/i;->bOQ(Lcn/nubia/videogenerator/b/i;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-lt v1, v0, :cond_c0

    .line 88
    iget-object v1, p0, Lcn/nubia/videogenerator/b/k;->brV:Lcn/nubia/videogenerator/b/i;

    invoke-static {v1}, Lcn/nubia/videogenerator/b/i;->bOQ(Lcn/nubia/videogenerator/b/i;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcn/nubia/videogenerator/b/k;->brV:Lcn/nubia/videogenerator/b/i;

    invoke-static {v1}, Lcn/nubia/videogenerator/b/i;->bOQ(Lcn/nubia/videogenerator/b/i;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 70
    :catchall_b2
    move-exception v0

    :try_start_b3
    monitor-exit p0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v0

    .line 74
    :cond_b5
    invoke-static {}, Lcn/nubia/videogenerator/b/i;->bON()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "read pcm error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 86
    :cond_c0
    iget-object v1, p0, Lcn/nubia/videogenerator/b/k;->brV:Lcn/nubia/videogenerator/b/i;

    invoke-static {v1}, Lcn/nubia/videogenerator/b/i;->bOQ(Lcn/nubia/videogenerator/b/i;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_45

    .line 93
    :cond_cb
    return-void
.end method

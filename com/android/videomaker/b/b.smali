.class public Lcom/android/videomaker/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aJA:I

.field private aJB:Landroid/media/MediaCodec$BufferInfo;

.field private aJC:Landroid/media/MediaFormat;

.field private aJD:Lcn/nubia/videogenerator/a/f;

.field private aJE:Lcom/android/videomaker/b/e;

.field private aJF:Landroid/media/MediaExtractor;

.field private aJG:Ljava/lang/String;

.field private aJH:Ljava/util/ArrayList;

.field private aJI:J

.field private aJJ:Landroid/os/Handler;

.field private aJK:Ljava/util/ArrayList;

.field private aJL:Z

.field private aJM:Ljava/lang/String;

.field private aJN:Lcom/android/videomaker/b/c;

.field private aJO:Lcom/android/videomaker/b/d;

.field private aJP:Ljava/lang/String;

.field private aJQ:Lcn/nubia/videogenerator/a/e;

.field private aJR:I

.field private aJS:J

.field private aJT:I

.field private aJU:Lcn/nubia/videogenerator/c/a;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/android/videomaker/b/b;->aJG:Ljava/lang/String;

    .line 54
    iput-wide v4, p0, Lcom/android/videomaker/b/b;->aJS:J

    .line 55
    iput-object v1, p0, Lcom/android/videomaker/b/b;->aJP:Ljava/lang/String;

    .line 56
    iput v2, p0, Lcom/android/videomaker/b/b;->mState:I

    .line 62
    iput v2, p0, Lcom/android/videomaker/b/b;->aJA:I

    .line 63
    const v0, 0xac44

    iput v0, p0, Lcom/android/videomaker/b/b;->aJR:I

    .line 64
    iput-wide v4, p0, Lcom/android/videomaker/b/b;->aJI:J

    .line 65
    iput-object v1, p0, Lcom/android/videomaker/b/b;->aJK:Ljava/util/ArrayList;

    .line 66
    iput-object v1, p0, Lcom/android/videomaker/b/b;->aJN:Lcom/android/videomaker/b/c;

    .line 67
    iput-object v1, p0, Lcom/android/videomaker/b/b;->aJO:Lcom/android/videomaker/b/d;

    .line 69
    iput-object v1, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    .line 70
    iput-object v1, p0, Lcom/android/videomaker/b/b;->aJC:Landroid/media/MediaFormat;

    .line 71
    iput-object v1, p0, Lcom/android/videomaker/b/b;->aJM:Ljava/lang/String;

    .line 73
    iput-boolean v2, p0, Lcom/android/videomaker/b/b;->aJL:Z

    .line 75
    new-instance v0, Lcom/android/videomaker/b/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/videomaker/b/f;-><init>(Lcom/android/videomaker/b/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/videomaker/b/b;->aJJ:Landroid/os/Handler;

    .line 90
    const-string/jumbo v0, "VideoGenerator CONSTRUCTOR "

    invoke-direct {p0, v0}, Lcom/android/videomaker/b/b;->aYK(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private aYD()V
    .registers 5

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/android/videomaker/b/b;->aJT:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/videomaker/b/b;->aJS:J

    .line 441
    return-void
.end method

.method private aYE()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 403
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 404
    const-string/jumbo v0, "woo"

    const-string/jumbo v1, "clearAudioPathList"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 406
    iput-object v2, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    .line 402
    :cond_15
    return-void
.end method

.method private aYF(Landroid/media/MediaFormat;)I
    .registers 4

    .prologue
    const/16 v0, 0x3200

    .line 155
    const-string/jumbo v1, "bitrate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v1

    .line 156
    if-gtz v1, :cond_c

    .line 159
    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b
.end method

.method private aYG()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 259
    iget-object v1, p0, Lcom/android/videomaker/b/b;->aJG:Ljava/lang/String;

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private aYH()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 144
    iget-object v2, p0, Lcom/android/videomaker/b/b;->aJG:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v2, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_a

    :cond_17
    move v0, v1

    goto :goto_a
.end method

.method private aYI(I)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 140
    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/android/videomaker/b/b;->aYH()Z

    move-result v0

    :cond_7
    return v0
.end method

.method private aYJ(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private aYK(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 471
    const-string/jumbo v0, "VideoGenerator"

    invoke-static {v0, p1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method private aYL(IIJ)V
    .registers 8

    .prologue
    .line 94
    const-string/jumbo v0, "notifyMessage"

    invoke-direct {p0, v0}, Lcom/android/videomaker/b/b;->aYK(Ljava/lang/String;)V

    .line 95
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 96
    iput p1, v0, Landroid/os/Message;->what:I

    .line 97
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 98
    iget-object v1, p0, Lcom/android/videomaker/b/b;->aJJ:Landroid/os/Handler;

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 93
    return-void
.end method

.method private aYN(Ljava/lang/String;)Landroid/media/MediaFormat;
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prepareAudioInput filename:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/videomaker/b/b;->aYK(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_22

    .line 165
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 167
    :cond_22
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    if-nez v0, :cond_2d

    .line 168
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/b/b;->aJB:Landroid/media/MediaCodec$BufferInfo;

    .line 170
    :cond_2d
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    .line 171
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    .line 174
    if-gez v0, :cond_42

    .line 175
    return-object v2

    .line 176
    :cond_42
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 177
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 178
    const-string/jumbo v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videomaker/b/b;->aJM:Ljava/lang/String;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareAudioInput  audioFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/videomaker/b/b;->aYK(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, v0}, Lcom/android/videomaker/b/b;->aYF(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/android/videomaker/b/b;->aJA:I

    .line 181
    iget-object v1, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 182
    const-string/jumbo v1, "VideoGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareAudioInput  audioBitRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/videomaker/b/b;->aJA:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-object v0
.end method

.method private declared-synchronized aYQ(I)V
    .registers 3

    .prologue
    monitor-enter p0

    .line 149
    :try_start_1
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJO:Lcom/android/videomaker/b/d;

    if-eqz v0, :cond_a

    .line 150
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJO:Lcom/android/videomaker/b/d;

    invoke-interface {v0, p0, p1}, Lcom/android/videomaker/b/d;->aYY(Lcom/android/videomaker/b/b;I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    .line 148
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic aYR(Lcom/android/videomaker/b/b;)Lcn/nubia/videogenerator/a/e;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJQ:Lcn/nubia/videogenerator/a/e;

    return-object v0
.end method

.method static synthetic aYS(Lcom/android/videomaker/b/b;)Lcn/nubia/videogenerator/c/a;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    return-object v0
.end method

.method static synthetic aYT(Lcom/android/videomaker/b/b;I)I
    .registers 2

    iput p1, p0, Lcom/android/videomaker/b/b;->mState:I

    return p1
.end method

.method static synthetic aYU(Lcom/android/videomaker/b/b;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/videomaker/b/b;->aYK(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic aYV(Lcom/android/videomaker/b/b;IIJ)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/videomaker/b/b;->aYL(IIJ)V

    return-void
.end method

.method static synthetic aYW(Lcom/android/videomaker/b/b;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/videomaker/b/b;->aYQ(I)V

    return-void
.end method


# virtual methods
.method public aYA()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 429
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJG:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 430
    iput-object v1, p0, Lcom/android/videomaker/b/b;->aJG:Ljava/lang/String;

    .line 428
    :cond_7
    return-void
.end method

.method public aYB(Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 437
    invoke-direct {p0}, Lcom/android/videomaker/b/b;->aYE()V

    .line 435
    :cond_f
    return-void
.end method

.method public aYC(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 370
    const-string/jumbo v0, "VideoGenerator"

    const-string/jumbo v1, "cancelExport "

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget v0, p0, Lcom/android/videomaker/b/b;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4d

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videomaker/b/b;->aJL:Z

    .line 373
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/videomaker/b/b;->mState:I

    .line 375
    :try_start_14
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJQ:Lcn/nubia/videogenerator/a/e;

    if-eqz v0, :cond_1d

    .line 376
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJQ:Lcn/nubia/videogenerator/a/e;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/e;->stop()V

    .line 378
    :cond_1d
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJE:Lcom/android/videomaker/b/e;

    if-eqz v0, :cond_26

    .line 379
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJE:Lcom/android/videomaker/b/e;

    invoke-virtual {v0}, Lcom/android/videomaker/b/e;->join()V

    .line 381
    :cond_26
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    if-eqz v0, :cond_2f

    .line 382
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/c/a;->stop()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2f} :catch_53
    .catchall {:try_start_14 .. :try_end_2f} :catchall_7b

    .line 389
    :cond_2f
    invoke-virtual {p0}, Lcom/android/videomaker/b/b;->aYt()V

    .line 391
    :try_start_32
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    if-eqz v0, :cond_45

    .line 392
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/videomaker/b/b;->aYN(Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/b/b;->aJC:Landroid/media/MediaFormat;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_45} :catch_4e

    .line 397
    :cond_45
    :goto_45
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 369
    :cond_4d
    :goto_4d
    return-void

    .line 394
    :catch_4e
    move-exception v0

    .line 395
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    .line 385
    :catch_53
    move-exception v0

    .line 386
    :try_start_54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_7b

    .line 389
    invoke-virtual {p0}, Lcom/android/videomaker/b/b;->aYt()V

    .line 391
    :try_start_5a
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    if-eqz v0, :cond_6d

    .line 392
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/videomaker/b/b;->aYN(Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/b/b;->aJC:Landroid/media/MediaFormat;
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_6d} :catch_76

    .line 397
    :cond_6d
    :goto_6d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_4d

    .line 394
    :catch_76
    move-exception v0

    .line 395
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6d

    .line 388
    :catchall_7b
    move-exception v0

    move-object v1, v0

    .line 389
    invoke-virtual {p0}, Lcom/android/videomaker/b/b;->aYt()V

    .line 391
    :try_start_80
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    if-eqz v0, :cond_93

    .line 392
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/videomaker/b/b;->aYN(Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/b/b;->aJC:Landroid/media/MediaFormat;
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_93} :catch_9c

    .line 397
    :cond_93
    :goto_93
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 388
    throw v1

    .line 394
    :catch_9c
    move-exception v0

    .line 395
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_93
.end method

.method public aYM(I)V
    .registers 4

    .prologue
    .line 362
    const-string/jumbo v0, "VideoGenerator"

    const-string/jumbo v1, " generate Movie end"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/videomaker/b/b;->mState:I

    .line 364
    invoke-virtual {p0}, Lcom/android/videomaker/b/b;->aYt()V

    .line 365
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJN:Lcom/android/videomaker/b/c;

    if-eqz v0, :cond_18

    .line 366
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJN:Lcom/android/videomaker/b/c;

    invoke-interface {v0, p0, p1}, Lcom/android/videomaker/b/c;->aYX(Lcom/android/videomaker/b/b;I)V

    .line 361
    :cond_18
    return-void
.end method

.method public aYO()V
    .registers 14

    .prologue
    const-wide/16 v6, 0x0

    const/16 v12, 0x64

    const/4 v2, 0x0

    .line 188
    const/16 v0, 0x5000

    .line 192
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 194
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    iget-object v1, p0, Lcom/android/videomaker/b/b;->aJC:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/c/a;->brp(Landroid/media/MediaFormat;)V

    .line 196
    :cond_12
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/c/a;->brm()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 197
    :cond_1e
    const-string/jumbo v0, "VideoGenerator"

    const-string/jumbo v1, "readAudioDirect  start: "

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    move-wide v4, v6

    .line 198
    :goto_29
    invoke-direct {p0, v1}, Lcom/android/videomaker/b/b;->aYI(I)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-direct {p0, v1}, Lcom/android/videomaker/b/b;->aYJ(I)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 199
    :cond_35
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_3b

    if-lez v1, :cond_4b

    .line 200
    :cond_3b
    :goto_3b
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 209
    :cond_41
    :goto_41
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 198
    :cond_47
    :goto_47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    .line 199
    :cond_4b
    iget-wide v8, p0, Lcom/android/videomaker/b/b;->aJI:J

    cmp-long v0, v8, v6

    if-eqz v0, :cond_41

    if-nez v1, :cond_41

    goto :goto_3b

    .line 200
    :cond_54
    iget-boolean v0, p0, Lcom/android/videomaker/b/b;->aJL:Z

    if-nez v0, :cond_41

    .line 202
    :try_start_58
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/videomaker/b/b;->aYN(Ljava/lang/String;)Landroid/media/MediaFormat;
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_63} :catch_64

    goto :goto_41

    .line 203
    :catch_64
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 209
    :cond_69
    iget-boolean v0, p0, Lcom/android/videomaker/b/b;->aJL:Z

    if-nez v0, :cond_47

    .line 210
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJB:Landroid/media/MediaCodec$BufferInfo;

    iput v12, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 211
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJB:Landroid/media/MediaCodec$BufferInfo;

    iget-object v8, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    invoke-virtual {v8, v3, v12}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    iput v8, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 212
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJB:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, p0, Lcom/android/videomaker/b/b;->aJI:J

    iget-object v10, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 214
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJB:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v10, p0, Lcom/android/videomaker/b/b;->aJS:J

    cmp-long v0, v8, v10

    if-ltz v0, :cond_a8

    .line 216
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJB:Landroid/media/MediaCodec$BufferInfo;

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 217
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 218
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    if-eqz v0, :cond_47

    .line 219
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    iget-object v8, p0, Lcom/android/videomaker/b/b;->aJM:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcn/nubia/videogenerator/c/a;->bro(Ljava/lang/String;)V

    goto :goto_47

    .line 224
    :cond_a8
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJB:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v0, :cond_c0

    .line 225
    iput-wide v4, p0, Lcom/android/videomaker/b/b;->aJI:J

    .line 226
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    if-eqz v0, :cond_47

    .line 227
    add-int/lit8 v0, v1, 0x1

    iget-object v8, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v0, v8, :cond_47

    .line 228
    const/4 v1, -0x1

    .line 229
    goto :goto_47

    .line 235
    :cond_c0
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJB:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 236
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    if-eqz v0, :cond_d1

    .line 237
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    iget-object v8, p0, Lcom/android/videomaker/b/b;->aJB:Landroid/media/MediaCodec$BufferInfo;

    iget-object v9, p0, Lcom/android/videomaker/b/b;->aJM:Ljava/lang/String;

    invoke-virtual {v0, v3, v8, v9}, Lcn/nubia/videogenerator/c/a;->brn(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 239
    :cond_d1
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_41

    .line 240
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_41

    .line 186
    :cond_dc
    return-void
.end method

.method public aYP(Lcom/android/videomaker/b/d;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/videomaker/b/b;->aJO:Lcom/android/videomaker/b/d;

    .line 131
    return-void
.end method

.method public aYs()I
    .registers 2

    .prologue
    .line 446
    iget v0, p0, Lcom/android/videomaker/b/b;->mState:I

    return v0
.end method

.method public aYt()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 450
    const-string/jumbo v0, "VideoGenerator"

    const-string/jumbo v1, "************releaseGenerator*************"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_16

    .line 452
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 453
    iput-object v2, p0, Lcom/android/videomaker/b/b;->aJF:Landroid/media/MediaExtractor;

    .line 455
    :cond_16
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    if-eqz v0, :cond_1c

    .line 456
    iput-object v2, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    .line 458
    :cond_1c
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJQ:Lcn/nubia/videogenerator/a/e;

    if-eqz v0, :cond_22

    .line 459
    iput-object v2, p0, Lcom/android/videomaker/b/b;->aJQ:Lcn/nubia/videogenerator/a/e;

    .line 461
    :cond_22
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJD:Lcn/nubia/videogenerator/a/f;

    if-eqz v0, :cond_28

    .line 462
    iput-object v2, p0, Lcom/android/videomaker/b/b;->aJD:Lcn/nubia/videogenerator/a/f;

    .line 464
    :cond_28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/videomaker/b/b;->aJI:J

    .line 465
    iput-boolean v3, p0, Lcom/android/videomaker/b/b;->aJL:Z

    .line 466
    iput v3, p0, Lcom/android/videomaker/b/b;->mState:I

    .line 449
    return-void
.end method

.method public aYu(Lcom/android/videomaker/b/c;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/videomaker/b/b;->aJN:Lcom/android/videomaker/b/c;

    .line 127
    return-void
.end method

.method public aYv(Ljava/lang/String;ILcom/android/videomaker/b/d;)V
    .registers 14

    .prologue
    const/4 v9, 0x0

    const/16 v3, 0x280

    const/16 v1, 0x1e0

    const/4 v8, 0x0

    .line 264
    if-nez p1, :cond_9

    .line 265
    return-void

    .line 268
    :cond_9
    iput p2, p0, Lcom/android/videomaker/b/b;->aJT:I

    .line 269
    iput-object p1, p0, Lcom/android/videomaker/b/b;->aJP:Ljava/lang/String;

    .line 271
    invoke-direct {p0}, Lcom/android/videomaker/b/b;->aYD()V

    .line 272
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    const-string/jumbo v0, "VideoGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "filename: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "fps = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/videomaker/b/b;->aJT:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 274
    const-string/jumbo v5, "videoduration:"

    .line 273
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 274
    iget-wide v6, p0, Lcom/android/videomaker/b/b;->aJS:J

    .line 273
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0, p3}, Lcom/android/videomaker/b/b;->aYP(Lcom/android/videomaker/b/d;)V

    .line 276
    new-instance v5, Lcn/nubia/videogenerator/a/a;

    invoke-direct {v5}, Lcn/nubia/videogenerator/a/a;-><init>()V

    .line 277
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJK:Ljava/util/ArrayList;

    if-eqz v0, :cond_171

    .line 278
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 279
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJK:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_171

    .line 281
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 282
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 285
    :goto_74
    if-le v2, v0, :cond_132

    .line 286
    invoke-virtual {v5, v3, v1}, Lcn/nubia/videogenerator/a/a;->bNe(II)V

    .line 290
    :goto_79
    iget v0, p0, Lcom/android/videomaker/b/b;->aJT:I

    invoke-virtual {v5, v0}, Lcn/nubia/videogenerator/a/a;->bMW(I)V

    .line 292
    new-instance v0, Lcn/nubia/videogenerator/a/e;

    invoke-direct {v0}, Lcn/nubia/videogenerator/a/e;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/b/b;->aJQ:Lcn/nubia/videogenerator/a/e;

    .line 293
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJQ:Lcn/nubia/videogenerator/a/e;

    iget-object v1, p0, Lcom/android/videomaker/b/b;->aJK:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/a/e;->bOa(Ljava/util/ArrayList;)V

    .line 294
    new-instance v0, Lcn/nubia/videogenerator/c/a;

    iget-wide v2, p0, Lcom/android/videomaker/b/b;->aJS:J

    invoke-direct {v0, v2, v3}, Lcn/nubia/videogenerator/c/a;-><init>(J)V

    iput-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    .line 296
    :try_start_95
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    invoke-virtual {v0, v5}, Lcn/nubia/videogenerator/c/a;->bPa(Lcn/nubia/videogenerator/a/a;)V
    :try_end_9a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_95 .. :try_end_9a} :catch_137

    .line 303
    :goto_9a
    :try_start_9a
    invoke-direct {p0}, Lcom/android/videomaker/b/b;->aYG()Z

    move-result v0

    if-nez v0, :cond_f3

    .line 304
    const-string/jumbo v0, "chenpeng"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAudioPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videomaker/b/b;->aJG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJG:Ljava/lang/String;

    if-eqz v0, :cond_146

    .line 306
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    iget-object v1, p0, Lcom/android/videomaker/b/b;->aJG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/c/a;->bOY(Ljava/lang/String;)V

    .line 307
    new-instance v0, Lcn/nubia/videogenerator/a/b;

    invoke-direct {v0}, Lcn/nubia/videogenerator/a/b;-><init>()V

    .line 308
    iget-object v1, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    invoke-virtual {v1, v0}, Lcn/nubia/videogenerator/c/a;->bPb(Lcn/nubia/videogenerator/a/b;)V

    .line 309
    new-instance v0, Lcn/nubia/videogenerator/a/f;

    invoke-direct {v0}, Lcn/nubia/videogenerator/a/f;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/b/b;->aJD:Lcn/nubia/videogenerator/a/f;

    .line 310
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    iget-object v1, p0, Lcom/android/videomaker/b/b;->aJD:Lcn/nubia/videogenerator/a/f;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/c/a;->bPe(Lcn/nubia/videogenerator/a/f;)V

    .line 311
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    iget-object v1, p0, Lcom/android/videomaker/b/b;->aJD:Lcn/nubia/videogenerator/a/f;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/c/a;->bPf(Lcn/nubia/videogenerator/a/f;)V

    .line 317
    :cond_f3
    :goto_f3
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/c/a;->bOX(Ljava/lang/String;)V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_fc} :catch_14d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9a .. :try_end_fc} :catch_152

    .line 325
    :goto_fc
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    iget-object v1, p0, Lcom/android/videomaker/b/b;->aJQ:Lcn/nubia/videogenerator/a/e;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/c/a;->bPd(Lcn/nubia/videogenerator/a/e;)V

    .line 326
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    new-instance v1, Lcom/android/videomaker/b/g;

    invoke-direct {v1, p0}, Lcom/android/videomaker/b/g;-><init>(Lcom/android/videomaker/b/b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/c/a;->bPg(Lcn/nubia/videogenerator/b/b;)V

    .line 341
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    new-instance v1, Lcom/android/videomaker/b/h;

    invoke-direct {v1, p0}, Lcom/android/videomaker/b/h;-><init>(Lcom/android/videomaker/b/b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/c/a;->bPh(Lcn/nubia/videogenerator/b/c;)V

    .line 348
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    iget-wide v2, p0, Lcom/android/videomaker/b/b;->aJS:J

    invoke-virtual {v0, v2, v3}, Lcn/nubia/videogenerator/c/a;->bPi(J)V

    .line 349
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/c/a;->bOZ()V

    .line 350
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    if-eqz v0, :cond_12b

    iget-boolean v0, p0, Lcom/android/videomaker/b/b;->aJL:Z

    if-eqz v0, :cond_160

    .line 354
    :cond_12b
    :goto_12b
    iget-boolean v0, p0, Lcom/android/videomaker/b/b;->aJL:Z

    if-eqz v0, :cond_16d

    .line 355
    iput v9, p0, Lcom/android/videomaker/b/b;->mState:I

    .line 263
    :goto_131
    return-void

    .line 288
    :cond_132
    invoke-virtual {v5, v1, v3}, Lcn/nubia/videogenerator/a/a;->bNe(II)V

    goto/16 :goto_79

    .line 297
    :catch_137
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 299
    const-string/jumbo v0, "VideoGenerator"

    const-string/jumbo v1, "video do not support"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9a

    .line 313
    :cond_146
    :try_start_146
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJU:Lcn/nubia/videogenerator/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/c/a;->bPb(Lcn/nubia/videogenerator/a/b;)V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_14c} :catch_14d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_146 .. :try_end_14c} :catch_152

    goto :goto_f3

    .line 318
    :catch_14d
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_fc

    .line 320
    :catch_152
    move-exception v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 322
    const-string/jumbo v0, "VideoGenerator"

    const-string/jumbo v1, "audio do not support"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fc

    .line 351
    :cond_160
    new-instance v0, Lcom/android/videomaker/b/e;

    invoke-direct {v0, p0, v8}, Lcom/android/videomaker/b/e;-><init>(Lcom/android/videomaker/b/b;Lcom/android/videomaker/b/e;)V

    iput-object v0, p0, Lcom/android/videomaker/b/b;->aJE:Lcom/android/videomaker/b/e;

    .line 352
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJE:Lcom/android/videomaker/b/e;

    invoke-virtual {v0}, Lcom/android/videomaker/b/e;->start()V

    goto :goto_12b

    .line 357
    :cond_16d
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/videomaker/b/b;->mState:I

    goto :goto_131

    :cond_171
    move v0, v1

    move v2, v3

    goto/16 :goto_74
.end method

.method public aYw(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJK:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/b/b;->aJK:Ljava/util/ArrayList;

    .line 106
    :cond_b
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public aYx()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJK:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 119
    const-string/jumbo v0, "removeAllImageItems"

    invoke-direct {p0, v0}, Lcom/android/videomaker/b/b;->aYK(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    iput-object v1, p0, Lcom/android/videomaker/b/b;->aJK:Ljava/util/ArrayList;

    .line 122
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method public aYy(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/videomaker/b/b;->aJG:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public aYz(Ljava/util/ArrayList;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 415
    const-string/jumbo v0, "woo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AddAudioTraqck audioList: size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3a

    .line 417
    iput-object v3, p0, Lcom/android/videomaker/b/b;->aJG:Ljava/lang/String;

    .line 418
    iput-object p1, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    .line 420
    :try_start_2b
    iget-object v0, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/videomaker/b/b;->aYN(Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/b/b;->aJC:Landroid/media/MediaFormat;
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3a} :catch_3b

    .line 414
    :cond_3a
    return-void

    .line 421
    :catch_3b
    move-exception v0

    .line 422
    iget-object v1, p0, Lcom/android/videomaker/b/b;->aJH:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/videomaker/b/b;->aYB(Ljava/util/ArrayList;)V

    .line 423
    throw v0
.end method

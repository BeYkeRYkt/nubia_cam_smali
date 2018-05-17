.class Lcom/android/common/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Vj:Lcom/android/common/ActivityBase;

.field private Vk:Landroid/media/MediaCodec$BufferInfo;

.field private Vl:Ljava/lang/String;

.field private Vm:I

.field private Vn:I

.field private Vo:Lcom/android/common/f/e;

.field private Vp:I

.field private Vq:Ljava/lang/Object;

.field private Vr:Landroid/media/MediaCodec;

.field private Vs:Landroid/media/MediaMuxer;

.field private Vt:Z

.field private Vu:Z

.field private Vv:Landroid/view/Surface;

.field private Vw:J

.field private Vx:I

.field private Vy:I

.field private Vz:Lcom/android/common/f/g;


# direct methods
.method public constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v2, p0, Lcom/android/common/f/a;->Vz:Lcom/android/common/f/g;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/f/a;->Vq:Ljava/lang/Object;

    .line 59
    iput-object v2, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    .line 60
    iput-object v2, p0, Lcom/android/common/f/a;->Vo:Lcom/android/common/f/e;

    .line 61
    iput-object v2, p0, Lcom/android/common/f/a;->Vk:Landroid/media/MediaCodec$BufferInfo;

    .line 62
    iput-object v2, p0, Lcom/android/common/f/a;->Vs:Landroid/media/MediaMuxer;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/f/a;->Vy:I

    .line 64
    iput-boolean v3, p0, Lcom/android/common/f/a;->Vt:Z

    .line 65
    iput v3, p0, Lcom/android/common/f/a;->Vx:I

    .line 66
    iput-boolean v3, p0, Lcom/android/common/f/a;->Vu:Z

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/common/f/a;->Vw:J

    .line 68
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/common/f/a;->Vp:I

    .line 69
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/common/f/a;->Vm:I

    .line 70
    iput v3, p0, Lcom/android/common/f/a;->Vn:I

    .line 72
    iput-object v2, p0, Lcom/android/common/f/a;->Vl:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/android/common/f/g;

    invoke-virtual {p1}, Lcom/android/common/ActivityBase;->ask()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/f/g;-><init>(Lcom/android/common/cameradevice/p;)V

    iput-object v0, p0, Lcom/android/common/f/a;->Vz:Lcom/android/common/f/g;

    .line 82
    iput-object p1, p0, Lcom/android/common/f/a;->Vj:Lcom/android/common/ActivityBase;

    .line 80
    return-void
.end method

.method private ZU(Ljava/lang/String;J)Ljava/lang/String;
    .registers 8

    .prologue
    .line 112
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 113
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 114
    iget-object v2, p0, Lcom/android/common/f/a;->Vj:Lcom/android/common/ActivityBase;

    const v3, 0x7f0a027a

    invoke-virtual {v2, v3}, Lcom/android/common/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ZV(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 296
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 295
    :cond_8
    :goto_8
    return-void

    .line 297
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 299
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_8
.end method

.method private ZW(Z)V
    .registers 14

    .prologue
    .line 305
    const-string/jumbo v0, "llw"

    const-string/jumbo v1, "drainEncoder enter"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    if-eqz p1, :cond_10

    .line 307
    iget-object v0, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 309
    :cond_10
    iget-object v0, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 311
    :cond_16
    :goto_16
    iget-object v1, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/android/common/f/a;->Vk:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 312
    const/4 v2, -0x1

    if-ne v1, v2, :cond_38

    .line 313
    if-nez p1, :cond_16

    .line 314
    const-string/jumbo v0, "llw"

    const-string/jumbo v1, "drainEncoder break0"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :goto_2e
    const-string/jumbo v0, "llw"

    const-string/jumbo v1, "drainEncoder exit"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void

    .line 317
    :cond_38
    const/4 v2, -0x3

    if-ne v1, v2, :cond_42

    .line 318
    iget-object v0, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_16

    .line 319
    :cond_42
    const/4 v2, -0x2

    if-ne v1, v2, :cond_69

    .line 320
    iget-boolean v1, p0, Lcom/android/common/f/a;->Vt:Z

    if-eqz v1, :cond_52

    .line 321
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "format changed twice"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_52
    iget-object v1, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 324
    iget-object v2, p0, Lcom/android/common/f/a;->Vs:Landroid/media/MediaMuxer;

    invoke-virtual {v2, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/android/common/f/a;->Vy:I

    .line 325
    iget-object v1, p0, Lcom/android/common/f/a;->Vs:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    .line 326
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/common/f/a;->Vt:Z

    goto :goto_16

    .line 328
    :cond_69
    aget-object v2, v0, v1

    .line 329
    if-nez v2, :cond_8e

    .line 330
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encoderOutputBuffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_8e
    iget-object v3, p0, Lcom/android/common/f/a;->Vk:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9b

    .line 333
    iget-object v3, p0, Lcom/android/common/f/a;->Vk:Landroid/media/MediaCodec$BufferInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 335
    :cond_9b
    iget-object v3, p0, Lcom/android/common/f/a;->Vk:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_14d

    .line 336
    iget-boolean v3, p0, Lcom/android/common/f/a;->Vt:Z

    if-nez v3, :cond_ae

    .line 337
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "muxer hasn\'t started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_ae
    iget-object v3, p0, Lcom/android/common/f/a;->Vk:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 341
    iget-object v3, p0, Lcom/android/common/f/a;->Vk:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v4, p0, Lcom/android/common/f/a;->Vk:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 346
    iget-object v3, p0, Lcom/android/common/f/a;->Vk:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, p0, Lcom/android/common/f/a;->Vw:J

    iput-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 347
    iget-wide v6, p0, Lcom/android/common/f/a;->Vw:J

    iget v3, p0, Lcom/android/common/f/a;->Vm:I

    int-to-long v8, v3

    const-wide/32 v10, 0xf4240

    div-long v8, v10, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/common/f/a;->Vw:J

    .line 348
    const-string/jumbo v3, "llw"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "drainEncoder mTime is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/common/f/a;->Vk:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mFPS is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/common/f/a;->Vm:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v3, p0, Lcom/android/common/f/a;->Vs:Landroid/media/MediaMuxer;

    iget v6, p0, Lcom/android/common/f/a;->Vy:I

    iget-object v7, p0, Lcom/android/common/f/a;->Vk:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v3, v6, v2, v7}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 350
    iget v2, p0, Lcom/android/common/f/a;->Vn:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/common/f/a;->Vn:I

    .line 351
    iget v2, p0, Lcom/android/common/f/a;->Vx:I

    iget-object v3, p0, Lcom/android/common/f/a;->Vk:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/common/f/a;->Vx:I

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    .line 353
    const-wide/16 v4, 0x32

    cmp-long v4, v2, v4

    if-lez v4, :cond_14d

    const-string/jumbo v4, "DEBUG"

    const-string/jumbo v5, "XXX: dt=%d, size=%.2f"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    iget v2, p0, Lcom/android/common/f/a;->Vx:I

    int-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_14d
    iget-object v2, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 360
    iget-object v1, p0, Lcom/android/common/f/a;->Vk:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_16

    .line 361
    const-string/jumbo v0, "llw"

    const-string/jumbo v1, "drainEncoder break1"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e
.end method

.method private aaa(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 284
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 286
    const/4 v0, 0x1

    return v0

    .line 288
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private aab()Z
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/common/f/a;->Vu:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private aac(IILjava/lang/String;)V
    .registers 9

    .prologue
    .line 87
    const-string/jumbo v0, "llw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareEncoder width is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/android/common/f/a;->Vk:Landroid/media/MediaCodec$BufferInfo;

    .line 91
    :try_start_2c
    iget-object v0, p0, Lcom/android/common/f/a;->Vz:Lcom/android/common/f/g;

    iget-object v0, v0, Lcom/android/common/f/g;->VV:Ljava/lang/String;

    .line 90
    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 94
    const-string/jumbo v1, "color-format"

    .line 95
    const v2, 0x7f000789

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 96
    const-string/jumbo v1, "bitrate"

    iget-object v2, p0, Lcom/android/common/f/a;->Vz:Lcom/android/common/f/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v2, 0xa00000

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 97
    const-string/jumbo v1, "frame-rate"

    iget v2, p0, Lcom/android/common/f/a;->Vm:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 98
    const-string/jumbo v1, "i-frame-interval"

    iget-object v2, p0, Lcom/android/common/f/a;->Vz:Lcom/android/common/f/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 99
    iget-object v1, p0, Lcom/android/common/f/a;->Vz:Lcom/android/common/f/g;

    iget-object v1, v1, Lcom/android/common/f/g;->VV:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    .line 100
    iget-object v1, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p3, v0, v1}, Lcom/android/common/f/a;->ZU(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/f/a;->Vl:Ljava/lang/String;

    .line 102
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/android/common/f/a;->Vl:Ljava/lang/String;

    .line 103
    const/4 v2, 0x0

    .line 102
    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/common/f/a;->Vs:Landroid/media/MediaMuxer;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_84} :catch_85

    .line 86
    :goto_84
    return-void

    .line 105
    :catch_85
    move-exception v0

    .line 106
    invoke-direct {p0}, Lcom/android/common/f/a;->aad()V

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_84
.end method

.method private aad()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 250
    iget-object v0, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    if-eqz v0, :cond_11

    .line 251
    iget-object v0, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 252
    iget-object v0, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 253
    iput-object v1, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    .line 255
    :cond_11
    iget-object v0, p0, Lcom/android/common/f/a;->Vv:Landroid/view/Surface;

    if-eqz v0, :cond_1c

    .line 256
    iget-object v0, p0, Lcom/android/common/f/a;->Vv:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 257
    iput-object v1, p0, Lcom/android/common/f/a;->Vv:Landroid/view/Surface;

    .line 260
    :cond_1c
    :try_start_1c
    iget-boolean v0, p0, Lcom/android/common/f/a;->Vt:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/common/f/a;->Vs:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_6e

    .line 261
    const-string/jumbo v0, "llw"

    const-string/jumbo v1, "mMediaMuxer.stop()"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/common/f/a;->Vs:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 263
    iget-object v0, p0, Lcom/android/common/f/a;->Vs:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/f/a;->Vs:Landroid/media/MediaMuxer;

    .line 266
    iget v0, p0, Lcom/android/common/f/a;->Vn:I

    iget v1, p0, Lcom/android/common/f/a;->Vm:I

    if-gt v0, v1, :cond_72

    .line 267
    iget-object v0, p0, Lcom/android/common/f/a;->Vl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/common/f/a;->ZV(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v0, "meeee"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Del:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/f/a;->Vn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/f/a;->Vm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_6e} :catch_80

    .line 280
    :cond_6e
    :goto_6e
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/f/a;->Vn:I

    .line 249
    return-void

    .line 270
    :cond_72
    :try_start_72
    iget-object v0, p0, Lcom/android/common/f/a;->Vl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/common/f/a;->aaa(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 271
    iget-object v0, p0, Lcom/android/common/f/a;->Vl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/common/f/a;->aag(Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/IllegalStateException; {:try_start_72 .. :try_end_7f} :catch_80

    goto :goto_6e

    .line 275
    :catch_80
    move-exception v0

    .line 276
    iget-object v1, p0, Lcom/android/common/f/a;->Vl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/common/f/a;->ZV(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v1, "llw"

    const-string/jumbo v2, "mMediaMuxer.stop() failed"

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_6e
.end method

.method private aag(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 181
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 182
    const-string/jumbo v0, "mime_type"

    const-string/jumbo v1, "video/mp4"

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v0, "_data"

    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_81

    .line 185
    :try_start_15
    iget-object v0, p0, Lcom/android/common/f/a;->Vj:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_41

    .line 187
    const-string/jumbo v1, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 188
    const-string/jumbo v1, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
    :try_end_41
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_41} :catch_61
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_41} :catch_81

    .line 194
    :cond_41
    :goto_41
    :try_start_41
    new-instance v0, Lcom/android/common/b/e;

    iget-object v1, p0, Lcom/android/common/f/a;->Vj:Lcom/android/common/ActivityBase;

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v1

    .line 195
    new-instance v5, Lcom/android/common/f/h;

    invoke-direct {v5, p0, p1}, Lcom/android/common/f/h;-><init>(Lcom/android/common/f/a;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v3, p1

    .line 194
    invoke-direct/range {v0 .. v5}, Lcom/android/common/b/e;-><init>(Lcom/android/common/appService/W;Landroid/content/ContentValues;Ljava/lang/String;ILcom/android/common/b/f;)V

    .line 206
    iget-object v1, p0, Lcom/android/common/f/a;->Vj:Lcom/android/common/ActivityBase;

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 178
    :goto_60
    return-void

    .line 190
    :catch_61
    move-exception v0

    .line 191
    const-string/jumbo v1, "MyRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get location error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_80} :catch_81

    goto :goto_41

    .line 207
    :catch_81
    move-exception v0

    .line 208
    const-string/jumbo v1, "MyRecorder"

    const-string/jumbo v2, "updateContentResolver fail"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_60
.end method

.method static synthetic aah(Lcom/android/common/f/a;)Lcom/android/common/ActivityBase;
    .registers 2

    iget-object v0, p0, Lcom/android/common/f/a;->Vj:Lcom/android/common/ActivityBase;

    return-object v0
.end method


# virtual methods
.method public ZT()V
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/common/f/a;->Vl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/common/f/a;->ZV(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public ZX(IILjava/lang/String;I)Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 135
    iget-object v0, p0, Lcom/android/common/f/a;->Vv:Landroid/view/Surface;

    if-eqz v0, :cond_7

    .line 136
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_7
    const-string/jumbo v0, "llw"

    const-string/jumbo v1, "firstTimeSetup is ok "

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :try_start_10
    iget-object v0, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    if-nez v0, :cond_17

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/android/common/f/a;->aac(IILjava/lang/String;)V

    .line 143
    :cond_17
    invoke-virtual {p0, p4}, Lcom/android/common/f/a;->setDegrees(I)V

    .line 144
    iget-object v0, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/f/a;->Vv:Landroid/view/Surface;

    .line 146
    const-string/jumbo v0, "llw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "firstTimeSetup mSurface is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/f/a;->Vv:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/common/f/a;->Vr:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/f/a;->Vu:Z

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/common/f/a;->Vw:J
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4a} :catch_4b

    .line 153
    :goto_4a
    return v3

    .line 150
    :catch_4b
    move-exception v0

    .line 151
    invoke-direct {p0}, Lcom/android/common/f/a;->aad()V

    goto :goto_4a
.end method

.method public ZY()J
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/common/f/a;->Vl:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 375
    const-wide/16 v0, 0x0

    return-wide v0

    .line 377
    :cond_7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/common/f/a;->Vl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public ZZ()Landroid/view/Surface;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/common/f/a;->Vv:Landroid/view/Surface;

    return-object v0
.end method

.method public aae(I)V
    .registers 5

    .prologue
    .line 130
    iput p1, p0, Lcom/android/common/f/a;->Vm:I

    .line 131
    const-string/jumbo v0, "llw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFPS mFPS is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/f/a;->Vm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public aaf()V
    .registers 3

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/common/f/a;->aab()Z

    move-result v0

    if-nez v0, :cond_7

    .line 168
    return-void

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/android/common/f/a;->Vq:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    const/4 v1, 0x0

    :try_start_b
    invoke-direct {p0, v1}, Lcom/android/common/f/a;->ZW(Z)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    monitor-exit v0

    .line 166
    return-void

    .line 170
    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setDegrees(I)V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/common/f/a;->Vs:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_9

    .line 121
    iget-object v0, p0, Lcom/android/common/f/a;->Vs:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 119
    :cond_9
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-direct {p0}, Lcom/android/common/f/a;->aab()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 237
    iget-object v0, p0, Lcom/android/common/f/a;->Vq:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    const/4 v1, 0x1

    :try_start_b
    invoke-direct {p0, v1}, Lcom/android/common/f/a;->ZW(Z)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_17

    monitor-exit v0

    .line 240
    invoke-direct {p0}, Lcom/android/common/f/a;->aad()V

    .line 241
    iput-boolean v2, p0, Lcom/android/common/f/a;->Vu:Z

    .line 242
    iput-boolean v2, p0, Lcom/android/common/f/a;->Vt:Z

    .line 235
    :cond_16
    return-void

    .line 237
    :catchall_17
    move-exception v1

    monitor-exit v0

    throw v1
.end method

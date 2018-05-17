.class public Lcom/android/normal/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private aZI:Lcom/android/common/cameradevice/j;

.field private aZJ:I

.field private aZK:I

.field private aZL:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private aZM:I

.field private aZN:Lcom/android/common/appService/k;

.field private aZO:I

.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/normal/a/a;->mState:I

    .line 35
    return-void
.end method

.method private bqd([B)Z
    .registers 5

    .prologue
    .line 115
    array-length v0, p1

    iget v1, p0, Lcom/android/normal/a/a;->aZO:I

    iget v2, p0, Lcom/android/normal/a/a;->aZJ:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_3c

    .line 116
    const-string/jumbo v0, "meeeeYuvImageGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prew changed form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/normal/a/a;->aZO:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/normal/a/a;->aZJ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_3c
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public bqe()V
    .registers 3

    .prologue
    .line 96
    iget v0, p0, Lcom/android/normal/a/a;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 97
    const-string/jumbo v0, "meeeeYuvImageGenerator"

    const-string/jumbo v1, "PreviewCallback reRegistered"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/normal/a/a;->aZN:Lcom/android/common/appService/k;

    iget-object v1, p0, Lcom/android/normal/a/a;->aZI:Lcom/android/common/cameradevice/j;

    invoke-virtual {v1}, Lcom/android/common/cameradevice/j;->KY()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/common/appService/k;->jO(Landroid/hardware/Camera$PreviewCallback;I)V

    .line 95
    :cond_19
    return-void
.end method

.method public bqf(Lcom/android/common/cameradevice/j;Lcn/nubia/videogenerator/a/a;Lcom/android/common/appService/k;)V
    .registers 7

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/normal/a/a;->aZI:Lcom/android/common/cameradevice/j;

    .line 49
    invoke-virtual {p2}, Lcn/nubia/videogenerator/a/a;->bNc()I

    move-result v0

    iput v0, p0, Lcom/android/normal/a/a;->aZO:I

    .line 50
    invoke-virtual {p2}, Lcn/nubia/videogenerator/a/a;->bNd()I

    move-result v0

    iput v0, p0, Lcom/android/normal/a/a;->aZJ:I

    .line 51
    iput-object p3, p0, Lcom/android/normal/a/a;->aZN:Lcom/android/common/appService/k;

    .line 52
    const-string/jumbo v0, "meeeeYuvImageGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "YUVDataCacher w/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/normal/a/a;->aZO:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/normal/a/a;->aZJ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public bqg(I)V
    .registers 2

    .prologue
    .line 60
    iput p1, p0, Lcom/android/normal/a/a;->aZK:I

    .line 59
    return-void
.end method

.method public bqh(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/normal/a/a;->aZL:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 55
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 66
    const-string/jumbo v0, "meeeeYuvImageGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prew@:Size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/android/normal/a/a;->bqd([B)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 68
    new-instance v0, Lcn/nubia/videogenerator/b/a;

    invoke-direct {v0}, Lcn/nubia/videogenerator/b/a;-><init>()V

    .line 69
    iput-object p1, v0, Lcn/nubia/videogenerator/b/a;->data:[B

    .line 70
    iput v3, v0, Lcn/nubia/videogenerator/b/a;->brq:I

    .line 71
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    .line 72
    iget-object v1, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 73
    iget-object v1, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 74
    iget-object v1, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    array-length v2, p1

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 75
    iget-object v1, v0, Lcn/nubia/videogenerator/b/a;->brp:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 76
    iget-object v1, p0, Lcom/android/normal/a/a;->aZL:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    iget v2, p0, Lcom/android/normal/a/a;->aZM:I

    if-le v1, v2, :cond_5a

    .line 77
    iget-object v1, p0, Lcom/android/normal/a/a;->aZL:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 79
    :cond_5a
    iget-object v1, p0, Lcom/android/normal/a/a;->aZL:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_5f
    return-void
.end method

.method public start()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 86
    iget-object v1, p0, Lcom/android/normal/a/a;->aZI:Lcom/android/common/cameradevice/j;

    invoke-virtual {v1}, Lcom/android/common/cameradevice/j;->KX()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->LE([I)V

    .line 88
    iget v1, p0, Lcom/android/normal/a/a;->aZK:I

    int-to-double v2, v1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const/4 v1, 0x0

    aget v1, v0, v1

    aget v0, v0, v6

    add-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v4, 0x409f400000000000L    # 2000.0

    div-double/2addr v0, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/normal/a/a;->aZM:I

    .line 89
    const-string/jumbo v0, "meeeeYuvImageGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oql = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/normal/a/a;->aZM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/normal/a/a;->aZN:Lcom/android/common/appService/k;

    iget-object v1, p0, Lcom/android/normal/a/a;->aZI:Lcom/android/common/cameradevice/j;

    invoke-virtual {v1}, Lcom/android/common/cameradevice/j;->KY()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/common/appService/k;->jO(Landroid/hardware/Camera$PreviewCallback;I)V

    .line 91
    iput v6, p0, Lcom/android/normal/a/a;->mState:I

    .line 92
    const-string/jumbo v0, "meeeeYuvImageGenerator"

    const-string/jumbo v1, "cacher started"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 103
    const-string/jumbo v0, "meeeeYuvImageGenerator"

    const-string/jumbo v1, "Preview stop"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/normal/a/a;->aZN:Lcom/android/common/appService/k;

    invoke-virtual {v0, p0}, Lcom/android/common/appService/k;->jJ(Landroid/hardware/Camera$PreviewCallback;)V

    .line 105
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/normal/a/a;->mState:I

    .line 102
    return-void
.end method

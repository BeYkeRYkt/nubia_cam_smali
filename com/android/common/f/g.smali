.class Lcom/android/common/f/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final VV:Ljava/lang/String;

.field public final VW:I

.field public final VX:I


# direct methods
.method public constructor <init>(Lcom/android/common/cameradevice/p;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/android/common/f/g;->VW:I

    .line 46
    iput v9, p0, Lcom/android/common/f/g;->VX:I

    .line 71
    invoke-interface {p1}, Lcom/android/common/cameradevice/p;->LD()I

    move-result v0

    .line 72
    sparse-switch v0, :sswitch_data_b4

    .line 83
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not supported: ImageFormat=???("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :sswitch_34
    const-string/jumbo v0, "VideoParam"

    const-string/jumbo v2, "mImageFormat = NV21"

    invoke-static {v0, v2}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v5

    move v4, v3

    .line 90
    :goto_42
    if-ge v4, v5, :cond_7c

    .line 91
    invoke-static {v4}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 94
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    .line 95
    array-length v7, v6

    move v2, v3

    :goto_54
    if-ge v2, v7, :cond_78

    aget-object v0, v6, v2

    .line 97
    const-string/jumbo v8, "video/avc"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b1

    .line 95
    :goto_61
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_54

    .line 77
    :sswitch_66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 78
    const-string/jumbo v1, "Not supported: ImageFormat=YUY2"

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :sswitch_6f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 81
    const-string/jumbo v1, "Not supported: ImageFormat=YV12"

    .line 80
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_78
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_42

    .line 103
    :cond_7c
    if-nez v1, :cond_92

    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 105
    const-string/jumbo v1, "Not support MIME: %s"

    new-array v2, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "video/avc"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_92
    iput-object v1, p0, Lcom/android/common/f/g;->VV:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "VideoParam"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/f/g;->VV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void

    :cond_b1
    move-object v0, v1

    goto :goto_61

    .line 72
    nop

    :sswitch_data_b4
    .sparse-switch
        0x11 -> :sswitch_34
        0x14 -> :sswitch_66
        0x32315659 -> :sswitch_6f
    .end sparse-switch
.end method

.class public Lcom/android/common/k/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private ZL:Landroid/graphics/Bitmap;

.field private ZM:Lcom/android/common/CameraBufferManager;

.field private ZN:Landroid/os/Handler;

.field private ZO:[I

.field private ZP:Lcom/android/common/custom/v;

.field private ZQ:Lcom/android/common/custom/v;

.field private ZR:Z


# direct methods
.method public constructor <init>(Lcom/android/common/CameraBufferManager;Landroid/os/Handler;Lcom/android/common/custom/v;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/common/k/b;->ZL:Landroid/graphics/Bitmap;

    .line 18
    iput-object v0, p0, Lcom/android/common/k/b;->ZN:Landroid/os/Handler;

    .line 23
    iput-object v0, p0, Lcom/android/common/k/b;->ZM:Lcom/android/common/CameraBufferManager;

    .line 27
    iput-object p1, p0, Lcom/android/common/k/b;->ZM:Lcom/android/common/CameraBufferManager;

    .line 28
    iput-object p2, p0, Lcom/android/common/k/b;->ZN:Landroid/os/Handler;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/k/b;->ZR:Z

    .line 30
    iput-object p3, p0, Lcom/android/common/k/b;->ZQ:Lcom/android/common/custom/v;

    .line 31
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/common/k/b;->agd(I)Lcom/android/common/custom/v;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/k/b;->ZP:Lcom/android/common/custom/v;

    .line 32
    invoke-virtual {p0}, Lcom/android/common/k/b;->start()V

    .line 26
    return-void
.end method

.method private agd(I)Lcom/android/common/custom/v;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 35
    new-instance v0, Lcom/android/common/custom/v;

    invoke-direct {v0}, Lcom/android/common/custom/v;-><init>()V

    .line 36
    iget-object v1, p0, Lcom/android/common/k/b;->ZQ:Lcom/android/common/custom/v;

    iget v1, v1, Lcom/android/common/custom/v;->width:I

    div-int/2addr v1, p1

    iput v1, v0, Lcom/android/common/custom/v;->width:I

    .line 37
    iget-object v1, p0, Lcom/android/common/k/b;->ZQ:Lcom/android/common/custom/v;

    iget v1, v1, Lcom/android/common/custom/v;->height:I

    div-int/2addr v1, p1

    iput v1, v0, Lcom/android/common/custom/v;->height:I

    .line 38
    iget v1, v0, Lcom/android/common/custom/v;->width:I

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v2, :cond_20

    .line 39
    iget v1, v0, Lcom/android/common/custom/v;->width:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/common/custom/v;->width:I

    .line 41
    :cond_20
    iget v1, v0, Lcom/android/common/custom/v;->height:I

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v2, :cond_2c

    .line 42
    iget v1, v0, Lcom/android/common/custom/v;->height:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/common/custom/v;->height:I

    .line 44
    :cond_2c
    return-object v0
.end method


# virtual methods
.method public agc()V
    .registers 3

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/common/k/b;->ZR:Z

    .line 87
    iget-object v0, p0, Lcom/android/common/k/b;->ZN:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_12

    monitor-exit p0

    .line 90
    :try_start_b
    invoke-virtual {p0}, Lcom/android/common/k/b;->join()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_15

    .line 94
    :goto_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/k/b;->ZR:Z

    .line 84
    return-void

    .line 85
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 91
    :catch_15
    move-exception v0

    goto :goto_e
.end method

.method public run()V
    .registers 5

    .prologue
    .line 55
    :goto_0
    iget-boolean v0, p0, Lcom/android/common/k/b;->ZR:Z

    if-eqz v0, :cond_5

    .line 53
    return-void

    .line 58
    :cond_5
    const-string/jumbo v0, "GetDataThread"

    const-string/jumbo v1, "=====start to get previewData"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/android/common/k/b;->ZM:Lcom/android/common/CameraBufferManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/CameraBufferManager;->getSlowShuttlePreviewData(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/k/b;->ZO:[I

    .line 60
    iget-object v0, p0, Lcom/android/common/k/b;->ZO:[I

    if-nez v0, :cond_2f

    .line 62
    :try_start_1b
    const-string/jumbo v0, "GetDataThread"

    const-string/jumbo v1, "wq mPreviewData is null sleep"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Lcom/android/common/k/b;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_29} :catch_2a

    goto :goto_0

    .line 64
    :catch_2a
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 69
    :cond_2f
    monitor-enter p0

    .line 70
    :try_start_30
    iget-object v0, p0, Lcom/android/common/k/b;->ZO:[I

    iget-object v1, p0, Lcom/android/common/k/b;->ZP:Lcom/android/common/custom/v;

    iget v1, v1, Lcom/android/common/custom/v;->width:I

    iget-object v2, p0, Lcom/android/common/k/b;->ZP:Lcom/android/common/custom/v;

    iget v2, v2, Lcom/android/common/custom/v;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/k/b;->ZL:Landroid/graphics/Bitmap;

    .line 71
    const-string/jumbo v0, "GetDataThread"

    const-string/jumbo v1, "=====create preview bitmap done"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/common/k/b;->ZN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/common/k/b;->ZL:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/android/common/k/b;->ZN:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_59
    .catchall {:try_start_30 .. :try_end_59} :catchall_65

    monitor-exit p0

    .line 76
    const-wide/16 v0, 0x28

    :try_start_5c
    invoke-static {v0, v1}, Lcom/android/common/k/b;->sleep(J)V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_0

    .line 77
    :catch_60
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 69
    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0
.end method

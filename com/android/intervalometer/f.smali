.class public Lcom/android/intervalometer/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/android/common/a/c;


# instance fields
.field private aQb:Lcom/android/common/ActivityBase;

.field private aQc:Ljava/lang/String;

.field private aQd:I

.field private aQe:Lcom/android/intervalometer/g;

.field private aQf:I

.field private aQg:Z

.field private aQh:Lcom/android/intervalometer/h;

.field private aQi:[B

.field private aQj:Lcom/android/delaygenerator/DelayRecorder;

.field private aQk:Ljava/util/concurrent/ExecutorService;

.field private aQl:I

.field private aQm:I


# direct methods
.method public constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/intervalometer/h;

    invoke-direct {v0, p0}, Lcom/android/intervalometer/h;-><init>(Lcom/android/intervalometer/f;)V

    iput-object v0, p0, Lcom/android/intervalometer/f;->aQh:Lcom/android/intervalometer/h;

    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/intervalometer/f;->aQk:Ljava/util/concurrent/ExecutorService;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/intervalometer/f;->aQi:[B

    .line 50
    iput-boolean v1, p0, Lcom/android/intervalometer/f;->aQg:Z

    .line 51
    iput v1, p0, Lcom/android/intervalometer/f;->aQl:I

    .line 52
    iput v1, p0, Lcom/android/intervalometer/f;->aQd:I

    .line 56
    iput-object p1, p0, Lcom/android/intervalometer/f;->aQb:Lcom/android/common/ActivityBase;

    .line 57
    new-instance v0, Lcom/android/delaygenerator/DelayRecorder;

    iget-object v1, p0, Lcom/android/intervalometer/f;->aQh:Lcom/android/intervalometer/h;

    invoke-direct {v0, v1}, Lcom/android/delaygenerator/DelayRecorder;-><init>(Lcom/android/delaygenerator/a;)V

    iput-object v0, p0, Lcom/android/intervalometer/f;->aQj:Lcom/android/delaygenerator/DelayRecorder;

    .line 55
    return-void
.end method

.method private bgK(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 150
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 152
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 153
    const/4 v6, 0x1

    move v2, v1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    return-object v0
.end method

.method private bgL(Ljava/lang/String;J)Ljava/lang/String;
    .registers 8

    .prologue
    .line 158
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 159
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 160
    iget-object v2, p0, Lcom/android/intervalometer/f;->aQb:Lcom/android/common/ActivityBase;

    const v3, 0x7f0a027a

    invoke-virtual {v2, v3}, Lcom/android/common/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 161
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

.method private bgM()Lcom/android/common/cameradevice/j;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQb:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method private bgN()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQj:Lcom/android/delaygenerator/DelayRecorder;

    if-eqz v0, :cond_c

    .line 195
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQj:Lcom/android/delaygenerator/DelayRecorder;

    invoke-virtual {v0}, Lcom/android/delaygenerator/DelayRecorder;->release()V

    .line 196
    iput-object v1, p0, Lcom/android/intervalometer/f;->aQj:Lcom/android/delaygenerator/DelayRecorder;

    .line 193
    :cond_c
    return-void
.end method

.method private bgO(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .registers 7

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/intervalometer/f;->bgK(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/android/intervalometer/f;->aQj:Lcom/android/delaygenerator/DelayRecorder;

    invoke-virtual {v1, v0}, Lcom/android/delaygenerator/DelayRecorder;->input(Landroid/graphics/Bitmap;)V

    .line 139
    return-void
.end method

.method private bgP([B)V
    .registers 5

    .prologue
    .line 145
    const-string/jumbo v0, "PreviewDataRender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "renderYUV  previewData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/intervalometer/f;->aQm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/intervalometer/f;->aQf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQj:Lcom/android/delaygenerator/DelayRecorder;

    iget v1, p0, Lcom/android/intervalometer/f;->aQm:I

    iget v2, p0, Lcom/android/intervalometer/f;->aQf:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/delaygenerator/DelayRecorder;->input([BII)V

    .line 144
    return-void
.end method

.method private bgQ()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQb:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qv()I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/android/intervalometer/f;->aQb:Lcom/android/common/ActivityBase;

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {v1}, Lcom/android/common/h;->apu(I)I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 99
    iget-object v1, p0, Lcom/android/intervalometer/f;->aQj:Lcom/android/delaygenerator/DelayRecorder;

    invoke-virtual {v1, v0}, Lcom/android/delaygenerator/DelayRecorder;->setDegrees(I)V

    .line 96
    return-void
.end method

.method private bgR()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQk:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/intervalometer/f;->aQk:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 200
    :cond_d
    :goto_d
    return-void

    .line 202
    :cond_e
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQk:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 203
    iput-object v1, p0, Lcom/android/intervalometer/f;->aQk:Ljava/util/concurrent/ExecutorService;

    goto :goto_d
.end method

.method private bgS()V
    .registers 2

    .prologue
    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQb:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/appService/k;->jK(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_d} :catch_e

    .line 176
    :goto_d
    return-void

    .line 179
    :catch_e
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method static synthetic bgT(Lcom/android/intervalometer/f;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/intervalometer/f;->aQc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bgU(Lcom/android/intervalometer/f;)Lcom/android/intervalometer/g;
    .registers 2

    iget-object v0, p0, Lcom/android/intervalometer/f;->aQe:Lcom/android/intervalometer/g;

    return-object v0
.end method

.method static synthetic bgV(Lcom/android/intervalometer/f;)I
    .registers 2

    iget v0, p0, Lcom/android/intervalometer/f;->aQl:I

    return v0
.end method

.method static synthetic bgW(Lcom/android/intervalometer/f;I)I
    .registers 2

    iput p1, p0, Lcom/android/intervalometer/f;->aQl:I

    return p1
.end method

.method static synthetic bgX(Lcom/android/intervalometer/f;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/intervalometer/f;->bgO(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic bgY(Lcom/android/intervalometer/f;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/intervalometer/f;->bgP([B)V

    return-void
.end method


# virtual methods
.method public W(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .registers 13

    .prologue
    .line 121
    iput p2, p0, Lcom/android/intervalometer/f;->aQm:I

    .line 122
    iput p3, p0, Lcom/android/intervalometer/f;->aQf:I

    .line 123
    iget-boolean v0, p0, Lcom/android/intervalometer/f;->aQg:Z

    if-nez v0, :cond_1a

    .line 124
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQb:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qv()I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/android/intervalometer/f;->aQj:Lcom/android/delaygenerator/DelayRecorder;

    invoke-virtual {v1, v0}, Lcom/android/delaygenerator/DelayRecorder;->setDegrees(I)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/intervalometer/f;->aQg:Z

    .line 128
    :cond_1a
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQk:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 129
    iget v0, p0, Lcom/android/intervalometer/f;->aQl:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_3f

    .line 130
    iget v0, p0, Lcom/android/intervalometer/f;->aQl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/intervalometer/f;->aQl:I

    .line 131
    iget-object v7, p0, Lcom/android/intervalometer/f;->aQk:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/intervalometer/i;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/intervalometer/i;-><init>(Lcom/android/intervalometer/f;Lcom/android/intervalometer/f;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 120
    :cond_3e
    :goto_3e
    return-void

    .line 133
    :cond_3f
    iget v0, p0, Lcom/android/intervalometer/f;->aQd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/intervalometer/f;->aQd:I

    .line 134
    const-string/jumbo v0, "PreviewDataRender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Drop PreviewData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/intervalometer/f;->aQd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public bgI(Lcom/android/intervalometer/g;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/intervalometer/f;->aQe:Lcom/android/intervalometer/g;

    .line 92
    return-void
.end method

.method public bgJ()V
    .registers 6

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQi:[B

    if-nez v0, :cond_3c

    .line 70
    invoke-direct {p0}, Lcom/android/intervalometer/f;->bgM()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KX()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 71
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/intervalometer/f;->aQm:I

    .line 72
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/android/intervalometer/f;->aQf:I

    .line 73
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/intervalometer/f;->aQi:[B

    .line 74
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQb:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/android/intervalometer/f;->aQb:Lcom/android/common/ActivityBase;

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    .line 74
    invoke-virtual {v0, p0, v1}, Lcom/android/common/appService/k;->jP(Landroid/hardware/Camera$PreviewCallback;I)V

    .line 77
    :cond_3c
    invoke-direct {p0}, Lcom/android/intervalometer/f;->bgM()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/intervalometer/f;->aQi:[B

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KW([B)V
    :try_end_45
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_45} :catch_46

    .line 67
    return-void

    .line 78
    :catch_46
    move-exception v0

    .line 80
    :try_start_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/sdcard/camera_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".hprof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_69} :catch_6a

    .line 84
    :goto_69
    throw v0

    .line 81
    :catch_6a
    move-exception v1

    .line 82
    const-string/jumbo v2, "PreviewDataRender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dump hprof fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 6

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/intervalometer/f;->aQg:Z

    if-nez v0, :cond_a

    .line 105
    invoke-direct {p0}, Lcom/android/intervalometer/f;->bgQ()V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/intervalometer/f;->aQg:Z

    .line 108
    :cond_a
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQk:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_28

    .line 109
    iget v0, p0, Lcom/android/intervalometer/f;->aQl:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_29

    .line 110
    iget v0, p0, Lcom/android/intervalometer/f;->aQl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/intervalometer/f;->aQl:I

    .line 111
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQk:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/intervalometer/i;

    invoke-direct {v1, p0, p0, p1}, Lcom/android/intervalometer/i;-><init>(Lcom/android/intervalometer/f;Lcom/android/intervalometer/f;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 103
    :cond_28
    :goto_28
    return-void

    .line 113
    :cond_29
    iget v0, p0, Lcom/android/intervalometer/f;->aQd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/intervalometer/f;->aQd:I

    .line 114
    const-string/jumbo v0, "PreviewDataRender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Drop PreviewData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/intervalometer/f;->aQd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method public release()V
    .registers 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/intervalometer/f;->bgR()V

    .line 190
    invoke-direct {p0}, Lcom/android/intervalometer/f;->bgN()V

    .line 188
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 61
    invoke-static {}, Lcom/android/common/n;->aqP()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "PreviewDataRender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start director: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/intervalometer/f;->bgL(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/intervalometer/f;->aQc:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQj:Lcom/android/delaygenerator/DelayRecorder;

    iget-object v1, p0, Lcom/android/intervalometer/f;->aQc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/delaygenerator/DelayRecorder;->start(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQb:Lcom/android/common/ActivityBase;

    invoke-virtual {v0, p0}, Lcom/android/common/ActivityBase;->atd(Lcom/android/common/a/c;)Z

    .line 166
    invoke-direct {p0}, Lcom/android/intervalometer/f;->bgS()V

    .line 168
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQj:Lcom/android/delaygenerator/DelayRecorder;

    if-eqz v0, :cond_13

    .line 169
    iget-object v0, p0, Lcom/android/intervalometer/f;->aQj:Lcom/android/delaygenerator/DelayRecorder;

    invoke-virtual {v0}, Lcom/android/delaygenerator/DelayRecorder;->stop()V

    .line 171
    :cond_13
    iput-object v2, p0, Lcom/android/intervalometer/f;->aQi:[B

    .line 172
    iput-boolean v1, p0, Lcom/android/intervalometer/f;->aQg:Z

    .line 173
    iput v1, p0, Lcom/android/intervalometer/f;->aQd:I

    .line 164
    return-void
.end method

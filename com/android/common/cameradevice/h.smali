.class public Lcom/android/common/cameradevice/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected Nc:Lcom/android/common/cameradevice/e;

.field private Nd:Landroid/os/Handler;

.field private Ne:Lcom/android/common/cameradevice/j;

.field private Nf:Z

.field protected Ng:Lcom/android/common/cameradevice/p;

.field private Nh:Ljava/io/IOException;

.field private Ni:Lcom/android/common/cameradevice/f;


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string/jumbo v0, "CameraManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/cameradevice/h;->Nf:Z

    .line 60
    new-instance v0, Lcom/android/common/cameradevice/f;

    invoke-direct {v0}, Lcom/android/common/cameradevice/f;-><init>()V

    iput-object v0, p0, Lcom/android/common/cameradevice/h;->Ni:Lcom/android/common/cameradevice/f;

    .line 116
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \'s Camera Handler Thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v1, Lcom/android/common/cameradevice/i;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/common/cameradevice/i;-><init>(Lcom/android/common/cameradevice/h;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/common/cameradevice/h;->Nd:Landroid/os/Handler;

    .line 115
    return-void
.end method

.method private Ko(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/android/common/cameradevice/h;->Nf:Z

    if-nez v0, :cond_5

    return-void

    .line 368
    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 369
    if-nez v0, :cond_13

    .line 370
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 371
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 373
    :cond_13
    const-string/jumbo v1, "CameraManager"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method static synthetic Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/common/cameradevice/h;->Nd:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic Kq(Lcom/android/common/cameradevice/h;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/cameradevice/h;->Nf:Z

    return v0
.end method

.method static synthetic Kr(Lcom/android/common/cameradevice/h;)Ljava/io/IOException;
    .registers 2

    iget-object v0, p0, Lcom/android/common/cameradevice/h;->Nh:Ljava/io/IOException;

    return-object v0
.end method

.method static synthetic Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;
    .registers 2

    iget-object v0, p0, Lcom/android/common/cameradevice/h;->Ni:Lcom/android/common/cameradevice/f;

    return-object v0
.end method

.method static synthetic Kt(Lcom/android/common/cameradevice/h;Lcom/android/common/cameradevice/j;)Lcom/android/common/cameradevice/j;
    .registers 2

    iput-object p1, p0, Lcom/android/common/cameradevice/h;->Ne:Lcom/android/common/cameradevice/j;

    return-object p1
.end method

.method static synthetic Ku(Lcom/android/common/cameradevice/h;Ljava/io/IOException;)Ljava/io/IOException;
    .registers 2

    iput-object p1, p0, Lcom/android/common/cameradevice/h;->Nh:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic Kv(Lcom/android/common/cameradevice/h;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/cameradevice/h;->Ko(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected Kn(I)Lcom/android/common/cameradevice/j;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 332
    :try_start_1
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-nez v0, :cond_9

    .line 333
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agg:Z

    .line 332
    if-eqz v0, :cond_d

    .line 334
    :cond_9
    sget-boolean v0, Lcom/android/common/h;->ahs:Z

    if-eqz v0, :cond_37

    .line 339
    :cond_d
    const-string/jumbo v0, "CameraManager"

    const-string/jumbo v1, "open camera: normal"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_19} :catch_47

    move-result-object v0

    .line 356
    :goto_1a
    invoke-static {}, Lcom/android/common/cameradevice/d;->JO()Lcom/android/common/cameradevice/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/cameradevice/d;->JQ(Landroid/hardware/Camera;)Lcom/android/common/cameradevice/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    .line 357
    if-eqz v0, :cond_9d

    .line 358
    new-instance v0, Lcom/android/common/cameradevice/j;

    invoke-direct {v0, p0, p1}, Lcom/android/common/cameradevice/j;-><init>(Lcom/android/common/cameradevice/h;I)V

    iput-object v0, p0, Lcom/android/common/cameradevice/h;->Ne:Lcom/android/common/cameradevice/j;

    .line 362
    :goto_2d
    iget-object v0, p0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    iget-object v1, p0, Lcom/android/common/cameradevice/h;->Ne:Lcom/android/common/cameradevice/j;

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/e;->Ju(Lcom/android/common/cameradevice/j;)V

    .line 363
    iget-object v0, p0, Lcom/android/common/cameradevice/h;->Ne:Lcom/android/common/cameradevice/j;

    return-object v0

    .line 335
    :cond_37
    :try_start_37
    const-string/jumbo v0, "CameraManager"

    const-string/jumbo v1, "open camera: legacy"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/16 v0, 0x100

    .line 336
    invoke-static {p1, v0}, Landroid/hardware/Camera;->openLegacy(II)Landroid/hardware/Camera;
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_45} :catch_47

    move-result-object v0

    goto :goto_1a

    .line 342
    :catch_47
    move-exception v0

    .line 343
    const-string/jumbo v1, "ro.product.board"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_8e

    .line 346
    const-string/jumbo v2, "msm8994"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 347
    const-string/jumbo v2, "msm8952"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 346
    if-nez v2, :cond_6c

    .line 348
    const-string/jumbo v2, "msm8996"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 345
    if-eqz v2, :cond_8e

    .line 349
    :cond_6c
    const-string/jumbo v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OpenLegacy failed and product board is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", just throw."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    throw v0

    .line 352
    :cond_8e
    const-string/jumbo v1, "CameraManager"

    const-string/jumbo v2, "openLegacy failed. Using open instead"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    goto/16 :goto_1a

    .line 360
    :cond_9d
    iput-object v3, p0, Lcom/android/common/cameradevice/h;->Ne:Lcom/android/common/cameradevice/j;

    goto :goto_2d
.end method

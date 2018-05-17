.class Lcom/android/common/cameradevice/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ND:I

.field private NE:Lcom/android/common/cameradevice/h;

.field private NF:Z

.field private NG:Lcom/android/common/cameradevice/j;

.field private final NH:Landroid/os/Handler;

.field private NI:J

.field private NJ:Lcom/android/common/cameradevice/p;

.field final synthetic NK:Lcom/android/common/cameradevice/m;


# direct methods
.method private constructor <init>(Lcom/android/common/cameradevice/m;ILcom/android/common/cameradevice/h;)V
    .registers 7

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/common/cameradevice/n;->NK:Lcom/android/common/cameradevice/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/cameradevice/n;->ND:I

    .line 250
    iput p2, p0, Lcom/android/common/cameradevice/n;->ND:I

    .line 251
    iput-object p3, p0, Lcom/android/common/cameradevice/n;->NE:Lcom/android/common/cameradevice/h;

    .line 253
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'s CameraHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 255
    new-instance v1, Lcom/android/common/cameradevice/o;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/common/cameradevice/o;-><init>(Lcom/android/common/cameradevice/n;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/common/cameradevice/n;->NH:Landroid/os/Handler;

    .line 249
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/cameradevice/m;ILcom/android/common/cameradevice/h;Lcom/android/common/cameradevice/n;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/common/cameradevice/n;-><init>(Lcom/android/common/cameradevice/m;ILcom/android/common/cameradevice/h;)V

    return-void
.end method

.method static synthetic Nk(Lcom/android/common/cameradevice/n;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/cameradevice/n;->NF:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized Ne()Lcom/android/common/cameradevice/j;
    .registers 2

    .prologue
    monitor-enter p0

    .line 345
    :try_start_1
    iget-object v0, p0, Lcom/android/common/cameradevice/n;->NG:Lcom/android/common/cameradevice/j;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Nf()Lcom/android/common/cameradevice/p;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/common/cameradevice/n;->NJ:Lcom/android/common/cameradevice/p;

    return-object v0
.end method

.method public Ng(Lcom/android/common/cameradevice/j;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 349
    iput-object p1, p0, Lcom/android/common/cameradevice/n;->NG:Lcom/android/common/cameradevice/j;

    .line 350
    iget-object v0, p0, Lcom/android/common/cameradevice/n;->NG:Lcom/android/common/cameradevice/j;

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KX()Lcom/android/common/cameradevice/p;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/cameradevice/n;->NJ:Lcom/android/common/cameradevice/p;

    .line 351
    iput-boolean v1, p0, Lcom/android/common/cameradevice/n;->NF:Z

    .line 352
    iget-object v0, p0, Lcom/android/common/cameradevice/n;->NH:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 353
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/common/cameradevice/n;->NI:J

    .line 348
    return-void
.end method

.method public declared-synchronized Nh()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 337
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/common/cameradevice/n;->NI:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 331
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Ni()Lcom/android/common/cameradevice/j;
    .registers 4

    .prologue
    monitor-enter p0

    .line 260
    :try_start_1
    const-string/jumbo v0, "CameraHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CameraProxy open. mCameraOpened = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/common/cameradevice/n;->NF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; mCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/cameradevice/n;->ND:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-boolean v0, p0, Lcom/android/common/cameradevice/n;->NF:Z

    if-eqz v0, :cond_3f

    .line 262
    new-instance v0, Lcom/android/common/cameradevice/CameraHardwareException;

    new-instance v1, Ljava/lang/Throwable;

    const-string/jumbo v2, "camera has been opened"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/common/cameradevice/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 264
    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/android/common/cameradevice/n;->NG:Lcom/android/common/cameradevice/j;
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_3c

    if-nez v0, :cond_b5

    .line 266
    :try_start_43
    const-string/jumbo v0, "CameraHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "open camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/cameradevice/n;->ND:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/android/common/cameradevice/n;->NE:Lcom/android/common/cameradevice/h;

    iget v1, p0, Lcom/android/common/cameradevice/n;->ND:I

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/h;->Kn(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/cameradevice/n;->NG:Lcom/android/common/cameradevice/j;
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_69} :catch_a5
    .catchall {:try_start_43 .. :try_end_69} :catchall_3c

    .line 272
    :try_start_69
    iget-object v0, p0, Lcom/android/common/cameradevice/n;->NG:Lcom/android/common/cameradevice/j;

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KX()Lcom/android/common/cameradevice/p;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/cameradevice/n;->NJ:Lcom/android/common/cameradevice/p;

    .line 284
    :goto_71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/cameradevice/n;->NF:Z

    .line 285
    iget-object v0, p0, Lcom/android/common/cameradevice/n;->NH:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/common/cameradevice/n;->NI:J

    .line 287
    const-string/jumbo v0, "CameraHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "open camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/cameradevice/n;->ND:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/common/cameradevice/n;->NG:Lcom/android/common/cameradevice/j;
    :try_end_a3
    .catchall {:try_start_69 .. :try_end_a3} :catchall_3c

    monitor-exit p0

    return-object v0

    .line 268
    :catch_a5
    move-exception v0

    .line 269
    :try_start_a6
    const-string/jumbo v1, "CameraHolder"

    const-string/jumbo v2, "fail to connect Camera"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    new-instance v1, Lcom/android/common/cameradevice/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/android/common/cameradevice/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_b5
    .catchall {:try_start_a6 .. :try_end_b5} :catchall_3c

    .line 275
    :cond_b5
    :try_start_b5
    const-string/jumbo v0, "CameraHolder"

    const-string/jumbo v1, "mCameraDevice.reconnect()"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/common/cameradevice/n;->NG:Lcom/android/common/cameradevice/j;

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->La()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_c3} :catch_d4
    .catchall {:try_start_b5 .. :try_end_c3} :catchall_3c

    .line 281
    :try_start_c3
    const-string/jumbo v0, "CameraHolder"

    const-string/jumbo v1, "mCameraDevice.setParameters()"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/common/cameradevice/n;->NG:Lcom/android/common/cameradevice/j;

    iget-object v1, p0, Lcom/android/common/cameradevice/n;->NJ:Lcom/android/common/cameradevice/p;

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    goto :goto_71

    .line 277
    :catch_d4
    move-exception v0

    .line 278
    const-string/jumbo v1, "CameraHolder"

    const-string/jumbo v2, "reconnect failed."

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v1, Lcom/android/common/cameradevice/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/android/common/cameradevice/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_e4
    .catchall {:try_start_c3 .. :try_end_e4} :catchall_3c
.end method

.method public declared-synchronized Nj()Lcom/android/common/cameradevice/j;
    .registers 5

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 297
    :try_start_2
    iget-boolean v1, p0, Lcom/android/common/cameradevice/n;->NF:Z

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/android/common/cameradevice/n;->Ni()Lcom/android/common/cameradevice/j;
    :try_end_9
    .catch Lcom/android/common/cameradevice/CameraHardwareException; {:try_start_2 .. :try_end_9} :catch_c
    .catchall {:try_start_2 .. :try_end_9} :catchall_1e

    move-result-object v0

    :cond_a
    monitor-exit p0

    return-object v0

    .line 298
    :catch_c
    move-exception v1

    .line 301
    :try_start_d
    const-string/jumbo v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 302
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_21
    monitor-exit p0

    .line 304
    return-object v0
.end method

.method public declared-synchronized release()V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 309
    :try_start_3
    const-string/jumbo v2, "CameraHolder"

    const-string/jumbo v3, "CameraHolder release "

    invoke-static {v2, v3}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/android/common/cameradevice/n;->NG:Lcom/android/common/cameradevice/j;

    if-eqz v2, :cond_35

    :goto_10
    invoke-static {v0}, Lcom/android/common/h;->apf(Z)V

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 313
    iget-wide v2, p0, Lcom/android/common/cameradevice/n;->NI:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_37

    .line 314
    iget-boolean v2, p0, Lcom/android/common/cameradevice/n;->NF:Z

    if-eqz v2, :cond_29

    .line 315
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/common/cameradevice/n;->NF:Z

    .line 316
    iget-object v2, p0, Lcom/android/common/cameradevice/n;->NG:Lcom/android/common/cameradevice/j;

    invoke-virtual {v2}, Lcom/android/common/cameradevice/j;->KP()V

    .line 318
    :cond_29
    iget-object v2, p0, Lcom/android/common/cameradevice/n;->NH:Landroid/os/Handler;

    .line 319
    iget-wide v4, p0, Lcom/android/common/cameradevice/n;->NI:J

    sub-long v0, v4, v0

    .line 318
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_50

    monitor-exit p0

    .line 320
    return-void

    :cond_35
    move v0, v1

    .line 310
    goto :goto_10

    .line 322
    :cond_37
    const/4 v0, 0x0

    :try_start_38
    iput-boolean v0, p0, Lcom/android/common/cameradevice/n;->NF:Z

    .line 323
    iget-object v0, p0, Lcom/android/common/cameradevice/n;->NG:Lcom/android/common/cameradevice/j;

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->release()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/cameradevice/n;->NG:Lcom/android/common/cameradevice/j;

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/cameradevice/n;->NJ:Lcom/android/common/cameradevice/p;

    .line 328
    const-string/jumbo v0, "CameraHolder"

    const-string/jumbo v1, "CameraHolder release end"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_38 .. :try_end_4e} :catchall_50

    monitor-exit p0

    .line 308
    return-void

    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0
.end method

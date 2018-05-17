.class Lcom/android/slowshutter/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private ayf:I

.field private ayg:F

.field private ayh:Z

.field private ayi:J

.field final synthetic ayj:Lcom/android/slowshutter/a;


# direct methods
.method public constructor <init>(Lcom/android/slowshutter/a;FI)V
    .registers 6

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/slowshutter/c;->ayj:Lcom/android/slowshutter/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/slowshutter/c;->ayh:Z

    .line 306
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/slowshutter/c;->ayi:J

    .line 308
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/slowshutter/c;->ayg:F

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/slowshutter/c;->ayf:I

    .line 312
    iput p2, p0, Lcom/android/slowshutter/c;->ayg:F

    .line 313
    iput p3, p0, Lcom/android/slowshutter/c;->ayf:I

    .line 311
    return-void
.end method

.method private aNg(FI)J
    .registers 6

    .prologue
    .line 328
    const-wide/16 v0, 0x0

    .line 329
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_d

    .line 330
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    float-to-long v0, v0

    .line 334
    :cond_c
    :goto_c
    return-wide v0

    .line 331
    :cond_d
    if-lez p2, :cond_c

    .line 332
    mul-int/lit16 v0, p2, 0x3e8

    int-to-long v0, v0

    goto :goto_c
.end method


# virtual methods
.method public aNh()V
    .registers 2

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/slowshutter/c;->ayh:Z

    .line 317
    monitor-enter p0

    .line 318
    :try_start_4
    invoke-virtual {p0}, Lcom/android/slowshutter/c;->notify()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 315
    return-void

    .line 317
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 338
    iget v0, p0, Lcom/android/slowshutter/c;->ayg:F

    iget v1, p0, Lcom/android/slowshutter/c;->ayf:I

    invoke-direct {p0, v0, v1}, Lcom/android/slowshutter/c;->aNg(FI)J

    move-result-wide v2

    .line 340
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_3e

    .line 341
    return-void

    .line 348
    :cond_10
    iget-object v0, p0, Lcom/android/slowshutter/c;->ayj:Lcom/android/slowshutter/a;

    invoke-static {v0}, Lcom/android/slowshutter/a;->aMY(Lcom/android/slowshutter/a;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/slowshutter/c;->ayi:J

    sub-long/2addr v0, v4

    long-to-double v0, v0

    long-to-double v4, v2

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 350
    iget-object v1, p0, Lcom/android/slowshutter/c;->ayj:Lcom/android/slowshutter/a;

    invoke-static {v1}, Lcom/android/slowshutter/a;->aNb(Lcom/android/slowshutter/a;)Lcom/android/slowshutter/b;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/android/slowshutter/b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 354
    :try_start_37
    monitor-enter p0
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_38} :catch_51

    .line 355
    const-wide/16 v0, 0x64

    :try_start_3a
    invoke-virtual {p0, v0, v1}, Lcom/android/slowshutter/c;->wait(J)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_4e

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_3e} :catch_51

    .line 345
    :cond_3e
    :goto_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/slowshutter/c;->ayi:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_56

    .line 346
    iget-boolean v0, p0, Lcom/android/slowshutter/c;->ayh:Z

    if-nez v0, :cond_10

    .line 347
    return-void

    .line 354
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit p0

    throw v0
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_51} :catch_51

    .line 357
    :catch_51
    move-exception v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3e

    .line 364
    :cond_56
    iget-object v0, p0, Lcom/android/slowshutter/c;->ayj:Lcom/android/slowshutter/a;

    invoke-static {v0}, Lcom/android/slowshutter/a;->aMY(Lcom/android/slowshutter/a;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 365
    iget-object v0, p0, Lcom/android/slowshutter/c;->ayj:Lcom/android/slowshutter/a;

    invoke-static {v0}, Lcom/android/slowshutter/a;->aNb(Lcom/android/slowshutter/a;)Lcom/android/slowshutter/b;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/slowshutter/b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 337
    :cond_71
    return-void
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 324
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/slowshutter/c;->ayi:J

    .line 325
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 323
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

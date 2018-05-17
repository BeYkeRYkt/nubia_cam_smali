.class Lcom/android/normal/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bal:Lcn/nubia/videogenerator/a/c;

.field private bam:Lcn/nubia/videogenerator/a/f;

.field private ban:Lcn/nubia/videogenerator/b/f;

.field private bao:Lcn/nubia/videogenerator/b/d;

.field private bap:J

.field private baq:Ljava/util/ArrayList;

.field private bar:Z

.field private bas:Lcn/nubia/videogenerator/a/c;

.field private bat:Lcn/nubia/videogenerator/a/f;

.field private bau:Lcn/nubia/videogenerator/b/f;

.field private bav:Lcn/nubia/videogenerator/d/a;

.field final synthetic baw:Lcom/android/normal/a/b;


# direct methods
.method private constructor <init>(Lcom/android/normal/a/b;)V
    .registers 4

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/normal/a/i;->bar:Z

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/normal/a/i;->baq:Ljava/util/ArrayList;

    .line 451
    new-instance v0, Lcom/android/normal/a/j;

    invoke-direct {v0, p0}, Lcom/android/normal/a/j;-><init>(Lcom/android/normal/a/i;)V

    iput-object v0, p0, Lcom/android/normal/a/i;->bao:Lcn/nubia/videogenerator/b/d;

    .line 292
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/normal/a/b;Lcom/android/normal/a/i;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/normal/a/i;-><init>(Lcom/android/normal/a/b;)V

    return-void
.end method

.method private bqZ(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 419
    if-nez p1, :cond_3

    .line 420
    return-void

    .line 422
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 424
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 425
    iget-object v0, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqz(Lcom/android/normal/a/b;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 426
    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 425
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 418
    :cond_3a
    return-void
.end method

.method private brb(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 432
    const/4 v1, 0x1

    .line 433
    if-nez p1, :cond_5

    .line 434
    return v0

    .line 436
    :cond_5
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    .line 438
    :try_start_a
    invoke-virtual {v2, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_18
    .catchall {:try_start_a .. :try_end_10} :catchall_1d

    move-result v3

    .line 440
    const/4 v4, 0x2

    if-ge v3, v4, :cond_22

    .line 446
    :goto_14
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 448
    :goto_17
    return v0

    .line 443
    :catch_18
    move-exception v1

    .line 446
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    goto :goto_17

    .line 445
    :catchall_1d
    move-exception v0

    .line 446
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 445
    throw v0

    :cond_22
    move v0, v1

    goto :goto_14
.end method

.method private brc()V
    .registers 6

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqK(Lcom/android/normal/a/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqJ(Lcom/android/normal/a/b;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_43

    .line 396
    :cond_10
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mkERROR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v2}, Lcom/android/normal/a/b;->bqK(Lcom/android/normal/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v2}, Lcom/android/normal/a/b;->bqJ(Lcom/android/normal/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void

    .line 398
    :cond_43
    iget-object v0, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqJ(Lcom/android/normal/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/normal/a/i;->brb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 399
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "v is not vaild"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqK(Lcom/android/normal/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/normal/a/i;->bqZ(Ljava/lang/String;)V

    .line 402
    return-void

    .line 404
    :cond_63
    iget-object v0, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqK(Lcom/android/normal/a/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqJ(Lcom/android/normal/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/d/a;->bPZ(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 405
    iget-object v1, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqJ(Lcom/android/normal/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/normal/a/i;->bqZ(Ljava/lang/String;)V

    .line 406
    if-eqz v0, :cond_a3

    .line 407
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CVP ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqK(Lcom/android/normal/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/normal/a/i;->bqZ(Ljava/lang/String;)V

    .line 394
    :goto_a2
    return-void

    .line 410
    :cond_a3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/normal/a/i;->bar:Z

    .line 411
    iget-object v0, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqz(Lcom/android/normal/a/b;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 412
    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v4}, Lcom/android/normal/a/b;->bqK(Lcom/android/normal/a/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 411
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_a2
.end method

.method private brd()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x3e8

    .line 364
    iget-object v0, p0, Lcom/android/normal/a/i;->ban:Lcn/nubia/videogenerator/b/f;

    iget-wide v2, p0, Lcom/android/normal/a/i;->bap:J

    iget-object v1, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqA(Lcom/android/normal/a/b;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    sub-long/2addr v2, v4

    mul-long/2addr v2, v8

    .line 365
    iget-wide v4, p0, Lcom/android/normal/a/i;->bap:J

    iget-object v1, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqA(Lcom/android/normal/a/b;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-long v6, v1

    add-long/2addr v4, v6

    mul-long/2addr v4, v8

    .line 364
    invoke-virtual {v0, v2, v3, v4, v5}, Lcn/nubia/videogenerator/b/f;->bOs(JJ)V

    .line 366
    iget-object v0, p0, Lcom/android/normal/a/i;->ban:Lcn/nubia/videogenerator/b/f;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/f;->bOt(I)V

    .line 367
    iget-object v0, p0, Lcom/android/normal/a/i;->ban:Lcn/nubia/videogenerator/b/f;

    new-instance v1, Lcom/android/normal/a/l;

    invoke-direct {v1, p0}, Lcom/android/normal/a/l;-><init>(Lcom/android/normal/a/i;)V

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/f;->bOr(Lcn/nubia/videogenerator/b/h;)V

    .line 376
    iget-object v0, p0, Lcom/android/normal/a/i;->ban:Lcn/nubia/videogenerator/b/f;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/b/f;->start()V

    .line 363
    return-void
.end method

.method private bre()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x3e8

    .line 380
    iget-object v0, p0, Lcom/android/normal/a/i;->bau:Lcn/nubia/videogenerator/b/f;

    iget-wide v2, p0, Lcom/android/normal/a/i;->bap:J

    iget-object v1, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqA(Lcom/android/normal/a/b;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    sub-long/2addr v2, v4

    mul-long/2addr v2, v8

    .line 381
    iget-wide v4, p0, Lcom/android/normal/a/i;->bap:J

    iget-object v1, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqA(Lcom/android/normal/a/b;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-long v6, v1

    add-long/2addr v4, v6

    mul-long/2addr v4, v8

    .line 380
    invoke-virtual {v0, v2, v3, v4, v5}, Lcn/nubia/videogenerator/b/f;->bOs(JJ)V

    .line 382
    iget-object v0, p0, Lcom/android/normal/a/i;->bau:Lcn/nubia/videogenerator/b/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/f;->bOt(I)V

    .line 383
    iget-object v0, p0, Lcom/android/normal/a/i;->bau:Lcn/nubia/videogenerator/b/f;

    new-instance v1, Lcom/android/normal/a/m;

    invoke-direct {v1, p0}, Lcom/android/normal/a/m;-><init>(Lcom/android/normal/a/i;)V

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/f;->bOr(Lcn/nubia/videogenerator/b/h;)V

    .line 391
    iget-object v0, p0, Lcom/android/normal/a/i;->bau:Lcn/nubia/videogenerator/b/f;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/b/f;->start()V

    .line 379
    return-void
.end method

.method static synthetic brf(Lcom/android/normal/a/i;)Lcn/nubia/videogenerator/a/c;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/i;->bal:Lcn/nubia/videogenerator/a/c;

    return-object v0
.end method

.method static synthetic brg(Lcom/android/normal/a/i;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/i;->baq:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic brh(Lcom/android/normal/a/i;)Lcn/nubia/videogenerator/a/c;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/i;->bas:Lcn/nubia/videogenerator/a/c;

    return-object v0
.end method

.method static synthetic bri(Lcom/android/normal/a/i;)Lcn/nubia/videogenerator/d/a;
    .registers 2

    iget-object v0, p0, Lcom/android/normal/a/i;->bav:Lcn/nubia/videogenerator/d/a;

    return-object v0
.end method

.method static synthetic brj(Lcom/android/normal/a/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/normal/a/i;->brc()V

    return-void
.end method

.method static synthetic brk(Lcom/android/normal/a/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/normal/a/i;->release()V

    return-void
.end method

.method private release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 505
    iget-object v0, p0, Lcom/android/normal/a/i;->bau:Lcn/nubia/videogenerator/b/f;

    if-eqz v0, :cond_c

    .line 506
    iget-object v0, p0, Lcom/android/normal/a/i;->bau:Lcn/nubia/videogenerator/b/f;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/b/f;->stop()V

    .line 507
    iput-object v1, p0, Lcom/android/normal/a/i;->bau:Lcn/nubia/videogenerator/b/f;

    .line 510
    :cond_c
    iget-object v0, p0, Lcom/android/normal/a/i;->ban:Lcn/nubia/videogenerator/b/f;

    if-eqz v0, :cond_17

    .line 511
    iget-object v0, p0, Lcom/android/normal/a/i;->ban:Lcn/nubia/videogenerator/b/f;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/b/f;->stop()V

    .line 512
    iput-object v1, p0, Lcom/android/normal/a/i;->ban:Lcn/nubia/videogenerator/b/f;

    .line 515
    :cond_17
    iget-object v0, p0, Lcom/android/normal/a/i;->bas:Lcn/nubia/videogenerator/a/c;

    if-eqz v0, :cond_22

    .line 516
    iget-object v0, p0, Lcom/android/normal/a/i;->bas:Lcn/nubia/videogenerator/a/c;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/c;->release()V

    .line 517
    iput-object v1, p0, Lcom/android/normal/a/i;->bas:Lcn/nubia/videogenerator/a/c;

    .line 520
    :cond_22
    iget-object v0, p0, Lcom/android/normal/a/i;->bal:Lcn/nubia/videogenerator/a/c;

    if-eqz v0, :cond_2d

    .line 521
    iget-object v0, p0, Lcom/android/normal/a/i;->bal:Lcn/nubia/videogenerator/a/c;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/c;->release()V

    .line 522
    iput-object v1, p0, Lcom/android/normal/a/i;->bal:Lcn/nubia/videogenerator/a/c;

    .line 525
    :cond_2d
    iget-object v0, p0, Lcom/android/normal/a/i;->bav:Lcn/nubia/videogenerator/d/a;

    if-eqz v0, :cond_38

    .line 526
    iget-object v0, p0, Lcom/android/normal/a/i;->bav:Lcn/nubia/videogenerator/d/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/d/a;->stop()V

    .line 527
    iput-object v1, p0, Lcom/android/normal/a/i;->bav:Lcn/nubia/videogenerator/d/a;

    .line 530
    :cond_38
    iget-object v0, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqD(Lcom/android/normal/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 531
    iget-object v0, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqD(Lcom/android/normal/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 534
    :cond_4e
    iget-boolean v0, p0, Lcom/android/normal/a/i;->bar:Z

    if-nez v0, :cond_65

    .line 536
    iget-object v0, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqK(Lcom/android/normal/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/normal/a/i;->bqZ(Ljava/lang/String;)V

    .line 537
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "delete s p"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_65
    return-void
.end method


# virtual methods
.method public bra()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqD(Lcom/android/normal/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 309
    iput-boolean v2, p0, Lcom/android/normal/a/i;->bar:Z

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/normal/a/i;->bap:J

    .line 311
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exporting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/normal/a/i;->bap:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqB(Lcom/android/normal/a/b;)Lcom/android/normal/a/c;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 313
    iget-object v0, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqB(Lcom/android/normal/a/b;)Lcom/android/normal/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/normal/a/c;->bqN()V

    .line 316
    :cond_45
    :try_start_45
    new-instance v0, Lcn/nubia/videogenerator/d/a;

    iget-object v1, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqJ(Lcom/android/normal/a/b;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/videogenerator/d/a;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/normal/a/i;->bav:Lcn/nubia/videogenerator/d/a;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_53} :catch_10b

    .line 320
    :goto_53
    iget-object v0, p0, Lcom/android/normal/a/i;->bav:Lcn/nubia/videogenerator/d/a;

    if-eqz v0, :cond_72

    .line 321
    iget-object v0, p0, Lcom/android/normal/a/i;->bav:Lcn/nubia/videogenerator/d/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/d/a;->bPo(I)V

    .line 322
    iget-object v0, p0, Lcom/android/normal/a/i;->bav:Lcn/nubia/videogenerator/d/a;

    iget-object v1, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqI(Lcom/android/normal/a/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/d/a;->setOrientation(I)V

    .line 323
    iget-object v0, p0, Lcom/android/normal/a/i;->bav:Lcn/nubia/videogenerator/d/a;

    new-instance v1, Lcom/android/normal/a/k;

    invoke-direct {v1, p0}, Lcom/android/normal/a/k;-><init>(Lcom/android/normal/a/i;)V

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/d/a;->bPx(Lcn/nubia/videogenerator/b/b;)V

    .line 337
    :cond_72
    new-instance v0, Lcn/nubia/videogenerator/b/f;

    iget-object v1, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqv(Lcom/android/normal/a/b;)Lcn/nubia/videogenerator/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/videogenerator/a/b;->bNo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/videogenerator/b/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/normal/a/i;->ban:Lcn/nubia/videogenerator/b/f;

    .line 338
    iget-object v0, p0, Lcom/android/normal/a/i;->ban:Lcn/nubia/videogenerator/b/f;

    iget-object v1, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqx(Lcom/android/normal/a/b;)Lcom/android/normal/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/normal/a/h;->bqS()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/f;->bOq(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 339
    new-instance v0, Lcn/nubia/videogenerator/b/f;

    iget-object v1, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqL(Lcom/android/normal/a/b;)Lcn/nubia/videogenerator/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/videogenerator/a/a;->bNb()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/videogenerator/b/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/normal/a/i;->bau:Lcn/nubia/videogenerator/b/f;

    .line 340
    iget-object v0, p0, Lcom/android/normal/a/i;->bau:Lcn/nubia/videogenerator/b/f;

    iget-object v1, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqx(Lcom/android/normal/a/b;)Lcom/android/normal/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/normal/a/h;->bqT()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/f;->bOq(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 343
    :try_start_b2
    new-instance v0, Lcn/nubia/videogenerator/a/c;

    iget-object v1, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqL(Lcom/android/normal/a/b;)Lcn/nubia/videogenerator/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/videogenerator/a/c;-><init>(Lcn/nubia/videogenerator/a/a;)V

    iput-object v0, p0, Lcom/android/normal/a/i;->bas:Lcn/nubia/videogenerator/a/c;

    .line 344
    iget-object v0, p0, Lcom/android/normal/a/i;->bas:Lcn/nubia/videogenerator/a/c;

    iget-object v1, p0, Lcom/android/normal/a/i;->bao:Lcn/nubia/videogenerator/b/d;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/a/c;->bNC(Lcn/nubia/videogenerator/b/d;)V

    .line 345
    new-instance v0, Lcn/nubia/videogenerator/a/c;

    iget-object v1, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v1}, Lcom/android/normal/a/b;->bqv(Lcom/android/normal/a/b;)Lcn/nubia/videogenerator/a/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/videogenerator/a/c;-><init>(Lcn/nubia/videogenerator/a/b;)V

    iput-object v0, p0, Lcom/android/normal/a/i;->bal:Lcn/nubia/videogenerator/a/c;

    .line 346
    iget-object v0, p0, Lcom/android/normal/a/i;->bal:Lcn/nubia/videogenerator/a/c;

    iget-object v1, p0, Lcom/android/normal/a/i;->bao:Lcn/nubia/videogenerator/b/d;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/a/c;->bNC(Lcn/nubia/videogenerator/b/d;)V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_da} :catch_111

    .line 351
    :goto_da
    new-instance v0, Lcn/nubia/videogenerator/a/f;

    invoke-direct {v0}, Lcn/nubia/videogenerator/a/f;-><init>()V

    iput-object v0, p0, Lcom/android/normal/a/i;->bam:Lcn/nubia/videogenerator/a/f;

    .line 352
    iget-object v0, p0, Lcom/android/normal/a/i;->bam:Lcn/nubia/videogenerator/a/f;

    iget-object v1, p0, Lcom/android/normal/a/i;->bal:Lcn/nubia/videogenerator/a/c;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/a/f;->bOk(Lcn/nubia/videogenerator/b/e;)V

    .line 353
    iget-object v0, p0, Lcom/android/normal/a/i;->bam:Lcn/nubia/videogenerator/a/f;

    iget-object v1, p0, Lcom/android/normal/a/i;->ban:Lcn/nubia/videogenerator/b/f;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/a/f;->bOl(Lcn/nubia/videogenerator/a/g;)V

    .line 355
    new-instance v0, Lcn/nubia/videogenerator/a/f;

    invoke-direct {v0}, Lcn/nubia/videogenerator/a/f;-><init>()V

    iput-object v0, p0, Lcom/android/normal/a/i;->bat:Lcn/nubia/videogenerator/a/f;

    .line 356
    iget-object v0, p0, Lcom/android/normal/a/i;->bat:Lcn/nubia/videogenerator/a/f;

    iget-object v1, p0, Lcom/android/normal/a/i;->bas:Lcn/nubia/videogenerator/a/c;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/a/f;->bOk(Lcn/nubia/videogenerator/b/e;)V

    .line 357
    iget-object v0, p0, Lcom/android/normal/a/i;->bat:Lcn/nubia/videogenerator/a/f;

    iget-object v1, p0, Lcom/android/normal/a/i;->bau:Lcn/nubia/videogenerator/b/f;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/a/f;->bOl(Lcn/nubia/videogenerator/a/g;)V

    .line 359
    invoke-direct {p0}, Lcom/android/normal/a/i;->brd()V

    .line 360
    invoke-direct {p0}, Lcom/android/normal/a/i;->bre()V

    .line 307
    return-void

    .line 317
    :catch_10b
    move-exception v0

    .line 318
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_53

    .line 347
    :catch_111
    move-exception v0

    .line 348
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_da
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 496
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cancel"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-direct {p0}, Lcom/android/normal/a/i;->release()V

    .line 498
    iget-object v0, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqE(Lcom/android/normal/a/b;)Lcom/android/normal/a/e;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 499
    iget-object v0, p0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqE(Lcom/android/normal/a/b;)Lcom/android/normal/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/normal/a/e;->bqP()V

    .line 500
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onLpCanceled"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_28
    return-void
.end method

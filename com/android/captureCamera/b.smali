.class public Lcom/android/captureCamera/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private ayo:Landroid/content/Context;

.field private ayp:Ljava/util/ArrayList;

.field private ayq:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 50
    const-string/jumbo v0, "CaptureCameraImageSaver"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/captureCamera/b;->ayo:Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lcom/android/captureCamera/b;->ayo:Landroid/content/Context;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/captureCamera/b;->ayp:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p0}, Lcom/android/captureCamera/b;->start()V

    .line 49
    return-void
.end method

.method private aNp()Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/captureCamera/b;->ayo:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private aNq([BJLjava/lang/String;Landroid/location/Location;IIIIILjava/lang/String;)V
    .registers 26

    .prologue
    .line 166
    if-nez p1, :cond_c

    .line 167
    const-string/jumbo v0, "ImageSaver"

    const-string/jumbo v1, "image data null"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    .line 170
    :cond_c
    invoke-direct {p0}, Lcom/android/captureCamera/b;->aNp()Landroid/content/ContentResolver;

    move-result-object v1

    .line 171
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p9

    move-object v7, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p10

    move-object/from16 v11, p11

    .line 170
    invoke-static/range {v1 .. v13}, Lcom/android/common/f;->aoB(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/location/Location;I[BIIILjava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;)Landroid/net/Uri;

    .line 163
    return-void
.end method


# virtual methods
.method public aNn([BJLjava/lang/String;Landroid/location/Location;IIIIILjava/lang/String;)V
    .registers 16

    .prologue
    const/4 v0, 0x0

    .line 60
    new-instance v1, Lcom/android/captureCamera/c;

    invoke-direct {v1, v0}, Lcom/android/captureCamera/c;-><init>(Lcom/android/captureCamera/c;)V

    .line 61
    iput-object p1, v1, Lcom/android/captureCamera/c;->data:[B

    .line 62
    iput-wide p2, v1, Lcom/android/captureCamera/c;->ayr:J

    .line 63
    iput-object p4, v1, Lcom/android/captureCamera/c;->ayv:Ljava/lang/String;

    .line 64
    if-nez p5, :cond_2c

    :goto_e
    iput-object v0, v1, Lcom/android/captureCamera/c;->ays:Landroid/location/Location;

    .line 65
    iput p6, v1, Lcom/android/captureCamera/c;->width:I

    .line 66
    iput p7, v1, Lcom/android/captureCamera/c;->height:I

    .line 67
    iput p8, v1, Lcom/android/captureCamera/c;->ayu:I

    .line 68
    iput p9, v1, Lcom/android/captureCamera/c;->orientation:I

    .line 69
    iput p10, v1, Lcom/android/captureCamera/c;->ayw:I

    .line 70
    iput-object p11, v1, Lcom/android/captureCamera/c;->ayt:Ljava/lang/String;

    .line 71
    monitor-enter p0

    .line 72
    :goto_1d
    :try_start_1d
    iget-object v0, p0, Lcom/android/captureCamera/b;->ayp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_3c

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_32

    .line 74
    :try_start_26
    invoke-virtual {p0}, Lcom/android/captureCamera/b;->wait()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_2a
    .catchall {:try_start_26 .. :try_end_29} :catchall_3c

    goto :goto_1d

    .line 75
    :catch_2a
    move-exception v0

    goto :goto_1d

    .line 64
    :cond_2c
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p5}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_e

    .line 79
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/android/captureCamera/b;->ayp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p0}, Lcom/android/captureCamera/b;->notifyAll()V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3c

    monitor-exit p0

    .line 59
    return-void

    .line 71
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aNo()V
    .registers 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/captureCamera/b;->aNr()V

    .line 134
    monitor-enter p0

    .line 135
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/android/captureCamera/b;->ayq:Z

    .line 136
    invoke-virtual {p0}, Lcom/android/captureCamera/b;->notifyAll()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    monitor-exit p0

    .line 139
    :try_start_b
    invoke-virtual {p0}, Lcom/android/captureCamera/b;->join()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_12

    .line 132
    :goto_e
    return-void

    .line 134
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :catch_12
    move-exception v0

    goto :goto_e
.end method

.method public aNr()V
    .registers 2

    .prologue
    .line 118
    monitor-enter p0

    .line 119
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/captureCamera/b;->ayp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-result v0

    if-nez v0, :cond_f

    .line 121
    :try_start_9
    invoke-virtual {p0}, Lcom/android/captureCamera/b;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_d
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    goto :goto_1

    .line 122
    :catch_d
    move-exception v0

    goto :goto_1

    :cond_f
    monitor-exit p0

    .line 117
    return-void

    .line 118
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 13

    .prologue
    .line 89
    :goto_0
    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/android/captureCamera/b;->ayp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 91
    invoke-virtual {p0}, Lcom/android/captureCamera/b;->notifyAll()V

    .line 95
    iget-boolean v0, p0, Lcom/android/captureCamera/b;->ayq:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_49

    if-eqz v0, :cond_12

    monitor-exit p0

    .line 86
    return-void

    .line 99
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lcom/android/captureCamera/b;->wait()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_17
    .catchall {:try_start_12 .. :try_end_15} :catchall_49

    :goto_15
    monitor-exit p0

    goto :goto_0

    .line 100
    :catch_17
    move-exception v0

    goto :goto_15

    .line 105
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/captureCamera/b;->ayp:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/captureCamera/c;
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_49

    monitor-exit p0

    .line 107
    iget-object v1, v0, Lcom/android/captureCamera/c;->data:[B

    iget-wide v2, v0, Lcom/android/captureCamera/c;->ayr:J

    iget-object v4, v0, Lcom/android/captureCamera/c;->ayv:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/captureCamera/c;->ays:Landroid/location/Location;

    iget v6, v0, Lcom/android/captureCamera/c;->width:I

    iget v7, v0, Lcom/android/captureCamera/c;->height:I

    .line 108
    iget v8, v0, Lcom/android/captureCamera/c;->ayu:I

    iget v9, v0, Lcom/android/captureCamera/c;->orientation:I

    iget v10, v0, Lcom/android/captureCamera/c;->ayw:I

    iget-object v11, v0, Lcom/android/captureCamera/c;->ayt:Ljava/lang/String;

    move-object v0, p0

    .line 107
    invoke-direct/range {v0 .. v11}, Lcom/android/captureCamera/b;->aNq([BJLjava/lang/String;Landroid/location/Location;IIIIILjava/lang/String;)V

    .line 109
    monitor-enter p0

    .line 110
    :try_start_3c
    iget-object v0, p0, Lcom/android/captureCamera/b;->ayp:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 111
    invoke-virtual {p0}, Lcom/android/captureCamera/b;->notifyAll()V
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_46

    goto :goto_15

    .line 109
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0

    .line 89
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

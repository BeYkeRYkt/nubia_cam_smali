.class public Lcom/android/videomaker/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/android/videomaker/g;


# instance fields
.field private aMA:I

.field private aMB:Lcom/android/videomaker/m;

.field private aMC:Landroid/media/MediaRecorder;

.field private aMD:Ljava/io/File;

.field private aME:Ljava/util/ArrayList;

.field private aMF:Ljava/util/ArrayList;

.field private aMG:Ljava/lang/String;

.field private aMH:I

.field private aMI:Ljava/io/File;

.field private aMJ:Lcom/android/videomaker/f;

.field private aMK:Ljava/lang/String;

.field private final aMg:I

.field private final aMh:I

.field private aMi:Lcom/android/common/appService/W;

.field private aMj:Ljava/lang/String;

.field private aMk:Lcom/android/common/CameraBufferManager;

.field private aMl:I

.field private aMm:Lcom/android/videomaker/l;

.field private aMn:J

.field private aMo:J

.field private aMp:Z

.field private aMq:Z

.field private aMr:Z

.field private aMs:Z

.field private aMt:Z

.field private aMu:J

.field private aMv:I

.field private aMw:Landroid/hardware/Camera;

.field private aMx:I

.field private aMy:Lcom/android/videomaker/k;

.field private aMz:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/videomaker/k;)V
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/videomaker/j;->aMh:I

    .line 71
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/videomaker/j;->aMg:I

    .line 72
    iput-object v1, p0, Lcom/android/videomaker/j;->aMw:Landroid/hardware/Camera;

    .line 74
    iput-wide v4, p0, Lcom/android/videomaker/j;->aMo:J

    .line 75
    iput v2, p0, Lcom/android/videomaker/j;->aMv:I

    .line 76
    iput v2, p0, Lcom/android/videomaker/j;->aMA:I

    .line 77
    iput v2, p0, Lcom/android/videomaker/j;->aMl:I

    .line 79
    iput-boolean v2, p0, Lcom/android/videomaker/j;->aMt:Z

    .line 80
    iput-boolean v3, p0, Lcom/android/videomaker/j;->aMs:Z

    .line 81
    iput-boolean v2, p0, Lcom/android/videomaker/j;->aMr:Z

    .line 82
    iput-boolean v2, p0, Lcom/android/videomaker/j;->aMp:Z

    .line 83
    iput-boolean v3, p0, Lcom/android/videomaker/j;->aMq:Z

    .line 87
    iput-object v1, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    .line 88
    iput-object v1, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    .line 89
    iput-object v1, p0, Lcom/android/videomaker/j;->aMk:Lcom/android/common/CameraBufferManager;

    .line 90
    iput-object v1, p0, Lcom/android/videomaker/j;->aMB:Lcom/android/videomaker/m;

    .line 92
    iput-wide v4, p0, Lcom/android/videomaker/j;->aMn:J

    .line 93
    iput-wide v4, p0, Lcom/android/videomaker/j;->aMu:J

    .line 94
    iput v2, p0, Lcom/android/videomaker/j;->aMx:I

    .line 95
    iput-object v1, p0, Lcom/android/videomaker/j;->aMK:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/android/videomaker/j;->aMJ:Lcom/android/videomaker/f;

    .line 97
    iput-object v1, p0, Lcom/android/videomaker/j;->aMF:Ljava/util/ArrayList;

    .line 99
    iput-object v1, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    .line 100
    iput-object v1, p0, Lcom/android/videomaker/j;->aMI:Ljava/io/File;

    .line 101
    iput-object v1, p0, Lcom/android/videomaker/j;->aMD:Ljava/io/File;

    .line 102
    iput-object v1, p0, Lcom/android/videomaker/j;->aME:Ljava/util/ArrayList;

    .line 103
    iput-object v1, p0, Lcom/android/videomaker/j;->aMj:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/android/videomaker/j;->aMG:Ljava/lang/String;

    .line 106
    iput v2, p0, Lcom/android/videomaker/j;->aMH:I

    .line 110
    iput-object p1, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    .line 111
    iput-object p2, p0, Lcom/android/videomaker/j;->aMy:Lcom/android/videomaker/k;

    .line 112
    new-instance v0, Lcom/android/common/CameraBufferManager;

    invoke-direct {v0}, Lcom/android/common/CameraBufferManager;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/j;->aMk:Lcom/android/common/CameraBufferManager;

    .line 113
    new-instance v0, Lcom/android/videomaker/l;

    invoke-direct {v0, p0, v1}, Lcom/android/videomaker/l;-><init>(Lcom/android/videomaker/j;Lcom/android/videomaker/l;)V

    iput-object v0, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/j;->aMF:Ljava/util/ArrayList;

    .line 115
    iput v2, p0, Lcom/android/videomaker/j;->aMH:I

    .line 116
    iput-boolean v3, p0, Lcom/android/videomaker/j;->aMq:Z

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/videomaker/j;->bcu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "shortvideomaker"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/j;->aMK:Ljava/lang/String;

    .line 109
    return-void
.end method

.method private bcA([BJ)Z
    .registers 8

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/videomaker/j;->aMk:Lcom/android/common/CameraBufferManager;

    iget v1, p0, Lcom/android/videomaker/j;->aMA:I

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/common/CameraBufferManager;->putData(I[B)Z

    move-result v0

    .line 394
    if-eqz v0, :cond_20

    .line 395
    iget v1, p0, Lcom/android/videomaker/j;->aMA:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/videomaker/j;->aMA:I

    .line 396
    iget v1, p0, Lcom/android/videomaker/j;->aMH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/videomaker/j;->aMH:I

    .line 397
    iput-wide p2, p0, Lcom/android/videomaker/j;->aMu:J

    .line 398
    iget-object v1, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/videomaker/l;->sendEmptyMessage(I)Z

    .line 400
    :cond_20
    return v0
.end method

.method private bcD()V
    .registers 4

    .prologue
    .line 657
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 658
    const v1, 0x7f0a03a6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 659
    const v1, 0x7f0a0278

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 660
    const v1, 0x7f0a0277

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 661
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 656
    return-void
.end method

.method private bcF()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-boolean v0, p0, Lcom/android/videomaker/j;->aMt:Z

    if-nez v0, :cond_6

    return-void

    .line 300
    :cond_6
    const-string/jumbo v0, "startRecording"

    invoke-static {v0}, Lcom/android/videomaker/j;->bcz(Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/videomaker/j;->aMK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "recording"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "amr"

    .line 303
    invoke-static {v0, v1}, Lcom/android/videomaker/a/b;->aYm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/j;->aMj:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/android/videomaker/j;->aMj:Ljava/lang/String;

    if-nez v0, :cond_37

    return-void

    .line 307
    :cond_37
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_42

    .line 308
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 309
    iput-object v2, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    .line 312
    :cond_42
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    .line 313
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    if-nez v0, :cond_4e

    return-void

    .line 316
    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 318
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 319
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 320
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    const/16 v1, 0x3200

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 321
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/videomaker/j;->aMj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 323
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_78} :catch_b8

    .line 332
    iget-object v0, p0, Lcom/android/videomaker/j;->aME:Ljava/util/ArrayList;

    if-nez v0, :cond_83

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/j;->aME:Ljava/util/ArrayList;

    .line 335
    :cond_83
    const-string/jumbo v0, "VideoMakerMultiShoot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecording size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videomaker/j;->aME:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 336
    const-string/jumbo v2, "  add mCurrentRecorderFilePath: "

    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 336
    iget-object v2, p0, Lcom/android/videomaker/j;->aMj:Ljava/lang/String;

    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/videomaker/j;->aME:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/videomaker/j;->aMj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    return-void

    .line 324
    :catch_b8
    move-exception v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 327
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 328
    iput-object v2, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    .line 329
    iget-object v0, p0, Lcom/android/videomaker/j;->aMj:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/videomaker/j;->bcn(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method private bcH()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    if-nez v0, :cond_6

    return-void

    .line 342
    :cond_6
    const-string/jumbo v0, "stopRecording"

    invoke-static {v0}, Lcom/android/videomaker/j;->bcz(Ljava/lang/String;)V

    .line 345
    :try_start_c
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_1e

    .line 354
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 355
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 356
    iput-object v1, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    .line 340
    return-void

    .line 346
    :catch_1e
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 349
    iget-object v0, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 350
    iput-object v1, p0, Lcom/android/videomaker/j;->aMC:Landroid/media/MediaRecorder;

    .line 351
    iget-object v0, p0, Lcom/android/videomaker/j;->aMj:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/videomaker/j;->bcn(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method static synthetic bcI(Lcom/android/videomaker/j;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic bcJ(Lcom/android/videomaker/j;)Lcom/android/common/CameraBufferManager;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/j;->aMk:Lcom/android/common/CameraBufferManager;

    return-object v0
.end method

.method static synthetic bcK(Lcom/android/videomaker/j;)I
    .registers 2

    iget v0, p0, Lcom/android/videomaker/j;->aMl:I

    return v0
.end method

.method static synthetic bcL(Lcom/android/videomaker/j;)Lcom/android/videomaker/l;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    return-object v0
.end method

.method static synthetic bcM(Lcom/android/videomaker/j;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/videomaker/j;->aMn:J

    return-wide v0
.end method

.method static synthetic bcN(Lcom/android/videomaker/j;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/videomaker/j;->aMp:Z

    return v0
.end method

.method static synthetic bcO(Lcom/android/videomaker/j;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/videomaker/j;->aMr:Z

    return v0
.end method

.method static synthetic bcP(Lcom/android/videomaker/j;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/videomaker/j;->aMs:Z

    return v0
.end method

.method static synthetic bcQ(Lcom/android/videomaker/j;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/videomaker/j;->aMt:Z

    return v0
.end method

.method static synthetic bcR(Lcom/android/videomaker/j;)I
    .registers 2

    iget v0, p0, Lcom/android/videomaker/j;->aMv:I

    return v0
.end method

.method static synthetic bcS(Lcom/android/videomaker/j;)Landroid/hardware/Camera;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/j;->aMw:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic bcT(Lcom/android/videomaker/j;)I
    .registers 2

    iget v0, p0, Lcom/android/videomaker/j;->aMx:I

    return v0
.end method

.method static synthetic bcU(Lcom/android/videomaker/j;)Lcom/android/videomaker/k;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/j;->aMy:Lcom/android/videomaker/k;

    return-object v0
.end method

.method static synthetic bcV(Lcom/android/videomaker/j;)I
    .registers 2

    iget v0, p0, Lcom/android/videomaker/j;->aMz:I

    return v0
.end method

.method static synthetic bcW(Lcom/android/videomaker/j;)I
    .registers 2

    iget v0, p0, Lcom/android/videomaker/j;->aMA:I

    return v0
.end method

.method static synthetic bcX(Lcom/android/videomaker/j;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/j;->aMF:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic bcY(Lcom/android/videomaker/j;)I
    .registers 2

    iget v0, p0, Lcom/android/videomaker/j;->aMH:I

    return v0
.end method

.method static synthetic bcZ(Lcom/android/videomaker/j;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/j;->aMK:Ljava/lang/String;

    return-object v0
.end method

.method private bcl()V
    .registers 5

    .prologue
    .line 184
    const-string/jumbo v0, "VideoMakerMultiShoot"

    const-string/jumbo v1, "ClearData"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/videomaker/j;->aMF:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    return-void

    .line 186
    :cond_e
    iget-object v0, p0, Lcom/android/videomaker/j;->aMF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 187
    invoke-direct {p0}, Lcom/android/videomaker/j;->bcm()V

    .line 189
    iget-object v0, p0, Lcom/android/videomaker/j;->aMI:Ljava/io/File;

    if-eqz v0, :cond_46

    .line 190
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/videomaker/j;->aMK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/android/videomaker/j;->aMI:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 192
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 193
    invoke-static {v0}, Lcom/android/videomaker/a/b;->aYk(Ljava/io/File;)Z

    .line 183
    :cond_46
    return-void
.end method

.method private bcm()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcom/android/videomaker/j;->aME:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 200
    iget-object v0, p0, Lcom/android/videomaker/j;->aME:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 201
    iput-object v1, p0, Lcom/android/videomaker/j;->aME:Ljava/util/ArrayList;

    .line 198
    :cond_c
    return-void
.end method

.method private bcn(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 360
    if-nez p1, :cond_3

    return-void

    .line 361
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 364
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 365
    invoke-static {v1}, Lcom/android/videomaker/a/b;->aYk(Ljava/io/File;)Z

    .line 359
    :cond_30
    return-void
.end method

.method private bcp()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    return-object v0
.end method

.method private bcq()Lcom/android/common/cameradevice/j;
    .registers 2

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/android/videomaker/j;->bcp()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method private bcs()I
    .registers 2

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/android/videomaker/j;->bcp()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pC()I

    move-result v0

    return v0
.end method

.method private bct()Landroid/hardware/Camera$Size;
    .registers 2

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/android/videomaker/j;->bcp()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method private bcu()Ljava/lang/String;
    .registers 5

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/android/videomaker/j;->bct()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-direct {p0}, Lcom/android/videomaker/j;->bct()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/videomaker/j;->aMv:I

    mul-int/2addr v0, v1

    .line 671
    invoke-static {}, Lcom/android/common/f;->aop()J

    move-result-wide v2

    int-to-long v0, v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 672
    sget-object v0, Lcom/android/common/f;->agS:Ljava/lang/String;

    return-object v0

    .line 674
    :cond_25
    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bcw()V
    .registers 4

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/videomaker/j;->bcu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    const-string/jumbo v1, "shortvideomaker"

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/j;->aMK:Ljava/lang/String;

    .line 278
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/videomaker/j;->aMK:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/videomaker/j;->aMI:Ljava/io/File;

    .line 279
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/videomaker/j;->aMK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "recording"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/videomaker/j;->aMD:Ljava/io/File;

    .line 280
    iget-object v0, p0, Lcom/android/videomaker/j;->aMD:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 281
    iget-object v0, p0, Lcom/android/videomaker/j;->aMD:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 284
    :cond_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/videomaker/j;->aMD:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 285
    const-string/jumbo v1, "videoMakerRecorder"

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 285
    const-string/jumbo v1, "."

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 285
    const-string/jumbo v1, "amr"

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/j;->aMG:Ljava/lang/String;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/j;->aME:Ljava/util/ArrayList;

    .line 289
    :try_start_93
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/videomaker/j;->aMD:Ljava/io/File;

    const-string/jumbo v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_b1

    .line 290
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string/jumbo v1, "Cannot create file .nomedia"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_ac} :catch_ac

    .line 292
    :catch_ac
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    return-void

    .line 275
    :cond_b1
    return-void
.end method

.method private static bcz(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 646
    const-string/jumbo v0, "VideoMakerMultiShoot"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 647
    const-string/jumbo v0, "VideoMakerMultiShoot"

    invoke-static {v0, p0}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_10
    return-void
.end method

.method static synthetic bda(Lcom/android/videomaker/j;Lcom/android/common/CameraBufferManager;)Lcom/android/common/CameraBufferManager;
    .registers 2

    iput-object p1, p0, Lcom/android/videomaker/j;->aMk:Lcom/android/common/CameraBufferManager;

    return-object p1
.end method

.method static synthetic bdb(Lcom/android/videomaker/j;I)I
    .registers 2

    iput p1, p0, Lcom/android/videomaker/j;->aMl:I

    return p1
.end method

.method static synthetic bdc(Lcom/android/videomaker/j;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/videomaker/j;->aMn:J

    return-wide p1
.end method

.method static synthetic bdd(Lcom/android/videomaker/j;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/videomaker/j;->aMs:Z

    return p1
.end method

.method static synthetic bde(Lcom/android/videomaker/j;)Landroid/hardware/Camera$Size;
    .registers 2

    invoke-direct {p0}, Lcom/android/videomaker/j;->bct()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bdf(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/videomaker/j;->bcz(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic bdg(Lcom/android/videomaker/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/videomaker/j;->bcD()V

    return-void
.end method

.method static synthetic bdh(Lcom/android/videomaker/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/videomaker/j;->bcF()V

    return-void
.end method


# virtual methods
.method public bcB(J)V
    .registers 4

    .prologue
    .line 214
    iput-wide p1, p0, Lcom/android/videomaker/j;->aMo:J

    .line 213
    return-void
.end method

.method public bcC(I)V
    .registers 2

    .prologue
    .line 218
    iput p1, p0, Lcom/android/videomaker/j;->aMv:I

    .line 217
    return-void
.end method

.method public bcE()V
    .registers 9

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 404
    const-string/jumbo v1, "startMultiShoot"

    invoke-static {v1}, Lcom/android/videomaker/j;->bcz(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/android/videomaker/j;->aMk:Lcom/android/common/CameraBufferManager;

    if-nez v1, :cond_16

    .line 407
    new-instance v1, Lcom/android/common/CameraBufferManager;

    invoke-direct {v1}, Lcom/android/common/CameraBufferManager;-><init>()V

    iput-object v1, p0, Lcom/android/videomaker/j;->aMk:Lcom/android/common/CameraBufferManager;

    .line 409
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsMultiShootDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/videomaker/j;->aMs:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/videomaker/j;->bcz(Ljava/lang/String;)V

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDataProvider.getRemainImages() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videomaker/j;->aMk:Lcom/android/common/CameraBufferManager;

    invoke-virtual {v2}, Lcom/android/common/CameraBufferManager;->getRemainImages()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/videomaker/j;->bcz(Ljava/lang/String;)V

    .line 411
    iget-boolean v1, p0, Lcom/android/videomaker/j;->aMs:Z

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/android/videomaker/j;->aMk:Lcom/android/common/CameraBufferManager;

    invoke-virtual {v1}, Lcom/android/common/CameraBufferManager;->getRemainImages()I

    move-result v1

    if-eqz v1, :cond_5f

    .line 412
    :cond_58
    const-string/jumbo v0, "has remain images, return!"

    invoke-static {v0}, Lcom/android/videomaker/j;->bcz(Ljava/lang/String;)V

    .line 413
    return-void

    .line 416
    :cond_5f
    iget v1, p0, Lcom/android/videomaker/j;->aMH:I

    iget v2, p0, Lcom/android/videomaker/j;->aMv:I

    if-ne v1, v2, :cond_6c

    .line 417
    const-string/jumbo v0, "Max Number"

    invoke-static {v0}, Lcom/android/videomaker/j;->bcz(Ljava/lang/String;)V

    .line 418
    return-void

    .line 420
    :cond_6c
    iget-boolean v1, p0, Lcom/android/videomaker/j;->aMq:Z

    if-eqz v1, :cond_fc

    .line 421
    invoke-direct {p0}, Lcom/android/videomaker/j;->bcm()V

    .line 422
    invoke-direct {p0}, Lcom/android/videomaker/j;->bcp()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/common/appService/W;->qn(Z)V

    .line 423
    iget-object v1, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    invoke-virtual {v1, v5}, Lcom/android/videomaker/l;->sendEmptyMessage(I)Z

    .line 424
    invoke-direct {p0}, Lcom/android/videomaker/j;->bcw()V

    .line 425
    iput-boolean v0, p0, Lcom/android/videomaker/j;->aMq:Z

    .line 430
    :goto_84
    invoke-direct {p0}, Lcom/android/videomaker/j;->bct()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-direct {p0}, Lcom/android/videomaker/j;->bct()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/videomaker/j;->aMz:I

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPreviewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/videomaker/j;->bct()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/videomaker/j;->bct()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/videomaker/j;->bcz(Ljava/lang/String;)V

    .line 432
    iput-boolean v0, p0, Lcom/android/videomaker/j;->aMs:Z

    .line 433
    iput-boolean v5, p0, Lcom/android/videomaker/j;->aMt:Z

    .line 434
    iput-boolean v0, p0, Lcom/android/videomaker/j;->aMr:Z

    .line 435
    iput-boolean v0, p0, Lcom/android/videomaker/j;->aMp:Z

    .line 436
    iput v0, p0, Lcom/android/videomaker/j;->aMl:I

    .line 437
    iput v0, p0, Lcom/android/videomaker/j;->aMA:I

    .line 438
    iget-object v1, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-direct {p0}, Lcom/android/videomaker/j;->bcs()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/common/h;->aoU(II)I

    move-result v1

    iput v1, p0, Lcom/android/videomaker/j;->aMx:I

    .line 440
    new-instance v1, Lcom/android/videomaker/m;

    invoke-direct {v1, p0}, Lcom/android/videomaker/m;-><init>(Lcom/android/videomaker/j;)V

    iput-object v1, p0, Lcom/android/videomaker/j;->aMB:Lcom/android/videomaker/m;

    .line 442
    iget-object v1, p0, Lcom/android/videomaker/j;->aMk:Lcom/android/common/CameraBufferManager;

    iget v2, p0, Lcom/android/videomaker/j;->aMz:I

    int-to-long v2, v2

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/common/CameraBufferManager;->initDataBuffer(JI)Z

    move-result v1

    if-nez v1, :cond_104

    .line 443
    const-string/jumbo v0, "mDataProvider.initDataBuffer failed"

    invoke-static {v0}, Lcom/android/videomaker/j;->bcz(Ljava/lang/String;)V

    .line 444
    return-void

    .line 427
    :cond_fc
    iget-object v1, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/videomaker/l;->sendEmptyMessage(I)Z

    goto :goto_84

    .line 447
    :cond_104
    invoke-direct {p0}, Lcom/android/videomaker/j;->bcq()Lcom/android/common/cameradevice/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/j;->KQ()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videomaker/j;->aMw:Landroid/hardware/Camera;

    .line 448
    iget-object v1, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pv()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/android/common/appService/k;->jP(Landroid/hardware/Camera$PreviewCallback;I)V

    .line 451
    iget-object v1, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/common/camerastate/b;

    sget-object v3, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    aput-object v3, v2, v0

    .line 452
    sget-object v3, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    aput-object v3, v2, v5

    .line 453
    sget-object v3, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    aput-object v3, v2, v6

    .line 451
    invoke-virtual {v1, v2}, Lcom/android/common/camerastate/a;->amM([Lcom/android/common/camerastate/b;)V

    .line 454
    :goto_135
    if-ge v0, v6, :cond_143

    .line 455
    iget-object v1, p0, Lcom/android/videomaker/j;->aMw:Landroid/hardware/Camera;

    iget v2, p0, Lcom/android/videomaker/j;->aMz:I

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_135

    .line 457
    :cond_143
    iget-object v0, p0, Lcom/android/videomaker/j;->aMB:Lcom/android/videomaker/m;

    invoke-virtual {v0}, Lcom/android/videomaker/m;->start()V

    .line 459
    iget-object v0, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    invoke-virtual {v0, v7}, Lcom/android/videomaker/l;->removeMessages(I)V

    .line 460
    iget-object v0, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v7, v2, v3}, Lcom/android/videomaker/l;->sendEmptyMessageDelayed(IJ)Z

    .line 462
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->ht()V

    .line 403
    return-void
.end method

.method public bcG()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMultiShoot, mIsMultiShootOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/videomaker/j;->aMt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videomaker/j;->bcz(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/videomaker/l;->removeMessages(I)V

    .line 468
    invoke-virtual {p0}, Lcom/android/videomaker/j;->bcy()Z

    move-result v0

    if-nez v0, :cond_36

    .line 469
    iget-object v0, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    .line 468
    if-eqz v0, :cond_36

    .line 470
    iget-object v0, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/videomaker/l;->sendEmptyMessage(I)Z

    .line 473
    :cond_36
    iget v0, p0, Lcom/android/videomaker/j;->aMH:I

    if-nez v0, :cond_44

    .line 474
    iget-object v0, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/videomaker/l;->sendEmptyMessage(I)Z

    .line 475
    invoke-virtual {p0}, Lcom/android/videomaker/j;->bck()V

    .line 478
    :cond_44
    iget-boolean v0, p0, Lcom/android/videomaker/j;->aMt:Z

    if-eqz v0, :cond_6e

    .line 479
    invoke-direct {p0}, Lcom/android/videomaker/j;->bcH()V

    .line 481
    iput-boolean v2, p0, Lcom/android/videomaker/j;->aMt:Z

    .line 482
    iget-object v0, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    if-eqz v0, :cond_6e

    .line 483
    iget-object v0, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 484
    iget-object v0, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KQ()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 485
    iget-object v0, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/appService/k;->jK(Landroid/hardware/Camera$PreviewCallback;)V

    .line 488
    :cond_6e
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 465
    return-void
.end method

.method public bce()V
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/videomaker/j;->aMy:Lcom/android/videomaker/k;

    invoke-interface {v0}, Lcom/android/videomaker/k;->bdl()V

    .line 652
    return-void
.end method

.method public bck()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 235
    const-string/jumbo v0, "cancelCapture"

    invoke-static {v0}, Lcom/android/videomaker/j;->bcz(Ljava/lang/String;)V

    .line 236
    iput-boolean v1, p0, Lcom/android/videomaker/j;->aMr:Z

    .line 237
    invoke-direct {p0}, Lcom/android/videomaker/j;->bcp()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->qn(Z)V

    .line 238
    invoke-direct {p0}, Lcom/android/videomaker/j;->bcl()V

    .line 239
    iput v2, p0, Lcom/android/videomaker/j;->aMH:I

    .line 240
    iput-boolean v1, p0, Lcom/android/videomaker/j;->aMq:Z

    .line 242
    iget-object v0, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amI()V

    .line 243
    iget-object v0, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    if-eqz v0, :cond_36

    .line 244
    iget-object v0, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    invoke-virtual {v0, v1}, Lcom/android/videomaker/l;->removeMessages(I)V

    .line 245
    iget-object v0, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/videomaker/l;->removeMessages(I)V

    .line 246
    iget-object v0, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/videomaker/l;->sendEmptyMessage(I)Z

    .line 234
    :cond_36
    return-void
.end method

.method public bco()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 251
    const-string/jumbo v0, "doneCapture"

    invoke-static {v0}, Lcom/android/videomaker/j;->bcz(Ljava/lang/String;)V

    .line 252
    iput-boolean v4, p0, Lcom/android/videomaker/j;->aMr:Z

    .line 253
    iget-object v0, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    invoke-virtual {v0, v4}, Lcom/android/videomaker/l;->removeMessages(I)V

    .line 254
    iget-object v0, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/videomaker/l;->removeMessages(I)V

    .line 260
    iget-object v0, p0, Lcom/android/videomaker/j;->aMJ:Lcom/android/videomaker/f;

    if-nez v0, :cond_2a

    .line 261
    new-instance v0, Lcom/android/videomaker/f;

    iget-object v1, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    iget-object v2, p0, Lcom/android/videomaker/j;->aMF:Ljava/util/ArrayList;

    .line 262
    iget-object v3, p0, Lcom/android/videomaker/j;->aMK:Ljava/lang/String;

    .line 261
    invoke-direct {v0, v1, v2, v3}, Lcom/android/videomaker/f;-><init>(Lcom/android/common/appService/W;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/videomaker/j;->aMJ:Lcom/android/videomaker/f;

    .line 263
    iget-object v0, p0, Lcom/android/videomaker/j;->aMJ:Lcom/android/videomaker/f;

    invoke-virtual {v0, p0}, Lcom/android/videomaker/f;->bbq(Lcom/android/videomaker/g;)V

    .line 266
    :cond_2a
    iget-object v0, p0, Lcom/android/videomaker/j;->aMJ:Lcom/android/videomaker/f;

    iget-object v1, p0, Lcom/android/videomaker/j;->aME:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/videomaker/f;->bbp(Ljava/util/ArrayList;)V

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/videomaker/j;->aMH:I

    .line 268
    iput-boolean v4, p0, Lcom/android/videomaker/j;->aMq:Z

    .line 270
    iget-object v0, p0, Lcom/android/videomaker/j;->aMi:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amI()V

    .line 271
    iget-object v0, p0, Lcom/android/videomaker/j;->aMm:Lcom/android/videomaker/l;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/videomaker/l;->sendEmptyMessage(I)Z

    .line 272
    iget-object v0, p0, Lcom/android/videomaker/j;->aMJ:Lcom/android/videomaker/f;

    invoke-virtual {v0}, Lcom/android/videomaker/f;->bay()V

    .line 250
    return-void
.end method

.method public bcr()Z
    .registers 2

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/android/videomaker/j;->aMq:Z

    return v0
.end method

.method public bcv()Lcom/android/videomaker/f;
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/videomaker/j;->aMJ:Lcom/android/videomaker/f;

    return-object v0
.end method

.method public bcx()Z
    .registers 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/videomaker/j;->aMJ:Lcom/android/videomaker/f;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/videomaker/j;->aMJ:Lcom/android/videomaker/f;

    invoke-virtual {v0}, Lcom/android/videomaker/f;->baO()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public bcy()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 222
    iget-boolean v0, p0, Lcom/android/videomaker/j;->aMs:Z

    if-eqz v0, :cond_11

    .line 223
    iget-object v0, p0, Lcom/android/videomaker/j;->aMk:Lcom/android/common/CameraBufferManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/videomaker/j;->aMk:Lcom/android/common/CameraBufferManager;

    invoke-virtual {v0}, Lcom/android/common/CameraBufferManager;->getRemainImages()I

    move-result v0

    if-eqz v0, :cond_12

    .line 224
    :cond_11
    return v1

    .line 226
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 9

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/android/videomaker/j;->aMs:Z

    if-eqz v0, :cond_b

    .line 372
    const-string/jumbo v0, "onPreviewFrame return"

    invoke-static {v0}, Lcom/android/videomaker/j;->bcz(Ljava/lang/String;)V

    .line 373
    return-void

    .line 375
    :cond_b
    iget v0, p0, Lcom/android/videomaker/j;->aMH:I

    iget v1, p0, Lcom/android/videomaker/j;->aMv:I

    if-ne v0, v1, :cond_15

    .line 376
    invoke-virtual {p0}, Lcom/android/videomaker/j;->bcG()V

    .line 377
    return-void

    .line 379
    :cond_15
    iget v0, p0, Lcom/android/videomaker/j;->aMA:I

    iget v1, p0, Lcom/android/videomaker/j;->aMl:I

    add-int/lit8 v1, v1, 0x64

    if-ge v0, v1, :cond_44

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 381
    iget-wide v2, p0, Lcom/android/videomaker/j;->aMu:J

    sub-long v2, v0, v2

    .line 382
    iget-wide v2, p0, Lcom/android/videomaker/j;->aMu:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/android/videomaker/j;->aMo:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_33

    iget v2, p0, Lcom/android/videomaker/j;->aMA:I

    if-nez v2, :cond_3a

    .line 383
    :cond_33
    invoke-direct {p0, p1, v0, v1}, Lcom/android/videomaker/j;->bcA([BJ)Z

    move-result v0

    if-nez v0, :cond_3a

    return-void

    .line 386
    :cond_3a
    iget-boolean v0, p0, Lcom/android/videomaker/j;->aMp:Z

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/videomaker/j;->aMw:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 370
    :cond_43
    :goto_43
    return-void

    .line 388
    :cond_44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videomaker/j;->aMp:Z

    goto :goto_43
.end method

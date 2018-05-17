.class public Lcom/android/pretty/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ucamera/ucam/jni/BurstProcessJni$CallBackJNI;


# static fields
.field public static final aBU:Ljava/lang/String;


# instance fields
.field private final STATE_IDLE:I

.field private final aBV:I

.field private final aBW:I

.field private final aBX:I

.field private final aBY:I

.field private final aBZ:I

.field private aCa:Z

.field private aCb:Lcom/android/common/appService/W;

.field private aCc:I

.field private aCd:I

.field private aCe:[Landroid/graphics/Bitmap;

.field private aCf:Z

.field private aCg:Lcom/android/common/exif/o;

.field private aCh:Lcom/android/pretty/b;

.field private aCi:[Lcom/nubia/camera/common/Native/BufferCell;

.field private aCj:Lcom/android/pretty/d;

.field private aCk:Lcom/android/pretty/c;

.field private aCl:I

.field private aCm:I

.field private aCn:[B

.field private aCo:I

.field private aCp:Z

.field private aCq:Lcom/android/pretty/e;

.field public aCr:Ljava/util/ArrayList;

.field private aCs:[Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/common/f;->agO:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@78
    nop

    move-result-object v0

    const-string/jumbo v1, "/UCam"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@78
    nop

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@7
    nop

    move-result-object v0

    sput-object v0, Lcom/android/pretty/a;->aBU:Ljava/lang/String;

    .line 68
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/pretty/a;->aBV:I

    .line 75
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/pretty/a;->aBZ:I

    .line 76
    iput v1, p0, Lcom/android/pretty/a;->STATE_IDLE:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/pretty/a;->aBY:I

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/pretty/a;->aBX:I

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/pretty/a;->aBW:I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/pretty/a;->aCr:Ljava/util/ArrayList;

    .line 84
    iput-object v2, p0, Lcom/android/pretty/a;->aCb:Lcom/android/common/appService/W;

    .line 85
    iput-object v2, p0, Lcom/android/pretty/a;->aCn:[B

    .line 86
    iput v1, p0, Lcom/android/pretty/a;->aCo:I

    .line 87
    iput-object v2, p0, Lcom/android/pretty/a;->aCe:[Landroid/graphics/Bitmap;

    .line 88
    iput-object v2, p0, Lcom/android/pretty/a;->aCs:[Landroid/graphics/Bitmap;

    .line 89
    iput v1, p0, Lcom/android/pretty/a;->aCc:I

    .line 90
    new-instance v0, Lcom/android/pretty/b;

    invoke-direct {v0, p0}, Lcom/android/pretty/b;-><init>(Lcom/android/pretty/a;)V

    iput-object v0, p0, Lcom/android/pretty/a;->aCh:Lcom/android/pretty/b;

    .line 91
    iput v1, p0, Lcom/android/pretty/a;->aCm:I

    .line 92
    iput v1, p0, Lcom/android/pretty/a;->aCl:I

    .line 93
    iput-object v2, p0, Lcom/android/pretty/a;->aCk:Lcom/android/pretty/c;

    .line 94
    iput v1, p0, Lcom/android/pretty/a;->aCd:I

    .line 95
    iput-boolean v1, p0, Lcom/android/pretty/a;->aCa:Z

    .line 96
    iput-object v2, p0, Lcom/android/pretty/a;->aCi:[Lcom/nubia/camera/common/Native/BufferCell;

    .line 97
    iput-object v2, p0, Lcom/android/pretty/a;->aCj:Lcom/android/pretty/d;

    .line 98
    iput-object v2, p0, Lcom/android/pretty/a;->aCq:Lcom/android/pretty/e;

    .line 99
    iput-boolean v1, p0, Lcom/android/pretty/a;->aCp:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/pretty/a;->aCf:Z

    .line 496
    iput-object v2, p0, Lcom/android/pretty/a;->aCg:Lcom/android/common/exif/o;

    .line 103
    iput-object p1, p0, Lcom/android/pretty/a;->aCb:Lcom/android/common/appService/W;

    .line 102
    return-void
.end method

.method private aQN([B)V
    .registers 4

    .prologue
    .line 411
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/ucamera/ucam/jni/BurstProcessJni;->addToCMM([BLjava/lang/String;I)I

    .line 410
    return-void
.end method

.method private aQO()V
    .registers 6

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/pretty/a;->aCb:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 487
    const/4 v0, 0x0

    :goto_b
    const/16 v2, 0xa

    if-ge v0, v2, :cond_26

    .line 488
    iget-object v2, p0, Lcom/android/pretty/a;->aCb:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v2

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Lcom/android/common/cameradevice/j;->KD([B)V

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 485
    :cond_26
    return-void
.end method

.method private aQQ()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 395
    const-string/jumbo v0, ""

    .line 396
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 397
    const-string/jumbo v1, "\'Burst\'_yyyyMMdd_HHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 396
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 399
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 400
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 401
    sget-object v1, Lcom/android/pretty/a;->aBU:Ljava/lang/String;

    .line 402
    const-string/jumbo v2, "/Burst_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 403
    if-lez v2, :cond_29

    .line 404
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 406
    :cond_29
    return-object v0
.end method

.method private aQR()Ljava/lang/String;
    .registers 4

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/android/pretty/a;->aQT()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_pretty_effect_key"

    const-string/jumbo v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aQS([B)V
    .registers 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/pretty/a;->aCg:Lcom/android/common/exif/o;

    if-eqz v0, :cond_5

    .line 511
    return-void

    .line 514
    :cond_5
    :try_start_5
    new-instance v0, Lcom/android/common/exif/o;

    invoke-direct {v0}, Lcom/android/common/exif/o;-><init>()V

    iput-object v0, p0, Lcom/android/pretty/a;->aCg:Lcom/android/common/exif/o;

    .line 515
    iget-object v0, p0, Lcom/android/pretty/a;->aCg:Lcom/android/common/exif/o;

    invoke-virtual {v0, p1}, Lcom/android/common/exif/o;->QH([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_12

    .line 509
    return-void

    .line 516
    :catch_12
    move-exception v0

    .line 517
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 518
    return-void
.end method

.method private aQT()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/pretty/a;->aCb:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method private aQV(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/pretty/a;->aCb:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aQX()V
    .registers 5

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/android/pretty/a;->aCe:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    .line 416
    new-array v0, v3, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/pretty/a;->aCe:[Landroid/graphics/Bitmap;

    .line 417
    :cond_b
    iget-object v0, p0, Lcom/android/pretty/a;->aCs:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_13

    .line 418
    new-array v0, v3, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/pretty/a;->aCs:[Landroid/graphics/Bitmap;

    .line 420
    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-ge v0, v3, :cond_21

    .line 421
    iget-object v1, p0, Lcom/android/pretty/a;->aCe:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    .line 422
    iget-object v1, p0, Lcom/android/pretty/a;->aCs:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 414
    :cond_21
    return-void
.end method

.method private aQY()V
    .registers 1

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/pretty/a;->aQX()V

    .line 322
    invoke-direct {p0}, Lcom/android/pretty/a;->aQZ()V

    .line 323
    invoke-direct {p0}, Lcom/android/pretty/a;->aQO()V

    .line 320
    return-void
.end method

.method private aQZ()V
    .registers 8

    .prologue
    const/16 v6, 0xa

    .line 327
    iget-object v0, p0, Lcom/android/pretty/a;->aCi:[Lcom/nubia/camera/common/Native/BufferCell;

    if-nez v0, :cond_a

    .line 328
    new-array v0, v6, [Lcom/nubia/camera/common/Native/BufferCell;

    iput-object v0, p0, Lcom/android/pretty/a;->aCi:[Lcom/nubia/camera/common/Native/BufferCell;

    .line 330
    :cond_a
    iget-object v0, p0, Lcom/android/pretty/a;->aCb:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 331
    const/4 v0, 0x0

    :goto_15
    if-ge v0, v6, :cond_2c

    .line 332
    iget-object v2, p0, Lcom/android/pretty/a;->aCi:[Lcom/nubia/camera/common/Native/BufferCell;

    new-instance v3, Lcom/nubia/camera/common/Native/BufferCell;

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(I)V

    aput-object v3, v2, v0

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 326
    :cond_2c
    return-void
.end method

.method static synthetic aRA(Lcom/android/pretty/a;)[Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/a;->aCs:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic aRB(Lcom/android/pretty/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/pretty/a;->aCf:Z

    return p1
.end method

.method static synthetic aRC(Lcom/android/pretty/a;Lcom/android/pretty/d;)Lcom/android/pretty/d;
    .registers 2

    iput-object p1, p0, Lcom/android/pretty/a;->aCj:Lcom/android/pretty/d;

    return-object p1
.end method

.method static synthetic aRD(Lcom/android/pretty/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/pretty/a;->aCp:Z

    return p1
.end method

.method static synthetic aRE(Lcom/android/pretty/a;)Landroid/content/SharedPreferences;
    .registers 2

    invoke-direct {p0}, Lcom/android/pretty/a;->aQT()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aRF(Lcom/android/pretty/a;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/pretty/a;->aQR()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aRG(Lcom/android/pretty/a;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/pretty/a;->aQV(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aRH(Lcom/android/pretty/a;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/pretty/a;->aRk([B)V

    return-void
.end method

.method static synthetic aRI(Lcom/android/pretty/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/pretty/a;->aRo()V

    return-void
.end method

.method private aRe(Ljava/util/List;I)V
    .registers 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/pretty/a;->aCk:Lcom/android/pretty/c;

    if-eqz v0, :cond_9

    .line 298
    iget-object v0, p0, Lcom/android/pretty/a;->aCk:Lcom/android/pretty/c;

    invoke-interface {v0, p1, p2}, Lcom/android/pretty/c;->aRJ(Ljava/util/List;I)V

    .line 296
    :cond_9
    return-void
.end method

.method private aRf()V
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/pretty/a;->aCk:Lcom/android/pretty/c;

    if-eqz v0, :cond_9

    .line 292
    iget-object v0, p0, Lcom/android/pretty/a;->aCk:Lcom/android/pretty/c;

    invoke-interface {v0}, Lcom/android/pretty/c;->aRK()V

    .line 290
    :cond_9
    return-void
.end method

.method private aRg()V
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/pretty/a;->aCk:Lcom/android/pretty/c;

    if-eqz v0, :cond_9

    .line 316
    iget-object v0, p0, Lcom/android/pretty/a;->aCk:Lcom/android/pretty/c;

    invoke-interface {v0}, Lcom/android/pretty/c;->aRL()V

    .line 314
    :cond_9
    return-void
.end method

.method private aRh()V
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/pretty/a;->aCk:Lcom/android/pretty/c;

    if-eqz v0, :cond_9

    .line 286
    iget-object v0, p0, Lcom/android/pretty/a;->aCk:Lcom/android/pretty/c;

    invoke-interface {v0}, Lcom/android/pretty/c;->aRM()V

    .line 284
    :cond_9
    return-void
.end method

.method private aRi()V
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/pretty/a;->aCk:Lcom/android/pretty/c;

    if-eqz v0, :cond_9

    .line 310
    iget-object v0, p0, Lcom/android/pretty/a;->aCk:Lcom/android/pretty/c;

    invoke-interface {v0}, Lcom/android/pretty/c;->aRN()V

    .line 308
    :cond_9
    return-void
.end method

.method private aRj()V
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/pretty/a;->aCk:Lcom/android/pretty/c;

    if-eqz v0, :cond_9

    .line 304
    iget-object v0, p0, Lcom/android/pretty/a;->aCk:Lcom/android/pretty/c;

    invoke-interface {v0}, Lcom/android/pretty/c;->aRO()V

    .line 302
    :cond_9
    return-void
.end method

.method private aRk([B)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 460
    iget-object v0, p0, Lcom/android/pretty/a;->aCb:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->ay()V

    .line 461
    invoke-direct {p0}, Lcom/android/pretty/a;->aRv()V

    .line 462
    invoke-direct {p0}, Lcom/android/pretty/a;->aRq()V

    .line 463
    invoke-direct {p0}, Lcom/android/pretty/a;->aRp()V

    .line 465
    iput v1, p0, Lcom/android/pretty/a;->aCd:I

    .line 467
    iput-boolean v1, p0, Lcom/android/pretty/a;->aCf:Z

    .line 468
    iput-boolean v1, p0, Lcom/android/pretty/a;->aCp:Z

    .line 470
    invoke-direct {p0}, Lcom/android/pretty/a;->aRi()V

    .line 471
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 459
    return-void
.end method

.method private aRo()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 427
    iget-boolean v0, p0, Lcom/android/pretty/a;->aCp:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/pretty/a;->aCf:Z

    if-eqz v0, :cond_2e

    .line 431
    const-string/jumbo v0, "BestPhotoService"

    const-string/jumbo v1, "Reveive CMM Callback"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/pretty/a;->aRc()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 433
    iget-object v0, p0, Lcom/android/pretty/a;->aCs:[Landroid/graphics/Bitmap;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/pretty/a;->aCc:I

    invoke-direct {p0, v0, v1}, Lcom/android/pretty/a;->aRe(Ljava/util/List;I)V

    .line 434
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/pretty/a;->aCd:I

    .line 436
    :cond_26
    iput v2, p0, Lcom/android/pretty/a;->aCo:I

    .line 437
    iput v2, p0, Lcom/android/pretty/a;->aCl:I

    .line 438
    invoke-direct {p0}, Lcom/android/pretty/a;->stopCMM()V

    .line 426
    return-void

    .line 428
    :cond_2e
    const-string/jumbo v0, "BestPhotoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRawDataProcessDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/pretty/a;->aCp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; mRawDataProcessDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/pretty/a;->aCf:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method private aRp()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 382
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0xa

    if-ge v0, v1, :cond_41

    .line 383
    iget-object v1, p0, Lcom/android/pretty/a;->aCe:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/pretty/a;->aCe:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 387
    :cond_16
    :goto_16
    iget-object v1, p0, Lcom/android/pretty/a;->aCs:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/pretty/a;->aCs:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 382
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 384
    :cond_29
    iget-object v1, p0, Lcom/android/pretty/a;->aCe:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 385
    iget-object v1, p0, Lcom/android/pretty/a;->aCe:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    goto :goto_16

    .line 388
    :cond_35
    iget-object v1, p0, Lcom/android/pretty/a;->aCs:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 389
    iget-object v1, p0, Lcom/android/pretty/a;->aCs:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    goto :goto_26

    .line 381
    :cond_41
    return-void
.end method

.method private aRq()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 475
    iget-object v0, p0, Lcom/android/pretty/a;->aCi:[Lcom/nubia/camera/common/Native/BufferCell;

    if-eqz v0, :cond_1e

    .line 476
    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1e

    .line 477
    iget-object v1, p0, Lcom/android/pretty/a;->aCi:[Lcom/nubia/camera/common/Native/BufferCell;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1b

    .line 478
    iget-object v1, p0, Lcom/android/pretty/a;->aCi:[Lcom/nubia/camera/common/Native/BufferCell;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 479
    iget-object v1, p0, Lcom/android/pretty/a;->aCi:[Lcom/nubia/camera/common/Native/BufferCell;

    aput-object v2, v1, v0

    .line 476
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 474
    :cond_1e
    return-void
.end method

.method private aRs(Lcom/nubia/camera/common/Native/BufferCell;)V
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 337
    invoke-direct {p0}, Lcom/android/pretty/a;->aQR()Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-direct {p0}, Lcom/android/pretty/a;->aQT()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "pretty_expandable_item"

    const/4 v5, 0x5

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6e

    .line 339
    :goto_14
    const-string/jumbo v0, "none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 341
    :cond_1d
    invoke-direct {p0}, Lcom/android/pretty/a;->aQT()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 342
    const-string/jumbo v1, "pref_camera_pretty_smooth_key"

    .line 343
    const v2, 0x7f0a046d

    invoke-direct {p0, v2}, Lcom/android/pretty/a;->aQV(I)Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 344
    invoke-direct {p0}, Lcom/android/pretty/a;->aQT()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 345
    const-string/jumbo v1, "pref_camera_pretty_toning_key"

    .line 346
    const v2, 0x7f0a046e

    invoke-direct {p0, v2}, Lcom/android/pretty/a;->aQV(I)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 347
    invoke-direct {p0}, Lcom/android/pretty/a;->aQT()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 348
    const-string/jumbo v1, "pref_camera_pretty_slimming_key"

    .line 349
    const v2, 0x7f0a046f

    invoke-direct {p0, v2}, Lcom/android/pretty/a;->aQV(I)Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 351
    new-instance v0, Lcom/android/pretty/d;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/pretty/d;-><init>(Lcom/android/pretty/a;Lcom/nubia/camera/common/Native/BufferCell;Ljava/lang/String;ZIII)V

    iput-object v0, p0, Lcom/android/pretty/a;->aCj:Lcom/android/pretty/d;

    .line 353
    iget-object v0, p0, Lcom/android/pretty/a;->aCj:Lcom/android/pretty/d;

    invoke-virtual {v0}, Lcom/android/pretty/d;->start()V

    .line 336
    return-void

    :cond_6e
    move v4, v0

    .line 338
    goto :goto_14
.end method

.method private aRu(II)V
    .registers 13

    .prologue
    const/4 v6, 0x1

    .line 361
    iget-boolean v0, p0, Lcom/android/pretty/a;->aCa:Z

    if-eqz v0, :cond_f

    .line 362
    const-string/jumbo v0, "BestPhotoService"

    const-string/jumbo v1, "CMM is already start. Warning, return.."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void

    .line 365
    :cond_f
    invoke-direct {p0}, Lcom/android/pretty/a;->aQQ()Ljava/lang/String;

    move-result-object v1

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/pretty/a;->aBU:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 372
    array-length v2, v2

    .line 375
    const/16 v5, 0x10e

    .line 377
    const/4 v7, 0x0

    const/16 v9, 0xa

    move v3, p1

    move v4, p2

    move v8, v6

    .line 370
    invoke-static/range {v0 .. v9}, Lcom/ucamera/ucam/jni/BurstProcessJni;->initCMM(Ljava/lang/String;Ljava/lang/String;IIIIIZZI)V

    .line 378
    iput-boolean v6, p0, Lcom/android/pretty/a;->aCa:Z

    .line 360
    return-void
.end method

.method private aRv()V
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/pretty/a;->aCb:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 455
    return-void
.end method

.method private aRw()V
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/pretty/a;->aCb:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pB()V

    .line 451
    return-void
.end method

.method static synthetic aRx(Lcom/android/pretty/a;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/a;->aCb:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic aRy(Lcom/android/pretty/a;)[Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/a;->aCe:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic aRz(Lcom/android/pretty/a;)Lcom/android/pretty/b;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/a;->aCh:Lcom/android/pretty/b;

    return-object v0
.end method

.method private stopCMM()V
    .registers 3

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/android/pretty/a;->aCa:Z

    if-eqz v0, :cond_b

    .line 444
    invoke-static {}, Lcom/ucamera/ucam/jni/BurstProcessJni;->stopCMM()V

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/pretty/a;->aCa:Z

    .line 442
    :goto_a
    return-void

    .line 447
    :cond_b
    const-string/jumbo v0, "BestPhotoService"

    const-string/jumbo v1, "CMM is already stop. Warning, return.."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method


# virtual methods
.method public aQP(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/android/pretty/a;->aRc()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 215
    iget-object v0, p0, Lcom/android/pretty/a;->aCj:Lcom/android/pretty/d;

    if-eqz v0, :cond_18

    .line 216
    iget-object v0, p0, Lcom/android/pretty/a;->aCj:Lcom/android/pretty/d;

    invoke-virtual {v0}, Lcom/android/pretty/d;->cancel()V

    .line 218
    :try_start_11
    iget-object v0, p0, Lcom/android/pretty/a;->aCj:Lcom/android/pretty/d;

    invoke-virtual {v0}, Lcom/android/pretty/d;->join()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_60

    .line 221
    :goto_16
    iput-object v1, p0, Lcom/android/pretty/a;->aCj:Lcom/android/pretty/d;

    .line 224
    :cond_18
    iget-object v0, p0, Lcom/android/pretty/a;->aCq:Lcom/android/pretty/e;

    if-eqz v0, :cond_28

    .line 225
    iget-object v0, p0, Lcom/android/pretty/a;->aCq:Lcom/android/pretty/e;

    invoke-virtual {v0}, Lcom/android/pretty/e;->cancel()V

    .line 227
    :try_start_21
    iget-object v0, p0, Lcom/android/pretty/a;->aCq:Lcom/android/pretty/e;

    invoke-virtual {v0}, Lcom/android/pretty/e;->join()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_26} :catch_5e

    .line 230
    :goto_26
    iput-object v1, p0, Lcom/android/pretty/a;->aCq:Lcom/android/pretty/e;

    .line 233
    :cond_28
    iget-boolean v0, p0, Lcom/android/pretty/a;->aCa:Z

    if-eqz v0, :cond_2f

    .line 234
    invoke-direct {p0}, Lcom/android/pretty/a;->stopCMM()V

    .line 237
    :cond_2f
    iget-object v0, p0, Lcom/android/pretty/a;->aCg:Lcom/android/common/exif/o;

    if-eqz v0, :cond_35

    .line 238
    iput-object v1, p0, Lcom/android/pretty/a;->aCg:Lcom/android/common/exif/o;

    .line 240
    :cond_35
    invoke-direct {p0}, Lcom/android/pretty/a;->aRq()V

    .line 241
    invoke-direct {p0}, Lcom/android/pretty/a;->aRp()V

    .line 242
    invoke-direct {p0}, Lcom/android/pretty/a;->aRg()V

    .line 243
    iget-object v0, p0, Lcom/android/pretty/a;->aCb:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->ay()V

    .line 245
    if-eqz p1, :cond_4c

    .line 246
    invoke-direct {p0}, Lcom/android/pretty/a;->aRv()V

    .line 247
    :cond_4c
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 248
    iput v2, p0, Lcom/android/pretty/a;->aCd:I

    .line 249
    iput v2, p0, Lcom/android/pretty/a;->aCl:I

    .line 250
    iput v2, p0, Lcom/android/pretty/a;->aCo:I

    .line 251
    iput-boolean v2, p0, Lcom/android/pretty/a;->aCf:Z

    .line 252
    iput-boolean v2, p0, Lcom/android/pretty/a;->aCp:Z

    .line 213
    :cond_5d
    return-void

    .line 228
    :catch_5e
    move-exception v0

    goto :goto_26

    .line 219
    :catch_60
    move-exception v0

    goto :goto_16
.end method

.method public aQU(I)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 257
    iput p1, p0, Lcom/android/pretty/a;->aCm:I

    .line 258
    iget-object v0, p0, Lcom/android/pretty/a;->aCe:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public aQW()V
    .registers 1

    .prologue
    .line 107
    invoke-static {p0}, Lcom/ucamera/ucam/jni/BurstProcessJni;->setBurstListener(Lcom/ucamera/ucam/jni/BurstProcessJni$CallBackJNI;)V

    .line 106
    return-void
.end method

.method public aRa()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 281
    iget v1, p0, Lcom/android/pretty/a;->aCd:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public aRb()Z
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/pretty/a;->aCb:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pW()Z

    move-result v0

    return v0
.end method

.method public aRc()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 273
    iget v1, p0, Lcom/android/pretty/a;->aCd:I

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public aRd()Z
    .registers 3

    .prologue
    .line 277
    iget v0, p0, Lcom/android/pretty/a;->aCd:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public aRl()V
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/pretty/a;->aCb:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pX()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lcom/android/pretty/a;->aRb()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 198
    invoke-direct {p0}, Lcom/android/pretty/a;->aQY()V

    .line 200
    iget-object v0, p0, Lcom/android/pretty/a;->aCb:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 201
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p0, v1, v0}, Lcom/android/pretty/a;->aRu(II)V

    .line 203
    new-instance v0, Lcom/android/pretty/e;

    invoke-direct {v0, p0}, Lcom/android/pretty/e;-><init>(Lcom/android/pretty/a;)V

    iput-object v0, p0, Lcom/android/pretty/a;->aCq:Lcom/android/pretty/e;

    .line 204
    iget-object v0, p0, Lcom/android/pretty/a;->aCq:Lcom/android/pretty/e;

    invoke-virtual {v0}, Lcom/android/pretty/e;->start()V

    .line 206
    iget-object v0, p0, Lcom/android/pretty/a;->aCb:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->as()V

    .line 207
    invoke-direct {p0}, Lcom/android/pretty/a;->aRh()V

    .line 209
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/pretty/a;->aCd:I

    .line 196
    :cond_3d
    return-void
.end method

.method public aRm([B)V
    .registers 5

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/pretty/a;->aQS([B)V

    .line 170
    iget-object v0, p0, Lcom/android/pretty/a;->aCi:[Lcom/nubia/camera/common/Native/BufferCell;

    iget v1, p0, Lcom/android/pretty/a;->aCl:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/nubia/camera/common/Native/BufferCell;->btY([B)V

    .line 171
    iget v0, p0, Lcom/android/pretty/a;->aCl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/pretty/a;->aCl:I

    .line 172
    const-string/jumbo v0, "BestPhotoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receivejpegpircture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/pretty/a;->aCl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget v0, p0, Lcom/android/pretty/a;->aCl:I

    const/16 v1, 0xa

    if-ne v1, v0, :cond_45

    .line 174
    invoke-direct {p0}, Lcom/android/pretty/a;->aRw()V

    .line 175
    invoke-direct {p0}, Lcom/android/pretty/a;->aRf()V

    .line 168
    :cond_45
    return-void
.end method

.method public aRn([B)V
    .registers 5

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/pretty/a;->aRc()Z

    move-result v0

    if-nez v0, :cond_10

    .line 152
    const-string/jumbo v0, "BestPhotoService"

    const-string/jumbo v1, "receive raw picture after cancel best photoing."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void

    .line 156
    :cond_10
    iget v0, p0, Lcom/android/pretty/a;->aCo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/pretty/a;->aCo:I

    .line 157
    const-string/jumbo v0, "BestPhotoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receiverawpircture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/pretty/a;->aCo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/android/pretty/a;->aQN([B)V

    .line 160
    iget-object v0, p0, Lcom/android/pretty/a;->aCq:Lcom/android/pretty/e;

    iget v1, p0, Lcom/android/pretty/a;->aCo:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/pretty/e;->putData(I[B)V

    .line 162
    iget v0, p0, Lcom/android/pretty/a;->aCo:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_54

    .line 163
    iget-object v0, p0, Lcom/android/pretty/a;->aCq:Lcom/android/pretty/e;

    invoke-virtual {v0}, Lcom/android/pretty/e;->aRX()V

    .line 150
    :cond_54
    return-void
.end method

.method public aRr()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 262
    invoke-virtual {p0}, Lcom/android/pretty/a;->aRc()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/pretty/a;->aCd:I

    if-ne v0, v1, :cond_15

    .line 263
    :cond_b
    const-string/jumbo v0, "BestPhotoService"

    const-string/jumbo v1, "receive save button click after cancel best photoing or ."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void

    .line 267
    :cond_15
    iput v1, p0, Lcom/android/pretty/a;->aCd:I

    .line 268
    invoke-direct {p0}, Lcom/android/pretty/a;->aRj()V

    .line 269
    iget-object v0, p0, Lcom/android/pretty/a;->aCi:[Lcom/nubia/camera/common/Native/BufferCell;

    iget v1, p0, Lcom/android/pretty/a;->aCm:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/pretty/a;->aRs(Lcom/nubia/camera/common/Native/BufferCell;)V

    .line 261
    return-void
.end method

.method public aRt(Lcom/android/pretty/c;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/pretty/a;->aCk:Lcom/android/pretty/c;

    .line 145
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ucamera/ucam/jni/BurstProcessJni;->setBurstListener(Lcom/ucamera/ucam/jni/BurstProcessJni$CallBackJNI;)V

    .line 110
    return-void
.end method

.method public updateJniStatus(IILjava/lang/String;)V
    .registers 7

    .prologue
    .line 181
    const-string/jumbo v0, "BestPhotoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "callback from CMM Jni(updateJniStatus):  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    const-string/jumbo v2, " number = "

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    const-string/jumbo v2, " name = "

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x2

    if-ne p1, v0, :cond_63

    .line 184
    invoke-virtual {p0}, Lcom/android/pretty/a;->aRc()Z

    move-result v0

    .line 183
    if-eqz v0, :cond_63

    .line 185
    iget v0, p0, Lcom/android/pretty/a;->aCo:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_63

    .line 186
    iput p2, p0, Lcom/android/pretty/a;->aCc:I

    .line 187
    const-string/jumbo v0, "BestPhotoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Get best photo(updateJniStatus): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/pretty/a;->aCc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/pretty/a;->aCh:Lcom/android/pretty/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/pretty/b;->sendEmptyMessage(I)Z

    .line 180
    :cond_63
    return-void
.end method

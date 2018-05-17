.class public abstract Lcom/android/common/cameradevice/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/cameradevice/p;


# static fields
.field public static final Np:[I

.field public static final Nq:[Ljava/lang/String;


# instance fields
.field protected Nr:Landroid/hardware/Camera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x7

    .line 534
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 535
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 536
    const-string/jumbo v1, "100 0 0 0 100 0 0 0 100 0 0 80"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 537
    const-string/jumbo v1, "100 0 0 0 100 0 0 0 100 12 50 100"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 538
    const-string/jumbo v1, "100 0 0 0 100 0 0 0 100 0 100 100"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 539
    const-string/jumbo v1, "100 0 0 0 100 0 0 0 100 0 85 0"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 540
    const-string/jumbo v1, "100 0 0 0 100 0 0 0 100 80 80 0"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 541
    const-string/jumbo v1, "100 0 0 0 100 0 0 0 100 80 0 0"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 542
    const-string/jumbo v1, "100 0 0 0 100 0 0 0 50 115 20 70"

    aput-object v1, v0, v3

    .line 543
    const-string/jumbo v1, "100 0 0 0 100 0 0 0 40 -65 -65 -65"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 544
    const-string/jumbo v1, "100 0 0 0 100 0 0 0 40 -65 -65 -65"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 545
    const-string/jumbo v1, "100 0 0 0 100 0 0 0 40 -65 -65 -65"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 546
    const-string/jumbo v1, "100 0 0 0 100 0 0 0 40 -65 -65 -65"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 534
    sput-object v0, Lcom/android/common/cameradevice/l;->Nq:[Ljava/lang/String;

    .line 548
    new-array v0, v3, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/android/common/cameradevice/l;->Np:[I

    .line 13
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 548
    :array_5a
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    .line 13
    return-void
.end method

.method private Li(II)I
    .registers 9

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 551
    packed-switch p1, :pswitch_data_54

    .line 608
    :cond_8
    return v1

    .line 553
    :pswitch_9
    return v1

    .line 561
    :pswitch_a
    const/4 v0, 0x1

    return v0

    .line 563
    :pswitch_c
    if-nez p2, :cond_f

    .line 564
    return v3

    .line 565
    :cond_f
    const/16 v0, 0x5a

    if-ne p2, v0, :cond_14

    .line 566
    return v5

    .line 567
    :cond_14
    const/16 v0, 0xb4

    if-ne p2, v0, :cond_19

    .line 568
    return v2

    .line 569
    :cond_19
    const/16 v0, 0x10e

    if-ne p2, v0, :cond_1e

    .line 570
    return v4

    .line 573
    :cond_1e
    :pswitch_1e
    if-nez p2, :cond_21

    .line 574
    return v2

    .line 575
    :cond_21
    const/16 v0, 0x5a

    if-ne p2, v0, :cond_26

    .line 576
    return v4

    .line 577
    :cond_26
    const/16 v0, 0xb4

    if-ne p2, v0, :cond_2b

    .line 578
    return v3

    .line 579
    :cond_2b
    const/16 v0, 0x10e

    if-ne p2, v0, :cond_8

    .line 580
    return v5

    .line 584
    :pswitch_30
    if-nez p2, :cond_33

    .line 585
    return v4

    .line 586
    :cond_33
    const/16 v0, 0x5a

    if-ne p2, v0, :cond_38

    .line 587
    return v3

    .line 588
    :cond_38
    const/16 v0, 0xb4

    if-ne p2, v0, :cond_3d

    .line 589
    return v5

    .line 590
    :cond_3d
    const/16 v0, 0x10e

    if-ne p2, v0, :cond_8

    .line 591
    return v2

    .line 595
    :pswitch_42
    if-nez p2, :cond_45

    .line 596
    return v5

    .line 597
    :cond_45
    const/16 v0, 0x5a

    if-ne p2, v0, :cond_4a

    .line 598
    return v2

    .line 599
    :cond_4a
    const/16 v0, 0xb4

    if-ne p2, v0, :cond_4f

    .line 600
    return v4

    .line 601
    :cond_4f
    const/16 v0, 0x10e

    if-ne p2, v0, :cond_8

    .line 602
    return v3

    .line 551
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_1e
        :pswitch_30
        :pswitch_42
    .end packed-switch
.end method


# virtual methods
.method public LA()Ljava/lang/String;
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "picture-format"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LB()Landroid/hardware/Camera$Size;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public LC()I
    .registers 3

    .prologue
    .line 664
    const-string/jumbo v0, "pref_camera_doc_pretty"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/common/cameradevice/l;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public LD()I
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    return v0
.end method

.method public LE([I)V
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 138
    return-void
.end method

.method public LF()Landroid/hardware/Camera$Size;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public LG()Z
    .registers 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "recording-hint"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public LH()Ljava/lang/String;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LI()Ljava/lang/String;
    .registers 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "slow_shutter"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LJ()I
    .registers 3

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "zte_zoom_crop"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_c
.end method

.method public LK()Ljava/util/List;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public LL()Ljava/util/List;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public LM()Ljava/util/List;
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public LN()Ljava/util/List;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public LO()Ljava/util/List;
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "nubia-flash"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Lcom/android/common/h;->aqm(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public LP()Ljava/util/List;
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "picture-format-values"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Lcom/android/common/h;->aqm(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public LQ()Ljava/util/List;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public LR()Ljava/util/List;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public LS()Ljava/util/List;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public LT()Ljava/util/List;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public LU()Ljava/util/List;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public LV()Ljava/util/List;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public LW()Ljava/util/List;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public LX()Z
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    return v0
.end method

.method public LY()Z
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    return v0
.end method

.method public LZ()Z
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    return v0
.end method

.method public Lh(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Lj()I
    .registers 3

    .prologue
    .line 736
    const-string/jumbo v0, "dual-camera-layout"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/common/cameradevice/l;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Lk()I
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    return v0
.end method

.method public Ll()F
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    return v0
.end method

.method public Lm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ln()F
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v0

    return v0
.end method

.method public Lo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Lp()Ljava/lang/String;
    .registers 3

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "ztemt_effect_type"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Lq()I
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v0

    return v0
.end method

.method public Lr()Landroid/hardware/Camera$Size;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public Ls()I
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    return v0
.end method

.method public Lt()I
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    return v0
.end method

.method public Lu()I
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    return v0
.end method

.method public Lv()I
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    return v0
.end method

.method public Lw()I
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    return v0
.end method

.method public Lx()I
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    return v0
.end method

.method public Ly()I
    .registers 3

    .prologue
    .line 730
    const-string/jumbo v0, "num-snaps-per-shutter"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/cameradevice/l;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Lz()Landroid/hardware/Camera$Parameters;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public MA(I)V
    .registers 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "backlight-flash-mode"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 345
    return-void
.end method

.method public MB(Landroid/hardware/Camera$Parameters;)V
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    .line 23
    return-void
.end method

.method public MC(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "picture-format"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public MD(II)V
    .registers 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 179
    return-void
.end method

.method public ME(IIII)V
    .registers 7

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "pref_camera_doc_pretty"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 655
    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    .line 656
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "pref_camera_pretty_smooth_key"

    invoke-virtual {v0, v1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 657
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "pref_camera_pretty_toning_key"

    invoke-virtual {v0, v1, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 658
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "pref_camera_pretty_slimming_key"

    invoke-virtual {v0, v1, p4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 652
    :cond_23
    return-void
.end method

.method public MF(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "preview-format"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public MG(II)V
    .registers 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 133
    return-void
.end method

.method public MH(I)V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 118
    return-void
.end method

.method public MI(Z)V
    .registers 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 490
    return-void
.end method

.method public MJ(I)V
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 224
    return-void
.end method

.method public MK(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public ML(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "slow_shutter"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public MM(I)V
    .registers 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "slow_shutter_addition"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 511
    return-void
.end method

.method public MN(I)V
    .registers 4

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "zte_zoom_crop"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 719
    return-void
.end method

.method public MO(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public MP(Ljava/lang/String;II)V
    .registers 6

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "tsmakeup"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "tsmakeup_whiten"

    invoke-virtual {v0, v1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 686
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "tsmakeup_clean"

    invoke-virtual {v0, v1, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 683
    return-void
.end method

.method public MQ(I)V
    .registers 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 430
    return-void
.end method

.method public Ma()V
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 254
    return-void
.end method

.method public Mb(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public Mc(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public Md(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public Me(FFF)V
    .registers 7

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "iwb_color_ratio_r"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "iwb_color_ratio_g"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "iwb_color_ratio_b"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public Mf(I)V
    .registers 4

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "app_iwb_switch"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 625
    return-void
.end method

.method public Mg(Z)V
    .registers 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 395
    return-void
.end method

.method public Mh(Z)V
    .registers 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 410
    return-void
.end method

.method public Mi(I)V
    .registers 4

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "camera_app_mode"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 705
    return-void
.end method

.method public Mj(II)V
    .registers 7

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/android/common/cameradevice/l;->Lz()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string/jumbo v1, "color-filter-type"

    .line 614
    sget-object v2, Lcom/android/common/cameradevice/l;->Np:[I

    invoke-direct {p0, p1, p2}, Lcom/android/common/cameradevice/l;->Li(II)I

    move-result v3

    aget v2, v2, v3

    .line 613
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 615
    invoke-virtual {p0}, Lcom/android/common/cameradevice/l;->Lz()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string/jumbo v1, "color-filter-param"

    .line 616
    sget-object v2, Lcom/android/common/cameradevice/l;->Nq:[Ljava/lang/String;

    aget-object v2, v2, p1

    .line 615
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public Mk(I)V
    .registers 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 375
    return-void
.end method

.method public Ml(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public Mm(Ljava/util/List;)V
    .registers 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 465
    return-void
.end method

.method public Mn(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public Mo(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "ztemt_effect_type"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method public Mp(D)V
    .registers 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 239
    return-void
.end method

.method public Mq(D)V
    .registers 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 229
    return-void
.end method

.method public Mr(D)V
    .registers 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 234
    return-void
.end method

.method public Ms(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public Mt(J)V
    .registers 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 244
    return-void
.end method

.method public Mu(I)V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 108
    return-void
.end method

.method public Mv(II)V
    .registers 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 83
    return-void
.end method

.method public Mw(I)V
    .registers 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "wb-manual-cct"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 274
    return-void
.end method

.method public Mx(Ljava/util/List;)V
    .registers 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 480
    return-void
.end method

.method public My(I)V
    .registers 4

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "need_trigger_central_caf"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 630
    return-void
.end method

.method public Mz(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "night_key"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 6

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    .line 46
    :catch_7
    move-exception v0

    .line 47
    const-string/jumbo v0, "ParametersEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not found, use defaultValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return p2
.end method

.method public setPreviewSize(II)V
    .registers 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/common/cameradevice/l;->Nr:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 58
    return-void
.end method

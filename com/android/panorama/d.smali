.class public Lcom/android/panorama/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aOz:I


# instance fields
.field private aOA:I

.field private aOB:I

.field private aOC:I

.field private aOD:I

.field private aOE:Ljava/lang/String;

.field private aOF:Ljava/util/ArrayList;

.field private aOG:I

.field private aOH:I

.field private aOI:Landroid/content/ContentResolver;

.field private aOJ:[I

.field private aOK:Landroid/graphics/Bitmap;

.field private aOL:F

.field private aOM:F

.field private final aON:Lcom/android/panorama/e;

.field private aOO:[I

.field private aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

.field private aOQ:Z

.field private aOR:Z

.field private aOS:Lcom/android/common/r/a;

.field private aOT:Lcom/morpho/core/MorphoPanoramaGP;

.field private aOU:[B

.field private aOV:Lcom/android/panorama/k;

.field private aOW:I

.field private aOX:I

.field private aOY:I

.field private aOZ:I

.field private aPa:I

.field private aPb:I

.field private aPc:I

.field private final aPd:I

.field private final aPe:I

.field private aPf:Landroid/graphics/Bitmap;

.field private aPg:Z

.field private aPh:Lcom/android/panorama/h;

.field private aPi:[I

.field aPj:Ljava/util/ArrayList;

.field aPk:Lcom/android/panorama/i;

.field private aPl:J

.field private aPm:Z

.field private aPn:I

.field private aPo:I

.field private aPp:I

.field private mPreviewWidth:I

.field private use_threshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const/16 v0, 0x38

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/panorama/d;->aOz:I

    .line 41
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(IIII)V
    .registers 12

    .prologue
    .line 145
    const/16 v5, 0x438

    const/16 v6, 0x5a0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/panorama/d;-><init>(IIIIII)V

    .line 144
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v3, p0, Lcom/android/panorama/d;->aPm:Z

    .line 67
    iput v1, p0, Lcom/android/panorama/d;->aOW:I

    .line 68
    iput v1, p0, Lcom/android/panorama/d;->aOY:I

    .line 69
    iput v1, p0, Lcom/android/panorama/d;->aOC:I

    .line 70
    iput v1, p0, Lcom/android/panorama/d;->aOD:I

    .line 74
    iput-object v2, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    .line 75
    iput-object v2, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    .line 77
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/panorama/d;->aOO:[I

    .line 78
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/panorama/d;->aOU:[B

    .line 79
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/panorama/d;->aPi:[I

    .line 80
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/panorama/d;->aOJ:[I

    .line 85
    iput v1, p0, Lcom/android/panorama/d;->aOH:I

    .line 86
    iput v1, p0, Lcom/android/panorama/d;->aOG:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/panorama/d;->aPj:Ljava/util/ArrayList;

    .line 88
    iput-object v2, p0, Lcom/android/panorama/d;->aPk:Lcom/android/panorama/i;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/panorama/d;->aOF:Ljava/util/ArrayList;

    .line 94
    iput v1, p0, Lcom/android/panorama/d;->aPe:I

    .line 95
    iput v1, p0, Lcom/android/panorama/d;->aPd:I

    .line 96
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/panorama/d;->use_threshold:I

    .line 97
    const v0, 0x8000

    iput v0, p0, Lcom/android/panorama/d;->aPp:I

    .line 101
    iput-object v2, p0, Lcom/android/panorama/d;->aOS:Lcom/android/common/r/a;

    .line 102
    iput-object v2, p0, Lcom/android/panorama/d;->aOI:Landroid/content/ContentResolver;

    .line 103
    iput v1, p0, Lcom/android/panorama/d;->aOB:I

    .line 106
    iput-boolean v1, p0, Lcom/android/panorama/d;->aOQ:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/panorama/d;->aOR:Z

    .line 109
    iput-object v2, p0, Lcom/android/panorama/d;->aOE:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/android/panorama/e;

    invoke-direct {v0, p0, v2}, Lcom/android/panorama/e;-><init>(Lcom/android/panorama/d;Lcom/android/panorama/e;)V

    iput-object v0, p0, Lcom/android/panorama/d;->aON:Lcom/android/panorama/e;

    .line 848
    iput v1, p0, Lcom/android/panorama/d;->aOA:I

    .line 150
    iput p1, p0, Lcom/android/panorama/d;->mPreviewWidth:I

    .line 151
    iput p2, p0, Lcom/android/panorama/d;->aPa:I

    .line 152
    iput p3, p0, Lcom/android/panorama/d;->aOZ:I

    .line 153
    iput p4, p0, Lcom/android/panorama/d;->aOX:I

    .line 154
    iput p5, p0, Lcom/android/panorama/d;->aPo:I

    .line 155
    iput p6, p0, Lcom/android/panorama/d;->aPn:I

    .line 149
    return-void
.end method

.method static synthetic bfA(Lcom/android/panorama/d;)F
    .registers 2

    iget v0, p0, Lcom/android/panorama/d;->aOM:F

    return v0
.end method

.method static synthetic bfB(Lcom/android/panorama/d;)Lcom/android/panorama/e;
    .registers 2

    iget-object v0, p0, Lcom/android/panorama/d;->aON:Lcom/android/panorama/e;

    return-object v0
.end method

.method static synthetic bfC(Lcom/android/panorama/d;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/panorama/d;->aOQ:Z

    return v0
.end method

.method static synthetic bfD(Lcom/android/panorama/d;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/panorama/d;->aOR:Z

    return v0
.end method

.method static synthetic bfE(Lcom/android/panorama/d;)Lcom/android/common/r/a;
    .registers 2

    iget-object v0, p0, Lcom/android/panorama/d;->aOS:Lcom/android/common/r/a;

    return-object v0
.end method

.method static synthetic bfF(Lcom/android/panorama/d;)Lcom/morpho/core/MorphoPanoramaGP;
    .registers 2

    iget-object v0, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    return-object v0
.end method

.method static synthetic bfG(Lcom/android/panorama/d;)Lcom/android/panorama/k;
    .registers 2

    iget-object v0, p0, Lcom/android/panorama/d;->aOV:Lcom/android/panorama/k;

    return-object v0
.end method

.method static synthetic bfH(Lcom/android/panorama/d;)I
    .registers 2

    iget v0, p0, Lcom/android/panorama/d;->aOY:I

    return v0
.end method

.method static synthetic bfI(Lcom/android/panorama/d;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/panorama/d;->aPl:J

    return-wide v0
.end method

.method static synthetic bfJ(Lcom/android/panorama/d;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/panorama/d;->aPm:Z

    return v0
.end method

.method static synthetic bfK(Lcom/android/panorama/d;I)I
    .registers 2

    iput p1, p0, Lcom/android/panorama/d;->aOG:I

    return p1
.end method

.method static synthetic bfL(Lcom/android/panorama/d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/panorama/d;->aOQ:Z

    return p1
.end method

.method static synthetic bfM(Lcom/android/panorama/d;Lcom/morpho/core/MorphoPanoramaGP;)Lcom/morpho/core/MorphoPanoramaGP;
    .registers 2

    iput-object p1, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    return-object p1
.end method

.method static synthetic bfN(Lcom/android/panorama/d;[B)Ljava/nio/ByteBuffer;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/panorama/d;->bfr([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bfO(Lcom/android/panorama/d;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/panorama/d;->bfq(I)V

    return-void
.end method

.method static synthetic bfP(Lcom/android/panorama/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/panorama/d;->bfu()V

    return-void
.end method

.method private bfo(Lcom/android/panorama/f;)V
    .registers 3

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/panorama/d;->aPj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/panorama/d;->aOR:Z

    .line 618
    iget-object v0, p0, Lcom/android/panorama/d;->aPk:Lcom/android/panorama/i;

    if-nez v0, :cond_18

    .line 619
    new-instance v0, Lcom/android/panorama/i;

    invoke-direct {v0, p0}, Lcom/android/panorama/i;-><init>(Lcom/android/panorama/d;)V

    iput-object v0, p0, Lcom/android/panorama/d;->aPk:Lcom/android/panorama/i;

    .line 620
    iget-object v0, p0, Lcom/android/panorama/d;->aPk:Lcom/android/panorama/i;

    invoke-virtual {v0}, Lcom/android/panorama/i;->start()V

    .line 615
    :cond_18
    return-void
.end method

.method private bfp(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 539
    iget v0, p0, Lcom/android/panorama/d;->aPo:I

    .line 540
    iget v1, p0, Lcom/android/panorama/d;->aPn:I

    .line 541
    iget-object v2, p0, Lcom/android/panorama/d;->aPf:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_17

    .line 542
    iget-object v2, p0, Lcom/android/panorama/d;->aPf:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 543
    iput-object v3, p0, Lcom/android/panorama/d;->aPf:Landroid/graphics/Bitmap;

    .line 544
    iget-object v2, p0, Lcom/android/panorama/d;->aOK:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 545
    iput-object v3, p0, Lcom/android/panorama/d;->aOK:Landroid/graphics/Bitmap;

    .line 548
    :cond_17
    iget-object v2, p0, Lcom/android/panorama/d;->aPf:Landroid/graphics/Bitmap;

    if-nez v2, :cond_53

    .line 550
    packed-switch p1, :pswitch_data_102

    .line 573
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Direction wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :pswitch_27
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 554
    iget-object v2, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 552
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/panorama/d;->aPf:Landroid/graphics/Bitmap;

    .line 555
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    add-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    .line 556
    iget-object v2, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v2, v2

    .line 555
    div-float/2addr v0, v2

    .line 557
    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0x64

    .line 559
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 557
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/panorama/d;->aOK:Landroid/graphics/Bitmap;

    .line 577
    :cond_53
    :goto_53
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " init InitParam "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    invoke-virtual {v2}, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mPreviewImage w "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/panorama/d;->aPf:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " h "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 579
    iget-object v2, p0, Lcom/android/panorama/d;->aPf:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 578
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mDispPreviewImage w "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/panorama/d;->aOK:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 581
    const-string/jumbo v2, " h "

    .line 580
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 581
    iget-object v2, p0, Lcom/android/panorama/d;->aOK:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 580
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void

    .line 563
    :pswitch_d6
    iget-object v1, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 564
    iget-object v2, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 562
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/panorama/d;->aPf:Landroid/graphics/Bitmap;

    .line 565
    iget-object v1, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v1, v1

    .line 566
    iget-object v2, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v2, v2

    .line 565
    div-float/2addr v1, v2

    .line 568
    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0x64

    .line 570
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 567
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/panorama/d;->aOK:Landroid/graphics/Bitmap;

    goto/16 :goto_53

    .line 550
    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_27
    .end packed-switch
.end method

.method private bfq(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    if-nez v0, :cond_6

    .line 310
    return-void

    .line 312
    :cond_6
    invoke-virtual {p0}, Lcom/android/panorama/d;->bfk()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 313
    return-void

    .line 315
    :cond_d
    new-instance v0, Lcom/android/panorama/h;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/panorama/h;-><init>(Lcom/android/panorama/d;ZI)V

    iput-object v0, p0, Lcom/android/panorama/d;->aPh:Lcom/android/panorama/h;

    .line 316
    iget-object v0, p0, Lcom/android/panorama/d;->aPh:Lcom/android/panorama/h;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/panorama/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 308
    return-void
.end method

.method private bfr([B)Ljava/nio/ByteBuffer;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 607
    array-length v0, p1

    invoke-static {v0}, Lcom/android/panorama/PanoramaJni;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 608
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 609
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 610
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 611
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 612
    return-object v0
.end method

.method private bfs([B)V
    .registers 9

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    if-nez v0, :cond_5

    .line 511
    return-void

    .line 513
    :cond_5
    iget-object v0, p0, Lcom/android/panorama/d;->aOF:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/panorama/g;

    .line 514
    new-instance v0, Lcom/android/panorama/f;

    iget v2, v6, Lcom/android/panorama/g;->aPw:I

    .line 515
    iget v3, p0, Lcom/android/panorama/d;->aPc:I

    iget-object v5, p0, Lcom/android/panorama/d;->aOU:[B

    move-object v1, p0

    move-object v4, p1

    .line 514
    invoke-direct/range {v0 .. v5}, Lcom/android/panorama/f;-><init>(Lcom/android/panorama/d;II[B[B)V

    .line 516
    invoke-direct {p0, v0}, Lcom/android/panorama/d;->bfo(Lcom/android/panorama/f;)V

    .line 518
    iget v0, v6, Lcom/android/panorama/g;->aPx:I

    sparse-switch v0, :sswitch_data_30

    .line 525
    iget-boolean v0, p0, Lcom/android/panorama/d;->aOQ:Z

    if-eqz v0, :cond_28

    .line 509
    :cond_28
    :goto_28
    return-void

    .line 522
    :sswitch_29
    iget v0, v6, Lcom/android/panorama/g;->aPx:I

    invoke-virtual {p0, v0}, Lcom/android/panorama/d;->bfh(I)V

    goto :goto_28

    .line 518
    nop

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_29
        0x3 -> :sswitch_29
        0xb -> :sswitch_29
    .end sparse-switch
.end method

.method private bft()V
    .registers 11

    .prologue
    const/16 v9, 0x5a

    const v8, 0x46ea6000    # 30000.0f

    const/16 v7, 0x7530

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 159
    new-instance v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    invoke-direct {v0}, Lcom/morpho/core/MorphoPanoramaGP$InitParam;-><init>()V

    iput-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    .line 160
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    const-string/jumbo v1, "YVU420_SEMIPLANAR"

    iput-object v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->format:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, p0, Lcom/android/panorama/d;->use_threshold:I

    iput v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->use_threshold:I

    .line 162
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, p0, Lcom/android/panorama/d;->mPreviewWidth:I

    iput v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_width:I

    .line 163
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, p0, Lcom/android/panorama/d;->aPa:I

    iput v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    .line 164
    iget-boolean v0, p0, Lcom/android/panorama/d;->aPm:Z

    if-eqz v0, :cond_5a

    .line 165
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, p0, Lcom/android/panorama/d;->mPreviewWidth:I

    iput v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_width:I

    .line 166
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, p0, Lcom/android/panorama/d;->aPa:I

    iput v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_height:I

    .line 171
    :goto_39
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    iput-wide v2, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->angle_of_view_degree:D

    .line 172
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v5, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->draw_cur_image:I

    .line 174
    iget v0, p0, Lcom/android/panorama/d;->aPo:I

    .line 175
    iget v1, p0, Lcom/android/panorama/d;->aPn:I

    .line 177
    iget v2, p0, Lcom/android/panorama/d;->aOB:I

    .line 178
    iget v3, p0, Lcom/android/panorama/d;->aOC:I

    iget v4, p0, Lcom/android/panorama/d;->aOD:I

    add-int/2addr v3, v4

    packed-switch v3, :pswitch_data_14a

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Direction wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_5a
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, p0, Lcom/android/panorama/d;->aOZ:I

    iput v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_width:I

    .line 169
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, p0, Lcom/android/panorama/d;->aOX:I

    iput v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_height:I

    goto :goto_39

    .line 180
    :pswitch_67
    iget-object v1, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v6, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    .line 181
    iget-object v1, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget-object v3, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v3, v3, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_height:I

    mul-int/lit8 v3, v3, 0xa

    iput v3, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 182
    iget-object v1, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget-object v3, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v3, v3, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_width:I

    iput v3, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 183
    iget-object v1, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget-object v3, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v3, v3, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    mul-int/lit8 v3, v3, 0xa

    iput v3, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 184
    iget-object v1, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget-object v3, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v3, v3, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_width:I

    iput v3, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 185
    packed-switch v2, :pswitch_data_152

    .line 191
    iget-object v1, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v9, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->output_rotation:I

    .line 192
    iput-boolean v5, p0, Lcom/android/panorama/d;->aPg:Z

    .line 195
    :goto_98
    iget-object v1, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    div-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 220
    :goto_a4
    iget-object v1, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_shrink_ratio:I

    .line 221
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    const-wide v2, 0x4066800000000000L    # 180.0

    invoke-static {v0, v2, v3}, Lcom/morpho/core/MorphoPanoramaGP;->bul(Lcom/morpho/core/MorphoPanoramaGP$InitParam;D)I

    .line 222
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    if-ge v7, v0, :cond_cc

    .line 223
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    int-to-float v0, v0

    div-float v0, v8, v0

    .line 224
    iget-object v1, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v7, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 225
    iget-object v1, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v2, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 227
    :cond_cc
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    if-ge v7, v0, :cond_e6

    .line 228
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    int-to-float v0, v0

    div-float v0, v8, v0

    .line 229
    iget-object v1, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v7, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 230
    iget-object v1, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v2, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 232
    :cond_e6
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 233
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 235
    iput-boolean v5, p0, Lcom/android/panorama/d;->aOQ:Z

    .line 158
    return-void

    .line 187
    :pswitch_f9
    iget-object v1, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    const/16 v2, 0x10e

    iput v2, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->output_rotation:I

    .line 188
    iput-boolean v6, p0, Lcom/android/panorama/d;->aPg:Z

    goto :goto_98

    .line 199
    :pswitch_102
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v5, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    .line 200
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget-object v3, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v3, v3, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_height:I

    iput v3, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 201
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget-object v3, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v3, v3, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_width:I

    mul-int/lit8 v3, v3, 0xa

    iput v3, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 202
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget-object v3, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v3, v3, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    iput v3, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 203
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget-object v3, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v3, v3, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_width:I

    mul-int/lit8 v3, v3, 0xa

    iput v3, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 204
    packed-switch v2, :pswitch_data_158

    .line 210
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v9, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->output_rotation:I

    .line 211
    iput-boolean v5, p0, Lcom/android/panorama/d;->aPg:Z

    .line 214
    :goto_133
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_a4

    .line 206
    :pswitch_140
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    const/16 v2, 0x10e

    iput v2, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->output_rotation:I

    .line 207
    iput-boolean v6, p0, Lcom/android/panorama/d;->aPg:Z

    goto :goto_133

    .line 178
    nop

    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_67
        :pswitch_102
    .end packed-switch

    .line 185
    :pswitch_data_152
    .packed-switch 0x10e
        :pswitch_f9
    .end packed-switch

    .line 204
    :pswitch_data_158
    .packed-switch 0x10e
        :pswitch_140
    .end packed-switch
.end method

.method private bfu()V
    .registers 4

    .prologue
    .line 626
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    const-string/jumbo v1, "waitAttachStillImageTaskDone E"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-boolean v0, p0, Lcom/android/panorama/d;->aOR:Z

    if-eqz v0, :cond_13

    .line 629
    iget v0, p0, Lcom/android/panorama/d;->aOH:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/panorama/d;->aOH:I

    .line 631
    :cond_13
    :goto_13
    iget v0, p0, Lcom/android/panorama/d;->aOH:I

    iget v1, p0, Lcom/android/panorama/d;->aOG:I

    if-le v0, v1, :cond_5a

    .line 632
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SaveOutputImageTask mispictake "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/panorama/d;->aOR:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " req "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/panorama/d;->aOH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " proc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/panorama/d;->aOG:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-wide/16 v0, 0x64

    :try_start_51
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_13

    .line 635
    :catch_55
    move-exception v0

    .line 636
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_13

    .line 640
    :cond_5a
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    const-string/jumbo v1, "waitAttachStillImageTaskDone X"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/panorama/d;->aPk:Lcom/android/panorama/i;

    .line 624
    return-void
.end method

.method static synthetic bfv(Lcom/android/panorama/d;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/panorama/d;->aOE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bfw(Lcom/android/panorama/d;)I
    .registers 2

    iget v0, p0, Lcom/android/panorama/d;->aOG:I

    return v0
.end method

.method static synthetic bfx(Lcom/android/panorama/d;)I
    .registers 2

    iget v0, p0, Lcom/android/panorama/d;->aOH:I

    return v0
.end method

.method static synthetic bfy(Lcom/android/panorama/d;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lcom/android/panorama/d;->aOI:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic bfz(Lcom/android/panorama/d;)F
    .registers 2

    iget v0, p0, Lcom/android/panorama/d;->aOL:F

    return v0
.end method


# virtual methods
.method public bfe(Z)V
    .registers 3

    .prologue
    .line 507
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/android/panorama/d;->aPm:Z

    .line 506
    return-void

    .line 507
    :cond_6
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public bff()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    if-eqz v0, :cond_19

    .line 243
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    const-string/jumbo v1, "start panorama capture failed, morphor core is not null"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/panorama/d;->aOV:Lcom/android/panorama/k;

    if-eqz v0, :cond_18

    .line 245
    iget-object v0, p0, Lcom/android/panorama/d;->aOV:Lcom/android/panorama/k;

    invoke-interface {v0, v4}, Lcom/android/panorama/k;->beL(I)V

    .line 247
    :cond_18
    return-void

    .line 249
    :cond_19
    iput v4, p0, Lcom/android/panorama/d;->aOA:I

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/panorama/d;->aPl:J

    .line 251
    invoke-direct {p0}, Lcom/android/panorama/d;->bft()V

    .line 253
    new-array v0, v5, [I

    .line 254
    new-instance v1, Lcom/morpho/core/MorphoPanoramaGP;

    invoke-direct {v1}, Lcom/morpho/core/MorphoPanoramaGP;-><init>()V

    iput-object v1, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    .line 255
    iget-object v1, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    iget-object v2, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    invoke-virtual {v1, v2, v0}, Lcom/morpho/core/MorphoPanoramaGP;->bum(Lcom/morpho/core/MorphoPanoramaGP$InitParam;[I)I

    move-result v0

    .line 256
    if-eqz v0, :cond_51

    .line 257
    const-string/jumbo v1, "MorphoPanoramaAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initialize the MorphoPanoramaGP failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_51
    iget-object v0, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    iget v1, p0, Lcom/android/panorama/d;->aPp:I

    invoke-virtual {v0, v1}, Lcom/morpho/core/MorphoPanoramaGP;->bun(I)I

    .line 260
    iget-object v0, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v0, v4}, Lcom/morpho/core/MorphoPanoramaGP;->buo(I)I

    .line 262
    iget v0, p0, Lcom/android/panorama/d;->aOC:I

    iget v1, p0, Lcom/android/panorama/d;->aOD:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/panorama/d;->bfp(I)V

    .line 263
    iget-object v0, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v0, v4, v4}, Lcom/morpho/core/MorphoPanoramaGP;->bup(II)I

    move-result v0

    .line 265
    if-eqz v0, :cond_87

    .line 266
    const-string/jumbo v1, "MorphoPanoramaAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUseSensorAsisst failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_87
    iget-object v0, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v0}, Lcom/morpho/core/MorphoPanoramaGP;->start()I

    move-result v0

    .line 269
    if-eqz v0, :cond_a9

    .line 270
    const-string/jumbo v1, "MorphoPanoramaAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "morpho panorama gp start failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_a9
    iget-object v0, p0, Lcom/android/panorama/d;->aOJ:[I

    iget-object v1, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    aput v1, v0, v4

    .line 273
    iget-object v0, p0, Lcom/android/panorama/d;->aOP:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    iput v0, p0, Lcom/android/panorama/d;->aPb:I

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/panorama/d;->aPc:I

    .line 275
    iput v4, p0, Lcom/android/panorama/d;->aOH:I

    .line 276
    iput v4, p0, Lcom/android/panorama/d;->aOG:I

    .line 277
    iput-boolean v5, p0, Lcom/android/panorama/d;->aOQ:Z

    .line 278
    iput-boolean v4, p0, Lcom/android/panorama/d;->aOR:Z

    .line 279
    iget-object v0, p0, Lcom/android/panorama/d;->aOF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 280
    iget v0, p0, Lcom/android/panorama/d;->aOW:I

    iput v0, p0, Lcom/android/panorama/d;->aOY:I

    .line 281
    iget-object v0, p0, Lcom/android/panorama/d;->aOV:Lcom/android/panorama/k;

    if-eqz v0, :cond_d4

    .line 282
    iget-object v0, p0, Lcom/android/panorama/d;->aOV:Lcom/android/panorama/k;

    invoke-interface {v0}, Lcom/android/panorama/k;->beK()V

    .line 241
    :cond_d4
    return-void
.end method

.method public bfg([B)V
    .registers 13

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x9

    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v2, 0x0

    .line 332
    iget-object v0, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/panorama/d;->bfk()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/panorama/d;->aOR:Z

    if-eqz v0, :cond_15

    .line 333
    :cond_14
    return-void

    .line 337
    :cond_15
    iget v0, p0, Lcom/android/panorama/d;->aPc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/panorama/d;->aPc:I

    .line 338
    iget-object v0, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    .line 339
    iget-object v3, p0, Lcom/android/panorama/d;->aOO:[I

    iget-object v4, p0, Lcom/android/panorama/d;->aOU:[B

    .line 340
    iget-object v5, p0, Lcom/android/panorama/d;->aPi:[I

    iget-object v6, p0, Lcom/android/panorama/d;->aPf:Landroid/graphics/Bitmap;

    move-object v1, p1

    .line 338
    invoke-virtual/range {v0 .. v6}, Lcom/morpho/core/MorphoPanoramaGP;->buq([BI[I[B[ILandroid/graphics/Bitmap;)I

    move-result v0

    .line 341
    if-eqz v0, :cond_46

    .line 342
    const-string/jumbo v1, "MorphoPanoramaAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "attachPreview data failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_46
    iget-object v0, p0, Lcom/android/panorama/d;->aPi:[I

    aget v0, v0, v2

    if-eqz v0, :cond_9d

    .line 346
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "attachPreview Status : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/panorama/d;->aPi:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/panorama/d;->aPi:[I

    aget v0, v0, v2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_78

    .line 348
    iget-object v0, p0, Lcom/android/panorama/d;->aPi:[I

    aget v0, v0, v2

    if-ne v0, v9, :cond_80

    .line 350
    :cond_78
    iget-object v0, p0, Lcom/android/panorama/d;->aPi:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/panorama/d;->bfh(I)V

    .line 351
    return-void

    .line 349
    :cond_80
    iget-object v0, p0, Lcom/android/panorama/d;->aPi:[I

    aget v0, v0, v2

    if-eq v0, v7, :cond_78

    .line 352
    iget-object v0, p0, Lcom/android/panorama/d;->aPi:[I

    aget v0, v0, v2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_96

    .line 353
    iget-object v0, p0, Lcom/android/panorama/d;->aPi:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/panorama/d;->bfh(I)V

    .line 354
    return-void

    .line 356
    :cond_96
    iget-object v0, p0, Lcom/android/panorama/d;->aPi:[I

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1f8

    .line 368
    :cond_9d
    :goto_9d
    :pswitch_9d
    iget-object v0, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    iget-object v1, p0, Lcom/android/panorama/d;->aOJ:[I

    invoke-virtual {v0, v1}, Lcom/morpho/core/MorphoPanoramaGP;->bur([I)I

    move-result v0

    .line 369
    if-eqz v0, :cond_c1

    .line 370
    const-string/jumbo v1, "MorphoPanoramaAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCurrentDirection  failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_c1
    iget v0, p0, Lcom/android/panorama/d;->aPb:I

    if-eqz v0, :cond_17e

    .line 373
    iget v0, p0, Lcom/android/panorama/d;->aPb:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17e

    .line 374
    iget v0, p0, Lcom/android/panorama/d;->aPb:I

    if-eq v0, v7, :cond_17e

    .line 377
    iget-object v0, p0, Lcom/android/panorama/d;->aPf:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 378
    iget-object v1, p0, Lcom/android/panorama/d;->aPf:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 379
    iget-object v3, p0, Lcom/android/panorama/d;->aOK:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 380
    iget-object v4, p0, Lcom/android/panorama/d;->aOK:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 381
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/android/panorama/d;->aOK:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 382
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 383
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 385
    iget-object v7, p0, Lcom/android/panorama/d;->aPf:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7, v8, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 387
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 388
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 389
    iget-object v7, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v7, v5, v6}, Lcom/morpho/core/MorphoPanoramaGP;->bus(Landroid/graphics/Point;Landroid/graphics/Point;)I

    .line 390
    if-ge v3, v4, :cond_179

    int-to-float v0, v4

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 392
    :goto_110
    iget v1, v5, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v5, Landroid/graphics/Point;->x:I

    .line 393
    iget v1, v5, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v5, Landroid/graphics/Point;->y:I

    .line 394
    iget v1, v6, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v6, Landroid/graphics/Point;->x:I

    .line 395
    iget v1, v6, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Point;->y:I

    .line 397
    iget-object v0, p0, Lcom/android/panorama/d;->aOV:Lcom/android/panorama/k;

    if-eqz v0, :cond_13b

    .line 398
    iget-object v0, p0, Lcom/android/panorama/d;->aOV:Lcom/android/panorama/k;

    iget-object v1, p0, Lcom/android/panorama/d;->aOK:Landroid/graphics/Bitmap;

    .line 399
    iget-object v3, p0, Lcom/android/panorama/d;->aOJ:[I

    aget v3, v3, v2

    .line 398
    invoke-interface {v0, v1, v5, v3}, Lcom/android/panorama/k;->beM(Landroid/graphics/Bitmap;Landroid/graphics/Point;I)V

    .line 461
    :cond_13b
    :goto_13b
    iget-object v0, p0, Lcom/android/panorama/d;->aOO:[I

    aget v0, v0, v2

    if-ltz v0, :cond_163

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/panorama/d;->aOR:Z

    .line 463
    iget-object v0, p0, Lcom/android/panorama/d;->aOF:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/panorama/g;

    iget-object v3, p0, Lcom/android/panorama/d;->aOO:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/panorama/d;->aPi:[I

    aget v4, v4, v2

    invoke-direct {v1, p0, v3, v4}, Lcom/android/panorama/g;-><init>(Lcom/android/panorama/d;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget-boolean v0, p0, Lcom/android/panorama/d;->aPm:Z

    if-eqz v0, :cond_1ed

    .line 466
    invoke-direct {p0, p1}, Lcom/android/panorama/d;->bfs([B)V

    .line 472
    :cond_15d
    :goto_15d
    iget v0, p0, Lcom/android/panorama/d;->aOH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/panorama/d;->aOH:I

    .line 474
    :cond_163
    iget-object v0, p0, Lcom/android/panorama/d;->aOJ:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/panorama/d;->aPb:I

    .line 331
    return-void

    .line 360
    :pswitch_16a
    iget-object v0, p0, Lcom/android/panorama/d;->aOV:Lcom/android/panorama/k;

    if-eqz v0, :cond_9d

    .line 361
    iget-object v0, p0, Lcom/android/panorama/d;->aOV:Lcom/android/panorama/k;

    iget-object v1, p0, Lcom/android/panorama/d;->aOJ:[I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/panorama/k;->beF(I)V

    goto/16 :goto_9d

    .line 391
    :cond_179
    int-to-float v1, v3

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_110

    .line 402
    :cond_17e
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/panorama/d;->aOK:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 403
    sget v1, Lcom/android/panorama/d;->aOz:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 405
    iget-object v0, p0, Lcom/android/panorama/d;->aOV:Lcom/android/panorama/k;

    if-eqz v0, :cond_195

    .line 406
    iget-object v0, p0, Lcom/android/panorama/d;->aOV:Lcom/android/panorama/k;

    invoke-interface {v0, p1}, Lcom/android/panorama/k;->beH([B)V

    .line 411
    :cond_195
    iget-object v0, p0, Lcom/android/panorama/d;->aOJ:[I

    aget v0, v0, v2

    if-eqz v0, :cond_13b

    .line 412
    iget-object v0, p0, Lcom/android/panorama/d;->aOJ:[I

    aget v0, v0, v2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13b

    .line 413
    iget-object v0, p0, Lcom/android/panorama/d;->aOJ:[I

    aget v0, v0, v2

    if-eq v0, v7, :cond_13b

    .line 424
    iget v0, p0, Lcom/android/panorama/d;->aOC:I

    iget v1, p0, Lcom/android/panorama/d;->aOD:I

    add-int/2addr v0, v1

    packed-switch v0, :pswitch_data_200

    .line 427
    :pswitch_1b0
    iget-object v0, p0, Lcom/android/panorama/d;->aOJ:[I

    aget v0, v0, v2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b7

    .line 429
    :cond_1b7
    iget-object v0, p0, Lcom/android/panorama/d;->aOJ:[I

    aget v0, v0, v2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1be

    .line 451
    :cond_1be
    :goto_1be
    iget-boolean v0, p0, Lcom/android/panorama/d;->aPg:Z

    if-nez v0, :cond_13b

    goto/16 :goto_13b

    .line 433
    :pswitch_1c4
    iget-object v0, p0, Lcom/android/panorama/d;->aOJ:[I

    aget v0, v0, v2

    if-ne v0, v10, :cond_1ca

    .line 435
    :cond_1ca
    iget-object v0, p0, Lcom/android/panorama/d;->aOJ:[I

    aget v0, v0, v2

    if-ne v0, v10, :cond_1be

    goto :goto_1be

    .line 439
    :pswitch_1d1
    iget-object v0, p0, Lcom/android/panorama/d;->aOJ:[I

    aget v0, v0, v2

    if-ne v0, v10, :cond_1d7

    .line 441
    :cond_1d7
    iget-object v0, p0, Lcom/android/panorama/d;->aOJ:[I

    aget v0, v0, v2

    if-ne v0, v10, :cond_1be

    goto :goto_1be

    .line 445
    :pswitch_1de
    iget-object v0, p0, Lcom/android/panorama/d;->aOJ:[I

    aget v0, v0, v2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e5

    .line 447
    :cond_1e5
    iget-object v0, p0, Lcom/android/panorama/d;->aOJ:[I

    aget v0, v0, v2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1be

    goto :goto_1be

    .line 468
    :cond_1ed
    iget-object v0, p0, Lcom/android/panorama/d;->aOV:Lcom/android/panorama/k;

    if-eqz v0, :cond_15d

    .line 469
    iget-object v0, p0, Lcom/android/panorama/d;->aOV:Lcom/android/panorama/k;

    invoke-interface {v0}, Lcom/android/panorama/k;->beT()V

    goto/16 :goto_15d

    .line 356
    :pswitch_data_1f8
    .packed-switch 0x4
        :pswitch_9d
        :pswitch_16a
    .end packed-switch

    .line 424
    :pswitch_data_200
    .packed-switch 0x1
        :pswitch_1c4
        :pswitch_1b0
        :pswitch_1b0
        :pswitch_1d1
        :pswitch_1de
    .end packed-switch
.end method

.method public bfh(I)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    if-nez v0, :cond_7

    .line 291
    return-void

    .line 293
    :cond_7
    invoke-virtual {p0}, Lcom/android/panorama/d;->bfk()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 294
    return-void

    .line 296
    :cond_e
    iget v0, p0, Lcom/android/panorama/d;->aPb:I

    if-eqz v0, :cond_16

    .line 297
    iget v0, p0, Lcom/android/panorama/d;->aPb:I

    if-ne v0, v2, :cond_1b

    .line 298
    :cond_16
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/panorama/d;->bfq(I)V

    .line 299
    return-void

    .line 301
    :cond_1b
    new-instance v0, Lcom/android/panorama/h;

    invoke-direct {v0, p0, v2, p1}, Lcom/android/panorama/h;-><init>(Lcom/android/panorama/d;ZI)V

    iput-object v0, p0, Lcom/android/panorama/d;->aPh:Lcom/android/panorama/h;

    .line 302
    iget-object v0, p0, Lcom/android/panorama/d;->aPh:Lcom/android/panorama/h;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/panorama/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 289
    return-void
.end method

.method public bfi(Lcom/android/panorama/k;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/panorama/d;->aOV:Lcom/android/panorama/k;

    .line 118
    return-void
.end method

.method public bfj(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qa()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/panorama/d;->aOI:Landroid/content/ContentResolver;

    .line 138
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Ln()F

    move-result v0

    iput v0, p0, Lcom/android/panorama/d;->aOM:F

    .line 139
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pI()F

    move-result v0

    iput v0, p0, Lcom/android/panorama/d;->aOL:F

    .line 140
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/common/h;->aoQ(II)I

    move-result v0

    iput v0, p0, Lcom/android/panorama/d;->aOB:I

    .line 141
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/panorama/d;->aOS:Lcom/android/common/r/a;

    .line 136
    return-void
.end method

.method public bfk()Z
    .registers 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/panorama/d;->aPh:Lcom/android/panorama/h;

    if-eqz v0, :cond_10

    .line 532
    iget-object v0, p0, Lcom/android/panorama/d;->aPh:Lcom/android/panorama/h;

    invoke-virtual {v0}, Lcom/android/panorama/h;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_10

    .line 533
    const/4 v0, 0x1

    return v0

    .line 535
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public bfl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/panorama/d;->aOE:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public bfm([B)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 486
    iget-object v0, p0, Lcom/android/panorama/d;->aOT:Lcom/morpho/core/MorphoPanoramaGP;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/panorama/d;->aOF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 487
    :cond_d
    return-void

    .line 490
    :cond_e
    iget-object v0, p0, Lcom/android/panorama/d;->aOF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/panorama/g;

    .line 491
    new-instance v0, Lcom/android/panorama/f;

    iget v2, v6, Lcom/android/panorama/g;->aPw:I

    .line 492
    iget v3, p0, Lcom/android/panorama/d;->aPc:I

    iget-object v5, p0, Lcom/android/panorama/d;->aOU:[B

    move-object v1, p0

    move-object v4, p1

    .line 491
    invoke-direct/range {v0 .. v5}, Lcom/android/panorama/f;-><init>(Lcom/android/panorama/d;II[B[B)V

    .line 493
    invoke-direct {p0, v0}, Lcom/android/panorama/d;->bfo(Lcom/android/panorama/f;)V

    .line 495
    iget v0, v6, Lcom/android/panorama/g;->aPx:I

    sparse-switch v0, :sswitch_data_34

    .line 485
    :goto_2c
    return-void

    .line 499
    :sswitch_2d
    iget v0, v6, Lcom/android/panorama/g;->aPx:I

    invoke-virtual {p0, v0}, Lcom/android/panorama/d;->bfh(I)V

    goto :goto_2c

    .line 495
    nop

    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_2d
        0x3 -> :sswitch_2d
        0xb -> :sswitch_2d
    .end sparse-switch
.end method

.method public bfn(I)V
    .registers 2

    .prologue
    .line 127
    iput p1, p0, Lcom/android/panorama/d;->aOW:I

    .line 126
    return-void
.end method

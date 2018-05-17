.class public Lcom/android/common/g/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Xp:J

.field private static final Xq:I


# instance fields
.field private XA:Lcom/android/common/gles/j;

.field private XB:[F

.field private XC:Lcom/android/common/effects/a;

.field private XD:Lcom/android/common/gles/j;

.field private XE:I

.field private XF:Z

.field private XG:Lcom/android/common/gles/j;

.field private XH:Lcom/android/common/gles/j;

.field private XI:Landroid/view/animation/Interpolator;

.field private XJ:I

.field private XK:J

.field private XL:Z

.field private XM:J

.field private XN:I

.field private XO:Z

.field private XP:I

.field private XQ:Landroid/graphics/Rect;

.field private XR:I

.field private XS:Ljava/nio/FloatBuffer;

.field private XT:[F

.field private Xr:Landroid/view/animation/Interpolator;

.field private Xs:Ljava/util/ArrayList;

.field private Xt:Z

.field private Xu:J

.field private Xv:Z

.field private Xw:J

.field private Xx:Landroid/content/Context;

.field private Xy:[F

.field private Xz:Lcom/android/common/effects/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "NX518J"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@1
    nop

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x7

    :goto_c
    sput v0, Lcom/android/common/g/g;->Xq:I

    .line 49
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@11
    nop

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aea()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/common/g/g;->Xp:J

    .line 29
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 44
    :cond_1e
    const/16 v0, 0xa

    goto :goto_c
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/16 v1, 0x10

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/g/g;->Xs:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/g/g;->Xx:Landroid/content/Context;

    .line 33
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/common/g/g;->Xy:[F

    .line 34
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/common/g/g;->XB:[F

    .line 35
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/common/g/g;->XT:[F

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/common/g/g;->XJ:I

    .line 45
    iput-boolean v3, p0, Lcom/android/common/g/g;->Xv:Z

    .line 46
    iput-boolean v3, p0, Lcom/android/common/g/g;->Xt:Z

    .line 47
    iput-wide v4, p0, Lcom/android/common/g/g;->Xw:J

    .line 48
    iput-wide v4, p0, Lcom/android/common/g/g;->Xu:J

    .line 69
    iput-boolean v3, p0, Lcom/android/common/g/g;->XO:Z

    .line 70
    iput-boolean v3, p0, Lcom/android/common/g/g;->XL:Z

    .line 75
    iput-wide v4, p0, Lcom/android/common/g/g;->XK:J

    .line 76
    iput-wide v4, p0, Lcom/android/common/g/g;->XM:J

    .line 81
    iput v3, p0, Lcom/android/common/g/g;->XN:I

    .line 83
    iput-boolean v3, p0, Lcom/android/common/g/g;->XF:Z

    .line 84
    iput v3, p0, Lcom/android/common/g/g;->XE:I

    .line 99
    iput-object p1, p0, Lcom/android/common/g/g;->Xx:Landroid/content/Context;

    .line 100
    iget-object v0, p0, Lcom/android/common/g/g;->Xy:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 101
    iget-object v0, p0, Lcom/android/common/g/g;->XT:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 103
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_82

    .line 111
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    .line 110
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 112
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/g/g;->XS:Ljava/nio/FloatBuffer;

    .line 113
    iget-object v1, p0, Lcom/android/common/g/g;->XS:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 115
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/common/g/g;->XI:Landroid/view/animation/Interpolator;

    .line 116
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/common/g/g;->Xr:Landroid/view/animation/Interpolator;

    .line 98
    return-void

    .line 103
    :array_82
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private aba(II)V
    .registers 4

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/common/g/g;->XD:Lcom/android/common/gles/j;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/common/g/g;->abb(Lcom/android/common/gles/j;II)Lcom/android/common/gles/j;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/g/g;->XD:Lcom/android/common/gles/j;

    .line 581
    iget-object v0, p0, Lcom/android/common/g/g;->XA:Lcom/android/common/gles/j;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/common/g/g;->abb(Lcom/android/common/gles/j;II)Lcom/android/common/gles/j;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/g/g;->XA:Lcom/android/common/gles/j;

    .line 582
    iget-object v0, p0, Lcom/android/common/g/g;->XH:Lcom/android/common/gles/j;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/common/g/g;->abb(Lcom/android/common/gles/j;II)Lcom/android/common/gles/j;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/g/g;->XH:Lcom/android/common/gles/j;

    .line 583
    iget-object v0, p0, Lcom/android/common/g/g;->XG:Lcom/android/common/gles/j;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/common/g/g;->abb(Lcom/android/common/gles/j;II)Lcom/android/common/gles/j;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/g/g;->XG:Lcom/android/common/gles/j;

    .line 579
    return-void
.end method

.method private abb(Lcom/android/common/gles/j;II)Lcom/android/common/gles/j;
    .registers 5

    .prologue
    .line 553
    if-eqz p1, :cond_f

    .line 554
    invoke-virtual {p1}, Lcom/android/common/gles/j;->RM()I

    move-result v0

    if-ne v0, p2, :cond_f

    .line 555
    invoke-virtual {p1}, Lcom/android/common/gles/j;->RN()I

    move-result v0

    if-ne v0, p3, :cond_f

    .line 556
    return-object p1

    .line 559
    :cond_f
    if-eqz p1, :cond_15

    .line 560
    invoke-virtual {p1, p2, p3}, Lcom/android/common/gles/j;->SL(II)V

    .line 561
    return-object p1

    .line 564
    :cond_15
    new-instance v0, Lcom/android/common/gles/j;

    invoke-direct {v0, p2, p3}, Lcom/android/common/gles/j;-><init>(II)V

    return-object v0
.end method

.method private abc(II)V
    .registers 4

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/common/g/g;->XH:Lcom/android/common/gles/j;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/common/g/g;->abb(Lcom/android/common/gles/j;II)Lcom/android/common/gles/j;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/g/g;->XH:Lcom/android/common/gles/j;

    .line 576
    iget-object v0, p0, Lcom/android/common/g/g;->XG:Lcom/android/common/gles/j;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/common/g/g;->abb(Lcom/android/common/gles/j;II)Lcom/android/common/gles/j;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/g/g;->XG:Lcom/android/common/gles/j;

    .line 574
    return-void
.end method

.method private abd(Lcom/android/common/gles/j;)V
    .registers 3

    .prologue
    .line 568
    if-eqz p1, :cond_b

    .line 569
    invoke-virtual {p1}, Lcom/android/common/gles/j;->RO()Z

    move-result v0

    .line 568
    if-eqz v0, :cond_b

    .line 570
    invoke-virtual {p1}, Lcom/android/common/gles/j;->SM()V

    .line 567
    :cond_b
    return-void
.end method

.method private abe()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 587
    iget-object v0, p0, Lcom/android/common/g/g;->XA:Lcom/android/common/gles/j;

    invoke-direct {p0, v0}, Lcom/android/common/g/g;->abd(Lcom/android/common/gles/j;)V

    .line 588
    iget-object v0, p0, Lcom/android/common/g/g;->XD:Lcom/android/common/gles/j;

    invoke-direct {p0, v0}, Lcom/android/common/g/g;->abd(Lcom/android/common/gles/j;)V

    .line 589
    iget-object v0, p0, Lcom/android/common/g/g;->XH:Lcom/android/common/gles/j;

    invoke-direct {p0, v0}, Lcom/android/common/g/g;->abd(Lcom/android/common/gles/j;)V

    .line 590
    iget-object v0, p0, Lcom/android/common/g/g;->XG:Lcom/android/common/gles/j;

    invoke-direct {p0, v0}, Lcom/android/common/g/g;->abd(Lcom/android/common/gles/j;)V

    .line 592
    iput-object v1, p0, Lcom/android/common/g/g;->XA:Lcom/android/common/gles/j;

    .line 593
    iput-object v1, p0, Lcom/android/common/g/g;->XD:Lcom/android/common/gles/j;

    .line 594
    iput-object v1, p0, Lcom/android/common/g/g;->XH:Lcom/android/common/gles/j;

    .line 595
    iput-object v1, p0, Lcom/android/common/g/g;->XG:Lcom/android/common/gles/j;

    .line 586
    return-void
.end method

.method private abf(Lcom/android/common/gles/c;Landroid/graphics/Rect;Lcom/android/common/a/a;Lcom/android/common/gles/e;F)V
    .registers 13

    .prologue
    .line 457
    invoke-virtual {p4}, Lcom/android/common/gles/e;->Sb()V

    .line 458
    invoke-virtual {p4, p5}, Lcom/android/common/gles/e;->setAlpha(F)V

    .line 459
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/common/gles/c;->RW(II)V

    .line 460
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/gles/c;->RV(Z)V

    .line 461
    iget-object v2, p0, Lcom/android/common/g/g;->Xy:[F

    .line 462
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v0, p4

    move-object v1, p1

    .line 461
    invoke-virtual/range {v0 .. v6}, Lcom/android/common/gles/e;->Sd(Lcom/android/common/gles/c;[FIIII)V

    .line 463
    invoke-virtual {p4}, Lcom/android/common/gles/e;->Sf()V

    .line 465
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/common/gles/c;->RV(Z)V

    .line 456
    return-void
.end method

.method private abg(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;I)V
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 417
    const/4 v0, 0x1

    if-ge p4, v0, :cond_5

    .line 418
    return-void

    .line 420
    :cond_5
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sb()V

    .line 421
    iget-object v0, p0, Lcom/android/common/g/g;->XH:Lcom/android/common/gles/j;

    invoke-virtual {p2, v0}, Lcom/android/common/gles/e;->Sc(Lcom/android/common/gles/j;)V

    .line 422
    invoke-virtual {p1}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/g/g;->XT:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 423
    invoke-virtual {p1}, Lcom/android/common/a/a;->m()Lcom/android/common/gles/a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/g/g;->XT:[F

    iget-object v0, p0, Lcom/android/common/g/g;->XH:Lcom/android/common/gles/j;

    invoke-virtual {v0}, Lcom/android/common/gles/j;->RM()I

    move-result v5

    iget-object v0, p0, Lcom/android/common/g/g;->XH:Lcom/android/common/gles/j;

    invoke-virtual {v0}, Lcom/android/common/gles/j;->RN()I

    move-result v6

    move-object v0, p2

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/common/gles/e;->Sd(Lcom/android/common/gles/c;[FIIII)V

    .line 424
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Se()V

    .line 425
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sf()V

    .line 427
    iget-object v1, p0, Lcom/android/common/g/g;->XH:Lcom/android/common/gles/j;

    .line 428
    :goto_35
    if-ge v3, p4, :cond_42

    .line 429
    iget-object v0, p0, Lcom/android/common/g/g;->XH:Lcom/android/common/gles/j;

    iget-object v1, p0, Lcom/android/common/g/g;->XG:Lcom/android/common/gles/j;

    invoke-direct {p0, p2, v0, v1}, Lcom/android/common/g/g;->abh(Lcom/android/common/gles/e;Lcom/android/common/gles/j;Lcom/android/common/gles/j;)Lcom/android/common/gles/j;

    move-result-object v1

    .line 428
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 433
    :cond_42
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    .line 431
    invoke-direct/range {v0 .. v5}, Lcom/android/common/g/g;->abf(Lcom/android/common/gles/c;Landroid/graphics/Rect;Lcom/android/common/a/a;Lcom/android/common/gles/e;F)V

    .line 416
    return-void
.end method

.method private abh(Lcom/android/common/gles/e;Lcom/android/common/gles/j;Lcom/android/common/gles/j;)Lcom/android/common/gles/j;
    .registers 14

    .prologue
    const/4 v4, 0x0

    .line 437
    invoke-virtual {p1}, Lcom/android/common/gles/e;->Sb()V

    .line 438
    invoke-virtual {p1, p3}, Lcom/android/common/gles/e;->Sc(Lcom/android/common/gles/j;)V

    .line 439
    iget-object v0, p0, Lcom/android/common/g/g;->Xz:Lcom/android/common/effects/a;

    iget-object v1, p0, Lcom/android/common/g/g;->XB:[F

    iget-object v2, p0, Lcom/android/common/g/g;->Xy:[F

    iget-object v3, p0, Lcom/android/common/g/g;->XS:Ljava/nio/FloatBuffer;

    .line 440
    invoke-virtual {p3}, Lcom/android/common/gles/j;->RM()I

    move-result v6

    invoke-virtual {p3}, Lcom/android/common/gles/j;->RN()I

    move-result v7

    move v5, v4

    move-object v8, p2

    move-object v9, p1

    .line 439
    invoke-interface/range {v0 .. v9}, Lcom/android/common/effects/a;->GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V

    .line 442
    invoke-virtual {p1}, Lcom/android/common/gles/e;->Se()V

    .line 443
    invoke-virtual {p1}, Lcom/android/common/gles/e;->Sf()V

    .line 445
    invoke-virtual {p1}, Lcom/android/common/gles/e;->Sb()V

    .line 446
    invoke-virtual {p1, p2}, Lcom/android/common/gles/e;->Sc(Lcom/android/common/gles/j;)V

    .line 447
    iget-object v0, p0, Lcom/android/common/g/g;->XC:Lcom/android/common/effects/a;

    iget-object v1, p0, Lcom/android/common/g/g;->XB:[F

    iget-object v2, p0, Lcom/android/common/g/g;->Xy:[F

    iget-object v3, p0, Lcom/android/common/g/g;->XS:Ljava/nio/FloatBuffer;

    .line 448
    invoke-virtual {p2}, Lcom/android/common/gles/j;->RM()I

    move-result v6

    invoke-virtual {p2}, Lcom/android/common/gles/j;->RN()I

    move-result v7

    move v5, v4

    move-object v8, p3

    move-object v9, p1

    .line 447
    invoke-interface/range {v0 .. v9}, Lcom/android/common/effects/a;->GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V

    .line 450
    invoke-virtual {p1}, Lcom/android/common/gles/e;->Se()V

    .line 451
    invoke-virtual {p1}, Lcom/android/common/gles/e;->Sf()V

    .line 452
    return-object p2
.end method

.method private abi(Lcom/android/common/a/a;Lcom/android/common/gles/e;)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lcom/android/common/g/g;->Xz:Lcom/android/common/effects/a;

    if-nez v0, :cond_e

    .line 147
    new-instance v0, Lcom/android/common/effects/a/c;

    iget-object v1, p0, Lcom/android/common/g/g;->Xx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/common/effects/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/g/g;->Xz:Lcom/android/common/effects/a;

    .line 150
    :cond_e
    iget-object v0, p0, Lcom/android/common/g/g;->XC:Lcom/android/common/effects/a;

    if-nez v0, :cond_1b

    .line 151
    new-instance v0, Lcom/android/common/effects/a/j;

    iget-object v1, p0, Lcom/android/common/g/g;->Xx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/common/effects/a/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/g/g;->XC:Lcom/android/common/effects/a;

    .line 155
    :cond_1b
    const/16 v0, 0x10

    new-array v2, v0, [F

    .line 156
    invoke-virtual {p1}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 158
    invoke-virtual {p1}, Lcom/android/common/a/a;->i()Lcom/android/common/gles/c;

    move-result-object v0

    if-eqz v0, :cond_90

    const/4 v0, 0x1

    move v4, v0

    .line 159
    :goto_2e
    if-eqz v4, :cond_92

    invoke-virtual {p1}, Lcom/android/common/a/a;->i()Lcom/android/common/gles/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/gles/c;->RM()I

    move-result v0

    move v1, v0

    .line 160
    :goto_39
    if-eqz v4, :cond_9c

    invoke-virtual {p1}, Lcom/android/common/a/a;->i()Lcom/android/common/gles/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/gles/c;->RN()I

    move-result v0

    .line 161
    :goto_43
    invoke-virtual {p1}, Lcom/android/common/a/a;->l()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, p0, Lcom/android/common/g/g;->XR:I

    .line 162
    invoke-virtual {p1}, Lcom/android/common/a/a;->l()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, p0, Lcom/android/common/g/g;->XP:I

    .line 163
    invoke-virtual {p1}, Lcom/android/common/a/a;->l()Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, p0, Lcom/android/common/g/g;->XQ:Landroid/graphics/Rect;

    .line 167
    iget v5, p0, Lcom/android/common/g/g;->XJ:I

    div-int/2addr v1, v5

    iget v5, p0, Lcom/android/common/g/g;->XJ:I

    div-int/2addr v0, v5

    invoke-direct {p0, v1, v0}, Lcom/android/common/g/g;->aba(II)V

    .line 169
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sb()V

    .line 170
    iget-object v0, p0, Lcom/android/common/g/g;->XD:Lcom/android/common/gles/j;

    invoke-virtual {p2, v0}, Lcom/android/common/gles/e;->Sc(Lcom/android/common/gles/j;)V

    .line 171
    if-eqz v4, :cond_a5

    invoke-virtual {p1}, Lcom/android/common/a/a;->i()Lcom/android/common/gles/c;

    move-result-object v1

    .line 172
    :goto_74
    if-eqz v4, :cond_78

    iget-object v2, p0, Lcom/android/common/g/g;->Xy:[F

    .line 173
    :cond_78
    iget-object v0, p0, Lcom/android/common/g/g;->XD:Lcom/android/common/gles/j;

    invoke-virtual {v0}, Lcom/android/common/gles/j;->RM()I

    move-result v5

    iget-object v0, p0, Lcom/android/common/g/g;->XD:Lcom/android/common/gles/j;

    invoke-virtual {v0}, Lcom/android/common/gles/j;->RN()I

    move-result v6

    move-object v0, p2

    move v4, v3

    .line 171
    invoke-virtual/range {v0 .. v6}, Lcom/android/common/gles/e;->Sd(Lcom/android/common/gles/c;[FIIII)V

    .line 174
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Se()V

    .line 175
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sf()V

    .line 145
    return-void

    :cond_90
    move v4, v3

    .line 158
    goto :goto_2e

    .line 159
    :cond_92
    invoke-virtual {p1}, Lcom/android/common/a/a;->l()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    move v1, v0

    goto :goto_39

    .line 160
    :cond_9c
    invoke-virtual {p1}, Lcom/android/common/a/a;->l()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_43

    .line 171
    :cond_a5
    invoke-virtual {p1}, Lcom/android/common/a/a;->m()Lcom/android/common/gles/a;

    move-result-object v1

    goto :goto_74
.end method

.method private abj()V
    .registers 3

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/common/g/g;->Xs:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/g/h;

    .line 514
    if-eqz v0, :cond_6

    .line 515
    invoke-interface {v0}, Lcom/android/common/g/h;->abp()V

    goto :goto_6

    .line 512
    :cond_18
    return-void
.end method

.method private abk()V
    .registers 3

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/common/g/g;->Xs:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/g/h;

    .line 506
    if-eqz v0, :cond_6

    .line 507
    invoke-interface {v0}, Lcom/android/common/g/h;->abq()V

    goto :goto_6

    .line 504
    :cond_18
    return-void
.end method

.method private abl()V
    .registers 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/common/g/g;->Xs:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/g/h;

    .line 498
    if-eqz v0, :cond_6

    .line 499
    invoke-interface {v0}, Lcom/android/common/g/h;->abr()V

    goto :goto_6

    .line 496
    :cond_18
    return-void
.end method

.method private abm()V
    .registers 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/common/g/g;->Xs:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/g/h;

    .line 538
    if-eqz v0, :cond_6

    .line 539
    invoke-interface {v0}, Lcom/android/common/g/h;->abs()V

    goto :goto_6

    .line 536
    :cond_18
    return-void
.end method

.method private abn()V
    .registers 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/common/g/g;->Xs:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/g/h;

    .line 530
    if-eqz v0, :cond_6

    .line 531
    invoke-interface {v0}, Lcom/android/common/g/h;->abt()V

    goto :goto_6

    .line 528
    :cond_18
    return-void
.end method

.method private abo()V
    .registers 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/common/g/g;->Xs:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/g/h;

    .line 522
    if-eqz v0, :cond_6

    .line 523
    invoke-interface {v0}, Lcom/android/common/g/h;->abu()V

    goto :goto_6

    .line 520
    :cond_18
    return-void
.end method


# virtual methods
.method public aaS()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 490
    iput-boolean v0, p0, Lcom/android/common/g/g;->Xv:Z

    .line 491
    iput-boolean v0, p0, Lcom/android/common/g/g;->Xt:Z

    .line 492
    iput-wide v2, p0, Lcom/android/common/g/g;->Xw:J

    .line 493
    iput-wide v2, p0, Lcom/android/common/g/g;->Xu:J

    .line 489
    return-void
.end method

.method public aaT(Lcom/android/common/a/a;Lcom/android/common/gles/e;)V
    .registers 7

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/common/g/g;->Xz:Lcom/android/common/effects/a;

    if-nez v0, :cond_d

    .line 237
    new-instance v0, Lcom/android/common/effects/a/c;

    iget-object v1, p0, Lcom/android/common/g/g;->Xx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/common/effects/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/g/g;->Xz:Lcom/android/common/effects/a;

    .line 240
    :cond_d
    iget-object v0, p0, Lcom/android/common/g/g;->XC:Lcom/android/common/effects/a;

    if-nez v0, :cond_1a

    .line 241
    new-instance v0, Lcom/android/common/effects/a/j;

    iget-object v1, p0, Lcom/android/common/g/g;->Xx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/common/effects/a/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/g/g;->XC:Lcom/android/common/effects/a;

    .line 244
    :cond_1a
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/android/common/g/g;->XJ:I

    div-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/common/g/g;->XJ:I

    div-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/common/g/g;->abc(II)V

    .line 246
    sget v1, Lcom/android/common/g/g;->Xq:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/common/g/g;->abg(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;I)V

    .line 235
    return-void
.end method

.method public aaU(Lcom/android/common/a/a;Lcom/android/common/gles/e;I)V
    .registers 6

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/common/g/g;->XO:Z

    if-eqz v0, :cond_5

    .line 197
    return-void

    .line 199
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/common/g/g;->abi(Lcom/android/common/a/a;Lcom/android/common/gles/e;)V

    .line 201
    iput p3, p0, Lcom/android/common/g/g;->XN:I

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/g/g;->XO:Z

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/g/g;->XL:Z

    .line 204
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/common/g/g;->XM:J

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/g/g;->XK:J

    .line 206
    invoke-direct {p0}, Lcom/android/common/g/g;->abo()V

    .line 195
    return-void
.end method

.method public aaV(Lcom/android/common/a/a;Lcom/android/common/gles/e;)I
    .registers 13

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/android/common/g/g;->Xv:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/common/g/g;->Xt:Z

    if-eqz v0, :cond_46

    .line 260
    :cond_8
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v2

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 263
    iget-boolean v0, p0, Lcom/android/common/g/g;->Xv:Z

    if-eqz v0, :cond_9f

    .line 264
    iget-boolean v0, p0, Lcom/android/common/g/g;->XF:Z

    if-nez v0, :cond_81

    .line 265
    iget-wide v0, p0, Lcom/android/common/g/g;->Xw:J

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-lez v0, :cond_72

    .line 266
    iget-wide v0, p0, Lcom/android/common/g/g;->Xw:J

    sub-long v0, v4, v0

    sget-wide v6, Lcom/android/common/g/g;->Xp:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_72

    .line 267
    iget-wide v0, p0, Lcom/android/common/g/g;->Xw:J

    sub-long v0, v4, v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_72

    .line 268
    iget-object v0, p0, Lcom/android/common/g/g;->XD:Lcom/android/common/gles/j;

    iget-object v1, p0, Lcom/android/common/g/g;->XA:Lcom/android/common/gles/j;

    invoke-direct {p0, p2, v0, v1}, Lcom/android/common/g/g;->abh(Lcom/android/common/gles/e;Lcom/android/common/gles/j;Lcom/android/common/gles/j;)Lcom/android/common/gles/j;

    move-result-object v1

    .line 271
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 269
    invoke-direct/range {v0 .. v5}, Lcom/android/common/g/g;->abf(Lcom/android/common/gles/c;Landroid/graphics/Rect;Lcom/android/common/a/a;Lcom/android/common/gles/e;F)V

    .line 273
    const/4 v0, 0x2

    return v0

    .line 251
    :cond_46
    iget-boolean v0, p0, Lcom/android/common/g/g;->XO:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/common/g/g;->XL:Z

    if-nez v0, :cond_8

    .line 252
    iget-boolean v0, p0, Lcom/android/common/g/g;->XF:Z

    if-eqz v0, :cond_70

    .line 253
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/android/common/g/g;->XJ:I

    div-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p0, Lcom/android/common/g/g;->XJ:I

    div-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/android/common/g/g;->abc(II)V

    .line 255
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v0

    sget v1, Lcom/android/common/g/g;->Xq:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/common/g/g;->abg(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;I)V

    .line 257
    :cond_70
    const/4 v0, 0x0

    return v0

    .line 275
    :cond_72
    iget-object v1, p0, Lcom/android/common/g/g;->XD:Lcom/android/common/gles/j;

    .line 277
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 275
    invoke-direct/range {v0 .. v5}, Lcom/android/common/g/g;->abf(Lcom/android/common/gles/c;Landroid/graphics/Rect;Lcom/android/common/a/a;Lcom/android/common/gles/e;F)V

    .line 278
    invoke-direct {p0}, Lcom/android/common/g/g;->abk()V

    .line 279
    const/4 v0, 0x3

    return v0

    .line 282
    :cond_81
    iget v0, p0, Lcom/android/common/g/g;->XE:I

    sget v1, Lcom/android/common/g/g;->Xq:I

    if-ge v0, v1, :cond_98

    .line 283
    iget v0, p0, Lcom/android/common/g/g;->XE:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/g/g;->XE:I

    .line 284
    iget v0, p0, Lcom/android/common/g/g;->XE:I

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/common/g/g;->abg(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;I)V

    .line 285
    iget-object v0, p0, Lcom/android/common/g/g;->XH:Lcom/android/common/gles/j;

    iput-object v0, p0, Lcom/android/common/g/g;->XD:Lcom/android/common/gles/j;

    .line 286
    const/4 v0, 0x2

    return v0

    .line 288
    :cond_98
    sget v0, Lcom/android/common/g/g;->Xq:I

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/common/g/g;->abg(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;I)V

    .line 289
    const/4 v0, 0x3

    return v0

    .line 292
    :cond_9f
    iget-boolean v0, p0, Lcom/android/common/g/g;->Xt:Z

    if-eqz v0, :cond_108

    .line 293
    iget-boolean v0, p0, Lcom/android/common/g/g;->XF:Z

    if-eqz v0, :cond_c1

    iget v0, p0, Lcom/android/common/g/g;->XE:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_c1

    .line 294
    sget v0, Lcom/android/common/g/g;->Xq:I

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/common/g/g;->abg(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;I)V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/g/g;->Xt:Z

    .line 296
    invoke-direct {p0}, Lcom/android/common/g/g;->abj()V

    .line 297
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/common/g/g;->Xu:J

    .line 298
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/common/g/g;->Xw:J

    .line 299
    const/4 v0, 0x1

    return v0

    .line 301
    :cond_c1
    iget-wide v0, p0, Lcom/android/common/g/g;->Xu:J

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-lez v0, :cond_f8

    .line 302
    iget-wide v0, p0, Lcom/android/common/g/g;->Xu:J

    sub-long v0, v4, v0

    const-wide/16 v6, 0x190

    cmp-long v0, v0, v6

    if-gtz v0, :cond_f8

    .line 303
    iget-wide v0, p0, Lcom/android/common/g/g;->Xu:J

    sub-long v0, v4, v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_f8

    .line 304
    iget-object v0, p0, Lcom/android/common/g/g;->Xr:Landroid/view/animation/Interpolator;

    .line 305
    iget-wide v6, p0, Lcom/android/common/g/g;->Xu:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    const/high16 v3, 0x43c80000    # 400.0f

    div-float/2addr v1, v3

    .line 304
    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v5, v1, v0

    .line 310
    iget-object v1, p0, Lcom/android/common/g/g;->XD:Lcom/android/common/gles/j;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/common/g/g;->abf(Lcom/android/common/gles/c;Landroid/graphics/Rect;Lcom/android/common/a/a;Lcom/android/common/gles/e;F)V

    .line 313
    const/4 v0, 0x4

    return v0

    .line 315
    :cond_f8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/g/g;->Xt:Z

    .line 316
    invoke-direct {p0}, Lcom/android/common/g/g;->abj()V

    .line 317
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/common/g/g;->Xu:J

    .line 318
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/common/g/g;->Xw:J

    .line 319
    const/4 v0, 0x1

    return v0

    .line 323
    :cond_108
    iget-boolean v0, p0, Lcom/android/common/g/g;->XO:Z

    if-eqz v0, :cond_24d

    .line 324
    iget-wide v0, p0, Lcom/android/common/g/g;->XK:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_226

    .line 325
    iget-wide v0, p0, Lcom/android/common/g/g;->XK:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x1c2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_226

    .line 326
    iget-wide v0, p0, Lcom/android/common/g/g;->XK:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_226

    .line 327
    iget-object v0, p0, Lcom/android/common/g/g;->XI:Landroid/view/animation/Interpolator;

    iget-wide v2, p0, Lcom/android/common/g/g;->XK:J

    sub-long v2, v4, v2

    long-to-float v1, v2

    const/high16 v2, 0x43e10000    # 450.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 328
    iget-object v0, p0, Lcom/android/common/g/g;->XD:Lcom/android/common/gles/j;

    iget-object v1, p0, Lcom/android/common/g/g;->XA:Lcom/android/common/gles/j;

    invoke-direct {p0, p2, v0, v1}, Lcom/android/common/g/g;->abh(Lcom/android/common/gles/e;Lcom/android/common/gles/j;Lcom/android/common/gles/j;)Lcom/android/common/gles/j;

    move-result-object v1

    .line 329
    const/high16 v0, 0x43340000    # 180.0f

    mul-float v3, v2, v0

    .line 331
    iget-wide v6, p0, Lcom/android/common/g/g;->XK:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0xfa

    cmp-long v0, v6, v8

    if-gez v0, :cond_19b

    .line 332
    iget-object v0, p0, Lcom/android/common/g/g;->Xr:Landroid/view/animation/Interpolator;

    iget-wide v6, p0, Lcom/android/common/g/g;->XK:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x437a0000    # 250.0f

    div-float/2addr v4, v5

    invoke-interface {v0, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v4, -0x41000000    # -0.5f

    mul-float/2addr v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v0, v4

    .line 336
    :goto_15f
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sb()V

    .line 337
    invoke-virtual {p2, v0}, Lcom/android/common/gles/e;->setAlpha(F)V

    .line 338
    float-to-double v4, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v0, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4, v0}, Lcom/android/common/gles/e;->Sg(FFF)V

    .line 339
    iget v0, p0, Lcom/android/common/g/g;->XN:I

    packed-switch v0, :pswitch_data_2ba

    .line 366
    :cond_17c
    :goto_17c
    iget-object v2, p0, Lcom/android/common/g/g;->Xy:[F

    .line 367
    iget-object v0, p0, Lcom/android/common/g/g;->XQ:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/common/g/g;->XQ:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/common/g/g;->XQ:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 368
    iget-object v0, p0, Lcom/android/common/g/g;->XQ:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v0, p2

    .line 366
    invoke-virtual/range {v0 .. v6}, Lcom/android/common/gles/e;->Sd(Lcom/android/common/gles/c;[FIIII)V

    .line 369
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sf()V

    .line 371
    const/4 v0, 0x6

    return v0

    .line 334
    :cond_19b
    iget-object v0, p0, Lcom/android/common/g/g;->Xr:Landroid/view/animation/Interpolator;

    iget-wide v6, p0, Lcom/android/common/g/g;->XK:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xfa

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x437a0000    # 250.0f

    div-float/2addr v4, v5

    invoke-interface {v0, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v0, v4

    goto :goto_15f

    .line 341
    :pswitch_1b2
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v0, v2, v4}, Lcom/android/common/gles/e;->Sz(FFFF)V

    .line 342
    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v0, v3, v0

    const v2, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_17c

    .line 343
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v2, v3}, Lcom/android/common/gles/e;->Sh(FFF)V

    goto :goto_17c

    .line 347
    :pswitch_1ce
    neg-float v0, v3

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {p2, v0, v2, v4, v5}, Lcom/android/common/gles/e;->Sz(FFFF)V

    .line 348
    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v0, v3, v0

    const v2, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_17c

    .line 349
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v2, v3}, Lcom/android/common/gles/e;->Sh(FFF)V

    goto :goto_17c

    .line 353
    :pswitch_1eb
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v0, v2, v4}, Lcom/android/common/gles/e;->Sz(FFFF)V

    .line 354
    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v0, v3, v0

    const v2, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_17c

    .line 355
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v2, v3}, Lcom/android/common/gles/e;->Sh(FFF)V

    goto/16 :goto_17c

    .line 359
    :pswitch_208
    neg-float v0, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2, v0, v2, v4, v5}, Lcom/android/common/gles/e;->Sz(FFFF)V

    .line 360
    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v0, v3, v0

    const v2, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_17c

    .line 361
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v2, v3}, Lcom/android/common/gles/e;->Sh(FFF)V

    goto/16 :goto_17c

    .line 373
    :cond_226
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sb()V

    .line 375
    iget-object v1, p0, Lcom/android/common/g/g;->XD:Lcom/android/common/gles/j;

    iget-object v2, p0, Lcom/android/common/g/g;->Xy:[F

    .line 376
    iget-object v0, p0, Lcom/android/common/g/g;->XQ:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/common/g/g;->XQ:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/common/g/g;->XQ:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 377
    iget-object v0, p0, Lcom/android/common/g/g;->XQ:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v0, p2

    .line 375
    invoke-virtual/range {v0 .. v6}, Lcom/android/common/gles/e;->Sd(Lcom/android/common/gles/c;[FIIII)V

    .line 378
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sf()V

    .line 379
    invoke-direct {p0}, Lcom/android/common/g/g;->abn()V

    .line 381
    const/4 v0, 0x7

    return v0

    .line 383
    :cond_24d
    iget-boolean v0, p0, Lcom/android/common/g/g;->XL:Z

    if-eqz v0, :cond_2b7

    .line 384
    iget-wide v0, p0, Lcom/android/common/g/g;->XM:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a7

    .line 385
    iget-wide v0, p0, Lcom/android/common/g/g;->XM:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2a7

    .line 386
    iget-wide v0, p0, Lcom/android/common/g/g;->XM:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2a7

    .line 387
    iget-object v0, p0, Lcom/android/common/g/g;->Xr:Landroid/view/animation/Interpolator;

    .line 388
    iget-wide v2, p0, Lcom/android/common/g/g;->XM:J

    sub-long v2, v4, v2

    long-to-float v1, v2

    const/high16 v2, 0x437a0000    # 250.0f

    div-float/2addr v1, v2

    .line 387
    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 396
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sb()V

    .line 397
    invoke-virtual {p2, v0}, Lcom/android/common/gles/e;->setAlpha(F)V

    .line 398
    iget-object v1, p0, Lcom/android/common/g/g;->XD:Lcom/android/common/gles/j;

    iget-object v2, p0, Lcom/android/common/g/g;->Xy:[F

    .line 399
    iget-object v0, p0, Lcom/android/common/g/g;->XQ:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/common/g/g;->XQ:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/common/g/g;->XQ:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 400
    iget-object v0, p0, Lcom/android/common/g/g;->XQ:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v0, p2

    .line 398
    invoke-virtual/range {v0 .. v6}, Lcom/android/common/gles/e;->Sd(Lcom/android/common/gles/c;[FIIII)V

    .line 401
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sf()V

    .line 403
    const/16 v0, 0x8

    return v0

    .line 405
    :cond_2a7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/g/g;->XL:Z

    .line 406
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/common/g/g;->XK:J

    .line 407
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/common/g/g;->XM:J

    .line 408
    invoke-direct {p0}, Lcom/android/common/g/g;->abm()V

    .line 409
    const/4 v0, 0x5

    return v0

    .line 412
    :cond_2b7
    const/4 v0, 0x0

    return v0

    .line 339
    nop

    :pswitch_data_2ba
    .packed-switch 0x0
        :pswitch_1b2
        :pswitch_1ce
        :pswitch_1eb
        :pswitch_208
    .end packed-switch
.end method

.method public aaW(Lcom/android/common/a/a;Lcom/android/common/gles/e;)V
    .registers 7

    .prologue
    .line 210
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/common/a/a;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 211
    const-string/jumbo v0, "PreviewBlurAnim"

    const-string/jumbo v1, "Error! Can\'t call startBlur() out of renderThread"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void

    .line 215
    :cond_1a
    iget-boolean v0, p0, Lcom/android/common/g/g;->XO:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/common/g/g;->XL:Z

    if-eqz v0, :cond_23

    .line 216
    :cond_22
    return-void

    .line 219
    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/g/g;->XL:Z

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/g/g;->XO:Z

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/g/g;->XM:J

    .line 222
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/common/g/g;->XK:J

    .line 209
    return-void
.end method

.method public aaX()Z
    .registers 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/common/g/g;->XF:Z

    return v0
.end method

.method public aaY(Lcom/android/common/a/a;Lcom/android/common/gles/e;Z)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 124
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/common/a/a;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    .line 125
    const-string/jumbo v0, "PreviewBlurAnim"

    const-string/jumbo v1, "Error! Can\'t call startBlur() out of renderThread"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 130
    :cond_1b
    iget-boolean v0, p0, Lcom/android/common/g/g;->Xv:Z

    if-eqz v0, :cond_20

    .line 131
    return-void

    .line 134
    :cond_20
    iput-boolean p3, p0, Lcom/android/common/g/g;->XF:Z

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/common/g/g;->abi(Lcom/android/common/a/a;Lcom/android/common/gles/e;)V

    .line 137
    iput v4, p0, Lcom/android/common/g/g;->XE:I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/g/g;->Xv:Z

    .line 139
    iput-boolean v4, p0, Lcom/android/common/g/g;->Xt:Z

    .line 140
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/common/g/g;->Xu:J

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/g/g;->Xw:J

    .line 142
    invoke-direct {p0}, Lcom/android/common/g/g;->abl()V

    .line 123
    return-void
.end method

.method public aaZ(Lcom/android/common/a/a;Z)V
    .registers 7

    .prologue
    .line 179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/common/a/a;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 180
    const-string/jumbo v0, "PreviewBlurAnim"

    const-string/jumbo v1, "Error! Can\'t call startBlur() out of renderThread"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void

    .line 184
    :cond_1a
    iget-boolean v0, p0, Lcom/android/common/g/g;->Xv:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/common/g/g;->Xt:Z

    if-eqz v0, :cond_23

    .line 185
    :cond_22
    return-void

    .line 188
    :cond_23
    iput-boolean p2, p0, Lcom/android/common/g/g;->XF:Z

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/g/g;->Xu:J

    .line 190
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/common/g/g;->Xw:J

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/g/g;->Xt:Z

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/g/g;->Xv:Z

    .line 178
    return-void
.end method

.method public release()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 469
    iput-wide v2, p0, Lcom/android/common/g/g;->XK:J

    .line 470
    iput-wide v2, p0, Lcom/android/common/g/g;->XM:J

    .line 471
    iput-boolean v0, p0, Lcom/android/common/g/g;->XL:Z

    .line 472
    iput-boolean v0, p0, Lcom/android/common/g/g;->XO:Z

    .line 473
    iput-boolean v0, p0, Lcom/android/common/g/g;->Xv:Z

    .line 474
    iput-boolean v0, p0, Lcom/android/common/g/g;->Xt:Z

    .line 475
    iput-wide v2, p0, Lcom/android/common/g/g;->Xu:J

    .line 476
    iput-wide v2, p0, Lcom/android/common/g/g;->Xw:J

    .line 478
    iget-object v0, p0, Lcom/android/common/g/g;->Xz:Lcom/android/common/effects/a;

    if-eqz v0, :cond_1f

    .line 479
    iget-object v0, p0, Lcom/android/common/g/g;->Xz:Lcom/android/common/effects/a;

    invoke-interface {v0}, Lcom/android/common/effects/a;->release()V

    .line 480
    iput-object v1, p0, Lcom/android/common/g/g;->Xz:Lcom/android/common/effects/a;

    .line 482
    :cond_1f
    iget-object v0, p0, Lcom/android/common/g/g;->XC:Lcom/android/common/effects/a;

    if-eqz v0, :cond_2a

    .line 483
    iget-object v0, p0, Lcom/android/common/g/g;->XC:Lcom/android/common/effects/a;

    invoke-interface {v0}, Lcom/android/common/effects/a;->release()V

    .line 484
    iput-object v1, p0, Lcom/android/common/g/g;->XC:Lcom/android/common/effects/a;

    .line 486
    :cond_2a
    invoke-direct {p0}, Lcom/android/common/g/g;->abe()V

    .line 468
    return-void
.end method

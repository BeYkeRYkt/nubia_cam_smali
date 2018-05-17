.class public Lcom/android/common/effects/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/b;
.implements Lcom/android/common/appService/O;


# static fields
.field private static LH:Z

.field private static final synthetic Mn:[I


# instance fields
.field private LA:I

.field private LB:I

.field private LC:I

.field private LD:Lcom/android/common/effects/f;

.field private LE:Landroid/graphics/Rect;

.field private LF:I

.field private LG:I

.field private LI:I

.field private LJ:Ljava/lang/Object;

.field private LK:[F

.field private LL:I

.field private LM:I

.field private LN:I

.field private LO:I

.field private LP:I

.field private LQ:I

.field private LR:I

.field private LS:I

.field private LT:Lcom/android/common/ui/ae;

.field private LU:Z

.field private LV:[F

.field private LW:Z

.field private LX:I

.field private LY:[F

.field private LZ:Z

.field private final Lh:I

.field private final Li:F

.field private Lj:Z

.field private Lk:J

.field private Ll:Lcom/android/common/effects/a;

.field private Lm:I

.field private Ln:Landroid/content/Context;

.field private Lo:I

.field private Lp:Lcom/android/common/effects/a;

.field private Lq:Ljava/lang/String;

.field private Lr:I

.field private Ls:I

.field private Lt:I

.field private Lu:[Lcom/android/common/effects/a;

.field private Lv:Z

.field private Lw:I

.field private Lx:Landroid/view/animation/Interpolator;

.field private Ly:I

.field private Lz:[Ljava/lang/String;

.field private Ma:I

.field private Mb:I

.field private Mc:Z

.field private Md:I

.field private Me:Landroid/graphics/Bitmap;

.field private Mf:Ljava/nio/ByteBuffer;

.field private Mg:I

.field private Mh:I

.field private Mi:I

.field private Mj:I

.field private Mk:Ljava/nio/FloatBuffer;

.field private Ml:I

.field private Mm:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    const-string/jumbo v0, "FunEffectRenderer"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/common/effects/e;->LH:Z

    .line 39
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/common/setting/ListPreference;Lcom/android/common/ui/ae;)V
    .registers 10

    .prologue
    const/high16 v5, 0x3e800000    # 0.25f

    const/16 v1, 0x10

    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/common/effects/e;->LY:[F

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/common/effects/e;->LK:[F

    .line 46
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/common/effects/e;->LV:[F

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/effects/e;->Lv:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/effects/e;->LJ:Ljava/lang/Object;

    .line 50
    const-string/jumbo v0, "negative-effect"

    iput-object v0, p0, Lcom/android/common/effects/e;->Lq:Ljava/lang/String;

    .line 51
    iput-object v3, p0, Lcom/android/common/effects/e;->Lp:Lcom/android/common/effects/a;

    .line 52
    iput-boolean v4, p0, Lcom/android/common/effects/e;->Mc:Z

    .line 53
    iput-object v3, p0, Lcom/android/common/effects/e;->Mf:Ljava/nio/ByteBuffer;

    .line 54
    iput-object v3, p0, Lcom/android/common/effects/e;->Me:Landroid/graphics/Bitmap;

    .line 55
    const v0, 0x8d65

    iput v0, p0, Lcom/android/common/effects/e;->Mg:I

    .line 57
    iput v4, p0, Lcom/android/common/effects/e;->LR:I

    .line 59
    iput v4, p0, Lcom/android/common/effects/e;->LS:I

    .line 67
    iput v4, p0, Lcom/android/common/effects/e;->Lw:I

    .line 68
    iput v4, p0, Lcom/android/common/effects/e;->Ly:I

    .line 77
    iput v4, p0, Lcom/android/common/effects/e;->Lt:I

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/common/effects/e;->Lk:J

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/effects/e;->Ma:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/effects/e;->Mb:I

    .line 83
    iput v4, p0, Lcom/android/common/effects/e;->Ls:I

    iput v4, p0, Lcom/android/common/effects/e;->Lo:I

    .line 84
    iput v4, p0, Lcom/android/common/effects/e;->Md:I

    .line 87
    iput-boolean v4, p0, Lcom/android/common/effects/e;->LZ:Z

    .line 89
    iput v4, p0, Lcom/android/common/effects/e;->LG:I

    .line 90
    iput v4, p0, Lcom/android/common/effects/e;->Mm:I

    .line 93
    const v0, 0x3faaaaab

    iput v0, p0, Lcom/android/common/effects/e;->Li:F

    .line 95
    iput-object v3, p0, Lcom/android/common/effects/e;->Ll:Lcom/android/common/effects/a;

    .line 96
    iput v2, p0, Lcom/android/common/effects/e;->Lh:I

    .line 97
    iput v2, p0, Lcom/android/common/effects/e;->LP:I

    .line 98
    iput v2, p0, Lcom/android/common/effects/e;->LQ:I

    .line 99
    iput v2, p0, Lcom/android/common/effects/e;->LX:I

    .line 100
    iput v2, p0, Lcom/android/common/effects/e;->Lm:I

    .line 102
    iput v4, p0, Lcom/android/common/effects/e;->LC:I

    .line 103
    iput v4, p0, Lcom/android/common/effects/e;->LB:I

    .line 106
    iput v4, p0, Lcom/android/common/effects/e;->Lr:I

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/effects/e;->LU:Z

    .line 111
    iput-object v3, p0, Lcom/android/common/effects/e;->LD:Lcom/android/common/effects/f;

    .line 112
    iput-boolean v4, p0, Lcom/android/common/effects/e;->LW:Z

    .line 116
    iput-boolean v4, p0, Lcom/android/common/effects/e;->Lj:Z

    .line 117
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v1, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/common/effects/e;->Lx:Landroid/view/animation/Interpolator;

    .line 131
    iput-object p1, p0, Lcom/android/common/effects/e;->Ln:Landroid/content/Context;

    .line 132
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_e8

    .line 140
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    .line 139
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 141
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 139
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/effects/e;->Mk:Ljava/nio/FloatBuffer;

    .line 142
    iget-object v1, p0, Lcom/android/common/effects/e;->Mk:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    iget-object v0, p0, Lcom/android/common/effects/e;->LY:[F

    invoke-static {v0, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 145
    iget-object v0, p0, Lcom/android/common/effects/e;->LV:[F

    invoke-static {v0, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 148
    invoke-virtual {p0, p3}, Lcom/android/common/effects/e;->IF(Lcom/android/common/ui/ae;)V

    .line 150
    invoke-virtual {p2}, Lcom/android/common/setting/ListPreference;->Vs()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 151
    array-length v1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/android/common/effects/e;->LP:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/android/common/effects/e;->Lm:I

    .line 152
    iget v1, p0, Lcom/android/common/effects/e;->Lm:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/common/effects/e;->LP:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/android/common/effects/e;->Mh:I

    .line 153
    iget v1, p0, Lcom/android/common/effects/e;->LX:I

    iget v2, p0, Lcom/android/common/effects/e;->Lm:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/common/effects/e;->IZ([Ljava/lang/CharSequence;II)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    .line 155
    invoke-virtual {p2}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/android/common/effects/e;->IN(Ljava/lang/String;Z)V

    .line 130
    return-void

    .line 132
    nop

    :array_e8
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

.method private IO(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 946
    sget-boolean v0, Lcom/android/common/effects/e;->LH:Z

    if-eqz v0, :cond_a

    .line 947
    const-string/jumbo v0, "FunEffectRenderer"

    invoke-static {v0, p1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    :cond_a
    return-void
.end method

.method private IP(Lcom/android/common/effects/a;Lcom/android/common/gles/e;Lcom/android/common/a/a;[FIIII)V
    .registers 23

    .prologue
    .line 869
    invoke-virtual/range {p3 .. p3}, Lcom/android/common/a/a;->s()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual/range {p3 .. p3}, Lcom/android/common/a/a;->p()Lcom/android/common/gles/j;

    move-result-object v8

    .line 870
    :goto_a
    if-eqz p1, :cond_26

    .line 871
    iget-object v1, p0, Lcom/android/common/effects/e;->LK:[F

    iget-object v2, p0, Lcom/android/common/effects/e;->LY:[F

    iget-object v3, p0, Lcom/android/common/effects/e;->Mk:Ljava/nio/FloatBuffer;

    move-object v0, p1

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v9, p2

    invoke-interface/range {v0 .. v9}, Lcom/android/common/effects/a;->GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V

    .line 868
    :goto_20
    return-void

    .line 869
    :cond_21
    invoke-virtual/range {p3 .. p3}, Lcom/android/common/a/a;->m()Lcom/android/common/gles/a;

    move-result-object v8

    goto :goto_a

    .line 875
    :cond_26
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/gles/e;->Sb()V

    .line 876
    iget-object v9, p0, Lcom/android/common/effects/e;->LY:[F

    move-object/from16 v7, p2

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-virtual/range {v7 .. v13}, Lcom/android/common/gles/e;->Sd(Lcom/android/common/gles/c;[FIIII)V

    .line 877
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/gles/e;->Sf()V

    goto :goto_20
.end method

.method private IQ(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIIZI)V
    .registers 25

    .prologue
    .line 743
    iget v0, p0, Lcom/android/common/effects/e;->LX:I

    mul-int/lit8 v12, v0, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 740
    invoke-direct/range {v0 .. v12}, Lcom/android/common/effects/e;->IR(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIIZII)V

    .line 739
    return-void
.end method

.method private IR(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIIZII)V
    .registers 28

    .prologue
    .line 751
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/effects/e;->LY:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 754
    iget v1, p0, Lcom/android/common/effects/e;->Lr:I

    if-ltz v1, :cond_13

    iget v1, p0, Lcom/android/common/effects/e;->Lr:I

    iget v2, p0, Lcom/android/common/effects/e;->Mh:I

    if-le v1, v2, :cond_14

    .line 755
    :cond_13
    return-void

    .line 757
    :cond_14
    iget v1, p0, Lcom/android/common/effects/e;->LP:I

    mul-int v13, p11, v1

    .line 758
    iget v1, p0, Lcom/android/common/effects/e;->LP:I

    mul-int v1, v1, p11

    iget v2, p0, Lcom/android/common/effects/e;->LP:I

    add-int/2addr v1, v2

    .line 759
    iget v2, p0, Lcom/android/common/effects/e;->Lm:I

    if-le v1, v2, :cond_a8

    .line 760
    iget v1, p0, Lcom/android/common/effects/e;->Lm:I

    move v11, v1

    .line 762
    :goto_26
    iget v1, p0, Lcom/android/common/effects/e;->LX:I

    add-int/lit8 v1, v1, -0x1

    move v14, v1

    :goto_2b
    if-ltz v14, :cond_a7

    move v12, v13

    .line 763
    :goto_2e
    if-ge v12, v11, :cond_a3

    .line 764
    iget v1, p0, Lcom/android/common/effects/e;->Lm:I

    mul-int/2addr v1, v14

    add-int/2addr v1, v12

    .line 765
    iget-object v2, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 767
    iget v3, p0, Lcom/android/common/effects/e;->LX:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v14

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v12

    sub-int/2addr v3, v13

    .line 772
    if-eqz v2, :cond_47

    move/from16 v0, p12

    if-lt v3, v0, :cond_4b

    .line 763
    :cond_47
    :goto_47
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_2e

    .line 776
    :cond_4b
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v4, p7, p5

    sub-int v5, v12, v13

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int v7, v3, p8

    .line 777
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int v4, p7, p6

    mul-int/2addr v4, v14

    add-int/2addr v3, v4

    add-int v8, v3, p9

    .line 779
    if-nez p10, :cond_7f

    .line 780
    add-int v3, v7, p5

    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-le v3, v4, :cond_47

    .line 781
    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ge v7, v3, :cond_47

    .line 782
    add-int v3, v8, p6

    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_47

    .line 783
    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v8, v3, :cond_47

    .line 789
    :cond_7f
    iget-object v3, p0, Lcom/android/common/effects/e;->Lu:[Lcom/android/common/effects/a;

    aget-object v3, v3, v1

    if-nez v3, :cond_9e

    iget v1, p0, Lcom/android/common/effects/e;->Mg:I

    iget v3, p0, Lcom/android/common/effects/e;->LR:I

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/common/effects/e;->IY(Lcom/android/common/a/a;Ljava/lang/String;II)Lcom/android/common/effects/a;

    move-result-object v3

    .line 791
    :goto_8f
    iget-object v6, p0, Lcom/android/common/effects/e;->LY:[F

    move-object v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v9, p5

    move/from16 v10, p6

    .line 788
    invoke-direct/range {v1 .. v10}, Lcom/android/common/effects/e;->IV(Ljava/lang/String;Lcom/android/common/effects/a;Lcom/android/common/a/a;Lcom/android/common/gles/e;[FIIII)V

    goto :goto_47

    .line 789
    :cond_9e
    iget-object v3, p0, Lcom/android/common/effects/e;->Lu:[Lcom/android/common/effects/a;

    aget-object v3, v3, v1

    goto :goto_8f

    .line 762
    :cond_a3
    add-int/lit8 v1, v14, -0x1

    move v14, v1

    goto :goto_2b

    .line 750
    :cond_a7
    return-void

    :cond_a8
    move v11, v1

    goto/16 :goto_26
.end method

.method private IS(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 19

    .prologue
    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 567
    iget-wide v4, p0, Lcom/android/common/effects/e;->Lk:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-lez v4, :cond_1db

    .line 568
    iget-wide v4, p0, Lcom/android/common/effects/e;->Lk:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x15e

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1db

    .line 569
    iget-wide v4, p0, Lcom/android/common/effects/e;->Lk:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1db

    .line 570
    const-string/jumbo v4, "debug, drawHideEffectGridAnimPreview inner"

    invoke-direct {p0, v4}, Lcom/android/common/effects/e;->IO(Ljava/lang/String;)V

    .line 572
    iget-boolean v4, p0, Lcom/android/common/effects/e;->Lj:Z

    if-nez v4, :cond_9b

    .line 573
    iget-object v4, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/common/effects/e;->LC:I

    iget v6, p0, Lcom/android/common/effects/e;->LI:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/common/effects/e;->Lo:I

    iget v7, p0, Lcom/android/common/effects/e;->LP:I

    iget v8, p0, Lcom/android/common/effects/e;->Lr:I

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/common/effects/e;->Ma:I

    .line 574
    iget-object v4, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/common/effects/e;->LI:I

    iget v6, p0, Lcom/android/common/effects/e;->LB:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/common/effects/e;->Ls:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/common/effects/e;->Mb:I

    .line 575
    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/common/effects/e;->Ma:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/common/effects/e;->Mi:I

    .line 576
    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/common/effects/e;->Mb:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/common/effects/e;->Mj:I

    .line 577
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/android/common/effects/e;->LC:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/common/effects/e;->LF:I

    .line 578
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/common/effects/e;->LB:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/common/effects/e;->Ml:I

    .line 579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSelectItemLeft: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/common/effects/e;->Ma:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 580
    const-string/jumbo v5, "; mSelectItemTop: "

    .line 579
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 580
    iget v5, p0, Lcom/android/common/effects/e;->Mb:I

    .line 579
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/common/effects/e;->IO(Ljava/lang/String;)V

    .line 581
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/common/effects/e;->Lj:Z

    .line 586
    :cond_9b
    iget-object v4, p0, Lcom/android/common/effects/e;->Lx:Landroid/view/animation/Interpolator;

    iget-wide v6, p0, Lcom/android/common/effects/e;->Lk:J

    sub-long/2addr v2, v6

    long-to-float v2, v2

    const/high16 v3, 0x43af0000    # 350.0f

    div-float/2addr v2, v3

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 587
    iget v2, p0, Lcom/android/common/effects/e;->LC:I

    int-to-float v2, v2

    iget v4, p0, Lcom/android/common/effects/e;->LF:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-int v7, v2

    .line 588
    iget v2, p0, Lcom/android/common/effects/e;->LB:I

    int-to-float v2, v2

    iget v4, p0, Lcom/android/common/effects/e;->Ml:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-int v8, v2

    .line 589
    iget v2, p0, Lcom/android/common/effects/e;->Ma:I

    int-to-float v2, v2

    iget v4, p0, Lcom/android/common/effects/e;->Mi:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 590
    iget v4, p0, Lcom/android/common/effects/e;->Mb:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/common/effects/e;->Mj:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 592
    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-ge v2, v4, :cond_d6

    .line 593
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 595
    :cond_d6
    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_e0

    .line 596
    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 598
    :cond_e0
    add-int v4, v2, v7

    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    if-le v4, v5, :cond_f7

    .line 599
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v7

    .line 601
    :cond_f7
    add-int v4, v3, v8

    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    if-le v4, v5, :cond_10e

    .line 602
    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v8

    .line 605
    :cond_10e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "after target l, t, w, h: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/common/effects/e;->IO(Ljava/lang/String;)V

    .line 608
    iget v4, p0, Lcom/android/common/effects/e;->LI:I

    mul-int/2addr v4, v8

    iget v5, p0, Lcom/android/common/effects/e;->LB:I

    div-int v9, v4, v5

    .line 610
    add-int v4, v7, v9

    iget v5, p0, Lcom/android/common/effects/e;->Lo:I

    iget v6, p0, Lcom/android/common/effects/e;->LP:I

    iget v10, p0, Lcom/android/common/effects/e;->Lr:I

    mul-int/2addr v6, v10

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    sub-int/2addr v2, v4

    .line 611
    add-int v4, v8, v9

    iget v5, p0, Lcom/android/common/effects/e;->Ls:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/2addr v4, v8

    iget v5, p0, Lcom/android/common/effects/e;->LB:I

    div-int/2addr v4, v5

    .line 613
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v5, v8

    iget v6, p0, Lcom/android/common/effects/e;->LB:I

    div-int v6, v5, v6

    .line 615
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/gles/e;->Sa()V

    .line 619
    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v4, v2

    add-int/2addr v6, v3

    invoke-direct {v5, v2, v3, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 620
    iget v2, p0, Lcom/android/common/effects/e;->LC:I

    sub-int v2, v7, v2

    iget v3, p0, Lcom/android/common/effects/e;->LN:I

    if-le v2, v3, :cond_1d8

    move-object/from16 v6, p4

    .line 621
    :goto_184
    iget v13, p0, Lcom/android/common/effects/e;->Lr:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    .line 618
    invoke-direct/range {v2 .. v13}, Lcom/android/common/effects/e;->IQ(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIIZI)V

    .line 623
    invoke-virtual {p1}, Lcom/android/common/a/a;->q()Landroid/graphics/Rect;

    move-result-object v12

    .line 625
    iget-object v2, p0, Lcom/android/common/effects/e;->Ll:Lcom/android/common/effects/a;

    iget-object v3, p0, Lcom/android/common/effects/e;->LK:[F

    iget-object v4, p0, Lcom/android/common/effects/e;->LY:[F

    iget-object v5, p0, Lcom/android/common/effects/e;->Mk:Ljava/nio/FloatBuffer;

    .line 627
    move-object/from16 v0, p4

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v6

    .line 628
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 629
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v9

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v6, v9

    .line 626
    const/4 v6, 0x0

    .line 630
    const/4 v10, 0x0

    move-object/from16 v11, p2

    .line 625
    invoke-interface/range {v2 .. v11}, Lcom/android/common/effects/a;->GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V

    .line 631
    iget-object v2, p0, Lcom/android/common/effects/e;->Ll:Lcom/android/common/effects/a;

    iget-object v3, p0, Lcom/android/common/effects/e;->LK:[F

    iget-object v4, p0, Lcom/android/common/effects/e;->LY:[F

    iget-object v5, p0, Lcom/android/common/effects/e;->Mk:Ljava/nio/FloatBuffer;

    .line 634
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 635
    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 632
    const/4 v6, 0x0

    .line 633
    const/4 v7, 0x0

    .line 636
    const/4 v10, 0x0

    move-object/from16 v11, p2

    .line 631
    invoke-interface/range {v2 .. v11}, Lcom/android/common/effects/a;->GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V

    .line 565
    :goto_1d7
    return-void

    :cond_1d8
    move-object/from16 v6, p3

    .line 620
    goto :goto_184

    .line 638
    :cond_1db
    const-string/jumbo v2, "debug, drawHideEffectGridAnimPreview outer"

    invoke-direct {p0, v2}, Lcom/android/common/effects/e;->IO(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/gles/e;->Sa()V

    .line 640
    invoke-virtual {p1}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iget-object v3, p0, Lcom/android/common/effects/e;->LY:[F

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 641
    iget-object v3, p0, Lcom/android/common/effects/e;->Lq:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/common/effects/e;->Lp:Lcom/android/common/effects/a;

    iget-object v7, p0, Lcom/android/common/effects/e;->LY:[F

    .line 642
    move-object/from16 v0, p4

    iget v8, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object v2, p0

    move-object v5, p1

    move-object/from16 v6, p2

    .line 641
    invoke-direct/range {v2 .. v11}, Lcom/android/common/effects/e;->IV(Ljava/lang/String;Lcom/android/common/effects/a;Lcom/android/common/a/a;Lcom/android/common/gles/e;[FIIII)V

    .line 643
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/common/effects/e;->Lt:I

    .line 644
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/common/effects/e;->Mb:I

    .line 645
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/common/effects/e;->Ma:I

    .line 646
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/common/effects/e;->Lk:J

    .line 647
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/common/effects/e;->Lj:Z

    .line 648
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/common/a/a;->G(Z)V

    .line 649
    invoke-direct {p0}, Lcom/android/common/effects/e;->Jc()V

    goto :goto_1d7
.end method

.method private IT(Lcom/android/common/a/a;Lcom/android/common/gles/e;)V
    .registers 15

    .prologue
    .line 521
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sa()V

    .line 522
    iget-boolean v0, p0, Lcom/android/common/effects/e;->LZ:Z

    if-eqz v0, :cond_5b

    .line 524
    iget v0, p0, Lcom/android/common/effects/e;->Lr:I

    add-int/lit8 v11, v0, -0x1

    :goto_b
    iget v0, p0, Lcom/android/common/effects/e;->Lr:I

    add-int/lit8 v0, v0, 0x1

    if-gt v11, v0, :cond_73

    .line 525
    if-ltz v11, :cond_17

    iget v0, p0, Lcom/android/common/effects/e;->Mh:I

    if-le v11, v0, :cond_1a

    .line 524
    :cond_17
    :goto_17
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 528
    :cond_1a
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 530
    iget-object v0, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/common/effects/e;->Lr:I

    sub-int v1, v11, v1

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 529
    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 531
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 532
    iget-object v0, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 533
    iget-object v0, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 535
    iget-object v4, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    .line 536
    iget v5, p0, Lcom/android/common/effects/e;->LC:I

    iget v6, p0, Lcom/android/common/effects/e;->LB:I

    iget v7, p0, Lcom/android/common/effects/e;->LI:I

    .line 537
    iget v8, p0, Lcom/android/common/effects/e;->LG:I

    iget v9, p0, Lcom/android/common/effects/e;->Mm:I

    iget-boolean v10, p0, Lcom/android/common/effects/e;->LZ:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 534
    invoke-direct/range {v0 .. v11}, Lcom/android/common/effects/e;->IQ(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIIZI)V

    goto :goto_17

    .line 541
    :cond_5b
    iget-object v3, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    .line 542
    iget-object v4, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    .line 543
    iget v5, p0, Lcom/android/common/effects/e;->LC:I

    iget v6, p0, Lcom/android/common/effects/e;->LB:I

    iget v7, p0, Lcom/android/common/effects/e;->LI:I

    .line 544
    iget v8, p0, Lcom/android/common/effects/e;->LG:I

    iget v9, p0, Lcom/android/common/effects/e;->Mm:I

    iget-boolean v10, p0, Lcom/android/common/effects/e;->LZ:Z

    iget v11, p0, Lcom/android/common/effects/e;->Lr:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 541
    invoke-direct/range {v0 .. v11}, Lcom/android/common/effects/e;->IQ(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIIZI)V

    .line 520
    :cond_73
    return-void
.end method

.method private IU(Lcom/android/common/a/a;Lcom/android/common/gles/e;IIII)V
    .registers 17

    .prologue
    .line 510
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sa()V

    .line 511
    invoke-virtual {p1}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/effects/e;->LY:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 512
    iget-object v1, p0, Lcom/android/common/effects/e;->Lq:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/common/effects/e;->Lp:Lcom/android/common/effects/a;

    iget-object v5, p0, Lcom/android/common/effects/e;->LY:[F

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/common/effects/e;->IV(Ljava/lang/String;Lcom/android/common/effects/a;Lcom/android/common/a/a;Lcom/android/common/gles/e;[FIIII)V

    .line 509
    return-void
.end method

.method private IV(Ljava/lang/String;Lcom/android/common/effects/a;Lcom/android/common/a/a;Lcom/android/common/gles/e;[FIIII)V
    .registers 19

    .prologue
    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 517
    invoke-direct/range {v0 .. v8}, Lcom/android/common/effects/e;->IP(Lcom/android/common/effects/a;Lcom/android/common/gles/e;Lcom/android/common/a/a;[FIIII)V

    .line 516
    return-void
.end method

.method private IW(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 19

    .prologue
    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 656
    iget-wide v4, p0, Lcom/android/common/effects/e;->Lk:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-lez v4, :cond_1a8

    .line 657
    iget-wide v4, p0, Lcom/android/common/effects/e;->Lk:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x15e

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1a8

    .line 658
    iget-wide v4, p0, Lcom/android/common/effects/e;->Lk:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1a8

    .line 659
    const-string/jumbo v4, "debug, drawShowEffectGridAnimPreview inner"

    invoke-direct {p0, v4}, Lcom/android/common/effects/e;->IO(Ljava/lang/String;)V

    .line 661
    iget-boolean v4, p0, Lcom/android/common/effects/e;->Lj:Z

    if-nez v4, :cond_75

    .line 662
    iget-object v4, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/common/effects/e;->LC:I

    iget v6, p0, Lcom/android/common/effects/e;->LI:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/common/effects/e;->Lo:I

    iget v7, p0, Lcom/android/common/effects/e;->LP:I

    iget v8, p0, Lcom/android/common/effects/e;->Lr:I

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/common/effects/e;->Ma:I

    .line 663
    iget-object v4, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/common/effects/e;->LI:I

    iget v6, p0, Lcom/android/common/effects/e;->LB:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/common/effects/e;->Ls:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/common/effects/e;->Mb:I

    .line 664
    iget v4, p0, Lcom/android/common/effects/e;->Ma:I

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/common/effects/e;->Mi:I

    .line 665
    iget v4, p0, Lcom/android/common/effects/e;->Mb:I

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/common/effects/e;->Mj:I

    .line 666
    iget v4, p0, Lcom/android/common/effects/e;->LC:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/common/effects/e;->LF:I

    .line 667
    iget v4, p0, Lcom/android/common/effects/e;->LB:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/common/effects/e;->Ml:I

    .line 668
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/common/effects/e;->Lj:Z

    .line 673
    :cond_75
    iget-object v4, p0, Lcom/android/common/effects/e;->Lx:Landroid/view/animation/Interpolator;

    iget-wide v6, p0, Lcom/android/common/effects/e;->Lk:J

    sub-long/2addr v2, v6

    long-to-float v2, v2

    const/high16 v3, 0x43af0000    # 350.0f

    div-float/2addr v2, v3

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/android/common/effects/e;->LF:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-int v7, v2

    .line 675
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/android/common/effects/e;->Ml:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-int v8, v2

    .line 676
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v4, p0, Lcom/android/common/effects/e;->Mi:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 677
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/common/effects/e;->Mj:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 678
    iget v4, p0, Lcom/android/common/effects/e;->Ma:I

    if-le v2, v4, :cond_b4

    .line 679
    iget v2, p0, Lcom/android/common/effects/e;->Ma:I

    .line 681
    :cond_b4
    iget v4, p0, Lcom/android/common/effects/e;->Mb:I

    if-le v3, v4, :cond_ba

    .line 682
    iget v3, p0, Lcom/android/common/effects/e;->Mb:I

    .line 684
    :cond_ba
    add-int v4, v2, v7

    iget v5, p0, Lcom/android/common/effects/e;->Ma:I

    iget v6, p0, Lcom/android/common/effects/e;->LC:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_c9

    .line 685
    iget v2, p0, Lcom/android/common/effects/e;->Ma:I

    iget v4, p0, Lcom/android/common/effects/e;->LC:I

    add-int/2addr v2, v4

    sub-int/2addr v2, v7

    .line 687
    :cond_c9
    add-int v4, v3, v8

    iget v5, p0, Lcom/android/common/effects/e;->Mb:I

    iget v6, p0, Lcom/android/common/effects/e;->LB:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_d8

    .line 688
    iget v3, p0, Lcom/android/common/effects/e;->Mb:I

    iget v4, p0, Lcom/android/common/effects/e;->LB:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v8

    .line 690
    :cond_d8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "after target l, t, w, h: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/common/effects/e;->IO(Ljava/lang/String;)V

    .line 693
    iget v4, p0, Lcom/android/common/effects/e;->LI:I

    mul-int/2addr v4, v8

    iget v5, p0, Lcom/android/common/effects/e;->LB:I

    div-int v9, v4, v5

    .line 694
    add-int v4, v7, v9

    iget v5, p0, Lcom/android/common/effects/e;->Lo:I

    iget v6, p0, Lcom/android/common/effects/e;->LP:I

    iget v10, p0, Lcom/android/common/effects/e;->Lr:I

    mul-int/2addr v6, v10

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    sub-int/2addr v2, v4

    .line 695
    add-int v4, v8, v9

    iget v5, p0, Lcom/android/common/effects/e;->Ls:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 696
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/2addr v4, v8

    iget v5, p0, Lcom/android/common/effects/e;->LB:I

    div-int/2addr v4, v5

    .line 697
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v5, v8

    iget v6, p0, Lcom/android/common/effects/e;->LB:I

    div-int v6, v5, v6

    .line 699
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/gles/e;->Sa()V

    .line 703
    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v4, v2

    add-int/2addr v6, v3

    invoke-direct {v5, v2, v3, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 704
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    if-le v7, v2, :cond_1a5

    move-object/from16 v6, p3

    .line 706
    :goto_14e
    iget v13, p0, Lcom/android/common/effects/e;->Lr:I

    .line 705
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 706
    const/4 v12, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    .line 702
    invoke-direct/range {v2 .. v13}, Lcom/android/common/effects/e;->IQ(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIIZI)V

    .line 708
    invoke-virtual {p1}, Lcom/android/common/a/a;->q()Landroid/graphics/Rect;

    move-result-object v12

    .line 710
    iget-object v2, p0, Lcom/android/common/effects/e;->Ll:Lcom/android/common/effects/a;

    iget-object v3, p0, Lcom/android/common/effects/e;->LK:[F

    iget-object v4, p0, Lcom/android/common/effects/e;->LY:[F

    iget-object v5, p0, Lcom/android/common/effects/e;->Mk:Ljava/nio/FloatBuffer;

    .line 712
    move-object/from16 v0, p4

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v6

    .line 713
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 714
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v9

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 711
    const/4 v6, 0x0

    .line 715
    const/4 v10, 0x0

    move-object/from16 v11, p2

    .line 710
    invoke-interface/range {v2 .. v11}, Lcom/android/common/effects/a;->GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V

    .line 716
    iget-object v2, p0, Lcom/android/common/effects/e;->Ll:Lcom/android/common/effects/a;

    iget-object v3, p0, Lcom/android/common/effects/e;->LK:[F

    iget-object v4, p0, Lcom/android/common/effects/e;->LY:[F

    iget-object v5, p0, Lcom/android/common/effects/e;->Mk:Ljava/nio/FloatBuffer;

    .line 719
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 720
    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 717
    const/4 v6, 0x0

    .line 718
    const/4 v7, 0x0

    .line 721
    const/4 v10, 0x0

    move-object/from16 v11, p2

    .line 716
    invoke-interface/range {v2 .. v11}, Lcom/android/common/effects/a;->GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V

    .line 654
    :goto_1a4
    return-void

    :cond_1a5
    move-object/from16 v6, p4

    .line 704
    goto :goto_14e

    .line 723
    :cond_1a8
    const-string/jumbo v2, "debug, drawShowEffectGridAnimPreview outer"

    invoke-direct {p0, v2}, Lcom/android/common/effects/e;->IO(Ljava/lang/String;)V

    .line 724
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/common/effects/e;->Lt:I

    .line 725
    invoke-direct/range {p0 .. p2}, Lcom/android/common/effects/e;->IT(Lcom/android/common/a/a;Lcom/android/common/gles/e;)V

    .line 726
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/common/effects/e;->Mb:I

    .line 727
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/common/effects/e;->Ma:I

    .line 728
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/common/effects/e;->Lk:J

    .line 729
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/common/effects/e;->Lj:Z

    .line 730
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/common/a/a;->G(Z)V

    .line 731
    invoke-direct {p0}, Lcom/android/common/effects/e;->Je()V

    goto :goto_1a4
.end method

.method private IX(Lcom/android/common/a/a;Lcom/android/common/gles/e;)V
    .registers 16

    .prologue
    .line 549
    iget v0, p0, Lcom/android/common/effects/e;->Md:I

    iget v1, p0, Lcom/android/common/effects/e;->LX:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_2c

    .line 550
    iget v0, p0, Lcom/android/common/effects/e;->Md:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/effects/e;->Md:I

    .line 551
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sa()V

    .line 552
    iget-object v3, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    .line 553
    iget-object v4, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/common/effects/e;->LC:I

    iget v6, p0, Lcom/android/common/effects/e;->LB:I

    iget v7, p0, Lcom/android/common/effects/e;->LI:I

    .line 554
    iget v8, p0, Lcom/android/common/effects/e;->LG:I

    iget v9, p0, Lcom/android/common/effects/e;->Mm:I

    iget-boolean v10, p0, Lcom/android/common/effects/e;->LZ:Z

    iget v11, p0, Lcom/android/common/effects/e;->Lr:I

    .line 555
    iget v12, p0, Lcom/android/common/effects/e;->Md:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 552
    invoke-direct/range {v0 .. v12}, Lcom/android/common/effects/e;->IR(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIIZII)V

    .line 548
    :goto_2b
    return-void

    .line 558
    :cond_2c
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/effects/e;->Lt:I

    .line 559
    invoke-direct {p0, p1, p2}, Lcom/android/common/effects/e;->IT(Lcom/android/common/a/a;Lcom/android/common/gles/e;)V

    .line 560
    invoke-direct {p0}, Lcom/android/common/effects/e;->Je()V

    goto :goto_2b
.end method

.method private IY(Lcom/android/common/a/a;Ljava/lang/String;II)Lcom/android/common/effects/a;
    .registers 7

    .prologue
    .line 963
    invoke-virtual {p1}, Lcom/android/common/a/a;->k()Lcom/android/common/effects/b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/effects/e;->Ln:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/common/effects/b;->IB(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/common/effects/c;

    move-result-object v0

    return-object v0
.end method

.method private IZ([Ljava/lang/CharSequence;II)[Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 486
    array-length v4, p1

    .line 488
    mul-int v0, p3, p2

    new-array v5, v0, [Ljava/lang/String;

    move v3, v2

    .line 489
    :goto_7
    if-ge v3, p2, :cond_3a

    move v1, v2

    .line 490
    :goto_a
    if-ge v1, p3, :cond_36

    .line 491
    mul-int v0, v3, p3

    add-int v6, v0, v1

    .line 493
    sget-boolean v0, Lcom/android/common/h;->ahq:Z

    if-eqz v0, :cond_27

    .line 494
    add-int/lit8 v0, p2, -0x1

    sub-int/2addr v0, v3

    mul-int/2addr v0, p3

    add-int/lit8 v7, p3, -0x1

    sub-int/2addr v7, v1

    add-int/2addr v0, v7

    .line 498
    :goto_1c
    add-int/lit8 v7, v4, -0x1

    if-le v0, v7, :cond_2d

    .line 499
    const/4 v0, 0x0

    aput-object v0, v5, v6

    .line 490
    :goto_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 496
    :cond_27
    add-int/lit8 v0, p2, -0x1

    sub-int/2addr v0, v3

    mul-int/2addr v0, p3

    add-int/2addr v0, v1

    goto :goto_1c

    .line 501
    :cond_2d
    aget-object v0, p1, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    goto :goto_23

    .line 489
    :cond_36
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    .line 505
    :cond_3a
    return-object v5
.end method

.method private Ja(Lcom/android/common/a/a;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 801
    iget-object v1, p0, Lcom/android/common/effects/e;->Lu:[Lcom/android/common/effects/a;

    if-nez v1, :cond_19

    .line 802
    iget-object v1, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Lcom/android/common/effects/a;

    iput-object v1, p0, Lcom/android/common/effects/e;->Lu:[Lcom/android/common/effects/a;

    .line 803
    :goto_d
    iget-object v1, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 804
    iget-object v1, p0, Lcom/android/common/effects/e;->Lu:[Lcom/android/common/effects/a;

    aput-object v2, v1, v0

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 808
    :cond_19
    iget-object v0, p0, Lcom/android/common/effects/e;->Lu:[Lcom/android/common/effects/a;

    if-eqz v0, :cond_57

    iget v0, p0, Lcom/android/common/effects/e;->Lw:I

    iget-object v1, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_57

    .line 809
    iget v0, p0, Lcom/android/common/effects/e;->Lt:I

    if-nez v0, :cond_93

    .line 810
    iget v0, p0, Lcom/android/common/effects/e;->Lw:I

    add-int/lit8 v0, v0, 0x2

    .line 811
    iget-object v1, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_34

    .line 812
    iget-object v0, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    array-length v0, v0

    .line 814
    :cond_34
    iget v1, p0, Lcom/android/common/effects/e;->Lw:I

    :goto_36
    if-ge v1, v0, :cond_51

    .line 815
    iget-object v2, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4e

    .line 816
    iget-object v2, p0, Lcom/android/common/effects/e;->Lu:[Lcom/android/common/effects/a;

    iget-object v3, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget v4, p0, Lcom/android/common/effects/e;->Mg:I

    iget v5, p0, Lcom/android/common/effects/e;->LR:I

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/common/effects/e;->IY(Lcom/android/common/a/a;Ljava/lang/String;II)Lcom/android/common/effects/a;

    move-result-object v3

    aput-object v3, v2, v1

    .line 814
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 819
    :cond_51
    iget v0, p0, Lcom/android/common/effects/e;->Lw:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/common/effects/e;->Lw:I

    .line 830
    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/android/common/effects/e;->Lu:[Lcom/android/common/effects/a;

    if-eqz v0, :cond_bf

    .line 831
    iget v0, p0, Lcom/android/common/effects/e;->Lw:I

    iget-object v1, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_bf

    .line 832
    iget v0, p0, Lcom/android/common/effects/e;->Ly:I

    iget-object v1, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_bf

    .line 833
    iget v0, p0, Lcom/android/common/effects/e;->Lt:I

    if-nez v0, :cond_bf

    .line 834
    iget v0, p0, Lcom/android/common/effects/e;->Ly:I

    add-int/lit8 v0, v0, 0x2

    .line 835
    iget-object v1, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_79

    .line 836
    iget-object v0, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    array-length v0, v0

    .line 838
    :cond_79
    iget v1, p0, Lcom/android/common/effects/e;->Ly:I

    :goto_7b
    if-ge v1, v0, :cond_b9

    .line 839
    iget-object v2, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_90

    iget-object v2, p0, Lcom/android/common/effects/e;->Lu:[Lcom/android/common/effects/a;

    aget-object v2, v2, v1

    if-eqz v2, :cond_90

    .line 840
    iget-object v2, p0, Lcom/android/common/effects/e;->Lu:[Lcom/android/common/effects/a;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/android/common/effects/a;->GP()V

    .line 838
    :cond_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 821
    :cond_93
    iget v0, p0, Lcom/android/common/effects/e;->Lw:I

    :goto_95
    iget-object v1, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_b3

    .line 822
    iget-object v1, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_b0

    .line 823
    iget-object v1, p0, Lcom/android/common/effects/e;->Lu:[Lcom/android/common/effects/a;

    iget-object v2, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/android/common/effects/e;->Mg:I

    iget v4, p0, Lcom/android/common/effects/e;->LR:I

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/common/effects/e;->IY(Lcom/android/common/a/a;Ljava/lang/String;II)Lcom/android/common/effects/a;

    move-result-object v2

    aput-object v2, v1, v0

    .line 821
    :cond_b0
    add-int/lit8 v0, v0, 0x1

    goto :goto_95

    .line 826
    :cond_b3
    iget-object v0, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/common/effects/e;->Lw:I

    goto :goto_57

    .line 843
    :cond_b9
    iget v0, p0, Lcom/android/common/effects/e;->Ly:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/common/effects/e;->Ly:I

    .line 800
    :cond_bf
    return-void
.end method

.method private Jb(Lcom/android/common/a/a;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 849
    iget-boolean v0, p0, Lcom/android/common/effects/e;->Lv:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/common/effects/e;->Lw:I

    if-nez v0, :cond_17

    .line 850
    :cond_9
    iget-object v0, p0, Lcom/android/common/effects/e;->Lq:Ljava/lang/String;

    iget v1, p0, Lcom/android/common/effects/e;->Mg:I

    iget v2, p0, Lcom/android/common/effects/e;->LR:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/common/effects/e;->IY(Lcom/android/common/a/a;Ljava/lang/String;II)Lcom/android/common/effects/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/e;->Lp:Lcom/android/common/effects/a;

    .line 851
    iput-boolean v3, p0, Lcom/android/common/effects/e;->Lv:Z

    .line 854
    :cond_17
    iget-boolean v0, p0, Lcom/android/common/effects/e;->LU:Z

    if-eqz v0, :cond_24

    .line 855
    iget-object v0, p0, Lcom/android/common/effects/e;->LT:Lcom/android/common/ui/ae;

    invoke-virtual {p1}, Lcom/android/common/a/a;->q()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/common/effects/e;->Jj(Lcom/android/common/ui/ae;Landroid/graphics/Rect;)V

    .line 858
    :cond_24
    invoke-direct {p0, p1}, Lcom/android/common/effects/e;->Ja(Lcom/android/common/a/a;)V

    .line 860
    iget-object v0, p0, Lcom/android/common/effects/e;->Ll:Lcom/android/common/effects/a;

    if-nez v0, :cond_38

    .line 861
    const-string/jumbo v0, "BlackRect"

    iget v1, p0, Lcom/android/common/effects/e;->Mg:I

    iget v2, p0, Lcom/android/common/effects/e;->LR:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/common/effects/e;->IY(Lcom/android/common/a/a;Ljava/lang/String;II)Lcom/android/common/effects/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/e;->Ll:Lcom/android/common/effects/a;

    .line 864
    :cond_38
    iput-boolean v3, p0, Lcom/android/common/effects/e;->LU:Z

    .line 848
    return-void
.end method

.method private Jc()V
    .registers 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/common/effects/e;->LD:Lcom/android/common/effects/f;

    if-eqz v0, :cond_9

    .line 941
    iget-object v0, p0, Lcom/android/common/effects/e;->LD:Lcom/android/common/effects/f;

    invoke-interface {v0}, Lcom/android/common/effects/f;->tO()V

    .line 939
    :cond_9
    return-void
.end method

.method private Jd()V
    .registers 2

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/common/effects/e;->LD:Lcom/android/common/effects/f;

    if-eqz v0, :cond_9

    .line 935
    iget-object v0, p0, Lcom/android/common/effects/e;->LD:Lcom/android/common/effects/f;

    invoke-interface {v0}, Lcom/android/common/effects/f;->tP()V

    .line 933
    :cond_9
    return-void
.end method

.method private Je()V
    .registers 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/common/effects/e;->LD:Lcom/android/common/effects/f;

    if-eqz v0, :cond_9

    .line 929
    iget-object v0, p0, Lcom/android/common/effects/e;->LD:Lcom/android/common/effects/f;

    invoke-interface {v0}, Lcom/android/common/effects/f;->tQ()V

    .line 927
    :cond_9
    return-void
.end method

.method private Jf()V
    .registers 2

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/common/effects/e;->LD:Lcom/android/common/effects/f;

    if-eqz v0, :cond_9

    .line 923
    iget-object v0, p0, Lcom/android/common/effects/e;->LD:Lcom/android/common/effects/f;

    invoke-interface {v0}, Lcom/android/common/effects/f;->tR()V

    .line 921
    :cond_9
    return-void
.end method

.method private Jg(IIII)V
    .registers 13

    .prologue
    const/4 v7, 0x0

    .line 886
    const-string/jumbo v0, "FunEffectRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "savePhoto width , height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/android/common/effects/e;->Mf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/common/effects/e;->Me:Landroid/graphics/Bitmap;

    if-nez v0, :cond_48

    .line 888
    mul-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/e;->Mf:Ljava/nio/ByteBuffer;

    .line 889
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/effects/e;->Me:Landroid/graphics/Bitmap;

    .line 892
    :cond_48
    iget-object v0, p0, Lcom/android/common/effects/e;->Mf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 893
    iget-object v0, p0, Lcom/android/common/effects/e;->Mf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 894
    iget-object v6, p0, Lcom/android/common/effects/e;->Mf:Ljava/nio/ByteBuffer;

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 895
    iget-object v0, p0, Lcom/android/common/effects/e;->Me:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/common/effects/e;->Mf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 897
    iget-object v0, p0, Lcom/android/common/effects/e;->Me:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, v7, v1}, Lcom/android/common/appService/j;->jz(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 899
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 900
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 904
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 905
    invoke-static {v2, v3}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v0

    .line 907
    const/4 v4, -0x1

    invoke-static {v0, v4}, Lcom/android/common/f;->aou(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 909
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 910
    const-string/jumbo v6, "title"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string/jumbo v6, "_display_name"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ".jpg"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string/jumbo v0, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 913
    const-string/jumbo v0, "mime_type"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string/jumbo v0, "_data"

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string/jumbo v0, "width"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 916
    const-string/jumbo v0, "height"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 918
    iget-object v0, p0, Lcom/android/common/effects/e;->Ln:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/android/common/f;->aon(Landroid/content/ContentResolver;[BLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 885
    return-void
.end method

.method private Jh()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 968
    iget v0, p0, Lcom/android/common/effects/e;->LR:I

    iget v1, p0, Lcom/android/common/effects/e;->LS:I

    if-eq v0, v1, :cond_26

    .line 969
    iget v0, p0, Lcom/android/common/effects/e;->LS:I

    iput v0, p0, Lcom/android/common/effects/e;->LR:I

    .line 970
    iget-object v0, p0, Lcom/android/common/effects/e;->Lu:[Lcom/android/common/effects/a;

    if-eqz v0, :cond_26

    .line 971
    iget-object v3, p0, Lcom/android/common/effects/e;->Lu:[Lcom/android/common/effects/a;

    array-length v4, v3

    move v1, v2

    :goto_13
    if-ge v1, v4, :cond_26

    aget-object v0, v3, v1

    .line 972
    instance-of v5, v0, Lcom/android/common/ui/h;

    if-eqz v5, :cond_22

    .line 973
    check-cast v0, Lcom/android/common/ui/h;

    iget v5, p0, Lcom/android/common/effects/e;->LR:I

    invoke-interface {v0, v5, v2}, Lcom/android/common/ui/h;->vn(IZ)V

    .line 971
    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 967
    :cond_26
    return-void
.end method

.method private Ji()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    .line 467
    :goto_3
    iget v3, p0, Lcom/android/common/effects/e;->LX:I

    if-ge v0, v3, :cond_9

    .line 468
    if-eqz v2, :cond_11

    .line 481
    :cond_9
    iget v0, p0, Lcom/android/common/effects/e;->Lo:I

    iget v1, p0, Lcom/android/common/effects/e;->LP:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/effects/e;->Lr:I

    .line 465
    return-void

    :cond_11
    move v3, v1

    .line 471
    :goto_12
    iget v4, p0, Lcom/android/common/effects/e;->Lm:I

    if-ge v3, v4, :cond_2b

    .line 472
    iget-object v4, p0, Lcom/android/common/effects/e;->Lq:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/common/effects/e;->Lz:[Ljava/lang/String;

    iget v6, p0, Lcom/android/common/effects/e;->Lm:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 473
    iput v0, p0, Lcom/android/common/effects/e;->Ls:I

    .line 474
    iput v3, p0, Lcom/android/common/effects/e;->Lo:I

    .line 475
    const/4 v2, 0x1

    .line 467
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 471
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12
.end method

.method private Jj(Lcom/android/common/ui/ae;Landroid/graphics/Rect;)V
    .registers 11

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/android/common/ui/ae;->Eq()Lcom/android/common/ui/ad;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/android/common/ui/ad;->Em()I

    move-result v2

    .line 177
    invoke-virtual {v0}, Lcom/android/common/ui/ad;->En()I

    move-result v3

    .line 178
    invoke-virtual {v0}, Lcom/android/common/ui/ad;->Eo()I

    move-result v1

    .line 179
    invoke-virtual {v0}, Lcom/android/common/ui/ad;->El()I

    move-result v0

    .line 181
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v5

    if-ge v4, v5, :cond_51

    .line 182
    invoke-virtual {p1}, Lcom/android/common/ui/ae;->Ew()D

    move-result-wide v4

    const-wide v6, 0x3ff5555560000000L    # 1.3333333730697632

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_51

    .line 183
    iget-object v4, p0, Lcom/android/common/effects/e;->Ln:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sub-int/2addr v0, v4

    .line 184
    iget-object v4, p0, Lcom/android/common/effects/e;->Ln:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sub-int/2addr v1, v4

    .line 187
    :cond_51
    iget v4, p0, Lcom/android/common/effects/e;->LM:I

    if-ne v4, v2, :cond_59

    iget v4, p0, Lcom/android/common/effects/e;->LN:I

    if-eq v4, v3, :cond_b3

    .line 195
    :cond_59
    :goto_59
    iput v2, p0, Lcom/android/common/effects/e;->LM:I

    .line 196
    iput v3, p0, Lcom/android/common/effects/e;->LN:I

    .line 197
    iput v1, p0, Lcom/android/common/effects/e;->LO:I

    .line 198
    iput v0, p0, Lcom/android/common/effects/e;->LL:I

    .line 199
    invoke-virtual {p1}, Lcom/android/common/ui/ae;->Eu()I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/e;->LI:I

    .line 200
    invoke-virtual {p1}, Lcom/android/common/ui/ae;->Ev()I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/e;->LC:I

    .line 201
    invoke-virtual {p1}, Lcom/android/common/ui/ae;->Et()I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/e;->LB:I

    .line 202
    invoke-virtual {p1}, Lcom/android/common/ui/ae;->Es()I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/e;->LA:I

    .line 203
    invoke-virtual {p1}, Lcom/android/common/ui/ae;->Er()I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/e;->LQ:I

    .line 204
    invoke-virtual {p1}, Lcom/android/common/ui/ae;->Ep()I

    move-result v0

    iput v0, p0, Lcom/android/common/effects/e;->LP:I

    .line 206
    iget-boolean v0, p0, Lcom/android/common/effects/e;->LU:Z

    if-eqz v0, :cond_b2

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    .line 208
    iget-object v0, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/common/effects/e;->LM:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 209
    iget-object v0, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/android/common/effects/e;->LN:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 210
    iget-object v0, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/common/effects/e;->LL:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 211
    iget-object v0, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/android/common/effects/e;->LO:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 174
    :cond_b2
    return-void

    .line 188
    :cond_b3
    iget v4, p0, Lcom/android/common/effects/e;->LO:I

    if-ne v4, v1, :cond_59

    iget v4, p0, Lcom/android/common/effects/e;->LL:I

    if-ne v4, v0, :cond_59

    .line 189
    iget v4, p0, Lcom/android/common/effects/e;->LI:I

    invoke-virtual {p1}, Lcom/android/common/ui/ae;->Eu()I

    move-result v5

    if-ne v4, v5, :cond_59

    .line 190
    iget v4, p0, Lcom/android/common/effects/e;->LC:I

    invoke-virtual {p1}, Lcom/android/common/ui/ae;->Ev()I

    move-result v5

    if-ne v4, v5, :cond_59

    .line 191
    iget v4, p0, Lcom/android/common/effects/e;->LB:I

    invoke-virtual {p1}, Lcom/android/common/ui/ae;->Et()I

    move-result v5

    if-ne v4, v5, :cond_59

    .line 192
    iget v4, p0, Lcom/android/common/effects/e;->LA:I

    invoke-virtual {p1}, Lcom/android/common/ui/ae;->Es()I

    move-result v5

    if-ne v4, v5, :cond_59

    .line 193
    iget v4, p0, Lcom/android/common/effects/e;->LP:I

    invoke-virtual {p1}, Lcom/android/common/ui/ae;->Ep()I

    move-result v5

    if-ne v4, v5, :cond_59

    .line 194
    iget v4, p0, Lcom/android/common/effects/e;->LQ:I

    invoke-virtual {p1}, Lcom/android/common/ui/ae;->Er()I

    move-result v5

    if-eq v4, v5, :cond_b2

    goto/16 :goto_59
.end method

.method private static synthetic Jk()[I
    .registers 3

    sget-object v0, Lcom/android/common/effects/e;->Mn:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/common/effects/e;->Mn:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->values()[Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->Mp:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    invoke-virtual {v1}, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->Mq:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    invoke-virtual {v1}, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->Mr:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    invoke-virtual {v1}, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->Ms:Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;

    invoke-virtual {v1}, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lcom/android/common/effects/e;->Mn:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method


# virtual methods
.method public IF(Lcom/android/common/ui/ae;)V
    .registers 4

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/common/effects/e;->LJ:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/common/effects/e;->LU:Z

    .line 165
    iput-object p1, p0, Lcom/android/common/effects/e;->LT:Lcom/android/common/ui/ae;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 162
    return-void

    .line 163
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public IG(Lcom/android/common/effects/f;)V
    .registers 2

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/common/effects/e;->LD:Lcom/android/common/effects/f;

    .line 219
    return-void
.end method

.method public IH()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 317
    iget v1, p0, Lcom/android/common/effects/e;->Lt:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    .line 318
    iget v1, p0, Lcom/android/common/effects/e;->Lt:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 317
    :cond_b
    :goto_b
    return v0

    .line 319
    :cond_c
    iget v1, p0, Lcom/android/common/effects/e;->Lt:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_b

    .line 320
    iget v1, p0, Lcom/android/common/effects/e;->Lt:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_b

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public II()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 313
    iget v1, p0, Lcom/android/common/effects/e;->Lt:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public IJ(IIF)V
    .registers 8

    .prologue
    .line 339
    iget-object v1, p0, Lcom/android/common/effects/e;->LJ:Ljava/lang/Object;

    monitor-enter v1

    .line 340
    :try_start_3
    iget v0, p0, Lcom/android/common/effects/e;->LG:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/common/effects/e;->LG:I

    .line 342
    iget v0, p0, Lcom/android/common/effects/e;->Mh:I

    iget v2, p0, Lcom/android/common/effects/e;->Lr:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v2

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/android/common/effects/e;->LA:I

    sub-int/2addr v0, v2

    .line 343
    iget v2, p0, Lcom/android/common/effects/e;->LG:I

    if-ge v2, v0, :cond_1e

    .line 344
    iput v0, p0, Lcom/android/common/effects/e;->LG:I

    .line 347
    :cond_1e
    iget v0, p0, Lcom/android/common/effects/e;->Lr:I

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v2

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/android/common/effects/e;->LA:I

    add-int/2addr v0, v2

    .line 348
    iget v2, p0, Lcom/android/common/effects/e;->LG:I

    if-le v2, v0, :cond_2e

    .line 349
    iput v0, p0, Lcom/android/common/effects/e;->LG:I

    .line 352
    :cond_2e
    iget v0, p0, Lcom/android/common/effects/e;->Lr:I

    iget v2, p0, Lcom/android/common/effects/e;->LG:I

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v3

    div-int/2addr v2, v3

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/common/effects/e;->Lr:I

    .line 353
    iget v0, p0, Lcom/android/common/effects/e;->LG:I

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v2

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/android/common/effects/e;->LG:I

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/effects/e;->LZ:Z
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_48

    monitor-exit v1

    .line 338
    return-void

    .line 339
    :catchall_48
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public IK(IIF)V
    .registers 7

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/common/effects/e;->LJ:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    :try_start_3
    iget v0, p0, Lcom/android/common/effects/e;->LG:I

    add-int/2addr v0, p1

    int-to-float v0, v0

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1f

    .line 368
    iget v0, p0, Lcom/android/common/effects/e;->Lr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/common/effects/e;->Lr:I

    .line 372
    :cond_17
    :goto_17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/effects/e;->LG:I

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/effects/e;->LZ:Z
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_35

    monitor-exit v1

    .line 365
    return-void

    .line 369
    :cond_1f
    :try_start_1f
    iget v0, p0, Lcom/android/common/effects/e;->LG:I

    add-int/2addr v0, p1

    int-to-float v0, v0

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_17

    .line 370
    iget v0, p0, Lcom/android/common/effects/e;->Lr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/effects/e;->Lr:I
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_35

    goto :goto_17

    .line 366
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public IL(Z)V
    .registers 6

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/common/effects/e;->LJ:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    :try_start_3
    const-string/jumbo v0, "FunEffectRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "debug, showSelect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    if-eqz p1, :cond_2f

    .line 260
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/common/effects/e;->Lt:I

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/common/effects/e;->Lk:J
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_39

    :goto_28
    monitor-exit v1

    .line 269
    if-eqz p1, :cond_3c

    .line 270
    invoke-direct {p0}, Lcom/android/common/effects/e;->Jf()V

    .line 256
    :goto_2e
    return-void

    .line 263
    :cond_2f
    const/4 v0, 0x2

    :try_start_30
    iput v0, p0, Lcom/android/common/effects/e;->Lt:I

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/common/effects/e;->Lk:J
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_39

    goto :goto_28

    .line 257
    :catchall_39
    move-exception v0

    monitor-exit v1

    throw v0

    .line 272
    :cond_3c
    invoke-direct {p0}, Lcom/android/common/effects/e;->Jd()V

    goto :goto_2e
.end method

.method public IM(Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;)V
    .registers 6

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/common/effects/e;->LJ:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_3
    invoke-static {}, Lcom/android/common/effects/e;->Jk()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/common/effects/FunEffectRenderer$EnterEffectAnim;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_3a

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/effects/e;->Lt:I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_19

    :goto_13
    monitor-exit v1

    .line 281
    return-void

    .line 285
    :pswitch_15
    const/4 v0, 0x0

    :try_start_16
    iput v0, p0, Lcom/android/common/effects/e;->Lt:I
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_19

    goto :goto_13

    .line 282
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    .line 288
    :pswitch_1c
    const/4 v0, 0x5

    :try_start_1d
    iput v0, p0, Lcom/android/common/effects/e;->Lt:I

    .line 289
    invoke-direct {p0}, Lcom/android/common/effects/e;->Jf()V

    goto :goto_13

    .line 292
    :pswitch_23
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/common/effects/e;->Lt:I

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/common/effects/e;->Lk:J

    .line 294
    invoke-direct {p0}, Lcom/android/common/effects/e;->Jf()V

    goto :goto_13

    .line 297
    :pswitch_30
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/common/effects/e;->Lt:I

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/effects/e;->Md:I

    .line 299
    invoke-direct {p0}, Lcom/android/common/effects/e;->Jf()V
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_19

    goto :goto_13

    .line 283
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_15
        :pswitch_30
        :pswitch_23
    .end packed-switch
.end method

.method public IN(Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/common/effects/e;->LJ:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "debug, changeEffectID, effectName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; anim = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/effects/e;->IO(Ljava/lang/String;)V

    .line 232
    iput-object p1, p0, Lcom/android/common/effects/e;->Lq:Ljava/lang/String;

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/effects/e;->Lv:Z

    .line 235
    if-eqz p2, :cond_3d

    .line 236
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/effects/e;->Lt:I

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/common/effects/e;->Lk:J

    .line 238
    invoke-direct {p0}, Lcom/android/common/effects/e;->Jd()V

    .line 242
    :goto_38
    invoke-direct {p0}, Lcom/android/common/effects/e;->Ji()V
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_41

    monitor-exit v1

    .line 229
    return-void

    .line 240
    :cond_3d
    const/4 v0, 0x0

    :try_start_3e
    iput v0, p0, Lcom/android/common/effects/e;->Lt:I
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_41

    goto :goto_38

    .line 230
    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public S()I
    .registers 2

    .prologue
    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method public T(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 12

    .prologue
    const/4 v3, 0x5

    const/4 v8, 0x1

    .line 384
    iget-object v7, p0, Lcom/android/common/effects/e;->LJ:Ljava/lang/Object;

    monitor-enter v7

    .line 386
    :try_start_5
    iget-boolean v0, p0, Lcom/android/common/effects/e;->LW:Z

    if-eqz v0, :cond_1b

    .line 387
    const-string/jumbo v0, "FunEffectRenderer"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/common/a/a;->G(Z)V

    .line 389
    invoke-virtual {p1, p0}, Lcom/android/common/a/a;->z(Lcom/android/common/a/b;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_89

    monitor-exit v7

    .line 390
    return v8

    .line 394
    :cond_1b
    :try_start_1b
    iget v1, p0, Lcom/android/common/effects/e;->Mg:I

    .line 395
    invoke-virtual {p1}, Lcom/android/common/a/a;->s()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 396
    const/16 v0, 0xde1

    .line 395
    :goto_25
    iput v0, p0, Lcom/android/common/effects/e;->Mg:I

    .line 398
    iget v0, p0, Lcom/android/common/effects/e;->Mg:I

    if-eq v0, v1, :cond_31

    .line 399
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/effects/e;->Lw:I

    .line 400
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/effects/e;->Ly:I

    .line 403
    :cond_31
    invoke-direct {p0}, Lcom/android/common/effects/e;->Jh()V

    .line 405
    invoke-direct {p0, p1}, Lcom/android/common/effects/e;->Jb(Lcom/android/common/a/a;)V

    .line 407
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v1

    .line 416
    iget v0, p0, Lcom/android/common/effects/e;->Lt:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7a

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/a/a;->G(Z)V

    .line 419
    iget-object v0, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    .line 418
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/common/effects/e;->IS(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 444
    :cond_49
    :goto_49
    iget-boolean v0, p0, Lcom/android/common/effects/e;->Mc:Z

    if-eqz v0, :cond_6f

    .line 445
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 446
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 447
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 448
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 445
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/common/effects/e;->Jg(IIII)V

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/effects/e;->Mc:Z
    :try_end_6f
    .catchall {:try_start_1b .. :try_end_6f} :catchall_89

    :cond_6f
    monitor-exit v7

    .line 452
    return v8

    .line 397
    :cond_71
    :try_start_71
    invoke-virtual {p1}, Lcom/android/common/a/a;->m()Lcom/android/common/gles/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/gles/a;->RG()I

    move-result v0

    goto :goto_25

    .line 420
    :cond_7a
    iget v0, p0, Lcom/android/common/effects/e;->Lt:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8c

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/a/a;->G(Z)V

    .line 423
    iget-object v0, p0, Lcom/android/common/effects/e;->LE:Landroid/graphics/Rect;

    .line 422
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/common/effects/e;->IW(Lcom/android/common/a/a;Lcom/android/common/gles/e;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_88
    .catchall {:try_start_71 .. :try_end_88} :catchall_89

    goto :goto_49

    .line 384
    :catchall_89
    move-exception v0

    monitor-exit v7

    throw v0

    .line 424
    :cond_8c
    :try_start_8c
    iget v0, p0, Lcom/android/common/effects/e;->Lt:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_95

    .line 425
    invoke-direct {p0, p1, p2}, Lcom/android/common/effects/e;->IX(Lcom/android/common/a/a;Lcom/android/common/gles/e;)V

    goto :goto_49

    .line 426
    :cond_95
    iget v0, p0, Lcom/android/common/effects/e;->Lt:I

    if-eq v0, v8, :cond_9d

    iget v0, p0, Lcom/android/common/effects/e;->Lt:I

    if-ne v0, v3, :cond_ab

    .line 427
    :cond_9d
    invoke-direct {p0, p1, p2}, Lcom/android/common/effects/e;->IT(Lcom/android/common/a/a;Lcom/android/common/gles/e;)V

    .line 428
    iget v0, p0, Lcom/android/common/effects/e;->Lt:I

    if-ne v0, v3, :cond_49

    .line 429
    invoke-direct {p0}, Lcom/android/common/effects/e;->Je()V

    .line 430
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/effects/e;->Lt:I

    goto :goto_49

    .line 432
    :cond_ab
    iget v0, p0, Lcom/android/common/effects/e;->Lt:I

    if-nez v0, :cond_49

    .line 433
    invoke-virtual {p1}, Lcom/android/common/a/a;->s()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 434
    invoke-virtual {p1}, Lcom/android/common/a/a;->p()Lcom/android/common/gles/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/gles/j;->RG()I

    move-result v0

    .line 435
    :goto_bd
    iget-object v2, p0, Lcom/android/common/effects/e;->Lp:Lcom/android/common/effects/a;

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/android/common/effects/e;->Lp:Lcom/android/common/effects/a;

    invoke-interface {v2}, Lcom/android/common/effects/a;->GM()I

    move-result v2

    if-ne v2, v0, :cond_49

    .line 437
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 438
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 439
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 440
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 436
    invoke-direct/range {v0 .. v6}, Lcom/android/common/effects/e;->IU(Lcom/android/common/a/a;Lcom/android/common/gles/e;IIII)V

    goto/16 :goto_49

    .line 434
    :cond_dd
    invoke-virtual {p1}, Lcom/android/common/a/a;->m()Lcom/android/common/gles/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/gles/a;->RG()I
    :try_end_e4
    .catchall {:try_start_8c .. :try_end_e4} :catchall_89

    move-result v0

    goto :goto_bd
.end method

.method public U(Lcom/android/common/a/a;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 953
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/common/a/a;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 954
    return-void

    .line 956
    :cond_12
    const-string/jumbo v0, "FunEffectRenderer"

    const-string/jumbo v1, "onResease"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    invoke-virtual {p1, v4}, Lcom/android/common/a/a;->G(Z)V

    .line 958
    invoke-virtual {p1, p0}, Lcom/android/common/a/a;->z(Lcom/android/common/a/b;)V

    .line 959
    iput-boolean v4, p0, Lcom/android/common/effects/e;->LW:Z

    .line 952
    return-void
.end method

.method public V(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 4

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public dx(I)V
    .registers 2

    .prologue
    .line 379
    iput p1, p0, Lcom/android/common/effects/e;->LS:I

    .line 378
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/common/effects/e;->LJ:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/common/effects/e;->LW:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 326
    return-void

    .line 327
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

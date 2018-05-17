.class public Lcom/android/common/effects/a/g;
.super Lcom/android/common/effects/c;
.source "SourceFile"


# instance fields
.field private Ga:Landroid/content/Context;

.field Gb:[F

.field private Gc:I

.field private Gd:Lcom/android/common/effects/a/c;

.field private Ge:Lcom/android/common/gles/j;

.field private Gf:Lcom/android/common/effects/a/t;

.field private Gg:Lcom/android/common/effects/a/j;

.field private Gh:Lcom/android/common/gles/j;

.field private Gi:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/common/effects/c;-><init>()V

    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/common/effects/a/g;->Gb:[F

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/common/effects/a/g;->Gc:I

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/common/effects/a/g;->Gi:I

    .line 34
    iput-object p1, p0, Lcom/android/common/effects/a/g;->Ga:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/android/common/effects/a/g;->Gb:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 36
    new-instance v0, Lcom/android/common/effects/a/c;

    iget-object v1, p0, Lcom/android/common/effects/a/g;->Ga:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/common/effects/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/effects/a/g;->Gd:Lcom/android/common/effects/a/c;

    .line 37
    new-instance v0, Lcom/android/common/effects/a/j;

    iget-object v1, p0, Lcom/android/common/effects/a/g;->Ga:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/common/effects/a/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/effects/a/g;->Gg:Lcom/android/common/effects/a/j;

    .line 38
    new-instance v0, Lcom/android/common/effects/a/t;

    iget-object v1, p0, Lcom/android/common/effects/a/g;->Ga:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/common/effects/a/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/effects/a/g;->Gf:Lcom/android/common/effects/a/t;

    .line 33
    return-void
.end method

.method private Hf(II)V
    .registers 8

    .prologue
    const/16 v4, 0x780

    const/16 v3, 0x438

    .line 104
    iget-object v0, p0, Lcom/android/common/effects/a/g;->Gh:Lcom/android/common/gles/j;

    if-nez v0, :cond_17

    .line 105
    new-instance v0, Lcom/android/common/gles/j;

    iget v1, p0, Lcom/android/common/effects/a/g;->Gi:I

    div-int v1, v3, v1

    iget v2, p0, Lcom/android/common/effects/a/g;->Gi:I

    div-int v2, v4, v2

    invoke-direct {v0, v1, v2}, Lcom/android/common/gles/j;-><init>(II)V

    iput-object v0, p0, Lcom/android/common/effects/a/g;->Gh:Lcom/android/common/gles/j;

    .line 107
    :cond_17
    iget-object v0, p0, Lcom/android/common/effects/a/g;->Ge:Lcom/android/common/gles/j;

    if-nez v0, :cond_2a

    .line 108
    new-instance v0, Lcom/android/common/gles/j;

    iget v1, p0, Lcom/android/common/effects/a/g;->Gi:I

    div-int v1, v3, v1

    iget v2, p0, Lcom/android/common/effects/a/g;->Gi:I

    div-int v2, v4, v2

    invoke-direct {v0, v1, v2}, Lcom/android/common/gles/j;-><init>(II)V

    iput-object v0, p0, Lcom/android/common/effects/a/g;->Ge:Lcom/android/common/gles/j;

    .line 101
    :cond_2a
    return-void
.end method

.method private Hg()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/common/effects/a/g;->Ge:Lcom/android/common/gles/j;

    if-eqz v0, :cond_14

    .line 114
    iget-object v0, p0, Lcom/android/common/effects/a/g;->Ge:Lcom/android/common/gles/j;

    invoke-virtual {v0}, Lcom/android/common/gles/j;->RO()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 115
    iget-object v0, p0, Lcom/android/common/effects/a/g;->Ge:Lcom/android/common/gles/j;

    invoke-virtual {v0}, Lcom/android/common/gles/j;->SM()V

    .line 116
    :cond_12
    iput-object v1, p0, Lcom/android/common/effects/a/g;->Ge:Lcom/android/common/gles/j;

    .line 118
    :cond_14
    iget-object v0, p0, Lcom/android/common/effects/a/g;->Gh:Lcom/android/common/gles/j;

    if-eqz v0, :cond_27

    .line 119
    iget-object v0, p0, Lcom/android/common/effects/a/g;->Gh:Lcom/android/common/gles/j;

    invoke-virtual {v0}, Lcom/android/common/gles/j;->RO()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 120
    iget-object v0, p0, Lcom/android/common/effects/a/g;->Gh:Lcom/android/common/gles/j;

    invoke-virtual {v0}, Lcom/android/common/gles/j;->SM()V

    .line 121
    :cond_25
    iput-object v1, p0, Lcom/android/common/effects/a/g;->Gh:Lcom/android/common/gles/j;

    .line 112
    :cond_27
    return-void
.end method


# virtual methods
.method public GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V
    .registers 23

    .prologue
    .line 44
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/gles/c;->RG()I

    move-result v2

    const v3, 0x8d65

    if-eq v3, v2, :cond_a

    .line 45
    return-void

    .line 47
    :cond_a
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-direct {p0, v0, v1}, Lcom/android/common/effects/a/g;->Hf(II)V

    .line 49
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/gles/e;->Sb()V

    .line 50
    iget-object v2, p0, Lcom/android/common/effects/a/g;->Gh:Lcom/android/common/gles/j;

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Lcom/android/common/gles/e;->Sc(Lcom/android/common/gles/j;)V

    .line 52
    iget-object v2, p0, Lcom/android/common/effects/a/g;->Gh:Lcom/android/common/gles/j;

    invoke-virtual {v2}, Lcom/android/common/gles/j;->RM()I

    move-result v7

    iget-object v2, p0, Lcom/android/common/effects/a/g;->Gh:Lcom/android/common/gles/j;

    invoke-virtual {v2}, Lcom/android/common/gles/j;->RN()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p9

    move-object/from16 v3, p8

    move-object v4, p2

    .line 51
    invoke-virtual/range {v2 .. v8}, Lcom/android/common/gles/e;->Sd(Lcom/android/common/gles/c;[FIIII)V

    .line 53
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/gles/e;->Se()V

    .line 54
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/gles/e;->Sf()V

    .line 56
    const/4 v2, 0x0

    move v12, v2

    :goto_39
    iget v2, p0, Lcom/android/common/effects/a/g;->Gc:I

    if-ge v12, v2, :cond_99

    .line 57
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/gles/e;->Sb()V

    .line 58
    iget-object v2, p0, Lcom/android/common/effects/a/g;->Ge:Lcom/android/common/gles/j;

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Lcom/android/common/gles/e;->Sc(Lcom/android/common/gles/j;)V

    .line 59
    iget-object v2, p0, Lcom/android/common/effects/a/g;->Gd:Lcom/android/common/effects/a/c;

    iget-object v4, p0, Lcom/android/common/effects/a/g;->Gb:[F

    .line 60
    iget-object v3, p0, Lcom/android/common/effects/a/g;->Ge:Lcom/android/common/gles/j;

    invoke-virtual {v3}, Lcom/android/common/gles/j;->RM()I

    move-result v8

    iget-object v3, p0, Lcom/android/common/effects/a/g;->Ge:Lcom/android/common/gles/j;

    invoke-virtual {v3}, Lcom/android/common/gles/j;->RN()I

    move-result v9

    .line 61
    iget-object v10, p0, Lcom/android/common/effects/a/g;->Gh:Lcom/android/common/gles/j;

    .line 60
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v11, p9

    .line 59
    invoke-virtual/range {v2 .. v11}, Lcom/android/common/effects/a/c;->GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V

    .line 62
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/gles/e;->Se()V

    .line 63
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/gles/e;->Sf()V

    .line 65
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/gles/e;->Sb()V

    .line 66
    iget-object v2, p0, Lcom/android/common/effects/a/g;->Gh:Lcom/android/common/gles/j;

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Lcom/android/common/gles/e;->Sc(Lcom/android/common/gles/j;)V

    .line 67
    iget-object v2, p0, Lcom/android/common/effects/a/g;->Gg:Lcom/android/common/effects/a/j;

    iget-object v4, p0, Lcom/android/common/effects/a/g;->Gb:[F

    .line 68
    iget-object v3, p0, Lcom/android/common/effects/a/g;->Gh:Lcom/android/common/gles/j;

    invoke-virtual {v3}, Lcom/android/common/gles/j;->RM()I

    move-result v8

    iget-object v3, p0, Lcom/android/common/effects/a/g;->Gh:Lcom/android/common/gles/j;

    invoke-virtual {v3}, Lcom/android/common/gles/j;->RN()I

    move-result v9

    .line 69
    iget-object v10, p0, Lcom/android/common/effects/a/g;->Ge:Lcom/android/common/gles/j;

    .line 68
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v11, p9

    .line 67
    invoke-virtual/range {v2 .. v11}, Lcom/android/common/effects/a/j;->GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V

    .line 70
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/gles/e;->Se()V

    .line 71
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/gles/e;->Sf()V

    .line 56
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_39

    .line 74
    :cond_99
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/gles/e;->Sb()V

    .line 75
    iget-object v2, p0, Lcom/android/common/effects/a/g;->Gf:Lcom/android/common/effects/a/t;

    move-object/from16 v0, p8

    invoke-virtual {v2, v0, p2}, Lcom/android/common/effects/a/t;->HS(Lcom/android/common/gles/c;[F)V

    .line 76
    iget-object v2, p0, Lcom/android/common/effects/a/g;->Gf:Lcom/android/common/effects/a/t;

    iget-object v4, p0, Lcom/android/common/effects/a/g;->Gb:[F

    .line 77
    iget-object v10, p0, Lcom/android/common/effects/a/g;->Gh:Lcom/android/common/gles/j;

    move-object v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v11, p9

    .line 76
    invoke-virtual/range {v2 .. v11}, Lcom/android/common/effects/a/t;->GK([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/gles/c;Lcom/android/common/gles/e;)V

    .line 78
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/gles/e;->Sf()V

    .line 43
    return-void
.end method

.method public GM()I
    .registers 2

    .prologue
    .line 98
    const v0, 0x8d65

    return v0
.end method

.method public GP()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/common/effects/a/g;->Gd:Lcom/android/common/effects/a/c;

    invoke-virtual {v0}, Lcom/android/common/effects/a/c;->GP()V

    .line 84
    iget-object v0, p0, Lcom/android/common/effects/a/g;->Gg:Lcom/android/common/effects/a/j;

    invoke-virtual {v0}, Lcom/android/common/effects/a/j;->GP()V

    .line 85
    iget-object v0, p0, Lcom/android/common/effects/a/g;->Gf:Lcom/android/common/effects/a/t;

    invoke-virtual {v0}, Lcom/android/common/effects/a/t;->GP()V

    .line 82
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/common/effects/a/g;->Gd:Lcom/android/common/effects/a/c;

    invoke-virtual {v0}, Lcom/android/common/effects/a/c;->release()V

    .line 91
    iget-object v0, p0, Lcom/android/common/effects/a/g;->Gg:Lcom/android/common/effects/a/j;

    invoke-virtual {v0}, Lcom/android/common/effects/a/j;->release()V

    .line 92
    iget-object v0, p0, Lcom/android/common/effects/a/g;->Gf:Lcom/android/common/effects/a/t;

    invoke-virtual {v0}, Lcom/android/common/effects/a/t;->release()V

    .line 93
    invoke-direct {p0}, Lcom/android/common/effects/a/g;->Hg()V

    .line 89
    return-void
.end method

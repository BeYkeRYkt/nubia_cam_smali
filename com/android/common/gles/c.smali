.class public abstract Lcom/android/common/gles/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected Sf:I

.field protected Sg:Lcom/android/common/gles/e;

.field Sh:[F

.field private Si:Z

.field protected Sj:I

.field Sk:[F

.field protected Sl:I

.field protected Sm:I

.field protected Sn:I

.field protected mState:I


# direct methods
.method protected constructor <init>(I)V
    .registers 4

    .prologue
    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/common/gles/c;-><init>(Lcom/android/common/gles/e;II)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Lcom/android/common/gles/e;II)V
    .registers 6

    .prologue
    const/4 v1, 0x4

    const/4 v0, -0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/android/common/gles/c;->Sf:I

    .line 22
    iput v0, p0, Lcom/android/common/gles/c;->Sn:I

    .line 23
    iput v0, p0, Lcom/android/common/gles/c;->Sj:I

    .line 28
    new-array v0, v1, [F

    fill-array-data v0, :array_28

    iput-object v0, p0, Lcom/android/common/gles/c;->Sk:[F

    .line 29
    new-array v0, v1, [F

    fill-array-data v0, :array_34

    iput-object v0, p0, Lcom/android/common/gles/c;->Sh:[F

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/gles/c;->Sg:Lcom/android/common/gles/e;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/gles/c;->Si:Z

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/common/gles/c;->RR(Lcom/android/common/gles/e;)V

    .line 37
    iput p2, p0, Lcom/android/common/gles/c;->Sf:I

    .line 38
    iput p3, p0, Lcom/android/common/gles/c;->mState:I

    .line 35
    return-void

    .line 28
    nop

    :array_28
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 29
    :array_34
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public abstract RG()I
.end method

.method public abstract RH()Z
.end method

.method public RM()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/android/common/gles/c;->Sn:I

    return v0
.end method

.method public RN()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/android/common/gles/c;->Sj:I

    return v0
.end method

.method public RO()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 106
    iget v1, p0, Lcom/android/common/gles/c;->mState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public RP(II)V
    .registers 8

    .prologue
    const/16 v1, 0x1000

    .line 50
    iput p1, p0, Lcom/android/common/gles/c;->Sn:I

    .line 51
    iput p2, p0, Lcom/android/common/gles/c;->Sj:I

    .line 54
    iget v0, p0, Lcom/android/common/gles/c;->Sn:I

    iput v0, p0, Lcom/android/common/gles/c;->Sm:I

    .line 55
    iget v0, p0, Lcom/android/common/gles/c;->Sj:I

    iput v0, p0, Lcom/android/common/gles/c;->Sl:I

    .line 56
    iget v0, p0, Lcom/android/common/gles/c;->Sm:I

    if-gt v0, v1, :cond_16

    iget v0, p0, Lcom/android/common/gles/c;->Sl:I

    if-le v0, v1, :cond_3d

    .line 57
    :cond_16
    const-string/jumbo v0, "BasicTexture"

    const-string/jumbo v1, "texture is too large: %d x %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 58
    iget v3, p0, Lcom/android/common/gles/c;->Sm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/common/gles/c;->Sl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 57
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 58
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 57
    invoke-static {v0, v1, v2}, Lcom/a/a;->bvr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :cond_3d
    return-void
.end method

.method public RQ()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/android/common/gles/c;->Sf:I

    return v0
.end method

.method protected RR(Lcom/android/common/gles/e;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/common/gles/c;->Sg:Lcom/android/common/gles/e;

    .line 45
    return-void
.end method

.method public RS()[F
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/common/gles/c;->Si:Z

    if-eqz v0, :cond_7

    .line 117
    iget-object v0, p0, Lcom/android/common/gles/c;->Sh:[F

    return-object v0

    .line 119
    :cond_7
    iget-object v0, p0, Lcom/android/common/gles/c;->Sk:[F

    return-object v0
.end method

.method public RT()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/android/common/gles/c;->Sl:I

    return v0
.end method

.method public RU()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/android/common/gles/c;->Sm:I

    return v0
.end method

.method public RV(Z)V
    .registers 2

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/common/gles/c;->Si:Z

    .line 122
    return-void
.end method

.method public RW(II)V
    .registers 11

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 65
    int-to-float v0, p1

    int-to-float v1, p2

    div-float v1, v0, v1

    .line 66
    iget v0, p0, Lcom/android/common/gles/c;->Sm:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 67
    iget v2, p0, Lcom/android/common/gles/c;->Sl:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_17

    iget v0, p0, Lcom/android/common/gles/c;->Sl:I

    int-to-float v0, v0

    .line 68
    :cond_17
    mul-float/2addr v1, v0

    .line 70
    iget-object v2, p0, Lcom/android/common/gles/c;->Sk:[F

    iget v3, p0, Lcom/android/common/gles/c;->Sm:I

    int-to-float v3, v3

    sub-float v1, v3, v1

    iget v3, p0, Lcom/android/common/gles/c;->Sm:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    sub-float/2addr v1, v5

    aput v1, v2, v6

    .line 71
    iget-object v1, p0, Lcom/android/common/gles/c;->Sk:[F

    iget-object v2, p0, Lcom/android/common/gles/c;->Sk:[F

    aget v2, v2, v6

    sub-float v2, v4, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 72
    iget-object v1, p0, Lcom/android/common/gles/c;->Sk:[F

    iget v2, p0, Lcom/android/common/gles/c;->Sl:I

    int-to-float v2, v2

    sub-float v0, v2, v0

    iget v2, p0, Lcom/android/common/gles/c;->Sl:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-float/2addr v0, v5

    aput v0, v1, v7

    .line 73
    iget-object v0, p0, Lcom/android/common/gles/c;->Sk:[F

    iget-object v1, p0, Lcom/android/common/gles/c;->Sk:[F

    aget v1, v1, v7

    sub-float v1, v4, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 63
    return-void
.end method

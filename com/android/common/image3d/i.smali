.class public Lcom/android/common/image3d/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cg:I

.field private ch:F

.field private ci:F

.field private cj:F

.field private ck:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/image3d/i;->cg:I

    .line 7
    iput v1, p0, Lcom/android/common/image3d/i;->ch:F

    .line 8
    iput v1, p0, Lcom/android/common/image3d/i;->cj:F

    .line 9
    iput v1, p0, Lcom/android/common/image3d/i;->ci:F

    .line 10
    iput v1, p0, Lcom/android/common/image3d/i;->ck:F

    .line 3
    return-void
.end method

.method private bL()V
    .registers 6

    .prologue
    .line 69
    iget v0, p0, Lcom/android/common/image3d/i;->cj:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 70
    iget v0, p0, Lcom/android/common/image3d/i;->ck:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 72
    iget v2, p0, Lcom/android/common/image3d/i;->ci:F

    .line 73
    const/4 v0, 0x2

    .line 74
    iget v4, p0, Lcom/android/common/image3d/i;->ch:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_18

    .line 75
    const/4 v0, 0x3

    .line 76
    iget v2, p0, Lcom/android/common/image3d/i;->ch:F

    .line 78
    :cond_18
    cmpg-float v4, v2, v1

    if-gez v4, :cond_25

    .line 79
    const/4 v0, 0x1

    .line 82
    :goto_1d
    cmpg-float v1, v1, v3

    if-gez v1, :cond_22

    .line 83
    const/4 v0, 0x4

    .line 86
    :cond_22
    iput v0, p0, Lcom/android/common/image3d/i;->cg:I

    .line 68
    return-void

    :cond_25
    move v1, v2

    goto :goto_1d
.end method


# virtual methods
.method public bM()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/android/common/image3d/i;->cg:I

    return v0
.end method

.method public bN()F
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 28
    iget v1, p0, Lcom/android/common/image3d/i;->cg:I

    packed-switch v1, :pswitch_data_18

    .line 45
    :goto_6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 30
    :pswitch_b
    iget v0, p0, Lcom/android/common/image3d/i;->ck:F

    goto :goto_6

    .line 33
    :pswitch_e
    iget v0, p0, Lcom/android/common/image3d/i;->ci:F

    goto :goto_6

    .line 36
    :pswitch_11
    iget v0, p0, Lcom/android/common/image3d/i;->ch:F

    goto :goto_6

    .line 39
    :pswitch_14
    iget v0, p0, Lcom/android/common/image3d/i;->cj:F

    goto :goto_6

    .line 28
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public bO()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/image3d/i;->cg:I

    .line 91
    iput v1, p0, Lcom/android/common/image3d/i;->ch:F

    .line 92
    iput v1, p0, Lcom/android/common/image3d/i;->cj:F

    .line 93
    iput v1, p0, Lcom/android/common/image3d/i;->ci:F

    .line 94
    iput v1, p0, Lcom/android/common/image3d/i;->ck:F

    .line 89
    return-void
.end method

.method public bP(FF)V
    .registers 4

    .prologue
    .line 53
    iget v0, p0, Lcom/android/common/image3d/i;->ch:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 54
    iput p1, p0, Lcom/android/common/image3d/i;->ch:F

    .line 56
    :cond_8
    iget v0, p0, Lcom/android/common/image3d/i;->cj:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_10

    .line 57
    iput p1, p0, Lcom/android/common/image3d/i;->cj:F

    .line 59
    :cond_10
    iget v0, p0, Lcom/android/common/image3d/i;->ci:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_18

    .line 60
    iput p2, p0, Lcom/android/common/image3d/i;->ci:F

    .line 62
    :cond_18
    iget v0, p0, Lcom/android/common/image3d/i;->ck:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_20

    .line 63
    iput p2, p0, Lcom/android/common/image3d/i;->ck:F

    .line 65
    :cond_20
    invoke-direct {p0}, Lcom/android/common/image3d/i;->bL()V

    .line 52
    return-void
.end method

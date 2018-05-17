.class public Lcom/android/common/ui/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private vO:J

.field private vP:J

.field private vQ:Z

.field private vR:I

.field private vS:Z

.field private vT:I

.field private vU:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/android/common/ui/I;->vR:I

    .line 9
    iput v0, p0, Lcom/android/common/ui/I;->vT:I

    .line 10
    iput v0, p0, Lcom/android/common/ui/I;->vU:I

    .line 12
    iput-boolean v0, p0, Lcom/android/common/ui/I;->vQ:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/I;->vS:Z

    .line 15
    iput-wide v2, p0, Lcom/android/common/ui/I;->vP:J

    .line 16
    iput-wide v2, p0, Lcom/android/common/ui/I;->vO:J

    .line 5
    return-void
.end method


# virtual methods
.method public Ag()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/android/common/ui/I;->vR:I

    return v0
.end method

.method public Ah(IZ)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 19
    iput-boolean p2, p0, Lcom/android/common/ui/I;->vS:Z

    .line 21
    if-ltz p1, :cond_c

    rem-int/lit16 v0, p1, 0x168

    .line 22
    :goto_7
    iget v2, p0, Lcom/android/common/ui/I;->vU:I

    if-ne v0, v2, :cond_11

    return-void

    .line 21
    :cond_c
    rem-int/lit16 v0, p1, 0x168

    add-int/lit16 v0, v0, 0x168

    goto :goto_7

    .line 24
    :cond_11
    iput v0, p0, Lcom/android/common/ui/I;->vU:I

    .line 25
    iget-boolean v0, p0, Lcom/android/common/ui/I;->vS:Z

    if-eqz v0, :cond_4a

    .line 26
    iget v0, p0, Lcom/android/common/ui/I;->vR:I

    iput v0, p0, Lcom/android/common/ui/I;->vT:I

    .line 27
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/common/ui/I;->vP:J

    .line 29
    iget v0, p0, Lcom/android/common/ui/I;->vU:I

    iget v2, p0, Lcom/android/common/ui/I;->vR:I

    sub-int/2addr v0, v2

    .line 30
    if-ltz v0, :cond_43

    .line 34
    :goto_28
    const/16 v2, 0xb4

    if-le v0, v2, :cond_46

    add-int/lit16 v0, v0, -0x168

    move v2, v0

    .line 36
    :goto_2f
    if-ltz v2, :cond_48

    const/4 v0, 0x1

    :goto_32
    iput-boolean v0, p0, Lcom/android/common/ui/I;->vQ:Z

    .line 37
    iget-wide v0, p0, Lcom/android/common/ui/I;->vP:J

    .line 38
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    div-int/lit16 v2, v2, 0x10e

    int-to-long v2, v2

    .line 37
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/common/ui/I;->vO:J

    .line 18
    :goto_42
    return-void

    .line 30
    :cond_43
    add-int/lit16 v0, v0, 0x168

    goto :goto_28

    :cond_46
    move v2, v0

    .line 34
    goto :goto_2f

    :cond_48
    move v0, v1

    .line 36
    goto :goto_32

    .line 40
    :cond_4a
    iget v0, p0, Lcom/android/common/ui/I;->vU:I

    iput v0, p0, Lcom/android/common/ui/I;->vR:I

    goto :goto_42
.end method

.method public Ai()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 49
    iget v0, p0, Lcom/android/common/ui/I;->vR:I

    iget v1, p0, Lcom/android/common/ui/I;->vU:I

    if-eq v0, v1, :cond_33

    .line 50
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 51
    iget-wide v2, p0, Lcom/android/common/ui/I;->vO:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2f

    .line 52
    iget-wide v2, p0, Lcom/android/common/ui/I;->vP:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 53
    iget v1, p0, Lcom/android/common/ui/I;->vT:I

    .line 54
    iget-boolean v2, p0, Lcom/android/common/ui/I;->vQ:Z

    if-eqz v2, :cond_28

    .line 53
    :goto_1b
    mul-int/lit16 v0, v0, 0x10e

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v1

    .line 55
    if-ltz v0, :cond_2a

    rem-int/lit16 v0, v0, 0x168

    .line 56
    :goto_24
    iput v0, p0, Lcom/android/common/ui/I;->vR:I

    .line 57
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_28
    neg-int v0, v0

    goto :goto_1b

    .line 55
    :cond_2a
    rem-int/lit16 v0, v0, 0x168

    add-int/lit16 v0, v0, 0x168

    goto :goto_24

    .line 59
    :cond_2f
    iget v0, p0, Lcom/android/common/ui/I;->vU:I

    iput v0, p0, Lcom/android/common/ui/I;->vR:I

    .line 62
    :cond_33
    return v4
.end method

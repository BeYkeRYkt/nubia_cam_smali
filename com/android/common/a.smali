.class public Lcom/android/common/a;
.super Lcom/android/common/z;
.source "SourceFile"


# instance fields
.field private agD:I

.field private agE:F


# direct methods
.method public constructor <init>(IF)V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/common/z;-><init>()V

    .line 25
    iput p2, p0, Lcom/android/common/a;->agE:F

    .line 26
    invoke-direct {p0, p2, p1}, Lcom/android/common/a;->aoa(FI)V

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/common/a;->arY(IF)V

    .line 23
    return-void
.end method

.method private anZ(FFF)Z
    .registers 5

    .prologue
    .line 38
    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_c

    .line 39
    const/4 v0, 0x1

    return v0

    .line 41
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private aoa(FI)V
    .registers 5

    .prologue
    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    div-float v0, p1, v0

    add-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/common/a;->agD:I

    .line 32
    iget v0, p0, Lcom/android/common/a;->agD:I

    if-nez v0, :cond_13

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/a;->agD:I

    .line 30
    :cond_13
    return-void
.end method


# virtual methods
.method public anY(F)F
    .registers 5

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/common/a;->aiP:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 49
    iget-object v0, p0, Lcom/android/common/a;->aiP:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/android/common/a;->aiP:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 51
    const/high16 v2, 0x43340000    # 180.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/android/common/a;->anZ(FFF)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/common/a;->arZ(F)V

    .line 54
    :cond_2b
    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/android/common/a;->aiP:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 56
    add-float/2addr v0, v1

    move v1, v0

    goto :goto_33

    .line 58
    :cond_46
    iget-object v0, p0, Lcom/android/common/a;->aiP:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v2, p0, Lcom/android/common/a;->agD:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/android/common/a;->aiP:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/common/a;->agD:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 62
    return v0
.end method

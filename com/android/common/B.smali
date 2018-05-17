.class public Lcom/android/common/B;
.super Lcom/android/common/z;
.source "SourceFile"


# instance fields
.field private aiS:F

.field private aiT:F

.field private aiU:I

.field private aiV:I

.field private aiW:F

.field private aiX:F


# direct methods
.method public constructor <init>(IFFI)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/android/common/z;-><init>()V

    .line 15
    iput v1, p0, Lcom/android/common/B;->aiS:F

    .line 16
    iput v1, p0, Lcom/android/common/B;->aiW:F

    .line 31
    iput p1, p0, Lcom/android/common/B;->aiU:I

    .line 32
    iput p2, p0, Lcom/android/common/B;->aiX:F

    .line 33
    iput p3, p0, Lcom/android/common/B;->aiT:F

    .line 34
    iput p4, p0, Lcom/android/common/B;->aiV:I

    .line 35
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/common/B;->arY(IF)V

    .line 29
    return-void
.end method

.method private ase(FFF)Z
    .registers 6

    .prologue
    .line 41
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, p3

    float-to-int v0, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, p3

    float-to-int v1, v1

    if-eq v0, v1, :cond_10

    .line 42
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_10
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public anY(F)F
    .registers 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 50
    iget v0, p0, Lcom/android/common/B;->aiS:F

    cmpl-float v0, v3, v0

    if-nez v0, :cond_36

    .line 51
    iget-object v0, p0, Lcom/android/common/B;->aiP:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/android/common/B;->aiP:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 52
    iget-object v0, p0, Lcom/android/common/B;->aiP:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 53
    iget v2, p0, Lcom/android/common/B;->aiV:I

    int-to-float v2, v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/common/B;->ase(FFF)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 54
    iput v4, p0, Lcom/android/common/B;->aiS:F

    .line 55
    iput v0, p0, Lcom/android/common/B;->aiW:F

    .line 58
    :cond_36
    iget v0, p0, Lcom/android/common/B;->aiS:F

    cmpl-float v0, v3, v0

    if-nez v0, :cond_49

    .line 59
    iget-object v0, p0, Lcom/android/common/B;->aiP:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 60
    :cond_49
    iget v0, p0, Lcom/android/common/B;->aiS:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_60

    iget v0, p0, Lcom/android/common/B;->aiS:F

    iget v1, p0, Lcom/android/common/B;->aiU:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_60

    .line 61
    iget v0, p0, Lcom/android/common/B;->aiS:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/common/B;->aiS:F

    .line 62
    iget v0, p0, Lcom/android/common/B;->aiW:F

    return v0

    .line 64
    :cond_60
    iput v3, p0, Lcom/android/common/B;->aiS:F

    .line 66
    iget-object v0, p0, Lcom/android/common/B;->aiP:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

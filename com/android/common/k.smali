.class public Lcom/android/common/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ahL:[I

.field private ahM:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/common/k;->ahL:[I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/k;->ahM:I

    .line 19
    return-void
.end method


# virtual methods
.method public aqv(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 26
    iget-object v0, p0, Lcom/android/common/k;->ahL:[I

    array-length v0, v0

    iget v1, p0, Lcom/android/common/k;->ahM:I

    if-ne v0, v1, :cond_18

    .line 27
    iget v0, p0, Lcom/android/common/k;->ahM:I

    iget v1, p0, Lcom/android/common/k;->ahM:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 28
    iget-object v1, p0, Lcom/android/common/k;->ahL:[I

    iget v2, p0, Lcom/android/common/k;->ahM:I

    invoke-static {v1, v3, v0, v3, v2}, Lcom/android/f/a;->btH([II[III)V

    .line 29
    iput-object v0, p0, Lcom/android/common/k;->ahL:[I

    .line 31
    :cond_18
    iget-object v0, p0, Lcom/android/common/k;->ahL:[I

    iget v1, p0, Lcom/android/common/k;->ahM:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/common/k;->ahM:I

    aput p1, v0, v1

    .line 25
    return-void
.end method

.method public aqw()I
    .registers 3

    .prologue
    .line 35
    iget v0, p0, Lcom/android/common/k;->ahM:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/common/k;->ahM:I

    .line 36
    iget-object v0, p0, Lcom/android/common/k;->ahL:[I

    iget v1, p0, Lcom/android/common/k;->ahM:I

    aget v0, v0, v1

    return v0
.end method

.method public aqx()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/android/common/k;->ahM:I

    return v0
.end method

.method public aqy([I)[I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 45
    if-eqz p1, :cond_8

    array-length v0, p1

    iget v1, p0, Lcom/android/common/k;->ahM:I

    if-ge v0, v1, :cond_c

    .line 46
    :cond_8
    iget v0, p0, Lcom/android/common/k;->ahM:I

    new-array p1, v0, [I

    .line 48
    :cond_c
    iget-object v0, p0, Lcom/android/common/k;->ahL:[I

    iget v1, p0, Lcom/android/common/k;->ahM:I

    invoke-static {v0, v2, p1, v2, v1}, Lcom/android/f/a;->btH([II[III)V

    .line 49
    return-object p1
.end method

.class Lcom/android/pretty/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final aEW:[F

.field final aEX:[F

.field final aEY:[F

.field final synthetic aEZ:Lcom/android/pretty/u;


# direct methods
.method private constructor <init>(Lcom/android/pretty/u;)V
    .registers 3

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/pretty/v;->aEZ:Lcom/android/pretty/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    sget-object v0, Lcom/android/common/setting/j;->TR:[F

    iput-object v0, p0, Lcom/android/pretty/v;->aEW:[F

    .line 591
    sget-object v0, Lcom/android/common/setting/j;->TT:[F

    iput-object v0, p0, Lcom/android/pretty/v;->aEY:[F

    .line 595
    sget-object v0, Lcom/android/common/setting/j;->TS:[F

    iput-object v0, p0, Lcom/android/pretty/v;->aEX:[F

    .line 583
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/pretty/u;Lcom/android/pretty/v;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/pretty/v;-><init>(Lcom/android/pretty/u;)V

    return-void
.end method

.method private aUp(F)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 634
    :goto_2
    iget-object v2, p0, Lcom/android/pretty/v;->aEW:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1b

    .line 635
    iget-object v2, p0, Lcom/android/pretty/v;->aEW:[F

    aget v2, v2, v0

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_18

    .line 636
    return v0

    .line 634
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 639
    :cond_1b
    return v1
.end method

.method static synthetic aUx(Lcom/android/pretty/v;F)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/pretty/v;->aUp(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public aUq(I)F
    .registers 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/pretty/v;->aEW:[F

    aget v0, v0, p1

    return v0
.end method

.method public aUr()I
    .registers 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/pretty/v;->aEW:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public aUs()F
    .registers 3

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/pretty/v;->aEW:[F

    iget-object v1, p0, Lcom/android/pretty/v;->aEW:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public aUt()F
    .registers 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/pretty/v;->aEW:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public aUu(I)F
    .registers 3

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/pretty/v;->aEX:[F

    aget v0, v0, p1

    return v0
.end method

.method public aUv(I)F
    .registers 3

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/pretty/v;->aEY:[F

    aget v0, v0, p1

    return v0
.end method

.method public aUw()I
    .registers 3

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/pretty/v;->aUr()I

    move-result v0

    const/16 v1, 0x64

    div-int v0, v1, v0

    invoke-virtual {p0}, Lcom/android/pretty/v;->aUr()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

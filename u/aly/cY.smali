.class Lu/aly/cY;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 330
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/aI;)V
    .registers 2

    .prologue
    .line 330
    invoke-direct {p0}, Lu/aly/cY;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 330
    check-cast p2, Lu/aly/bo;

    invoke-virtual {p0, p1, p2}, Lu/aly/cY;->bZq(Lu/aly/dl;Lu/aly/bo;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 330
    check-cast p2, Lu/aly/bo;

    invoke-virtual {p0, p1, p2}, Lu/aly/cY;->bZr(Lu/aly/dl;Lu/aly/bo;)V

    return-void
.end method

.method public bZq(Lu/aly/dl;Lu/aly/bo;)V
    .registers 4

    .prologue
    .line 334
    check-cast p1, Lu/aly/aC;

    .line 335
    iget v0, p2, Lu/aly/bo;->a:I

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 336
    iget v0, p2, Lu/aly/bo;->b:I

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 337
    return-void
.end method

.method public bZr(Lu/aly/dl;Lu/aly/bo;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 341
    check-cast p1, Lu/aly/aC;

    .line 342
    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/bo;->a:I

    .line 343
    invoke-virtual {p2, v1}, Lu/aly/bo;->a(Z)V

    .line 344
    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/bo;->b:I

    .line 345
    invoke-virtual {p2, v1}, Lu/aly/bo;->bZE(Z)V

    .line 346
    return-void
.end method

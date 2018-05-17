.class Lu/aly/i;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 391
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bt;)V
    .registers 2

    .prologue
    .line 391
    invoke-direct {p0}, Lu/aly/i;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 391
    check-cast p2, Lu/aly/ba;

    invoke-virtual {p0, p1, p2}, Lu/aly/i;->bRu(Lu/aly/dl;Lu/aly/ba;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 391
    check-cast p2, Lu/aly/ba;

    invoke-virtual {p0, p1, p2}, Lu/aly/i;->bRv(Lu/aly/dl;Lu/aly/ba;)V

    return-void
.end method

.method public bRu(Lu/aly/dl;Lu/aly/ba;)V
    .registers 5

    .prologue
    .line 395
    check-cast p1, Lu/aly/aC;

    .line 396
    iget-object v0, p2, Lu/aly/ba;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 397
    iget-wide v0, p2, Lu/aly/ba;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->a(J)V

    .line 398
    iget v0, p2, Lu/aly/ba;->c:I

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 399
    return-void
.end method

.method public bRv(Lu/aly/dl;Lu/aly/ba;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 403
    check-cast p1, Lu/aly/aC;

    .line 404
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ba;->a:Ljava/lang/String;

    .line 405
    invoke-virtual {p2, v2}, Lu/aly/ba;->a(Z)V

    .line 406
    invoke-virtual {p1}, Lu/aly/aC;->bRm()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ba;->b:J

    .line 407
    invoke-virtual {p2, v2}, Lu/aly/ba;->bTG(Z)V

    .line 408
    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/ba;->c:I

    .line 409
    invoke-virtual {p2, v2}, Lu/aly/ba;->bTH(Z)V

    .line 410
    return-void
.end method

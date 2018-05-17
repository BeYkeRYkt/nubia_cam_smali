.class Lu/aly/dy;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 412
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bG;)V
    .registers 2

    .prologue
    .line 412
    invoke-direct {p0}, Lu/aly/dy;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 412
    check-cast p2, Lu/aly/av;

    invoke-virtual {p0, p1, p2}, Lu/aly/dy;->cbL(Lu/aly/dl;Lu/aly/av;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 412
    check-cast p2, Lu/aly/av;

    invoke-virtual {p0, p1, p2}, Lu/aly/dy;->cbM(Lu/aly/dl;Lu/aly/av;)V

    return-void
.end method

.method public cbL(Lu/aly/dl;Lu/aly/av;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 416
    check-cast p1, Lu/aly/aC;

    .line 417
    iget-wide v0, p2, Lu/aly/av;->a:J

    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->a(J)V

    .line 418
    iget-object v0, p2, Lu/aly/av;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 419
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 420
    invoke-virtual {p2}, Lu/aly/av;->l()Z

    move-result v1

    if-nez v1, :cond_23

    :goto_18
    const/4 v1, 0x1

    .line 423
    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->bUD(Ljava/util/BitSet;I)V

    .line 424
    invoke-virtual {p2}, Lu/aly/av;->l()Z

    move-result v0

    if-nez v0, :cond_27

    .line 427
    :goto_22
    return-void

    .line 421
    :cond_23
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_18

    .line 425
    :cond_27
    iget-object v0, p2, Lu/aly/av;->c:Lu/aly/aw;

    invoke-virtual {v0}, Lu/aly/aw;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    goto :goto_22
.end method

.method public cbM(Lu/aly/dl;Lu/aly/av;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 431
    check-cast p1, Lu/aly/aC;

    .line 432
    invoke-virtual {p1}, Lu/aly/aC;->bRm()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/av;->a:J

    .line 433
    invoke-virtual {p2, v2}, Lu/aly/av;->cbS(Z)V

    .line 434
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/av;->b:Ljava/lang/String;

    .line 435
    invoke-virtual {p2, v2}, Lu/aly/av;->cbT(Z)V

    .line 436
    invoke-virtual {p1, v2}, Lu/aly/aC;->bUE(I)Ljava/util/BitSet;

    move-result-object v0

    .line 437
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 441
    :goto_20
    return-void

    .line 438
    :cond_21
    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    invoke-static {v0}, Lu/aly/aw;->a(I)Lu/aly/aw;

    move-result-object v0

    iput-object v0, p2, Lu/aly/av;->c:Lu/aly/aw;

    .line 439
    invoke-virtual {p2, v2}, Lu/aly/av;->cbV(Z)V

    goto :goto_20
.end method

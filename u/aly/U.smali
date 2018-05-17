.class Lu/aly/U;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 399
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ak;)V
    .registers 2

    .prologue
    .line 399
    invoke-direct {p0}, Lu/aly/U;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 399
    check-cast p2, Lu/aly/bl;

    invoke-virtual {p0, p1, p2}, Lu/aly/U;->bTQ(Lu/aly/dl;Lu/aly/bl;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 399
    check-cast p2, Lu/aly/bl;

    invoke-virtual {p0, p1, p2}, Lu/aly/U;->bTR(Lu/aly/dl;Lu/aly/bl;)V

    return-void
.end method

.method public bTQ(Lu/aly/dl;Lu/aly/bl;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 403
    check-cast p1, Lu/aly/aC;

    .line 404
    iget v0, p2, Lu/aly/bl;->a:I

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 405
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 406
    invoke-virtual {p2}, Lu/aly/bl;->i()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 409
    :goto_13
    invoke-virtual {p2}, Lu/aly/bl;->l()Z

    move-result v1

    if-nez v1, :cond_2e

    :goto_19
    const/4 v1, 0x2

    .line 412
    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->bUD(Ljava/util/BitSet;I)V

    .line 413
    invoke-virtual {p2}, Lu/aly/bl;->i()Z

    move-result v0

    if-nez v0, :cond_33

    .line 416
    :goto_23
    invoke-virtual {p2}, Lu/aly/bl;->l()Z

    move-result v0

    if-nez v0, :cond_39

    .line 419
    :goto_29
    return-void

    .line 407
    :cond_2a
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_13

    :cond_2e
    const/4 v1, 0x1

    .line 410
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_19

    .line 414
    :cond_33
    iget-object v0, p2, Lu/aly/bl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    goto :goto_23

    .line 417
    :cond_39
    iget-object v0, p2, Lu/aly/bl;->c:Lu/aly/bc;

    invoke-virtual {v0, p1}, Lu/aly/bc;->bQL(Lu/aly/dl;)V

    goto :goto_29
.end method

.method public bTR(Lu/aly/dl;Lu/aly/bl;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 423
    check-cast p1, Lu/aly/aC;

    .line 424
    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/bl;->a:I

    .line 425
    invoke-virtual {p2, v2}, Lu/aly/bl;->a(Z)V

    const/4 v0, 0x2

    .line 426
    invoke-virtual {p1, v0}, Lu/aly/aC;->bUE(I)Ljava/util/BitSet;

    move-result-object v0

    .line 427
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 431
    :goto_18
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 436
    :goto_1e
    return-void

    .line 428
    :cond_1f
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bl;->b:Ljava/lang/String;

    .line 429
    invoke-virtual {p2, v2}, Lu/aly/bl;->bVw(Z)V

    goto :goto_18

    .line 432
    :cond_29
    new-instance v0, Lu/aly/bc;

    invoke-direct {v0}, Lu/aly/bc;-><init>()V

    iput-object v0, p2, Lu/aly/bl;->c:Lu/aly/bc;

    .line 433
    iget-object v0, p2, Lu/aly/bl;->c:Lu/aly/bc;

    invoke-virtual {v0, p1}, Lu/aly/bc;->bQK(Lu/aly/dl;)V

    .line 434
    invoke-virtual {p2, v2}, Lu/aly/bl;->bVx(Z)V

    goto :goto_1e
.end method

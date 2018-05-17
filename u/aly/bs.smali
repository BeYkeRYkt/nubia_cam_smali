.class Lu/aly/bs;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 457
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/r;)V
    .registers 2

    .prologue
    .line 457
    invoke-direct {p0}, Lu/aly/bs;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 457
    check-cast p2, Lu/aly/az;

    invoke-virtual {p0, p1, p2}, Lu/aly/bs;->bVU(Lu/aly/dl;Lu/aly/az;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 457
    check-cast p2, Lu/aly/az;

    invoke-virtual {p0, p1, p2}, Lu/aly/bs;->bVV(Lu/aly/dl;Lu/aly/az;)V

    return-void
.end method

.method public bVU(Lu/aly/dl;Lu/aly/az;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 461
    check-cast p1, Lu/aly/aC;

    .line 462
    iget-object v0, p2, Lu/aly/az;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 463
    iget-object v0, p2, Lu/aly/az;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 464
    iget-wide v0, p2, Lu/aly/az;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->a(J)V

    .line 465
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 466
    invoke-virtual {p2}, Lu/aly/az;->i()Z

    move-result v1

    if-nez v1, :cond_28

    :goto_1d
    const/4 v1, 0x1

    .line 469
    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->bUD(Ljava/util/BitSet;I)V

    .line 470
    invoke-virtual {p2}, Lu/aly/az;->i()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 473
    :goto_27
    return-void

    .line 467
    :cond_28
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_1d

    .line 471
    :cond_2c
    iget-object v0, p2, Lu/aly/az;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public bVV(Lu/aly/dl;Lu/aly/az;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 477
    check-cast p1, Lu/aly/aC;

    .line 478
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/az;->a:Ljava/lang/String;

    .line 479
    invoke-virtual {p2, v2}, Lu/aly/az;->a(Z)V

    .line 480
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/az;->c:Ljava/lang/String;

    .line 481
    invoke-virtual {p2, v2}, Lu/aly/az;->bUk(Z)V

    .line 482
    invoke-virtual {p1}, Lu/aly/aC;->bRm()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/az;->d:J

    .line 483
    invoke-virtual {p2, v2}, Lu/aly/az;->bUm(Z)V

    .line 484
    invoke-virtual {p1, v2}, Lu/aly/aC;->bUE(I)Ljava/util/BitSet;

    move-result-object v0

    .line 485
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 489
    :goto_29
    return-void

    .line 486
    :cond_2a
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/az;->b:Ljava/lang/String;

    .line 487
    invoke-virtual {p2, v2}, Lu/aly/az;->bUi(Z)V

    goto :goto_29
.end method

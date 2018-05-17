.class Lu/aly/G;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 549
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/aM;)V
    .registers 2

    .prologue
    .line 549
    invoke-direct {p0}, Lu/aly/G;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 549
    check-cast p2, Lu/aly/ax;

    invoke-virtual {p0, p1, p2}, Lu/aly/G;->bSB(Lu/aly/dl;Lu/aly/ax;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 549
    check-cast p2, Lu/aly/ax;

    invoke-virtual {p0, p1, p2}, Lu/aly/G;->bSC(Lu/aly/dl;Lu/aly/ax;)V

    return-void
.end method

.method public bSB(Lu/aly/dl;Lu/aly/ax;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 553
    check-cast p1, Lu/aly/aC;

    .line 554
    iget-object v0, p2, Lu/aly/ax;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 556
    iget-object v0, p2, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 557
    iget-object v0, p2, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_48

    .line 563
    iget-wide v0, p2, Lu/aly/ax;->e:J

    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->a(J)V

    .line 564
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 565
    invoke-virtual {p2}, Lu/aly/ax;->m()Z

    move-result v1

    if-nez v1, :cond_61

    .line 568
    :goto_31
    invoke-virtual {p2}, Lu/aly/ax;->bYs()Z

    move-result v1

    if-nez v1, :cond_65

    :goto_37
    const/4 v1, 0x2

    .line 571
    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->bUD(Ljava/util/BitSet;I)V

    .line 572
    invoke-virtual {p2}, Lu/aly/ax;->m()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 575
    :goto_41
    invoke-virtual {p2}, Lu/aly/ax;->bYs()Z

    move-result v0

    if-nez v0, :cond_70

    .line 578
    :goto_47
    return-void

    .line 557
    :cond_48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 559
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 560
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bj;

    invoke-virtual {v0, p1}, Lu/aly/bj;->bQL(Lu/aly/dl;)V

    goto :goto_1b

    .line 566
    :cond_61
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_31

    :cond_65
    const/4 v1, 0x1

    .line 569
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_37

    .line 573
    :cond_6a
    iget-wide v0, p2, Lu/aly/ax;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->a(J)V

    goto :goto_41

    .line 576
    :cond_70
    iget v0, p2, Lu/aly/ax;->d:I

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    goto :goto_47
.end method

.method public bSC(Lu/aly/dl;Lu/aly/ax;)V
    .registers 11

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 582
    check-cast p1, Lu/aly/aC;

    .line 583
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ax;->a:Ljava/lang/String;

    .line 584
    invoke-virtual {p2, v6}, Lu/aly/ax;->a(Z)V

    .line 586
    new-instance v2, Lu/aly/dh;

    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4, v0}, Lu/aly/dh;-><init>(BBI)V

    .line 587
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/dh;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/ax;->b:Ljava/util/Map;

    move v0, v1

    .line 588
    :goto_27
    iget v3, v2, Lu/aly/dh;->c:I

    if-lt v0, v3, :cond_48

    .line 598
    invoke-virtual {p2, v6}, Lu/aly/ax;->bYq(Z)V

    .line 599
    invoke-virtual {p1}, Lu/aly/aC;->bRm()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/ax;->e:J

    .line 600
    invoke-virtual {p2, v6}, Lu/aly/ax;->bYw(Z)V

    .line 601
    invoke-virtual {p1, v7}, Lu/aly/aC;->bUE(I)Ljava/util/BitSet;

    move-result-object v0

    .line 602
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 606
    :goto_41
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_66

    .line 610
    :goto_47
    return-void

    .line 592
    :cond_48
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v3

    .line 593
    new-instance v4, Lu/aly/bj;

    invoke-direct {v4}, Lu/aly/bj;-><init>()V

    .line 594
    invoke-virtual {v4, p1}, Lu/aly/bj;->bQK(Lu/aly/dl;)V

    .line 595
    iget-object v5, p2, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 603
    :cond_5c
    invoke-virtual {p1}, Lu/aly/aC;->bRm()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/ax;->c:J

    .line 604
    invoke-virtual {p2, v6}, Lu/aly/ax;->bYr(Z)V

    goto :goto_41

    .line 607
    :cond_66
    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/ax;->d:I

    .line 608
    invoke-virtual {p2, v6}, Lu/aly/ax;->bYt(Z)V

    goto :goto_47
.end method

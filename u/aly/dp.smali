.class Lu/aly/dp;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 480
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cc;)V
    .registers 2

    .prologue
    .line 480
    invoke-direct {p0}, Lu/aly/dp;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 480
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/dp;->caX(Lu/aly/dl;Lu/aly/bb;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 480
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/dp;->caY(Lu/aly/dl;Lu/aly/bb;)V

    return-void
.end method

.method public caX(Lu/aly/dl;Lu/aly/bb;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 484
    check-cast p1, Lu/aly/aC;

    .line 486
    iget-object v0, p2, Lu/aly/bb;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 487
    iget-object v0, p2, Lu/aly/bb;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 493
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 494
    invoke-virtual {p2}, Lu/aly/bb;->l()Z

    move-result v1

    if-nez v1, :cond_57

    .line 497
    :goto_27
    invoke-virtual {p2}, Lu/aly/bb;->bQO()Z

    move-result v1

    if-nez v1, :cond_5b

    :goto_2d
    const/4 v1, 0x2

    .line 500
    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->bUD(Ljava/util/BitSet;I)V

    .line 501
    invoke-virtual {p2}, Lu/aly/bb;->l()Z

    move-result v0

    if-nez v0, :cond_60

    .line 510
    :cond_37
    invoke-virtual {p2}, Lu/aly/bb;->bQO()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 513
    :goto_3d
    return-void

    .line 487
    :cond_3e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 489
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 490
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ba;

    invoke-virtual {v0, p1}, Lu/aly/ba;->bQL(Lu/aly/dl;)V

    goto :goto_16

    .line 495
    :cond_57
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_27

    :cond_5b
    const/4 v1, 0x1

    .line 498
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_2d

    .line 503
    :cond_60
    iget-object v0, p2, Lu/aly/bb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 504
    iget-object v0, p2, Lu/aly/bb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/az;

    .line 506
    invoke-virtual {v0, p1}, Lu/aly/az;->bQL(Lu/aly/dl;)V

    goto :goto_6f

    .line 511
    :cond_7f
    iget-object v0, p2, Lu/aly/bb;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    goto :goto_3d
.end method

.method public caY(Lu/aly/dl;Lu/aly/bb;)V
    .registers 12

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 517
    check-cast p1, Lu/aly/aC;

    .line 519
    new-instance v2, Lu/aly/dh;

    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    const/16 v3, 0xb

    invoke-direct {v2, v3, v8, v0}, Lu/aly/dh;-><init>(BBI)V

    .line 520
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/dh;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bb;->a:Ljava/util/Map;

    move v0, v1

    .line 521
    :goto_1e
    iget v3, v2, Lu/aly/dh;->c:I

    if-lt v0, v3, :cond_36

    .line 531
    invoke-virtual {p2, v6}, Lu/aly/bb;->a(Z)V

    .line 532
    invoke-virtual {p1, v7}, Lu/aly/aC;->bUE(I)Ljava/util/BitSet;

    move-result-object v0

    .line 533
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 547
    :goto_2f
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_74

    .line 551
    :goto_35
    return-void

    .line 525
    :cond_36
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v3

    .line 526
    new-instance v4, Lu/aly/ba;

    invoke-direct {v4}, Lu/aly/ba;-><init>()V

    .line 527
    invoke-virtual {v4, p1}, Lu/aly/ba;->bQK(Lu/aly/dl;)V

    .line 528
    iget-object v5, p2, Lu/aly/bb;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 535
    :cond_4a
    new-instance v2, Lu/aly/bP;

    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v3

    invoke-direct {v2, v8, v3}, Lu/aly/bP;-><init>(BI)V

    .line 536
    new-instance v3, Ljava/util/ArrayList;

    iget v4, v2, Lu/aly/bP;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lu/aly/bb;->b:Ljava/util/List;

    .line 537
    :goto_5c
    iget v3, v2, Lu/aly/bP;->b:I

    if-lt v1, v3, :cond_64

    .line 545
    invoke-virtual {p2, v6}, Lu/aly/bb;->bQN(Z)V

    goto :goto_2f

    .line 540
    :cond_64
    new-instance v3, Lu/aly/az;

    invoke-direct {v3}, Lu/aly/az;-><init>()V

    .line 541
    invoke-virtual {v3, p1}, Lu/aly/az;->bQK(Lu/aly/dl;)V

    .line 542
    iget-object v4, p2, Lu/aly/bb;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 548
    :cond_74
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bb;->c:Ljava/lang/String;

    .line 549
    invoke-virtual {p2, v6}, Lu/aly/bb;->bQP(Z)V

    goto :goto_35
.end method

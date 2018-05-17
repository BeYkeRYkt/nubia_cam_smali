.class Lu/aly/cX;
.super Lu/aly/b;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 423
    invoke-direct {p0}, Lu/aly/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/aM;)V
    .registers 2

    .prologue
    .line 423
    invoke-direct {p0}, Lu/aly/cX;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 423
    check-cast p2, Lu/aly/ax;

    invoke-virtual {p0, p1, p2}, Lu/aly/cX;->bZp(Lu/aly/dl;Lu/aly/ax;)V

    return-void
.end method

.method public synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 423
    check-cast p2, Lu/aly/ax;

    invoke-virtual {p0, p1, p2}, Lu/aly/cX;->bZo(Lu/aly/dl;Lu/aly/ax;)V

    return-void
.end method

.method public bZo(Lu/aly/dl;Lu/aly/ax;)V
    .registers 11

    .prologue
    const/16 v7, 0xa

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 427
    invoke-virtual {p1}, Lu/aly/dl;->j()Lu/aly/aO;

    .line 430
    :goto_7
    invoke-virtual {p1}, Lu/aly/dl;->l()Lu/aly/cB;

    move-result-object v0

    .line 431
    iget-byte v2, v0, Lu/aly/cB;->b:B

    if-eqz v2, :cond_ae

    .line 434
    iget-short v2, v0, Lu/aly/cB;->c:S

    packed-switch v2, :pswitch_data_da

    .line 489
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    .line 491
    :goto_19
    invoke-virtual {p1}, Lu/aly/dl;->m()V

    goto :goto_7

    .line 436
    :pswitch_1d
    iget-byte v2, v0, Lu/aly/cB;->b:B

    const/16 v3, 0xb

    if-eq v2, v3, :cond_29

    .line 440
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_19

    .line 437
    :cond_29
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ax;->a:Ljava/lang/String;

    .line 438
    invoke-virtual {p2, v6}, Lu/aly/ax;->a(Z)V

    goto :goto_19

    .line 444
    :pswitch_33
    iget-byte v2, v0, Lu/aly/cB;->b:B

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3f

    .line 461
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_19

    .line 446
    :cond_3f
    invoke-virtual {p1}, Lu/aly/dl;->n()Lu/aly/dh;

    move-result-object v2

    .line 447
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/dh;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/ax;->b:Ljava/util/Map;

    move v0, v1

    .line 448
    :goto_4f
    iget v3, v2, Lu/aly/dh;->c:I

    if-lt v0, v3, :cond_5a

    .line 457
    invoke-virtual {p1}, Lu/aly/dl;->bRd()V

    .line 459
    invoke-virtual {p2, v6}, Lu/aly/ax;->bYq(Z)V

    goto :goto_19

    .line 452
    :cond_5a
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v3

    .line 453
    new-instance v4, Lu/aly/bj;

    invoke-direct {v4}, Lu/aly/bj;-><init>()V

    .line 454
    invoke-virtual {v4, p1}, Lu/aly/bj;->bQK(Lu/aly/dl;)V

    .line 455
    iget-object v5, p2, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 465
    :pswitch_6e
    iget-byte v2, v0, Lu/aly/cB;->b:B

    if-eq v2, v7, :cond_78

    .line 469
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_19

    .line 466
    :cond_78
    invoke-virtual {p1}, Lu/aly/dl;->bRm()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/ax;->c:J

    .line 467
    invoke-virtual {p2, v6}, Lu/aly/ax;->bYr(Z)V

    goto :goto_19

    .line 473
    :pswitch_82
    iget-byte v2, v0, Lu/aly/cB;->b:B

    const/16 v3, 0x8

    if-eq v2, v3, :cond_8e

    .line 477
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_19

    .line 474
    :cond_8e
    invoke-virtual {p1}, Lu/aly/dl;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/ax;->d:I

    .line 475
    invoke-virtual {p2, v6}, Lu/aly/ax;->bYt(Z)V

    goto :goto_19

    .line 481
    :pswitch_98
    iget-byte v2, v0, Lu/aly/cB;->b:B

    if-eq v2, v7, :cond_a3

    .line 485
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto/16 :goto_19

    .line 482
    :cond_a3
    invoke-virtual {p1}, Lu/aly/dl;->bRm()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/ax;->e:J

    .line 483
    invoke-virtual {p2, v6}, Lu/aly/ax;->bYw(Z)V

    goto/16 :goto_19

    .line 493
    :cond_ae
    invoke-virtual {p1}, Lu/aly/dl;->k()V

    .line 496
    invoke-virtual {p2}, Lu/aly/ax;->bYv()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 499
    invoke-virtual {p2}, Lu/aly/ax;->bYx()V

    .line 500
    return-void

    .line 497
    :cond_bb
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    nop

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_33
        :pswitch_6e
        :pswitch_82
        :pswitch_98
    .end packed-switch
.end method

.method public bZp(Lu/aly/dl;Lu/aly/ax;)V
    .registers 7

    .prologue
    .line 503
    invoke-virtual {p2}, Lu/aly/ax;->bYx()V

    .line 505
    invoke-static {}, Lu/aly/ax;->bYy()Lu/aly/aO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQV(Lu/aly/aO;)V

    .line 506
    iget-object v0, p2, Lu/aly/ax;->a:Ljava/lang/String;

    if-nez v0, :cond_34

    .line 511
    :goto_e
    iget-object v0, p2, Lu/aly/ax;->b:Ljava/util/Map;

    if-nez v0, :cond_44

    .line 524
    :goto_12
    invoke-virtual {p2}, Lu/aly/ax;->m()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 529
    :goto_18
    invoke-virtual {p2}, Lu/aly/ax;->bYs()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 534
    :goto_1e
    invoke-static {}, Lu/aly/ax;->bYD()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 535
    iget-wide v0, p2, Lu/aly/ax;->e:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dl;->a(J)V

    .line 536
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 537
    invoke-virtual {p1}, Lu/aly/dl;->d()V

    .line 538
    invoke-virtual {p1}, Lu/aly/dl;->b()V

    .line 539
    return-void

    .line 507
    :cond_34
    invoke-static {}, Lu/aly/ax;->bYz()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 508
    iget-object v0, p2, Lu/aly/ax;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_e

    .line 512
    :cond_44
    invoke-static {}, Lu/aly/ax;->bYA()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 514
    new-instance v0, Lu/aly/dh;

    iget-object v1, p2, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v1}, Lu/aly/dh;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQX(Lu/aly/dh;)V

    .line 515
    iget-object v0, p2, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_74

    .line 520
    invoke-virtual {p1}, Lu/aly/dl;->e()V

    .line 522
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_12

    .line 515
    :cond_74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 517
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 518
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bj;

    invoke-virtual {v0, p1}, Lu/aly/bj;->bQL(Lu/aly/dl;)V

    goto :goto_67

    .line 525
    :cond_8d
    invoke-static {}, Lu/aly/ax;->bYB()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 526
    iget-wide v0, p2, Lu/aly/ax;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dl;->a(J)V

    .line 527
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto/16 :goto_18

    .line 530
    :cond_9e
    invoke-static {}, Lu/aly/ax;->bYC()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 531
    iget v0, p2, Lu/aly/ax;->d:I

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(I)V

    .line 532
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto/16 :goto_1e
.end method

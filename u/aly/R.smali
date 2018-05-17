.class Lu/aly/R;
.super Lu/aly/b;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 359
    invoke-direct {p0}, Lu/aly/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cc;)V
    .registers 2

    .prologue
    .line 359
    invoke-direct {p0}, Lu/aly/R;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 359
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/R;->bTM(Lu/aly/dl;Lu/aly/bb;)V

    return-void
.end method

.method public synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 359
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/R;->bTL(Lu/aly/dl;Lu/aly/bb;)V

    return-void
.end method

.method public bTL(Lu/aly/dl;Lu/aly/bb;)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 363
    invoke-virtual {p1}, Lu/aly/dl;->j()Lu/aly/aO;

    .line 366
    :goto_5
    invoke-virtual {p1}, Lu/aly/dl;->l()Lu/aly/cB;

    move-result-object v0

    .line 367
    iget-byte v2, v0, Lu/aly/cB;->b:B

    if-eqz v2, :cond_a2

    .line 370
    iget-short v2, v0, Lu/aly/cB;->c:S

    packed-switch v2, :pswitch_data_aa

    .line 420
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    .line 422
    :goto_17
    invoke-virtual {p1}, Lu/aly/dl;->m()V

    goto :goto_5

    .line 372
    :pswitch_1b
    iget-byte v2, v0, Lu/aly/cB;->b:B

    const/16 v3, 0xd

    if-eq v2, v3, :cond_27

    .line 389
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_17

    .line 374
    :cond_27
    invoke-virtual {p1}, Lu/aly/dl;->n()Lu/aly/dh;

    move-result-object v2

    .line 375
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/dh;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bb;->a:Ljava/util/Map;

    move v0, v1

    .line 376
    :goto_37
    iget v3, v2, Lu/aly/dh;->c:I

    if-lt v0, v3, :cond_42

    .line 385
    invoke-virtual {p1}, Lu/aly/dl;->bRd()V

    .line 387
    invoke-virtual {p2, v6}, Lu/aly/bb;->a(Z)V

    goto :goto_17

    .line 380
    :cond_42
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v3

    .line 381
    new-instance v4, Lu/aly/ba;

    invoke-direct {v4}, Lu/aly/ba;-><init>()V

    .line 382
    invoke-virtual {v4, p1}, Lu/aly/ba;->bQK(Lu/aly/dl;)V

    .line 383
    iget-object v5, p2, Lu/aly/bb;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 393
    :pswitch_56
    iget-byte v2, v0, Lu/aly/cB;->b:B

    const/16 v3, 0xf

    if-eq v2, v3, :cond_62

    .line 408
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_17

    .line 395
    :cond_62
    invoke-virtual {p1}, Lu/aly/dl;->bRe()Lu/aly/bP;

    move-result-object v2

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/bP;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bb;->b:Ljava/util/List;

    move v0, v1

    .line 397
    :goto_70
    iget v3, v2, Lu/aly/bP;->b:I

    if-lt v0, v3, :cond_7b

    .line 404
    invoke-virtual {p1}, Lu/aly/dl;->bRf()V

    .line 406
    invoke-virtual {p2, v6}, Lu/aly/bb;->bQN(Z)V

    goto :goto_17

    .line 400
    :cond_7b
    new-instance v3, Lu/aly/az;

    invoke-direct {v3}, Lu/aly/az;-><init>()V

    .line 401
    invoke-virtual {v3, p1}, Lu/aly/az;->bQK(Lu/aly/dl;)V

    .line 402
    iget-object v4, p2, Lu/aly/bb;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 412
    :pswitch_8b
    iget-byte v2, v0, Lu/aly/cB;->b:B

    const/16 v3, 0xb

    if-eq v2, v3, :cond_97

    .line 416
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_17

    .line 413
    :cond_97
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bb;->c:Ljava/lang/String;

    .line 414
    invoke-virtual {p2, v6}, Lu/aly/bb;->bQP(Z)V

    goto/16 :goto_17

    .line 424
    :cond_a2
    invoke-virtual {p1}, Lu/aly/dl;->k()V

    .line 427
    invoke-virtual {p2}, Lu/aly/bb;->bQQ()V

    .line 428
    return-void

    .line 370
    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_56
        :pswitch_8b
    .end packed-switch
.end method

.method public bTM(Lu/aly/dl;Lu/aly/bb;)V
    .registers 7

    .prologue
    const/16 v3, 0xc

    .line 431
    invoke-virtual {p2}, Lu/aly/bb;->bQQ()V

    .line 433
    invoke-static {}, Lu/aly/bb;->bQR()Lu/aly/aO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQV(Lu/aly/aO;)V

    .line 434
    iget-object v0, p2, Lu/aly/bb;->a:Ljava/util/Map;

    if-nez v0, :cond_1f

    .line 447
    :goto_10
    iget-object v0, p2, Lu/aly/bb;->b:Ljava/util/List;

    if-nez v0, :cond_66

    .line 461
    :cond_14
    :goto_14
    iget-object v0, p2, Lu/aly/bb;->c:Ljava/lang/String;

    if-nez v0, :cond_9e

    .line 468
    :cond_18
    :goto_18
    invoke-virtual {p1}, Lu/aly/dl;->d()V

    .line 469
    invoke-virtual {p1}, Lu/aly/dl;->b()V

    .line 470
    return-void

    .line 435
    :cond_1f
    invoke-static {}, Lu/aly/bb;->bQS()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 437
    new-instance v0, Lu/aly/dh;

    iget-object v1, p2, Lu/aly/bb;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v3, v1}, Lu/aly/dh;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQX(Lu/aly/dh;)V

    .line 438
    iget-object v0, p2, Lu/aly/bb;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 443
    invoke-virtual {p1}, Lu/aly/dl;->e()V

    .line 445
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_10

    .line 438
    :cond_4d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 440
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 441
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ba;

    invoke-virtual {v0, p1}, Lu/aly/ba;->bQL(Lu/aly/dl;)V

    goto :goto_40

    .line 448
    :cond_66
    invoke-virtual {p2}, Lu/aly/bb;->l()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 449
    invoke-static {}, Lu/aly/bb;->bQT()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 451
    new-instance v0, Lu/aly/bP;

    iget-object v1, p2, Lu/aly/bb;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lu/aly/bP;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQY(Lu/aly/bP;)V

    .line 452
    iget-object v0, p2, Lu/aly/bb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_87
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_94

    .line 456
    invoke-virtual {p1}, Lu/aly/dl;->f()V

    .line 458
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_14

    .line 452
    :cond_94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/az;

    .line 454
    invoke-virtual {v0, p1}, Lu/aly/az;->bQL(Lu/aly/dl;)V

    goto :goto_87

    .line 462
    :cond_9e
    invoke-virtual {p2}, Lu/aly/bb;->bQO()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 463
    invoke-static {}, Lu/aly/bb;->bQU()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 464
    iget-object v0, p2, Lu/aly/bb;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto/16 :goto_18
.end method

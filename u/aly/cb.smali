.class Lu/aly/cb;
.super Lu/aly/b;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 342
    invoke-direct {p0}, Lu/aly/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/V;)V
    .registers 2

    .prologue
    .line 342
    invoke-direct {p0}, Lu/aly/cb;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 342
    check-cast p2, Lu/aly/bc;

    invoke-virtual {p0, p1, p2}, Lu/aly/cb;->bYc(Lu/aly/dl;Lu/aly/bc;)V

    return-void
.end method

.method public synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 342
    check-cast p2, Lu/aly/bc;

    invoke-virtual {p0, p1, p2}, Lu/aly/cb;->bYb(Lu/aly/dl;Lu/aly/bc;)V

    return-void
.end method

.method public bYb(Lu/aly/dl;Lu/aly/bc;)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 346
    invoke-virtual {p1}, Lu/aly/dl;->j()Lu/aly/aO;

    .line 349
    :goto_5
    invoke-virtual {p1}, Lu/aly/dl;->l()Lu/aly/cB;

    move-result-object v0

    .line 350
    iget-byte v2, v0, Lu/aly/cB;->b:B

    if-eqz v2, :cond_82

    .line 353
    iget-short v2, v0, Lu/aly/cB;->c:S

    packed-switch v2, :pswitch_data_ae

    .line 392
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    .line 394
    :goto_17
    invoke-virtual {p1}, Lu/aly/dl;->m()V

    goto :goto_5

    .line 355
    :pswitch_1b
    iget-byte v2, v0, Lu/aly/cB;->b:B

    const/16 v3, 0xd

    if-eq v2, v3, :cond_27

    .line 372
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_17

    .line 357
    :cond_27
    invoke-virtual {p1}, Lu/aly/dl;->n()Lu/aly/dh;

    move-result-object v2

    .line 358
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/dh;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bc;->a:Ljava/util/Map;

    move v0, v1

    .line 359
    :goto_37
    iget v3, v2, Lu/aly/dh;->c:I

    if-lt v0, v3, :cond_42

    .line 368
    invoke-virtual {p1}, Lu/aly/dl;->bRd()V

    .line 370
    invoke-virtual {p2, v6}, Lu/aly/bc;->a(Z)V

    goto :goto_17

    .line 363
    :cond_42
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v3

    .line 364
    new-instance v4, Lu/aly/bd;

    invoke-direct {v4}, Lu/aly/bd;-><init>()V

    .line 365
    invoke-virtual {v4, p1}, Lu/aly/bd;->bQK(Lu/aly/dl;)V

    .line 366
    iget-object v5, p2, Lu/aly/bc;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 376
    :pswitch_56
    iget-byte v2, v0, Lu/aly/cB;->b:B

    const/16 v3, 0x8

    if-eq v2, v3, :cond_62

    .line 380
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_17

    .line 377
    :cond_62
    invoke-virtual {p1}, Lu/aly/dl;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/bc;->b:I

    .line 378
    invoke-virtual {p2, v6}, Lu/aly/bc;->bZx(Z)V

    goto :goto_17

    .line 384
    :pswitch_6c
    iget-byte v2, v0, Lu/aly/cB;->b:B

    const/16 v3, 0xb

    if-eq v2, v3, :cond_78

    .line 388
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_17

    .line 385
    :cond_78
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bc;->c:Ljava/lang/String;

    .line 386
    invoke-virtual {p2, v6}, Lu/aly/bc;->bZy(Z)V

    goto :goto_17

    .line 396
    :cond_82
    invoke-virtual {p1}, Lu/aly/dl;->k()V

    .line 399
    invoke-virtual {p2}, Lu/aly/bc;->j()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 402
    invoke-virtual {p2}, Lu/aly/bc;->n()V

    .line 403
    return-void

    .line 400
    :cond_8f
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'version\' was not found in serialized data! Struct: "

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

    .line 353
    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_56
        :pswitch_6c
    .end packed-switch
.end method

.method public bYc(Lu/aly/dl;Lu/aly/bc;)V
    .registers 7

    .prologue
    .line 406
    invoke-virtual {p2}, Lu/aly/bc;->n()V

    .line 408
    invoke-static {}, Lu/aly/bc;->bZz()Lu/aly/aO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQV(Lu/aly/aO;)V

    .line 409
    iget-object v0, p2, Lu/aly/bc;->a:Ljava/util/Map;

    if-nez v0, :cond_28

    .line 422
    :goto_e
    invoke-static {}, Lu/aly/bc;->bZB()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 423
    iget v0, p2, Lu/aly/bc;->b:I

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(I)V

    .line 424
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 425
    iget-object v0, p2, Lu/aly/bc;->c:Ljava/lang/String;

    if-nez v0, :cond_71

    .line 430
    :goto_21
    invoke-virtual {p1}, Lu/aly/dl;->d()V

    .line 431
    invoke-virtual {p1}, Lu/aly/dl;->b()V

    .line 432
    return-void

    .line 410
    :cond_28
    invoke-static {}, Lu/aly/bc;->bZA()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 412
    new-instance v0, Lu/aly/dh;

    iget-object v1, p2, Lu/aly/bc;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v1}, Lu/aly/dh;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQX(Lu/aly/dh;)V

    .line 413
    iget-object v0, p2, Lu/aly/bc;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_58

    .line 418
    invoke-virtual {p1}, Lu/aly/dl;->e()V

    .line 420
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_e

    .line 413
    :cond_58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 415
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 416
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bd;

    invoke-virtual {v0, p1}, Lu/aly/bd;->bQL(Lu/aly/dl;)V

    goto :goto_4b

    .line 426
    :cond_71
    invoke-static {}, Lu/aly/bc;->bZC()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 427
    iget-object v0, p2, Lu/aly/bc;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_21
.end method

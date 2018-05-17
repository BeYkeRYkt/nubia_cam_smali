.class Lu/aly/di;
.super Lu/aly/b;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 315
    invoke-direct {p0}, Lu/aly/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ak;)V
    .registers 2

    .prologue
    .line 315
    invoke-direct {p0}, Lu/aly/di;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 315
    check-cast p2, Lu/aly/bl;

    invoke-virtual {p0, p1, p2}, Lu/aly/di;->caR(Lu/aly/dl;Lu/aly/bl;)V

    return-void
.end method

.method public synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 315
    check-cast p2, Lu/aly/bl;

    invoke-virtual {p0, p1, p2}, Lu/aly/di;->caQ(Lu/aly/dl;Lu/aly/bl;)V

    return-void
.end method

.method public caQ(Lu/aly/dl;Lu/aly/bl;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 319
    invoke-virtual {p1}, Lu/aly/dl;->j()Lu/aly/aO;

    .line 322
    :goto_4
    invoke-virtual {p1}, Lu/aly/dl;->l()Lu/aly/cB;

    move-result-object v0

    .line 323
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eqz v1, :cond_62

    .line 326
    iget-short v1, v0, Lu/aly/cB;->c:S

    packed-switch v1, :pswitch_data_8e

    .line 353
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    .line 355
    :goto_16
    invoke-virtual {p1}, Lu/aly/dl;->m()V

    goto :goto_4

    .line 328
    :pswitch_1a
    iget-byte v1, v0, Lu/aly/cB;->b:B

    const/16 v2, 0x8

    if-eq v1, v2, :cond_26

    .line 332
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_16

    .line 329
    :cond_26
    invoke-virtual {p1}, Lu/aly/dl;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/bl;->a:I

    .line 330
    invoke-virtual {p2, v3}, Lu/aly/bl;->a(Z)V

    goto :goto_16

    .line 336
    :pswitch_30
    iget-byte v1, v0, Lu/aly/cB;->b:B

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3c

    .line 340
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_16

    .line 337
    :cond_3c
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bl;->b:Ljava/lang/String;

    .line 338
    invoke-virtual {p2, v3}, Lu/aly/bl;->bVw(Z)V

    goto :goto_16

    .line 344
    :pswitch_46
    iget-byte v1, v0, Lu/aly/cB;->b:B

    const/16 v2, 0xc

    if-eq v1, v2, :cond_52

    .line 349
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_16

    .line 345
    :cond_52
    new-instance v0, Lu/aly/bc;

    invoke-direct {v0}, Lu/aly/bc;-><init>()V

    iput-object v0, p2, Lu/aly/bl;->c:Lu/aly/bc;

    .line 346
    iget-object v0, p2, Lu/aly/bl;->c:Lu/aly/bc;

    invoke-virtual {v0, p1}, Lu/aly/bc;->bQK(Lu/aly/dl;)V

    .line 347
    invoke-virtual {p2, v3}, Lu/aly/bl;->bVx(Z)V

    goto :goto_16

    .line 357
    :cond_62
    invoke-virtual {p1}, Lu/aly/dl;->k()V

    .line 360
    invoke-virtual {p2}, Lu/aly/bl;->e()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 363
    invoke-virtual {p2}, Lu/aly/bl;->m()V

    .line 364
    return-void

    .line 361
    :cond_6f
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'resp_code\' was not found in serialized data! Struct: "

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

    .line 326
    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_30
        :pswitch_46
    .end packed-switch
.end method

.method public caR(Lu/aly/dl;Lu/aly/bl;)V
    .registers 4

    .prologue
    .line 367
    invoke-virtual {p2}, Lu/aly/bl;->m()V

    .line 369
    invoke-static {}, Lu/aly/bl;->n()Lu/aly/aO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQV(Lu/aly/aO;)V

    .line 370
    invoke-static {}, Lu/aly/bl;->bVy()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 371
    iget v0, p2, Lu/aly/bl;->a:I

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(I)V

    .line 372
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 373
    iget-object v0, p2, Lu/aly/bl;->b:Ljava/lang/String;

    if-nez v0, :cond_28

    .line 380
    :cond_1d
    :goto_1d
    iget-object v0, p2, Lu/aly/bl;->c:Lu/aly/bc;

    if-nez v0, :cond_3e

    .line 387
    :cond_21
    :goto_21
    invoke-virtual {p1}, Lu/aly/dl;->d()V

    .line 388
    invoke-virtual {p1}, Lu/aly/dl;->b()V

    .line 389
    return-void

    .line 374
    :cond_28
    invoke-virtual {p2}, Lu/aly/bl;->i()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 375
    invoke-static {}, Lu/aly/bl;->bVz()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 376
    iget-object v0, p2, Lu/aly/bl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_1d

    .line 381
    :cond_3e
    invoke-virtual {p2}, Lu/aly/bl;->l()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 382
    invoke-static {}, Lu/aly/bl;->bVA()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 383
    iget-object v0, p2, Lu/aly/bl;->c:Lu/aly/bc;

    invoke-virtual {v0, p1}, Lu/aly/bc;->bQL(Lu/aly/dl;)V

    .line 384
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_21
.end method

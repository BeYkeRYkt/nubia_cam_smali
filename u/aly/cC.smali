.class Lu/aly/cC;
.super Lu/aly/b;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 308
    invoke-direct {p0}, Lu/aly/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/l;)V
    .registers 2

    .prologue
    .line 308
    invoke-direct {p0}, Lu/aly/cC;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 308
    check-cast p2, Lu/aly/ar;

    invoke-virtual {p0, p1, p2}, Lu/aly/cC;->bYT(Lu/aly/dl;Lu/aly/ar;)V

    return-void
.end method

.method public synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 308
    check-cast p2, Lu/aly/ar;

    invoke-virtual {p0, p1, p2}, Lu/aly/cC;->bYS(Lu/aly/dl;Lu/aly/ar;)V

    return-void
.end method

.method public bYS(Lu/aly/dl;Lu/aly/ar;)V
    .registers 7

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 312
    invoke-virtual {p1}, Lu/aly/dl;->j()Lu/aly/aO;

    .line 315
    :goto_6
    invoke-virtual {p1}, Lu/aly/dl;->l()Lu/aly/cB;

    move-result-object v0

    .line 316
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eqz v1, :cond_58

    .line 319
    iget-short v1, v0, Lu/aly/cB;->c:S

    packed-switch v1, :pswitch_data_a8

    .line 345
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    .line 347
    :goto_18
    invoke-virtual {p1}, Lu/aly/dl;->m()V

    goto :goto_6

    .line 321
    :pswitch_1c
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v3, :cond_26

    .line 325
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_18

    .line 322
    :cond_26
    invoke-virtual {p1}, Lu/aly/dl;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/ar;->a:I

    .line 323
    invoke-virtual {p2, v2}, Lu/aly/ar;->a(Z)V

    goto :goto_18

    .line 329
    :pswitch_30
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v3, :cond_3a

    .line 333
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_18

    .line 330
    :cond_3a
    invoke-virtual {p1}, Lu/aly/dl;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/ar;->b:I

    .line 331
    invoke-virtual {p2, v2}, Lu/aly/ar;->bYM(Z)V

    goto :goto_18

    .line 337
    :pswitch_44
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v3, :cond_4e

    .line 341
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_18

    .line 338
    :cond_4e
    invoke-virtual {p1}, Lu/aly/dl;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/ar;->c:I

    .line 339
    invoke-virtual {p2, v2}, Lu/aly/ar;->bYO(Z)V

    goto :goto_18

    .line 349
    :cond_58
    invoke-virtual {p1}, Lu/aly/dl;->k()V

    .line 352
    invoke-virtual {p2}, Lu/aly/ar;->e()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 355
    invoke-virtual {p2}, Lu/aly/ar;->i()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 358
    invoke-virtual {p2}, Lu/aly/ar;->m()V

    .line 359
    return-void

    .line 353
    :cond_6b
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'successful_requests\' was not found in serialized data! Struct: "

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

    .line 356
    :cond_89
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'failed_requests\' was not found in serialized data! Struct: "

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

    .line 319
    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_30
        :pswitch_44
    .end packed-switch
.end method

.method public bYT(Lu/aly/dl;Lu/aly/ar;)V
    .registers 4

    .prologue
    .line 362
    invoke-virtual {p2}, Lu/aly/ar;->m()V

    .line 364
    invoke-static {}, Lu/aly/ar;->n()Lu/aly/aO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQV(Lu/aly/aO;)V

    .line 365
    invoke-static {}, Lu/aly/ar;->bYP()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 366
    iget v0, p2, Lu/aly/ar;->a:I

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(I)V

    .line 367
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 368
    invoke-static {}, Lu/aly/ar;->bYQ()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 369
    iget v0, p2, Lu/aly/ar;->b:I

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(I)V

    .line 370
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 371
    invoke-virtual {p2}, Lu/aly/ar;->l()Z

    move-result v0

    if-nez v0, :cond_35

    .line 376
    :goto_2e
    invoke-virtual {p1}, Lu/aly/dl;->d()V

    .line 377
    invoke-virtual {p1}, Lu/aly/dl;->b()V

    .line 378
    return-void

    .line 372
    :cond_35
    invoke-static {}, Lu/aly/ar;->bYR()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 373
    iget v0, p2, Lu/aly/ar;->c:I

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(I)V

    .line 374
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_2e
.end method

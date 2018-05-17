.class Lu/aly/a;
.super Lu/aly/b;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 331
    invoke-direct {p0}, Lu/aly/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bG;)V
    .registers 2

    .prologue
    .line 331
    invoke-direct {p0}, Lu/aly/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bQp(Lu/aly/dl;Lu/aly/av;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 335
    invoke-virtual {p1}, Lu/aly/dl;->j()Lu/aly/aO;

    .line 338
    :goto_4
    invoke-virtual {p1}, Lu/aly/dl;->l()Lu/aly/cB;

    move-result-object v0

    .line 339
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eqz v1, :cond_60

    .line 342
    iget-short v1, v0, Lu/aly/cB;->c:S

    packed-switch v1, :pswitch_data_8c

    .line 368
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    .line 370
    :goto_16
    invoke-virtual {p1}, Lu/aly/dl;->m()V

    goto :goto_4

    .line 344
    :pswitch_1a
    iget-byte v1, v0, Lu/aly/cB;->b:B

    const/16 v2, 0xa

    if-eq v1, v2, :cond_26

    .line 348
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_16

    .line 345
    :cond_26
    invoke-virtual {p1}, Lu/aly/dl;->bRm()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/av;->a:J

    .line 346
    invoke-virtual {p2, v3}, Lu/aly/av;->cbS(Z)V

    goto :goto_16

    .line 352
    :pswitch_30
    iget-byte v1, v0, Lu/aly/cB;->b:B

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3c

    .line 356
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_16

    .line 353
    :cond_3c
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/av;->b:Ljava/lang/String;

    .line 354
    invoke-virtual {p2, v3}, Lu/aly/av;->cbT(Z)V

    goto :goto_16

    .line 360
    :pswitch_46
    iget-byte v1, v0, Lu/aly/cB;->b:B

    const/16 v2, 0x8

    if-eq v1, v2, :cond_52

    .line 364
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_16

    .line 361
    :cond_52
    invoke-virtual {p1}, Lu/aly/dl;->bRl()I

    move-result v0

    invoke-static {v0}, Lu/aly/aw;->a(I)Lu/aly/aw;

    move-result-object v0

    iput-object v0, p2, Lu/aly/av;->c:Lu/aly/aw;

    .line 362
    invoke-virtual {p2, v3}, Lu/aly/av;->cbV(Z)V

    goto :goto_16

    .line 372
    :cond_60
    invoke-virtual {p1}, Lu/aly/dl;->k()V

    .line 375
    invoke-virtual {p2}, Lu/aly/av;->e()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 378
    invoke-virtual {p2}, Lu/aly/av;->m()V

    .line 379
    return-void

    .line 376
    :cond_6d
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

    .line 342
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_30
        :pswitch_46
    .end packed-switch
.end method

.method public bQq(Lu/aly/dl;Lu/aly/av;)V
    .registers 5

    .prologue
    .line 382
    invoke-virtual {p2}, Lu/aly/av;->m()V

    .line 384
    invoke-static {}, Lu/aly/av;->n()Lu/aly/aO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQV(Lu/aly/aO;)V

    .line 385
    invoke-static {}, Lu/aly/av;->cbW()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 386
    iget-wide v0, p2, Lu/aly/av;->a:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dl;->a(J)V

    .line 387
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 388
    iget-object v0, p2, Lu/aly/av;->b:Ljava/lang/String;

    if-nez v0, :cond_28

    .line 393
    :goto_1d
    iget-object v0, p2, Lu/aly/av;->c:Lu/aly/aw;

    if-nez v0, :cond_38

    .line 400
    :cond_21
    :goto_21
    invoke-virtual {p1}, Lu/aly/dl;->d()V

    .line 401
    invoke-virtual {p1}, Lu/aly/dl;->b()V

    .line 402
    return-void

    .line 389
    :cond_28
    invoke-static {}, Lu/aly/av;->cbX()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 390
    iget-object v0, p2, Lu/aly/av;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_1d

    .line 394
    :cond_38
    invoke-virtual {p2}, Lu/aly/av;->l()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 395
    invoke-static {}, Lu/aly/av;->cbY()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 396
    iget-object v0, p2, Lu/aly/av;->c:Lu/aly/aw;

    invoke-virtual {v0}, Lu/aly/aw;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(I)V

    .line 397
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_21
.end method

.method public synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 331
    check-cast p2, Lu/aly/av;

    invoke-virtual {p0, p1, p2}, Lu/aly/a;->bQq(Lu/aly/dl;Lu/aly/av;)V

    return-void
.end method

.method public synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 331
    check-cast p2, Lu/aly/av;

    invoke-virtual {p0, p1, p2}, Lu/aly/a;->bQp(Lu/aly/dl;Lu/aly/av;)V

    return-void
.end method

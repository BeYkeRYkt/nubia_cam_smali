.class Lu/aly/dv;
.super Lu/aly/b;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 305
    invoke-direct {p0}, Lu/aly/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cl;)V
    .registers 2

    .prologue
    .line 305
    invoke-direct {p0}, Lu/aly/dv;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 305
    check-cast p2, Lu/aly/bg;

    invoke-virtual {p0, p1, p2}, Lu/aly/dv;->cbe(Lu/aly/dl;Lu/aly/bg;)V

    return-void
.end method

.method public synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 305
    check-cast p2, Lu/aly/bg;

    invoke-virtual {p0, p1, p2}, Lu/aly/dv;->cbd(Lu/aly/dl;Lu/aly/bg;)V

    return-void
.end method

.method public cbd(Lu/aly/dl;Lu/aly/bg;)V
    .registers 8

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 309
    invoke-virtual {p1}, Lu/aly/dl;->j()Lu/aly/aO;

    .line 312
    :goto_5
    invoke-virtual {p1}, Lu/aly/dl;->l()Lu/aly/cB;

    move-result-object v0

    .line 313
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eqz v1, :cond_59

    .line 316
    iget-short v1, v0, Lu/aly/cB;->c:S

    packed-switch v1, :pswitch_data_cc

    .line 342
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    .line 344
    :goto_17
    invoke-virtual {p1}, Lu/aly/dl;->m()V

    goto :goto_5

    .line 318
    :pswitch_1b
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v4, :cond_25

    .line 322
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_17

    .line 319
    :cond_25
    invoke-virtual {p1}, Lu/aly/dl;->bRn()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bg;->a:D

    .line 320
    invoke-virtual {p2, v3}, Lu/aly/bg;->a(Z)V

    goto :goto_17

    .line 326
    :pswitch_2f
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v4, :cond_39

    .line 330
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_17

    .line 327
    :cond_39
    invoke-virtual {p1}, Lu/aly/dl;->bRn()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bg;->b:D

    .line 328
    invoke-virtual {p2, v3}, Lu/aly/bg;->bSr(Z)V

    goto :goto_17

    .line 334
    :pswitch_43
    iget-byte v1, v0, Lu/aly/cB;->b:B

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4f

    .line 338
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_17

    .line 335
    :cond_4f
    invoke-virtual {p1}, Lu/aly/dl;->bRm()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bg;->c:J

    .line 336
    invoke-virtual {p2, v3}, Lu/aly/bg;->bSs(Z)V

    goto :goto_17

    .line 346
    :cond_59
    invoke-virtual {p1}, Lu/aly/dl;->k()V

    .line 349
    invoke-virtual {p2}, Lu/aly/bg;->e()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 352
    invoke-virtual {p2}, Lu/aly/bg;->i()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 355
    invoke-virtual {p2}, Lu/aly/bg;->l()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 358
    invoke-virtual {p2}, Lu/aly/bg;->m()V

    .line 359
    return-void

    .line 350
    :cond_72
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'lat\' was not found in serialized data! Struct: "

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
    :cond_90
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'lng\' was not found in serialized data! Struct: "

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
    :cond_ae
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

    .line 316
    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_2f
        :pswitch_43
    .end packed-switch
.end method

.method public cbe(Lu/aly/dl;Lu/aly/bg;)V
    .registers 5

    .prologue
    .line 362
    invoke-virtual {p2}, Lu/aly/bg;->m()V

    .line 364
    invoke-static {}, Lu/aly/bg;->n()Lu/aly/aO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQV(Lu/aly/aO;)V

    .line 365
    invoke-static {}, Lu/aly/bg;->bSt()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 366
    iget-wide v0, p2, Lu/aly/bg;->a:D

    invoke-virtual {p1, v0, v1}, Lu/aly/dl;->bRb(D)V

    .line 367
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 368
    invoke-static {}, Lu/aly/bg;->bSu()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 369
    iget-wide v0, p2, Lu/aly/bg;->b:D

    invoke-virtual {p1, v0, v1}, Lu/aly/dl;->bRb(D)V

    .line 370
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 371
    invoke-static {}, Lu/aly/bg;->bSv()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 372
    iget-wide v0, p2, Lu/aly/bg;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dl;->a(J)V

    .line 373
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 374
    invoke-virtual {p1}, Lu/aly/dl;->d()V

    .line 375
    invoke-virtual {p1}, Lu/aly/dl;->b()V

    .line 376
    return-void
.end method

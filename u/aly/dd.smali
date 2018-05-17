.class Lu/aly/dd;
.super Lu/aly/b;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 311
    invoke-direct {p0}, Lu/aly/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bt;)V
    .registers 2

    .prologue
    .line 311
    invoke-direct {p0}, Lu/aly/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 311
    check-cast p2, Lu/aly/ba;

    invoke-virtual {p0, p1, p2}, Lu/aly/dd;->bZu(Lu/aly/dl;Lu/aly/ba;)V

    return-void
.end method

.method public synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 311
    check-cast p2, Lu/aly/ba;

    invoke-virtual {p0, p1, p2}, Lu/aly/dd;->bZt(Lu/aly/dl;Lu/aly/ba;)V

    return-void
.end method

.method public bZt(Lu/aly/dl;Lu/aly/ba;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 315
    invoke-virtual {p1}, Lu/aly/dl;->j()Lu/aly/aO;

    .line 318
    :goto_4
    invoke-virtual {p1}, Lu/aly/dl;->l()Lu/aly/cB;

    move-result-object v0

    .line 319
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eqz v1, :cond_5c

    .line 322
    iget-short v1, v0, Lu/aly/cB;->c:S

    packed-switch v1, :pswitch_data_ac

    .line 348
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    .line 350
    :goto_16
    invoke-virtual {p1}, Lu/aly/dl;->m()V

    goto :goto_4

    .line 324
    :pswitch_1a
    iget-byte v1, v0, Lu/aly/cB;->b:B

    const/16 v2, 0xb

    if-eq v1, v2, :cond_26

    .line 328
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_16

    .line 325
    :cond_26
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ba;->a:Ljava/lang/String;

    .line 326
    invoke-virtual {p2, v3}, Lu/aly/ba;->a(Z)V

    goto :goto_16

    .line 332
    :pswitch_30
    iget-byte v1, v0, Lu/aly/cB;->b:B

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3c

    .line 336
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_16

    .line 333
    :cond_3c
    invoke-virtual {p1}, Lu/aly/dl;->bRm()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ba;->b:J

    .line 334
    invoke-virtual {p2, v3}, Lu/aly/ba;->bTG(Z)V

    goto :goto_16

    .line 340
    :pswitch_46
    iget-byte v1, v0, Lu/aly/cB;->b:B

    const/16 v2, 0x8

    if-eq v1, v2, :cond_52

    .line 344
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_16

    .line 341
    :cond_52
    invoke-virtual {p1}, Lu/aly/dl;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/ba;->c:I

    .line 342
    invoke-virtual {p2, v3}, Lu/aly/ba;->bTH(Z)V

    goto :goto_16

    .line 352
    :cond_5c
    invoke-virtual {p1}, Lu/aly/dl;->k()V

    .line 355
    invoke-virtual {p2}, Lu/aly/ba;->i()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 358
    invoke-virtual {p2}, Lu/aly/ba;->l()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 361
    invoke-virtual {p2}, Lu/aly/ba;->m()V

    .line 362
    return-void

    .line 356
    :cond_6f
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

    .line 359
    :cond_8d
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

    .line 322
    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_30
        :pswitch_46
    .end packed-switch
.end method

.method public bZu(Lu/aly/dl;Lu/aly/ba;)V
    .registers 5

    .prologue
    .line 365
    invoke-virtual {p2}, Lu/aly/ba;->m()V

    .line 367
    invoke-static {}, Lu/aly/ba;->n()Lu/aly/aO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQV(Lu/aly/aO;)V

    .line 368
    iget-object v0, p2, Lu/aly/ba;->a:Ljava/lang/String;

    if-nez v0, :cond_33

    .line 373
    :goto_e
    invoke-static {}, Lu/aly/ba;->bTJ()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 374
    iget-wide v0, p2, Lu/aly/ba;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dl;->a(J)V

    .line 375
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 376
    invoke-static {}, Lu/aly/ba;->bTK()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 377
    iget v0, p2, Lu/aly/ba;->c:I

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(I)V

    .line 378
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 379
    invoke-virtual {p1}, Lu/aly/dl;->d()V

    .line 380
    invoke-virtual {p1}, Lu/aly/dl;->b()V

    .line 381
    return-void

    .line 369
    :cond_33
    invoke-static {}, Lu/aly/ba;->bTI()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 370
    iget-object v0, p2, Lu/aly/ba;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_e
.end method

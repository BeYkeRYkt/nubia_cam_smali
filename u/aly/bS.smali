.class Lu/aly/bS;
.super Lu/aly/b;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 262
    invoke-direct {p0}, Lu/aly/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/s;)V
    .registers 2

    .prologue
    .line 262
    invoke-direct {p0}, Lu/aly/bS;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 262
    check-cast p2, Lu/aly/bf;

    invoke-virtual {p0, p1, p2}, Lu/aly/bS;->bXQ(Lu/aly/dl;Lu/aly/bf;)V

    return-void
.end method

.method public synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 262
    check-cast p2, Lu/aly/bf;

    invoke-virtual {p0, p1, p2}, Lu/aly/bS;->bXP(Lu/aly/dl;Lu/aly/bf;)V

    return-void
.end method

.method public bXP(Lu/aly/dl;Lu/aly/bf;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 266
    invoke-virtual {p1}, Lu/aly/dl;->j()Lu/aly/aO;

    .line 269
    :goto_4
    invoke-virtual {p1}, Lu/aly/dl;->l()Lu/aly/cB;

    move-result-object v0

    .line 270
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eqz v1, :cond_46

    .line 273
    iget-short v1, v0, Lu/aly/cB;->c:S

    packed-switch v1, :pswitch_data_96

    .line 291
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    .line 293
    :goto_16
    invoke-virtual {p1}, Lu/aly/dl;->m()V

    goto :goto_4

    .line 275
    :pswitch_1a
    iget-byte v1, v0, Lu/aly/cB;->b:B

    const/16 v2, 0x8

    if-eq v1, v2, :cond_26

    .line 279
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_16

    .line 276
    :cond_26
    invoke-virtual {p1}, Lu/aly/dl;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/bf;->a:I

    .line 277
    invoke-virtual {p2, v3}, Lu/aly/bf;->a(Z)V

    goto :goto_16

    .line 283
    :pswitch_30
    iget-byte v1, v0, Lu/aly/cB;->b:B

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3c

    .line 287
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_16

    .line 284
    :cond_3c
    invoke-virtual {p1}, Lu/aly/dl;->bRm()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bf;->b:J

    .line 285
    invoke-virtual {p2, v3}, Lu/aly/bf;->bZI(Z)V

    goto :goto_16

    .line 295
    :cond_46
    invoke-virtual {p1}, Lu/aly/dl;->k()V

    .line 298
    invoke-virtual {p2}, Lu/aly/bf;->e()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 301
    invoke-virtual {p2}, Lu/aly/bf;->i()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 304
    invoke-virtual {p2}, Lu/aly/bf;->j()V

    .line 305
    return-void

    .line 299
    :cond_59
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'latency\' was not found in serialized data! Struct: "

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

    .line 302
    :cond_77
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'interval\' was not found in serialized data! Struct: "

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

    .line 273
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_30
    .end packed-switch
.end method

.method public bXQ(Lu/aly/dl;Lu/aly/bf;)V
    .registers 5

    .prologue
    .line 308
    invoke-virtual {p2}, Lu/aly/bf;->j()V

    .line 310
    invoke-static {}, Lu/aly/bf;->k()Lu/aly/aO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQV(Lu/aly/aO;)V

    .line 311
    invoke-static {}, Lu/aly/bf;->l()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 312
    iget v0, p2, Lu/aly/bf;->a:I

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(I)V

    .line 313
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 314
    invoke-static {}, Lu/aly/bf;->m()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 315
    iget-wide v0, p2, Lu/aly/bf;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dl;->a(J)V

    .line 316
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 317
    invoke-virtual {p1}, Lu/aly/dl;->d()V

    .line 318
    invoke-virtual {p1}, Lu/aly/dl;->b()V

    .line 319
    return-void
.end method

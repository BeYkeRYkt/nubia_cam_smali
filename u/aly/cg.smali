.class Lu/aly/cg;
.super Lu/aly/b;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 269
    invoke-direct {p0}, Lu/aly/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/aQ;)V
    .registers 2

    .prologue
    .line 269
    invoke-direct {p0}, Lu/aly/cg;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 269
    check-cast p2, Lu/aly/bi;

    invoke-virtual {p0, p1, p2}, Lu/aly/cg;->bYm(Lu/aly/dl;Lu/aly/bi;)V

    return-void
.end method

.method public synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 269
    check-cast p2, Lu/aly/bi;

    invoke-virtual {p0, p1, p2}, Lu/aly/cg;->bYl(Lu/aly/dl;Lu/aly/bi;)V

    return-void
.end method

.method public bYl(Lu/aly/dl;Lu/aly/bi;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 273
    invoke-virtual {p1}, Lu/aly/dl;->j()Lu/aly/aO;

    .line 276
    :goto_4
    invoke-virtual {p1}, Lu/aly/dl;->l()Lu/aly/cB;

    move-result-object v0

    .line 277
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eqz v1, :cond_46

    .line 280
    iget-short v1, v0, Lu/aly/cB;->c:S

    packed-switch v1, :pswitch_data_72

    .line 298
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    .line 300
    :goto_16
    invoke-virtual {p1}, Lu/aly/dl;->m()V

    goto :goto_4

    .line 282
    :pswitch_1a
    iget-byte v1, v0, Lu/aly/cB;->b:B

    const/16 v2, 0xb

    if-eq v1, v2, :cond_26

    .line 286
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_16

    .line 283
    :cond_26
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bi;->a:Ljava/lang/String;

    .line 284
    invoke-virtual {p2, v3}, Lu/aly/bi;->a(Z)V

    goto :goto_16

    .line 290
    :pswitch_30
    iget-byte v1, v0, Lu/aly/cB;->b:B

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3c

    .line 294
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_16

    .line 291
    :cond_3c
    invoke-virtual {p1}, Lu/aly/dl;->bRm()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bi;->b:J

    .line 292
    invoke-virtual {p2, v3}, Lu/aly/bi;->bVB(Z)V

    goto :goto_16

    .line 302
    :cond_46
    invoke-virtual {p1}, Lu/aly/dl;->k()V

    .line 305
    invoke-virtual {p2}, Lu/aly/bi;->i()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 308
    invoke-virtual {p2}, Lu/aly/bi;->j()V

    .line 309
    return-void

    .line 306
    :cond_53
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'duration\' was not found in serialized data! Struct: "

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

    .line 280
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_30
    .end packed-switch
.end method

.method public bYm(Lu/aly/dl;Lu/aly/bi;)V
    .registers 5

    .prologue
    .line 312
    invoke-virtual {p2}, Lu/aly/bi;->j()V

    .line 314
    invoke-static {}, Lu/aly/bi;->k()Lu/aly/aO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQV(Lu/aly/aO;)V

    .line 315
    iget-object v0, p2, Lu/aly/bi;->a:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 320
    :goto_e
    invoke-static {}, Lu/aly/bi;->m()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 321
    iget-wide v0, p2, Lu/aly/bi;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dl;->a(J)V

    .line 322
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 323
    invoke-virtual {p1}, Lu/aly/dl;->d()V

    .line 324
    invoke-virtual {p1}, Lu/aly/dl;->b()V

    .line 325
    return-void

    .line 316
    :cond_24
    invoke-static {}, Lu/aly/bi;->l()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 317
    iget-object v0, p2, Lu/aly/bi;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_e
.end method

.class Lu/aly/dq;
.super Lu/aly/b;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 263
    invoke-direct {p0}, Lu/aly/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/aI;)V
    .registers 2

    .prologue
    .line 263
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 263
    check-cast p2, Lu/aly/bo;

    invoke-virtual {p0, p1, p2}, Lu/aly/dq;->cba(Lu/aly/dl;Lu/aly/bo;)V

    return-void
.end method

.method public synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 263
    check-cast p2, Lu/aly/bo;

    invoke-virtual {p0, p1, p2}, Lu/aly/dq;->caZ(Lu/aly/dl;Lu/aly/bo;)V

    return-void
.end method

.method public caZ(Lu/aly/dl;Lu/aly/bo;)V
    .registers 7

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 267
    invoke-virtual {p1}, Lu/aly/dl;->j()Lu/aly/aO;

    .line 270
    :goto_6
    invoke-virtual {p1}, Lu/aly/dl;->l()Lu/aly/cB;

    move-result-object v0

    .line 271
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eqz v1, :cond_44

    .line 274
    iget-short v1, v0, Lu/aly/cB;->c:S

    packed-switch v1, :pswitch_data_94

    .line 292
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    .line 294
    :goto_18
    invoke-virtual {p1}, Lu/aly/dl;->m()V

    goto :goto_6

    .line 276
    :pswitch_1c
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v3, :cond_26

    .line 280
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_18

    .line 277
    :cond_26
    invoke-virtual {p1}, Lu/aly/dl;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/bo;->a:I

    .line 278
    invoke-virtual {p2, v2}, Lu/aly/bo;->a(Z)V

    goto :goto_18

    .line 284
    :pswitch_30
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v3, :cond_3a

    .line 288
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_18

    .line 285
    :cond_3a
    invoke-virtual {p1}, Lu/aly/dl;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/bo;->b:I

    .line 286
    invoke-virtual {p2, v2}, Lu/aly/bo;->bZE(Z)V

    goto :goto_18

    .line 296
    :cond_44
    invoke-virtual {p1}, Lu/aly/dl;->k()V

    .line 299
    invoke-virtual {p2}, Lu/aly/bo;->e()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 302
    invoke-virtual {p2}, Lu/aly/bo;->i()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 305
    invoke-virtual {p2}, Lu/aly/bo;->j()V

    .line 306
    return-void

    .line 300
    :cond_57
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'upload_traffic\' was not found in serialized data! Struct: "

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

    .line 303
    :cond_75
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'download_traffic\' was not found in serialized data! Struct: "

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

    .line 274
    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_30
    .end packed-switch
.end method

.method public cba(Lu/aly/dl;Lu/aly/bo;)V
    .registers 4

    .prologue
    .line 309
    invoke-virtual {p2}, Lu/aly/bo;->j()V

    .line 311
    invoke-static {}, Lu/aly/bo;->k()Lu/aly/aO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQV(Lu/aly/aO;)V

    .line 312
    invoke-static {}, Lu/aly/bo;->l()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 313
    iget v0, p2, Lu/aly/bo;->a:I

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(I)V

    .line 314
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 315
    invoke-static {}, Lu/aly/bo;->m()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 316
    iget v0, p2, Lu/aly/bo;->b:I

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(I)V

    .line 317
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 318
    invoke-virtual {p1}, Lu/aly/dl;->d()V

    .line 319
    invoke-virtual {p1}, Lu/aly/dl;->b()V

    .line 320
    return-void
.end method

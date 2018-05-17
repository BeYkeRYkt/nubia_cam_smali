.class Lu/aly/ca;
.super Lu/aly/b;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 221
    invoke-direct {p0}, Lu/aly/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/q;)V
    .registers 2

    .prologue
    .line 221
    invoke-direct {p0}, Lu/aly/ca;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 221
    check-cast p2, Lu/aly/ao;

    invoke-virtual {p0, p1, p2}, Lu/aly/ca;->bYa(Lu/aly/dl;Lu/aly/ao;)V

    return-void
.end method

.method public synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 221
    check-cast p2, Lu/aly/ao;

    invoke-virtual {p0, p1, p2}, Lu/aly/ca;->bXZ(Lu/aly/dl;Lu/aly/ao;)V

    return-void
.end method

.method public bXZ(Lu/aly/dl;Lu/aly/ao;)V
    .registers 6

    .prologue
    .line 225
    invoke-virtual {p1}, Lu/aly/dl;->j()Lu/aly/aO;

    .line 228
    :goto_3
    invoke-virtual {p1}, Lu/aly/dl;->l()Lu/aly/cB;

    move-result-object v0

    .line 229
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eqz v1, :cond_30

    .line 232
    iget-short v1, v0, Lu/aly/cB;->c:S

    packed-switch v1, :pswitch_data_5c

    .line 242
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    .line 244
    :goto_15
    invoke-virtual {p1}, Lu/aly/dl;->m()V

    goto :goto_3

    .line 234
    :pswitch_19
    iget-byte v1, v0, Lu/aly/cB;->b:B

    const/16 v2, 0xa

    if-eq v1, v2, :cond_25

    .line 238
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_15

    .line 235
    :cond_25
    invoke-virtual {p1}, Lu/aly/dl;->bRm()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ao;->a:J

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lu/aly/ao;->a(Z)V

    goto :goto_15

    .line 246
    :cond_30
    invoke-virtual {p1}, Lu/aly/dl;->k()V

    .line 249
    invoke-virtual {p2}, Lu/aly/ao;->e()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 252
    invoke-virtual {p2}, Lu/aly/ao;->f()V

    .line 253
    return-void

    .line 250
    :cond_3d
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

    .line 232
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_19
    .end packed-switch
.end method

.method public bYa(Lu/aly/dl;Lu/aly/ao;)V
    .registers 5

    .prologue
    .line 256
    invoke-virtual {p2}, Lu/aly/ao;->f()V

    .line 258
    invoke-static {}, Lu/aly/ao;->h()Lu/aly/aO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQV(Lu/aly/aO;)V

    .line 259
    invoke-static {}, Lu/aly/ao;->i()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 260
    iget-wide v0, p2, Lu/aly/ao;->a:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dl;->a(J)V

    .line 261
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 262
    invoke-virtual {p1}, Lu/aly/dl;->d()V

    .line 263
    invoke-virtual {p1}, Lu/aly/dl;->b()V

    .line 264
    return-void
.end method

.class Lu/aly/cK;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 273
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cn;)V
    .registers 2

    .prologue
    .line 273
    invoke-direct {p0}, Lu/aly/cK;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 273
    check-cast p2, Lu/aly/as;

    invoke-virtual {p0, p1, p2}, Lu/aly/cK;->bYZ(Lu/aly/dl;Lu/aly/as;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 273
    check-cast p2, Lu/aly/as;

    invoke-virtual {p0, p1, p2}, Lu/aly/cK;->bZa(Lu/aly/dl;Lu/aly/as;)V

    return-void
.end method

.method public bYZ(Lu/aly/dl;Lu/aly/as;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 277
    check-cast p1, Lu/aly/aC;

    .line 278
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 279
    invoke-virtual {p2}, Lu/aly/as;->e()Z

    move-result v1

    if-nez v1, :cond_19

    :goto_e
    const/4 v1, 0x1

    .line 282
    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->bUD(Ljava/util/BitSet;I)V

    .line 283
    invoke-virtual {p2}, Lu/aly/as;->e()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 286
    :goto_18
    return-void

    .line 280
    :cond_19
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_e

    .line 284
    :cond_1d
    iget-object v0, p2, Lu/aly/as;->a:Lu/aly/bf;

    invoke-virtual {v0, p1}, Lu/aly/bf;->bQL(Lu/aly/dl;)V

    goto :goto_18
.end method

.method public bZa(Lu/aly/dl;Lu/aly/as;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 290
    check-cast p1, Lu/aly/aC;

    .line 291
    invoke-virtual {p1, v2}, Lu/aly/aC;->bUE(I)Ljava/util/BitSet;

    move-result-object v0

    .line 292
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 297
    :goto_e
    return-void

    .line 293
    :cond_f
    new-instance v0, Lu/aly/bf;

    invoke-direct {v0}, Lu/aly/bf;-><init>()V

    iput-object v0, p2, Lu/aly/as;->a:Lu/aly/bf;

    .line 294
    iget-object v0, p2, Lu/aly/as;->a:Lu/aly/bf;

    invoke-virtual {v0, p1}, Lu/aly/bf;->bQK(Lu/aly/dl;)V

    .line 295
    invoke-virtual {p2, v2}, Lu/aly/as;->a(Z)V

    goto :goto_e
.end method

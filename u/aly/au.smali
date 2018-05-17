.class Lu/aly/au;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 442
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/V;)V
    .registers 2

    .prologue
    .line 442
    invoke-direct {p0}, Lu/aly/au;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 442
    check-cast p2, Lu/aly/bc;

    invoke-virtual {p0, p1, p2}, Lu/aly/au;->bUz(Lu/aly/dl;Lu/aly/bc;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 442
    check-cast p2, Lu/aly/bc;

    invoke-virtual {p0, p1, p2}, Lu/aly/au;->bUA(Lu/aly/dl;Lu/aly/bc;)V

    return-void
.end method

.method public bUA(Lu/aly/dl;Lu/aly/bc;)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 461
    check-cast p1, Lu/aly/aC;

    .line 463
    new-instance v1, Lu/aly/dh;

    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3, v0}, Lu/aly/dh;-><init>(BBI)V

    .line 464
    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lu/aly/dh;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bc;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 465
    :goto_1c
    iget v2, v1, Lu/aly/dh;->c:I

    if-lt v0, v2, :cond_36

    .line 475
    invoke-virtual {p2, v5}, Lu/aly/bc;->a(Z)V

    .line 476
    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/bc;->b:I

    .line 477
    invoke-virtual {p2, v5}, Lu/aly/bc;->bZx(Z)V

    .line 478
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bc;->c:Ljava/lang/String;

    .line 479
    invoke-virtual {p2, v5}, Lu/aly/bc;->bZy(Z)V

    .line 480
    return-void

    .line 469
    :cond_36
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v2

    .line 470
    new-instance v3, Lu/aly/bd;

    invoke-direct {v3}, Lu/aly/bd;-><init>()V

    .line 471
    invoke-virtual {v3, p1}, Lu/aly/bd;->bQK(Lu/aly/dl;)V

    .line 472
    iget-object v4, p2, Lu/aly/bc;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method public bUz(Lu/aly/dl;Lu/aly/bc;)V
    .registers 6

    .prologue
    .line 446
    check-cast p1, Lu/aly/aC;

    .line 448
    iget-object v0, p2, Lu/aly/bc;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 449
    iget-object v0, p2, Lu/aly/bc;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_26

    .line 455
    iget v0, p2, Lu/aly/bc;->b:I

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 456
    iget-object v0, p2, Lu/aly/bc;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 457
    return-void

    .line 449
    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 451
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 452
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bd;

    invoke-virtual {v0, p1}, Lu/aly/bd;->bQL(Lu/aly/dl;)V

    goto :goto_15
.end method

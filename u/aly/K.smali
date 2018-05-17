.class Lu/aly/K;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 396
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/aG;)V
    .registers 2

    .prologue
    .line 396
    invoke-direct {p0}, Lu/aly/K;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 396
    check-cast p2, Lu/aly/bd;

    invoke-virtual {p0, p1, p2}, Lu/aly/K;->bSX(Lu/aly/dl;Lu/aly/bd;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 396
    check-cast p2, Lu/aly/bd;

    invoke-virtual {p0, p1, p2}, Lu/aly/K;->bSY(Lu/aly/dl;Lu/aly/bd;)V

    return-void
.end method

.method public bSX(Lu/aly/dl;Lu/aly/bd;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 400
    check-cast p1, Lu/aly/aC;

    .line 401
    iget-wide v0, p2, Lu/aly/bd;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->a(J)V

    .line 402
    iget-object v0, p2, Lu/aly/bd;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 403
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 404
    invoke-virtual {p2}, Lu/aly/bd;->e()Z

    move-result v1

    if-nez v1, :cond_23

    :goto_18
    const/4 v1, 0x1

    .line 407
    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->bUD(Ljava/util/BitSet;I)V

    .line 408
    invoke-virtual {p2}, Lu/aly/bd;->e()Z

    move-result v0

    if-nez v0, :cond_27

    .line 411
    :goto_22
    return-void

    .line 405
    :cond_23
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_18

    .line 409
    :cond_27
    iget-object v0, p2, Lu/aly/bd;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    goto :goto_22
.end method

.method public bSY(Lu/aly/dl;Lu/aly/bd;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 415
    check-cast p1, Lu/aly/aC;

    .line 416
    invoke-virtual {p1}, Lu/aly/aC;->bRm()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bd;->b:J

    .line 417
    invoke-virtual {p2, v2}, Lu/aly/bd;->cca(Z)V

    .line 418
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bd;->c:Ljava/lang/String;

    .line 419
    invoke-virtual {p2, v2}, Lu/aly/bd;->ccb(Z)V

    .line 420
    invoke-virtual {p1, v2}, Lu/aly/aC;->bUE(I)Ljava/util/BitSet;

    move-result-object v0

    .line 421
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 425
    :goto_20
    return-void

    .line 422
    :cond_21
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bd;->a:Ljava/lang/String;

    .line 423
    invoke-virtual {p2, v2}, Lu/aly/bd;->a(Z)V

    goto :goto_20
.end method

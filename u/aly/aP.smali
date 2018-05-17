.class Lu/aly/aP;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 388
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/l;)V
    .registers 2

    .prologue
    .line 388
    invoke-direct {p0}, Lu/aly/aP;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 388
    check-cast p2, Lu/aly/ar;

    invoke-virtual {p0, p1, p2}, Lu/aly/aP;->bVI(Lu/aly/dl;Lu/aly/ar;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 388
    check-cast p2, Lu/aly/ar;

    invoke-virtual {p0, p1, p2}, Lu/aly/aP;->bVJ(Lu/aly/dl;Lu/aly/ar;)V

    return-void
.end method

.method public bVI(Lu/aly/dl;Lu/aly/ar;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 392
    check-cast p1, Lu/aly/aC;

    .line 393
    iget v0, p2, Lu/aly/ar;->a:I

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 394
    iget v0, p2, Lu/aly/ar;->b:I

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 395
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 396
    invoke-virtual {p2}, Lu/aly/ar;->l()Z

    move-result v1

    if-nez v1, :cond_23

    :goto_18
    const/4 v1, 0x1

    .line 399
    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->bUD(Ljava/util/BitSet;I)V

    .line 400
    invoke-virtual {p2}, Lu/aly/ar;->l()Z

    move-result v0

    if-nez v0, :cond_27

    .line 403
    :goto_22
    return-void

    .line 397
    :cond_23
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_18

    .line 401
    :cond_27
    iget v0, p2, Lu/aly/ar;->c:I

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    goto :goto_22
.end method

.method public bVJ(Lu/aly/dl;Lu/aly/ar;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 407
    check-cast p1, Lu/aly/aC;

    .line 408
    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/ar;->a:I

    .line 409
    invoke-virtual {p2, v1}, Lu/aly/ar;->a(Z)V

    .line 410
    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/ar;->b:I

    .line 411
    invoke-virtual {p2, v1}, Lu/aly/ar;->bYM(Z)V

    .line 412
    invoke-virtual {p1, v1}, Lu/aly/aC;->bUE(I)Ljava/util/BitSet;

    move-result-object v0

    .line 413
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 417
    :goto_20
    return-void

    .line 414
    :cond_21
    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/ar;->c:I

    .line 415
    invoke-virtual {p2, v1}, Lu/aly/ar;->bYO(Z)V

    goto :goto_20
.end method

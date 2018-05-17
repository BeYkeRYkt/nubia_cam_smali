.class Lu/aly/cM;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 386
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cl;)V
    .registers 2

    .prologue
    .line 386
    invoke-direct {p0}, Lu/aly/cM;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 386
    check-cast p2, Lu/aly/bg;

    invoke-virtual {p0, p1, p2}, Lu/aly/cM;->bZb(Lu/aly/dl;Lu/aly/bg;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 386
    check-cast p2, Lu/aly/bg;

    invoke-virtual {p0, p1, p2}, Lu/aly/cM;->bZc(Lu/aly/dl;Lu/aly/bg;)V

    return-void
.end method

.method public bZb(Lu/aly/dl;Lu/aly/bg;)V
    .registers 5

    .prologue
    .line 390
    check-cast p1, Lu/aly/aC;

    .line 391
    iget-wide v0, p2, Lu/aly/bg;->a:D

    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->bRb(D)V

    .line 392
    iget-wide v0, p2, Lu/aly/bg;->b:D

    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->bRb(D)V

    .line 393
    iget-wide v0, p2, Lu/aly/bg;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->a(J)V

    .line 394
    return-void
.end method

.method public bZc(Lu/aly/dl;Lu/aly/bg;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 398
    check-cast p1, Lu/aly/aC;

    .line 399
    invoke-virtual {p1}, Lu/aly/aC;->bRn()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bg;->a:D

    .line 400
    invoke-virtual {p2, v2}, Lu/aly/bg;->a(Z)V

    .line 401
    invoke-virtual {p1}, Lu/aly/aC;->bRn()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bg;->b:D

    .line 402
    invoke-virtual {p2, v2}, Lu/aly/bg;->bSr(Z)V

    .line 403
    invoke-virtual {p1}, Lu/aly/aC;->bRm()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bg;->c:J

    .line 404
    invoke-virtual {p2, v2}, Lu/aly/bg;->bSs(Z)V

    .line 405
    return-void
.end method

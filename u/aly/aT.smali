.class Lu/aly/aT;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 329
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/s;)V
    .registers 2

    .prologue
    .line 329
    invoke-direct {p0}, Lu/aly/aT;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 329
    check-cast p2, Lu/aly/bf;

    invoke-virtual {p0, p1, p2}, Lu/aly/aT;->bVK(Lu/aly/dl;Lu/aly/bf;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 329
    check-cast p2, Lu/aly/bf;

    invoke-virtual {p0, p1, p2}, Lu/aly/aT;->bVL(Lu/aly/dl;Lu/aly/bf;)V

    return-void
.end method

.method public bVK(Lu/aly/dl;Lu/aly/bf;)V
    .registers 5

    .prologue
    .line 333
    check-cast p1, Lu/aly/aC;

    .line 334
    iget v0, p2, Lu/aly/bf;->a:I

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 335
    iget-wide v0, p2, Lu/aly/bf;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->a(J)V

    .line 336
    return-void
.end method

.method public bVL(Lu/aly/dl;Lu/aly/bf;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 340
    check-cast p1, Lu/aly/aC;

    .line 341
    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/bf;->a:I

    .line 342
    invoke-virtual {p2, v2}, Lu/aly/bf;->a(Z)V

    .line 343
    invoke-virtual {p1}, Lu/aly/aC;->bRm()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bf;->b:J

    .line 344
    invoke-virtual {p2, v2}, Lu/aly/bf;->bZI(Z)V

    .line 345
    return-void
.end method

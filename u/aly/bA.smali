.class Lu/aly/bA;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 274
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/q;)V
    .registers 2

    .prologue
    .line 274
    invoke-direct {p0}, Lu/aly/bA;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 274
    check-cast p2, Lu/aly/ao;

    invoke-virtual {p0, p1, p2}, Lu/aly/bA;->bWe(Lu/aly/dl;Lu/aly/ao;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 274
    check-cast p2, Lu/aly/ao;

    invoke-virtual {p0, p1, p2}, Lu/aly/bA;->bWf(Lu/aly/dl;Lu/aly/ao;)V

    return-void
.end method

.method public bWe(Lu/aly/dl;Lu/aly/ao;)V
    .registers 5

    .prologue
    .line 278
    check-cast p1, Lu/aly/aC;

    .line 279
    iget-wide v0, p2, Lu/aly/ao;->a:J

    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->a(J)V

    .line 280
    return-void
.end method

.method public bWf(Lu/aly/dl;Lu/aly/ao;)V
    .registers 5

    .prologue
    .line 284
    check-cast p1, Lu/aly/aC;

    .line 285
    invoke-virtual {p1}, Lu/aly/aC;->bRm()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ao;->a:J

    .line 286
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lu/aly/ao;->a(Z)V

    .line 287
    return-void
.end method

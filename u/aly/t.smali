.class Lu/aly/t;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 335
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/aQ;)V
    .registers 2

    .prologue
    .line 335
    invoke-direct {p0}, Lu/aly/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 335
    check-cast p2, Lu/aly/bi;

    invoke-virtual {p0, p1, p2}, Lu/aly/t;->bRE(Lu/aly/dl;Lu/aly/bi;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 335
    check-cast p2, Lu/aly/bi;

    invoke-virtual {p0, p1, p2}, Lu/aly/t;->bRF(Lu/aly/dl;Lu/aly/bi;)V

    return-void
.end method

.method public bRE(Lu/aly/dl;Lu/aly/bi;)V
    .registers 5

    .prologue
    .line 339
    check-cast p1, Lu/aly/aC;

    .line 340
    iget-object v0, p2, Lu/aly/bi;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 341
    iget-wide v0, p2, Lu/aly/bi;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->a(J)V

    .line 342
    return-void
.end method

.method public bRF(Lu/aly/dl;Lu/aly/bi;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 346
    check-cast p1, Lu/aly/aC;

    .line 347
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bi;->a:Ljava/lang/String;

    .line 348
    invoke-virtual {p2, v2}, Lu/aly/bi;->a(Z)V

    .line 349
    invoke-virtual {p1}, Lu/aly/aC;->bRm()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bi;->b:J

    .line 350
    invoke-virtual {p2, v2}, Lu/aly/bi;->bVB(Z)V

    .line 351
    return-void
.end method

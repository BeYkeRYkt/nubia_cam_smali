.class Lu/aly/bM;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 260
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cD;)V
    .registers 2

    .prologue
    .line 260
    invoke-direct {p0}, Lu/aly/bM;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 260
    check-cast p2, Lu/aly/ct;

    invoke-virtual {p0, p1, p2}, Lu/aly/bM;->bXF(Lu/aly/dl;Lu/aly/ct;)V

    return-void
.end method

.method public synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 260
    check-cast p2, Lu/aly/ct;

    invoke-virtual {p0, p1, p2}, Lu/aly/bM;->bXE(Lu/aly/dl;Lu/aly/ct;)V

    return-void
.end method

.method public bXE(Lu/aly/dl;Lu/aly/ct;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 264
    iput-object v0, p2, Lu/aly/ct;->c:Lu/aly/aF;

    .line 265
    iput-object v0, p2, Lu/aly/ct;->b:Ljava/lang/Object;

    .line 266
    invoke-virtual {p1}, Lu/aly/dl;->bRk()S

    move-result v0

    .line 267
    invoke-virtual {p2, p1, v0}, Lu/aly/ct;->bUI(Lu/aly/dl;S)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ct;->b:Ljava/lang/Object;

    .line 268
    iget-object v1, p2, Lu/aly/ct;->b:Ljava/lang/Object;

    if-nez v1, :cond_14

    .line 271
    :goto_13
    return-void

    .line 269
    :cond_14
    invoke-virtual {p2, v0}, Lu/aly/ct;->bUL(S)Lu/aly/aF;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ct;->c:Lu/aly/aF;

    goto :goto_13
.end method

.method public bXF(Lu/aly/dl;Lu/aly/ct;)V
    .registers 5

    .prologue
    .line 275
    invoke-virtual {p2}, Lu/aly/ct;->i()Lu/aly/aF;

    move-result-object v0

    if-nez v0, :cond_f

    .line 276
    :cond_6
    new-instance v0, Lu/aly/dj;

    const-string/jumbo v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_f
    invoke-virtual {p2}, Lu/aly/ct;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 278
    iget-object v0, p2, Lu/aly/ct;->c:Lu/aly/aF;

    invoke-interface {v0}, Lu/aly/aF;->a()S

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bRa(S)V

    .line 279
    invoke-virtual {p2, p1}, Lu/aly/ct;->bUJ(Lu/aly/dl;)V

    .line 280
    return-void
.end method

.class Lu/aly/dt;
.super Lu/aly/b;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 216
    invoke-direct {p0}, Lu/aly/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cD;)V
    .registers 2

    .prologue
    .line 216
    invoke-direct {p0}, Lu/aly/dt;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 216
    check-cast p2, Lu/aly/ct;

    invoke-virtual {p0, p1, p2}, Lu/aly/dt;->cbc(Lu/aly/dl;Lu/aly/ct;)V

    return-void
.end method

.method public synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 216
    check-cast p2, Lu/aly/ct;

    invoke-virtual {p0, p1, p2}, Lu/aly/dt;->cbb(Lu/aly/dl;Lu/aly/ct;)V

    return-void
.end method

.method public cbb(Lu/aly/dl;Lu/aly/ct;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 220
    iput-object v0, p2, Lu/aly/ct;->c:Lu/aly/aF;

    .line 221
    iput-object v0, p2, Lu/aly/ct;->b:Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Lu/aly/dl;->j()Lu/aly/aO;

    .line 225
    invoke-virtual {p1}, Lu/aly/dl;->l()Lu/aly/cB;

    move-result-object v0

    .line 227
    invoke-virtual {p2, p1, v0}, Lu/aly/ct;->bUG(Lu/aly/dl;Lu/aly/cB;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ct;->b:Ljava/lang/Object;

    .line 228
    iget-object v1, p2, Lu/aly/ct;->b:Ljava/lang/Object;

    if-nez v1, :cond_20

    .line 232
    :goto_16
    invoke-virtual {p1}, Lu/aly/dl;->m()V

    .line 236
    invoke-virtual {p1}, Lu/aly/dl;->l()Lu/aly/cB;

    .line 237
    invoke-virtual {p1}, Lu/aly/dl;->k()V

    .line 238
    return-void

    .line 229
    :cond_20
    iget-short v0, v0, Lu/aly/cB;->c:S

    invoke-virtual {p2, v0}, Lu/aly/ct;->bUL(S)Lu/aly/aF;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ct;->c:Lu/aly/aF;

    goto :goto_16
.end method

.method public cbc(Lu/aly/dl;Lu/aly/ct;)V
    .registers 5

    .prologue
    .line 242
    invoke-virtual {p2}, Lu/aly/ct;->i()Lu/aly/aF;

    move-result-object v0

    if-nez v0, :cond_f

    .line 243
    :cond_6
    new-instance v0, Lu/aly/dj;

    const-string/jumbo v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_f
    invoke-virtual {p2}, Lu/aly/ct;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 245
    invoke-virtual {p2}, Lu/aly/ct;->c()Lu/aly/aO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQV(Lu/aly/aO;)V

    .line 246
    iget-object v0, p2, Lu/aly/ct;->c:Lu/aly/aF;

    invoke-virtual {p2, v0}, Lu/aly/ct;->bUK(Lu/aly/aF;)Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 247
    invoke-virtual {p2, p1}, Lu/aly/ct;->bUH(Lu/aly/dl;)V

    .line 248
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 249
    invoke-virtual {p1}, Lu/aly/dl;->d()V

    .line 250
    invoke-virtual {p1}, Lu/aly/dl;->b()V

    .line 251
    return-void
.end method

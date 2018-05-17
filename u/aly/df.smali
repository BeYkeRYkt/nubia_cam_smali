.class Lu/aly/df;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 816
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cz;)V
    .registers 2

    .prologue
    .line 816
    invoke-direct {p0}, Lu/aly/df;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 816
    check-cast p2, Lu/aly/br;

    invoke-virtual {p0, p1, p2}, Lu/aly/df;->bZv(Lu/aly/dl;Lu/aly/br;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 816
    check-cast p2, Lu/aly/br;

    invoke-virtual {p0, p1, p2}, Lu/aly/df;->bZw(Lu/aly/dl;Lu/aly/br;)V

    return-void
.end method

.method public bZv(Lu/aly/dl;Lu/aly/br;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 820
    check-cast p1, Lu/aly/aC;

    .line 821
    iget-object v0, p2, Lu/aly/br;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 822
    iget-object v0, p2, Lu/aly/br;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 823
    iget-object v0, p2, Lu/aly/br;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 824
    iget v0, p2, Lu/aly/br;->d:I

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 825
    iget v0, p2, Lu/aly/br;->e:I

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 826
    iget v0, p2, Lu/aly/br;->f:I

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 827
    iget-object v0, p2, Lu/aly/br;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/aC;->bRc(Ljava/nio/ByteBuffer;)V

    .line 828
    iget-object v0, p2, Lu/aly/br;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 829
    iget-object v0, p2, Lu/aly/br;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 830
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 831
    invoke-virtual {p2}, Lu/aly/br;->cbx()Z

    move-result v1

    if-nez v1, :cond_46

    :goto_3b
    const/4 v1, 0x1

    .line 834
    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->bUD(Ljava/util/BitSet;I)V

    .line 835
    invoke-virtual {p2}, Lu/aly/br;->cbx()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 838
    :goto_45
    return-void

    .line 832
    :cond_46
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_3b

    .line 836
    :cond_4a
    iget v0, p2, Lu/aly/br;->j:I

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    goto :goto_45
.end method

.method public bZw(Lu/aly/dl;Lu/aly/br;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 842
    check-cast p1, Lu/aly/aC;

    .line 843
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->a:Ljava/lang/String;

    .line 844
    invoke-virtual {p2, v1}, Lu/aly/br;->a(Z)V

    .line 845
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->b:Ljava/lang/String;

    .line 846
    invoke-virtual {p2, v1}, Lu/aly/br;->cbf(Z)V

    .line 847
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->c:Ljava/lang/String;

    .line 848
    invoke-virtual {p2, v1}, Lu/aly/br;->cbh(Z)V

    .line 849
    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/br;->d:I

    .line 850
    invoke-virtual {p2, v1}, Lu/aly/br;->cbj(Z)V

    .line 851
    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/br;->e:I

    .line 852
    invoke-virtual {p2, v1}, Lu/aly/br;->cbm(Z)V

    .line 853
    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/br;->f:I

    .line 854
    invoke-virtual {p2, v1}, Lu/aly/br;->cbp(Z)V

    .line 855
    invoke-virtual {p1}, Lu/aly/aC;->bRq()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->g:Ljava/nio/ByteBuffer;

    .line 856
    invoke-virtual {p2, v1}, Lu/aly/br;->cbr(Z)V

    .line 857
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->h:Ljava/lang/String;

    .line 858
    invoke-virtual {p2, v1}, Lu/aly/br;->cbt(Z)V

    .line 859
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->i:Ljava/lang/String;

    .line 860
    invoke-virtual {p2, v1}, Lu/aly/br;->cbv(Z)V

    .line 861
    invoke-virtual {p1, v1}, Lu/aly/aC;->bUE(I)Ljava/util/BitSet;

    move-result-object v0

    .line 862
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_60

    .line 866
    :goto_5f
    return-void

    .line 863
    :cond_60
    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/br;->j:I

    .line 864
    invoke-virtual {p2, v1}, Lu/aly/br;->cby(Z)V

    goto :goto_5f
.end method

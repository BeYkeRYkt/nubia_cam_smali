.class Lu/aly/aX;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 708
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/S;)V
    .registers 2

    .prologue
    .line 708
    invoke-direct {p0}, Lu/aly/aX;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 708
    check-cast p2, Lu/aly/bn;

    invoke-virtual {p0, p1, p2}, Lu/aly/aX;->bVQ(Lu/aly/dl;Lu/aly/bn;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 708
    check-cast p2, Lu/aly/bn;

    invoke-virtual {p0, p1, p2}, Lu/aly/aX;->bVR(Lu/aly/dl;Lu/aly/bn;)V

    return-void
.end method

.method public bVQ(Lu/aly/dl;Lu/aly/bn;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 712
    check-cast p1, Lu/aly/aC;

    .line 713
    iget-object v0, p2, Lu/aly/bn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 714
    iget-wide v0, p2, Lu/aly/bn;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->a(J)V

    .line 715
    iget-wide v0, p2, Lu/aly/bn;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->a(J)V

    .line 716
    iget-wide v0, p2, Lu/aly/bn;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->a(J)V

    .line 717
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 718
    invoke-virtual {p2}, Lu/aly/bn;->bRR()Z

    move-result v1

    if-nez v1, :cond_45

    .line 721
    :goto_22
    invoke-virtual {p2}, Lu/aly/bn;->bRV()Z

    move-result v1

    if-nez v1, :cond_49

    .line 724
    :goto_28
    invoke-virtual {p2}, Lu/aly/bn;->bRY()Z

    move-result v1

    if-nez v1, :cond_4e

    :goto_2e
    const/4 v1, 0x3

    .line 727
    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->bUD(Ljava/util/BitSet;I)V

    .line 728
    invoke-virtual {p2}, Lu/aly/bn;->bRR()Z

    move-result v0

    if-nez v0, :cond_53

    .line 737
    :cond_38
    invoke-virtual {p2}, Lu/aly/bn;->bRV()Z

    move-result v0

    if-nez v0, :cond_72

    .line 746
    :cond_3e
    invoke-virtual {p2}, Lu/aly/bn;->bRY()Z

    move-result v0

    if-nez v0, :cond_91

    .line 749
    :goto_44
    return-void

    .line 719
    :cond_45
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_22

    :cond_49
    const/4 v1, 0x1

    .line 722
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_28

    :cond_4e
    const/4 v1, 0x2

    .line 725
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_2e

    .line 730
    :cond_53
    iget-object v0, p2, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 731
    iget-object v0, p2, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bi;

    .line 733
    invoke-virtual {v0, p1}, Lu/aly/bi;->bQL(Lu/aly/dl;)V

    goto :goto_62

    .line 739
    :cond_72
    iget-object v0, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 740
    iget-object v0, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bg;

    .line 742
    invoke-virtual {v0, p1}, Lu/aly/bg;->bQL(Lu/aly/dl;)V

    goto :goto_81

    .line 747
    :cond_91
    iget-object v0, p2, Lu/aly/bn;->g:Lu/aly/bo;

    invoke-virtual {v0, p1}, Lu/aly/bo;->bQL(Lu/aly/dl;)V

    goto :goto_44
.end method

.method public bVR(Lu/aly/dl;Lu/aly/bn;)V
    .registers 11

    .prologue
    const/16 v7, 0xc

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 753
    check-cast p1, Lu/aly/aC;

    .line 754
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bn;->a:Ljava/lang/String;

    .line 755
    invoke-virtual {p2, v6}, Lu/aly/bn;->a(Z)V

    .line 756
    invoke-virtual {p1}, Lu/aly/aC;->bRm()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bn;->b:J

    .line 757
    invoke-virtual {p2, v6}, Lu/aly/bn;->bRK(Z)V

    .line 758
    invoke-virtual {p1}, Lu/aly/aC;->bRm()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bn;->c:J

    .line 759
    invoke-virtual {p2, v6}, Lu/aly/bn;->bRM(Z)V

    .line 760
    invoke-virtual {p1}, Lu/aly/aC;->bRm()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bn;->d:J

    .line 761
    invoke-virtual {p2, v6}, Lu/aly/bn;->bRP(Z)V

    const/4 v0, 0x3

    .line 762
    invoke-virtual {p1, v0}, Lu/aly/aC;->bUE(I)Ljava/util/BitSet;

    move-result-object v2

    .line 763
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_43

    .line 777
    :goto_35
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_6e

    :goto_3b
    const/4 v0, 0x2

    .line 791
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_98

    .line 796
    :goto_42
    return-void

    .line 765
    :cond_43
    new-instance v3, Lu/aly/bP;

    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lu/aly/bP;-><init>(BI)V

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lu/aly/bP;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bn;->e:Ljava/util/List;

    move v0, v1

    .line 767
    :goto_56
    iget v4, v3, Lu/aly/bP;->b:I

    if-lt v0, v4, :cond_5e

    .line 775
    invoke-virtual {p2, v6}, Lu/aly/bn;->bRS(Z)V

    goto :goto_35

    .line 770
    :cond_5e
    new-instance v4, Lu/aly/bi;

    invoke-direct {v4}, Lu/aly/bi;-><init>()V

    .line 771
    invoke-virtual {v4, p1}, Lu/aly/bi;->bQK(Lu/aly/dl;)V

    .line 772
    iget-object v5, p2, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 779
    :cond_6e
    new-instance v0, Lu/aly/bP;

    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v3

    invoke-direct {v0, v7, v3}, Lu/aly/bP;-><init>(BI)V

    .line 780
    new-instance v3, Ljava/util/ArrayList;

    iget v4, v0, Lu/aly/bP;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lu/aly/bn;->f:Ljava/util/List;

    .line 781
    :goto_80
    iget v3, v0, Lu/aly/bP;->b:I

    if-lt v1, v3, :cond_88

    .line 789
    invoke-virtual {p2, v6}, Lu/aly/bn;->bRW(Z)V

    goto :goto_3b

    .line 784
    :cond_88
    new-instance v3, Lu/aly/bg;

    invoke-direct {v3}, Lu/aly/bg;-><init>()V

    .line 785
    invoke-virtual {v3, p1}, Lu/aly/bg;->bQK(Lu/aly/dl;)V

    .line 786
    iget-object v4, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    add-int/lit8 v1, v1, 0x1

    goto :goto_80

    .line 792
    :cond_98
    new-instance v0, Lu/aly/bo;

    invoke-direct {v0}, Lu/aly/bo;-><init>()V

    iput-object v0, p2, Lu/aly/bn;->g:Lu/aly/bo;

    .line 793
    iget-object v0, p2, Lu/aly/bn;->g:Lu/aly/bo;

    invoke-virtual {v0, p1}, Lu/aly/bo;->bQK(Lu/aly/dl;)V

    .line 794
    invoke-virtual {p2, v6}, Lu/aly/bn;->bRZ(Z)V

    goto :goto_42
.end method

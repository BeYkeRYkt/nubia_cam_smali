.class Lu/aly/bI;
.super Lu/aly/dC;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 570
    invoke-direct {p0}, Lu/aly/dC;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/dJ;)V
    .registers 2

    .prologue
    .line 570
    invoke-direct {p0}, Lu/aly/bI;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 570
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/bI;->bWp(Lu/aly/dl;Lu/aly/be;)V

    return-void
.end method

.method public bridge synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 570
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/bI;->bWq(Lu/aly/dl;Lu/aly/be;)V

    return-void
.end method

.method public bWp(Lu/aly/dl;Lu/aly/be;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 574
    check-cast p1, Lu/aly/aC;

    .line 575
    iget-object v0, p2, Lu/aly/be;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(Ljava/lang/String;)V

    .line 576
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 577
    invoke-virtual {p2}, Lu/aly/be;->k()Z

    move-result v1

    if-nez v1, :cond_36

    .line 580
    :goto_13
    invoke-virtual {p2}, Lu/aly/be;->bXp()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 583
    :goto_19
    invoke-virtual {p2}, Lu/aly/be;->bXu()Z

    move-result v1

    if-nez v1, :cond_3f

    :goto_1f
    const/4 v1, 0x3

    .line 586
    invoke-virtual {p1, v0, v1}, Lu/aly/aC;->bUD(Ljava/util/BitSet;I)V

    .line 587
    invoke-virtual {p2}, Lu/aly/be;->k()Z

    move-result v0

    if-nez v0, :cond_44

    .line 596
    :cond_29
    invoke-virtual {p2}, Lu/aly/be;->bXp()Z

    move-result v0

    if-nez v0, :cond_63

    .line 605
    :cond_2f
    invoke-virtual {p2}, Lu/aly/be;->bXu()Z

    move-result v0

    if-nez v0, :cond_82

    .line 614
    :cond_35
    return-void

    .line 578
    :cond_36
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_13

    :cond_3a
    const/4 v1, 0x1

    .line 581
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_19

    :cond_3f
    const/4 v1, 0x2

    .line 584
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_1f

    .line 589
    :cond_44
    iget-object v0, p2, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 590
    iget-object v0, p2, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av;

    .line 592
    invoke-virtual {v0, p1}, Lu/aly/av;->bQL(Lu/aly/dl;)V

    goto :goto_53

    .line 598
    :cond_63
    iget-object v0, p2, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 599
    iget-object v0, p2, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ax;

    .line 601
    invoke-virtual {v0, p1}, Lu/aly/ax;->bQL(Lu/aly/dl;)V

    goto :goto_72

    .line 607
    :cond_82
    iget-object v0, p2, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/aC;->a(I)V

    .line 608
    iget-object v0, p2, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_91
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ax;

    .line 610
    invoke-virtual {v0, p1}, Lu/aly/ax;->bQL(Lu/aly/dl;)V

    goto :goto_91
.end method

.method public bWq(Lu/aly/dl;Lu/aly/be;)V
    .registers 11

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 618
    check-cast p1, Lu/aly/aC;

    .line 619
    invoke-virtual {p1}, Lu/aly/aC;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/be;->a:Ljava/lang/String;

    .line 620
    invoke-virtual {p2, v6}, Lu/aly/be;->a(Z)V

    const/4 v0, 0x3

    .line 621
    invoke-virtual {p1, v0}, Lu/aly/aC;->bUE(I)Ljava/util/BitSet;

    move-result-object v2

    .line 622
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 636
    :goto_1a
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_53

    :goto_20
    const/4 v0, 0x2

    .line 650
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 664
    :goto_27
    return-void

    .line 624
    :cond_28
    new-instance v3, Lu/aly/bP;

    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lu/aly/bP;-><init>(BI)V

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lu/aly/bP;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/be;->b:Ljava/util/List;

    move v0, v1

    .line 626
    :goto_3b
    iget v4, v3, Lu/aly/bP;->b:I

    if-lt v0, v4, :cond_43

    .line 634
    invoke-virtual {p2, v6}, Lu/aly/be;->bXn(Z)V

    goto :goto_1a

    .line 629
    :cond_43
    new-instance v4, Lu/aly/av;

    invoke-direct {v4}, Lu/aly/av;-><init>()V

    .line 630
    invoke-virtual {v4, p1}, Lu/aly/av;->bQK(Lu/aly/dl;)V

    .line 631
    iget-object v5, p2, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 638
    :cond_53
    new-instance v3, Lu/aly/bP;

    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lu/aly/bP;-><init>(BI)V

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lu/aly/bP;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/be;->c:Ljava/util/List;

    move v0, v1

    .line 640
    :goto_66
    iget v4, v3, Lu/aly/bP;->b:I

    if-lt v0, v4, :cond_6e

    .line 648
    invoke-virtual {p2, v6}, Lu/aly/be;->bXq(Z)V

    goto :goto_20

    .line 643
    :cond_6e
    new-instance v4, Lu/aly/ax;

    invoke-direct {v4}, Lu/aly/ax;-><init>()V

    .line 644
    invoke-virtual {v4, p1}, Lu/aly/ax;->bQK(Lu/aly/dl;)V

    .line 645
    iget-object v5, p2, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 652
    :cond_7e
    new-instance v0, Lu/aly/bP;

    invoke-virtual {p1}, Lu/aly/aC;->bRl()I

    move-result v2

    invoke-direct {v0, v7, v2}, Lu/aly/bP;-><init>(BI)V

    .line 653
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v0, Lu/aly/bP;->b:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p2, Lu/aly/be;->d:Ljava/util/List;

    .line 654
    :goto_90
    iget v2, v0, Lu/aly/bP;->b:I

    if-lt v1, v2, :cond_98

    .line 662
    invoke-virtual {p2, v6}, Lu/aly/be;->bXv(Z)V

    goto :goto_27

    .line 657
    :cond_98
    new-instance v2, Lu/aly/ax;

    invoke-direct {v2}, Lu/aly/ax;-><init>()V

    .line 658
    invoke-virtual {v2, p1}, Lu/aly/ax;->bQK(Lu/aly/dl;)V

    .line 659
    iget-object v3, p2, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_90
.end method

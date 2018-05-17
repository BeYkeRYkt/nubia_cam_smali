.class Lu/aly/cd;
.super Lu/aly/b;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 532
    invoke-direct {p0}, Lu/aly/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/S;)V
    .registers 2

    .prologue
    .line 532
    invoke-direct {p0}, Lu/aly/cd;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 532
    check-cast p2, Lu/aly/bn;

    invoke-virtual {p0, p1, p2}, Lu/aly/cd;->bYe(Lu/aly/dl;Lu/aly/bn;)V

    return-void
.end method

.method public synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 532
    check-cast p2, Lu/aly/bn;

    invoke-virtual {p0, p1, p2}, Lu/aly/cd;->bYd(Lu/aly/dl;Lu/aly/bn;)V

    return-void
.end method

.method public bYd(Lu/aly/dl;Lu/aly/bn;)V
    .registers 11

    .prologue
    const/16 v7, 0xf

    const/16 v6, 0xa

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 536
    invoke-virtual {p1}, Lu/aly/dl;->j()Lu/aly/aO;

    .line 539
    :goto_9
    invoke-virtual {p1}, Lu/aly/dl;->l()Lu/aly/cB;

    move-result-object v0

    .line 540
    iget-byte v2, v0, Lu/aly/cB;->b:B

    if-eqz v2, :cond_f7

    .line 543
    iget-short v2, v0, Lu/aly/cB;->c:S

    packed-switch v2, :pswitch_data_16a

    .line 624
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    .line 626
    :goto_1b
    invoke-virtual {p1}, Lu/aly/dl;->m()V

    goto :goto_9

    .line 545
    :pswitch_1f
    iget-byte v2, v0, Lu/aly/cB;->b:B

    const/16 v3, 0xb

    if-eq v2, v3, :cond_2b

    .line 549
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_1b

    .line 546
    :cond_2b
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bn;->a:Ljava/lang/String;

    .line 547
    invoke-virtual {p2, v5}, Lu/aly/bn;->a(Z)V

    goto :goto_1b

    .line 553
    :pswitch_35
    iget-byte v2, v0, Lu/aly/cB;->b:B

    if-eq v2, v6, :cond_3f

    .line 557
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_1b

    .line 554
    :cond_3f
    invoke-virtual {p1}, Lu/aly/dl;->bRm()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bn;->b:J

    .line 555
    invoke-virtual {p2, v5}, Lu/aly/bn;->bRK(Z)V

    goto :goto_1b

    .line 561
    :pswitch_49
    iget-byte v2, v0, Lu/aly/cB;->b:B

    if-eq v2, v6, :cond_53

    .line 565
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_1b

    .line 562
    :cond_53
    invoke-virtual {p1}, Lu/aly/dl;->bRm()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bn;->c:J

    .line 563
    invoke-virtual {p2, v5}, Lu/aly/bn;->bRM(Z)V

    goto :goto_1b

    .line 569
    :pswitch_5d
    iget-byte v2, v0, Lu/aly/cB;->b:B

    if-eq v2, v6, :cond_67

    .line 573
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_1b

    .line 570
    :cond_67
    invoke-virtual {p1}, Lu/aly/dl;->bRm()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bn;->d:J

    .line 571
    invoke-virtual {p2, v5}, Lu/aly/bn;->bRP(Z)V

    goto :goto_1b

    .line 577
    :pswitch_71
    iget-byte v2, v0, Lu/aly/cB;->b:B

    if-eq v2, v7, :cond_7b

    .line 592
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_1b

    .line 579
    :cond_7b
    invoke-virtual {p1}, Lu/aly/dl;->bRe()Lu/aly/bP;

    move-result-object v2

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/bP;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bn;->e:Ljava/util/List;

    move v0, v1

    .line 581
    :goto_89
    iget v3, v2, Lu/aly/bP;->b:I

    if-lt v0, v3, :cond_94

    .line 588
    invoke-virtual {p1}, Lu/aly/dl;->bRf()V

    .line 590
    invoke-virtual {p2, v5}, Lu/aly/bn;->bRS(Z)V

    goto :goto_1b

    .line 584
    :cond_94
    new-instance v3, Lu/aly/bi;

    invoke-direct {v3}, Lu/aly/bi;-><init>()V

    .line 585
    invoke-virtual {v3, p1}, Lu/aly/bi;->bQK(Lu/aly/dl;)V

    .line 586
    iget-object v4, p2, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 596
    :pswitch_a4
    iget-byte v2, v0, Lu/aly/cB;->b:B

    if-eq v2, v7, :cond_af

    .line 611
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto/16 :goto_1b

    .line 598
    :cond_af
    invoke-virtual {p1}, Lu/aly/dl;->bRe()Lu/aly/bP;

    move-result-object v2

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/bP;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bn;->f:Ljava/util/List;

    move v0, v1

    .line 600
    :goto_bd
    iget v3, v2, Lu/aly/bP;->b:I

    if-lt v0, v3, :cond_c9

    .line 607
    invoke-virtual {p1}, Lu/aly/dl;->bRf()V

    .line 609
    invoke-virtual {p2, v5}, Lu/aly/bn;->bRW(Z)V

    goto/16 :goto_1b

    .line 603
    :cond_c9
    new-instance v3, Lu/aly/bg;

    invoke-direct {v3}, Lu/aly/bg;-><init>()V

    .line 604
    invoke-virtual {v3, p1}, Lu/aly/bg;->bQK(Lu/aly/dl;)V

    .line 605
    iget-object v4, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    .line 615
    :pswitch_d9
    iget-byte v2, v0, Lu/aly/cB;->b:B

    const/16 v3, 0xc

    if-eq v2, v3, :cond_e6

    .line 620
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto/16 :goto_1b

    .line 616
    :cond_e6
    new-instance v0, Lu/aly/bo;

    invoke-direct {v0}, Lu/aly/bo;-><init>()V

    iput-object v0, p2, Lu/aly/bn;->g:Lu/aly/bo;

    .line 617
    iget-object v0, p2, Lu/aly/bn;->g:Lu/aly/bo;

    invoke-virtual {v0, p1}, Lu/aly/bo;->bQK(Lu/aly/dl;)V

    .line 618
    invoke-virtual {p2, v5}, Lu/aly/bn;->bRZ(Z)V

    goto/16 :goto_1b

    .line 628
    :cond_f7
    invoke-virtual {p1}, Lu/aly/dl;->k()V

    .line 631
    invoke-virtual {p2}, Lu/aly/bn;->i()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 634
    invoke-virtual {p2}, Lu/aly/bn;->l()Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 637
    invoke-virtual {p2}, Lu/aly/bn;->bRO()Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 640
    invoke-virtual {p2}, Lu/aly/bn;->bSa()V

    .line 641
    return-void

    .line 632
    :cond_110
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'start_time\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_12e
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'end_time\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_14c
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'duration\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :pswitch_data_16a
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_35
        :pswitch_49
        :pswitch_5d
        :pswitch_71
        :pswitch_a4
        :pswitch_d9
    .end packed-switch
.end method

.method public bYe(Lu/aly/dl;Lu/aly/bn;)V
    .registers 6

    .prologue
    const/16 v2, 0xc

    .line 644
    invoke-virtual {p2}, Lu/aly/bn;->bSa()V

    .line 646
    invoke-static {}, Lu/aly/bn;->bSb()Lu/aly/aO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQV(Lu/aly/aO;)V

    .line 647
    iget-object v0, p2, Lu/aly/bn;->a:Ljava/lang/String;

    if-nez v0, :cond_50

    .line 652
    :goto_10
    invoke-static {}, Lu/aly/bn;->bSd()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 653
    iget-wide v0, p2, Lu/aly/bn;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dl;->a(J)V

    .line 654
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 655
    invoke-static {}, Lu/aly/bn;->bSe()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 656
    iget-wide v0, p2, Lu/aly/bn;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dl;->a(J)V

    .line 657
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 658
    invoke-static {}, Lu/aly/bn;->bSf()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 659
    iget-wide v0, p2, Lu/aly/bn;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dl;->a(J)V

    .line 660
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 661
    iget-object v0, p2, Lu/aly/bn;->e:Ljava/util/List;

    if-nez v0, :cond_60

    .line 675
    :cond_41
    :goto_41
    iget-object v0, p2, Lu/aly/bn;->f:Ljava/util/List;

    if-nez v0, :cond_98

    .line 689
    :cond_45
    :goto_45
    iget-object v0, p2, Lu/aly/bn;->g:Lu/aly/bo;

    if-nez v0, :cond_d0

    .line 696
    :cond_49
    :goto_49
    invoke-virtual {p1}, Lu/aly/dl;->d()V

    .line 697
    invoke-virtual {p1}, Lu/aly/dl;->b()V

    .line 698
    return-void

    .line 648
    :cond_50
    invoke-static {}, Lu/aly/bn;->bSc()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 649
    iget-object v0, p2, Lu/aly/bn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_10

    .line 662
    :cond_60
    invoke-virtual {p2}, Lu/aly/bn;->bRR()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 663
    invoke-static {}, Lu/aly/bn;->bSg()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 665
    new-instance v0, Lu/aly/bP;

    iget-object v1, p2, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/bP;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQY(Lu/aly/bP;)V

    .line 666
    iget-object v0, p2, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 670
    invoke-virtual {p1}, Lu/aly/dl;->f()V

    .line 672
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_41

    .line 666
    :cond_8e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bi;

    .line 668
    invoke-virtual {v0, p1}, Lu/aly/bi;->bQL(Lu/aly/dl;)V

    goto :goto_81

    .line 676
    :cond_98
    invoke-virtual {p2}, Lu/aly/bn;->bRV()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 677
    invoke-static {}, Lu/aly/bn;->bSh()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 679
    new-instance v0, Lu/aly/bP;

    iget-object v1, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/bP;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQY(Lu/aly/bP;)V

    .line 680
    iget-object v0, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 684
    invoke-virtual {p1}, Lu/aly/dl;->f()V

    .line 686
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_45

    .line 680
    :cond_c6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bg;

    .line 682
    invoke-virtual {v0, p1}, Lu/aly/bg;->bQL(Lu/aly/dl;)V

    goto :goto_b9

    .line 690
    :cond_d0
    invoke-virtual {p2}, Lu/aly/bn;->bRY()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 691
    invoke-static {}, Lu/aly/bn;->bSi()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 692
    iget-object v0, p2, Lu/aly/bn;->g:Lu/aly/bo;

    invoke-virtual {v0, p1}, Lu/aly/bo;->bQL(Lu/aly/dl;)V

    .line 693
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto/16 :goto_49
.end method

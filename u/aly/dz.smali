.class Lu/aly/dz;
.super Lu/aly/b;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 644
    invoke-direct {p0}, Lu/aly/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cz;)V
    .registers 2

    .prologue
    .line 644
    invoke-direct {p0}, Lu/aly/dz;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bQr(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 644
    check-cast p2, Lu/aly/br;

    invoke-virtual {p0, p1, p2}, Lu/aly/dz;->cbO(Lu/aly/dl;Lu/aly/br;)V

    return-void
.end method

.method public synthetic bQs(Lu/aly/dl;Lu/aly/cj;)V
    .registers 3

    .prologue
    .line 644
    check-cast p2, Lu/aly/br;

    invoke-virtual {p0, p1, p2}, Lu/aly/dz;->cbN(Lu/aly/dl;Lu/aly/br;)V

    return-void
.end method

.method public cbN(Lu/aly/dl;Lu/aly/br;)V
    .registers 8

    .prologue
    const/16 v4, 0x8

    const/16 v3, 0xb

    const/4 v2, 0x1

    .line 648
    invoke-virtual {p1}, Lu/aly/dl;->j()Lu/aly/aO;

    .line 651
    :goto_8
    invoke-virtual {p1}, Lu/aly/dl;->l()Lu/aly/cB;

    move-result-object v0

    .line 652
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eqz v1, :cond_ee

    .line 655
    iget-short v1, v0, Lu/aly/cB;->c:S

    packed-switch v1, :pswitch_data_162

    .line 737
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    .line 739
    :goto_1a
    invoke-virtual {p1}, Lu/aly/dl;->m()V

    goto :goto_8

    .line 657
    :pswitch_1e
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v3, :cond_28

    .line 661
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_1a

    .line 658
    :cond_28
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->a:Ljava/lang/String;

    .line 659
    invoke-virtual {p2, v2}, Lu/aly/br;->a(Z)V

    goto :goto_1a

    .line 665
    :pswitch_32
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v3, :cond_3c

    .line 669
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_1a

    .line 666
    :cond_3c
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->b:Ljava/lang/String;

    .line 667
    invoke-virtual {p2, v2}, Lu/aly/br;->cbf(Z)V

    goto :goto_1a

    .line 673
    :pswitch_46
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v3, :cond_50

    .line 677
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_1a

    .line 674
    :cond_50
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->c:Ljava/lang/String;

    .line 675
    invoke-virtual {p2, v2}, Lu/aly/br;->cbh(Z)V

    goto :goto_1a

    .line 681
    :pswitch_5a
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v4, :cond_64

    .line 685
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_1a

    .line 682
    :cond_64
    invoke-virtual {p1}, Lu/aly/dl;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/br;->d:I

    .line 683
    invoke-virtual {p2, v2}, Lu/aly/br;->cbj(Z)V

    goto :goto_1a

    .line 689
    :pswitch_6e
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v4, :cond_78

    .line 693
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_1a

    .line 690
    :cond_78
    invoke-virtual {p1}, Lu/aly/dl;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/br;->e:I

    .line 691
    invoke-virtual {p2, v2}, Lu/aly/br;->cbm(Z)V

    goto :goto_1a

    .line 697
    :pswitch_82
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v4, :cond_8c

    .line 701
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto :goto_1a

    .line 698
    :cond_8c
    invoke-virtual {p1}, Lu/aly/dl;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/br;->f:I

    .line 699
    invoke-virtual {p2, v2}, Lu/aly/br;->cbp(Z)V

    goto :goto_1a

    .line 705
    :pswitch_96
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v3, :cond_a1

    .line 709
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto/16 :goto_1a

    .line 706
    :cond_a1
    invoke-virtual {p1}, Lu/aly/dl;->bRq()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->g:Ljava/nio/ByteBuffer;

    .line 707
    invoke-virtual {p2, v2}, Lu/aly/br;->cbr(Z)V

    goto/16 :goto_1a

    .line 713
    :pswitch_ac
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v3, :cond_b7

    .line 717
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto/16 :goto_1a

    .line 714
    :cond_b7
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->h:Ljava/lang/String;

    .line 715
    invoke-virtual {p2, v2}, Lu/aly/br;->cbt(Z)V

    goto/16 :goto_1a

    .line 721
    :pswitch_c2
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v3, :cond_cd

    .line 725
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto/16 :goto_1a

    .line 722
    :cond_cd
    invoke-virtual {p1}, Lu/aly/dl;->bRo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->i:Ljava/lang/String;

    .line 723
    invoke-virtual {p2, v2}, Lu/aly/br;->cbv(Z)V

    goto/16 :goto_1a

    .line 729
    :pswitch_d8
    iget-byte v1, v0, Lu/aly/cB;->b:B

    if-eq v1, v4, :cond_e3

    .line 733
    iget-byte v0, v0, Lu/aly/cB;->b:B

    invoke-static {p1, v0}, Lu/aly/Z;->bUt(Lu/aly/dl;B)V

    goto/16 :goto_1a

    .line 730
    :cond_e3
    invoke-virtual {p1}, Lu/aly/dl;->bRl()I

    move-result v0

    iput v0, p2, Lu/aly/br;->j:I

    .line 731
    invoke-virtual {p2, v2}, Lu/aly/br;->cby(Z)V

    goto/16 :goto_1a

    .line 741
    :cond_ee
    invoke-virtual {p1}, Lu/aly/dl;->k()V

    .line 744
    invoke-virtual {p2}, Lu/aly/br;->cbi()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 747
    invoke-virtual {p2}, Lu/aly/br;->cbl()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 750
    invoke-virtual {p2}, Lu/aly/br;->cbo()Z

    move-result v0

    if-eqz v0, :cond_143

    .line 753
    invoke-virtual {p2}, Lu/aly/br;->cbz()V

    .line 754
    return-void

    .line 745
    :cond_107
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'serial_num\' was not found in serialized data! Struct: "

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

    .line 748
    :cond_125
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'ts_secs\' was not found in serialized data! Struct: "

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

    .line 751
    :cond_143
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'length\' was not found in serialized data! Struct: "

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

    .line 655
    nop

    :pswitch_data_162
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_32
        :pswitch_46
        :pswitch_5a
        :pswitch_6e
        :pswitch_82
        :pswitch_96
        :pswitch_ac
        :pswitch_c2
        :pswitch_d8
    .end packed-switch
.end method

.method public cbO(Lu/aly/dl;Lu/aly/br;)V
    .registers 4

    .prologue
    .line 757
    invoke-virtual {p2}, Lu/aly/br;->cbz()V

    .line 759
    invoke-static {}, Lu/aly/br;->cbA()Lu/aly/aO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQV(Lu/aly/aO;)V

    .line 760
    iget-object v0, p2, Lu/aly/br;->a:Ljava/lang/String;

    if-nez v0, :cond_5c

    .line 765
    :goto_e
    iget-object v0, p2, Lu/aly/br;->b:Ljava/lang/String;

    if-nez v0, :cond_6c

    .line 770
    :goto_12
    iget-object v0, p2, Lu/aly/br;->c:Ljava/lang/String;

    if-nez v0, :cond_7c

    .line 775
    :goto_16
    invoke-static {}, Lu/aly/br;->cbE()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 776
    iget v0, p2, Lu/aly/br;->d:I

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(I)V

    .line 777
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 778
    invoke-static {}, Lu/aly/br;->cbF()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 779
    iget v0, p2, Lu/aly/br;->e:I

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(I)V

    .line 780
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 781
    invoke-static {}, Lu/aly/br;->cbG()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 782
    iget v0, p2, Lu/aly/br;->f:I

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(I)V

    .line 783
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    .line 784
    iget-object v0, p2, Lu/aly/br;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_8c

    .line 789
    :goto_47
    iget-object v0, p2, Lu/aly/br;->h:Ljava/lang/String;

    if-nez v0, :cond_9c

    .line 794
    :goto_4b
    iget-object v0, p2, Lu/aly/br;->i:Ljava/lang/String;

    if-nez v0, :cond_ac

    .line 799
    :goto_4f
    invoke-virtual {p2}, Lu/aly/br;->cbx()Z

    move-result v0

    if-nez v0, :cond_bc

    .line 804
    :goto_55
    invoke-virtual {p1}, Lu/aly/dl;->d()V

    .line 805
    invoke-virtual {p1}, Lu/aly/dl;->b()V

    .line 806
    return-void

    .line 761
    :cond_5c
    invoke-static {}, Lu/aly/br;->cbB()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 762
    iget-object v0, p2, Lu/aly/br;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_e

    .line 766
    :cond_6c
    invoke-static {}, Lu/aly/br;->cbC()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 767
    iget-object v0, p2, Lu/aly/br;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_12

    .line 771
    :cond_7c
    invoke-static {}, Lu/aly/br;->cbD()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 772
    iget-object v0, p2, Lu/aly/br;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_16

    .line 785
    :cond_8c
    invoke-static {}, Lu/aly/br;->cbH()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 786
    iget-object v0, p2, Lu/aly/br;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/dl;->bRc(Ljava/nio/ByteBuffer;)V

    .line 787
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_47

    .line 790
    :cond_9c
    invoke-static {}, Lu/aly/br;->cbI()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 791
    iget-object v0, p2, Lu/aly/br;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_4b

    .line 795
    :cond_ac
    invoke-static {}, Lu/aly/br;->cbJ()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 796
    iget-object v0, p2, Lu/aly/br;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_4f

    .line 800
    :cond_bc
    invoke-static {}, Lu/aly/br;->cbK()Lu/aly/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dl;->bQW(Lu/aly/cB;)V

    .line 801
    iget v0, p2, Lu/aly/br;->j:I

    invoke-virtual {p1, v0}, Lu/aly/dl;->a(I)V

    .line 802
    invoke-virtual {p1}, Lu/aly/dl;->c()V

    goto :goto_55
.end method

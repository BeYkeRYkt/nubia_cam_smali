.class Lcom/android/gallery3d/ui/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/c;


# instance fields
.field private awA:F

.field private awB:F

.field final synthetic awC:Lcom/android/gallery3d/ui/FilmStripView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/FilmStripView;)V
    .registers 2

    .prologue
    .line 2350
    iput-object p1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/FilmStripView;Lcom/android/gallery3d/ui/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/n;-><init>(Lcom/android/gallery3d/ui/FilmStripView;)V

    return-void
.end method


# virtual methods
.method public aIH(FF)Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2376
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 2377
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJf()Z

    move-result v1

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 2378
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aKq()V

    .line 2379
    return v4

    .line 2380
    :cond_1f
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2c

    .line 2381
    return v3

    .line 2383
    :cond_2c
    if-nez v0, :cond_2f

    .line 2384
    return v3

    .line 2386
    :cond_2f
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ui/j;->aLn(Z)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 2387
    return v3

    .line 2389
    :cond_3c
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJH(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/g;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/gallery3d/ui/g;->aKo(Z)V

    .line 2390
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lcom/android/gallery3d/ui/j;->aLB(Lcom/android/gallery3d/ui/j;Lcom/android/gallery3d/ui/i;FF)V

    .line 2391
    return v4
.end method

.method public aII(FF)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2410
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/ui/j;->aLt(Lcom/android/gallery3d/ui/j;)V

    .line 2411
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/j;->aLn(Z)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2412
    return v1

    .line 2417
    :cond_17
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aLf()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2418
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/ui/j;->aLu(Lcom/android/gallery3d/ui/j;)V

    .line 2419
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJN(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/a;->setVisibility(I)V

    .line 2421
    :cond_37
    const/4 v0, 0x1

    return v0
.end method

.method public aIJ(FF)Z
    .registers 9

    .prologue
    const/16 v5, 0x190

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2571
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 2572
    if-nez v0, :cond_10

    .line 2573
    return v4

    .line 2575
    :cond_10
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/j;->aLf()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2577
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/j;->aKY(FF)V

    .line 2578
    return v3

    .line 2580
    :cond_26
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_33

    .line 2582
    return v3

    .line 2587
    :cond_33
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_72

    .line 2588
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v0

    .line 2590
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_88

    .line 2591
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJB(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v1

    if-le v1, v0, :cond_5a

    .line 2593
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v3}, Lcom/android/gallery3d/ui/j;->aLk(IIZ)V

    .line 2595
    return v3

    .line 2597
    :cond_5a
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    aget-object v0, v0, v3

    .line 2598
    if-nez v0, :cond_65

    .line 2599
    return v4

    .line 2601
    :cond_65
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v1

    .line 2602
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v0

    .line 2601
    invoke-virtual {v1, v0, v5, v3}, Lcom/android/gallery3d/ui/j;->aLk(IIZ)V

    .line 2624
    :cond_72
    :goto_72
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_87

    .line 2625
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/j;->aKX(F)V

    .line 2627
    :cond_87
    return v3

    .line 2604
    :cond_88
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/ui/j;->aLn(Z)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 2605
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJB(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v1

    if-ge v1, v0, :cond_a6

    .line 2607
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v3}, Lcom/android/gallery3d/ui/j;->aLk(IIZ)V

    .line 2609
    return v3

    .line 2611
    :cond_a6
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 2612
    if-nez v0, :cond_b2

    .line 2613
    return v4

    .line 2615
    :cond_b2
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v1

    .line 2616
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v0

    .line 2615
    invoke-virtual {v1, v0, v5, v3}, Lcom/android/gallery3d/ui/j;->aLk(IIZ)V

    .line 2617
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJV(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v0

    if-ne v0, v3, :cond_72

    .line 2618
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aKp()V

    goto :goto_72
.end method

.method public aIK(FF)Z
    .registers 5

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJg()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2397
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 2398
    if-eqz v0, :cond_41

    .line 2399
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKC()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    .line 2398
    if-eqz v1, :cond_41

    .line 2400
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJD(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/a/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/gallery3d/a/p;->aHX(I)Lcom/android/gallery3d/a/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/a/h;->aHw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/d/a;->bQa(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2401
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJA(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a046c

    invoke-static {v0, v1}, Lcom/android/common/j;->aqr(Landroid/app/Activity;I)V

    .line 2405
    :cond_41
    const/4 v0, 0x0

    return v0
.end method

.method public aIL(FFF)Z
    .registers 12

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2643
    iget v0, p0, Lcom/android/gallery3d/ui/n;->awB:F

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/n;->awB:F

    .line 2644
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v0

    mul-float v1, v0, p3

    .line 2645
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_43

    cmpg-float v0, v1, v2

    if-gez v0, :cond_43

    .line 2648
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJT(Lcom/android/gallery3d/ui/FilmStripView;F)F

    .line 2649
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3d

    .line 2650
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0, v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJT(Lcom/android/gallery3d/ui/FilmStripView;F)F

    .line 2652
    :cond_3d
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->invalidate()V

    .line 2681
    :goto_42
    return v7

    .line 2653
    :cond_43
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6e

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_6e

    .line 2655
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJT(Lcom/android/gallery3d/ui/FilmStripView;F)F

    .line 2656
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/ui/j;->aLw(Lcom/android/gallery3d/ui/j;)V

    .line 2657
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->invalidate()V

    .line 2658
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/gallery3d/ui/j;->aLz(Lcom/android/gallery3d/ui/j;Z)V

    goto :goto_42

    .line 2659
    :cond_6e
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_99

    cmpg-float v0, v1, v2

    if-gez v0, :cond_99

    .line 2661
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJT(Lcom/android/gallery3d/ui/FilmStripView;F)F

    .line 2662
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/ui/j;->aLx(Lcom/android/gallery3d/ui/j;)V

    .line 2663
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->invalidate()V

    .line 2664
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/android/gallery3d/ui/j;->aLz(Lcom/android/gallery3d/ui/j;Z)V

    goto :goto_42

    .line 2668
    :cond_99
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aLf()Z

    move-result v0

    if-nez v0, :cond_ae

    .line 2669
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/gallery3d/ui/j;->aLz(Lcom/android/gallery3d/ui/j;Z)V

    .line 2671
    :cond_ae
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    .line 2673
    iget v2, p0, Lcom/android/gallery3d/ui/n;->awA:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 2674
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v1

    cmpl-float v1, v6, v1

    if-nez v1, :cond_c8

    .line 2675
    return v7

    .line 2677
    :cond_c8
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v1

    div-float v3, v6, v1

    .line 2678
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJF(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJF(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/i;->aKI(FFFII)V

    .line 2679
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0, v6}, Lcom/android/gallery3d/ui/FilmStripView;->aJT(Lcom/android/gallery3d/ui/FilmStripView;F)F

    goto/16 :goto_42
.end method

.method public aIM(FF)Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2633
    iput v1, p0, Lcom/android/gallery3d/ui/n;->awB:F

    .line 2636
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/j;->aLs(Lcom/android/gallery3d/ui/j;Z)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/n;->awA:F

    .line 2637
    return v2
.end method

.method public aIN()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2686
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v0

    const v1, 0x3f8ccccd    # 1.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    .line 2687
    return-void

    .line 2689
    :cond_10
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/j;->aLz(Lcom/android/gallery3d/ui/j;Z)V

    .line 2690
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_33

    .line 2691
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aKp()V

    .line 2701
    :goto_30
    iput v2, p0, Lcom/android/gallery3d/ui/n;->awB:F

    .line 2685
    return-void

    .line 2692
    :cond_33
    iget v0, p0, Lcom/android/gallery3d/ui/n;->awB:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_46

    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_66

    .line 2693
    :cond_46
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aLf()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2694
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJT(Lcom/android/gallery3d/ui/FilmStripView;F)F

    .line 2695
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJp()V

    .line 2697
    :cond_5c
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aKq()V

    goto :goto_30

    .line 2699
    :cond_66
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aKp()V

    goto :goto_30
.end method

.method public aIO(FFFF)Z
    .registers 13

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 2507
    iget-object v2, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v2

    aget-object v2, v2, v6

    if-nez v2, :cond_f

    .line 2508
    return v0

    .line 2511
    :cond_f
    iget-object v2, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/j;->aLf()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 2512
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/ui/j;->aLu(Lcom/android/gallery3d/ui/j;)V

    .line 2513
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    aget-object v0, v0, v6

    .line 2514
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKz()F

    move-result v1

    sub-float/2addr v1, p3

    .line 2515
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKA()F

    move-result v2

    sub-float/2addr v2, p4

    .line 2516
    iget-object v3, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/gallery3d/ui/FilmStripView;->aJF(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 2517
    iget-object v6, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/gallery3d/ui/FilmStripView;->aJF(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 2516
    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/i;->aKP(FFFFII)V

    .line 2518
    return v7

    .line 2520
    :cond_5a
    iget-object v2, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v2

    div-float v2, p3, v2

    float-to-int v2, v2

    .line 2522
    iget-object v3, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/ui/j;->aLn(Z)Z

    .line 2523
    iget-object v3, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJG(Lcom/android/gallery3d/ui/FilmStripView;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 2524
    iget-object v3, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3, v7}, Lcom/android/gallery3d/ui/FilmStripView;->aJR(Lcom/android/gallery3d/ui/FilmStripView;Z)Z

    .line 2525
    iget-object v3, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    iget-object v4, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/FilmStripView;->aJP(Lcom/android/gallery3d/ui/FilmStripView;I)I

    .line 2527
    :cond_8a
    iget-object v3, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJf()Z

    move-result v3

    if-eqz v3, :cond_14a

    .line 2528
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_ae

    .line 2529
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/j;->aLj(F)V

    .line 2564
    :cond_a8
    :goto_a8
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->invalidate()V

    .line 2566
    return v7

    .line 2533
    :cond_ae
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move v2, v0

    .line 2534
    :goto_b4
    const/4 v4, 0x5

    if-ge v2, v4, :cond_db

    .line 2535
    iget-object v4, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v4

    aget-object v4, v4, v2

    if-nez v4, :cond_c4

    .line 2534
    :cond_c1
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    .line 2538
    :cond_c4
    iget-object v4, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2539
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 2543
    :cond_db
    const/4 v3, 0x5

    if-ne v2, v3, :cond_df

    .line 2544
    return v0

    .line 2547
    :cond_df
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJD(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/a/p;

    move-result-object v0

    iget-object v3, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/gallery3d/a/p;->aHW(I)Lcom/android/gallery3d/a/g;

    move-result-object v3

    .line 2548
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v4, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/i;->aKy(F)F

    move-result v0

    iget-object v4, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v4

    div-float v4, p4, v4

    sub-float/2addr v0, v4

    .line 2549
    invoke-interface {v3, v6}, Lcom/android/gallery3d/a/g;->aHC(I)Z

    move-result v4

    if-nez v4, :cond_11b

    cmpl-float v4, v0, v1

    if-lez v4, :cond_11b

    move v0, v1

    .line 2552
    :cond_11b
    invoke-interface {v3, v7}, Lcom/android/gallery3d/a/g;->aHC(I)Z

    move-result v3

    if-nez v3, :cond_126

    cmpg-float v3, v0, v1

    if-gez v3, :cond_126

    move v0, v1

    .line 2555
    :cond_126
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/ui/i;->aKN(FF)V

    .line 2556
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJH(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/g;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 2557
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJH(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/g;->aKl()V

    goto/16 :goto_a8

    .line 2560
    :cond_14a
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJg()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 2562
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/j;->aLj(F)V

    goto/16 :goto_a8
.end method

.method public aIP(FF)Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 2357
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 2358
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJf()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2359
    if-eqz v1, :cond_3d

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/ui/i;->aKs(FF)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2360
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aKq()V

    .line 2361
    return v2

    .line 2363
    :cond_24
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJg()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2364
    const/4 v0, -0x1

    .line 2365
    if-eqz v1, :cond_33

    .line 2366
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v0

    .line 2368
    :cond_33
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJH(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/g;->aKn(I)V

    .line 2369
    return v2

    .line 2371
    :cond_3d
    const/4 v0, 0x0

    return v0
.end method

.method public aIQ(FF)Z
    .registers 14

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 2426
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    aget-object v2, v0, v10

    .line 2427
    if-nez v2, :cond_f

    .line 2428
    return v1

    .line 2430
    :cond_f
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aLe()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aLb()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2431
    :cond_27
    return v1

    .line 2433
    :cond_28
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aLf()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2434
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/ui/j;->aLy(Lcom/android/gallery3d/ui/j;)V

    .line 2435
    return v8

    .line 2437
    :cond_3e
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    .line 2438
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJR(Lcom/android/gallery3d/ui/FilmStripView;Z)Z

    move v0, v1

    .line 2440
    :goto_4d
    const/4 v4, 0x5

    if-ge v0, v4, :cond_f4

    .line 2441
    iget-object v4, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v4

    aget-object v4, v4, v0

    if-nez v4, :cond_5d

    .line 2440
    :cond_5a
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 2444
    :cond_5d
    iget-object v4, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/i;->aKy(F)F

    move-result v4

    .line 2445
    cmpl-float v5, v4, v9

    if-eqz v5, :cond_5a

    .line 2448
    iget-object v5, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v5}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v5

    .line 2450
    iget-object v6, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/gallery3d/ui/FilmStripView;->aJD(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/a/p;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/gallery3d/a/p;->aHW(I)Lcom/android/gallery3d/a/g;

    move-result-object v6

    invoke-interface {v6, v10}, Lcom/android/gallery3d/a/g;->aHC(I)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 2452
    cmpl-float v6, v4, v3

    if-lez v6, :cond_a2

    .line 2453
    const-string/jumbo v4, "FilmStripView"

    const-string/jumbo v6, "demoteData"

    invoke-static {v4, v6}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    iget-object v4, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v4, v0, v5}, Lcom/android/gallery3d/ui/FilmStripView;->aJZ(Lcom/android/gallery3d/ui/FilmStripView;II)V

    goto :goto_5a

    .line 2455
    :cond_a2
    iget-object v6, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v6}, Lcom/android/gallery3d/ui/FilmStripView;->aJD(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/a/p;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/gallery3d/a/p;->aHW(I)Lcom/android/gallery3d/a/g;

    move-result-object v6

    invoke-interface {v6, v8}, Lcom/android/gallery3d/a/g;->aHC(I)Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 2457
    neg-float v6, v3

    cmpg-float v4, v4, v6

    if-gez v4, :cond_c6

    .line 2458
    const-string/jumbo v4, "FilmStripView"

    const-string/jumbo v6, "promoteData"

    invoke-static {v4, v6}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    iget-object v4, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v4, v0, v5}, Lcom/android/gallery3d/ui/FilmStripView;->aKa(Lcom/android/gallery3d/ui/FilmStripView;II)V

    goto :goto_5a

    .line 2462
    :cond_c6
    const-string/jumbo v4, "FilmStripView"

    const-string/jumbo v5, "put the view back"

    invoke-static {v4, v5}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    iget-object v4, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 2465
    const/high16 v5, 0x3f800000    # 1.0f

    .line 2463
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 2466
    const-wide/16 v6, 0x190

    .line 2463
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_5a

    .line 2471
    :cond_f4
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v0

    .line 2472
    iget-object v3, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJB(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v3

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v4

    add-int/lit16 v4, v4, 0x12c

    if-le v3, v4, :cond_144

    .line 2473
    if-nez v0, :cond_144

    .line 2474
    iget-object v3, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJV(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v3

    if-ne v3, v8, :cond_144

    .line 2475
    iget-object v3, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJE(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v3

    if-nez v3, :cond_144

    .line 2476
    iget-object v3, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/j;->aKp()V

    .line 2478
    iget-object v3, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    if-eqz v3, :cond_164

    .line 2479
    iget-object v3, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v3

    .line 2480
    iget-object v4, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v4

    .line 2481
    const/16 v5, 0x190

    .line 2479
    invoke-virtual {v3, v4, v5, v1}, Lcom/android/gallery3d/ui/j;->aLk(IIZ)V

    .line 2486
    :cond_144
    :goto_144
    iget-object v3, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJB(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v3

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v2

    if-ne v3, v2, :cond_16a

    if-nez v0, :cond_16a

    .line 2487
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJV(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v0

    if-ne v0, v8, :cond_16a

    .line 2488
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aKq()V

    .line 2502
    :cond_163
    :goto_163
    return v1

    .line 2484
    :cond_164
    iget-object v3, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aKc(Lcom/android/gallery3d/ui/FilmStripView;)V

    goto :goto_144

    .line 2499
    :cond_16a
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJD(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/a/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/a/p;->aHY()I

    move-result v0

    if-lez v0, :cond_163

    .line 2500
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->awC:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aKc(Lcom/android/gallery3d/ui/FilmStripView;)V

    goto :goto_163
.end method

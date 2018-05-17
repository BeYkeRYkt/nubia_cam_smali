.class public Lu/aly/bE;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bxF:Lcom/umeng/analytics/ReportPolicy$i;

.field final synthetic bxG:Lu/aly/X;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lu/aly/X;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 463
    iput-object p1, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput v1, p0, Lu/aly/bE;->c:I

    .line 458
    iput v1, p0, Lu/aly/bE;->d:I

    .line 460
    iput v1, p0, Lu/aly/bE;->e:I

    .line 461
    iput v1, p0, Lu/aly/bE;->f:I

    .line 464
    invoke-static {p1}, Lu/aly/X;->bUa(Lu/aly/X;)Lu/aly/cm;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lu/aly/cm;->bYH(II)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 465
    aget v1, v0, v1

    iput v1, p0, Lu/aly/bE;->c:I

    const/4 v1, 0x1

    .line 466
    aget v0, v0, v1

    iput v0, p0, Lu/aly/bE;->d:I

    .line 467
    return-void
.end method

.method private bWl(II)Lcom/umeng/analytics/ReportPolicy$i;
    .registers 7

    .prologue
    .line 533
    packed-switch p1, :pswitch_data_8e

    .line 561
    :pswitch_3
    iget-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$d;

    if-nez v0, :cond_8a

    new-instance v0, Lcom/umeng/analytics/ReportPolicy$d;

    invoke-direct {v0}, Lcom/umeng/analytics/ReportPolicy$d;-><init>()V

    .line 565
    :goto_e
    return-object v0

    .line 535
    :pswitch_f
    iget-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$d;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/umeng/analytics/ReportPolicy$d;

    invoke-direct {v0}, Lcom/umeng/analytics/ReportPolicy$d;-><init>()V

    goto :goto_e

    :cond_1b
    iget-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_e

    .line 538
    :pswitch_1e
    iget-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$e;

    if-nez v0, :cond_31

    .line 542
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$e;

    iget-object v1, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    invoke-static {v1}, Lu/aly/X;->bUc(Lu/aly/X;)Lu/aly/aA;

    move-result-object v1

    int-to-long v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/ReportPolicy$e;-><init>(Lu/aly/aA;J)V

    goto :goto_e

    .line 539
    :cond_31
    iget-object v1, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    move-object v0, v1

    .line 540
    check-cast v0, Lcom/umeng/analytics/ReportPolicy$e;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/umeng/analytics/ReportPolicy$e;->a(J)V

    move-object v0, v1

    goto :goto_e

    .line 546
    :pswitch_3c
    iget-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$g;

    if-nez v0, :cond_4e

    new-instance v0, Lcom/umeng/analytics/ReportPolicy$g;

    iget-object v1, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    .line 547
    invoke-static {v1}, Lu/aly/X;->bUc(Lu/aly/X;)Lu/aly/aA;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$g;-><init>(Lu/aly/aA;)V

    goto :goto_e

    .line 546
    :cond_4e
    iget-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_e

    .line 550
    :pswitch_51
    iget-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$h;

    if-nez v0, :cond_5d

    new-instance v0, Lcom/umeng/analytics/ReportPolicy$h;

    invoke-direct {v0}, Lcom/umeng/analytics/ReportPolicy$h;-><init>()V

    goto :goto_e

    :cond_5d
    iget-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_e

    .line 553
    :pswitch_60
    iget-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$j;

    if-nez v0, :cond_72

    new-instance v0, Lcom/umeng/analytics/ReportPolicy$j;

    iget-object v1, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    .line 554
    invoke-static {v1}, Lu/aly/X;->bUg(Lu/aly/X;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$j;-><init>(Landroid/content/Context;)V

    goto :goto_e

    .line 553
    :cond_72
    iget-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_e

    .line 557
    :pswitch_75
    iget-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$k;

    if-nez v0, :cond_87

    new-instance v0, Lcom/umeng/analytics/ReportPolicy$k;

    iget-object v1, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    .line 558
    invoke-static {v1}, Lu/aly/X;->bUc(Lu/aly/X;)Lu/aly/aA;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$k;-><init>(Lu/aly/aA;)V

    goto :goto_e

    .line 557
    :cond_87
    iget-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_e

    .line 561
    :cond_8a
    iget-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_e

    .line 533
    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_51
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_3c
        :pswitch_60
        :pswitch_1e
        :pswitch_3
        :pswitch_75
    .end packed-switch
.end method


# virtual methods
.method protected a(Z)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 473
    iget-object v2, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    invoke-static {v2}, Lu/aly/X;->bUb(Lu/aly/X;)Lu/aly/cE;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/cE;->c()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 478
    iget-object v2, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v2, v2, Lcom/umeng/analytics/ReportPolicy$c;

    if-nez v2, :cond_65

    :goto_14
    move v0, v1

    .line 479
    :cond_15
    if-eqz v0, :cond_6e

    :goto_17
    const-string/jumbo v0, "MobclickAgent"

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Report policy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/aly/O;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    return-void

    .line 475
    :cond_3c
    iget-object v2, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v2, v2, Lcom/umeng/analytics/ReportPolicy$b;

    if-nez v2, :cond_59

    :goto_42
    move v0, v1

    .line 476
    :cond_43
    if-nez v0, :cond_62

    new-instance v0, Lcom/umeng/analytics/ReportPolicy$b;

    iget-object v1, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    invoke-static {v1}, Lu/aly/X;->bUc(Lu/aly/X;)Lu/aly/aA;

    move-result-object v1

    iget-object v2, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    invoke-static {v2}, Lu/aly/X;->bUb(Lu/aly/X;)Lu/aly/cE;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/ReportPolicy$b;-><init>(Lu/aly/aA;Lu/aly/cE;)V

    :goto_56
    iput-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_17

    .line 475
    :cond_59
    iget-object v2, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    invoke-virtual {v2}, Lcom/umeng/analytics/ReportPolicy$i;->a()Z

    move-result v2

    if-nez v2, :cond_43

    goto :goto_42

    .line 476
    :cond_62
    iget-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_56

    .line 478
    :cond_65
    iget-object v2, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    invoke-virtual {v2}, Lcom/umeng/analytics/ReportPolicy$i;->a()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_14

    .line 480
    :cond_6e
    if-nez p1, :cond_90

    .line 485
    :cond_70
    sget-boolean v0, Lu/aly/O;->a:Z

    if-nez v0, :cond_c0

    .line 488
    :cond_74
    iget-object v0, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    invoke-static {v0}, Lu/aly/X;->bUf(Lu/aly/X;)Lu/aly/E;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/E;->a()Z

    move-result v0

    if-nez v0, :cond_e4

    .line 502
    iget v1, p0, Lu/aly/bE;->e:I

    .line 503
    iget v0, p0, Lu/aly/bE;->f:I

    .line 504
    iget v2, p0, Lu/aly/bE;->c:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_130

    .line 508
    :goto_89
    invoke-direct {p0, v1, v0}, Lu/aly/bE;->bWl(II)Lcom/umeng/analytics/ReportPolicy$i;

    move-result-object v0

    iput-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_17

    .line 480
    :cond_90
    iget-object v0, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    invoke-static {v0}, Lu/aly/X;->bUd(Lu/aly/X;)Lu/aly/bN;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/bN;->a()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 481
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$c;

    iget-object v1, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    invoke-static {v1}, Lu/aly/X;->bUd(Lu/aly/X;)Lu/aly/bN;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/bN;->b()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$c;-><init>(I)V

    iput-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    .line 482
    iget-object v0, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    iget-object v1, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    invoke-static {v1}, Lu/aly/X;->bUd(Lu/aly/X;)Lu/aly/bN;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/bN;->b()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Lu/aly/X;->bUe(Lu/aly/X;I)V

    goto/16 :goto_17

    .line 485
    :cond_c0
    iget-object v0, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    invoke-static {v0}, Lu/aly/X;->bUa(Lu/aly/X;)Lu/aly/cm;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/cm;->b()Z

    move-result v0

    if-eqz v0, :cond_74

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "Debug: send log every 15 seconds"

    .line 486
    invoke-static {v0, v1}, Lu/aly/O;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$a;

    iget-object v1, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    invoke-static {v1}, Lu/aly/X;->bUc(Lu/aly/X;)Lu/aly/aA;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$a;-><init>(Lu/aly/aA;)V

    iput-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    goto/16 :goto_17

    :cond_e4
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v2, "Start A/B Test"

    .line 489
    invoke-static {v0, v2}, Lu/aly/O;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    invoke-static {v0}, Lu/aly/X;->bUf(Lu/aly/X;)Lu/aly/E;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/E;->b()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_10c

    .line 500
    :goto_fa
    iget-object v0, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    invoke-static {v0}, Lu/aly/X;->bUf(Lu/aly/X;)Lu/aly/E;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/E;->b()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lu/aly/bE;->bWl(II)Lcom/umeng/analytics/ReportPolicy$i;

    move-result-object v0

    iput-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    goto/16 :goto_17

    .line 492
    :cond_10c
    iget-object v0, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    invoke-static {v0}, Lu/aly/X;->bUa(Lu/aly/X;)Lu/aly/cm;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/cm;->a()Z

    move-result v0

    if-nez v0, :cond_11f

    .line 494
    iget v0, p0, Lu/aly/bE;->d:I

    if-gtz v0, :cond_12d

    .line 497
    iget v1, p0, Lu/aly/bE;->f:I

    goto :goto_fa

    .line 493
    :cond_11f
    iget-object v0, p0, Lu/aly/bE;->bxG:Lu/aly/X;

    invoke-static {v0}, Lu/aly/X;->bUa(Lu/aly/X;)Lu/aly/cm;

    move-result-object v0

    const v1, 0x15f90

    invoke-virtual {v0, v1}, Lu/aly/cm;->bYI(I)I

    move-result v1

    goto :goto_fa

    .line 495
    :cond_12d
    iget v1, p0, Lu/aly/bE;->d:I

    goto :goto_fa

    .line 505
    :cond_130
    iget v1, p0, Lu/aly/bE;->c:I

    .line 506
    iget v0, p0, Lu/aly/bE;->d:I

    goto/16 :goto_89
.end method

.method public bWk(Z)Lcom/umeng/analytics/ReportPolicy$i;
    .registers 3

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lu/aly/bE;->a(Z)V

    .line 519
    iget-object v0, p0, Lu/aly/bE;->bxF:Lcom/umeng/analytics/ReportPolicy$i;

    return-object v0
.end method

.method public bWm(Lu/aly/cm;)V
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 574
    invoke-virtual {p1, v0, v0}, Lu/aly/cm;->bYH(II)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 575
    aget v1, v0, v1

    iput v1, p0, Lu/aly/bE;->c:I

    const/4 v1, 0x1

    .line 576
    aget v0, v0, v1

    iput v0, p0, Lu/aly/bE;->d:I

    .line 577
    return-void
.end method

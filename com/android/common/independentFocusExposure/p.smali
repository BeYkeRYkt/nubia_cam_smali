.class Lcom/android/common/independentFocusExposure/p;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private gl:Z

.field private gm:Ljava/lang/Object;

.field private gn:Landroid/graphics/Bitmap;

.field private go:Landroid/graphics/Bitmap;

.field final synthetic gp:Lcom/android/common/independentFocusExposure/o;


# direct methods
.method constructor <init>(Lcom/android/common/independentFocusExposure/o;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 551
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 552
    iput-object v0, p0, Lcom/android/common/independentFocusExposure/p;->go:Landroid/graphics/Bitmap;

    .line 553
    iput-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gn:Landroid/graphics/Bitmap;

    .line 554
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gm:Ljava/lang/Object;

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/p;->gl:Z

    .line 551
    return-void
.end method


# virtual methods
.method public hg()V
    .registers 2

    .prologue
    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/independentFocusExposure/p;->gl:Z

    .line 563
    return-void
.end method

.method public hh(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gm:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_3
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/p;->gn:Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    .line 557
    return-void

    .line 558
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 568
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/android/common/independentFocusExposure/p;->gl:Z

    if-nez v0, :cond_147

    .line 569
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/o;->gS(Lcom/android/common/independentFocusExposure/o;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/android/common/independentFocusExposure/o;->hb(Lcom/android/common/independentFocusExposure/o;I)I

    .line 570
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/o;->gS(Lcom/android/common/independentFocusExposure/o;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x32

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gn:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 571
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/p;->gm:Ljava/lang/Object;

    monitor-enter v2

    .line 572
    :try_start_22
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gn:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/common/independentFocusExposure/p;->go:Landroid/graphics/Bitmap;
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_92

    monitor-exit v2

    .line 574
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/p;->go:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/common/independentFocusExposure/o;->gY(Lcom/android/common/independentFocusExposure/o;I)I

    .line 575
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/p;->go:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/common/independentFocusExposure/o;->gX(Lcom/android/common/independentFocusExposure/o;I)I

    move v0, v1

    .line 576
    :goto_3e
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/p;->go:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_98

    move v2, v1

    .line 577
    :goto_47
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/p;->go:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_95

    .line 578
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/p;->go:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_8f

    iget-object v3, p0, Lcom/android/common/independentFocusExposure/p;->go:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_8f

    .line 579
    iget-object v3, p0, Lcom/android/common/independentFocusExposure/p;->go:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 580
    iget-object v4, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v4}, Lcom/android/common/independentFocusExposure/o;->gU(Lcom/android/common/independentFocusExposure/o;)I

    move-result v5

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/android/common/independentFocusExposure/o;->he(Lcom/android/common/independentFocusExposure/o;I)I

    .line 581
    iget-object v4, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v4}, Lcom/android/common/independentFocusExposure/o;->gR(Lcom/android/common/independentFocusExposure/o;)I

    move-result v5

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/android/common/independentFocusExposure/o;->ha(Lcom/android/common/independentFocusExposure/o;I)I

    .line 582
    iget-object v4, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v4}, Lcom/android/common/independentFocusExposure/o;->gO(Lcom/android/common/independentFocusExposure/o;)I

    move-result v5

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v4, v3}, Lcom/android/common/independentFocusExposure/o;->gZ(Lcom/android/common/independentFocusExposure/o;I)I

    .line 577
    :cond_8f
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 571
    :catchall_92
    move-exception v0

    monitor-exit v2

    throw v0

    .line 576
    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 587
    :cond_98
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v2}, Lcom/android/common/independentFocusExposure/o;->gU(Lcom/android/common/independentFocusExposure/o;)I

    move-result v2

    iget-object v3, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v3}, Lcom/android/common/independentFocusExposure/o;->gL(Lcom/android/common/independentFocusExposure/o;)I

    move-result v3

    iget-object v4, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v4}, Lcom/android/common/independentFocusExposure/o;->gK(Lcom/android/common/independentFocusExposure/o;)I

    move-result v4

    mul-int/2addr v3, v4

    div-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/android/common/independentFocusExposure/o;->he(Lcom/android/common/independentFocusExposure/o;I)I

    .line 588
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v2}, Lcom/android/common/independentFocusExposure/o;->gR(Lcom/android/common/independentFocusExposure/o;)I

    move-result v2

    iget-object v3, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v3}, Lcom/android/common/independentFocusExposure/o;->gL(Lcom/android/common/independentFocusExposure/o;)I

    move-result v3

    iget-object v4, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v4}, Lcom/android/common/independentFocusExposure/o;->gK(Lcom/android/common/independentFocusExposure/o;)I

    move-result v4

    mul-int/2addr v3, v4

    div-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/android/common/independentFocusExposure/o;->ha(Lcom/android/common/independentFocusExposure/o;I)I

    .line 589
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v2}, Lcom/android/common/independentFocusExposure/o;->gO(Lcom/android/common/independentFocusExposure/o;)I

    move-result v2

    iget-object v3, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v3}, Lcom/android/common/independentFocusExposure/o;->gL(Lcom/android/common/independentFocusExposure/o;)I

    move-result v3

    iget-object v4, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v4}, Lcom/android/common/independentFocusExposure/o;->gK(Lcom/android/common/independentFocusExposure/o;)I

    move-result v4

    mul-int/2addr v3, v4

    div-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/android/common/independentFocusExposure/o;->gZ(Lcom/android/common/independentFocusExposure/o;I)I

    .line 591
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/o;->gU(Lcom/android/common/independentFocusExposure/o;)I

    move-result v0

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v2}, Lcom/android/common/independentFocusExposure/o;->gR(Lcom/android/common/independentFocusExposure/o;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v2}, Lcom/android/common/independentFocusExposure/o;->gO(Lcom/android/common/independentFocusExposure/o;)I

    move-result v2

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    .line 593
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-virtual {v2}, Lcom/android/common/independentFocusExposure/o;->gp()Z

    move-result v2

    if-nez v2, :cond_136

    .line 594
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v2}, Lcom/android/common/independentFocusExposure/o;->gP(Lcom/android/common/independentFocusExposure/o;)[F

    move-result-object v2

    int-to-float v3, v0

    iget-object v4, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v4}, Lcom/android/common/independentFocusExposure/o;->gU(Lcom/android/common/independentFocusExposure/o;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v2, v1

    .line 595
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v2}, Lcom/android/common/independentFocusExposure/o;->gP(Lcom/android/common/independentFocusExposure/o;)[F

    move-result-object v2

    int-to-float v3, v0

    iget-object v4, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v4}, Lcom/android/common/independentFocusExposure/o;->gR(Lcom/android/common/independentFocusExposure/o;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 596
    iget-object v2, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v2}, Lcom/android/common/independentFocusExposure/o;->gP(Lcom/android/common/independentFocusExposure/o;)[F

    move-result-object v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v3}, Lcom/android/common/independentFocusExposure/o;->gO(Lcom/android/common/independentFocusExposure/o;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/4 v3, 0x2

    aput v0, v2, v3

    .line 602
    :cond_136
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0, v1}, Lcom/android/common/independentFocusExposure/o;->he(Lcom/android/common/independentFocusExposure/o;I)I

    .line 603
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0, v1}, Lcom/android/common/independentFocusExposure/o;->ha(Lcom/android/common/independentFocusExposure/o;I)I

    .line 604
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gp:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0, v1}, Lcom/android/common/independentFocusExposure/o;->gZ(Lcom/android/common/independentFocusExposure/o;I)I

    goto/16 :goto_2

    .line 609
    :cond_147
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->go:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_153

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->go:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_160

    .line 613
    :cond_153
    :goto_153
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gn:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15f

    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_168

    .line 567
    :cond_15f
    :goto_15f
    return-void

    .line 610
    :cond_160
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->go:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 611
    iput-object v7, p0, Lcom/android/common/independentFocusExposure/p;->go:Landroid/graphics/Bitmap;

    goto :goto_153

    .line 614
    :cond_168
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/p;->gn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 615
    iput-object v7, p0, Lcom/android/common/independentFocusExposure/p;->gn:Landroid/graphics/Bitmap;

    goto :goto_15f
.end method

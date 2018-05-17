.class Lcom/android/gallery3d/b/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic axD:Lcom/android/gallery3d/b/a;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/b/a;)V
    .registers 2

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/b/a;Lcom/android/gallery3d/b/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/gallery3d/b/e;-><init>(Lcom/android/gallery3d/b/a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 616
    iget-object v0, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/b/a;->isVisible()Z

    move-result v0

    if-nez v0, :cond_28

    .line 617
    const-string/jumbo v0, "GalleryFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isVisible == false ignore msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-void

    .line 620
    :cond_28
    iget-object v0, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMv(Lcom/android/gallery3d/b/a;)I

    move-result v0

    .line 621
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_11c

    .line 615
    :cond_33
    :goto_33
    return-void

    .line 623
    :pswitch_34
    const-string/jumbo v1, "GalleryFragment"

    const-string/jumbo v2, "SHOW_ACTIONBAR"

    invoke-static {v1, v2}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v1, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-static {v1}, Lcom/android/gallery3d/b/a;->aMm(Lcom/android/gallery3d/b/a;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 625
    const-string/jumbo v0, "GalleryFragment"

    const-string/jumbo v1, "mFilmStripView inFilmStrip ignore SHOW_ACTIONBAR msg"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    return-void

    .line 628
    :cond_4f
    iget-object v1, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-static {v1}, Lcom/android/gallery3d/b/a;->aMo(Lcom/android/gallery3d/b/a;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 629
    iget-object v1, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-static {v1}, Lcom/android/gallery3d/b/a;->aMo(Lcom/android/gallery3d/b/a;)Landroid/view/View;

    move-result-object v1

    .line 630
    iget-object v2, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-virtual {v2}, Lcom/android/gallery3d/b/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f050017

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 629
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 631
    iget-object v1, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-static {v1}, Lcom/android/gallery3d/b/a;->aMo(Lcom/android/gallery3d/b/a;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1000ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 632
    const/16 v2, 0x5a

    if-eq v0, v2, :cond_83

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_90

    .line 633
    :cond_83
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMh(Lcom/android/gallery3d/b/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_33

    .line 637
    :cond_90
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMh(Lcom/android/gallery3d/b/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMh(Lcom/android/gallery3d/b/a;)Landroid/view/View;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/b/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050015

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 639
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_33

    .line 644
    :pswitch_b3
    const-string/jumbo v0, "GalleryFragment"

    const-string/jumbo v1, "HIDE_ACTIONBAR"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMo(Lcom/android/gallery3d/b/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e7

    .line 646
    iget-object v0, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMo(Lcom/android/gallery3d/b/a;)Landroid/view/View;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/b/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050018

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 646
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 648
    iget-object v0, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMo(Lcom/android/gallery3d/b/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 650
    :cond_e7
    iget-object v0, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMh(Lcom/android/gallery3d/b/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_33

    .line 651
    iget-object v0, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMh(Lcom/android/gallery3d/b/a;)Landroid/view/View;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/b/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050016

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 651
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 653
    iget-object v0, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMh(Lcom/android/gallery3d/b/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_33

    .line 657
    :pswitch_114
    iget-object v0, p0, Lcom/android/gallery3d/b/e;->axD:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMy(Lcom/android/gallery3d/b/a;)V

    goto/16 :goto_33

    .line 621
    nop

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_34
        :pswitch_b3
        :pswitch_114
    .end packed-switch
.end method

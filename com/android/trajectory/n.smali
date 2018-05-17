.class final Lcom/android/trajectory/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic atc:Lcom/android/trajectory/a;


# direct methods
.method constructor <init>(Lcom/android/trajectory/a;)V
    .registers 2

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 633
    iget-object v0, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aES(Lcom/android/trajectory/a;)Lcom/android/camera/Trajectory/NubiaTrajectory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayz()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 634
    const-string/jumbo v0, "TrajectoryFragment"

    const-string/jumbo v1, "Trajectory is making, so ignore this Click"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void

    .line 637
    :cond_1a
    iget-object v0, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEL(Lcom/android/trajectory/a;)[Z

    move-result-object v1

    iget-object v0, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEL(Lcom/android/trajectory/a;)[Z

    move-result-object v0

    aget-boolean v0, v0, p3

    if-eqz v0, :cond_81

    move v0, v2

    :goto_2b
    aput-boolean v0, v1, p3

    .line 639
    const v0, 0x7f1000b8

    .line 638
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    .line 641
    const v1, 0x7f1001cb

    .line 640
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/common/ui/RotateImageView;

    .line 642
    iget-object v4, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v4}, Lcom/android/trajectory/a;->aEL(Lcom/android/trajectory/a;)[Z

    move-result-object v4

    aget-boolean v4, v4, p3

    if-eqz v4, :cond_83

    .line 643
    const v3, 0x7f0202c4

    invoke-virtual {v0, v3}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 644
    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEO(Lcom/android/trajectory/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v0, p3}, Lcom/android/trajectory/a;->aFt(Lcom/android/trajectory/a;I)V

    .line 647
    iget-object v0, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEO(Lcom/android/trajectory/a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aEN(Lcom/android/trajectory/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 648
    iget-object v0, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEw(Lcom/android/trajectory/a;)Lcom/android/common/appService/W;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 649
    iget-object v0, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aFd(Lcom/android/trajectory/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pB()V

    .line 632
    :cond_80
    :goto_80
    return-void

    :cond_81
    move v0, v3

    .line 637
    goto :goto_2b

    .line 651
    :cond_83
    const v4, 0x7f0202c5

    invoke-virtual {v0, v4}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 652
    invoke-virtual {v1, v5}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEL(Lcom/android/trajectory/a;)[Z

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_95
    const/4 v1, -0x1

    if-le v0, v1, :cond_d6

    .line 655
    iget-object v1, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aEL(Lcom/android/trajectory/a;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_d3

    .line 656
    iget-object v1, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v1, v0}, Lcom/android/trajectory/a;->aFt(Lcom/android/trajectory/a;I)V

    .line 657
    iget-object v0, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEO(Lcom/android/trajectory/a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aEN(Lcom/android/trajectory/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 662
    :goto_b6
    if-nez v3, :cond_80

    .line 663
    iget-object v0, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEO(Lcom/android/trajectory/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEw(Lcom/android/trajectory/a;)Lcom/android/common/appService/W;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 665
    iget-object v0, p0, Lcom/android/trajectory/n;->atc:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aFd(Lcom/android/trajectory/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    goto :goto_80

    .line 654
    :cond_d3
    add-int/lit8 v0, v0, -0x1

    goto :goto_95

    :cond_d6
    move v3, v2

    goto :goto_b6
.end method

.class final Lcom/android/trajectory/m;
.super Landroid/widget/SimpleAdapter;
.source "SourceFile"


# instance fields
.field final synthetic atb:Lcom/android/trajectory/a;


# direct methods
.method constructor <init>(Lcom/android/trajectory/a;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .registers 13

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/trajectory/m;->atb:Lcom/android/trajectory/a;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 604
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .prologue
    .line 608
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 610
    const v0, 0x7f1000b6

    .line 609
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    .line 612
    const v1, 0x7f1001cd

    .line 611
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/common/ui/RotateLayout;

    .line 614
    const v2, 0x7f1001cb

    .line 613
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/common/ui/RotateImageView;

    .line 615
    iget-object v4, p0, Lcom/android/trajectory/m;->atb:Lcom/android/trajectory/a;

    invoke-static {v4}, Lcom/android/trajectory/a;->aEK(Lcom/android/trajectory/a;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_55

    .line 616
    iget-object v4, p0, Lcom/android/trajectory/m;->atb:Lcom/android/trajectory/a;

    invoke-static {v4}, Lcom/android/trajectory/a;->aEK(Lcom/android/trajectory/a;)I

    move-result v4

    .line 617
    iget-object v5, p0, Lcom/android/trajectory/m;->atb:Lcom/android/trajectory/a;

    invoke-static {v5}, Lcom/android/trajectory/a;->aEW(Lcom/android/trajectory/a;)Z

    move-result v5

    .line 616
    invoke-virtual {v1, v4, v5}, Lcom/android/common/ui/RotateLayout;->vn(IZ)V

    .line 618
    iget-object v1, p0, Lcom/android/trajectory/m;->atb:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aEK(Lcom/android/trajectory/a;)I

    move-result v1

    iget-object v4, p0, Lcom/android/trajectory/m;->atb:Lcom/android/trajectory/a;

    invoke-static {v4}, Lcom/android/trajectory/a;->aEW(Lcom/android/trajectory/a;)Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/android/common/ui/RotateImageView;->vn(IZ)V

    .line 619
    iget-object v0, p0, Lcom/android/trajectory/m;->atb:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEK(Lcom/android/trajectory/a;)I

    move-result v0

    iget-object v1, p0, Lcom/android/trajectory/m;->atb:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aEW(Lcom/android/trajectory/a;)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/android/common/ui/RotateImageView;->vn(IZ)V

    .line 621
    :cond_55
    return-object v3
.end method

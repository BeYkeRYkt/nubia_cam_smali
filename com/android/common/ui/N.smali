.class Lcom/android/common/ui/N;
.super Landroid/widget/SimpleAdapter;
.source "SourceFile"


# instance fields
.field final synthetic wr:Lcom/android/common/ui/ZtemtSlidingDrawer;


# direct methods
.method public constructor <init>(Lcom/android/common/ui/ZtemtSlidingDrawer;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .registers 13

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/common/ui/N;->wr:Lcom/android/common/ui/ZtemtSlidingDrawer;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 271
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 270
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .prologue
    .line 248
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 249
    const v0, 0x7f1000b8

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    .line 250
    const v1, 0x7f1000b6

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/common/ui/RotateImageView;

    .line 251
    const v2, 0x7f1000b7

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/common/ui/RotateLayout;

    .line 253
    iget-object v4, p0, Lcom/android/common/ui/N;->wr:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v4}, Lcom/android/common/ui/ZtemtSlidingDrawer;->AC(Lcom/android/common/ui/ZtemtSlidingDrawer;)I

    move-result v4

    if-ne p1, v4, :cond_62

    .line 254
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 259
    :goto_2b
    iget-object v4, p0, Lcom/android/common/ui/N;->wr:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v4}, Lcom/android/common/ui/ZtemtSlidingDrawer;->AB(Lcom/android/common/ui/ZtemtSlidingDrawer;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_61

    .line 260
    iget-object v4, p0, Lcom/android/common/ui/N;->wr:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v4}, Lcom/android/common/ui/ZtemtSlidingDrawer;->AB(Lcom/android/common/ui/ZtemtSlidingDrawer;)I

    move-result v4

    iget-object v5, p0, Lcom/android/common/ui/N;->wr:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v5}, Lcom/android/common/ui/ZtemtSlidingDrawer;->AD(Lcom/android/common/ui/ZtemtSlidingDrawer;)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/android/common/ui/RotateImageView;->vn(IZ)V

    .line 261
    iget-object v0, p0, Lcom/android/common/ui/N;->wr:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->AB(Lcom/android/common/ui/ZtemtSlidingDrawer;)I

    move-result v0

    iget-object v4, p0, Lcom/android/common/ui/N;->wr:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v4}, Lcom/android/common/ui/ZtemtSlidingDrawer;->AD(Lcom/android/common/ui/ZtemtSlidingDrawer;)Z

    move-result v4

    invoke-virtual {v1, v0, v4}, Lcom/android/common/ui/RotateImageView;->vn(IZ)V

    .line 262
    iget-object v0, p0, Lcom/android/common/ui/N;->wr:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->AB(Lcom/android/common/ui/ZtemtSlidingDrawer;)I

    move-result v0

    iget-object v1, p0, Lcom/android/common/ui/N;->wr:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v1}, Lcom/android/common/ui/ZtemtSlidingDrawer;->AD(Lcom/android/common/ui/ZtemtSlidingDrawer;)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/android/common/ui/RotateLayout;->vn(IZ)V

    .line 265
    :cond_61
    return-object v3

    .line 256
    :cond_62
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    goto :goto_2b
.end method

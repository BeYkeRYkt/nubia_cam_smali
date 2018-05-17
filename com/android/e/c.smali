.class Lcom/android/e/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aWJ:Lcom/android/e/b;


# direct methods
.method private constructor <init>(Lcom/android/e/b;)V
    .registers 2

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/e/b;Lcom/android/e/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/e/c;-><init>(Lcom/android/e/b;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .prologue
    const/high16 v5, 0x44fa0000    # 2000.0f

    const/high16 v4, 0x447a0000    # 1000.0f

    .line 537
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_108

    .line 536
    :cond_9
    :goto_9
    return-void

    .line 539
    :pswitch_a
    iget-object v0, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->bot(Lcom/android/e/b;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 542
    iget-object v0, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->boD(Lcom/android/e/b;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 543
    iget-object v0, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->boo(Lcom/android/e/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->ei()Ljava/util/List;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_ad

    .line 545
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 546
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v2}, Lcom/android/e/b;->bos(Lcom/android/e/b;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_4b

    .line 547
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v2}, Lcom/android/e/b;->bos(Lcom/android/e/b;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_94

    .line 550
    :cond_4b
    :goto_4b
    iget-object v1, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v1}, Lcom/android/e/b;->bos(Lcom/android/e/b;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 551
    iget-object v1, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    sub-float v2, v4, v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v3}, Lcom/android/e/b;->bow(Lcom/android/e/b;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v3}, Lcom/android/e/b;->bow(Lcom/android/e/b;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    add-float/2addr v0, v4

    div-float/2addr v0, v5

    iget-object v3, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v3}, Lcom/android/e/b;->bow(Lcom/android/e/b;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v3}, Lcom/android/e/b;->bow(Lcom/android/e/b;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-static {v1, v2, v0}, Lcom/android/e/b;->boI(Lcom/android/e/b;FF)V

    goto/16 :goto_9

    .line 548
    :cond_94
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v2}, Lcom/android/e/b;->bos(Lcom/android/e/b;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ne v1, v2, :cond_4b

    .line 549
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v2}, Lcom/android/e/b;->bos(Lcom/android/e/b;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_9

    goto :goto_4b

    .line 555
    :cond_ad
    iget-object v0, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    iget-object v1, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v1}, Lcom/android/e/b;->bow(Lcom/android/e/b;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/e/b;->boB(Lcom/android/e/b;F)F

    .line 556
    iget-object v0, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    iget-object v1, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v1}, Lcom/android/e/b;->bow(Lcom/android/e/b;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/e/b;->boC(Lcom/android/e/b;F)F

    .line 557
    iget-object v0, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    iget-object v1, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v1}, Lcom/android/e/b;->bou(Lcom/android/e/b;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v2}, Lcom/android/e/b;->bov(Lcom/android/e/b;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/e/b;->boG(Lcom/android/e/b;II)V

    .line 558
    iget-object v0, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->bop(Lcom/android/e/b;)Lcom/android/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v1}, Lcom/android/e/b;->bou(Lcom/android/e/b;)F

    move-result v1

    iget-object v2, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v2}, Lcom/android/e/b;->bow(Lcom/android/e/b;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/e/c;->aWJ:Lcom/android/e/b;

    invoke-static {v3}, Lcom/android/e/b;->bov(Lcom/android/e/b;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/e/g;->boM(FF)V

    goto/16 :goto_9

    .line 537
    nop

    :pswitch_data_108
    .packed-switch 0x4d2
        :pswitch_a
    .end packed-switch
.end method

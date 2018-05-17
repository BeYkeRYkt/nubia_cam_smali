.class Lcom/android/objectclear/m;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private aUQ:Z

.field private aUR:Ljava/util/Queue;

.field final synthetic aUS:Lcom/android/objectclear/i;


# direct methods
.method private constructor <init>(Lcom/android/objectclear/i;)V
    .registers 3

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/objectclear/m;->aUS:Lcom/android/objectclear/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/objectclear/m;->aUQ:Z

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/objectclear/m;->aUR:Ljava/util/Queue;

    .line 622
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/objectclear/i;Lcom/android/objectclear/m;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/objectclear/m;-><init>(Lcom/android/objectclear/i;)V

    return-void
.end method

.method private bmq(II)V
    .registers 6

    .prologue
    .line 648
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 649
    iget-object v1, p0, Lcom/android/objectclear/m;->aUR:Ljava/util/Queue;

    if-nez v1, :cond_e

    .line 650
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/objectclear/m;->aUR:Ljava/util/Queue;

    .line 653
    :cond_e
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 654
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 655
    iget-object v1, p0, Lcom/android/objectclear/m;->aUR:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 656
    const-string/jumbo v0, "NubiaObjectClearFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addCoordinateToQueue, size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/objectclear/m;->aUR:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method private bms()Landroid/graphics/Matrix;
    .registers 4

    .prologue
    .line 641
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 642
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 643
    iget-object v1, p0, Lcom/android/objectclear/m;->aUS:Lcom/android/objectclear/i;

    invoke-static {v1}, Lcom/android/objectclear/i;->blX(Lcom/android/objectclear/i;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/android/common/h;->aoQ(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 644
    return-object v0
.end method


# virtual methods
.method public bmr(II)V
    .registers 4

    .prologue
    .line 634
    monitor-enter p0

    .line 635
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/objectclear/m;->bmq(II)V

    .line 636
    invoke-virtual {p0}, Lcom/android/objectclear/m;->notify()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 633
    return-void

    .line 634
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/objectclear/m;->aUQ:Z

    .line 628
    monitor-enter p0

    .line 629
    :try_start_4
    invoke-virtual {p0}, Lcom/android/objectclear/m;->notify()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 626
    return-void

    .line 628
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 661
    invoke-direct {p0}, Lcom/android/objectclear/m;->bms()Landroid/graphics/Matrix;

    move-result-object v5

    .line 663
    :goto_7
    iget-boolean v0, p0, Lcom/android/objectclear/m;->aUQ:Z

    if-nez v0, :cond_90

    .line 665
    monitor-enter p0

    .line 666
    :try_start_c
    iget-object v0, p0, Lcom/android/objectclear/m;->aUR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_5e

    move-result v0

    if-eqz v0, :cond_17

    .line 668
    :try_start_14
    invoke-virtual {p0}, Lcom/android/objectclear/m;->wait()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_3e
    .catchall {:try_start_14 .. :try_end_17} :catchall_5e

    .line 674
    :cond_17
    :goto_17
    :try_start_17
    iget-object v0, p0, Lcom/android/objectclear/m;->aUR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    new-array v3, v0, [[I

    .line 675
    iget-object v0, p0, Lcom/android/objectclear/m;->aUR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v4

    move v2, v1

    .line 676
    :goto_26
    if-ge v2, v4, :cond_40

    .line 677
    iget-object v0, p0, Lcom/android/objectclear/m;->aUR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 678
    iget-object v0, p0, Lcom/android/objectclear/m;->aUR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aput-object v0, v3, v2

    .line 676
    :cond_3a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_26

    .line 669
    :catch_3e
    move-exception v0

    goto :goto_17

    .line 681
    :cond_40
    iget-object v0, p0, Lcom/android/objectclear/m;->aUR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_45
    .catchall {:try_start_17 .. :try_end_45} :catchall_5e

    monitor-exit p0

    move v0, v1

    .line 684
    :goto_47
    array-length v2, v3

    if-ge v0, v2, :cond_61

    .line 685
    aget-object v2, v3, v0

    aget v2, v2, v1

    aget-object v4, v3, v0

    aget v4, v4, v6

    iget-object v7, p0, Lcom/android/objectclear/m;->aUS:Lcom/android/objectclear/i;

    invoke-static {v7}, Lcom/android/objectclear/i;->bma(Lcom/android/objectclear/i;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/android/camera/ObjectClear/NubiaObjectClear;->SelectLabel(IILandroid/graphics/Bitmap;)V

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 665
    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 687
    :cond_61
    iget-object v0, p0, Lcom/android/objectclear/m;->aUS:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bma(Lcom/android/objectclear/i;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 688
    iget-object v2, p0, Lcom/android/objectclear/m;->aUS:Lcom/android/objectclear/i;

    invoke-static {v2}, Lcom/android/objectclear/i;->bma(Lcom/android/objectclear/i;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/android/objectclear/m;->aUS:Lcom/android/objectclear/i;

    invoke-static {v2}, Lcom/android/objectclear/i;->bma(Lcom/android/objectclear/i;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    .line 687
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 689
    iget-object v2, p0, Lcom/android/objectclear/m;->aUS:Lcom/android/objectclear/i;

    invoke-static {v2}, Lcom/android/objectclear/i;->bme(Lcom/android/objectclear/i;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7

    .line 692
    :cond_90
    iput-object v8, p0, Lcom/android/objectclear/m;->aUR:Ljava/util/Queue;

    .line 660
    return-void
.end method

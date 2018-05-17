.class Lcom/android/common/a/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic H:Lcom/android/common/a/d;


# direct methods
.method public constructor <init>(Lcom/android/common/a/d;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 739
    iput-object p1, p0, Lcom/android/common/a/e;->H:Lcom/android/common/a/d;

    .line 740
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 739
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .prologue
    .line 746
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7e

    .line 744
    :goto_5
    return-void

    .line 748
    :pswitch_6
    iget-object v0, p0, Lcom/android/common/a/e;->H:Lcom/android/common/a/d;

    invoke-static {v0}, Lcom/android/common/a/d;->aa(Lcom/android/common/a/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 749
    :try_start_d
    iget-object v0, p0, Lcom/android/common/a/e;->H:Lcom/android/common/a/d;

    invoke-static {v0}, Lcom/android/common/a/d;->ac(Lcom/android/common/a/d;)Ljava/util/ArrayList;

    move-result-object v2

    .line 750
    iget-object v0, p0, Lcom/android/common/a/e;->H:Lcom/android/common/a/d;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v3}, Lcom/android/common/a/d;->ae(Lcom/android/common/a/d;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 751
    iget-object v0, p0, Lcom/android/common/a/e;->H:Lcom/android/common/a/d;

    invoke-static {v0}, Lcom/android/common/a/d;->ab(Lcom/android/common/a/d;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 752
    iget-object v0, p0, Lcom/android/common/a/e;->H:Lcom/android/common/a/d;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/android/common/a/d;->ad(Lcom/android/common/a/d;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 753
    iget-object v0, p0, Lcom/android/common/a/e;->H:Lcom/android/common/a/d;

    iget-object v0, v0, Lcom/android/common/a/d;->G:Lcom/android/common/a/a;

    invoke-static {v0}, Lcom/android/common/a/a;->Q(Lcom/android/common/a/a;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 764
    :cond_39
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_7b

    monitor-exit v1

    goto :goto_5

    .line 754
    :cond_3e
    :try_start_3e
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 755
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 756
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4e
    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/a/c;

    .line 757
    if-eqz v0, :cond_4e

    .line 758
    iget-object v6, p0, Lcom/android/common/a/e;->H:Lcom/android/common/a/d;

    iget-object v6, v6, Lcom/android/common/a/d;->G:Lcom/android/common/a/a;

    invoke-static {v6}, Lcom/android/common/a/a;->P(Lcom/android/common/a/a;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/android/common/a/e;->H:Lcom/android/common/a/d;

    iget-object v7, v7, Lcom/android/common/a/d;->G:Lcom/android/common/a/a;

    invoke-static {v7}, Lcom/android/common/a/a;->P(Lcom/android/common/a/a;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-interface {v0, v3, v6, v7, v4}, Lcom/android/common/a/c;->W(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    .line 759
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_7a
    .catchall {:try_start_3e .. :try_end_7a} :catchall_7b

    goto :goto_4e

    .line 748
    :catchall_7b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 746
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

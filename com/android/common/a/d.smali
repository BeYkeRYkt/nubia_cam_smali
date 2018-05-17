.class Lcom/android/common/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private B:Ljava/lang/Object;

.field private C:Ljava/nio/ByteBuffer;

.field private D:Ljava/util/ArrayList;

.field private E:Lcom/android/common/a/e;

.field private F:Z

.field final synthetic G:Lcom/android/common/a/a;


# direct methods
.method private constructor <init>(Lcom/android/common/a/a;)V
    .registers 4

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/common/a/d;->G:Lcom/android/common/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/a/d;->B:Ljava/lang/Object;

    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/a/d;->F:Z

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/a/d;->D:Ljava/util/ArrayList;

    .line 692
    new-instance v0, Lcom/android/common/a/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/common/a/e;-><init>(Lcom/android/common/a/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/common/a/d;->E:Lcom/android/common/a/e;

    .line 685
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/a/a;Lcom/android/common/a/d;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/a/d;-><init>(Lcom/android/common/a/a;)V

    return-void
.end method

.method private X()V
    .registers 8

    .prologue
    .line 719
    :try_start_0
    iget-boolean v0, p0, Lcom/android/common/a/d;->F:Z

    if-eqz v0, :cond_6a

    .line 720
    iget-object v0, p0, Lcom/android/common/a/d;->G:Lcom/android/common/a/a;

    invoke-static {v0}, Lcom/android/common/a/a;->P(Lcom/android/common/a/a;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/a/d;->G:Lcom/android/common/a/a;

    invoke-static {v1}, Lcom/android/common/a/a;->P(Lcom/android/common/a/a;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/a/d;->C:Ljava/nio/ByteBuffer;

    .line 721
    iget-object v0, p0, Lcom/android/common/a/d;->C:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 722
    iget-object v0, p0, Lcom/android/common/a/d;->C:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 723
    iget-object v0, p0, Lcom/android/common/a/d;->G:Lcom/android/common/a/a;

    invoke-static {v0}, Lcom/android/common/a/a;->P(Lcom/android/common/a/a;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/common/a/d;->G:Lcom/android/common/a/a;

    invoke-static {v1}, Lcom/android/common/a/a;->P(Lcom/android/common/a/a;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/common/a/d;->G:Lcom/android/common/a/a;

    invoke-static {v2}, Lcom/android/common/a/a;->P(Lcom/android/common/a/a;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/common/a/d;->G:Lcom/android/common/a/a;

    invoke-static {v3}, Lcom/android/common/a/a;->P(Lcom/android/common/a/a;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v6, p0, Lcom/android/common/a/d;->C:Ljava/nio/ByteBuffer;

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 724
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/a/d;->F:Z

    .line 725
    iget-object v0, p0, Lcom/android/common/a/d;->E:Lcom/android/common/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/a/e;->sendEmptyMessage(I)Z
    :try_end_6a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_6a} :catch_6b

    .line 717
    :cond_6a
    return-void

    .line 727
    :catch_6b
    move-exception v0

    .line 729
    :try_start_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/sdcard/camera_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".hprof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_8e} :catch_8f

    .line 733
    :goto_8e
    throw v0

    .line 730
    :catch_8f
    move-exception v1

    .line 731
    const-string/jumbo v2, "RenderThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dump hprof fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e
.end method

.method private Y(Lcom/android/common/a/c;)Z
    .registers 4

    .prologue
    .line 707
    if-nez p1, :cond_d

    .line 708
    const-string/jumbo v0, "RenderThread"

    const-string/jumbo v1, "listener is null!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v0, 0x0

    return v0

    .line 711
    :cond_d
    iget-object v1, p0, Lcom/android/common/a/d;->B:Ljava/lang/Object;

    monitor-enter v1

    .line 712
    :try_start_10
    iget-object v0, p0, Lcom/android/common/a/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_18

    move-result v0

    monitor-exit v1

    return v0

    .line 711
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private Z(Lcom/android/common/a/c;)V
    .registers 4

    .prologue
    .line 695
    if-nez p1, :cond_3

    return-void

    .line 696
    :cond_3
    iget-object v1, p0, Lcom/android/common/a/d;->B:Ljava/lang/Object;

    monitor-enter v1

    .line 697
    :try_start_6
    iget-boolean v0, p0, Lcom/android/common/a/d;->F:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/common/a/d;->C:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_11

    .line 698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/a/d;->F:Z

    .line 700
    :cond_11
    iget-object v0, p0, Lcom/android/common/a/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 701
    iget-object v0, p0, Lcom/android/common/a/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit v1

    .line 694
    return-void

    .line 696
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic aa(Lcom/android/common/a/d;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/common/a/d;->B:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic ab(Lcom/android/common/a/d;)Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/android/common/a/d;->C:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic ac(Lcom/android/common/a/d;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/common/a/d;->D:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic ad(Lcom/android/common/a/d;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2

    iput-object p1, p0, Lcom/android/common/a/d;->C:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic ae(Lcom/android/common/a/d;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/android/common/a/d;->D:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic af(Lcom/android/common/a/d;Lcom/android/common/a/c;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/a/d;->Y(Lcom/android/common/a/c;)Z

    move-result v0

    return v0
.end method

.method static synthetic ag(Lcom/android/common/a/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/a/d;->X()V

    return-void
.end method

.method static synthetic ah(Lcom/android/common/a/d;Lcom/android/common/a/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/a/d;->Z(Lcom/android/common/a/c;)V

    return-void
.end method

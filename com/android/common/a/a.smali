.class public Lcom/android/common/a/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private A:Landroid/view/SurfaceHolder;

.field private a:I

.field private b:Z

.field private c:Landroid/graphics/SurfaceTexture;

.field private d:I

.field private e:Lcom/android/common/gles/e;

.field private f:I

.field private g:Lcom/android/common/gles/j;

.field private h:Landroid/graphics/Rect;

.field private i:Lcom/android/common/gles/m;

.field private j:Lcom/android/common/effects/b;

.field private k:Landroid/graphics/Rect;

.field private l:Z

.field private m:Lcom/android/common/a/f;

.field private n:Z

.field private o:Z

.field private p:Lcom/android/common/g/g;

.field private q:Lcom/android/common/a/d;

.field private r:Lcom/android/common/gles/a;

.field private s:Lcom/android/common/a/k;

.field private t:Z

.field private u:Ljava/util/ArrayList;

.field private v:Z

.field private w:Landroid/os/ConditionVariable;

.field private x:I

.field private y:Z

.field private z:Lcom/android/common/gles/j;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;Lcom/android/common/g/g;ZZ)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    const-string/jumbo v0, "Nubia Render Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 43
    iput-boolean v1, p0, Lcom/android/common/a/a;->l:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/common/a/a;->o:Z

    .line 45
    new-instance v0, Lcom/android/common/a/d;

    invoke-direct {v0, p0, v3}, Lcom/android/common/a/d;-><init>(Lcom/android/common/a/a;Lcom/android/common/a/d;)V

    iput-object v0, p0, Lcom/android/common/a/a;->q:Lcom/android/common/a/d;

    .line 51
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/common/a/a;->w:Landroid/os/ConditionVariable;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/common/a/a;->k:Landroid/graphics/Rect;

    .line 63
    iput-object v3, p0, Lcom/android/common/a/a;->h:Landroid/graphics/Rect;

    .line 65
    iput v2, p0, Lcom/android/common/a/a;->f:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/a/a;->u:Ljava/util/ArrayList;

    .line 69
    iput-object v3, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    .line 71
    iput-boolean v2, p0, Lcom/android/common/a/a;->t:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/common/a/a;->v:Z

    .line 145
    iput v1, p0, Lcom/android/common/a/a;->a:I

    .line 147
    iput v1, p0, Lcom/android/common/a/a;->x:I

    .line 148
    iput-boolean v1, p0, Lcom/android/common/a/a;->y:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/common/a/a;->b:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/common/a/a;->n:Z

    .line 556
    new-instance v0, Lcom/android/common/a/k;

    invoke-direct {v0}, Lcom/android/common/a/k;-><init>()V

    iput-object v0, p0, Lcom/android/common/a/a;->s:Lcom/android/common/a/k;

    .line 78
    iput-object p1, p0, Lcom/android/common/a/a;->k:Landroid/graphics/Rect;

    .line 79
    iput-object p2, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    .line 80
    iput-boolean p3, p0, Lcom/android/common/a/a;->n:Z

    .line 81
    iput-boolean p4, p0, Lcom/android/common/a/a;->v:Z

    .line 76
    return-void
.end method

.method static synthetic O(Lcom/android/common/a/a;)I
    .registers 2

    iget v0, p0, Lcom/android/common/a/a;->d:I

    return v0
.end method

.method static synthetic P(Lcom/android/common/a/a;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/common/a/a;->k:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic Q(Lcom/android/common/a/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/a/a;->l:Z

    return v0
.end method

.method static synthetic R(Lcom/android/common/a/a;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .registers 2

    iput-object p1, p0, Lcom/android/common/a/a;->c:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method private b()V
    .registers 3

    .prologue
    .line 408
    const-string/jumbo v0, "RenderThread"

    const-string/jumbo v1, "clearBuffer"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    invoke-virtual {v0}, Lcom/android/common/gles/e;->Sa()V

    .line 410
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 411
    iget-object v0, p0, Lcom/android/common/a/a;->i:Lcom/android/common/gles/m;

    invoke-virtual {v0}, Lcom/android/common/gles/m;->SS()V

    .line 407
    return-void
.end method

.method private d()V
    .registers 6

    .prologue
    .line 311
    invoke-static {}, Lcom/android/common/gles/k;->SN()I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a;->d:I

    .line 313
    const-string/jumbo v0, "RenderThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createSurfaceTextureForCamera: mPreviewRect.width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/a/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/a/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v0, Lcom/android/common/gles/a;

    iget v1, p0, Lcom/android/common/a/a;->d:I

    .line 316
    iget-object v2, p0, Lcom/android/common/a/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/common/a/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 315
    const v4, 0x8d65

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/common/gles/a;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/common/a/a;->r:Lcom/android/common/gles/a;

    .line 318
    new-instance v0, Lcom/android/common/a/f;

    invoke-direct {v0, p0}, Lcom/android/common/a/f;-><init>(Lcom/android/common/a/a;)V

    iput-object v0, p0, Lcom/android/common/a/a;->m:Lcom/android/common/a/f;

    .line 319
    iget-object v0, p0, Lcom/android/common/a/a;->m:Lcom/android/common/a/f;

    invoke-virtual {v0}, Lcom/android/common/a/f;->start()V

    .line 320
    iget-object v0, p0, Lcom/android/common/a/a;->m:Lcom/android/common/a/f;

    invoke-virtual {v0}, Lcom/android/common/a/f;->ai()V

    .line 310
    return-void
.end method

.method private e(ZLjava/lang/String;)V
    .registers 4

    .prologue
    .line 551
    if-eqz p1, :cond_8

    .line 552
    const-string/jumbo v0, "RenderDebugAnim"

    invoke-static {v0, p2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_8
    return-void
.end method

.method private f()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/android/common/a/a;->s:Lcom/android/common/a/k;

    invoke-virtual {v0, p0}, Lcom/android/common/a/k;->aV(Lcom/android/common/a/a;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/a/a;->h:Landroid/graphics/Rect;

    .line 417
    iget-object v0, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    invoke-virtual {v0}, Lcom/android/common/gles/e;->Sa()V

    .line 419
    iget v0, p0, Lcom/android/common/a/a;->a:I

    if-eqz v0, :cond_19

    .line 420
    iget v0, p0, Lcom/android/common/a/a;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_38

    .line 423
    :cond_19
    const-string/jumbo v0, "defalut draw"

    invoke-direct {p0, v2, v0}, Lcom/android/common/a/a;->e(ZLjava/lang/String;)V

    .line 424
    invoke-direct {p0}, Lcom/android/common/a/a;->u()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 425
    const-string/jumbo v0, "RenderThread"

    const-string/jumbo v1, "no render!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_2e
    :goto_2e
    invoke-direct {p0}, Lcom/android/common/a/a;->y()Z

    move-result v0

    .line 437
    if-nez v0, :cond_37

    .line 438
    invoke-direct {p0}, Lcom/android/common/a/a;->x()Z

    .line 414
    :cond_37
    return-void

    .line 421
    :cond_38
    iget v0, p0, Lcom/android/common/a/a;->a:I

    if-ne v0, v4, :cond_40

    iget-boolean v0, p0, Lcom/android/common/a/a;->n:Z

    if-eqz v0, :cond_19

    .line 422
    :cond_40
    iget v0, p0, Lcom/android/common/a/a;->a:I

    if-ne v0, v3, :cond_48

    iget-boolean v0, p0, Lcom/android/common/a/a;->b:Z

    if-eqz v0, :cond_63

    .line 427
    :cond_48
    :goto_48
    iget v0, p0, Lcom/android/common/a/a;->a:I

    if-ne v0, v4, :cond_50

    iget-boolean v0, p0, Lcom/android/common/a/a;->n:Z

    if-nez v0, :cond_55

    .line 428
    :cond_50
    iget v0, p0, Lcom/android/common/a/a;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_68

    .line 431
    :cond_55
    :goto_55
    const-string/jumbo v0, "realtime draw"

    invoke-direct {p0, v2, v0}, Lcom/android/common/a/a;->e(ZLjava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    iget-object v1, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/g/g;->aaT(Lcom/android/common/a/a;Lcom/android/common/gles/e;)V

    goto :goto_2e

    .line 422
    :cond_63
    iget-boolean v0, p0, Lcom/android/common/a/a;->n:Z

    if-eqz v0, :cond_19

    goto :goto_48

    .line 429
    :cond_68
    iget v0, p0, Lcom/android/common/a/a;->a:I

    if-ne v0, v3, :cond_70

    iget-boolean v0, p0, Lcom/android/common/a/a;->b:Z

    if-eqz v0, :cond_7e

    .line 430
    :cond_70
    :goto_70
    iget v0, p0, Lcom/android/common/a/a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2e

    iget-boolean v0, p0, Lcom/android/common/a/a;->b:Z

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/common/a/a;->n:Z

    .line 427
    if-eqz v0, :cond_2e

    goto :goto_55

    .line 429
    :cond_7e
    iget-boolean v0, p0, Lcom/android/common/a/a;->n:Z

    .line 427
    if-nez v0, :cond_55

    goto :goto_70
.end method

.method private r()V
    .registers 3

    .prologue
    .line 305
    new-instance v0, Lcom/android/common/gles/m;

    invoke-direct {v0}, Lcom/android/common/gles/m;-><init>()V

    iput-object v0, p0, Lcom/android/common/a/a;->i:Lcom/android/common/gles/m;

    .line 306
    iget-object v0, p0, Lcom/android/common/a/a;->i:Lcom/android/common/gles/m;

    iget-object v1, p0, Lcom/android/common/a/a;->A:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/android/common/gles/m;->SQ(Landroid/view/SurfaceHolder;)Landroid/opengl/EGLSurface;

    .line 307
    new-instance v0, Lcom/android/common/effects/b;

    invoke-direct {v0}, Lcom/android/common/effects/b;-><init>()V

    iput-object v0, p0, Lcom/android/common/a/a;->j:Lcom/android/common/effects/b;

    .line 304
    return-void
.end method

.method private release()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 203
    const-string/jumbo v0, "RenderThread"

    const-string/jumbo v1, "release resources"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    if-eqz v0, :cond_14

    .line 205
    iget-object v0, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    invoke-virtual {v0}, Lcom/android/common/g/g;->release()V

    .line 207
    :cond_14
    iget-object v0, p0, Lcom/android/common/a/a;->g:Lcom/android/common/gles/j;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/common/a/a;->g:Lcom/android/common/gles/j;

    invoke-virtual {v0}, Lcom/android/common/gles/j;->RO()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 208
    iget-object v0, p0, Lcom/android/common/a/a;->g:Lcom/android/common/gles/j;

    invoke-virtual {v0}, Lcom/android/common/gles/j;->SM()V

    .line 210
    :cond_25
    invoke-direct {p0}, Lcom/android/common/a/a;->t()V

    .line 211
    iget-object v0, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    invoke-virtual {v0}, Lcom/android/common/gles/e;->release()V

    .line 212
    iget-object v0, p0, Lcom/android/common/a/a;->j:Lcom/android/common/effects/b;

    invoke-virtual {v0}, Lcom/android/common/effects/b;->release()V

    .line 213
    iput-object v2, p0, Lcom/android/common/a/a;->g:Lcom/android/common/gles/j;

    .line 214
    iput-object v2, p0, Lcom/android/common/a/a;->j:Lcom/android/common/effects/b;

    .line 215
    iput-boolean v3, p0, Lcom/android/common/a/a;->b:Z

    .line 216
    iput-boolean v3, p0, Lcom/android/common/a/a;->y:Z

    .line 217
    iput v3, p0, Lcom/android/common/a/a;->a:I

    .line 202
    return-void
.end method

.method private t()V
    .registers 6

    .prologue
    .line 601
    iget-object v2, p0, Lcom/android/common/a/a;->u:Ljava/util/ArrayList;

    monitor-enter v2

    .line 602
    :try_start_3
    iget-object v0, p0, Lcom/android/common/a/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x0

    array-length v4, v3

    move v1, v0

    :goto_c
    if-ge v1, v4, :cond_19

    aget-object v0, v3, v1

    .line 603
    check-cast v0, Lcom/android/common/a/b;

    invoke-interface {v0, p0}, Lcom/android/common/a/b;->U(Lcom/android/common/a/a;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    .line 602
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_19
    monitor-exit v2

    .line 600
    return-void

    .line 601
    :catchall_1b
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private u()Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 581
    iget-object v3, p0, Lcom/android/common/a/a;->u:Ljava/util/ArrayList;

    monitor-enter v3

    .line 583
    :try_start_4
    iget-object v1, p0, Lcom/android/common/a/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    array-length v5, v4

    move v1, v0

    move v2, v0

    :goto_d
    if-ge v1, v5, :cond_1e

    aget-object v0, v4, v1

    .line 584
    check-cast v0, Lcom/android/common/a/b;

    iget-object v6, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    invoke-interface {v0, p0, v6}, Lcom/android/common/a/b;->T(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_20

    move-result v0

    or-int/2addr v2, v0

    .line 583
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_1e
    monitor-exit v3

    .line 587
    return v2

    .line 581
    :catchall_20
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private v()Z
    .registers 6

    .prologue
    .line 591
    const/4 v0, 0x0

    .line 592
    iget-object v2, p0, Lcom/android/common/a/a;->u:Ljava/util/ArrayList;

    monitor-enter v2

    .line 593
    :try_start_4
    iget-object v1, p0, Lcom/android/common/a/a;->u:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/a/b;

    .line 594
    iget-object v4, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    invoke-interface {v0, p0, v4}, Lcom/android/common/a/b;->V(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_22

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_b

    :cond_20
    monitor-exit v2

    .line 597
    return v1

    .line 592
    :catchall_22
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private x()Z
    .registers 8

    .prologue
    const/4 v0, 0x7

    const/4 v4, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 505
    iget-boolean v2, p0, Lcom/android/common/a/a;->b:Z

    if-eqz v2, :cond_98

    .line 506
    iget v2, p0, Lcom/android/common/a/a;->a:I

    if-eqz v2, :cond_13

    .line 507
    iget v2, p0, Lcom/android/common/a/a;->a:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 511
    :cond_13
    iget-object v0, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    invoke-virtual {p0, v0}, Lcom/android/common/a/a;->c(Lcom/android/common/gles/e;)V

    .line 512
    iput v5, p0, Lcom/android/common/a/a;->a:I

    .line 513
    invoke-virtual {p0, v1}, Lcom/android/common/a/a;->G(Z)V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "blur copy: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/common/a/a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; animTimeBlur: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    invoke-virtual {v2}, Lcom/android/common/g/g;->aaX()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/common/a/a;->e(ZLjava/lang/String;)V

    .line 525
    :cond_47
    :goto_47
    return v5

    .line 508
    :cond_48
    iget v2, p0, Lcom/android/common/a/a;->a:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_13

    .line 509
    iget v2, p0, Lcom/android/common/a/a;->a:I

    if-eq v2, v6, :cond_13

    .line 510
    iget v2, p0, Lcom/android/common/a/a;->a:I

    if-eq v2, v0, :cond_13

    .line 515
    iget v0, p0, Lcom/android/common/a/a;->a:I

    if-eq v0, v5, :cond_5d

    .line 516
    iget v0, p0, Lcom/android/common/a/a;->a:I

    if-ne v0, v4, :cond_47

    .line 517
    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "blur start anim, blurState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/common/a/a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/common/a/a;->e(ZLjava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    iget-object v1, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    iget-boolean v2, p0, Lcom/android/common/a/a;->n:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/common/g/g;->aaY(Lcom/android/common/a/a;Lcom/android/common/gles/e;Z)V

    .line 519
    iget-object v0, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    iget-object v1, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/g/g;->aaV(Lcom/android/common/a/a;Lcom/android/common/gles/e;)I

    move-result v0

    .line 520
    if-ne v0, v6, :cond_91

    iget-object v0, p0, Lcom/android/common/a/a;->s:Lcom/android/common/a/k;

    invoke-virtual {v0}, Lcom/android/common/a/k;->aW()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 523
    :cond_91
    :goto_91
    iput v4, p0, Lcom/android/common/a/a;->a:I

    goto :goto_47

    .line 521
    :cond_94
    invoke-virtual {p0, v5}, Lcom/android/common/a/a;->G(Z)V

    goto :goto_91

    .line 527
    :cond_98
    iget v2, p0, Lcom/android/common/a/a;->a:I

    if-eq v2, v4, :cond_a0

    .line 528
    iget v2, p0, Lcom/android/common/a/a;->a:I

    if-ne v2, v6, :cond_f9

    .line 529
    :cond_a0
    iget-object v2, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    iget-boolean v3, p0, Lcom/android/common/a/a;->n:Z

    invoke-virtual {v2, p0, v3}, Lcom/android/common/g/g;->aaZ(Lcom/android/common/a/a;Z)V

    .line 530
    iget-object v2, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    iget-object v3, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    invoke-virtual {v2, p0, v3}, Lcom/android/common/g/g;->aaV(Lcom/android/common/a/a;Lcom/android/common/gles/e;)I

    move-result v2

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "blur stop anim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/common/a/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; animTimeBlur"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    invoke-virtual {v4}, Lcom/android/common/g/g;->aaX()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 532
    const-string/jumbo v4, ";blurDrawingState: "

    .line 531
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/common/a/a;->e(ZLjava/lang/String;)V

    .line 533
    const/4 v3, 0x4

    if-ne v2, v3, :cond_ed

    .line 534
    iput v6, p0, Lcom/android/common/a/a;->a:I

    .line 535
    invoke-virtual {p0, v1}, Lcom/android/common/a/a;->G(Z)V

    .line 540
    :goto_ec
    return v5

    .line 537
    :cond_ed
    iget-boolean v2, p0, Lcom/android/common/a/a;->n:Z

    if-eqz v2, :cond_f7

    :goto_f1
    iput v0, p0, Lcom/android/common/a/a;->a:I

    .line 538
    invoke-virtual {p0, v5}, Lcom/android/common/a/a;->G(Z)V

    goto :goto_ec

    :cond_f7
    move v0, v1

    .line 537
    goto :goto_f1

    .line 541
    :cond_f9
    iget v2, p0, Lcom/android/common/a/a;->a:I

    if-ne v2, v5, :cond_11f

    .line 542
    iget-boolean v2, p0, Lcom/android/common/a/a;->n:Z

    if-eqz v2, :cond_120

    :goto_101
    iput v0, p0, Lcom/android/common/a/a;->a:I

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "blur copy to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/common/a/a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/common/a/a;->e(ZLjava/lang/String;)V

    .line 544
    invoke-virtual {p0, v5}, Lcom/android/common/a/a;->G(Z)V

    .line 547
    :cond_11f
    return v1

    :cond_120
    move v0, v1

    .line 542
    goto :goto_101
.end method

.method private y()Z
    .registers 8

    .prologue
    const/4 v2, 0x4

    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 444
    iget-boolean v0, p0, Lcom/android/common/a/a;->y:Z

    if-eqz v0, :cond_7a

    .line 445
    iget v0, p0, Lcom/android/common/a/a;->a:I

    if-eqz v0, :cond_13

    .line 446
    iget v0, p0, Lcom/android/common/a/a;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_37

    .line 447
    :cond_13
    iget-object v0, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    invoke-virtual {p0, v0}, Lcom/android/common/a/a;->c(Lcom/android/common/gles/e;)V

    .line 448
    iput v2, p0, Lcom/android/common/a/a;->a:I

    .line 449
    invoke-virtual {p0, v3}, Lcom/android/common/a/a;->G(Z)V

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switch, none to copy mSwitchState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/common/a/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/common/a/a;->e(ZLjava/lang/String;)V

    .line 464
    :cond_36
    :goto_36
    return v4

    .line 451
    :cond_37
    iget v0, p0, Lcom/android/common/a/a;->a:I

    if-eq v0, v2, :cond_3f

    .line 452
    iget v0, p0, Lcom/android/common/a/a;->a:I

    if-ne v0, v5, :cond_72

    .line 454
    :cond_3f
    :goto_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switch, copied or started mSwitchState:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/common/a/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/common/a/a;->e(ZLjava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    iget-object v1, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    iget v2, p0, Lcom/android/common/a/a;->x:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/common/g/g;->aaU(Lcom/android/common/a/a;Lcom/android/common/gles/e;I)V

    .line 456
    iget-object v0, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    iget-object v1, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/g/g;->aaV(Lcom/android/common/a/a;Lcom/android/common/gles/e;)I

    move-result v0

    .line 457
    const/4 v1, 0x7

    if-ne v0, v1, :cond_77

    .line 458
    invoke-virtual {p0, v4}, Lcom/android/common/a/a;->G(Z)V

    .line 459
    iput v6, p0, Lcom/android/common/a/a;->a:I

    goto :goto_36

    .line 453
    :cond_72
    iget v0, p0, Lcom/android/common/a/a;->a:I

    if-ne v0, v6, :cond_36

    goto :goto_3f

    .line 461
    :cond_77
    iput v5, p0, Lcom/android/common/a/a;->a:I

    goto :goto_36

    .line 466
    :cond_7a
    iget v0, p0, Lcom/android/common/a/a;->a:I

    if-ne v0, v5, :cond_82

    iget-boolean v0, p0, Lcom/android/common/a/a;->b:Z

    if-eqz v0, :cond_cd

    .line 478
    :cond_82
    iget v0, p0, Lcom/android/common/a/a;->a:I

    if-ne v0, v5, :cond_8a

    iget-boolean v0, p0, Lcom/android/common/a/a;->b:Z

    if-nez v0, :cond_8e

    .line 479
    :cond_8a
    iget v0, p0, Lcom/android/common/a/a;->a:I

    if-ne v0, v6, :cond_10b

    .line 481
    :cond_8e
    iget-object v0, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    iget-object v1, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/g/g;->aaW(Lcom/android/common/a/a;Lcom/android/common/gles/e;)V

    .line 482
    iget-object v0, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    iget-object v1, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/g/g;->aaV(Lcom/android/common/a/a;Lcom/android/common/gles/e;)I

    move-result v0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switch, drawing mSwitchState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/a/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 484
    const-string/jumbo v2, "; next switchDrawingState: "

    .line 483
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/android/common/a/a;->e(ZLjava/lang/String;)V

    .line 485
    if-ne v0, v6, :cond_c7

    .line 486
    iget-boolean v0, p0, Lcom/android/common/a/a;->b:Z

    if-eqz v0, :cond_120

    .line 490
    :cond_c7
    iput v3, p0, Lcom/android/common/a/a;->a:I

    .line 491
    invoke-virtual {p0, v4}, Lcom/android/common/a/a;->G(Z)V

    .line 493
    :goto_cc
    return v4

    .line 467
    :cond_cd
    iget-object v0, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    iget-object v1, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    iget v2, p0, Lcom/android/common/a/a;->x:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/common/g/g;->aaU(Lcom/android/common/a/a;Lcom/android/common/gles/e;I)V

    .line 468
    iget-object v0, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    iget-object v1, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/g/g;->aaV(Lcom/android/common/a/a;Lcom/android/common/gles/e;)I

    move-result v0

    .line 469
    const/4 v1, 0x7

    if-ne v0, v1, :cond_108

    .line 470
    iput v6, p0, Lcom/android/common/a/a;->a:I

    .line 474
    :goto_e3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchstart false draw switchState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 475
    const-string/jumbo v1, "; animState: "

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 475
    iget v1, p0, Lcom/android/common/a/a;->a:I

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/common/a/a;->e(ZLjava/lang/String;)V

    .line 476
    return v4

    .line 472
    :cond_108
    iput v5, p0, Lcom/android/common/a/a;->a:I

    goto :goto_e3

    .line 480
    :cond_10b
    iget v0, p0, Lcom/android/common/a/a;->a:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8e

    .line 494
    iget v0, p0, Lcom/android/common/a/a;->a:I

    if-ne v0, v2, :cond_11f

    .line 495
    const-string/jumbo v0, "switch, copy to none"

    invoke-direct {p0, v3, v0}, Lcom/android/common/a/a;->e(ZLjava/lang/String;)V

    .line 496
    iput v3, p0, Lcom/android/common/a/a;->a:I

    .line 497
    invoke-virtual {p0, v4}, Lcom/android/common/a/a;->G(Z)V

    .line 500
    :cond_11f
    return v3

    .line 487
    :cond_120
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/common/a/a;->a:I

    .line 488
    invoke-virtual {p0, v3}, Lcom/android/common/a/a;->G(Z)V

    goto :goto_cc
.end method


# virtual methods
.method public A(Lcom/android/common/a/c;)Z
    .registers 3

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/common/a/a;->q:Lcom/android/common/a/d;

    invoke-static {v0, p1}, Lcom/android/common/a/d;->af(Lcom/android/common/a/d;Lcom/android/common/a/c;)Z

    move-result v0

    return v0
.end method

.method public B(Lcom/android/common/a/c;)V
    .registers 3

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/common/a/a;->q:Lcom/android/common/a/d;

    invoke-static {v0, p1}, Lcom/android/common/a/d;->ah(Lcom/android/common/a/d;Lcom/android/common/a/c;)V

    .line 677
    return-void
.end method

.method public declared-synchronized C()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 300
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/common/a/a;->v:Z

    .line 301
    invoke-virtual {p0}, Lcom/android/common/a/a;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 298
    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized D()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 275
    :try_start_1
    const-string/jumbo v0, "RenderThread"

    const-string/jumbo v1, "Resume Render"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/a/a;->o:Z

    .line 277
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_34

    .line 278
    :try_start_e
    invoke-virtual {p0}, Lcom/android/common/a/a;->notify()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_31

    :try_start_11
    monitor-exit p0

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/a/a;->b:Z

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/a/a;->y:Z

    .line 282
    iget-boolean v0, p0, Lcom/android/common/a/a;->n:Z

    if-eqz v0, :cond_37

    .line 283
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/common/a/a;->a:I

    .line 287
    :goto_1f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/common/a/a;->G(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    if-eqz v0, :cond_2c

    .line 289
    iget-object v0, p0, Lcom/android/common/a/a;->p:Lcom/android/common/g/g;

    invoke-virtual {v0}, Lcom/android/common/g/g;->aaS()V

    .line 291
    :cond_2c
    invoke-virtual {p0}, Lcom/android/common/a/a;->C()V
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_34

    monitor-exit p0

    .line 274
    return-void

    .line 277
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p0

    throw v0
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0

    .line 285
    :cond_37
    const/4 v0, 0x0

    :try_start_38
    iput v0, p0, Lcom/android/common/a/a;->a:I
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_34

    goto :goto_1f
.end method

.method public E(I)V
    .registers 3

    .prologue
    .line 91
    monitor-enter p0

    .line 92
    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 93
    :cond_7
    :try_start_7
    iput p1, p0, Lcom/android/common/a/a;->f:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    :cond_9
    monitor-exit p0

    .line 90
    return-void

    .line 91
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public F(Landroid/graphics/Rect;Z)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 558
    iput-object p1, p0, Lcom/android/common/a/a;->k:Landroid/graphics/Rect;

    .line 560
    iget v2, p0, Lcom/android/common/a/a;->a:I

    if-eqz v2, :cond_d

    .line 561
    iget v2, p0, Lcom/android/common/a/a;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4e

    .line 565
    :cond_d
    :goto_d
    iget-object v2, p0, Lcom/android/common/a/a;->s:Lcom/android/common/a/k;

    if-eqz v0, :cond_5e

    :goto_11
    invoke-virtual {v2, p1, p2}, Lcom/android/common/a/k;->aX(Landroid/graphics/Rect;Z)Z

    move-result v0

    .line 566
    if-eqz v0, :cond_1a

    .line 567
    invoke-virtual {p0}, Lcom/android/common/a/a;->C()V

    .line 569
    :cond_1a
    monitor-enter p0

    .line 570
    :try_start_1b
    iget-object v0, p0, Lcom/android/common/a/a;->r:Lcom/android/common/gles/a;

    if-eqz v0, :cond_4c

    .line 571
    iget-object v0, p0, Lcom/android/common/a/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/a/a;->r:Lcom/android/common/gles/a;

    invoke-virtual {v1}, Lcom/android/common/gles/a;->RM()I

    move-result v1

    if-ne v0, v1, :cond_3b

    .line 572
    iget-object v0, p0, Lcom/android/common/a/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/a/a;->r:Lcom/android/common/gles/a;

    invoke-virtual {v1}, Lcom/android/common/gles/a;->RN()I

    move-result v1

    if-eq v0, v1, :cond_4c

    .line 573
    :cond_3b
    iget-object v0, p0, Lcom/android/common/a/a;->r:Lcom/android/common/gles/a;

    iget-object v1, p0, Lcom/android/common/a/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/common/a/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/common/gles/a;->RP(II)V
    :try_end_4c
    .catchall {:try_start_1b .. :try_end_4c} :catchall_60

    :cond_4c
    monitor-exit p0

    .line 557
    return-void

    .line 562
    :cond_4e
    iget v2, p0, Lcom/android/common/a/a;->a:I

    if-eq v2, v0, :cond_d

    .line 563
    iget v2, p0, Lcom/android/common/a/a;->a:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_d

    .line 564
    iget v2, p0, Lcom/android/common/a/a;->a:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_d

    move v0, v1

    goto :goto_d

    :cond_5e
    move p2, v1

    .line 565
    goto :goto_11

    .line 569
    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public G(Z)V
    .registers 2

    .prologue
    .line 663
    iput-boolean p1, p0, Lcom/android/common/a/a;->t:Z

    .line 662
    return-void
.end method

.method public H(Lcom/android/common/gles/j;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/common/a/a;->z:Lcom/android/common/gles/j;

    .line 98
    return-void
.end method

.method public I(Landroid/view/SurfaceHolder;)V
    .registers 3

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/common/a/a;->A:Landroid/view/SurfaceHolder;

    .line 86
    iget-object v0, p0, Lcom/android/common/a/a;->w:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 87
    invoke-virtual {p0}, Lcom/android/common/a/a;->start()V

    .line 84
    return-void
.end method

.method public J(Z)V
    .registers 4

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startBlur realTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/common/a/a;->e(ZLjava/lang/String;)V

    .line 154
    iput-boolean p1, p0, Lcom/android/common/a/a;->n:Z

    .line 155
    iget-boolean v0, p0, Lcom/android/common/a/a;->b:Z

    if-eqz v0, :cond_1f

    .line 156
    return-void

    .line 158
    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/a/a;->b:Z

    .line 159
    invoke-virtual {p0}, Lcom/android/common/a/a;->C()V

    .line 152
    return-void
.end method

.method public K(I)V
    .registers 4

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startSwithCamera, switchStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/common/a/a;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/common/a/a;->e(ZLjava/lang/String;)V

    .line 185
    iget-boolean v0, p0, Lcom/android/common/a/a;->y:Z

    if-eqz v0, :cond_1f

    .line 186
    return-void

    .line 188
    :cond_1f
    iput p1, p0, Lcom/android/common/a/a;->x:I

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/a/a;->y:Z

    .line 190
    invoke-virtual {p0}, Lcom/android/common/a/a;->C()V

    .line 183
    return-void
.end method

.method public L()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 163
    const-string/jumbo v0, "stopBlur"

    invoke-direct {p0, v1, v0}, Lcom/android/common/a/a;->e(ZLjava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Lcom/android/common/a/a;->b:Z

    if-nez v0, :cond_c

    .line 165
    return-void

    .line 167
    :cond_c
    iput-boolean v1, p0, Lcom/android/common/a/a;->b:Z

    .line 168
    invoke-virtual {p0}, Lcom/android/common/a/a;->C()V

    .line 162
    return-void
.end method

.method public M()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopSwitchCamera, switchStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/common/a/a;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/common/a/a;->e(ZLjava/lang/String;)V

    .line 195
    iget-boolean v0, p0, Lcom/android/common/a/a;->y:Z

    if-nez v0, :cond_1f

    .line 196
    return-void

    .line 198
    :cond_1f
    iput-boolean v2, p0, Lcom/android/common/a/a;->y:Z

    .line 199
    invoke-virtual {p0}, Lcom/android/common/a/a;->C()V

    .line 193
    return-void
.end method

.method public N()V
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/common/a/a;->w:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 323
    return-void
.end method

.method public a(Lcom/android/common/a/b;)V
    .registers 5

    .prologue
    .line 221
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/common/a/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 220
    :cond_a
    :goto_a
    return-void

    .line 222
    :cond_b
    iget-object v1, p0, Lcom/android/common/a/a;->u:Ljava/util/ArrayList;

    monitor-enter v1

    .line 223
    :try_start_e
    iget-object v0, p0, Lcom/android/common/a/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/android/common/a/a;->u:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/common/a/l;

    invoke-direct {v2, p0}, Lcom/android/common/a/l;-><init>(Lcom/android/common/a/a;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1f

    monitor-exit v1

    goto :goto_a

    .line 222
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public c(Lcom/android/common/gles/e;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v0

    .line 119
    iget-object v2, p0, Lcom/android/common/a/a;->g:Lcom/android/common/gles/j;

    if-nez v2, :cond_37

    .line 120
    new-instance v2, Lcom/android/common/gles/j;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/common/gles/j;-><init>(II)V

    iput-object v2, p0, Lcom/android/common/a/a;->g:Lcom/android/common/gles/j;

    .line 121
    iget-object v2, p0, Lcom/android/common/a/a;->g:Lcom/android/common/gles/j;

    invoke-virtual {v2, p1}, Lcom/android/common/gles/j;->SK(Lcom/android/common/gles/e;)V

    .line 127
    :cond_1d
    :goto_1d
    iget-object v2, p0, Lcom/android/common/a/a;->g:Lcom/android/common/gles/j;

    invoke-virtual {p1, v2}, Lcom/android/common/gles/e;->RZ(Lcom/android/common/gles/c;)V

    .line 128
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/16 v0, 0xde1

    const/16 v2, 0x1908

    move v7, v1

    invoke-static/range {v0 .. v7}, Landroid/opengl/GLES20;->glCopyTexImage2D(IIIIIIII)V

    .line 117
    return-void

    .line 122
    :cond_37
    iget-object v2, p0, Lcom/android/common/a/a;->g:Lcom/android/common/gles/j;

    invoke-virtual {v2}, Lcom/android/common/gles/j;->RM()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_4f

    .line 123
    iget-object v2, p0, Lcom/android/common/a/a;->g:Lcom/android/common/gles/j;

    invoke-virtual {v2}, Lcom/android/common/gles/j;->RN()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_1d

    .line 124
    :cond_4f
    iget-object v2, p0, Lcom/android/common/a/a;->g:Lcom/android/common/gles/j;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/common/gles/j;->SL(II)V

    goto :goto_1d
.end method

.method public g()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 247
    iput-boolean v1, p0, Lcom/android/common/a/a;->l:Z

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/a/a;->o:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/common/a/a;->v:Z

    .line 250
    monitor-enter p0

    .line 251
    :try_start_9
    invoke-virtual {p0}, Lcom/android/common/a/a;->notify()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    monitor-exit p0

    .line 254
    :try_start_d
    invoke-virtual {p0}, Lcom/android/common/a/a;->join()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_14

    .line 246
    :goto_10
    return-void

    .line 250
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 255
    :catch_14
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_10
.end method

.method public h()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/android/common/a/a;->f:I

    return v0
.end method

.method public i()Lcom/android/common/gles/c;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/common/a/a;->g:Lcom/android/common/gles/j;

    return-object v0
.end method

.method public j()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/common/a/a;->h:Landroid/graphics/Rect;

    if-nez v0, :cond_7

    .line 633
    iget-object v0, p0, Lcom/android/common/a/a;->k:Landroid/graphics/Rect;

    return-object v0

    .line 635
    :cond_7
    iget-object v0, p0, Lcom/android/common/a/a;->h:Landroid/graphics/Rect;

    return-object v0
.end method

.method public k()Lcom/android/common/effects/b;
    .registers 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/common/a/a;->j:Lcom/android/common/effects/b;

    return-object v0
.end method

.method public l()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/common/a/a;->k:Landroid/graphics/Rect;

    return-object v0
.end method

.method public m()Lcom/android/common/gles/a;
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/common/a/a;->r:Lcom/android/common/gles/a;

    return-object v0
.end method

.method public n()Landroid/graphics/SurfaceTexture;
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/common/a/a;->c:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public o()I
    .registers 2

    .prologue
    .line 624
    iget v0, p0, Lcom/android/common/a/a;->d:I

    return v0
.end method

.method public p()Lcom/android/common/gles/j;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/common/a/a;->z:Lcom/android/common/gles/j;

    return-object v0
.end method

.method public q()Landroid/graphics/Rect;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 655
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v1

    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 330
    :try_start_0
    invoke-direct {p0}, Lcom/android/common/a/a;->r()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_2e

    .line 336
    iget-object v0, p0, Lcom/android/common/a/a;->i:Lcom/android/common/gles/m;

    invoke-virtual {v0}, Lcom/android/common/gles/m;->SR()Z

    .line 337
    new-instance v0, Lcom/android/common/gles/e;

    invoke-direct {v0}, Lcom/android/common/gles/e;-><init>()V

    iput-object v0, p0, Lcom/android/common/a/a;->e:Lcom/android/common/gles/e;

    .line 338
    invoke-direct {p0}, Lcom/android/common/a/a;->d()V

    .line 339
    iget-object v0, p0, Lcom/android/common/a/a;->w:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 341
    :cond_17
    :goto_17
    iget-boolean v0, p0, Lcom/android/common/a/a;->l:Z

    if-nez v0, :cond_a3

    .line 342
    monitor-enter p0

    .line 343
    :try_start_1c
    iget-boolean v0, p0, Lcom/android/common/a/a;->o:Z
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_3d

    if-eqz v0, :cond_40

    .line 345
    :try_start_20
    const-string/jumbo v0, "RenderThread"

    const-string/jumbo v1, "thread pause"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/common/a/a;->wait()V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_2c} :catch_38
    .catchall {:try_start_20 .. :try_end_2c} :catchall_3d

    :goto_2c
    monitor-exit p0

    goto :goto_17

    .line 331
    :catch_2e
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    iget-object v0, p0, Lcom/android/common/a/a;->w:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 334
    return-void

    .line 347
    :catch_38
    move-exception v0

    .line 348
    :try_start_39
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_2c

    .line 342
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_40
    monitor-exit p0

    .line 354
    iget-object v0, p0, Lcom/android/common/a/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/common/a/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_17

    .line 358
    iget-boolean v0, p0, Lcom/android/common/a/a;->t:Z

    if-eqz v0, :cond_5e

    .line 359
    monitor-enter p0

    .line 360
    :try_start_56
    iget-boolean v0, p0, Lcom/android/common/a/a;->v:Z

    if-eqz v0, :cond_77

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/a/a;->v:Z
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_80

    monitor-exit p0

    .line 379
    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcom/android/common/a/a;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_63
    .catch Ljava/lang/IllegalStateException; {:try_start_5e .. :try_end_63} :catch_83

    .line 386
    :goto_63
    invoke-direct {p0}, Lcom/android/common/a/a;->f()V

    .line 387
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 388
    iget-object v0, p0, Lcom/android/common/a/a;->i:Lcom/android/common/gles/m;

    invoke-virtual {v0}, Lcom/android/common/gles/m;->SS()V

    .line 389
    iget-object v0, p0, Lcom/android/common/a/a;->q:Lcom/android/common/a/d;

    invoke-static {v0}, Lcom/android/common/a/d;->ag(Lcom/android/common/a/d;)V

    .line 390
    invoke-direct {p0}, Lcom/android/common/a/a;->v()Z

    goto :goto_17

    .line 365
    :cond_77
    :try_start_77
    invoke-virtual {p0}, Lcom/android/common/a/a;->wait()V
    :try_end_7a
    .catch Ljava/lang/InterruptedException; {:try_start_77 .. :try_end_7a} :catch_7b
    .catchall {:try_start_77 .. :try_end_7a} :catchall_80

    goto :goto_2c

    .line 366
    :catch_7b
    move-exception v0

    .line 367
    :try_start_7c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_2c

    .line 359
    :catchall_80
    move-exception v0

    monitor-exit p0

    throw v0

    .line 381
    :catch_83
    move-exception v0

    .line 382
    const-string/jumbo v1, "RenderThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTexImage fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    .line 392
    :cond_a3
    invoke-direct {p0}, Lcom/android/common/a/a;->b()V

    .line 393
    invoke-direct {p0}, Lcom/android/common/a/a;->release()V

    .line 394
    iget-object v0, p0, Lcom/android/common/a/a;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/a/a;->c:Landroid/graphics/SurfaceTexture;

    .line 396
    iget-object v0, p0, Lcom/android/common/a/a;->i:Lcom/android/common/gles/m;

    invoke-virtual {v0}, Lcom/android/common/gles/m;->ST()V

    .line 397
    const-string/jumbo v0, "RenderThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/a/a;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/common/a/a;->m:Lcom/android/common/a/f;

    invoke-virtual {v0}, Lcom/android/common/a/f;->quit()V

    .line 399
    iget-object v0, p0, Lcom/android/common/a/a;->i:Lcom/android/common/gles/m;

    invoke-virtual {v0}, Lcom/android/common/gles/m;->release()V

    .line 328
    return-void
.end method

.method public s()Z
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/common/a/a;->z:Lcom/android/common/gles/j;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public declared-synchronized w()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 264
    :try_start_1
    const-string/jumbo v0, "RenderThread"

    const-string/jumbo v1, "Pause Render"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/a/a;->o:Z

    .line 266
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_17

    .line 267
    :try_start_e
    invoke-virtual {p0}, Lcom/android/common/a/a;->notify()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_14

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_17

    monitor-exit p0

    .line 263
    return-void

    .line 266
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0

    throw v0
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public z(Lcom/android/common/a/b;)V
    .registers 4

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/common/a/a;->u:Ljava/util/ArrayList;

    monitor-enter v1

    .line 242
    :try_start_3
    iget-object v0, p0, Lcom/android/common/a/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 240
    return-void

    .line 241
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

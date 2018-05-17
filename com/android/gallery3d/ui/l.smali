.class Lcom/android/gallery3d/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private awt:Landroid/os/Handler;

.field private awu:Lcom/android/gallery3d/ui/m;

.field private awv:Ljava/lang/Runnable;

.field private final aww:Landroid/widget/Scroller;

.field private final awx:Landroid/animation/ValueAnimator;

.field private awy:Landroid/animation/Animator$AnimatorListener;

.field private awz:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/gallery3d/ui/m;Landroid/animation/TimeInterpolator;)V
    .registers 7

    .prologue
    .line 2297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2251
    new-instance v0, Lcom/android/gallery3d/ui/x;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/x;-><init>(Lcom/android/gallery3d/ui/l;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/l;->awv:Ljava/lang/Runnable;

    .line 2266
    new-instance v0, Lcom/android/gallery3d/ui/y;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/y;-><init>(Lcom/android/gallery3d/ui/l;)V

    .line 2265
    iput-object v0, p0, Lcom/android/gallery3d/ui/l;->awz:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2274
    new-instance v0, Lcom/android/gallery3d/ui/z;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/z;-><init>(Lcom/android/gallery3d/ui/l;)V

    .line 2273
    iput-object v0, p0, Lcom/android/gallery3d/ui/l;->awy:Landroid/animation/Animator$AnimatorListener;

    .line 2299
    iput-object p2, p0, Lcom/android/gallery3d/ui/l;->awt:Landroid/os/Handler;

    .line 2300
    iput-object p3, p0, Lcom/android/gallery3d/ui/l;->awu:Lcom/android/gallery3d/ui/m;

    .line 2301
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/l;->aww:Landroid/widget/Scroller;

    .line 2302
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/l;->awx:Landroid/animation/ValueAnimator;

    .line 2303
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->awx:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/gallery3d/ui/l;->awz:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2304
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->awx:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/gallery3d/ui/l;->awy:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2305
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->awx:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2298
    return-void
.end method

.method private aLH()V
    .registers 3

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->awt:Landroid/os/Handler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->awu:Lcom/android/gallery3d/ui/m;

    if-nez v0, :cond_9

    .line 2343
    :cond_8
    return-void

    .line 2345
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->awt:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/l;->awv:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2346
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->awt:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/l;->awv:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2341
    return-void
.end method

.method static synthetic aLJ(Lcom/android/gallery3d/ui/l;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->awt:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic aLK(Lcom/android/gallery3d/ui/l;)Lcom/android/gallery3d/ui/m;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->awu:Lcom/android/gallery3d/ui/m;

    return-object v0
.end method

.method static synthetic aLL(Lcom/android/gallery3d/ui/l;)Landroid/widget/Scroller;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->aww:Landroid/widget/Scroller;

    return-object v0
.end method


# virtual methods
.method public aLE(IIIIIIII)V
    .registers 18

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->aww:Landroid/widget/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2314
    invoke-direct {p0}, Lcom/android/gallery3d/ui/l;->aLH()V

    .line 2312
    return-void
.end method

.method public aLF(Z)V
    .registers 3

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->aww:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2336
    if-eqz p1, :cond_c

    .line 2337
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->awx:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2334
    :cond_c
    return-void
.end method

.method public aLG()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2331
    iget-object v1, p0, Lcom/android/gallery3d/ui/l;->aww:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/gallery3d/ui/l;->awx:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public aLI(IIIII)V
    .registers 10

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->awx:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2325
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->awx:Landroid/animation/ValueAnimator;

    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2326
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->awx:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    add-int v2, p1, p3

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 2327
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->awx:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2323
    return-void
.end method

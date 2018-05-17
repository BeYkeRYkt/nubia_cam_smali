.class public Lcom/android/common/ui/CanVerticalSeekBar;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# instance fields
.field private sk:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/CanVerticalSeekBar;->sk:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/CanVerticalSeekBar;->sk:Z

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/CanVerticalSeekBar;->xj(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/CanVerticalSeekBar;->sk:Z

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/CanVerticalSeekBar;->xj(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method private xj(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 29
    sget-object v0, Lcom/android/camera/k;->apc:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/common/ui/CanVerticalSeekBar;->sk:Z

    .line 31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    monitor-enter p0

    .line 54
    :try_start_1
    iget-boolean v0, p0, Lcom/android/common/ui/CanVerticalSeekBar;->sk:Z

    if-eqz v0, :cond_14

    .line 55
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 56
    invoke-virtual {p0}, Lcom/android/common/ui/CanVerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 58
    :cond_14
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    .line 53
    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 5

    .prologue
    monitor-enter p0

    .line 46
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 47
    iget-boolean v0, p0, Lcom/android/common/ui/CanVerticalSeekBar;->sk:Z

    if-eqz v0, :cond_13

    .line 48
    invoke-virtual {p0}, Lcom/android/common/ui/CanVerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/CanVerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/CanVerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit p0

    .line 45
    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/common/ui/CanVerticalSeekBar;->sk:Z

    if-eqz v0, :cond_8

    .line 37
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 35
    :goto_7
    return-void

    .line 39
    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    goto :goto_7
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-boolean v0, p0, Lcom/android/common/ui/CanVerticalSeekBar;->sk:Z

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 64
    :cond_a
    invoke-virtual {p0}, Lcom/android/common/ui/CanVerticalSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    return v3

    .line 66
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 78
    :goto_18
    :pswitch_18
    const/4 v0, 0x1

    return v0

    .line 71
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/common/ui/CanVerticalSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/CanVerticalSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/common/ui/CanVerticalSeekBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/common/ui/CanVerticalSeekBar;->setProgress(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/common/ui/CanVerticalSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/CanVerticalSeekBar;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/android/common/ui/CanVerticalSeekBar;->onSizeChanged(IIII)V

    goto :goto_18

    .line 66
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_18
    .end packed-switch
.end method

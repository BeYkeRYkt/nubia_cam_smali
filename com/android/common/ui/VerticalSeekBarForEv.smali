.class public Lcom/android/common/ui/VerticalSeekBarForEv;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# instance fields
.field private pU:Z

.field private pV:Lcom/android/common/appService/W;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/VerticalSeekBarForEv;->pU:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/VerticalSeekBarForEv;->pU:Z

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/VerticalSeekBarForEv;->vs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/VerticalSeekBarForEv;->pU:Z

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/VerticalSeekBarForEv;->vs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method private vs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 40
    return-void
.end method

.method private vt()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/common/ui/VerticalSeekBarForEv;->pV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    monitor-enter p0

    .line 66
    :try_start_1
    iget-boolean v0, p0, Lcom/android/common/ui/VerticalSeekBarForEv;->pU:Z

    if-eqz v0, :cond_14

    .line 67
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 68
    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    :cond_14
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    .line 65
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

    .line 58
    :try_start_1
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 59
    iget-boolean v0, p0, Lcom/android/common/ui/VerticalSeekBarForEv;->pU:Z

    if-eqz v0, :cond_13

    .line 60
    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/VerticalSeekBarForEv;->setMeasuredDimension(II)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit p0

    .line 57
    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/common/ui/VerticalSeekBarForEv;->pU:Z

    if-eqz v0, :cond_8

    .line 49
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 47
    :goto_7
    return-void

    .line 51
    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    goto :goto_7
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    iget-boolean v0, p0, Lcom/android/common/ui/VerticalSeekBarForEv;->pU:Z

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 76
    :cond_d
    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    return v4

    .line 77
    :cond_14
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acZ()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 78
    iget-object v0, p0, Lcom/android/common/ui/VerticalSeekBarForEv;->pV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XI()Z

    move-result v0

    .line 77
    if-eqz v0, :cond_2f

    .line 79
    return v4

    .line 82
    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_e0

    .line 116
    :cond_36
    :goto_36
    :pswitch_36
    return v5

    .line 87
    :pswitch_37
    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getMax()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/common/ui/VerticalSeekBarForEv;->setProgress(I)V

    .line 90
    iget-object v1, p0, Lcom/android/common/ui/VerticalSeekBarForEv;->pV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 91
    invoke-virtual {p0, v1}, Lcom/android/common/ui/VerticalSeekBarForEv;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2, v4, v4}, Lcom/android/common/ui/VerticalSeekBarForEv;->onSizeChanged(IIII)V

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_ac

    .line 97
    if-ltz v0, :cond_ac

    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getMax()I

    move-result v1

    if-gt v0, v1, :cond_ac

    .line 98
    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getMax()I

    move-result v1

    div-int/lit8 v1, v1, 0x18

    rem-int v1, v0, v1

    if-nez v1, :cond_ac

    .line 99
    invoke-direct {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->vt()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 100
    const-string/jumbo v2, "pref_camera_exposure_key"

    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getMax()I

    move-result v3

    div-int/lit8 v3, v3, 0x18

    div-int v3, v0, v3

    add-int/lit8 v3, v3, -0xc

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    iget-object v1, p0, Lcom/android/common/ui/VerticalSeekBarForEv;->pV:Lcom/android/common/appService/W;

    invoke-virtual {v1, v6}, Lcom/android/common/appService/W;->pU(I)V

    .line 105
    :cond_ac
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_36

    .line 106
    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getMax()I

    move-result v1

    invoke-static {v0, v4, v1}, Lcom/android/common/h;->aoS(III)I

    move-result v0

    .line 107
    invoke-direct {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->vt()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 108
    const-string/jumbo v2, "pref_camera_exposure_key"

    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getMax()I

    move-result v3

    div-int/lit8 v3, v3, 0x18

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    iget-object v0, p0, Lcom/android/common/ui/VerticalSeekBarForEv;->pV:Lcom/android/common/appService/W;

    invoke-virtual {v0, v6}, Lcom/android/common/appService/W;->pU(I)V

    goto/16 :goto_36

    .line 82
    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_36
    .end packed-switch
.end method

.method public vu(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/common/ui/VerticalSeekBarForEv;->pV:Lcom/android/common/appService/W;

    .line 121
    const/16 v0, 0x120

    invoke-virtual {p0, v0}, Lcom/android/common/ui/VerticalSeekBarForEv;->setMax(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getMax()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/common/ui/VerticalSeekBarForEv;->setProgress(I)V

    .line 119
    return-void
.end method

.method public vv()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/common/ui/VerticalSeekBarForEv;->onSizeChanged(IIII)V

    .line 125
    return-void
.end method

.class public Lcom/android/common/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private oe:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private of:[I

.field private og:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/SeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .registers 5

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/android/common/ui/b;->og:Landroid/widget/SeekBar;

    .line 18
    iput-object p3, p0, Lcom/android/common/ui/b;->oe:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 19
    invoke-static {p1, p2}, Lcom/android/common/h;->aoR(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/b;->of:[I

    .line 16
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 24
    iget-object v0, p0, Lcom/android/common/ui/b;->og:Landroid/widget/SeekBar;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/common/ui/b;->og:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_62

    .line 46
    :goto_14
    const/4 v0, 0x1

    return v0

    .line 24
    :cond_16
    return v3

    .line 28
    :pswitch_17
    iget-object v0, p0, Lcom/android/common/ui/b;->oe:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/android/common/ui/b;->og:Landroid/widget/SeekBar;

    invoke-interface {v0, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_14

    .line 32
    :pswitch_1f
    iget-object v0, p0, Lcom/android/common/ui/b;->og:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    .line 33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/common/ui/b;->of:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/common/ui/b;->og:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    invoke-static {v1, v3, v2}, Lcom/android/common/h;->aoS(III)I

    move-result v1

    .line 32
    mul-int/2addr v0, v1

    .line 34
    iget-object v1, p0, Lcom/android/common/ui/b;->og:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v1

    .line 32
    div-int/2addr v0, v1

    .line 35
    sget-boolean v1, Lcom/android/common/h;->ahq:Z

    if-eqz v1, :cond_53

    .line 36
    iget-object v1, p0, Lcom/android/common/ui/b;->og:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/common/ui/b;->og:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_14

    .line 38
    :cond_53
    iget-object v1, p0, Lcom/android/common/ui/b;->og:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_14

    .line 43
    :pswitch_59
    iget-object v0, p0, Lcom/android/common/ui/b;->oe:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/android/common/ui/b;->og:Landroid/widget/SeekBar;

    invoke-interface {v0, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_14

    .line 26
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_17
        :pswitch_59
        :pswitch_1f
        :pswitch_59
    .end packed-switch
.end method

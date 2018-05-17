.class Lcom/android/camera/cameraFamily/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private alG:I

.field private alH:I

.field private alI:I

.field private alJ:I

.field final synthetic alK:Lcom/android/camera/cameraFamily/a;


# direct methods
.method private constructor <init>(Lcom/android/camera/cameraFamily/a;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 432
    iput-object p1, p0, Lcom/android/camera/cameraFamily/b;->alK:Lcom/android/camera/cameraFamily/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput v0, p0, Lcom/android/camera/cameraFamily/b;->alI:I

    .line 434
    iput v0, p0, Lcom/android/camera/cameraFamily/b;->alJ:I

    .line 435
    iput v0, p0, Lcom/android/camera/cameraFamily/b;->alG:I

    .line 436
    iput v0, p0, Lcom/android/camera/cameraFamily/b;->alH:I

    .line 432
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/cameraFamily/a;Lcom/android/camera/cameraFamily/b;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/cameraFamily/b;-><init>(Lcom/android/camera/cameraFamily/a;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/16 v4, 0x32

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 440
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_7e

    .line 466
    :cond_b
    :goto_b
    return v2

    .line 442
    :pswitch_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/cameraFamily/b;->alI:I

    .line 443
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/cameraFamily/b;->alJ:I

    goto :goto_b

    .line 446
    :pswitch_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/cameraFamily/b;->alI:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/cameraFamily/b;->alG:I

    .line 447
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/cameraFamily/b;->alJ:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/cameraFamily/b;->alH:I

    goto :goto_b

    .line 451
    :pswitch_30
    iget-object v0, p0, Lcom/android/camera/cameraFamily/b;->alK:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awZ(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v3, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v3, :cond_52

    .line 452
    iget v0, p0, Lcom/android/camera/cameraFamily/b;->alG:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v4, :cond_52

    .line 453
    iget v0, p0, Lcom/android/camera/cameraFamily/b;->alH:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v4, :cond_52

    .line 454
    iget-object v0, p0, Lcom/android/camera/cameraFamily/b;->alK:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awD(Lcom/android/camera/cameraFamily/a;)Z

    move-result v0

    if-eqz v0, :cond_65

    :cond_52
    move v0, v1

    .line 457
    :goto_53
    if-eqz v0, :cond_b

    .line 458
    iget-object v0, p0, Lcom/android/camera/cameraFamily/b;->alK:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0, v2}, Lcom/android/camera/cameraFamily/a;->awT(Lcom/android/camera/cameraFamily/a;Z)Z

    .line 459
    iget-object v0, p0, Lcom/android/camera/cameraFamily/b;->alK:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->axd(Lcom/android/camera/cameraFamily/a;)V

    .line 460
    iget-object v0, p0, Lcom/android/camera/cameraFamily/b;->alK:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0, v1}, Lcom/android/camera/cameraFamily/a;->awT(Lcom/android/camera/cameraFamily/a;Z)Z

    goto :goto_b

    .line 455
    :cond_65
    iget-object v0, p0, Lcom/android/camera/cameraFamily/b;->alK:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awE(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-nez v0, :cond_52

    .line 456
    iget-object v0, p0, Lcom/android/camera/cameraFamily/b;->alK:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/a;->aws()Z

    move-result v0

    if-eqz v0, :cond_7b

    move v0, v1

    goto :goto_53

    :cond_7b
    move v0, v2

    goto :goto_53

    .line 440
    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_30
        :pswitch_1b
        :pswitch_30
    .end packed-switch
.end method

.class public Lcom/android/common/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Zv:Lcom/android/common/j/b;

.field private Zw:Z


# direct methods
.method public constructor <init>(Lcom/android/common/j/b;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/common/j/a;->Zv:Lcom/android/common/j/b;

    .line 30
    return-void
.end method

.method private afO(ZLandroid/view/MotionEvent;)V
    .registers 4

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/common/j/a;->Zw:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 36
    :cond_5
    iput-boolean p1, p0, Lcom/android/common/j/a;->Zw:Z

    .line 37
    if-eqz p1, :cond_f

    .line 38
    iget-object v0, p0, Lcom/android/common/j/a;->Zv:Lcom/android/common/j/b;

    invoke-interface {v0, p2}, Lcom/android/common/j/b;->onDown(Landroid/view/MotionEvent;)V

    .line 34
    :goto_e
    return-void

    .line 40
    :cond_f
    iget-object v0, p0, Lcom/android/common/j/a;->Zv:Lcom/android/common/j/b;

    invoke-interface {v0, p2}, Lcom/android/common/j/b;->afP(Landroid/view/MotionEvent;)V

    goto :goto_e
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_14

    .line 44
    :goto_9
    :pswitch_9
    return-void

    .line 47
    :pswitch_a
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/common/j/a;->afO(ZLandroid/view/MotionEvent;)V

    goto :goto_9

    .line 53
    :pswitch_f
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/common/j/a;->afO(ZLandroid/view/MotionEvent;)V

    goto :goto_9

    .line 45
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_a
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method

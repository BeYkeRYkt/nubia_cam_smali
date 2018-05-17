.class Lcom/android/pretty/h;
.super Landroid/view/TouchDelegate;
.source "SourceFile"


# instance fields
.field private aDl:Landroid/view/TouchDelegate;

.field private aDm:Ljava/util/ArrayList;

.field final synthetic aDn:Lcom/android/pretty/LargeMultipleTouchableRelativeLayout;


# direct methods
.method public constructor <init>(Lcom/android/pretty/LargeMultipleTouchableRelativeLayout;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/pretty/h;->aDn:Lcom/android/pretty/LargeMultipleTouchableRelativeLayout;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v0, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 35
    return-void
.end method


# virtual methods
.method public aSw(Landroid/view/TouchDelegate;)V
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/pretty/h;->aDm:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/pretty/h;->aDm:Ljava/util/ArrayList;

    .line 46
    :cond_b
    iget-object v0, p0, Lcom/android/pretty/h;->aDm:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/android/pretty/h;->aDm:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    move-object v0, v1

    .line 95
    :goto_9
    if-nez v0, :cond_39

    const/4 v0, 0x0

    :goto_c
    return v0

    .line 72
    :pswitch_d
    iget-object v0, p0, Lcom/android/pretty/h;->aDm:Ljava/util/ArrayList;

    if-eqz v0, :cond_2f

    .line 73
    iget-object v0, p0, Lcom/android/pretty/h;->aDm:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TouchDelegate;

    .line 74
    if-eqz v0, :cond_17

    .line 75
    invoke-virtual {v0, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 76
    iput-object v0, p0, Lcom/android/pretty/h;->aDl:Landroid/view/TouchDelegate;

    .line 77
    const/4 v0, 0x1

    return v0

    :cond_2f
    move-object v0, v1

    .line 82
    goto :goto_9

    .line 85
    :pswitch_31
    iget-object v0, p0, Lcom/android/pretty/h;->aDl:Landroid/view/TouchDelegate;

    goto :goto_9

    .line 90
    :pswitch_34
    iget-object v0, p0, Lcom/android/pretty/h;->aDl:Landroid/view/TouchDelegate;

    .line 91
    iput-object v1, p0, Lcom/android/pretty/h;->aDl:Landroid/view/TouchDelegate;

    goto :goto_9

    .line 95
    :cond_39
    invoke-virtual {v0, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_c

    .line 70
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_34
        :pswitch_31
        :pswitch_34
    .end packed-switch
.end method

.class Lcom/android/pretty/w;
.super Landroid/view/TouchDelegate;
.source "SourceFile"


# instance fields
.field private aFa:Landroid/view/View;

.field private aFb:Ljava/lang/String;

.field final synthetic aFc:Lcom/android/pretty/u;


# direct methods
.method public constructor <init>(Lcom/android/pretty/u;Ljava/lang/String;Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/pretty/w;->aFc:Lcom/android/pretty/u;

    .line 647
    invoke-direct {p0, p3, p4}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 648
    iput-object p4, p0, Lcom/android/pretty/w;->aFa:Landroid/view/View;

    .line 649
    iput-object p2, p0, Lcom/android/pretty/w;->aFb:Ljava/lang/String;

    .line 646
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 654
    instance-of v0, p1, Lcom/android/pretty/w;

    if-eqz v0, :cond_10

    .line 655
    check-cast p1, Lcom/android/pretty/w;

    iget-object v0, p1, Lcom/android/pretty/w;->aFa:Landroid/view/View;

    iget-object v1, p0, Lcom/android/pretty/w;->aFa:Landroid/view/View;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    .line 657
    :cond_10
    invoke-super {p0, p1}, Landroid/view/TouchDelegate;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 662
    iget-object v0, p0, Lcom/android/pretty/w;->aFa:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 663
    invoke-super {p0, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 664
    return v0

    .line 666
    :cond_e
    return v1
.end method

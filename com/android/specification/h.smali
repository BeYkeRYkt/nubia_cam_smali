.class public Lcom/android/specification/h;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/common/ui/z;


# instance fields
.field private aZi:Landroid/widget/LinearLayout;

.field private aZj:Landroid/view/animation/Animation;

.field private aZk:Z

.field private aZl:Lcom/android/common/ui/NubiaScrollView;

.field private aZm:Landroid/view/animation/Animation;

.field private aZn:Landroid/widget/ImageView;

.field private aZo:Landroid/widget/TextView;

.field private aZp:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/specification/h;->aZn:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/android/specification/h;->aZi:Landroid/widget/LinearLayout;

    .line 25
    iput-object v0, p0, Lcom/android/specification/h;->aZp:Landroid/widget/ImageButton;

    .line 26
    iput-object v0, p0, Lcom/android/specification/h;->aZo:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/android/specification/h;->aZl:Lcom/android/common/ui/NubiaScrollView;

    .line 28
    iput-object v0, p0, Lcom/android/specification/h;->aZm:Landroid/view/animation/Animation;

    .line 29
    iput-object v0, p0, Lcom/android/specification/h;->aZj:Landroid/view/animation/Animation;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/specification/h;->aZk:Z

    .line 20
    return-void
.end method

.method private bpV()V
    .registers 3

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/specification/h;->aZk:Z

    if-nez v0, :cond_5

    .line 63
    return-void

    .line 65
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/specification/h;->aZk:Z

    .line 66
    iget-object v0, p0, Lcom/android/specification/h;->aZp:Landroid/widget/ImageButton;

    const v1, 0x7f02029c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 67
    iget-object v0, p0, Lcom/android/specification/h;->aZo:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/android/specification/h;->aZn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/specification/h;->aZj:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 69
    iget-object v0, p0, Lcom/android/specification/h;->aZn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    return-void
.end method

.method private bpW(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 52
    const v0, 0x7f100174

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/NubiaScrollView;

    iput-object v0, p0, Lcom/android/specification/h;->aZl:Lcom/android/common/ui/NubiaScrollView;

    .line 53
    iget-object v0, p0, Lcom/android/specification/h;->aZl:Lcom/android/common/ui/NubiaScrollView;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/NubiaScrollView;->xS(Lcom/android/common/ui/z;)V

    .line 54
    iget-object v0, p0, Lcom/android/specification/h;->aZl:Lcom/android/common/ui/NubiaScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    .line 55
    invoke-virtual {p0}, Lcom/android/specification/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 56
    const v1, 0x7f050014

    .line 55
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/specification/h;->aZm:Landroid/view/animation/Animation;

    .line 57
    invoke-virtual {p0}, Lcom/android/specification/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 58
    const/high16 v1, 0x7f050000

    .line 57
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/specification/h;->aZj:Landroid/view/animation/Animation;

    .line 51
    return-void
.end method

.method private bpX(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 42
    const v0, 0x7f100176

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/specification/h;->aZn:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f100178

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/specification/h;->aZp:Landroid/widget/ImageButton;

    .line 44
    const v0, 0x7f100177

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/specification/h;->aZi:Landroid/widget/LinearLayout;

    .line 45
    const v0, 0x7f100179

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/specification/h;->aZo:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/android/specification/h;->aZi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/android/specification/h;->aZp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/android/specification/h;->bpW(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method private bpY()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-boolean v0, p0, Lcom/android/specification/h;->aZk:Z

    if-eqz v0, :cond_6

    .line 74
    return-void

    .line 76
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/specification/h;->aZk:Z

    .line 77
    iget-object v0, p0, Lcom/android/specification/h;->aZp:Landroid/widget/ImageButton;

    const v1, 0x7f02029b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 78
    iget-object v0, p0, Lcom/android/specification/h;->aZo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/android/specification/h;->aZn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/specification/h;->aZm:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    iget-object v0, p0, Lcom/android/specification/h;->aZn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 84
    :goto_7
    return-void

    .line 88
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/specification/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_7

    .line 85
    :pswitch_data_10
    .packed-switch 0x7f100177
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 35
    const v0, 0x7f040070

    .line 36
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Lcom/android/specification/h;->bpX(Landroid/view/View;)V

    .line 38
    return-object v0
.end method

.method public xT(IIII)V
    .registers 6

    .prologue
    const/16 v0, 0x12c

    .line 98
    if-le p2, p4, :cond_a

    if-le p2, v0, :cond_a

    .line 99
    invoke-direct {p0}, Lcom/android/specification/h;->bpY()V

    .line 97
    :cond_9
    :goto_9
    return-void

    .line 100
    :cond_a
    if-ge p2, p4, :cond_9

    if-ge p2, v0, :cond_9

    .line 101
    invoke-direct {p0}, Lcom/android/specification/h;->bpV()V

    goto :goto_9
.end method

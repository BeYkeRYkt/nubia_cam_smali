.class public Lcom/android/specification/f;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/common/ui/z;


# instance fields
.field private aYC:Landroid/widget/LinearLayout;

.field private aYD:Landroid/widget/ImageButton;

.field private aYE:Landroid/view/View;

.field private aYF:Landroid/view/animation/Animation;

.field private aYG:Z

.field private aYH:Landroid/widget/ImageButton;

.field private aYI:Landroid/view/View;

.field private aYJ:Landroid/widget/ImageButton;

.field private aYK:Landroid/view/View;

.field private aYL:Lcom/android/common/ui/NubiaScrollView;

.field private aYM:Landroid/view/animation/Animation;

.field private aYN:Landroid/widget/ImageButton;

.field private aYO:Landroid/view/View;

.field private aYP:Landroid/widget/ImageView;

.field private aYQ:Landroid/widget/ImageButton;

.field private aYR:Landroid/widget/TextView;

.field private aYS:Landroid/widget/ImageButton;

.field private aYT:Landroid/view/View;

.field private aYU:Landroid/widget/ImageButton;

.field private aYV:Landroid/view/View;

.field private aYW:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/android/specification/f;->aYP:Landroid/widget/ImageView;

    .line 34
    iput-object v1, p0, Lcom/android/specification/f;->aYC:Landroid/widget/LinearLayout;

    .line 35
    iput-object v1, p0, Lcom/android/specification/f;->aYW:Landroid/widget/ImageButton;

    .line 36
    iput-object v1, p0, Lcom/android/specification/f;->aYR:Landroid/widget/TextView;

    .line 37
    iput-object v1, p0, Lcom/android/specification/f;->aYL:Lcom/android/common/ui/NubiaScrollView;

    .line 38
    iput-object v1, p0, Lcom/android/specification/f;->aYM:Landroid/view/animation/Animation;

    .line 39
    iput-object v1, p0, Lcom/android/specification/f;->aYF:Landroid/view/animation/Animation;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/specification/f;->aYG:Z

    .line 42
    iput-object v1, p0, Lcom/android/specification/f;->aYQ:Landroid/widget/ImageButton;

    .line 43
    iput-object v1, p0, Lcom/android/specification/f;->aYD:Landroid/widget/ImageButton;

    .line 44
    iput-object v1, p0, Lcom/android/specification/f;->aYJ:Landroid/widget/ImageButton;

    .line 45
    iput-object v1, p0, Lcom/android/specification/f;->aYU:Landroid/widget/ImageButton;

    .line 46
    iput-object v1, p0, Lcom/android/specification/f;->aYN:Landroid/widget/ImageButton;

    .line 47
    iput-object v1, p0, Lcom/android/specification/f;->aYH:Landroid/widget/ImageButton;

    .line 48
    iput-object v1, p0, Lcom/android/specification/f;->aYS:Landroid/widget/ImageButton;

    .line 49
    iput-object v1, p0, Lcom/android/specification/f;->aYE:Landroid/view/View;

    .line 50
    iput-object v1, p0, Lcom/android/specification/f;->aYK:Landroid/view/View;

    .line 51
    iput-object v1, p0, Lcom/android/specification/f;->aYV:Landroid/view/View;

    .line 52
    iput-object v1, p0, Lcom/android/specification/f;->aYO:Landroid/view/View;

    .line 53
    iput-object v1, p0, Lcom/android/specification/f;->aYI:Landroid/view/View;

    .line 54
    iput-object v1, p0, Lcom/android/specification/f;->aYT:Landroid/view/View;

    .line 30
    return-void
.end method

.method private bpF(Landroid/view/View;)I
    .registers 4

    .prologue
    .line 177
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 178
    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 180
    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit16 v0, v0, -0xb4

    iget-object v1, p0, Lcom/android/specification/f;->aYL:Lcom/android/common/ui/NubiaScrollView;

    invoke-virtual {v1}, Lcom/android/common/ui/NubiaScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private bpG()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 119
    iget-boolean v0, p0, Lcom/android/specification/f;->aYG:Z

    if-nez v0, :cond_7

    .line 120
    return-void

    .line 122
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/specification/f;->aYG:Z

    .line 123
    iget-object v0, p0, Lcom/android/specification/f;->aYW:Landroid/widget/ImageButton;

    const v1, 0x7f02029c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 124
    iget-object v0, p0, Lcom/android/specification/f;->aYR:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/android/specification/f;->aYP:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/specification/f;->aYF:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    iget-object v0, p0, Lcom/android/specification/f;->aYP:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/specification/f;->aYQ:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 118
    return-void
.end method

.method private bpH(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 91
    const v0, 0x7f100180

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/specification/f;->aYQ:Landroid/widget/ImageButton;

    .line 92
    const v0, 0x7f10017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/specification/f;->aYD:Landroid/widget/ImageButton;

    .line 93
    const v0, 0x7f10017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/specification/f;->aYJ:Landroid/widget/ImageButton;

    .line 94
    const v0, 0x7f10017c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/specification/f;->aYU:Landroid/widget/ImageButton;

    .line 95
    const v0, 0x7f100041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/specification/f;->aYN:Landroid/widget/ImageButton;

    .line 96
    const v0, 0x7f10017d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/specification/f;->aYH:Landroid/widget/ImageButton;

    .line 97
    const v0, 0x7f10017e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/specification/f;->aYS:Landroid/widget/ImageButton;

    .line 98
    iget-object v0, p0, Lcom/android/specification/f;->aYQ:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/android/specification/f;->aYD:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/specification/f;->aYJ:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/specification/f;->aYU:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/specification/f;->aYN:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/specification/f;->aYH:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/specification/f;->aYS:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method private bpI(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 109
    const v0, 0x7f100174

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/NubiaScrollView;

    iput-object v0, p0, Lcom/android/specification/f;->aYL:Lcom/android/common/ui/NubiaScrollView;

    .line 110
    iget-object v0, p0, Lcom/android/specification/f;->aYL:Lcom/android/common/ui/NubiaScrollView;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/NubiaScrollView;->xS(Lcom/android/common/ui/z;)V

    .line 111
    iget-object v0, p0, Lcom/android/specification/f;->aYL:Lcom/android/common/ui/NubiaScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    .line 112
    invoke-virtual {p0}, Lcom/android/specification/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 113
    const v1, 0x7f050014

    .line 112
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/specification/f;->aYM:Landroid/view/animation/Animation;

    .line 114
    invoke-virtual {p0}, Lcom/android/specification/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 115
    const/high16 v1, 0x7f050000

    .line 114
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/specification/f;->aYF:Landroid/view/animation/Animation;

    .line 107
    return-void
.end method

.method private bpJ(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 82
    const v0, 0x7f100181

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/specification/f;->aYE:Landroid/view/View;

    .line 83
    const v0, 0x7f100184

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/specification/f;->aYK:Landroid/view/View;

    .line 84
    const v0, 0x7f100189

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/specification/f;->aYV:Landroid/view/View;

    .line 85
    const v0, 0x7f100187

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/specification/f;->aYO:Landroid/view/View;

    .line 86
    const v0, 0x7f100183

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/specification/f;->aYI:Landroid/view/View;

    .line 87
    const v0, 0x7f100188

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/specification/f;->aYT:Landroid/view/View;

    .line 81
    return-void
.end method

.method private bpK(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 67
    const v0, 0x7f100176

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/specification/f;->aYP:Landroid/widget/ImageView;

    .line 69
    const v0, 0x7f100178

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/specification/f;->aYW:Landroid/widget/ImageButton;

    .line 71
    const v0, 0x7f100177

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/specification/f;->aYC:Landroid/widget/LinearLayout;

    .line 73
    const v0, 0x7f100179

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/specification/f;->aYR:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/android/specification/f;->aYC:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/android/specification/f;->aYW:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/android/specification/f;->bpI(Landroid/view/View;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/android/specification/f;->bpH(Landroid/view/View;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/android/specification/f;->bpJ(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method private bpL()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-boolean v0, p0, Lcom/android/specification/f;->aYG:Z

    if-eqz v0, :cond_6

    .line 132
    return-void

    .line 134
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/specification/f;->aYG:Z

    .line 135
    iget-object v0, p0, Lcom/android/specification/f;->aYW:Landroid/widget/ImageButton;

    const v1, 0x7f02029b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 136
    iget-object v0, p0, Lcom/android/specification/f;->aYR:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/android/specification/f;->aYP:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/specification/f;->aYM:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 138
    iget-object v0, p0, Lcom/android/specification/f;->aYP:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/android/specification/f;->aYQ:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 130
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_62

    .line 143
    :goto_8
    return-void

    .line 147
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/specification/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_8

    .line 150
    :sswitch_11
    iget-object v0, p0, Lcom/android/specification/f;->aYL:Lcom/android/common/ui/NubiaScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/android/common/ui/NubiaScrollView;->fullScroll(I)Z

    goto :goto_8

    .line 153
    :sswitch_19
    iget-object v0, p0, Lcom/android/specification/f;->aYL:Lcom/android/common/ui/NubiaScrollView;

    iget-object v1, p0, Lcom/android/specification/f;->aYE:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/specification/f;->bpF(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    goto :goto_8

    .line 156
    :sswitch_25
    iget-object v0, p0, Lcom/android/specification/f;->aYL:Lcom/android/common/ui/NubiaScrollView;

    iget-object v1, p0, Lcom/android/specification/f;->aYK:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/specification/f;->bpF(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    goto :goto_8

    .line 159
    :sswitch_31
    iget-object v0, p0, Lcom/android/specification/f;->aYL:Lcom/android/common/ui/NubiaScrollView;

    iget-object v1, p0, Lcom/android/specification/f;->aYV:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/specification/f;->bpF(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    goto :goto_8

    .line 162
    :sswitch_3d
    iget-object v0, p0, Lcom/android/specification/f;->aYL:Lcom/android/common/ui/NubiaScrollView;

    iget-object v1, p0, Lcom/android/specification/f;->aYO:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/specification/f;->bpF(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    goto :goto_8

    .line 165
    :sswitch_49
    iget-object v0, p0, Lcom/android/specification/f;->aYL:Lcom/android/common/ui/NubiaScrollView;

    iget-object v1, p0, Lcom/android/specification/f;->aYI:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/specification/f;->bpF(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    goto :goto_8

    .line 168
    :sswitch_55
    iget-object v0, p0, Lcom/android/specification/f;->aYL:Lcom/android/common/ui/NubiaScrollView;

    iget-object v1, p0, Lcom/android/specification/f;->aYT:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/specification/f;->bpF(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    goto :goto_8

    .line 144
    nop

    :sswitch_data_62
    .sparse-switch
        0x7f100041 -> :sswitch_3d
        0x7f100177 -> :sswitch_9
        0x7f100178 -> :sswitch_9
        0x7f10017a -> :sswitch_19
        0x7f10017b -> :sswitch_25
        0x7f10017c -> :sswitch_31
        0x7f10017d -> :sswitch_49
        0x7f10017e -> :sswitch_55
        0x7f100180 -> :sswitch_11
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 59
    const v0, 0x7f040073

    .line 60
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    invoke-direct {p0, v0}, Lcom/android/specification/f;->bpK(Landroid/view/View;)V

    .line 62
    return-object v0
.end method

.method public xT(IIII)V
    .registers 6

    .prologue
    const/16 v0, 0x12c

    .line 185
    if-le p2, p4, :cond_a

    if-le p2, v0, :cond_a

    .line 186
    invoke-direct {p0}, Lcom/android/specification/f;->bpL()V

    .line 184
    :cond_9
    :goto_9
    return-void

    .line 187
    :cond_a
    if-ge p2, p4, :cond_9

    if-ge p2, v0, :cond_9

    .line 188
    invoke-direct {p0}, Lcom/android/specification/f;->bpG()V

    goto :goto_9
.end method

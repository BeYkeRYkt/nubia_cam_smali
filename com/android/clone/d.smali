.class public Lcom/android/clone/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aTf:Landroid/widget/ImageView;

.field private aTg:Landroid/widget/LinearLayout;

.field private aTh:Landroid/widget/TextView;

.field private aTi:Landroid/content/Context;

.field private aTj:Landroid/widget/ImageView;

.field private aTk:Landroid/widget/LinearLayout;

.field private aTl:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/android/clone/d;->aTi:Landroid/content/Context;

    .line 14
    iput-object v0, p0, Lcom/android/clone/d;->aTk:Landroid/widget/LinearLayout;

    .line 15
    iput-object v0, p0, Lcom/android/clone/d;->aTj:Landroid/widget/ImageView;

    .line 16
    iput-object v0, p0, Lcom/android/clone/d;->aTl:Landroid/widget/TextView;

    .line 17
    iput-object v0, p0, Lcom/android/clone/d;->aTg:Landroid/widget/LinearLayout;

    .line 18
    iput-object v0, p0, Lcom/android/clone/d;->aTf:Landroid/widget/ImageView;

    .line 19
    iput-object v0, p0, Lcom/android/clone/d;->aTh:Landroid/widget/TextView;

    .line 22
    iput-object p2, p0, Lcom/android/clone/d;->aTi:Landroid/content/Context;

    .line 23
    const v0, 0x7f10009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/clone/d;->aTk:Landroid/widget/LinearLayout;

    .line 24
    const v0, 0x7f10009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/d;->aTj:Landroid/widget/ImageView;

    .line 25
    const v0, 0x7f10009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/clone/d;->aTl:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f1000a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/clone/d;->aTg:Landroid/widget/LinearLayout;

    .line 28
    const v0, 0x7f1000a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/d;->aTf:Landroid/widget/ImageView;

    .line 29
    const v0, 0x7f1000a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/clone/d;->aTh:Landroid/widget/TextView;

    .line 31
    invoke-virtual {p0}, Lcom/android/clone/d;->bkA()V

    .line 21
    return-void
.end method

.method private bkC(Z)V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/clone/d;->aTk:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/clone/d;->aTg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 79
    return-void
.end method


# virtual methods
.method public bkA()V
    .registers 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/clone/d;->aTk:Landroid/widget/LinearLayout;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 41
    iget-object v0, p0, Lcom/android/clone/d;->aTj:Landroid/widget/ImageView;

    const v1, 0x7f020081

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    iget-object v0, p0, Lcom/android/clone/d;->aTl:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/clone/d;->aTi:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 43
    const v2, 0x7f0c000c

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v0, p0, Lcom/android/clone/d;->aTg:Landroid/widget/LinearLayout;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 46
    iget-object v0, p0, Lcom/android/clone/d;->aTf:Landroid/widget/ImageView;

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    iget-object v0, p0, Lcom/android/clone/d;->aTh:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/clone/d;->aTi:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 48
    const v2, 0x7f0c000d

    .line 47
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/clone/d;->bkC(Z)V

    .line 39
    return-void
.end method

.method public bkB(Landroid/view/View$OnClickListener;)V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/clone/d;->aTk:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/android/clone/d;->aTg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method

.method public bky()V
    .registers 5

    .prologue
    const v3, 0x7f0c000e

    const v2, 0x7f020084

    .line 66
    iget-object v0, p0, Lcom/android/clone/d;->aTk:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 67
    iget-object v0, p0, Lcom/android/clone/d;->aTj:Landroid/widget/ImageView;

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    iget-object v0, p0, Lcom/android/clone/d;->aTl:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/clone/d;->aTi:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v0, p0, Lcom/android/clone/d;->aTg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 72
    iget-object v0, p0, Lcom/android/clone/d;->aTf:Landroid/widget/ImageView;

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v0, p0, Lcom/android/clone/d;->aTh:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/clone/d;->aTi:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/clone/d;->bkC(Z)V

    .line 65
    return-void
.end method

.method public bkz()V
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/clone/d;->aTk:Landroid/widget/LinearLayout;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 54
    iget-object v0, p0, Lcom/android/clone/d;->aTj:Landroid/widget/ImageView;

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iget-object v0, p0, Lcom/android/clone/d;->aTl:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/clone/d;->aTi:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 56
    const v2, 0x7f0c000d

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v0, p0, Lcom/android/clone/d;->aTg:Landroid/widget/LinearLayout;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 59
    iget-object v0, p0, Lcom/android/clone/d;->aTf:Landroid/widget/ImageView;

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object v0, p0, Lcom/android/clone/d;->aTh:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/clone/d;->aTi:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 61
    const v2, 0x7f0c000c

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/clone/d;->bkC(Z)V

    .line 52
    return-void
.end method

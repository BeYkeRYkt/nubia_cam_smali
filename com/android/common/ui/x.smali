.class public Lcom/android/common/ui/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/m;


# instance fields
.field private mState:I

.field private sC:Landroid/widget/ImageView;

.field private sD:Landroid/widget/RelativeLayout;

.field private sE:Landroid/widget/LinearLayout;

.field private sF:Landroid/widget/TextView;

.field private sG:Ljava/lang/String;

.field private sH:Landroid/widget/TextView;

.field private sI:Lcom/android/common/l;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/common/ui/x;->sD:Landroid/widget/RelativeLayout;

    .line 20
    iput-object v0, p0, Lcom/android/common/ui/x;->sC:Landroid/widget/ImageView;

    .line 21
    iput-object v0, p0, Lcom/android/common/ui/x;->sH:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcom/android/common/ui/x;->sE:Landroid/widget/LinearLayout;

    .line 23
    iput-object v0, p0, Lcom/android/common/ui/x;->sF:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/android/common/ui/x;->sI:Lcom/android/common/l;

    .line 25
    iput-object v0, p0, Lcom/android/common/ui/x;->sG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/ui/x;->mState:I

    .line 29
    new-instance v0, Lcom/android/common/l;

    const-wide/16 v2, 0x190

    invoke-direct {v0, v2, v3, p0}, Lcom/android/common/l;-><init>(JLcom/android/common/m;)V

    iput-object v0, p0, Lcom/android/common/ui/x;->sI:Lcom/android/common/l;

    .line 30
    invoke-direct {p0, p1}, Lcom/android/common/ui/x;->xz(Landroid/view/View;)V

    .line 28
    return-void
.end method

.method private xD()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/common/ui/x;->sD:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/common/ui/x;->sC:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/android/common/ui/x;->sH:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    return-void
.end method

.method private xy()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 100
    iget-object v0, p0, Lcom/android/common/ui/x;->sD:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/android/common/ui/x;->sC:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/android/common/ui/x;->sH:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    return-void
.end method

.method private xz(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 34
    const v0, 0x7f100137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/ui/x;->sD:Landroid/widget/RelativeLayout;

    .line 35
    const v0, 0x7f100139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/common/ui/x;->sC:Landroid/widget/ImageView;

    .line 36
    const v0, 0x7f100138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/x;->sH:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f10013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/common/ui/x;->sE:Landroid/widget/LinearLayout;

    .line 38
    const v0, 0x7f10013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/x;->sF:Landroid/widget/TextView;

    .line 33
    return-void
.end method


# virtual methods
.method public onTick(J)V
    .registers 3

    .prologue
    .line 106
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/ui/x;->mState:I

    .line 83
    iget-object v0, p0, Lcom/android/common/ui/x;->sI:Lcom/android/common/l;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/common/ui/x;->sI:Lcom/android/common/l;

    invoke-virtual {v0}, Lcom/android/common/l;->aqz()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 84
    iget-object v0, p0, Lcom/android/common/ui/x;->sI:Lcom/android/common/l;

    invoke-virtual {v0}, Lcom/android/common/l;->aqA()V

    .line 86
    :cond_14
    invoke-direct {p0}, Lcom/android/common/ui/x;->xy()V

    .line 81
    return-void
.end method

.method public xA()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/common/ui/x;->sC:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    .line 112
    const-string/jumbo v0, "NubiaTimingShow"

    const-string/jumbo v1, "onInterval() mIconView is null!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 115
    :cond_f
    iget v0, p0, Lcom/android/common/ui/x;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_31

    .line 116
    const-string/jumbo v0, "NubiaTimingShow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInterval() mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/ui/x;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void

    .line 119
    :cond_31
    iget-object v0, p0, Lcom/android/common/ui/x;->sC:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_40

    .line 120
    iget-object v0, p0, Lcom/android/common/ui/x;->sC:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :goto_3f
    return-void

    .line 122
    :cond_40
    iget-object v0, p0, Lcom/android/common/ui/x;->sC:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3f
.end method

.method public xB()V
    .registers 3

    .prologue
    .line 73
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/ui/x;->mState:I

    .line 74
    iget-object v0, p0, Lcom/android/common/ui/x;->sI:Lcom/android/common/l;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/common/ui/x;->sI:Lcom/android/common/l;

    invoke-virtual {v0}, Lcom/android/common/l;->aqz()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 75
    iget-object v0, p0, Lcom/android/common/ui/x;->sI:Lcom/android/common/l;

    invoke-virtual {v0}, Lcom/android/common/l;->aqA()V

    .line 77
    :cond_14
    iget-object v0, p0, Lcom/android/common/ui/x;->sC:Landroid/widget/ImageView;

    const v1, 0x7f02020d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 78
    iget-object v0, p0, Lcom/android/common/ui/x;->sC:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    return-void
.end method

.method public xC(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/common/ui/x;->sG:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/android/common/ui/x;->sG:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 61
    iget-object v0, p0, Lcom/android/common/ui/x;->sE:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 58
    :goto_d
    return-void

    .line 63
    :cond_e
    iget-object v0, p0, Lcom/android/common/ui/x;->sE:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/android/common/ui/x;->sF:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/common/ui/x;->sG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method public xu(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/common/ui/x;->sH:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public xv()V
    .registers 3

    .prologue
    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/ui/x;->mState:I

    .line 43
    iget-object v0, p0, Lcom/android/common/ui/x;->sC:Landroid/widget/ImageView;

    const v1, 0x7f02020e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 44
    invoke-direct {p0}, Lcom/android/common/ui/x;->xD()V

    .line 45
    iget-object v0, p0, Lcom/android/common/ui/x;->sI:Lcom/android/common/l;

    if-eqz v0, :cond_17

    .line 46
    iget-object v0, p0, Lcom/android/common/ui/x;->sI:Lcom/android/common/l;

    invoke-virtual {v0}, Lcom/android/common/l;->start()V

    .line 41
    :cond_17
    return-void
.end method

.method public xw()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 90
    iget v1, p0, Lcom/android/common/ui/x;->mState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public xx()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/common/ui/x;->sG:Ljava/lang/String;

    return-object v0
.end method

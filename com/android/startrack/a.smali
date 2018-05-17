.class public Lcom/android/startrack/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aQC:Landroid/widget/RelativeLayout;

.field private aQD:Lcom/android/common/ui/RotateImageView;

.field private aQE:Landroid/widget/TextView;

.field private aQF:Lcom/android/common/ui/RotateLayout;

.field private aQG:Landroid/widget/TextView;

.field private aQH:Lcom/android/startrack/h;

.field private aQI:Landroid/os/Handler;

.field public aQJ:Z

.field private aQK:Lcom/android/common/ui/MultiFunctionImageView;

.field private aQL:Lcom/android/common/ui/NubiaProgressWheel;

.field private aQM:Landroid/widget/ImageView;

.field private aQN:Landroid/view/View;

.field private aQO:Lcom/android/common/ui/RotateLayout;

.field private aQP:Landroid/widget/RelativeLayout;

.field private aQQ:Lcom/android/common/ui/ZtemtShutterButton;

.field private aQR:Lcom/android/common/ui/x;

.field private aQS:Lcom/android/common/ui/RotateLayout;


# direct methods
.method public constructor <init>(Lcom/android/startrack/h;Landroid/os/Handler;Lcom/android/common/appService/W;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/startrack/a;->aQS:Lcom/android/common/ui/RotateLayout;

    .line 35
    iput-object v0, p0, Lcom/android/startrack/a;->aQE:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/android/startrack/a;->aQF:Lcom/android/common/ui/RotateLayout;

    .line 37
    iput-object v0, p0, Lcom/android/startrack/a;->aQG:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/android/startrack/a;->aQP:Landroid/widget/RelativeLayout;

    .line 40
    iput-object v0, p0, Lcom/android/startrack/a;->aQQ:Lcom/android/common/ui/ZtemtShutterButton;

    .line 47
    iput-object v0, p0, Lcom/android/startrack/a;->aQN:Landroid/view/View;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/startrack/a;->aQJ:Z

    .line 57
    iput-object p1, p0, Lcom/android/startrack/a;->aQH:Lcom/android/startrack/h;

    .line 58
    iput-object p2, p0, Lcom/android/startrack/a;->aQI:Landroid/os/Handler;

    .line 56
    return-void
.end method


# virtual methods
.method public bha(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 106
    new-instance v0, Lcom/android/common/ui/x;

    invoke-direct {v0, p1}, Lcom/android/common/ui/x;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/startrack/a;->aQR:Lcom/android/common/ui/x;

    .line 107
    const v0, 0x7f100196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/startrack/a;->aQS:Lcom/android/common/ui/RotateLayout;

    .line 108
    const v0, 0x7f1000c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/startrack/a;->aQE:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f1000aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/startrack/a;->aQG:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f1000a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/startrack/a;->aQF:Lcom/android/common/ui/RotateLayout;

    .line 111
    const v0, 0x7f1001c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/startrack/a;->aQM:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f10018c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/startrack/a;->aQP:Landroid/widget/RelativeLayout;

    .line 113
    iget-object v0, p0, Lcom/android/startrack/a;->aQP:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 114
    const v0, 0x7f1001c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/startrack/a;->aQO:Lcom/android/common/ui/RotateLayout;

    .line 115
    const v0, 0x7f10018e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZtemtShutterButton;

    iput-object v0, p0, Lcom/android/startrack/a;->aQQ:Lcom/android/common/ui/ZtemtShutterButton;

    .line 116
    iget-object v0, p0, Lcom/android/startrack/a;->aQQ:Lcom/android/common/ui/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 117
    const v0, 0x7f100047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/startrack/a;->aQC:Landroid/widget/RelativeLayout;

    .line 118
    const v0, 0x7f10018d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/startrack/a;->aQD:Lcom/android/common/ui/RotateImageView;

    .line 119
    const v0, 0x7f100044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/NubiaProgressWheel;

    iput-object v0, p0, Lcom/android/startrack/a;->aQL:Lcom/android/common/ui/NubiaProgressWheel;

    .line 120
    const v0, 0x7f10018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MultiFunctionImageView;

    iput-object v0, p0, Lcom/android/startrack/a;->aQK:Lcom/android/common/ui/MultiFunctionImageView;

    .line 121
    const v0, 0x7f1001c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/startrack/a;->aQN:Landroid/view/View;

    .line 105
    return-void
.end method

.method public bhb()[Lcom/android/common/ui/h;
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/common/ui/h;

    return-object v0
.end method

.method public bhc()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/startrack/a;->aQR:Lcom/android/common/ui/x;

    invoke-virtual {v0}, Lcom/android/common/ui/x;->stop()V

    .line 99
    return-void
.end method

.method public bhd()V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/startrack/a;->aQF:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/android/startrack/a;->aQG:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public bhe()V
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/startrack/a;->aQS:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/startrack/a;->aQS:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 175
    iget-object v0, p0, Lcom/android/startrack/a;->aQS:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 173
    :cond_13
    return-void
.end method

.method public bhf(Landroid/view/View$OnClickListener;)V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/startrack/a;->aQC:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method public bhg(Lcom/android/common/ui/u;)V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/startrack/a;->aQQ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/ZtemtShutterButton;->xa(Lcom/android/common/ui/u;)V

    .line 61
    return-void
.end method

.method public bhh(IIII)V
    .registers 7

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/startrack/a;->aQN:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v1, p3, p1

    if-ne v0, v1, :cond_14

    .line 188
    iget-object v0, p0, Lcom/android/startrack/a;->aQN:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_37

    .line 189
    :cond_14
    const-string/jumbo v0, "StarTrackViewsManager"

    const-string/jumbo v1, "relayout mPreviewRelativeContent"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/startrack/a;->aQN:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 191
    sub-int v1, p3, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 192
    sub-int v1, p4, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 193
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 194
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 195
    iget-object v0, p0, Lcom/android/startrack/a;->aQN:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 186
    :cond_37
    return-void
.end method

.method public bhi()V
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/startrack/a;->aQQ:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_15

    .line 182
    iget-object v0, p0, Lcom/android/startrack/a;->aQP:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/startrack/a;->aQP:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    .line 183
    iget-object v0, p0, Lcom/android/startrack/a;->aQQ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performClick()Z

    .line 180
    :cond_15
    return-void
.end method

.method public bhj(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/startrack/a;->aQG:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public bhk(Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/startrack/a;->aQM:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    return-void
.end method

.method public bhl(ZLcom/android/common/appService/W;)V
    .registers 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/startrack/a;->aQH:Lcom/android/startrack/h;

    invoke-virtual {p0, v0}, Lcom/android/startrack/a;->bhg(Lcom/android/common/ui/u;)V

    .line 86
    return-void
.end method

.method public bhm(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/startrack/a;->aQP:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/startrack/a;->bhe()V

    .line 135
    iget-object v0, p0, Lcom/android/startrack/a;->aQK:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/android/startrack/a;->aQK:Lcom/android/common/ui/MultiFunctionImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->ED(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/startrack/a;->aQL:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/android/startrack/a;->aQL:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->start()V

    .line 140
    iget-object v0, p0, Lcom/android/startrack/a;->aQM:Landroid/widget/ImageView;

    if-eqz v0, :cond_2d

    .line 141
    iget-object v0, p0, Lcom/android/startrack/a;->aQM:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    iget-object v0, p0, Lcom/android/startrack/a;->aQM:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    :cond_2d
    return-void
.end method

.method public bhn()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/startrack/a;->aQF:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/android/startrack/a;->aQG:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public bho(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 147
    iget-object v0, p0, Lcom/android/startrack/a;->aQP:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/android/startrack/a;->aQM:Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    .line 149
    iget-object v0, p0, Lcom/android/startrack/a;->aQM:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    iget-object v0, p0, Lcom/android/startrack/a;->aQM:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    :cond_16
    return-void
.end method

.method public bhp(Z)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 156
    const-string/jumbo v0, "StarTrackViewsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "==startrack==showWaitIndicator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/startrack/a;->aQL:Lcom/android/common/ui/NubiaProgressWheel;

    if-eqz v0, :cond_39

    .line 158
    if-eqz p1, :cond_3a

    .line 159
    iget-object v0, p0, Lcom/android/startrack/a;->aQL:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->stop()V

    .line 160
    iget-object v0, p0, Lcom/android/startrack/a;->aQL:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/startrack/a;->aQK:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v4}, Lcom/android/common/ui/MultiFunctionImageView;->EC(Lcom/android/common/ui/af;)V

    .line 162
    iget-object v0, p0, Lcom/android/startrack/a;->aQK:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 155
    :cond_39
    :goto_39
    return-void

    .line 164
    :cond_3a
    iget-object v0, p0, Lcom/android/startrack/a;->aQL:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->stop()V

    .line 165
    iget-object v0, p0, Lcom/android/startrack/a;->aQL:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/android/startrack/a;->aQK:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->EE()V

    .line 167
    iget-object v0, p0, Lcom/android/startrack/a;->aQK:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ey(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 168
    iget-object v0, p0, Lcom/android/startrack/a;->aQK:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    goto :goto_39
.end method

.method public bhq(J)V
    .registers 8

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/startrack/a;->aQR:Lcom/android/common/ui/x;

    invoke-virtual {v0}, Lcom/android/common/ui/x;->xw()Z

    move-result v0

    if-nez v0, :cond_d

    .line 94
    iget-object v0, p0, Lcom/android/startrack/a;->aQR:Lcom/android/common/ui/x;

    invoke-virtual {v0}, Lcom/android/common/ui/x;->xv()V

    .line 96
    :cond_d
    iget-object v0, p0, Lcom/android/startrack/a;->aQR:Lcom/android/common/ui/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/common/h;->apU(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/x;->xu(Ljava/lang/String;)V

    .line 90
    return-void
.end method

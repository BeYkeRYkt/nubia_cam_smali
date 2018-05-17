.class public Lcom/android/common/ui/ZtemtShutterButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private rY:Z

.field private rZ:Lcom/android/common/ui/u;

.field private sa:Lcom/android/common/ui/t;

.field private sb:Lcom/android/common/ui/RotateImageView;

.field private sc:Z

.field private sd:I

.field private se:Lcom/android/common/ui/RotateImageView;

.field private sf:Landroid/widget/RelativeLayout;

.field private sg:Lcom/android/common/ui/RotateImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-boolean v2, p0, Lcom/android/common/ui/ZtemtShutterButton;->sc:Z

    .line 43
    iput-object v1, p0, Lcom/android/common/ui/ZtemtShutterButton;->rZ:Lcom/android/common/ui/u;

    .line 44
    new-instance v0, Lcom/android/common/ui/t;

    invoke-direct {v0, p0, v1}, Lcom/android/common/ui/t;-><init>(Lcom/android/common/ui/ZtemtShutterButton;Lcom/android/common/ui/t;)V

    iput-object v0, p0, Lcom/android/common/ui/ZtemtShutterButton;->sa:Lcom/android/common/ui/t;

    .line 47
    iput-object v1, p0, Lcom/android/common/ui/ZtemtShutterButton;->sg:Lcom/android/common/ui/RotateImageView;

    .line 48
    iput-object v1, p0, Lcom/android/common/ui/ZtemtShutterButton;->se:Lcom/android/common/ui/RotateImageView;

    .line 49
    iput-object v1, p0, Lcom/android/common/ui/ZtemtShutterButton;->sb:Lcom/android/common/ui/RotateImageView;

    .line 50
    iput-object v1, p0, Lcom/android/common/ui/ZtemtShutterButton;->sf:Landroid/widget/RelativeLayout;

    .line 51
    iput-boolean v2, p0, Lcom/android/common/ui/ZtemtShutterButton;->rY:Z

    .line 77
    return-void
.end method

.method private xb(Z)V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/common/ui/ZtemtShutterButton;->rZ:Lcom/android/common/ui/u;

    if-eqz v0, :cond_9

    .line 114
    iget-object v0, p0, Lcom/android/common/ui/ZtemtShutterButton;->rZ:Lcom/android/common/ui/u;

    invoke-interface {v0, p1}, Lcom/android/common/ui/u;->xg(Z)V

    .line 112
    :cond_9
    return-void
.end method

.method static synthetic xd(Lcom/android/common/ui/ZtemtShutterButton;)Lcom/android/common/ui/u;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/ZtemtShutterButton;->rZ:Lcom/android/common/ui/u;

    return-object v0
.end method

.method static synthetic xe(Lcom/android/common/ui/ZtemtShutterButton;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/ui/ZtemtShutterButton;->xb(Z)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 96
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtShutterButton;->isPressed()Z

    move-result v0

    .line 97
    iget-boolean v1, p0, Lcom/android/common/ui/ZtemtShutterButton;->sc:Z

    if-eq v0, v1, :cond_17

    .line 98
    if-nez v0, :cond_18

    .line 99
    new-instance v1, Lcom/android/common/ui/ay;

    invoke-direct {v1, p0, v0}, Lcom/android/common/ui/ay;-><init>(Lcom/android/common/ui/ZtemtShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 108
    :goto_15
    iput-boolean v0, p0, Lcom/android/common/ui/ZtemtShutterButton;->sc:Z

    .line 94
    :cond_17
    return-void

    .line 106
    :cond_18
    invoke-direct {p0, v0}, Lcom/android/common/ui/ZtemtShutterButton;->xb(Z)V

    goto :goto_15
.end method

.method public performClick()Z
    .registers 3

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/android/common/ui/ZtemtShutterButton;->rZ:Lcom/android/common/ui/u;

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtShutterButton;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 122
    iget-object v1, p0, Lcom/android/common/ui/ZtemtShutterButton;->rZ:Lcom/android/common/ui/u;

    invoke-interface {v1}, Lcom/android/common/ui/u;->xf()V

    .line 124
    :cond_13
    return v0
.end method

.method public setOrientation(I)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 134
    iget v0, p0, Lcom/android/common/ui/ZtemtShutterButton;->sd:I

    if-eq v0, p1, :cond_1d

    .line 135
    iput p1, p0, Lcom/android/common/ui/ZtemtShutterButton;->sd:I

    .line 136
    iget-object v0, p0, Lcom/android/common/ui/ZtemtShutterButton;->se:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_12

    .line 137
    iget-object v0, p0, Lcom/android/common/ui/ZtemtShutterButton;->se:Lcom/android/common/ui/RotateImageView;

    iget v1, p0, Lcom/android/common/ui/ZtemtShutterButton;->sd:I

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ui/RotateImageView;->vn(IZ)V

    .line 139
    :cond_12
    iget-object v0, p0, Lcom/android/common/ui/ZtemtShutterButton;->sb:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_1d

    .line 140
    iget-object v0, p0, Lcom/android/common/ui/ZtemtShutterButton;->sb:Lcom/android/common/ui/RotateImageView;

    iget v1, p0, Lcom/android/common/ui/ZtemtShutterButton;->sd:I

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ui/RotateImageView;->vn(IZ)V

    .line 133
    :cond_1d
    return-void
.end method

.method public xa(Lcom/android/common/ui/u;)V
    .registers 3

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/common/ui/ZtemtShutterButton;->rZ:Lcom/android/common/ui/u;

    .line 83
    iget-object v0, p0, Lcom/android/common/ui/ZtemtShutterButton;->sa:Lcom/android/common/ui/t;

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ZtemtShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ZtemtShutterButton;->setLongClickable(Z)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ZtemtShutterButton;->setClickable(Z)V

    .line 81
    return-void
.end method

.method public xc(Z)Z
    .registers 3

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/common/ui/ZtemtShutterButton;->xb(Z)V

    .line 129
    const/4 v0, 0x1

    return v0
.end method

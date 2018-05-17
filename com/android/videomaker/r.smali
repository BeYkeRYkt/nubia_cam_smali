.class public Lcom/android/videomaker/r;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/videomaker/k;
.implements Lcom/android/common/ui/u;


# instance fields
.field private aMS:Landroid/media/AudioManager;

.field private aMT:Lcom/android/common/ActivityBase;

.field private aMU:Z

.field private aMV:Landroid/widget/ProgressBar;

.field private aMW:I

.field private aMX:Lcom/android/common/ui/RotateLayout;

.field private aMY:Lcom/android/common/ui/RotateLayout;

.field private aMZ:Lcom/android/common/ui/RotateLayout;

.field private aNa:Lcom/android/common/ui/RotateImageView;

.field private aNb:Landroid/widget/RelativeLayout;

.field private aNc:Lcom/android/common/ui/ZtemtShutterButton;

.field private aNd:Lcom/android/common/ui/RotateImageView;

.field private aNe:Lcom/android/common/ui/RotateImageView;

.field private aNf:Lcom/android/videomaker/j;

.field private aNg:Lcom/android/common/e/h;

.field private aNh:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/videomaker/r;->aNb:Landroid/widget/RelativeLayout;

    .line 61
    iput-object v0, p0, Lcom/android/videomaker/r;->aNe:Lcom/android/common/ui/RotateImageView;

    .line 62
    iput-object v0, p0, Lcom/android/videomaker/r;->aNa:Lcom/android/common/ui/RotateImageView;

    .line 63
    iput-object v0, p0, Lcom/android/videomaker/r;->aNc:Lcom/android/common/ui/ZtemtShutterButton;

    .line 64
    iput-object v0, p0, Lcom/android/videomaker/r;->aNd:Lcom/android/common/ui/RotateImageView;

    .line 65
    iput-object v0, p0, Lcom/android/videomaker/r;->aMT:Lcom/android/common/ActivityBase;

    .line 66
    iput v1, p0, Lcom/android/videomaker/r;->aMW:I

    .line 67
    iput-object v0, p0, Lcom/android/videomaker/r;->aNg:Lcom/android/common/e/h;

    .line 68
    iput-object v0, p0, Lcom/android/videomaker/r;->aNf:Lcom/android/videomaker/j;

    .line 69
    iput-boolean v1, p0, Lcom/android/videomaker/r;->aMU:Z

    .line 70
    iput-object v0, p0, Lcom/android/videomaker/r;->aMS:Landroid/media/AudioManager;

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 60
    iput-object v0, p0, Lcom/android/videomaker/r;->aNb:Landroid/widget/RelativeLayout;

    .line 61
    iput-object v0, p0, Lcom/android/videomaker/r;->aNe:Lcom/android/common/ui/RotateImageView;

    .line 62
    iput-object v0, p0, Lcom/android/videomaker/r;->aNa:Lcom/android/common/ui/RotateImageView;

    .line 63
    iput-object v0, p0, Lcom/android/videomaker/r;->aNc:Lcom/android/common/ui/ZtemtShutterButton;

    .line 64
    iput-object v0, p0, Lcom/android/videomaker/r;->aNd:Lcom/android/common/ui/RotateImageView;

    .line 65
    iput-object v0, p0, Lcom/android/videomaker/r;->aMT:Lcom/android/common/ActivityBase;

    .line 66
    iput v1, p0, Lcom/android/videomaker/r;->aMW:I

    .line 67
    iput-object v0, p0, Lcom/android/videomaker/r;->aNg:Lcom/android/common/e/h;

    .line 68
    iput-object v0, p0, Lcom/android/videomaker/r;->aNf:Lcom/android/videomaker/j;

    .line 69
    iput-boolean v1, p0, Lcom/android/videomaker/r;->aMU:Z

    .line 70
    iput-object v0, p0, Lcom/android/videomaker/r;->aMS:Landroid/media/AudioManager;

    .line 72
    return-void
.end method

.method private bdA()V
    .registers 4

    .prologue
    const/16 v1, 0x8

    .line 235
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcy()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 236
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdD()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 234
    :cond_12
    :goto_12
    return-void

    .line 237
    :cond_13
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bco()V

    .line 238
    iget-object v0, p0, Lcom/android/videomaker/r;->aNa:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/android/videomaker/r;->aNe:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/android/videomaker/r;->aNc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/android/videomaker/r;->aNb:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/android/videomaker/r;->aNh:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    invoke-virtual {p0}, Lcom/android/videomaker/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "videomaker_1"

    const-string/jumbo v2, "VideoMakerFragment"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method private bdB()Lcom/android/videomaker/j;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/videomaker/r;->aNf:Lcom/android/videomaker/j;

    return-object v0
.end method

.method private bdC(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 188
    const v0, 0x7f100211

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/videomaker/r;->aMZ:Lcom/android/common/ui/RotateLayout;

    .line 189
    iget-object v0, p0, Lcom/android/videomaker/r;->aMZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 190
    const v0, 0x7f100209

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/videomaker/r;->aMX:Lcom/android/common/ui/RotateLayout;

    .line 191
    const v0, 0x7f100210

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/videomaker/r;->aMY:Lcom/android/common/ui/RotateLayout;

    .line 192
    const v0, 0x7f10020e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/videomaker/r;->aNh:Landroid/widget/LinearLayout;

    .line 193
    const v0, 0x7f10020f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/videomaker/r;->aMV:Landroid/widget/ProgressBar;

    .line 194
    const v0, 0x7f10020b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/videomaker/r;->aNb:Landroid/widget/RelativeLayout;

    .line 195
    const v0, 0x7f100046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/videomaker/r;->aNe:Lcom/android/common/ui/RotateImageView;

    .line 196
    const v0, 0x7f100047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/videomaker/r;->aNa:Lcom/android/common/ui/RotateImageView;

    .line 197
    const v0, 0x7f10020c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZtemtShutterButton;

    iput-object v0, p0, Lcom/android/videomaker/r;->aNc:Lcom/android/common/ui/ZtemtShutterButton;

    .line 198
    const v0, 0x7f10020d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/videomaker/r;->aNd:Lcom/android/common/ui/RotateImageView;

    .line 200
    iget-object v0, p0, Lcom/android/videomaker/r;->aNe:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcom/android/videomaker/y;

    invoke-direct {v1, p0}, Lcom/android/videomaker/y;-><init>(Lcom/android/videomaker/r;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/android/videomaker/r;->aNa:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcom/android/videomaker/z;

    invoke-direct {v1, p0}, Lcom/android/videomaker/z;-><init>(Lcom/android/videomaker/r;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/android/videomaker/r;->aNc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/ZtemtShutterButton;->xa(Lcom/android/common/ui/u;)V

    .line 218
    iget-object v0, p0, Lcom/android/videomaker/r;->aNc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/ZtemtShutterButton;->setLongClickable(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/videomaker/r;->aNc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/ZtemtShutterButton;->setClickable(Z)V

    .line 221
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/ui/h;

    iget-object v1, p0, Lcom/android/videomaker/r;->aNe:Lcom/android/common/ui/RotateImageView;

    aput-object v1, v0, v3

    .line 222
    iget-object v1, p0, Lcom/android/videomaker/r;->aNa:Lcom/android/common/ui/RotateImageView;

    aput-object v1, v0, v2

    .line 223
    iget-object v1, p0, Lcom/android/videomaker/r;->aNd:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 221
    iput-object v0, p0, Lcom/android/videomaker/r;->adw:[Lcom/android/common/ui/h;

    .line 187
    return-void
.end method

.method private bdD()Z
    .registers 2

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcr()Z

    move-result v0

    return v0
.end method

.method private bdE()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 118
    invoke-virtual {p0}, Lcom/android/videomaker/r;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_c

    .line 119
    return-void

    .line 121
    :cond_c
    iget-object v0, p0, Lcom/android/videomaker/r;->aMZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/android/videomaker/r;->aMX:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/android/videomaker/r;->aMY:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/android/videomaker/r;->aNh:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/android/videomaker/r;->aMV:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 126
    iget-object v0, p0, Lcom/android/videomaker/r;->aMV:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 127
    iput v3, p0, Lcom/android/videomaker/r;->aMW:I

    .line 130
    iget-object v0, p0, Lcom/android/videomaker/r;->aNa:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/android/videomaker/r;->aNe:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/android/videomaker/r;->aNc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/videomaker/r;->alq()V

    .line 117
    return-void
.end method

.method private bdF()V
    .registers 3

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcx()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 249
    return-void

    .line 251
    :cond_b
    iget-boolean v0, p0, Lcom/android/videomaker/r;->aMU:Z

    if-eqz v0, :cond_1f

    .line 252
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcG()V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videomaker/r;->aMU:Z

    .line 254
    iget-object v0, p0, Lcom/android/videomaker/r;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 256
    :cond_1f
    return-void
.end method

.method private bdG()V
    .registers 3

    .prologue
    .line 183
    iget v0, p0, Lcom/android/videomaker/r;->aMW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/videomaker/r;->aMW:I

    .line 184
    iget-object v0, p0, Lcom/android/videomaker/r;->aMV:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/videomaker/r;->aMW:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 182
    return-void
.end method

.method static synthetic bdH(Lcom/android/videomaker/r;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/videomaker/r;->bdD()Z

    move-result v0

    return v0
.end method

.method static synthetic bdI(Lcom/android/videomaker/r;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/videomaker/r;->bdz()V

    return-void
.end method

.method static synthetic bdJ(Lcom/android/videomaker/r;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/videomaker/r;->bdA()V

    return-void
.end method

.method public static bdu()Lcom/android/videomaker/r;
    .registers 2

    .prologue
    .line 264
    new-instance v0, Lcom/android/videomaker/r;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/videomaker/r;-><init>(I)V

    return-object v0
.end method

.method private bdy(Landroid/net/Uri;)V
    .registers 3

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 177
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcv()Lcom/android/videomaker/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/videomaker/f;->bar(Landroid/net/Uri;)V

    .line 175
    :cond_11
    return-void
.end method

.method private bdz()V
    .registers 2

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcy()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 228
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdD()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 226
    :cond_10
    :goto_10
    return-void

    .line 229
    :cond_11
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bck()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videomaker/r;->aMU:Z

    goto :goto_10
.end method

.method private release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcx()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 152
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcv()Lcom/android/videomaker/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/f;->getState()I

    move-result v0

    if-nez v0, :cond_24

    .line 154
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcv()Lcom/android/videomaker/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/f;->bbx()V

    .line 156
    :cond_24
    invoke-virtual {p0}, Lcom/android/videomaker/r;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qn(Z)V

    .line 157
    return-void

    .line 160
    :cond_2c
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcv()Lcom/android/videomaker/f;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 161
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcv()Lcom/android/videomaker/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/f;->bax()V

    .line 164
    :cond_41
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bck()V

    .line 150
    return-void
.end method


# virtual methods
.method protected alq()V
    .registers 3

    .prologue
    .line 441
    invoke-super {p0}, Lcom/android/common/o/l;->alq()V

    .line 442
    iget-object v0, p0, Lcom/android/videomaker/r;->aNb:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    .line 443
    iget-object v0, p0, Lcom/android/videomaker/r;->aNb:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 440
    :cond_e
    return-void
.end method

.method protected alr()V
    .registers 3

    .prologue
    .line 449
    invoke-super {p0}, Lcom/android/common/o/l;->alr()V

    .line 450
    iget-object v0, p0, Lcom/android/videomaker/r;->aNb:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_d

    .line 451
    iget-object v0, p0, Lcom/android/videomaker/r;->aNb:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 448
    :cond_d
    return-void
.end method

.method public bdi()V
    .registers 1

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdE()V

    .line 293
    return-void
.end method

.method public bdj()V
    .registers 1

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdG()V

    .line 278
    return-void
.end method

.method public bdk()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videomaker/r;->aMU:Z

    .line 285
    iget-object v0, p0, Lcom/android/videomaker/r;->aNa:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/android/videomaker/r;->aNe:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/android/videomaker/r;->aNc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/videomaker/r;->aNb:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/android/videomaker/r;->aNh:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    return-void
.end method

.method public bdl()V
    .registers 1

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdE()V

    .line 298
    return-void
.end method

.method public bdm(Z)V
    .registers 4

    .prologue
    .line 304
    if-eqz p1, :cond_9

    .line 305
    iget-object v0, p0, Lcom/android/videomaker/r;->aMX:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 303
    :goto_8
    return-void

    .line 307
    :cond_9
    iget-object v0, p0, Lcom/android/videomaker/r;->aMX:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    goto :goto_8
.end method

.method public bdn(Z)V
    .registers 4

    .prologue
    .line 313
    if-eqz p1, :cond_9

    .line 314
    iget-object v0, p0, Lcom/android/videomaker/r;->aMY:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 312
    :goto_8
    return-void

    .line 316
    :cond_9
    iget-object v0, p0, Lcom/android/videomaker/r;->aMY:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    goto :goto_8
.end method

.method public bdo()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 269
    iget-object v0, p0, Lcom/android/videomaker/r;->aMZ:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/android/videomaker/r;->aNh:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    invoke-virtual {p0}, Lcom/android/videomaker/r;->alr()V

    .line 272
    iget-object v0, p0, Lcom/android/videomaker/r;->aNa:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/android/videomaker/r;->aNe:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/android/videomaker/r;->aNc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 268
    return-void
.end method

.method public bdv(Lcom/android/videomaker/j;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/videomaker/r;->aNf:Lcom/android/videomaker/j;

    .line 167
    return-void
.end method

.method public bdw()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lcom/android/videomaker/r;->aNc:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/videomaker/r;->aNc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 425
    iget-object v0, p0, Lcom/android/videomaker/r;->aNc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performLongClick()Z

    .line 426
    const/4 v0, 0x1

    return v0

    .line 428
    :cond_14
    return v1
.end method

.method public bdx(Z)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 432
    iget-object v0, p0, Lcom/android/videomaker/r;->aNc:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/videomaker/r;->aNc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 433
    iget-object v0, p0, Lcom/android/videomaker/r;->aNc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/ZtemtShutterButton;->xc(Z)Z

    .line 434
    const/4 v0, 0x1

    return v0

    .line 436
    :cond_14
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    const/16 v1, 0x8

    .line 322
    iget-object v0, p0, Lcom/android/videomaker/r;->aMZ:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/videomaker/r;->aMZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 323
    iget-object v0, p0, Lcom/android/videomaker/r;->aMZ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 325
    :cond_13
    iget-object v0, p0, Lcom/android/videomaker/r;->aMX:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/videomaker/r;->aMX:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    .line 326
    iget-object v0, p0, Lcom/android/videomaker/r;->aMX:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 328
    :cond_24
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 333
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onActivityResult(IILandroid/content/Intent;)V

    .line 334
    packed-switch p1, :pswitch_data_14

    .line 332
    :cond_6
    :goto_6
    return-void

    .line 336
    :pswitch_7
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 337
    if-eqz p3, :cond_6

    .line 338
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/videomaker/r;->bdy(Landroid/net/Uri;)V

    goto :goto_6

    .line 334
    :pswitch_data_14
    .packed-switch 0x3e9
        :pswitch_7
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 386
    iget-boolean v0, p0, Lcom/android/videomaker/r;->aMU:Z

    if-eqz v0, :cond_17

    .line 387
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcG()V

    .line 388
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bck()V

    .line 389
    iput-boolean v1, p0, Lcom/android/videomaker/r;->aMU:Z

    .line 390
    return v2

    .line 391
    :cond_17
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcx()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 392
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcv()Lcom/android/videomaker/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/f;->getState()I

    move-result v0

    if-nez v0, :cond_3a

    .line 394
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcv()Lcom/android/videomaker/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/f;->bbx()V

    .line 396
    :cond_3a
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcv()Lcom/android/videomaker/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/f;->baU()V

    .line 397
    return v2

    .line 399
    :cond_46
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/videomaker/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/videomaker/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/common/ActivityBase;

    if-eqz v0, :cond_19

    .line 99
    invoke-virtual {p0}, Lcom/android/videomaker/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    iput-object v0, p0, Lcom/android/videomaker/r;->aMT:Lcom/android/common/ActivityBase;

    .line 96
    :cond_19
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 84
    iget-boolean v0, p0, Lcom/android/videomaker/r;->adu:Z

    if-eqz v0, :cond_9

    return-object v1

    .line 87
    :cond_9
    const v0, 0x7f0400a5

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    if-nez v0, :cond_1c

    .line 89
    const-string/jumbo v1, "VideoMakerFragment"

    const-string/jumbo v2, "view == null"

    invoke-static {v1, v2}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_1c
    invoke-direct {p0, v0}, Lcom/android/videomaker/r;->bdC(Landroid/view/View;)V

    .line 92
    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 404
    packed-switch p1, :pswitch_data_2c

    .line 420
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 406
    :pswitch_a
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcx()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 407
    iget-object v0, p0, Lcom/android/videomaker/r;->aMS:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 409
    return v2

    .line 413
    :pswitch_1a
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcx()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 414
    iget-object v0, p0, Lcom/android/videomaker/r;->aMS:Landroid/media/AudioManager;

    .line 415
    const/4 v1, -0x1

    .line 414
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 416
    return v2

    .line 404
    nop

    :pswitch_data_2c
    .packed-switch 0x18
        :pswitch_a
        :pswitch_1a
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/videomaker/r;->adu:Z

    if-eqz v0, :cond_8

    .line 141
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 142
    return-void

    .line 145
    :cond_8
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdF()V

    .line 146
    invoke-direct {p0}, Lcom/android/videomaker/r;->release()V

    .line 147
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 139
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 106
    iget-boolean v0, p0, Lcom/android/videomaker/r;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 107
    :cond_8
    invoke-virtual {p0}, Lcom/android/videomaker/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "audio"

    .line 107
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/videomaker/r;->aMS:Landroid/media/AudioManager;

    .line 110
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcx()Z

    move-result v0

    if-nez v0, :cond_25

    .line 111
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdE()V

    .line 104
    :goto_24
    return-void

    .line 113
    :cond_25
    invoke-virtual {p0}, Lcom/android/videomaker/r;->all()Lcom/android/common/appService/W;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qn(Z)V

    goto :goto_24
.end method

.method public xf()V
    .registers 1

    .prologue
    .line 352
    return-void
.end method

.method public xg(Z)V
    .registers 2

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdF()V

    .line 347
    return-void
.end method

.method public xh()V
    .registers 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/videomaker/r;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_5

    .line 358
    return-void

    .line 361
    :cond_5
    iget-object v0, p0, Lcom/android/videomaker/r;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 362
    iget-object v0, p0, Lcom/android/videomaker/r;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    .line 361
    if-nez v0, :cond_1d

    .line 363
    invoke-virtual {p0}, Lcom/android/videomaker/r;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_7c

    .line 366
    :cond_1d
    const-string/jumbo v0, "VideoMakerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Low storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videomaker/r;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pK()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    const-string/jumbo v2, "; Activity pause: "

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    iget-object v2, p0, Lcom/android/videomaker/r;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pk()Z

    move-result v2

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 368
    const-string/jumbo v2, "; UIState: "

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 368
    invoke-virtual {p0}, Lcom/android/videomaker/r;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v2

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 369
    const-string/jumbo v2, "; DeviceState: "

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 369
    invoke-virtual {p0}, Lcom/android/videomaker/r;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v2

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 370
    const-string/jumbo v2, "; FunctionState: "

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 370
    invoke-virtual {p0}, Lcom/android/videomaker/r;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-void

    .line 364
    :cond_7c
    invoke-virtual {p0}, Lcom/android/videomaker/r;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_1d

    .line 365
    invoke-virtual {p0}, Lcom/android/videomaker/r;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_1d

    .line 374
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcx()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 375
    return-void

    .line 377
    :cond_97
    iget-boolean v0, p0, Lcom/android/videomaker/r;->aMU:Z

    if-nez v0, :cond_ab

    .line 378
    iget-object v0, p0, Lcom/android/videomaker/r;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 379
    invoke-direct {p0}, Lcom/android/videomaker/r;->bdB()Lcom/android/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/j;->bcE()V

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videomaker/r;->aMU:Z

    .line 356
    :cond_ab
    return-void
.end method

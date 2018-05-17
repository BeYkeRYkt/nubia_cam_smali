.class public Lcom/android/clone/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aRG:I

.field private static aRH:I


# instance fields
.field private aRI:Lcom/android/common/ui/MultiFunctionImageView;

.field private aRJ:Landroid/widget/RelativeLayout;

.field private aRK:Lcom/android/common/ui/RotateImageView;

.field private aRL:Landroid/graphics/Canvas;

.field private aRM:Landroid/graphics/Paint;

.field private aRN:I

.field private aRO:Lcom/android/clone/j;

.field private aRP:Landroid/graphics/Bitmap;

.field private aRQ:Landroid/content/Context;

.field private aRR:Landroid/app/AlertDialog;

.field private aRS:Landroid/widget/ImageView;

.field private aRT:Landroid/graphics/Bitmap;

.field private aRU:Lcom/android/ui/ScaleLayout;

.field private aRV:Landroid/widget/ImageView;

.field private aRW:Landroid/widget/RelativeLayout;

.field private aRX:Landroid/graphics/Bitmap;

.field private aRY:Landroid/widget/ImageView;

.field private aRZ:Landroid/widget/ImageView;

.field private aSA:[Landroid/view/View;

.field private aSB:[Landroid/view/View;

.field private aSC:Landroid/view/View;

.field private aSD:Lcom/android/clone/d;

.field private aSE:Landroid/os/Handler;

.field private aSF:Landroid/widget/TextView;

.field private aSG:Z

.field private aSH:Z

.field private aSI:Z

.field private aSJ:Z

.field private aSK:Z

.field private aSL:Z

.field private aSM:Z

.field private aSN:Z

.field private aSO:Lcom/android/clone/b;

.field private aSP:Lcom/android/common/ui/RotateTextImageView;

.field private aSQ:I

.field private aSR:I

.field private aSS:Landroid/graphics/Bitmap;

.field private aST:[Landroid/graphics/Bitmap;

.field private aSU:I

.field private aSV:I

.field private aSW:Lcom/android/common/ui/ZtemtShutterButton;

.field private aSX:Landroid/view/View;

.field private aSY:F

.field private aSZ:F

.field private aSa:Landroid/graphics/Bitmap;

.field private aSb:Landroid/widget/ImageView;

.field private aSc:Landroid/graphics/Bitmap;

.field private aSd:Landroid/graphics/Matrix;

.field private aSe:Landroid/widget/ImageView;

.field private aSf:Lcom/android/common/ui/RotateImageView;

.field private aSg:Landroid/graphics/Canvas;

.field private aSh:Landroid/graphics/Paint;

.field private aSi:I

.field private aSj:[Landroid/view/View;

.field private aSk:Landroid/widget/ImageView;

.field private aSl:Landroid/widget/ImageView;

.field private aSm:Landroid/widget/ImageView;

.field private aSn:Landroid/widget/ImageView;

.field private aSo:Landroid/widget/ImageView;

.field private aSp:Landroid/widget/ImageView;

.field private aSq:Landroid/widget/ImageView;

.field private aSr:Landroid/widget/ImageView;

.field private aSs:Landroid/widget/ImageView;

.field private aSt:Landroid/widget/ImageView;

.field private aSu:Landroid/widget/LinearLayout;

.field private aSv:Landroid/widget/RelativeLayout;

.field private aSw:Landroid/widget/RelativeLayout;

.field private aSx:Landroid/widget/RelativeLayout;

.field private aSy:Landroid/widget/RelativeLayout;

.field private aSz:Landroid/widget/RelativeLayout;

.field private aTa:I

.field private aTb:Landroid/widget/LinearLayout;

.field private aTc:Landroid/widget/TextView;

.field private aTd:J

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 150
    const/4 v0, 0x2

    sput v0, Lcom/android/clone/a;->aRG:I

    .line 151
    const/16 v0, 0xc8

    sput v0, Lcom/android/clone/a;->aRH:I

    .line 63
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/clone/b;Lcom/android/common/ui/u;)V
    .registers 11

    .prologue
    const/16 v5, 0x1e

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v2, p0, Lcom/android/clone/a;->mState:I

    .line 80
    iput-object v1, p0, Lcom/android/clone/a;->aRQ:Landroid/content/Context;

    .line 81
    iput-object v1, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    .line 84
    iput v2, p0, Lcom/android/clone/a;->aSR:I

    .line 85
    iput v2, p0, Lcom/android/clone/a;->aSQ:I

    .line 87
    iput v2, p0, Lcom/android/clone/a;->aSV:I

    .line 88
    iput v2, p0, Lcom/android/clone/a;->aSU:I

    .line 90
    iput-object v1, p0, Lcom/android/clone/a;->aSO:Lcom/android/clone/b;

    .line 92
    iput-object v1, p0, Lcom/android/clone/a;->aRJ:Landroid/widget/RelativeLayout;

    .line 93
    iput-object v1, p0, Lcom/android/clone/a;->aRI:Lcom/android/common/ui/MultiFunctionImageView;

    .line 94
    iput-object v1, p0, Lcom/android/clone/a;->aSf:Lcom/android/common/ui/RotateImageView;

    .line 95
    iput-object v1, p0, Lcom/android/clone/a;->aRK:Lcom/android/common/ui/RotateImageView;

    .line 96
    iput-object v1, p0, Lcom/android/clone/a;->aSW:Lcom/android/common/ui/ZtemtShutterButton;

    .line 97
    iput-object v1, p0, Lcom/android/clone/a;->aSP:Lcom/android/common/ui/RotateTextImageView;

    .line 99
    iput-object v1, p0, Lcom/android/clone/a;->aRS:Landroid/widget/ImageView;

    .line 100
    iput-object v1, p0, Lcom/android/clone/a;->aTb:Landroid/widget/LinearLayout;

    .line 101
    iput-object v1, p0, Lcom/android/clone/a;->aSF:Landroid/widget/TextView;

    .line 102
    iput-object v1, p0, Lcom/android/clone/a;->aTc:Landroid/widget/TextView;

    .line 103
    iput-object v1, p0, Lcom/android/clone/a;->aRP:Landroid/graphics/Bitmap;

    .line 104
    iput-object v1, p0, Lcom/android/clone/a;->aSb:Landroid/widget/ImageView;

    .line 105
    iput-object v1, p0, Lcom/android/clone/a;->aSa:Landroid/graphics/Bitmap;

    .line 107
    iput-object v1, p0, Lcom/android/clone/a;->aSD:Lcom/android/clone/d;

    .line 108
    iput-object v1, p0, Lcom/android/clone/a;->aRW:Landroid/widget/RelativeLayout;

    .line 109
    iput-object v1, p0, Lcom/android/clone/a;->aRZ:Landroid/widget/ImageView;

    .line 110
    iput-object v1, p0, Lcom/android/clone/a;->aRY:Landroid/widget/ImageView;

    .line 111
    iput-object v1, p0, Lcom/android/clone/a;->aRV:Landroid/widget/ImageView;

    .line 112
    iput-object v1, p0, Lcom/android/clone/a;->aSC:Landroid/view/View;

    .line 113
    iput-object v1, p0, Lcom/android/clone/a;->aSX:Landroid/view/View;

    .line 114
    iput-object v1, p0, Lcom/android/clone/a;->aSu:Landroid/widget/LinearLayout;

    .line 115
    iput-object v1, p0, Lcom/android/clone/a;->aSv:Landroid/widget/RelativeLayout;

    .line 116
    iput-object v1, p0, Lcom/android/clone/a;->aSw:Landroid/widget/RelativeLayout;

    .line 117
    iput-object v1, p0, Lcom/android/clone/a;->aSx:Landroid/widget/RelativeLayout;

    .line 118
    iput-object v1, p0, Lcom/android/clone/a;->aSy:Landroid/widget/RelativeLayout;

    .line 119
    iput-object v1, p0, Lcom/android/clone/a;->aSz:Landroid/widget/RelativeLayout;

    .line 120
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/clone/a;->aSA:[Landroid/view/View;

    .line 121
    iput-object v1, p0, Lcom/android/clone/a;->aSk:Landroid/widget/ImageView;

    .line 122
    iput-object v1, p0, Lcom/android/clone/a;->aSl:Landroid/widget/ImageView;

    .line 123
    iput-object v1, p0, Lcom/android/clone/a;->aSm:Landroid/widget/ImageView;

    .line 124
    iput-object v1, p0, Lcom/android/clone/a;->aSn:Landroid/widget/ImageView;

    .line 125
    iput-object v1, p0, Lcom/android/clone/a;->aSo:Landroid/widget/ImageView;

    .line 126
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/clone/a;->aSB:[Landroid/view/View;

    .line 127
    iput-object v1, p0, Lcom/android/clone/a;->aSp:Landroid/widget/ImageView;

    .line 128
    iput-object v1, p0, Lcom/android/clone/a;->aSq:Landroid/widget/ImageView;

    .line 129
    iput-object v1, p0, Lcom/android/clone/a;->aSr:Landroid/widget/ImageView;

    .line 130
    iput-object v1, p0, Lcom/android/clone/a;->aSs:Landroid/widget/ImageView;

    .line 131
    iput-object v1, p0, Lcom/android/clone/a;->aSt:Landroid/widget/ImageView;

    .line 132
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/clone/a;->aSj:[Landroid/view/View;

    .line 134
    iput-object v1, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    .line 135
    iput-object v1, p0, Lcom/android/clone/a;->aSS:Landroid/graphics/Bitmap;

    .line 136
    iput-boolean v2, p0, Lcom/android/clone/a;->aSG:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/clone/a;->aSH:Z

    .line 138
    iput-object v1, p0, Lcom/android/clone/a;->aSg:Landroid/graphics/Canvas;

    .line 139
    iput-object v1, p0, Lcom/android/clone/a;->aSh:Landroid/graphics/Paint;

    .line 140
    iput-object v1, p0, Lcom/android/clone/a;->aRL:Landroid/graphics/Canvas;

    .line 141
    iput-object v1, p0, Lcom/android/clone/a;->aRM:Landroid/graphics/Paint;

    .line 142
    iput v4, p0, Lcom/android/clone/a;->aSY:F

    .line 143
    iput v4, p0, Lcom/android/clone/a;->aSZ:F

    .line 144
    iput-object v1, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    .line 145
    iput-object v1, p0, Lcom/android/clone/a;->aRT:Landroid/graphics/Bitmap;

    .line 146
    iput v2, p0, Lcom/android/clone/a;->aTa:I

    .line 147
    invoke-static {v5}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/clone/a;->aSi:I

    .line 148
    invoke-static {v5}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/clone/a;->aRN:I

    .line 152
    iput-object v1, p0, Lcom/android/clone/a;->aSe:Landroid/widget/ImageView;

    .line 153
    iput-object v1, p0, Lcom/android/clone/a;->aSc:Landroid/graphics/Bitmap;

    .line 154
    iput-object v1, p0, Lcom/android/clone/a;->aSd:Landroid/graphics/Matrix;

    .line 155
    iput-boolean v2, p0, Lcom/android/clone/a;->aSM:Z

    .line 157
    iput-object v1, p0, Lcom/android/clone/a;->aRR:Landroid/app/AlertDialog;

    .line 159
    iput-boolean v2, p0, Lcom/android/clone/a;->aSN:Z

    .line 160
    iput-boolean v2, p0, Lcom/android/clone/a;->aSK:Z

    .line 163
    iput-object v1, p0, Lcom/android/clone/a;->aRU:Lcom/android/ui/ScaleLayout;

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/clone/a;->aTd:J

    .line 165
    iput-boolean v2, p0, Lcom/android/clone/a;->aSL:Z

    .line 166
    iput-boolean v2, p0, Lcom/android/clone/a;->aSJ:Z

    .line 172
    iput-boolean v2, p0, Lcom/android/clone/a;->aSI:Z

    .line 173
    new-instance v0, Lcom/android/clone/m;

    invoke-direct {v0, p0}, Lcom/android/clone/m;-><init>(Lcom/android/clone/a;)V

    iput-object v0, p0, Lcom/android/clone/a;->aSE:Landroid/os/Handler;

    .line 312
    iput-object p3, p0, Lcom/android/clone/a;->aSO:Lcom/android/clone/b;

    .line 313
    iput-object p1, p0, Lcom/android/clone/a;->aRQ:Landroid/content/Context;

    .line 314
    new-instance v0, Lcom/android/clone/j;

    invoke-direct {v0}, Lcom/android/clone/j;-><init>()V

    iput-object v0, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    .line 315
    invoke-direct {p0}, Lcom/android/clone/a;->biT()V

    .line 316
    invoke-direct {p0, p2}, Lcom/android/clone/a;->biS(Landroid/view/View;)V

    .line 317
    invoke-direct {p0, p2}, Lcom/android/clone/a;->biU(Landroid/view/View;)V

    .line 318
    invoke-direct {p0, p2, p4}, Lcom/android/clone/a;->biR(Landroid/view/View;Lcom/android/common/ui/u;)V

    .line 319
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "init finish"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method private biA()V
    .registers 3

    .prologue
    .line 629
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "composeConfirm"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-direct {p0}, Lcom/android/clone/a;->bjo()V

    .line 631
    new-instance v0, Lcom/android/clone/o;

    invoke-direct {v0, p0}, Lcom/android/clone/o;-><init>(Lcom/android/clone/a;)V

    invoke-virtual {v0}, Lcom/android/clone/o;->start()V

    .line 628
    return-void
.end method

.method private biB(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 514
    const v0, 0x7f10008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aSp:Landroid/widget/ImageView;

    .line 515
    const v0, 0x7f100092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aSq:Landroid/widget/ImageView;

    .line 516
    const v0, 0x7f100095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aSr:Landroid/widget/ImageView;

    .line 517
    const v0, 0x7f100098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aSs:Landroid/widget/ImageView;

    .line 518
    const v0, 0x7f10009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aSt:Landroid/widget/ImageView;

    .line 519
    iget-object v0, p0, Lcom/android/clone/a;->aSj:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/clone/a;->aSp:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 520
    iget-object v0, p0, Lcom/android/clone/a;->aSj:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/clone/a;->aSq:Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 521
    iget-object v0, p0, Lcom/android/clone/a;->aSj:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/clone/a;->aSr:Landroid/widget/ImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 522
    iget-object v0, p0, Lcom/android/clone/a;->aSj:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/clone/a;->aSs:Landroid/widget/ImageView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 523
    iget-object v0, p0, Lcom/android/clone/a;->aSj:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/clone/a;->aSt:Landroid/widget/ImageView;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 513
    return-void
.end method

.method private biC(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 497
    const v0, 0x7f10008d

    .line 496
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/clone/a;->aSv:Landroid/widget/RelativeLayout;

    .line 499
    const v0, 0x7f100090

    .line 498
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/clone/a;->aSw:Landroid/widget/RelativeLayout;

    .line 501
    const v0, 0x7f100093

    .line 500
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/clone/a;->aSx:Landroid/widget/RelativeLayout;

    .line 503
    const v0, 0x7f100096

    .line 502
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/clone/a;->aSy:Landroid/widget/RelativeLayout;

    .line 505
    const v0, 0x7f100099

    .line 504
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/clone/a;->aSz:Landroid/widget/RelativeLayout;

    .line 506
    iget-object v0, p0, Lcom/android/clone/a;->aSA:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/clone/a;->aSv:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 507
    iget-object v0, p0, Lcom/android/clone/a;->aSA:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/clone/a;->aSw:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 508
    iget-object v0, p0, Lcom/android/clone/a;->aSA:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/clone/a;->aSx:Landroid/widget/RelativeLayout;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 509
    iget-object v0, p0, Lcom/android/clone/a;->aSA:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/clone/a;->aSy:Landroid/widget/RelativeLayout;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 510
    iget-object v0, p0, Lcom/android/clone/a;->aSA:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/clone/a;->aSz:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 495
    return-void
.end method

.method private biD()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 716
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "disableShutterButton"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/android/clone/a;->aSW:Lcom/android/common/ui/ZtemtShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/android/clone/a;->aSW:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/ZtemtShutterButton;->setEnabled(Z)V

    .line 719
    iget-object v0, p0, Lcom/android/clone/a;->aSW:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/ZtemtShutterButton;->setClickable(Z)V

    .line 715
    return-void
.end method

.method private biE()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 723
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "enableShutterButton"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/android/clone/a;->aSW:Lcom/android/common/ui/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/android/clone/a;->aSW:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/ZtemtShutterButton;->setEnabled(Z)V

    .line 726
    iget-object v0, p0, Lcom/android/clone/a;->aSW:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/ZtemtShutterButton;->setClickable(Z)V

    .line 722
    return-void
.end method

.method private biG()V
    .registers 5

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    iget-object v1, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    invoke-virtual {v1}, Lcom/android/clone/j;->bkQ()I

    move-result v1

    iget v2, p0, Lcom/android/clone/a;->aTa:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/clone/a;->aRT:Landroid/graphics/Bitmap;

    .line 1017
    iget-object v3, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    .line 1016
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/clone/j;->bkZ(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1018
    iget-object v0, p0, Lcom/android/clone/a;->aRY:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/clone/a;->aRQ:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1019
    iget-object v3, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    .line 1018
    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1020
    iget-object v0, p0, Lcom/android/clone/a;->aSh:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1021
    iget-object v0, p0, Lcom/android/clone/a;->aSg:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/clone/a;->aSh:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 1015
    return-void
.end method

.method private biH()Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 925
    iget v0, p0, Lcom/android/clone/a;->aSV:I

    iget v1, p0, Lcom/android/clone/a;->aSU:I

    .line 926
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 925
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 927
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 928
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 929
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 930
    iget-object v3, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/clone/a;->aTa:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 931
    iget-object v3, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 932
    iget-object v3, p0, Lcom/android/clone/a;->aRT:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 933
    const/16 v3, 0x1f

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->save(I)I

    .line 934
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 936
    sget v1, Lcom/android/clone/a;->aRH:I

    div-int/lit8 v4, v1, 0x2

    .line 937
    iget v1, p0, Lcom/android/clone/a;->aSY:F

    int-to-float v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 938
    iget v3, p0, Lcom/android/clone/a;->aSZ:F

    int-to-float v5, v4

    sub-float/2addr v3, v5

    float-to-int v3, v3

    .line 939
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v5, v4, :cond_72

    .line 940
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v5, Lcom/android/clone/a;->aRH:I

    sub-int/2addr v1, v5

    .line 944
    :cond_58
    :goto_58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v5, v4, :cond_76

    .line 945
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget v3, Lcom/android/clone/a;->aRH:I

    sub-int/2addr v2, v3

    .line 949
    :cond_66
    :goto_66
    sget v3, Lcom/android/clone/a;->aRH:I

    sget v4, Lcom/android/clone/a;->aRH:I

    .line 950
    iget-object v5, p0, Lcom/android/clone/a;->aSd:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    .line 949
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 951
    return-object v0

    .line 941
    :cond_72
    if-gez v1, :cond_58

    move v1, v2

    .line 942
    goto :goto_58

    .line 946
    :cond_76
    if-ltz v3, :cond_66

    move v2, v3

    goto :goto_66
.end method

.method private biJ(I)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 788
    const-string/jumbo v0, "CloneViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gotoEdit p = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iput p1, p0, Lcom/android/clone/a;->aTa:I

    .line 790
    invoke-direct {p0, p1}, Lcom/android/clone/a;->bjg(I)V

    .line 791
    invoke-direct {p0}, Lcom/android/clone/a;->bjd()Z

    move-result v0

    .line 792
    if-eqz v0, :cond_99

    .line 793
    iget-object v1, p0, Lcom/android/clone/a;->aTc:Landroid/widget/TextView;

    const v2, 0x7f0a00d6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 794
    iget-object v1, p0, Lcom/android/clone/a;->aTc:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 800
    :goto_34
    iget-object v1, p0, Lcom/android/clone/a;->aRT:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4d

    .line 801
    iget v1, p0, Lcom/android/clone/a;->aSV:I

    .line 802
    iget v2, p0, Lcom/android/clone/a;->aSU:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 801
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/clone/a;->aRT:Landroid/graphics/Bitmap;

    .line 803
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/clone/a;->aRT:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/clone/a;->aSg:Landroid/graphics/Canvas;

    .line 805
    :cond_4d
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/clone/a;->aRL:Landroid/graphics/Canvas;

    .line 807
    iget-object v1, p0, Lcom/android/clone/a;->aSh:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 808
    iget-object v1, p0, Lcom/android/clone/a;->aSg:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/clone/a;->aSh:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 810
    iget-object v1, p0, Lcom/android/clone/a;->aRZ:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/clone/a;->aSS:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 811
    if-nez v0, :cond_a7

    .line 812
    iget-object v0, p0, Lcom/android/clone/a;->aRY:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 817
    :goto_77
    iget-object v0, p0, Lcom/android/clone/a;->aRV:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/clone/a;->aRQ:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 818
    iget-object v3, p0, Lcom/android/clone/a;->aRT:Landroid/graphics/Bitmap;

    .line 817
    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 820
    invoke-direct {p0, p1}, Lcom/android/clone/a;->bjk(I)V

    .line 821
    iget-object v0, p0, Lcom/android/clone/a;->aRU:Lcom/android/ui/ScaleLayout;

    if-eqz v0, :cond_98

    .line 822
    iget-object v0, p0, Lcom/android/clone/a;->aRU:Lcom/android/ui/ScaleLayout;

    invoke-virtual {v0}, Lcom/android/ui/ScaleLayout;->btu()V

    .line 823
    invoke-direct {p0}, Lcom/android/clone/a;->bjp()V

    .line 787
    :cond_98
    return-void

    .line 796
    :cond_99
    iget-object v1, p0, Lcom/android/clone/a;->aTc:Landroid/widget/TextView;

    const v2, 0x7f0a00d2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 797
    iget-object v1, p0, Lcom/android/clone/a;->aTc:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_34

    .line 814
    :cond_a7
    iget-object v0, p0, Lcom/android/clone/a;->aRY:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/clone/a;->aRQ:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 815
    iget-object v3, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    .line 814
    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_77
.end method

.method private biK()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 700
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "gotoEditView"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-direct {p0}, Lcom/android/clone/a;->biD()V

    .line 702
    iget-object v0, p0, Lcom/android/clone/a;->aTb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/android/clone/a;->aTc:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/android/clone/a;->aRS:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/android/clone/a;->aRK:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/android/clone/a;->aSf:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/android/clone/a;->aSP:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/android/clone/a;->aSP:Lcom/android/common/ui/RotateTextImageView;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setImageResource(I)V

    .line 709
    iget-object v0, p0, Lcom/android/clone/a;->aSP:Lcom/android/common/ui/RotateTextImageView;

    const v1, 0x7f0a00cc

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->Ds(I)V

    .line 710
    invoke-direct {p0}, Lcom/android/clone/a;->biW()V

    .line 711
    invoke-direct {p0}, Lcom/android/clone/a;->bjl()V

    .line 712
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/clone/a;->mState:I

    .line 699
    return-void
.end method

.method private biL()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 684
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "gotoShowView"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-direct {p0}, Lcom/android/clone/a;->biD()V

    .line 686
    iget-object v0, p0, Lcom/android/clone/a;->aTb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/android/clone/a;->aTc:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/android/clone/a;->aRS:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/android/clone/a;->aRS:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/clone/a;->aRP:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 690
    iget-object v0, p0, Lcom/android/clone/a;->aRK:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/android/clone/a;->aSf:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/android/clone/a;->aSP:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/android/clone/a;->aSP:Lcom/android/common/ui/RotateTextImageView;

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setImageResource(I)V

    .line 694
    iget-object v0, p0, Lcom/android/clone/a;->aSP:Lcom/android/common/ui/RotateTextImageView;

    const v1, 0x7f0a00cb

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->Ds(I)V

    .line 695
    invoke-direct {p0}, Lcom/android/clone/a;->biO()V

    .line 696
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/clone/a;->mState:I

    .line 683
    return-void
.end method

.method private biM()V
    .registers 3

    .prologue
    .line 902
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "handleComposition"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/android/clone/a;->aSO:Lcom/android/clone/b;

    invoke-interface {v0}, Lcom/android/clone/b;->bkk()V

    .line 904
    invoke-direct {p0}, Lcom/android/clone/a;->biD()V

    .line 905
    invoke-direct {p0}, Lcom/android/clone/a;->bjo()V

    .line 906
    new-instance v0, Lcom/android/clone/p;

    invoke-direct {v0, p0}, Lcom/android/clone/p;-><init>(Lcom/android/clone/a;)V

    invoke-virtual {v0}, Lcom/android/clone/p;->start()V

    .line 901
    return-void
.end method

.method private biN()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 1004
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "hideEditButtonsLayout"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Lcom/android/clone/a;->aSC:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1006
    iget-object v0, p0, Lcom/android/clone/a;->aSu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1007
    iget-object v0, p0, Lcom/android/clone/a;->aRJ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/clone/a;->aTc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1003
    return-void
.end method

.method private biO()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 778
    iget-object v0, p0, Lcom/android/clone/a;->aSu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcom/android/clone/a;->aSC:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcom/android/clone/a;->aRZ:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/android/clone/a;->aRY:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/android/clone/a;->aRV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/clone/a;->aSG:Z

    .line 777
    return-void
.end method

.method private biP()V
    .registers 4

    .prologue
    .line 989
    const-string/jumbo v0, "CloneViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideShaderView  mIsUseShader = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/clone/a;->aSM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    iget-boolean v0, p0, Lcom/android/clone/a;->aSM:Z

    if-nez v0, :cond_21

    .line 991
    return-void

    .line 992
    :cond_21
    iget-object v0, p0, Lcom/android/clone/a;->aSe:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 988
    return-void
.end method

.method private biQ()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 265
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "hideWaitView"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iput-boolean v2, p0, Lcom/android/clone/a;->aSN:Z

    .line 267
    iget-object v0, p0, Lcom/android/clone/a;->aRI:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ey(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 268
    iget-object v0, p0, Lcom/android/clone/a;->aSW:Lcom/android/common/ui/ZtemtShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/android/clone/a;->aSf:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/android/clone/a;->aRK:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 264
    return-void
.end method

.method private biR(Landroid/view/View;Lcom/android/common/ui/u;)V
    .registers 5

    .prologue
    .line 333
    const v0, 0x7f10007b

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/clone/a;->aRJ:Landroid/widget/RelativeLayout;

    .line 335
    const v0, 0x7f10007f

    .line 334
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZtemtShutterButton;

    iput-object v0, p0, Lcom/android/clone/a;->aSW:Lcom/android/common/ui/ZtemtShutterButton;

    .line 337
    const v0, 0x7f100080

    .line 336
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MultiFunctionImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aRI:Lcom/android/common/ui/MultiFunctionImageView;

    .line 338
    const v0, 0x7f10007d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aSf:Lcom/android/common/ui/RotateImageView;

    .line 339
    const v0, 0x7f10007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateTextImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aSP:Lcom/android/common/ui/RotateTextImageView;

    .line 341
    const v0, 0x7f10007c

    .line 340
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aRK:Lcom/android/common/ui/RotateImageView;

    .line 342
    iget-object v0, p0, Lcom/android/clone/a;->aSW:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, p2}, Lcom/android/common/ui/ZtemtShutterButton;->xa(Lcom/android/common/ui/u;)V

    .line 343
    new-instance v0, Lcom/android/a/d;

    invoke-direct {v0, p0}, Lcom/android/a/d;-><init>(Lcom/android/clone/a;)V

    .line 344
    iget-object v1, p0, Lcom/android/clone/a;->aSf:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v1, p0, Lcom/android/clone/a;->aRK:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v1, p0, Lcom/android/clone/a;->aSP:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateTextImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    return-void
.end method

.method private biS(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 528
    const v0, 0x7f1000a5

    .line 527
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aSe:Landroid/widget/ImageView;

    .line 530
    const v0, 0x7f100088

    .line 529
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aRS:Landroid/widget/ImageView;

    .line 532
    const v0, 0x7f100087

    .line 531
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aSb:Landroid/widget/ImageView;

    .line 533
    const v0, 0x7f100089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/clone/a;->aTc:Landroid/widget/TextView;

    .line 534
    const v0, 0x7f10008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/clone/a;->aTb:Landroid/widget/LinearLayout;

    .line 535
    const v0, 0x7f10008b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/clone/a;->aSF:Landroid/widget/TextView;

    .line 526
    return-void
.end method

.method private biT()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 412
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/clone/a;->aSh:Landroid/graphics/Paint;

    .line 413
    iget-object v0, p0, Lcom/android/clone/a;->aSh:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 414
    iget-object v0, p0, Lcom/android/clone/a;->aSh:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 415
    iget-object v0, p0, Lcom/android/clone/a;->aSh:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/clone/a;->aRQ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 416
    const v2, 0x7f0c000a

    .line 415
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    invoke-direct {p0}, Lcom/android/clone/a;->bjf()V

    .line 418
    iget-object v0, p0, Lcom/android/clone/a;->aSh:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 420
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/clone/a;->aRM:Landroid/graphics/Paint;

    .line 421
    iget-object v0, p0, Lcom/android/clone/a;->aRM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 422
    iget-object v0, p0, Lcom/android/clone/a;->aRM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 423
    invoke-direct {p0}, Lcom/android/clone/a;->bje()V

    .line 424
    iget-object v0, p0, Lcom/android/clone/a;->aRM:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 426
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/clone/a;->aSd:Landroid/graphics/Matrix;

    .line 427
    iget-object v0, p0, Lcom/android/clone/a;->aSd:Landroid/graphics/Matrix;

    sget v1, Lcom/android/clone/a;->aRG:I

    int-to-float v1, v1

    sget v2, Lcom/android/clone/a;->aRG:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 411
    return-void
.end method

.method private biU(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 458
    const v0, 0x7f100086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/clone/a;->aRW:Landroid/widget/RelativeLayout;

    .line 459
    iget-object v0, p0, Lcom/android/clone/a;->aRW:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/clone/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/clone/c;-><init>(Lcom/android/clone/a;Lcom/android/clone/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 461
    const v0, 0x7f100083

    .line 460
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aRZ:Landroid/widget/ImageView;

    .line 462
    const v0, 0x7f100084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aRY:Landroid/widget/ImageView;

    .line 463
    const v0, 0x7f100085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aRV:Landroid/widget/ImageView;

    .line 464
    const v0, 0x7f10009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/clone/a;->aSC:Landroid/view/View;

    .line 465
    const v0, 0x7f10008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/clone/a;->aSu:Landroid/widget/LinearLayout;

    .line 466
    const v0, 0x7f1000a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/clone/a;->aSX:Landroid/view/View;

    .line 468
    const v0, 0x7f10008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aSk:Landroid/widget/ImageView;

    .line 469
    const v0, 0x7f100091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aSl:Landroid/widget/ImageView;

    .line 470
    const v0, 0x7f100094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aSm:Landroid/widget/ImageView;

    .line 471
    const v0, 0x7f100097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aSn:Landroid/widget/ImageView;

    .line 472
    const v0, 0x7f10009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/clone/a;->aSo:Landroid/widget/ImageView;

    .line 474
    new-instance v0, Lcom/android/clone/d;

    iget-object v1, p0, Lcom/android/clone/a;->aSC:Landroid/view/View;

    iget-object v2, p0, Lcom/android/clone/a;->aRQ:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/clone/d;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/clone/a;->aSD:Lcom/android/clone/d;

    .line 475
    new-instance v0, Lcom/android/a/a;

    invoke-direct {v0, p0}, Lcom/android/a/a;-><init>(Lcom/android/clone/a;)V

    .line 476
    iget-object v1, p0, Lcom/android/clone/a;->aSD:Lcom/android/clone/d;

    invoke-virtual {v1, v0}, Lcom/android/clone/d;->bkB(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v1, p0, Lcom/android/clone/a;->aSX:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v1, p0, Lcom/android/clone/a;->aSk:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v1, p0, Lcom/android/clone/a;->aSl:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v1, p0, Lcom/android/clone/a;->aSm:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v1, p0, Lcom/android/clone/a;->aSn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v1, p0, Lcom/android/clone/a;->aSo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v0, p0, Lcom/android/clone/a;->aSB:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/clone/a;->aSk:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 484
    iget-object v0, p0, Lcom/android/clone/a;->aSB:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/clone/a;->aSl:Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 485
    iget-object v0, p0, Lcom/android/clone/a;->aSB:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/clone/a;->aSm:Landroid/widget/ImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 486
    iget-object v0, p0, Lcom/android/clone/a;->aSB:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/clone/a;->aSn:Landroid/widget/ImageView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 487
    iget-object v0, p0, Lcom/android/clone/a;->aSB:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/clone/a;->aSo:Landroid/widget/ImageView;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 489
    invoke-direct {p0, p1}, Lcom/android/clone/a;->biC(Landroid/view/View;)V

    .line 490
    invoke-direct {p0, p1}, Lcom/android/clone/a;->biB(Landroid/view/View;)V

    .line 492
    const v0, 0x7f100081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/ui/ScaleLayout;

    iput-object v0, p0, Lcom/android/clone/a;->aRU:Lcom/android/ui/ScaleLayout;

    .line 457
    return-void
.end method

.method private biW()V
    .registers 11

    .prologue
    const/high16 v9, 0x3e800000    # 0.25f

    .line 730
    iget-object v0, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_7b

    .line 731
    iget-object v0, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    invoke-virtual {v0}, Lcom/android/clone/j;->bkQ()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    .line 732
    const/4 v0, 0x0

    move v7, v0

    :goto_12
    iget-object v0, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge v7, v0, :cond_7b

    .line 733
    iget-object v0, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/clone/a;->aSV:I

    .line 734
    iget v2, p0, Lcom/android/clone/a;->aSU:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 733
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v7

    .line 735
    iget-object v0, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    if-nez v0, :cond_35

    .line 736
    iget v0, p0, Lcom/android/clone/a;->aSV:I

    .line 737
    iget v1, p0, Lcom/android/clone/a;->aSU:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 736
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    .line 739
    :cond_35
    iget-object v0, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    iget-object v1, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    array-length v1, v1

    sub-int/2addr v1, v7

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/clone/j;->bkV(ILandroid/graphics/Bitmap;)V

    .line 741
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 742
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 743
    invoke-virtual {v5, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 744
    iget-object v0, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 745
    iget-object v0, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 746
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 747
    iget-object v8, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v7

    .line 748
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 749
    const/4 v6, 0x1

    move v4, v3

    .line 747
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v8, v7

    .line 732
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_12

    .line 729
    :cond_7b
    return-void
.end method

.method private biZ()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 204
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-boolean v0, p0, Lcom/android/clone/a;->aSN:Z

    if-eqz v0, :cond_19

    .line 206
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "reset failed, because is Waiting"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void

    .line 209
    :cond_19
    iput v3, p0, Lcom/android/clone/a;->mState:I

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/clone/a;->aSK:Z

    .line 211
    invoke-direct {p0}, Lcom/android/clone/a;->bjc()V

    .line 212
    invoke-direct {p0}, Lcom/android/clone/a;->bjb()V

    .line 213
    iget-object v0, p0, Lcom/android/clone/a;->aRP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2f

    .line 214
    iget-object v0, p0, Lcom/android/clone/a;->aRP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    iput-object v2, p0, Lcom/android/clone/a;->aRP:Landroid/graphics/Bitmap;

    .line 217
    :cond_2f
    iget-object v0, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3a

    .line 218
    iget-object v0, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    iput-object v2, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    .line 221
    :cond_3a
    iget-object v0, p0, Lcom/android/clone/a;->aRT:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_45

    .line 222
    iget-object v0, p0, Lcom/android/clone/a;->aRT:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    iput-object v2, p0, Lcom/android/clone/a;->aRT:Landroid/graphics/Bitmap;

    .line 225
    :cond_45
    iput v3, p0, Lcom/android/clone/a;->aTa:I

    .line 226
    iget-object v0, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    invoke-virtual {v0}, Lcom/android/clone/j;->bkR()V

    .line 227
    iget-object v0, p0, Lcom/android/clone/a;->aSO:Lcom/android/clone/b;

    invoke-interface {v0, v3}, Lcom/android/clone/b;->bkm(Z)V

    .line 228
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 203
    return-void
.end method

.method private biz()V
    .registers 4

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    iget-object v1, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    invoke-virtual {v1}, Lcom/android/clone/j;->bkQ()I

    move-result v1

    iget v2, p0, Lcom/android/clone/a;->aTa:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/clone/j;->bkY(ILandroid/graphics/Bitmap;)V

    .line 1011
    return-void
.end method

.method static synthetic bjA(Lcom/android/clone/a;)Landroid/graphics/Canvas;
    .registers 2

    iget-object v0, p0, Lcom/android/clone/a;->aSg:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic bjB(Lcom/android/clone/a;)Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lcom/android/clone/a;->aSh:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic bjC(Lcom/android/clone/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/clone/a;->aSE:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic bjD(Lcom/android/clone/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/clone/a;->aSG:Z

    return v0
.end method

.method static synthetic bjE(Lcom/android/clone/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/clone/a;->aSH:Z

    return v0
.end method

.method static synthetic bjF(Lcom/android/clone/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/clone/a;->aSI:Z

    return v0
.end method

.method static synthetic bjG(Lcom/android/clone/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/clone/a;->aSJ:Z

    return v0
.end method

.method static synthetic bjH(Lcom/android/clone/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/clone/a;->aSL:Z

    return v0
.end method

.method static synthetic bjI(Lcom/android/clone/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/clone/a;->aSN:Z

    return v0
.end method

.method static synthetic bjJ(Lcom/android/clone/a;)Lcom/android/clone/b;
    .registers 2

    iget-object v0, p0, Lcom/android/clone/a;->aSO:Lcom/android/clone/b;

    return-object v0
.end method

.method static synthetic bjK(Lcom/android/clone/a;)I
    .registers 2

    iget v0, p0, Lcom/android/clone/a;->aSQ:I

    return v0
.end method

.method static synthetic bjL(Lcom/android/clone/a;)I
    .registers 2

    iget v0, p0, Lcom/android/clone/a;->aSR:I

    return v0
.end method

.method static synthetic bjM(Lcom/android/clone/a;)I
    .registers 2

    iget v0, p0, Lcom/android/clone/a;->aSU:I

    return v0
.end method

.method static synthetic bjN(Lcom/android/clone/a;)I
    .registers 2

    iget v0, p0, Lcom/android/clone/a;->aSV:I

    return v0
.end method

.method static synthetic bjO(Lcom/android/clone/a;)F
    .registers 2

    iget v0, p0, Lcom/android/clone/a;->aSY:F

    return v0
.end method

.method static synthetic bjP(Lcom/android/clone/a;)F
    .registers 2

    iget v0, p0, Lcom/android/clone/a;->aSZ:F

    return v0
.end method

.method static synthetic bjQ(Lcom/android/clone/a;)I
    .registers 2

    iget v0, p0, Lcom/android/clone/a;->mState:I

    return v0
.end method

.method static synthetic bjR(Lcom/android/clone/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/clone/a;->aTd:J

    return-wide v0
.end method

.method static synthetic bjS(Lcom/android/clone/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/clone/a;->aRP:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic bjT(Lcom/android/clone/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/clone/a;->aSJ:Z

    return p1
.end method

.method static synthetic bjU(Lcom/android/clone/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/clone/a;->aSL:Z

    return p1
.end method

.method static synthetic bjV(Lcom/android/clone/a;F)F
    .registers 2

    iput p1, p0, Lcom/android/clone/a;->aSY:F

    return p1
.end method

.method static synthetic bjW(Lcom/android/clone/a;F)F
    .registers 2

    iput p1, p0, Lcom/android/clone/a;->aSZ:F

    return p1
.end method

.method static synthetic bjX(Lcom/android/clone/a;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/clone/a;->aTd:J

    return-wide p1
.end method

.method static synthetic bjY(Lcom/android/clone/a;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/clone/a;->bjd()Z

    move-result v0

    return v0
.end method

.method static synthetic bjZ(Lcom/android/clone/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/clone/a;->biz()V

    return-void
.end method

.method private bja()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 253
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "resetBottomUI"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/android/clone/a;->biE()V

    .line 255
    iget-object v0, p0, Lcom/android/clone/a;->aSf:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/clone/a;->aRK:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/android/clone/a;->aSP:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/android/clone/a;->aRJ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 252
    return-void
.end method

.method private bjb()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2a

    .line 233
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge v1, v0, :cond_2a

    .line 234
    iget-object v0, p0, Lcom/android/clone/a;->aSA:[Landroid/view/View;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1b

    .line 235
    iget-object v0, p0, Lcom/android/clone/a;->aSB:[Landroid/view/View;

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    :cond_1b
    iget-object v0, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 238
    iget-object v0, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    .line 233
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 241
    :cond_2a
    iput-object v2, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    .line 231
    return-void
.end method

.method private bjc()V
    .registers 3

    .prologue
    .line 245
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "resetUI"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/android/clone/a;->bja()V

    .line 247
    iget-object v0, p0, Lcom/android/clone/a;->aRS:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    invoke-direct {p0}, Lcom/android/clone/a;->biO()V

    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/clone/a;->bjn(I)V

    .line 244
    return-void
.end method

.method private bjd()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    iget-object v0, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/clone/a;->aSD:Lcom/android/clone/d;

    if-nez v0, :cond_14

    .line 392
    :cond_a
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v2, "setButtonState failed!"

    invoke-static {v0, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return v1

    .line 395
    :cond_14
    iget v0, p0, Lcom/android/clone/a;->aTa:I

    iget-object v3, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    invoke-virtual {v3}, Lcom/android/clone/j;->bkQ()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_2b

    move v0, v1

    .line 397
    :goto_21
    if-nez v0, :cond_2d

    .line 398
    iput-boolean v1, p0, Lcom/android/clone/a;->aSG:Z

    .line 399
    iget-object v1, p0, Lcom/android/clone/a;->aSD:Lcom/android/clone/d;

    invoke-virtual {v1}, Lcom/android/clone/d;->bky()V

    .line 408
    :goto_2a
    return v0

    :cond_2b
    move v0, v2

    .line 396
    goto :goto_21

    .line 401
    :cond_2d
    iput-boolean v2, p0, Lcom/android/clone/a;->aSG:Z

    .line 402
    iget-boolean v1, p0, Lcom/android/clone/a;->aSH:Z

    if-eqz v1, :cond_39

    .line 403
    iget-object v1, p0, Lcom/android/clone/a;->aSD:Lcom/android/clone/d;

    invoke-virtual {v1}, Lcom/android/clone/d;->bkz()V

    goto :goto_2a

    .line 405
    :cond_39
    iget-object v1, p0, Lcom/android/clone/a;->aSD:Lcom/android/clone/d;

    invoke-virtual {v1}, Lcom/android/clone/d;->bkA()V

    goto :goto_2a
.end method

.method private bje()V
    .registers 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/clone/a;->aRM:Landroid/graphics/Paint;

    if-nez v0, :cond_5

    .line 448
    return-void

    .line 450
    :cond_5
    iget v0, p0, Lcom/android/clone/a;->aRN:I

    .line 451
    iget-object v1, p0, Lcom/android/clone/a;->aRU:Lcom/android/ui/ScaleLayout;

    if-eqz v1, :cond_16

    .line 452
    iget v0, p0, Lcom/android/clone/a;->aRN:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/clone/a;->aRU:Lcom/android/ui/ScaleLayout;

    invoke-virtual {v1}, Lcom/android/ui/ScaleLayout;->btt()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 454
    :cond_16
    iget-object v1, p0, Lcom/android/clone/a;->aRM:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 446
    return-void
.end method

.method private bjf()V
    .registers 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/clone/a;->aSh:Landroid/graphics/Paint;

    if-nez v0, :cond_5

    .line 437
    return-void

    .line 439
    :cond_5
    iget v0, p0, Lcom/android/clone/a;->aSi:I

    .line 440
    iget-object v1, p0, Lcom/android/clone/a;->aRU:Lcom/android/ui/ScaleLayout;

    if-eqz v1, :cond_16

    .line 441
    iget v0, p0, Lcom/android/clone/a;->aSi:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/clone/a;->aRU:Lcom/android/ui/ScaleLayout;

    invoke-virtual {v1}, Lcom/android/ui/ScaleLayout;->btt()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 443
    :cond_16
    iget-object v1, p0, Lcom/android/clone/a;->aSh:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 435
    return-void
.end method

.method private bjg(I)V
    .registers 5

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    if-nez v0, :cond_e

    .line 829
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "setEditShowBitmap failed, beacuse mClone is null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    return-void

    .line 832
    :cond_e
    iget-object v0, p0, Lcom/android/clone/a;->aSS:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1e

    .line 833
    iget v0, p0, Lcom/android/clone/a;->aSV:I

    iget v1, p0, Lcom/android/clone/a;->aSU:I

    .line 834
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 833
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/clone/a;->aSS:Landroid/graphics/Bitmap;

    .line 836
    :cond_1e
    iget-object v0, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2e

    .line 837
    iget v0, p0, Lcom/android/clone/a;->aSV:I

    iget v1, p0, Lcom/android/clone/a;->aSU:I

    .line 838
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 837
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    .line 840
    :cond_2e
    iget-object v0, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    iget-object v1, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    invoke-virtual {v1}, Lcom/android/clone/j;->bkQ()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/clone/a;->aSS:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/clone/j;->bkV(ILandroid/graphics/Bitmap;)V

    .line 841
    iget-object v0, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    iget-object v1, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    invoke-virtual {v1}, Lcom/android/clone/j;->bkQ()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/clone/j;->bkW(ILandroid/graphics/Bitmap;)V

    .line 827
    return-void
.end method

.method private bji()V
    .registers 4

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/clone/a;->aRR:Landroid/app/AlertDialog;

    if-nez v0, :cond_30

    .line 1051
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/clone/a;->aRQ:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1052
    const v1, 0x7f0a00d5

    .line 1051
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1054
    new-instance v1, Lcom/android/clone/q;

    invoke-direct {v1, p0}, Lcom/android/clone/q;-><init>(Lcom/android/clone/a;)V

    .line 1053
    const v2, 0x7f0a03fa

    .line 1051
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1064
    new-instance v1, Lcom/android/clone/r;

    invoke-direct {v1, p0}, Lcom/android/clone/r;-><init>(Lcom/android/clone/a;)V

    .line 1063
    const v2, 0x7f0a02f9

    .line 1051
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/clone/a;->aRR:Landroid/app/AlertDialog;

    .line 1074
    :cond_30
    iget-object v0, p0, Lcom/android/clone/a;->aRR:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1049
    return-void
.end method

.method private bjj()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 996
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "showEditButtonsLayout"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/android/clone/a;->aSC:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 998
    iget-object v0, p0, Lcom/android/clone/a;->aSu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 999
    iget-object v0, p0, Lcom/android/clone/a;->aRJ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/android/clone/a;->aTc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 995
    return-void
.end method

.method private bjk(I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 845
    :goto_2
    iget-object v2, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    invoke-virtual {v2}, Lcom/android/clone/j;->bkQ()I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 846
    if-ne v0, p1, :cond_22

    .line 847
    iget-object v2, p0, Lcom/android/clone/a;->aSA:[Landroid/view/View;

    aget-object v2, v2, v0

    .line 848
    const v3, 0x7f020088

    .line 847
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 849
    iget-object v2, p0, Lcom/android/clone/a;->aSj:[Landroid/view/View;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 845
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 851
    :cond_22
    iget-object v2, p0, Lcom/android/clone/a;->aSA:[Landroid/view/View;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 852
    iget-object v2, p0, Lcom/android/clone/a;->aSj:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1f

    .line 844
    :cond_32
    return-void
.end method

.method private bjl()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 758
    iget-object v0, p0, Lcom/android/clone/a;->aSu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v1, v2

    .line 759
    :goto_7
    iget-object v0, p0, Lcom/android/clone/a;->aSB:[Landroid/view/View;

    array-length v0, v0

    if-ge v1, v0, :cond_36

    .line 760
    iget-object v0, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    invoke-virtual {v0}, Lcom/android/clone/j;->bkQ()I

    move-result v0

    if-ge v1, v0, :cond_2c

    .line 761
    iget-object v0, p0, Lcom/android/clone/a;->aSA:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/android/clone/a;->aSB:[Landroid/view/View;

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/clone/a;->aST:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 759
    :goto_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 764
    :cond_2c
    iget-object v0, p0, Lcom/android/clone/a;->aSA:[Landroid/view/View;

    aget-object v0, v0, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28

    .line 767
    :cond_36
    iget-object v0, p0, Lcom/android/clone/a;->aSC:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 768
    iget-object v0, p0, Lcom/android/clone/a;->aRZ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 769
    iget-object v0, p0, Lcom/android/clone/a;->aRY:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 770
    iget-object v0, p0, Lcom/android/clone/a;->aRV:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 771
    iget v0, p0, Lcom/android/clone/a;->aTa:I

    invoke-direct {p0, v0}, Lcom/android/clone/a;->biJ(I)V

    .line 757
    return-void
.end method

.method private bjm()V
    .registers 4

    .prologue
    .line 979
    const-string/jumbo v0, "CloneViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showShaderView mIsUseShader = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/clone/a;->aSM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-boolean v0, p0, Lcom/android/clone/a;->aSM:Z

    if-nez v0, :cond_21

    .line 981
    return-void

    .line 983
    :cond_21
    invoke-direct {p0}, Lcom/android/clone/a;->biH()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/clone/a;->aSc:Landroid/graphics/Bitmap;

    .line 984
    iget-object v0, p0, Lcom/android/clone/a;->aSe:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/clone/a;->aSc:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 985
    iget-object v0, p0, Lcom/android/clone/a;->aSe:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 978
    return-void
.end method

.method private bjn(I)V
    .registers 7

    .prologue
    const/16 v4, 0xb4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 858
    packed-switch p1, :pswitch_data_a4

    .line 857
    :goto_8
    return-void

    .line 860
    :pswitch_9
    iget-object v0, p0, Lcom/android/clone/a;->aTb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Lcom/android/clone/a;->aTc:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/android/clone/a;->aSF:Landroid/widget/TextView;

    const v1, 0x7f0a00cd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 863
    iget-object v0, p0, Lcom/android/clone/a;->aSb:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 866
    :pswitch_21
    iget-object v0, p0, Lcom/android/clone/a;->aSF:Landroid/widget/TextView;

    const v1, 0x7f0a00ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 867
    iget-object v0, p0, Lcom/android/clone/a;->aRJ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 868
    iget-object v0, p0, Lcom/android/clone/a;->aRK:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 869
    iget-object v0, p0, Lcom/android/clone/a;->aSb:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 870
    iget-object v0, p0, Lcom/android/clone/a;->aSb:Landroid/widget/ImageView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 871
    iget-object v0, p0, Lcom/android/clone/a;->aSb:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/clone/a;->aSa:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_8

    .line 874
    :pswitch_47
    iget-object v0, p0, Lcom/android/clone/a;->aSF:Landroid/widget/TextView;

    const v1, 0x7f0a00cf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 875
    iget-object v0, p0, Lcom/android/clone/a;->aSb:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 876
    iget-object v0, p0, Lcom/android/clone/a;->aSb:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/clone/a;->aSa:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_8

    .line 879
    :pswitch_5c
    iget-object v0, p0, Lcom/android/clone/a;->aSf:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/android/clone/a;->aSF:Landroid/widget/TextView;

    const v1, 0x7f0a00d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 881
    iget-object v0, p0, Lcom/android/clone/a;->aSb:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 882
    iget-object v0, p0, Lcom/android/clone/a;->aSb:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/clone/a;->aSa:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_8

    .line 885
    :pswitch_76
    iget-object v0, p0, Lcom/android/clone/a;->aSF:Landroid/widget/TextView;

    const v1, 0x7f0a00d1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 886
    iget-object v0, p0, Lcom/android/clone/a;->aSb:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 887
    iget-object v0, p0, Lcom/android/clone/a;->aSb:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/clone/a;->aSa:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_8

    .line 890
    :pswitch_8c
    iget-object v0, p0, Lcom/android/clone/a;->aTc:Landroid/widget/TextView;

    const v1, 0x7f0a00d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 891
    iget-object v0, p0, Lcom/android/clone/a;->aTb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lcom/android/clone/a;->aSb:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 893
    invoke-direct {p0}, Lcom/android/clone/a;->biM()V

    goto/16 :goto_8

    .line 858
    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_9
        :pswitch_21
        :pswitch_47
        :pswitch_5c
        :pswitch_76
        :pswitch_8c
    .end packed-switch
.end method

.method private bjo()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 277
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "showWaitView"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/clone/a;->aSN:Z

    .line 279
    iget-object v0, p0, Lcom/android/clone/a;->aSW:Lcom/android/common/ui/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/android/clone/a;->aRI:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 281
    iget-object v0, p0, Lcom/android/clone/a;->aSf:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/clone/a;->aRK:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 276
    return-void
.end method

.method private bjp()V
    .registers 1

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/android/clone/a;->bjf()V

    .line 432
    invoke-direct {p0}, Lcom/android/clone/a;->bje()V

    .line 430
    return-void
.end method

.method static synthetic bjq(Lcom/android/clone/a;)Landroid/graphics/Canvas;
    .registers 2

    iget-object v0, p0, Lcom/android/clone/a;->aRL:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic bjr(Lcom/android/clone/a;)Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lcom/android/clone/a;->aRM:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic bjs(Lcom/android/clone/a;)Lcom/android/clone/j;
    .registers 2

    iget-object v0, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    return-object v0
.end method

.method static synthetic bjt(Lcom/android/clone/a;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/clone/a;->aRP:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic bju(Lcom/android/clone/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/clone/a;->aRQ:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic bjv(Lcom/android/clone/a;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/clone/a;->aRT:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic bjw(Lcom/android/clone/a;)Lcom/android/ui/ScaleLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/clone/a;->aRU:Lcom/android/ui/ScaleLayout;

    return-object v0
.end method

.method static synthetic bjx(Lcom/android/clone/a;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/clone/a;->aRV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic bjy(Lcom/android/clone/a;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic bjz(Lcom/android/clone/a;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/clone/a;->aRY:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic bka(Lcom/android/clone/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/clone/a;->biG()V

    return-void
.end method

.method static synthetic bkb(Lcom/android/clone/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/clone/a;->biK()V

    return-void
.end method

.method static synthetic bkc(Lcom/android/clone/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/clone/a;->biL()V

    return-void
.end method

.method static synthetic bkd(Lcom/android/clone/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/clone/a;->biN()V

    return-void
.end method

.method static synthetic bke(Lcom/android/clone/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/clone/a;->biP()V

    return-void
.end method

.method static synthetic bkf(Lcom/android/clone/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/clone/a;->biQ()V

    return-void
.end method

.method static synthetic bkg(Lcom/android/clone/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/clone/a;->biZ()V

    return-void
.end method

.method static synthetic bkh(Lcom/android/clone/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/clone/a;->bjj()V

    return-void
.end method

.method static synthetic bki(Lcom/android/clone/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/clone/a;->bjm()V

    return-void
.end method

.method static synthetic bkj(Lcom/android/clone/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/clone/a;->bjp()V

    return-void
.end method


# virtual methods
.method public biF(Landroid/view/View;)V
    .registers 5

    .prologue
    const/16 v2, 0x8

    .line 575
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "excuteOnBottomClick"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-boolean v0, p0, Lcom/android/clone/a;->aSK:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/clone/a;->aSN:Z

    if-eqz v0, :cond_3d

    .line 577
    :cond_13
    const-string/jumbo v0, "CloneViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BottomOnClickListener can\'t use,because IsResetted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 578
    iget-boolean v2, p0, Lcom/android/clone/a;->aSN:Z

    .line 577
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 578
    const-string/jumbo v2, "; mIsWaiting : "

    .line 577
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 578
    iget-boolean v2, p0, Lcom/android/clone/a;->aSN:Z

    .line 577
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    return-void

    .line 581
    :cond_3d
    iget-object v0, p0, Lcom/android/clone/a;->aRJ:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/clone/a;->aRJ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_53

    .line 582
    :cond_49
    const-string/jumbo v0, "CloneViewManager"

    .line 583
    const-string/jumbo v1, "BottomOnClickListener can\'t use,because mBottomLayout is null or View.GONE"

    .line 582
    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    return-void

    .line 586
    :cond_53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_8a

    .line 574
    :goto_5a
    return-void

    .line 588
    :pswitch_5b
    invoke-direct {p0}, Lcom/android/clone/a;->biZ()V

    goto :goto_5a

    .line 591
    :pswitch_5f
    iget v0, p0, Lcom/android/clone/a;->mState:I

    if-nez v0, :cond_6c

    .line 592
    iget-object v0, p0, Lcom/android/clone/a;->aTc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    invoke-direct {p0}, Lcom/android/clone/a;->biM()V

    goto :goto_5a

    .line 595
    :cond_6c
    invoke-direct {p0}, Lcom/android/clone/a;->biA()V

    goto :goto_5a

    .line 599
    :pswitch_70
    iget-object v0, p0, Lcom/android/clone/a;->aSO:Lcom/android/clone/b;

    invoke-interface {v0}, Lcom/android/clone/b;->bkl()V

    .line 600
    iget v0, p0, Lcom/android/clone/a;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7e

    .line 601
    invoke-direct {p0}, Lcom/android/clone/a;->biK()V

    goto :goto_5a

    .line 603
    :cond_7e
    invoke-direct {p0}, Lcom/android/clone/a;->bjo()V

    .line 604
    new-instance v0, Lcom/android/clone/n;

    invoke-direct {v0, p0}, Lcom/android/clone/n;-><init>(Lcom/android/clone/a;)V

    invoke-virtual {v0}, Lcom/android/clone/n;->start()V

    goto :goto_5a

    .line 586
    :pswitch_data_8a
    .packed-switch 0x7f10007c
        :pswitch_5b
        :pswitch_5f
        :pswitch_70
    .end packed-switch
.end method

.method public biI()[Lcom/android/common/ui/h;
    .registers 4

    .prologue
    .line 327
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/ui/h;

    iget-object v1, p0, Lcom/android/clone/a;->aSf:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/clone/a;->aRK:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/clone/a;->aSP:Lcom/android/common/ui/RotateTextImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public biV()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 387
    iget v1, p0, Lcom/android/clone/a;->mState:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public biX([B)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 653
    iget-object v0, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    if-nez v0, :cond_f

    .line 654
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "onPictureCapture failed, because mClone is null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    return-void

    .line 657
    :cond_f
    iput-boolean v8, p0, Lcom/android/clone/a;->aSK:Z

    .line 658
    iget-object v0, p0, Lcom/android/clone/a;->aSa:Landroid/graphics/Bitmap;

    if-nez v0, :cond_21

    .line 659
    iget v0, p0, Lcom/android/clone/a;->aSV:I

    .line 660
    iget v1, p0, Lcom/android/clone/a;->aSU:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 659
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/clone/a;->aSa:Landroid/graphics/Bitmap;

    .line 662
    :cond_21
    iget-object v0, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    invoke-static {p1}, Lcom/android/common/c;->aob([B)I

    move-result v2

    .line 663
    iget-object v3, p0, Lcom/android/clone/a;->aSa:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/clone/a;->aSQ:I

    iget v5, p0, Lcom/android/clone/a;->aSR:I

    .line 664
    iget v6, p0, Lcom/android/clone/a;->aSV:I

    iget v7, p0, Lcom/android/clone/a;->aSU:I

    move-object v1, p1

    .line 662
    invoke-virtual/range {v0 .. v7}, Lcom/android/clone/j;->bkU([BILandroid/graphics/Bitmap;IIII)I

    move-result v0

    .line 665
    const/4 v1, -0x1

    if-ne v0, v1, :cond_42

    .line 666
    const-string/jumbo v1, "CloneViewManager"

    const-string/jumbo v2, "onPictureCapture failed, pictures is -1"

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :cond_42
    iget-object v1, p0, Lcom/android/clone/a;->aRJ:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 669
    const-string/jumbo v1, "CloneViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pictures = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-direct {p0, v0}, Lcom/android/clone/a;->bjn(I)V

    .line 652
    return-void
.end method

.method public biY()V
    .registers 2

    .prologue
    .line 677
    iget v0, p0, Lcom/android/clone/a;->mState:I

    if-nez v0, :cond_9

    .line 678
    iget-object v0, p0, Lcom/android/clone/a;->aSW:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performClick()Z

    .line 676
    :cond_9
    return-void
.end method

.method public biy(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 539
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "excuteOnEditClick"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_4a

    .line 538
    :goto_12
    return-void

    .line 542
    :sswitch_13
    iput-boolean v2, p0, Lcom/android/clone/a;->aSH:Z

    .line 543
    iget-object v0, p0, Lcom/android/clone/a;->aSD:Lcom/android/clone/d;

    invoke-virtual {v0}, Lcom/android/clone/d;->bkA()V

    goto :goto_12

    .line 546
    :sswitch_1b
    iput-boolean v3, p0, Lcom/android/clone/a;->aSH:Z

    .line 547
    iget-object v0, p0, Lcom/android/clone/a;->aSD:Lcom/android/clone/d;

    invoke-virtual {v0}, Lcom/android/clone/d;->bkz()V

    .line 548
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/clone/a;->aRX:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/clone/a;->aRL:Landroid/graphics/Canvas;

    goto :goto_12

    .line 551
    :sswitch_2c
    invoke-direct {p0, v2}, Lcom/android/clone/a;->biJ(I)V

    goto :goto_12

    .line 554
    :sswitch_30
    invoke-direct {p0, v3}, Lcom/android/clone/a;->biJ(I)V

    goto :goto_12

    .line 557
    :sswitch_34
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/clone/a;->biJ(I)V

    goto :goto_12

    .line 560
    :sswitch_39
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/clone/a;->biJ(I)V

    goto :goto_12

    .line 563
    :sswitch_3e
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/clone/a;->biJ(I)V

    goto :goto_12

    .line 566
    :sswitch_43
    iget-object v0, p0, Lcom/android/clone/a;->aSO:Lcom/android/clone/b;

    invoke-interface {v0}, Lcom/android/clone/b;->bko()V

    goto :goto_12

    .line 540
    nop

    :sswitch_data_4a
    .sparse-switch
        0x7f10008e -> :sswitch_2c
        0x7f100091 -> :sswitch_30
        0x7f100094 -> :sswitch_34
        0x7f100097 -> :sswitch_39
        0x7f10009a -> :sswitch_3e
        0x7f10009d -> :sswitch_13
        0x7f1000a0 -> :sswitch_1b
        0x7f1000a3 -> :sswitch_43
    .end sparse-switch
.end method

.method public bjh(IIII)V
    .registers 8

    .prologue
    .line 361
    iput p1, p0, Lcom/android/clone/a;->aSR:I

    .line 362
    iput p2, p0, Lcom/android/clone/a;->aSQ:I

    .line 363
    iput p3, p0, Lcom/android/clone/a;->aSV:I

    .line 364
    iput p4, p0, Lcom/android/clone/a;->aSU:I

    .line 365
    const-string/jumbo v0, "CloneViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSize mPictureWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/clone/a;->aSR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    const-string/jumbo v2, "; mPictureHeight = "

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    iget v2, p0, Lcom/android/clone/a;->aSQ:I

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    const-string/jumbo v2, "; mScreenWidth = "

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    iget v2, p0, Lcom/android/clone/a;->aSV:I

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    const-string/jumbo v2, "; mScreenHeigh = "

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    iget v2, p0, Lcom/android/clone/a;->aSU:I

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public onBackPressed()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1029
    iget-object v0, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    invoke-virtual {v0}, Lcom/android/clone/j;->bkQ()I

    move-result v0

    if-nez v0, :cond_b

    .line 1030
    return v2

    .line 1031
    :cond_b
    iget-boolean v0, p0, Lcom/android/clone/a;->aSN:Z

    if-eqz v0, :cond_19

    .line 1032
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "onBackPressed failed, because is making."

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    return v3

    .line 1035
    :cond_19
    iget v0, p0, Lcom/android/clone/a;->mState:I

    if-nez v0, :cond_31

    .line 1036
    iget-object v0, p0, Lcom/android/clone/a;->aRK:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_27

    .line 1037
    iget-object v0, p0, Lcom/android/clone/a;->aRK:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->callOnClick()Z

    .line 1045
    :goto_26
    return v3

    .line 1039
    :cond_27
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "onBackPressed, call Cancel view is null "

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    return v2

    .line 1043
    :cond_31
    invoke-direct {p0}, Lcom/android/clone/a;->bji()V

    goto :goto_26
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/clone/a;->aSI:Z

    .line 624
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/clone/a;->aRR:Landroid/app/AlertDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/clone/a;->aRR:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 378
    iget-object v0, p0, Lcom/android/clone/a;->aRR:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 376
    :cond_11
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 371
    iget v0, p0, Lcom/android/clone/a;->mState:I

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/clone/a;->aRO:Lcom/android/clone/j;

    invoke-virtual {v0}, Lcom/android/clone/j;->bkQ()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/clone/a;->aSO:Lcom/android/clone/b;

    if-eqz v0, :cond_16

    .line 372
    iget-object v0, p0, Lcom/android/clone/a;->aSO:Lcom/android/clone/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/clone/b;->bkm(Z)V

    .line 370
    :cond_16
    return-void
.end method

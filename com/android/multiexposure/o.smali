.class public Lcom/android/multiexposure/o;
.super Lcom/android/common/o/l;
.source "SourceFile"


# instance fields
.field private final aqE:I

.field private aqF:Z

.field public aqG:Lcom/android/multiexposure/ui/MyImageView;

.field private aqH:Landroid/widget/LinearLayout;

.field public aqI:Landroid/widget/SeekBar;

.field public aqJ:Landroid/widget/TextView;

.field private aqK:Landroid/widget/ImageView;

.field private aqL:Landroid/widget/TextView;

.field private aqM:Lcom/android/multiexposure/p;

.field private aqN:Landroid/widget/LinearLayout;

.field public aqO:Lcom/android/multiexposure/c;

.field private aqP:Landroid/widget/RelativeLayout;

.field private aqQ:Lcom/android/common/ui/RotateImageView;

.field private aqR:Lcom/android/common/ui/RotateImageView;

.field aqS:Lcom/android/multiexposure/m;

.field private aqT:Lcom/android/common/ui/ZtemtShutterButton;

.field private aqU:Lcom/android/common/ui/MultiFunctionImageView;

.field private aqV:Lcom/android/multiexposure/q;

.field private aqW:Lcom/android/common/ui/J;

.field private aqX:Landroid/widget/ImageView;

.field private aqY:Landroid/widget/ImageView;

.field private aqZ:Landroid/widget/ImageView;

.field private ara:Landroid/widget/ImageView;

.field private arb:Landroid/widget/LinearLayout;

.field private arc:Lcom/android/common/setting/IconListPreference;

.field private ard:Landroid/view/View;

.field private are:Ljava/util/Vector;

.field private arf:Landroid/widget/RelativeLayout;

.field private arg:Landroid/widget/LinearLayout;

.field private arh:Landroid/widget/ImageView;

.field public ari:Lcom/android/common/ui/u;

.field private arj:Lcom/android/common/ui/ZtemtSlidingDrawer;

.field private ark:Lcom/android/multiexposure/ui/MyImageView;

.field private arl:Landroid/widget/ImageView;

.field private arm:Landroid/widget/LinearLayout;

.field private arn:Z

.field private aro:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/android/multiexposure/o;->arj:Lcom/android/common/ui/ZtemtSlidingDrawer;

    .line 77
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqL:Landroid/widget/TextView;

    .line 78
    iput-object v1, p0, Lcom/android/multiexposure/o;->arb:Landroid/widget/LinearLayout;

    .line 79
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqX:Landroid/widget/ImageView;

    .line 80
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqY:Landroid/widget/ImageView;

    .line 81
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqZ:Landroid/widget/ImageView;

    .line 82
    iput-object v1, p0, Lcom/android/multiexposure/o;->ara:Landroid/widget/ImageView;

    .line 84
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqN:Landroid/widget/LinearLayout;

    .line 85
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqJ:Landroid/widget/TextView;

    .line 86
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqI:Landroid/widget/SeekBar;

    .line 88
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqH:Landroid/widget/LinearLayout;

    .line 89
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqG:Lcom/android/multiexposure/ui/MyImageView;

    .line 90
    iput-object v1, p0, Lcom/android/multiexposure/o;->arm:Landroid/widget/LinearLayout;

    .line 91
    iput-object v1, p0, Lcom/android/multiexposure/o;->ark:Lcom/android/multiexposure/ui/MyImageView;

    .line 92
    iput-object v1, p0, Lcom/android/multiexposure/o;->arl:Landroid/widget/ImageView;

    .line 95
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqP:Landroid/widget/RelativeLayout;

    .line 96
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqT:Lcom/android/common/ui/ZtemtShutterButton;

    .line 97
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqU:Lcom/android/common/ui/MultiFunctionImageView;

    .line 99
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqQ:Lcom/android/common/ui/RotateImageView;

    .line 100
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqR:Lcom/android/common/ui/RotateImageView;

    .line 101
    iput-object v1, p0, Lcom/android/multiexposure/o;->arh:Landroid/widget/ImageView;

    .line 102
    iput-object v1, p0, Lcom/android/multiexposure/o;->ard:Landroid/view/View;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/multiexposure/o;->arn:Z

    .line 105
    iput v2, p0, Lcom/android/multiexposure/o;->aro:I

    .line 106
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    .line 107
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqV:Lcom/android/multiexposure/q;

    .line 110
    const/16 v0, 0x7d1

    iput v0, p0, Lcom/android/multiexposure/o;->aqE:I

    .line 111
    new-instance v0, Lcom/android/multiexposure/p;

    invoke-direct {v0, p0, v1}, Lcom/android/multiexposure/p;-><init>(Lcom/android/multiexposure/o;Lcom/android/multiexposure/p;)V

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqM:Lcom/android/multiexposure/p;

    .line 113
    iput-object v1, p0, Lcom/android/multiexposure/o;->arf:Landroid/widget/RelativeLayout;

    .line 114
    iput-object v1, p0, Lcom/android/multiexposure/o;->arg:Landroid/widget/LinearLayout;

    .line 115
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqK:Landroid/widget/ImageView;

    .line 116
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqW:Lcom/android/common/ui/J;

    .line 117
    iput-boolean v2, p0, Lcom/android/multiexposure/o;->aqF:Z

    .line 178
    iput-object v1, p0, Lcom/android/multiexposure/o;->arc:Lcom/android/common/setting/IconListPreference;

    .line 549
    new-instance v0, Lcom/android/multiexposure/v;

    invoke-direct {v0, p0}, Lcom/android/multiexposure/v;-><init>(Lcom/android/multiexposure/o;)V

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqS:Lcom/android/multiexposure/m;

    .line 824
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/multiexposure/o;->are:Ljava/util/Vector;

    .line 121
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 75
    iput-object v1, p0, Lcom/android/multiexposure/o;->arj:Lcom/android/common/ui/ZtemtSlidingDrawer;

    .line 77
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqL:Landroid/widget/TextView;

    .line 78
    iput-object v1, p0, Lcom/android/multiexposure/o;->arb:Landroid/widget/LinearLayout;

    .line 79
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqX:Landroid/widget/ImageView;

    .line 80
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqY:Landroid/widget/ImageView;

    .line 81
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqZ:Landroid/widget/ImageView;

    .line 82
    iput-object v1, p0, Lcom/android/multiexposure/o;->ara:Landroid/widget/ImageView;

    .line 84
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqN:Landroid/widget/LinearLayout;

    .line 85
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqJ:Landroid/widget/TextView;

    .line 86
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqI:Landroid/widget/SeekBar;

    .line 88
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqH:Landroid/widget/LinearLayout;

    .line 89
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqG:Lcom/android/multiexposure/ui/MyImageView;

    .line 90
    iput-object v1, p0, Lcom/android/multiexposure/o;->arm:Landroid/widget/LinearLayout;

    .line 91
    iput-object v1, p0, Lcom/android/multiexposure/o;->ark:Lcom/android/multiexposure/ui/MyImageView;

    .line 92
    iput-object v1, p0, Lcom/android/multiexposure/o;->arl:Landroid/widget/ImageView;

    .line 95
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqP:Landroid/widget/RelativeLayout;

    .line 96
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqT:Lcom/android/common/ui/ZtemtShutterButton;

    .line 97
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqU:Lcom/android/common/ui/MultiFunctionImageView;

    .line 99
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqQ:Lcom/android/common/ui/RotateImageView;

    .line 100
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqR:Lcom/android/common/ui/RotateImageView;

    .line 101
    iput-object v1, p0, Lcom/android/multiexposure/o;->arh:Landroid/widget/ImageView;

    .line 102
    iput-object v1, p0, Lcom/android/multiexposure/o;->ard:Landroid/view/View;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/multiexposure/o;->arn:Z

    .line 105
    iput v2, p0, Lcom/android/multiexposure/o;->aro:I

    .line 106
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    .line 107
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqV:Lcom/android/multiexposure/q;

    .line 110
    const/16 v0, 0x7d1

    iput v0, p0, Lcom/android/multiexposure/o;->aqE:I

    .line 111
    new-instance v0, Lcom/android/multiexposure/p;

    invoke-direct {v0, p0, v1}, Lcom/android/multiexposure/p;-><init>(Lcom/android/multiexposure/o;Lcom/android/multiexposure/p;)V

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqM:Lcom/android/multiexposure/p;

    .line 113
    iput-object v1, p0, Lcom/android/multiexposure/o;->arf:Landroid/widget/RelativeLayout;

    .line 114
    iput-object v1, p0, Lcom/android/multiexposure/o;->arg:Landroid/widget/LinearLayout;

    .line 115
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqK:Landroid/widget/ImageView;

    .line 116
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqW:Lcom/android/common/ui/J;

    .line 117
    iput-boolean v2, p0, Lcom/android/multiexposure/o;->aqF:Z

    .line 178
    iput-object v1, p0, Lcom/android/multiexposure/o;->arc:Lcom/android/common/setting/IconListPreference;

    .line 549
    new-instance v0, Lcom/android/multiexposure/v;

    invoke-direct {v0, p0}, Lcom/android/multiexposure/v;-><init>(Lcom/android/multiexposure/o;)V

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqS:Lcom/android/multiexposure/m;

    .line 824
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/multiexposure/o;->are:Ljava/util/Vector;

    .line 118
    return-void
.end method

.method public static aCB()Lcom/android/multiexposure/o;
    .registers 2

    .prologue
    .line 125
    new-instance v0, Lcom/android/multiexposure/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/multiexposure/o;-><init>(I)V

    .line 126
    return-object v0
.end method

.method private aCD(I)V
    .registers 5

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/multiexposure/o;->arc:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_4c

    .line 313
    iget-object v0, p0, Lcom/android/multiexposure/o;->arc:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 314
    iget v1, p0, Lcom/android/multiexposure/o;->aro:I

    if-ne v1, v0, :cond_17

    .line 315
    return-void

    .line 317
    :cond_17
    iput v0, p0, Lcom/android/multiexposure/o;->aro:I

    .line 323
    :goto_19
    const-string/jumbo v0, "MultiExposureFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wq changeTypeByGridView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/multiexposure/o;->aro:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->all()Lcom/android/common/appService/W;

    move-result-object v0

    iget v1, p0, Lcom/android/multiexposure/o;->aro:I

    iget-object v2, p0, Lcom/android/multiexposure/o;->aqS:Lcom/android/multiexposure/m;

    invoke-static {v0, v1, v2}, Lcom/android/multiexposure/n;->aCy(Lcom/android/common/appService/W;ILcom/android/multiexposure/m;)Lcom/android/multiexposure/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    .line 325
    iget v0, p0, Lcom/android/multiexposure/o;->aro:I

    invoke-direct {p0, v0}, Lcom/android/multiexposure/o;->aDh(I)V

    .line 326
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCW()V

    .line 310
    return-void

    .line 320
    :cond_4c
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/multiexposure/o;->aro:I

    goto :goto_19
.end method

.method private aCG()V
    .registers 2

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCL()V

    .line 385
    iget-object v0, p0, Lcom/android/multiexposure/o;->arh:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 386
    return-void

    .line 388
    :cond_c
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCJ()V

    .line 389
    iget v0, p0, Lcom/android/multiexposure/o;->aro:I

    invoke-direct {p0, v0}, Lcom/android/multiexposure/o;->aDh(I)V

    .line 390
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aDd()V

    .line 392
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCO()V

    .line 393
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aDc()V

    .line 382
    return-void
.end method

.method private aCH()V
    .registers 9

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqW:Lcom/android/common/ui/J;

    if-eqz v0, :cond_5

    .line 946
    return-void

    .line 948
    :cond_5
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqN:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 949
    const-string/jumbo v1, "MultiExposureFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "translateHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    new-instance v1, Lcom/android/common/ui/J;

    .line 951
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/multiexposure/o;->arf:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x0

    .line 952
    int-to-float v5, v0

    const-wide/16 v6, 0x1f4

    .line 950
    invoke-direct/range {v1 .. v7}, Lcom/android/common/ui/J;-><init>([Ljava/lang/Object;Ljava/lang/String;FFJ)V

    iput-object v1, p0, Lcom/android/multiexposure/o;->aqW:Lcom/android/common/ui/J;

    .line 953
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqW:Lcom/android/common/ui/J;

    new-instance v1, Lcom/android/multiexposure/D;

    invoke-direct {v1, p0}, Lcom/android/multiexposure/D;-><init>(Lcom/android/multiexposure/o;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/J;->Aj(Lcom/android/common/ui/K;)V

    .line 944
    return-void
.end method

.method private aCI(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 230
    const v0, 0x7f100023

    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqP:Landroid/widget/RelativeLayout;

    .line 233
    const v0, 0x7f100024

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZtemtShutterButton;

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqT:Lcom/android/common/ui/ZtemtShutterButton;

    .line 236
    const v0, 0x7f100025

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MultiFunctionImageView;

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqU:Lcom/android/common/ui/MultiFunctionImageView;

    .line 239
    const v0, 0x7f100026

    .line 238
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqQ:Lcom/android/common/ui/RotateImageView;

    .line 241
    const v0, 0x7f100027

    .line 240
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqR:Lcom/android/common/ui/RotateImageView;

    .line 243
    const v0, 0x7f100029

    .line 242
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/multiexposure/o;->arh:Landroid/widget/ImageView;

    .line 228
    return-void
.end method

.method private aCJ()V
    .registers 3

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqQ:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcom/android/multiexposure/z;

    invoke-direct {v1, p0}, Lcom/android/multiexposure/z;-><init>(Lcom/android/multiexposure/o;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqR:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcom/android/multiexposure/A;

    invoke-direct {v1, p0}, Lcom/android/multiexposure/A;-><init>(Lcom/android/multiexposure/o;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    return-void
.end method

.method private aCK(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 216
    const v0, 0x7f100036

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqH:Landroid/widget/LinearLayout;

    .line 218
    const v0, 0x7f100037

    .line 217
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/multiexposure/ui/MyImageView;

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqG:Lcom/android/multiexposure/ui/MyImageView;

    .line 221
    const v0, 0x7f100033

    .line 220
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/multiexposure/o;->arm:Landroid/widget/LinearLayout;

    .line 223
    const v0, 0x7f100034

    .line 222
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/multiexposure/ui/MyImageView;

    iput-object v0, p0, Lcom/android/multiexposure/o;->ark:Lcom/android/multiexposure/ui/MyImageView;

    .line 225
    const v0, 0x7f100035

    .line 224
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/multiexposure/o;->arl:Landroid/widget/ImageView;

    .line 214
    return-void
.end method

.method private aCL()V
    .registers 4

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/multiexposure/o;->arc:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_28

    .line 450
    iget-object v0, p0, Lcom/android/multiexposure/o;->arc:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/multiexposure/o;->aro:I

    .line 454
    :goto_14
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->all()Lcom/android/common/appService/W;

    move-result-object v0

    iget v1, p0, Lcom/android/multiexposure/o;->aro:I

    iget-object v2, p0, Lcom/android/multiexposure/o;->aqS:Lcom/android/multiexposure/m;

    invoke-static {v0, v1, v2}, Lcom/android/multiexposure/n;->aCy(Lcom/android/common/appService/W;ILcom/android/multiexposure/m;)Lcom/android/multiexposure/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    .line 456
    iget v0, p0, Lcom/android/multiexposure/o;->aro:I

    invoke-direct {p0, v0}, Lcom/android/multiexposure/o;->aDh(I)V

    .line 447
    return-void

    .line 452
    :cond_28
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/multiexposure/o;->aro:I

    goto :goto_14
.end method

.method private aCM(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 202
    const v0, 0x7f10002d

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/multiexposure/o;->arb:Landroid/widget/LinearLayout;

    .line 204
    const v0, 0x7f10002e

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqX:Landroid/widget/ImageView;

    .line 206
    const v0, 0x7f10002f

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqY:Landroid/widget/ImageView;

    .line 208
    const v0, 0x7f100030

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqZ:Landroid/widget/ImageView;

    .line 210
    const v0, 0x7f100031

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/multiexposure/o;->ara:Landroid/widget/ImageView;

    .line 212
    const v0, 0x7f100032

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqL:Landroid/widget/TextView;

    .line 200
    return-void
.end method

.method private aCN(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 154
    const v0, 0x7f100197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/multiexposure/o;->arf:Landroid/widget/RelativeLayout;

    .line 155
    iget-object v0, p0, Lcom/android/multiexposure/o;->arf:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 156
    const v0, 0x7f10019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqJ:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f100198

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/multiexposure/o;->arg:Landroid/widget/LinearLayout;

    .line 159
    iget-object v0, p0, Lcom/android/multiexposure/o;->arg:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/multiexposure/w;

    invoke-direct {v1, p0}, Lcom/android/multiexposure/w;-><init>(Lcom/android/multiexposure/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v0, 0x7f10019a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqN:Landroid/widget/LinearLayout;

    .line 172
    const v0, 0x7f1000f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqK:Landroid/widget/ImageView;

    .line 173
    const v0, 0x7f100170

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqI:Landroid/widget/SeekBar;

    .line 174
    new-instance v0, Lcom/android/multiexposure/s;

    invoke-direct {v0, p0}, Lcom/android/multiexposure/s;-><init>(Lcom/android/multiexposure/o;)V

    .line 175
    iget-object v1, p0, Lcom/android/multiexposure/o;->aqN:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/common/ui/b;

    iget-object v3, p0, Lcom/android/multiexposure/o;->aqN:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/multiexposure/o;->aqI:Landroid/widget/SeekBar;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/common/ui/b;-><init>(Landroid/view/View;Landroid/widget/SeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    iget-object v1, p0, Lcom/android/multiexposure/o;->aqI:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 153
    return-void
.end method

.method private aCO()V
    .registers 3

    .prologue
    .line 510
    new-instance v0, Lcom/android/multiexposure/t;

    .line 511
    iget-object v1, p0, Lcom/android/multiexposure/o;->adt:Lcom/android/common/appService/W;

    .line 510
    invoke-direct {v0, v1, p0}, Lcom/android/multiexposure/t;-><init>(Lcom/android/common/appService/W;Lcom/android/multiexposure/o;)V

    iput-object v0, p0, Lcom/android/multiexposure/o;->ari:Lcom/android/common/ui/u;

    .line 512
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqT:Lcom/android/common/ui/ZtemtShutterButton;

    iget-object v1, p0, Lcom/android/multiexposure/o;->ari:Lcom/android/common/ui/u;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->xa(Lcom/android/common/ui/u;)V

    .line 509
    return-void
.end method

.method private aCP(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 180
    const v0, 0x7f1000b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZtemtSlidingDrawer;

    iput-object v0, p0, Lcom/android/multiexposure/o;->arj:Lcom/android/common/ui/ZtemtSlidingDrawer;

    .line 181
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->alA()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_multi_exposure"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/IconListPreference;

    iput-object v0, p0, Lcom/android/multiexposure/o;->arc:Lcom/android/common/setting/IconListPreference;

    .line 182
    iget-object v0, p0, Lcom/android/multiexposure/o;->arj:Lcom/android/common/ui/ZtemtSlidingDrawer;

    iget-object v1, p0, Lcom/android/multiexposure/o;->arc:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {p0}, Lcom/android/multiexposure/o;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Ar(Lcom/android/common/setting/IconListPreference;Landroid/content/Context;Z)V

    .line 183
    iget-object v0, p0, Lcom/android/multiexposure/o;->arj:Lcom/android/common/ui/ZtemtSlidingDrawer;

    new-instance v1, Lcom/android/multiexposure/x;

    invoke-direct {v1, p0}, Lcom/android/multiexposure/x;-><init>(Lcom/android/multiexposure/o;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Au(Lcom/android/common/ui/L;)V

    .line 191
    iget-object v0, p0, Lcom/android/multiexposure/o;->arj:Lcom/android/common/ui/ZtemtSlidingDrawer;

    new-instance v1, Lcom/android/multiexposure/y;

    invoke-direct {v1, p0}, Lcom/android/multiexposure/y;-><init>(Lcom/android/multiexposure/o;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Av(Lcom/android/common/ui/M;)V

    .line 179
    return-void
.end method

.method private aCQ(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 141
    const-string/jumbo v0, "MultiExposureFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "==wq== initViews: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, p1}, Lcom/android/multiexposure/o;->aCK(Landroid/view/View;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/android/multiexposure/o;->aCI(Landroid/view/View;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/android/multiexposure/o;->aCP(Landroid/view/View;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/android/multiexposure/o;->aCM(Landroid/view/View;)V

    .line 146
    invoke-direct {p0, p1}, Lcom/android/multiexposure/o;->aCN(Landroid/view/View;)V

    .line 148
    const v0, 0x7f100028

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/multiexposure/o;->ard:Landroid/view/View;

    .line 150
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCY()V

    .line 140
    return-void
.end method

.method private aCR()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 854
    iget-object v1, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v1}, Lcom/android/multiexposure/c;->aCb()I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private aCS()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 850
    iget-object v1, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v1}, Lcom/android/multiexposure/c;->aCa()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private aCT()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 263
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private aCU()Z
    .registers 2

    .prologue
    .line 820
    iget-boolean v0, p0, Lcom/android/multiexposure/o;->arn:Z

    return v0
.end method

.method private aCV()V
    .registers 2

    .prologue
    .line 935
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCH()V

    .line 936
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqW:Lcom/android/common/ui/J;

    invoke-virtual {v0}, Lcom/android/common/ui/J;->Ak()V

    .line 934
    return-void
.end method

.method private aCW()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 682
    iget-object v0, p0, Lcom/android/multiexposure/o;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_11

    .line 683
    const-string/jumbo v0, "MultiExposureFragment"

    const-string/jumbo v1, "resetFragment mAppService == null return"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    return-void

    .line 686
    :cond_11
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_1a

    .line 687
    return-void

    .line 689
    :cond_1a
    iget-object v0, p0, Lcom/android/multiexposure/o;->arh:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2d

    .line 690
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqH:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/android/multiexposure/o;->arm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 692
    return-void

    .line 694
    :cond_2d
    invoke-virtual {p0, v2}, Lcom/android/multiexposure/o;->aCE(Z)V

    .line 696
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->alq()V

    .line 698
    const/4 v0, 0x0

    :try_start_34
    invoke-virtual {p0, v0}, Lcom/android/multiexposure/o;->aDj(Z)V

    .line 699
    iget v0, p0, Lcom/android/multiexposure/o;->aro:I

    invoke-direct {p0, v0}, Lcom/android/multiexposure/o;->aDh(I)V

    .line 700
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aDd()V

    .line 701
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqH:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/android/multiexposure/o;->arf:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/android/multiexposure/o;->arj:Lcom/android/common/ui/ZtemtSlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtSlidingDrawer;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/android/multiexposure/o;->arj:Lcom/android/common/ui/ZtemtSlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Aw(Z)V

    .line 705
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aDc()V

    .line 706
    iget v0, p0, Lcom/android/multiexposure/o;->aro:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_66

    .line 707
    iget v0, p0, Lcom/android/multiexposure/o;->aro:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_81

    .line 711
    :cond_66
    iget-object v0, p0, Lcom/android/multiexposure/o;->arm:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/android/multiexposure/o;->arl:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/android/multiexposure/o;->ark:Lcom/android/multiexposure/ui/MyImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/ui/MyImageView;->setVisibility(I)V
    :try_end_78
    .catch Ljava/lang/NullPointerException; {:try_start_34 .. :try_end_78} :catch_98

    .line 721
    :goto_78
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->all()Lcom/android/common/appService/W;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->se(Z)V

    .line 681
    return-void

    .line 708
    :cond_81
    :try_start_81
    iget v0, p0, Lcom/android/multiexposure/o;->aro:I

    if-eq v0, v3, :cond_66

    .line 709
    iget v0, p0, Lcom/android/multiexposure/o;->aro:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_66

    .line 715
    iget-object v0, p0, Lcom/android/multiexposure/o;->arm:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/android/multiexposure/o;->arl:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_97
    .catch Ljava/lang/NullPointerException; {:try_start_81 .. :try_end_97} :catch_98

    goto :goto_78

    .line 718
    :catch_98
    move-exception v0

    .line 719
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_78
.end method

.method private aCX()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 665
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->aCF()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 666
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->aCF()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/g;->dz(I)V

    .line 667
    iget-object v0, p0, Lcom/android/multiexposure/o;->arb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqT:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqR:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqR:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    .line 671
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqR:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqQ:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqQ:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    .line 674
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqQ:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->alq()V

    .line 676
    iget-object v0, p0, Lcom/android/multiexposure/o;->arh:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCW()V

    .line 678
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCJ()V

    .line 664
    return-void
.end method

.method private aCY()V
    .registers 4

    .prologue
    .line 248
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/common/ui/h;

    .line 250
    iget-object v1, p0, Lcom/android/multiexposure/o;->aqQ:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 251
    iget-object v1, p0, Lcom/android/multiexposure/o;->aqR:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 248
    iput-object v0, p0, Lcom/android/multiexposure/o;->adw:[Lcom/android/common/ui/h;

    .line 247
    return-void
.end method

.method private aCZ(Landroid/graphics/Bitmap;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 749
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqH:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Lcom/android/multiexposure/o;->arf:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqI:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/multiexposure/o;->aln()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "multi_exposure_parameter"

    .line 752
    const/16 v3, 0x32

    .line 751
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 753
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqG:Lcom/android/multiexposure/ui/MyImageView;

    .line 754
    iget-object v1, p0, Lcom/android/multiexposure/o;->aqI:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    .line 753
    invoke-virtual {v0, v1}, Lcom/android/multiexposure/ui/MyImageView;->setImageAlpha(I)V

    .line 755
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqG:Lcom/android/multiexposure/ui/MyImageView;

    invoke-virtual {v0, p1}, Lcom/android/multiexposure/ui/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 748
    return-void
.end method

.method static synthetic aDA(Lcom/android/multiexposure/o;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCV()V

    return-void
.end method

.method static synthetic aDB(Lcom/android/multiexposure/o;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCW()V

    return-void
.end method

.method static synthetic aDC(Lcom/android/multiexposure/o;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCX()V

    return-void
.end method

.method static synthetic aDD(Lcom/android/multiexposure/o;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/multiexposure/o;->aDd()V

    return-void
.end method

.method static synthetic aDE(Lcom/android/multiexposure/o;ILandroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/multiexposure/o;->aDf(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic aDF(Lcom/android/multiexposure/o;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/multiexposure/o;->aDh(I)V

    return-void
.end method

.method static synthetic aDG(Lcom/android/multiexposure/o;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/multiexposure/o;->aDi([B)V

    return-void
.end method

.method private aDa(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqH:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqG:Lcom/android/multiexposure/ui/MyImageView;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/ui/MyImageView;->setImageAlpha(I)V

    .line 746
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqG:Lcom/android/multiexposure/ui/MyImageView;

    invoke-virtual {v0, p1}, Lcom/android/multiexposure/ui/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 743
    return-void
.end method

.method private aDc()V
    .registers 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqP:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b

    .line 257
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqP:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 254
    :cond_b
    return-void
.end method

.method private aDd()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    if-nez v0, :cond_8

    return-void

    .line 415
    :cond_8
    iget v0, p0, Lcom/android/multiexposure/o;->aro:I

    packed-switch v0, :pswitch_data_56

    .line 412
    :cond_d
    :goto_d
    :pswitch_d
    return-void

    .line 423
    :pswitch_e
    iget-object v0, p0, Lcom/android/multiexposure/o;->arb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCb()I

    move-result v0

    if-nez v0, :cond_30

    .line 425
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqX:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqY:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqZ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/android/multiexposure/o;->ara:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d

    .line 429
    :cond_30
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCb()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 430
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqX:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqY:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqZ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/android/multiexposure/o;->ara:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d

    .line 438
    :pswitch_4e
    iget-object v0, p0, Lcom/android/multiexposure/o;->arb:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d

    .line 415
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_e
        :pswitch_4e
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private aDe()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 867
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    if-nez v0, :cond_8

    return-void

    .line 869
    :cond_8
    iget v0, p0, Lcom/android/multiexposure/o;->aro:I

    packed-switch v0, :pswitch_data_30

    .line 866
    :goto_d
    :pswitch_d
    return-void

    .line 877
    :pswitch_e
    iget-object v0, p0, Lcom/android/multiexposure/o;->arb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 878
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqX:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 879
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqY:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqZ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/android/multiexposure/o;->ara:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d

    .line 884
    :pswitch_28
    iget-object v0, p0, Lcom/android/multiexposure/o;->arb:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d

    .line 869
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_e
        :pswitch_28
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private aDf(ILandroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 724
    packed-switch p1, :pswitch_data_10

    .line 723
    :goto_3
    :pswitch_3
    return-void

    .line 728
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/android/multiexposure/o;->aDa(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 731
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/multiexposure/o;->aCZ(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 737
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/android/multiexposure/o;->aDg(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 724
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private aDg(Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 758
    iget-object v0, p0, Lcom/android/multiexposure/o;->arm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/android/multiexposure/o;->arl:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 760
    iget-object v0, p0, Lcom/android/multiexposure/o;->ark:Lcom/android/multiexposure/ui/MyImageView;

    invoke-virtual {v0, v2}, Lcom/android/multiexposure/ui/MyImageView;->setVisibility(I)V

    .line 761
    iget-object v0, p0, Lcom/android/multiexposure/o;->ark:Lcom/android/multiexposure/ui/MyImageView;

    invoke-virtual {v0, p1}, Lcom/android/multiexposure/ui/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 757
    return-void
.end method

.method private aDh(I)V
    .registers 7

    .prologue
    const v1, 0x7f0a0105

    const/4 v4, 0x0

    .line 460
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    if-nez v0, :cond_9

    .line 461
    return-void

    .line 463
    :cond_9
    packed-switch p1, :pswitch_data_9c

    .line 459
    :goto_c
    :pswitch_c
    return-void

    .line 465
    :pswitch_d
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCb()I

    move-result v0

    if-nez v0, :cond_1e

    .line 466
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqL:Landroid/widget/TextView;

    const v1, 0x7f0a0104

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_c

    .line 468
    :cond_1e
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqL:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_c

    .line 472
    :pswitch_24
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCb()I

    move-result v0

    if-nez v0, :cond_35

    .line 473
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqL:Landroid/widget/TextView;

    const v1, 0x7f0a010c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_c

    .line 475
    :cond_35
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqL:Landroid/widget/TextView;

    .line 476
    const v1, 0x7f0a0110

    invoke-virtual {p0, v1}, Lcom/android/multiexposure/o;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 475
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 477
    iget-object v3, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v3}, Lcom/android/multiexposure/c;->aCb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 475
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 481
    :pswitch_55
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCb()I

    move-result v0

    if-nez v0, :cond_66

    .line 482
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqL:Landroid/widget/TextView;

    const v1, 0x7f0a010d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_c

    .line 484
    :cond_66
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqL:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_c

    .line 488
    :pswitch_6c
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCb()I

    move-result v0

    if-nez v0, :cond_7d

    .line 489
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqL:Landroid/widget/TextView;

    const v1, 0x7f0a010e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_c

    .line 491
    :cond_7d
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqL:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_c

    .line 498
    :pswitch_83
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCb()I

    move-result v0

    if-nez v0, :cond_95

    .line 499
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqL:Landroid/widget/TextView;

    const v1, 0x7f0a010f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_c

    .line 501
    :cond_95
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqL:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_c

    .line 463
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_24
        :pswitch_c
        :pswitch_55
        :pswitch_6c
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
    .end packed-switch
.end method

.method private aDi([B)V
    .registers 9

    .prologue
    const/16 v0, 0x10e

    const/16 v1, 0x5a

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 624
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->aCF()Lcom/android/common/appService/W;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pB()V

    .line 625
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->aCF()Lcom/android/common/appService/W;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/common/independentFocusExposure/g;->dz(I)V

    .line 626
    iget-object v3, p0, Lcom/android/multiexposure/o;->arb:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 627
    iget-object v3, p0, Lcom/android/multiexposure/o;->aqT:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v3, v6}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 628
    iget-object v3, p0, Lcom/android/multiexposure/o;->aqR:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v3, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 629
    iget-object v3, p0, Lcom/android/multiexposure/o;->aqR:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v3, v5}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    .line 630
    iget-object v3, p0, Lcom/android/multiexposure/o;->aqR:Lcom/android/common/ui/RotateImageView;

    new-instance v4, Lcom/android/multiexposure/B;

    invoke-direct {v4, p0}, Lcom/android/multiexposure/B;-><init>(Lcom/android/multiexposure/o;)V

    invoke-virtual {v3, v4}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    iget-object v3, p0, Lcom/android/multiexposure/o;->aqQ:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v3, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 638
    iget-object v3, p0, Lcom/android/multiexposure/o;->aqQ:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v3, v5}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    .line 639
    iget-object v3, p0, Lcom/android/multiexposure/o;->aqQ:Lcom/android/common/ui/RotateImageView;

    new-instance v4, Lcom/android/multiexposure/C;

    invoke-direct {v4, p0}, Lcom/android/multiexposure/C;-><init>(Lcom/android/multiexposure/o;)V

    invoke-virtual {v3, v4}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    iget-object v3, p0, Lcom/android/multiexposure/o;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 648
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->all()Lcom/android/common/appService/W;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/appService/W;->sf()[B

    move-result-object v4

    .line 649
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v5

    .line 648
    invoke-static {v4, v3}, Lcom/android/common/appService/j;->jC([BI)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 650
    iget-object v4, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v4}, Lcom/android/multiexposure/c;->aBY()I

    move-result v4

    .line 651
    if-ne v4, v1, :cond_86

    .line 658
    :goto_70
    invoke-static {v3, v0}, Lcom/android/common/appService/j;->jE(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 659
    iget-object v1, p0, Lcom/android/multiexposure/o;->arh:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    iget-object v1, p0, Lcom/android/multiexposure/o;->arh:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 661
    iget-object v0, p0, Lcom/android/multiexposure/o;->arh:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 623
    return-void

    .line 653
    :cond_86
    if-ne v4, v0, :cond_8a

    move v0, v1

    .line 654
    goto :goto_70

    :cond_8a
    move v0, v2

    .line 656
    goto :goto_70
.end method

.method static synthetic aDk(Lcom/android/multiexposure/o;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/multiexposure/o;->aqF:Z

    return v0
.end method

.method static synthetic aDl(Lcom/android/multiexposure/o;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/multiexposure/o;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic aDm(Lcom/android/multiexposure/o;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/multiexposure/o;->aqK:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic aDn(Lcom/android/multiexposure/o;)Lcom/android/multiexposure/p;
    .registers 2

    iget-object v0, p0, Lcom/android/multiexposure/o;->aqM:Lcom/android/multiexposure/p;

    return-object v0
.end method

.method static synthetic aDo(Lcom/android/multiexposure/o;)Lcom/android/common/ui/RotateImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/multiexposure/o;->aqQ:Lcom/android/common/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic aDp(Lcom/android/multiexposure/o;)Lcom/android/common/ui/RotateImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/multiexposure/o;->aqR:Lcom/android/common/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic aDq(Lcom/android/multiexposure/o;)Lcom/android/common/ui/ZtemtSlidingDrawer;
    .registers 2

    iget-object v0, p0, Lcom/android/multiexposure/o;->arj:Lcom/android/common/ui/ZtemtSlidingDrawer;

    return-object v0
.end method

.method static synthetic aDr(Lcom/android/multiexposure/o;)I
    .registers 2

    iget v0, p0, Lcom/android/multiexposure/o;->aro:I

    return v0
.end method

.method static synthetic aDs(Lcom/android/multiexposure/o;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/multiexposure/o;->aqF:Z

    return p1
.end method

.method static synthetic aDt(Lcom/android/multiexposure/o;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/multiexposure/o;->arn:Z

    return p1
.end method

.method static synthetic aDu(Lcom/android/multiexposure/o;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCU()Z

    move-result v0

    return v0
.end method

.method static synthetic aDv(Lcom/android/multiexposure/o;)Lcom/android/common/appService/W;
    .registers 2

    invoke-virtual {p0}, Lcom/android/multiexposure/o;->all()Lcom/android/common/appService/W;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aDw(Lcom/android/multiexposure/o;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/multiexposure/o;->aCD(I)V

    return-void
.end method

.method static synthetic aDx(Lcom/android/multiexposure/o;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/multiexposure/o;->close()V

    return-void
.end method

.method static synthetic aDy(Lcom/android/multiexposure/o;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/multiexposure/o;->alr()V

    return-void
.end method

.method static synthetic aDz(Lcom/android/multiexposure/o;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/multiexposure/o;->alq()V

    return-void
.end method

.method private close()V
    .registers 2

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCH()V

    .line 941
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqW:Lcom/android/common/ui/J;

    invoke-virtual {v0}, Lcom/android/common/ui/J;->start()V

    .line 939
    return-void
.end method


# virtual methods
.method public aCC()V
    .registers 3

    .prologue
    .line 897
    iget-boolean v0, p0, Lcom/android/multiexposure/o;->adv:Z

    if-eqz v0, :cond_e

    .line 898
    const-string/jumbo v0, "MultiExposureFragment"

    const-string/jumbo v1, "ignore performShutterButtonClick because fragment is pause"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    return-void

    .line 901
    :cond_e
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqT:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/multiexposure/o;->aqT:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1f

    .line 902
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqT:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performClick()Z

    .line 896
    :cond_1f
    return-void
.end method

.method public aCE(Z)V
    .registers 6

    .prologue
    .line 803
    iput-boolean p1, p0, Lcom/android/multiexposure/o;->arn:Z

    .line 804
    if-eqz p1, :cond_29

    .line 805
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->alz()V

    .line 806
    iget-object v0, p0, Lcom/android/multiexposure/o;->adx:Lcom/android/common/camerastate/a;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/common/camerastate/b;

    .line 807
    sget-object v2, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 808
    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 809
    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 810
    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 811
    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 806
    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amM([Lcom/android/common/camerastate/b;)V

    .line 798
    :goto_28
    return-void

    .line 814
    :cond_29
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->aly()V

    .line 815
    iget-object v0, p0, Lcom/android/multiexposure/o;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amI()V

    goto :goto_28
.end method

.method public aCF()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/multiexposure/o;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method public aDb()V
    .registers 8

    .prologue
    const/16 v6, 0x58

    const/16 v5, 0xd

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 268
    const-string/jumbo v0, "MultiExposureFragment"

    const-string/jumbo v1, "showMultiExposureBottomBar"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/multiexposure/o;->arf:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqP:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1f

    .line 272
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqP:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    :cond_1f
    iget v0, p0, Lcom/android/multiexposure/o;->aro:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3c

    .line 278
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqQ:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqR:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 280
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 283
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 284
    iget-object v1, p0, Lcom/android/multiexposure/o;->aqT:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/ZtemtShutterButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    :goto_3b
    return-void

    .line 286
    :cond_3c
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCT()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 287
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 289
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 290
    invoke-static {v6}, Lcom/android/common/h;->aoT(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 297
    :goto_50
    iget-object v1, p0, Lcom/android/multiexposure/o;->aqQ:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lcom/android/multiexposure/o;->aqQ:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    .line 299
    iget-object v1, p0, Lcom/android/multiexposure/o;->aqR:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/android/multiexposure/o;->aqR:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    .line 301
    iget-object v1, p0, Lcom/android/multiexposure/o;->aqT:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/ZtemtShutterButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3b

    .line 292
    :cond_6a
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 294
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 295
    invoke-static {v6}, Lcom/android/common/h;->aoT(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_50
.end method

.method public aDj(Z)V
    .registers 4

    .prologue
    .line 858
    if-eqz p1, :cond_10

    .line 859
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqU:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 860
    iget-object v0, p0, Lcom/android/multiexposure/o;->arl:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 857
    :goto_f
    return-void

    .line 862
    :cond_10
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqU:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ey(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    goto :goto_f
.end method

.method protected aji(IIII)V
    .registers 7

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/multiexposure/o;->ard:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v1, p3, p1

    if-ne v0, v1, :cond_14

    .line 923
    iget-object v0, p0, Lcom/android/multiexposure/o;->ard:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_37

    .line 924
    :cond_14
    const-string/jumbo v0, "MultiExposureFragment"

    const-string/jumbo v1, "relayout mPreviewRelativeContent"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/android/multiexposure/o;->ard:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 926
    sub-int v1, p3, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 927
    sub-int v1, p4, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 928
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 929
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 930
    iget-object v0, p0, Lcom/android/multiexposure/o;->ard:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 921
    :cond_37
    return-void
.end method

.method protected ajt(IZ)V
    .registers 4

    .prologue
    .line 306
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->ajt(IZ)V

    .line 307
    iget-object v0, p0, Lcom/android/multiexposure/o;->arj:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Ax(IZ)V

    .line 305
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->all()Lcom/android/common/appService/W;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 789
    :cond_b
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCU()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 790
    const-string/jumbo v0, "MultiExposureFragment"

    const-string/jumbo v1, "dispatchTouchEvent return true 1"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const/4 v0, 0x1

    return v0

    .line 794
    :cond_1c
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public mY([B)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 827
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 828
    const-string/jumbo v0, "MultiExposureFragment"

    const-string/jumbo v1, "MultiExposureFragment is hidden just intercept the jpegData"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    return v2

    .line 834
    :cond_11
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCd()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 835
    const-string/jumbo v0, "MultiExposureFragment"

    const-string/jumbo v1, "previewData is null, intercept this jpegData"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 837
    return v2

    .line 839
    :cond_2a
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCR()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 840
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-static {p1}, Lcom/android/common/c;->aob([B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/c;->aCg(I)V

    .line 842
    :cond_39
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCS()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 843
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aDe()V

    .line 845
    :cond_42
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0, p1}, Lcom/android/multiexposure/c;->aBV([B)V

    .line 846
    return v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 893
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onActivityCreated(Landroid/os/Bundle;)V

    .line 892
    return-void
.end method

.method public onBackPressed()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 770
    const-string/jumbo v0, "MultiExposureFragment"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCb()I

    move-result v0

    if-eqz v0, :cond_43

    .line 772
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCU()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 773
    return v3

    .line 775
    :cond_1d
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCk()V

    .line 776
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aBX()V

    .line 777
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCn()V

    .line 778
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCe()V

    .line 779
    invoke-virtual {p0}, Lcom/android/multiexposure/o;->all()Lcom/android/common/appService/W;

    move-result-object v0

    iget v1, p0, Lcom/android/multiexposure/o;->aro:I

    iget-object v2, p0, Lcom/android/multiexposure/o;->aqS:Lcom/android/multiexposure/m;

    invoke-static {v0, v1, v2}, Lcom/android/multiexposure/n;->aCy(Lcom/android/common/appService/W;ILcom/android/multiexposure/m;)Lcom/android/multiexposure/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    .line 780
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCW()V

    .line 781
    return v3

    .line 783
    :cond_43
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 336
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onCreate(Landroid/os/Bundle;)V

    .line 337
    iget-boolean v0, p0, Lcom/android/multiexposure/o;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 335
    :cond_8
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 132
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 133
    iget-boolean v0, p0, Lcom/android/multiexposure/o;->adu:Z

    if-eqz v0, :cond_9

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_9
    const v0, 0x7f040005

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 137
    invoke-direct {p0, v0}, Lcom/android/multiexposure/o;->aCQ(Landroid/view/View;)V

    .line 138
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/multiexposure/o;->adu:Z

    if-eqz v0, :cond_8

    .line 342
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroy()V

    .line 343
    return-void

    .line 345
    :cond_8
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroy()V

    .line 340
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 349
    iget-boolean v0, p0, Lcom/android/multiexposure/o;->adu:Z

    if-eqz v0, :cond_9

    .line 350
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 351
    return-void

    .line 354
    :cond_9
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    if-eqz v0, :cond_23

    .line 355
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aBX()V

    .line 356
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCn()V

    .line 357
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCe()V

    .line 358
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->release()V

    .line 359
    iput-object v1, p0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    .line 361
    :cond_23
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCW()V

    .line 362
    iget-object v0, p0, Lcom/android/multiexposure/o;->aqM:Lcom/android/multiexposure/p;

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/p;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 364
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 348
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 369
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 370
    iget-boolean v0, p0, Lcom/android/multiexposure/o;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 371
    :cond_8
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCG()V

    .line 372
    new-instance v0, Lcom/android/multiexposure/q;

    invoke-direct {v0, p0}, Lcom/android/multiexposure/q;-><init>(Lcom/android/multiexposure/o;)V

    iput-object v0, p0, Lcom/android/multiexposure/o;->aqV:Lcom/android/multiexposure/q;

    .line 374
    iget-object v0, p0, Lcom/android/multiexposure/o;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    .line 375
    if-nez v0, :cond_1b

    .line 376
    return-void

    .line 378
    :cond_1b
    invoke-direct {p0}, Lcom/android/multiexposure/o;->aCW()V

    .line 379
    iget-object v0, p0, Lcom/android/multiexposure/o;->arj:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->notifyDataSetChanged()V

    .line 368
    return-void
.end method

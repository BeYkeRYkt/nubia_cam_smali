.class public Lcom/android/pretty/j;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/pretty/c;


# instance fields
.field final TAG:Ljava/lang/String;

.field private aDA:Landroid/widget/ImageView;

.field private aDB:Lcom/android/pretty/t;

.field private aDC:Landroid/widget/ProgressBar;

.field private aDq:Landroid/widget/ImageView;

.field private aDr:Landroid/widget/TextView;

.field private aDs:Landroid/widget/TextView;

.field private aDt:Lcom/android/pretty/a;

.field private aDu:Lcom/android/common/appService/t;

.field private aDv:Lcom/android/common/appService/n;

.field private aDw:Lcom/android/common/g/c;

.field private aDx:Lcom/android/common/setting/ListPreference;

.field private aDy:Lcom/android/common/e;

.field private aDz:Lcom/android/pretty/GalleryFlow;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 68
    const-string/jumbo v0, "PrettyFragment"

    iput-object v0, p0, Lcom/android/pretty/j;->TAG:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/android/pretty/j;->aDz:Lcom/android/pretty/GalleryFlow;

    .line 71
    iput-object v1, p0, Lcom/android/pretty/j;->aDA:Landroid/widget/ImageView;

    .line 72
    iput-object v1, p0, Lcom/android/pretty/j;->aDq:Landroid/widget/ImageView;

    .line 73
    iput-object v1, p0, Lcom/android/pretty/j;->aDC:Landroid/widget/ProgressBar;

    .line 74
    iput-object v1, p0, Lcom/android/pretty/j;->aDs:Landroid/widget/TextView;

    .line 75
    iput-object v1, p0, Lcom/android/pretty/j;->aDr:Landroid/widget/TextView;

    .line 76
    iput-object v1, p0, Lcom/android/pretty/j;->aDt:Lcom/android/pretty/a;

    .line 77
    iput-object v1, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    .line 78
    iput-object v1, p0, Lcom/android/pretty/j;->aDw:Lcom/android/common/g/c;

    .line 82
    iput-object v1, p0, Lcom/android/pretty/j;->aDy:Lcom/android/common/e;

    .line 122
    iput-object v1, p0, Lcom/android/pretty/j;->aDB:Lcom/android/pretty/t;

    .line 468
    new-instance v0, Lcom/android/common/appService/n;

    invoke-direct {v0}, Lcom/android/common/appService/n;-><init>()V

    iput-object v0, p0, Lcom/android/pretty/j;->aDv:Lcom/android/common/appService/n;

    .line 84
    return-void
.end method

.method public constructor <init>(ILcom/android/pretty/a;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 68
    const-string/jumbo v0, "PrettyFragment"

    iput-object v0, p0, Lcom/android/pretty/j;->TAG:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/android/pretty/j;->aDz:Lcom/android/pretty/GalleryFlow;

    .line 71
    iput-object v1, p0, Lcom/android/pretty/j;->aDA:Landroid/widget/ImageView;

    .line 72
    iput-object v1, p0, Lcom/android/pretty/j;->aDq:Landroid/widget/ImageView;

    .line 73
    iput-object v1, p0, Lcom/android/pretty/j;->aDC:Landroid/widget/ProgressBar;

    .line 74
    iput-object v1, p0, Lcom/android/pretty/j;->aDs:Landroid/widget/TextView;

    .line 75
    iput-object v1, p0, Lcom/android/pretty/j;->aDr:Landroid/widget/TextView;

    .line 76
    iput-object v1, p0, Lcom/android/pretty/j;->aDt:Lcom/android/pretty/a;

    .line 77
    iput-object v1, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    .line 78
    iput-object v1, p0, Lcom/android/pretty/j;->aDw:Lcom/android/common/g/c;

    .line 82
    iput-object v1, p0, Lcom/android/pretty/j;->aDy:Lcom/android/common/e;

    .line 122
    iput-object v1, p0, Lcom/android/pretty/j;->aDB:Lcom/android/pretty/t;

    .line 468
    new-instance v0, Lcom/android/common/appService/n;

    invoke-direct {v0}, Lcom/android/common/appService/n;-><init>()V

    iput-object v0, p0, Lcom/android/pretty/j;->aDv:Lcom/android/common/appService/n;

    .line 90
    iput-object p2, p0, Lcom/android/pretty/j;->aDt:Lcom/android/pretty/a;

    .line 88
    return-void
.end method

.method public static aSC(Lcom/android/pretty/a;)Lcom/android/pretty/j;
    .registers 3

    .prologue
    .line 94
    new-instance v0, Lcom/android/pretty/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/pretty/j;-><init>(ILcom/android/pretty/a;)V

    return-object v0
.end method

.method private aSG()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 519
    iget-object v1, p0, Lcom/android/pretty/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v2

    if-eq v1, v2, :cond_24

    .line 520
    iget-object v1, p0, Lcom/android/pretty/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    iget-object v2, p0, Lcom/android/pretty/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/h;->apH(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v0, 0x0

    .line 519
    :cond_24
    return v0
.end method

.method private aSH(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 262
    const v0, 0x7f10003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/pretty/GalleryFlow;

    iput-object v0, p0, Lcom/android/pretty/j;->aDz:Lcom/android/pretty/GalleryFlow;

    .line 263
    const v0, 0x7f100039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/pretty/j;->aDA:Landroid/widget/ImageView;

    .line 264
    const v0, 0x7f100038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/pretty/j;->aDq:Landroid/widget/ImageView;

    .line 265
    const v0, 0x7f1001ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/pretty/j;->aDC:Landroid/widget/ProgressBar;

    .line 266
    const v0, 0x7f10003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/pretty/j;->aDs:Landroid/widget/TextView;

    .line 267
    iget-object v0, p0, Lcom/android/pretty/j;->aDs:Landroid/widget/TextView;

    new-instance v1, Lcom/android/pretty/B;

    invoke-direct {v1, p0}, Lcom/android/pretty/B;-><init>(Lcom/android/pretty/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    const v0, 0x7f10003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/pretty/j;->aDr:Landroid/widget/TextView;

    .line 274
    iget-object v0, p0, Lcom/android/pretty/j;->aDr:Landroid/widget/TextView;

    new-instance v1, Lcom/android/pretty/C;

    invoke-direct {v1, p0}, Lcom/android/pretty/C;-><init>(Lcom/android/pretty/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/android/pretty/j;->aDz:Lcom/android/pretty/GalleryFlow;

    new-instance v1, Lcom/android/pretty/D;

    invoke-direct {v1, p0}, Lcom/android/pretty/D;-><init>(Lcom/android/pretty/j;)V

    invoke-virtual {v0, v1}, Lcom/android/pretty/GalleryFlow;->aSt(Lcom/android/pretty/g;)V

    .line 261
    return-void
.end method

.method private aSI(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 116
    return-void
.end method

.method private aSJ(Landroid/view/View;)V
    .registers 8

    .prologue
    const v5, 0x7f1000df

    const v4, 0x7f1000de

    const/16 v1, 0x8

    .line 143
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adO()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 144
    invoke-direct {p0}, Lcom/android/pretty/j;->aSG()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 150
    new-instance v0, Lcom/android/common/appService/t;

    iget-object v1, p0, Lcom/android/pretty/j;->adt:Lcom/android/common/appService/W;

    .line 151
    invoke-virtual {p0}, Lcom/android/pretty/j;->alA()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v2

    .line 152
    const-string/jumbo v3, "pref_camera_pretty_effect_key"

    .line 151
    invoke-virtual {v2, v3}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v2

    move-object v3, p1

    .line 150
    invoke-direct/range {v0 .. v5}, Lcom/android/common/appService/t;-><init>(Lcom/android/common/appService/W;Lcom/android/common/setting/ListPreference;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    .line 154
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    new-instance v1, Lcom/android/pretty/z;

    invoke-direct {v1, p0}, Lcom/android/pretty/z;-><init>(Lcom/android/pretty/j;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->kQ(Lcom/android/common/appService/u;)V

    .line 183
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    new-instance v1, Lcom/android/pretty/A;

    invoke-direct {v1, p0}, Lcom/android/pretty/A;-><init>(Lcom/android/pretty/j;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->lm(Lcom/android/common/appService/v;)V

    .line 212
    iget-object v0, p0, Lcom/android/pretty/j;->aDv:Lcom/android/common/appService/n;

    iget-object v1, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/n;->kb(Lcom/android/common/appService/t;)V

    .line 142
    return-void

    .line 145
    :cond_4d
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 146
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    return-void
.end method

.method private aSK(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/pretty/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    iget-object v1, p0, Lcom/android/pretty/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/h;->apH(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 125
    new-instance v0, Lcom/android/pretty/u;

    iget-object v1, p0, Lcom/android/pretty/j;->adt:Lcom/android/common/appService/W;

    invoke-direct {v0, v1}, Lcom/android/pretty/u;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/pretty/j;->aDB:Lcom/android/pretty/t;

    .line 130
    :goto_1b
    iget-object v0, p0, Lcom/android/pretty/j;->aDB:Lcom/android/pretty/t;

    .line 131
    new-instance v1, Lcom/android/pretty/y;

    invoke-direct {v1, p0}, Lcom/android/pretty/y;-><init>(Lcom/android/pretty/j;)V

    .line 130
    invoke-interface {v0, v1}, Lcom/android/pretty/t;->aTu(Lcom/android/pretty/k;)V

    .line 139
    iget-object v0, p0, Lcom/android/pretty/j;->aDB:Lcom/android/pretty/t;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-interface {v0, p1}, Lcom/android/pretty/t;->aTr(Landroid/view/ViewGroup;)V

    .line 123
    return-void

    .line 127
    :cond_2d
    new-instance v0, Lcom/android/pretty/p;

    iget-object v1, p0, Lcom/android/pretty/j;->adt:Lcom/android/common/appService/W;

    invoke-direct {v0, v1}, Lcom/android/pretty/p;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/pretty/j;->aDB:Lcom/android/pretty/t;

    goto :goto_1b
.end method

.method private aSL(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/pretty/j;->aSK(Landroid/view/View;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/android/pretty/j;->aSH(Landroid/view/View;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/android/pretty/j;->aSJ(Landroid/view/View;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/android/pretty/j;->aSI(Landroid/view/View;)V

    .line 109
    return-void
.end method

.method static synthetic aSM(Lcom/android/pretty/j;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/j;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic aSN(Lcom/android/pretty/j;)Lcom/android/pretty/a;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/j;->aDt:Lcom/android/pretty/a;

    return-object v0
.end method

.method static synthetic aSO(Lcom/android/pretty/j;)Lcom/android/common/g/c;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/j;->aDw:Lcom/android/common/g/c;

    return-object v0
.end method

.method static synthetic aSP(Lcom/android/pretty/j;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/pretty/j;->adv:Z

    return v0
.end method

.method static synthetic aSQ(Lcom/android/pretty/j;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/j;->aDA:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic aSR(Lcom/android/pretty/j;)Lcom/android/pretty/t;
    .registers 2

    iget-object v0, p0, Lcom/android/pretty/j;->aDB:Lcom/android/pretty/t;

    return-object v0
.end method

.method static synthetic aSS(Lcom/android/pretty/j;ZJJ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/pretty/j;->alB(ZJJ)V

    return-void
.end method

.method static synthetic aST(Lcom/android/pretty/j;ZJJ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/pretty/j;->alC(ZJJ)V

    return-void
.end method


# virtual methods
.method public aRJ(Ljava/util/List;I)V
    .registers 7

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/android/pretty/j;->alr()V

    .line 304
    iget-object v0, p0, Lcom/android/pretty/j;->aDz:Lcom/android/pretty/GalleryFlow;

    invoke-virtual {v0, p1, p1, p2}, Lcom/android/pretty/GalleryFlow;->aSs(Ljava/util/List;Ljava/util/List;I)V

    .line 305
    iget-object v0, p0, Lcom/android/pretty/j;->aDz:Lcom/android/pretty/GalleryFlow;

    invoke-virtual {v0, v2}, Lcom/android/pretty/GalleryFlow;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/android/pretty/j;->aDA:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/pretty/j;->aDt:Lcom/android/pretty/a;

    invoke-virtual {v1, p2}, Lcom/android/pretty/a;->aQU(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 307
    iget-object v0, p0, Lcom/android/pretty/j;->aDA:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/android/pretty/j;->aDC:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/android/pretty/j;->aDq:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/android/pretty/j;->aDs:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/android/pretty/j;->aDr:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/android/pretty/j;->aDB:Lcom/android/pretty/t;

    invoke-interface {v0, v3}, Lcom/android/pretty/t;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    if-eqz v0, :cond_42

    .line 314
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/t;->ln(I)V

    .line 302
    :cond_42
    return-void
.end method

.method public aRK()V
    .registers 1

    .prologue
    .line 319
    return-void
.end method

.method public aRL()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 347
    invoke-virtual {p0}, Lcom/android/pretty/j;->alq()V

    .line 348
    iget-object v0, p0, Lcom/android/pretty/j;->aDA:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/android/pretty/j;->aDz:Lcom/android/pretty/GalleryFlow;

    invoke-virtual {v0, v1}, Lcom/android/pretty/GalleryFlow;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/android/pretty/j;->aDq:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/android/pretty/j;->aDs:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/android/pretty/j;->aDr:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/android/pretty/j;->aDC:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/android/pretty/j;->aDB:Lcom/android/pretty/t;

    invoke-interface {v0, v2}, Lcom/android/pretty/t;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    if-eqz v0, :cond_32

    .line 356
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/t;->ln(I)V

    .line 346
    :cond_32
    return-void
.end method

.method public aRM()V
    .registers 8

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 292
    iget-object v0, p0, Lcom/android/pretty/j;->aDC:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/android/pretty/j;->ady:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/e/h;

    .line 295
    instance-of v4, v0, Lcom/android/common/o/a;

    if-eqz v4, :cond_e

    move-wide v4, v2

    .line 296
    invoke-interface/range {v0 .. v5}, Lcom/android/common/e/h;->ZQ(ZJJ)V

    goto :goto_e

    .line 291
    :cond_23
    return-void
.end method

.method public aRN()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 325
    invoke-virtual {p0}, Lcom/android/pretty/j;->alq()V

    .line 326
    iget-object v0, p0, Lcom/android/pretty/j;->aDA:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/android/pretty/j;->aDz:Lcom/android/pretty/GalleryFlow;

    invoke-virtual {v0, v1}, Lcom/android/pretty/GalleryFlow;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/android/pretty/j;->aDq:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/android/pretty/j;->aDs:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/android/pretty/j;->aDr:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/android/pretty/j;->aDB:Lcom/android/pretty/t;

    invoke-interface {v0, v2}, Lcom/android/pretty/t;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/android/pretty/j;->aDC:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    if-eqz v0, :cond_32

    .line 334
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/t;->ln(I)V

    .line 336
    :cond_32
    const-string/jumbo v0, "PrettyFragment"

    const-string/jumbo v1, "onSaveBestPhotoDone"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public aRO()V
    .registers 3

    .prologue
    .line 341
    const-string/jumbo v0, "PrettyFragment"

    const-string/jumbo v1, "onSaveBestPhotoStart"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/android/pretty/j;->aDC:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 340
    return-void
.end method

.method public aSD()V
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/pretty/j;->aDs:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/pretty/j;->aDs:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 421
    iget-object v0, p0, Lcom/android/pretty/j;->aDs:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 419
    :cond_11
    return-void
.end method

.method public aSE()V
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/pretty/j;->aDB:Lcom/android/pretty/t;

    invoke-interface {v0}, Lcom/android/pretty/t;->aTt()V

    .line 508
    return-void
.end method

.method protected aSF(Z)V
    .registers 3

    .prologue
    .line 513
    if-nez p1, :cond_7

    .line 514
    iget-object v0, p0, Lcom/android/pretty/j;->aDB:Lcom/android/pretty/t;

    invoke-interface {v0}, Lcom/android/pretty/t;->aTt()V

    .line 512
    :cond_7
    return-void
.end method

.method public aij(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V
    .registers 6

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/pretty/j;->aDv:Lcom/android/common/appService/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/common/appService/n;->kd(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V

    .line 472
    iget-object v0, p0, Lcom/android/pretty/j;->aDv:Lcom/android/common/appService/n;

    iget-object v1, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/n;->kb(Lcom/android/common/appService/t;)V

    .line 470
    return-void
.end method

.method public aik()V
    .registers 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    if-eqz v0, :cond_a

    .line 478
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->ll(Z)V

    .line 476
    :cond_a
    return-void
.end method

.method protected aji(IIII)V
    .registers 8

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    if-eqz v0, :cond_d

    .line 428
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    invoke-virtual {p0}, Lcom/android/pretty/j;->alD()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->kR(F)V

    .line 430
    :cond_d
    iget-object v0, p0, Lcom/android/pretty/j;->aDw:Lcom/android/common/g/c;

    if-eqz v0, :cond_24

    .line 431
    iget-object v0, p0, Lcom/android/pretty/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/android/pretty/j;->aDw:Lcom/android/common/g/c;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v0}, Lcom/android/common/g/c;->aaL(II)V

    .line 426
    :cond_24
    return-void
.end method

.method protected ajt(IZ)V
    .registers 4

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    if-eqz v0, :cond_9

    .line 415
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/appService/t;->lo(IZ)V

    .line 413
    :cond_9
    return-void
.end method

.method public akI(ZZ)V
    .registers 5

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    if-nez v0, :cond_5

    .line 486
    return-void

    .line 488
    :cond_5
    if-nez p1, :cond_17

    invoke-virtual {p0}, Lcom/android/pretty/j;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_17

    .line 489
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->ln(I)V

    .line 484
    :goto_16
    return-void

    .line 491
    :cond_17
    iget-object v1, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    if-eqz p1, :cond_20

    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {v1, v0}, Lcom/android/common/appService/t;->ll(Z)V

    goto :goto_16

    :cond_20
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method public akU(Z)V
    .registers 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    if-eqz v0, :cond_9

    .line 504
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/t;->ll(Z)V

    .line 502
    :cond_9
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 387
    iget-boolean v0, p0, Lcom/android/pretty/j;->adv:Z

    if-eqz v0, :cond_a

    .line 388
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 391
    :cond_a
    iget-object v0, p0, Lcom/android/pretty/j;->aDt:Lcom/android/pretty/a;

    invoke-virtual {v0}, Lcom/android/pretty/a;->aRd()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 392
    iget-object v0, p0, Lcom/android/pretty/j;->aDt:Lcom/android/pretty/a;

    invoke-virtual {v0}, Lcom/android/pretty/a;->aRa()Z

    move-result v0

    .line 391
    if-eqz v0, :cond_24

    .line 393
    :cond_1a
    const-string/jumbo v0, "PrettyFragment"

    const-string/jumbo v1, "in isBestPhotoSaving, prettyFrament consume the dispatchTouchEvent"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return v2

    .line 397
    :cond_24
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->kN()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 398
    const-string/jumbo v0, "PrettyFragment"

    const-string/jumbo v1, "Grid effect anim is Running, just consume the dipatch event"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return v2

    .line 402
    :cond_3a
    invoke-virtual {p0}, Lcom/android/pretty/j;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 403
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 405
    :cond_45
    iget-object v0, p0, Lcom/android/pretty/j;->aDB:Lcom/android/pretty/t;

    if-eqz v0, :cond_52

    .line 406
    iget-object v0, p0, Lcom/android/pretty/j;->aDB:Lcom/android/pretty/t;

    invoke-interface {v0, p1}, Lcom/android/pretty/t;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 405
    if-eqz v0, :cond_52

    .line 407
    return v2

    .line 409
    :cond_52
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 362
    iget-object v0, p0, Lcom/android/pretty/j;->aDt:Lcom/android/pretty/a;

    invoke-virtual {v0}, Lcom/android/pretty/a;->aRc()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 363
    iget-object v0, p0, Lcom/android/pretty/j;->aDt:Lcom/android/pretty/a;

    invoke-virtual {v0}, Lcom/android/pretty/a;->aRa()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 364
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0

    .line 366
    :cond_16
    iget-object v0, p0, Lcom/android/pretty/j;->aDt:Lcom/android/pretty/a;

    invoke-virtual {v0, v1}, Lcom/android/pretty/a;->aQP(Z)V

    .line 367
    return v1

    .line 369
    :cond_1c
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    if-eqz v0, :cond_27

    .line 370
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->onBackPressed()Z

    move-result v0

    return v0

    .line 373
    :cond_27
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 101
    iget-boolean v1, p0, Lcom/android/pretty/j;->adu:Z

    if-eqz v1, :cond_9

    return-object v0

    .line 103
    :cond_9
    const v0, 0x7f040057

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 104
    invoke-direct {p0, v0}, Lcom/android/pretty/j;->aSL(Landroid/view/View;)V

    .line 106
    return-object v0
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 246
    iget-boolean v0, p0, Lcom/android/pretty/j;->adu:Z

    if-eqz v0, :cond_9

    return-void

    .line 247
    :cond_9
    iget-object v0, p0, Lcom/android/pretty/j;->aDt:Lcom/android/pretty/a;

    invoke-virtual {v0}, Lcom/android/pretty/a;->aRc()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 248
    iget-object v0, p0, Lcom/android/pretty/j;->aDt:Lcom/android/pretty/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/pretty/a;->aQP(Z)V

    .line 249
    :cond_17
    iget-object v0, p0, Lcom/android/pretty/j;->aDt:Lcom/android/pretty/a;

    invoke-virtual {v0, v2}, Lcom/android/pretty/a;->aRt(Lcom/android/pretty/c;)V

    .line 251
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    if-eqz v0, :cond_25

    .line 252
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->kP()V

    .line 254
    :cond_25
    iget-object v0, p0, Lcom/android/pretty/j;->aDt:Lcom/android/pretty/a;

    invoke-virtual {v0}, Lcom/android/pretty/a;->release()V

    .line 255
    iget-object v0, p0, Lcom/android/pretty/j;->aDw:Lcom/android/common/g/c;

    if-eqz v0, :cond_35

    .line 256
    iget-object v0, p0, Lcom/android/pretty/j;->aDw:Lcom/android/common/g/c;

    invoke-virtual {v0}, Lcom/android/common/g/c;->release()V

    .line 257
    iput-object v2, p0, Lcom/android/pretty/j;->aDw:Lcom/android/common/g/c;

    .line 244
    :cond_35
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 217
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 218
    iget-boolean v0, p0, Lcom/android/pretty/j;->adu:Z

    if-eqz v0, :cond_9

    return-void

    .line 220
    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/pretty/j;->akU(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/pretty/j;->aDt:Lcom/android/pretty/a;

    invoke-virtual {v0}, Lcom/android/pretty/a;->aQW()V

    .line 223
    iget-object v0, p0, Lcom/android/pretty/j;->aDt:Lcom/android/pretty/a;

    invoke-virtual {v0, p0}, Lcom/android/pretty/a;->aRt(Lcom/android/pretty/c;)V

    .line 225
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    if-eqz v0, :cond_20

    .line 226
    iget-object v0, p0, Lcom/android/pretty/j;->aDu:Lcom/android/common/appService/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->kM(Z)V

    .line 229
    :cond_20
    invoke-virtual {p0}, Lcom/android/pretty/j;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-eq v0, v1, :cond_2b

    .line 230
    invoke-virtual {p0}, Lcom/android/pretty/j;->alq()V

    .line 232
    :cond_2b
    const-string/jumbo v0, "pref_camera_front_flashmode_key"

    invoke-virtual {p0, v0}, Lcom/android/pretty/j;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/pretty/j;->aDx:Lcom/android/common/setting/ListPreference;

    .line 234
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acY()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 235
    iget-object v0, p0, Lcom/android/pretty/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 236
    new-instance v1, Lcom/android/common/g/c;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/android/common/g/c;-><init>(IIZZ)V

    iput-object v1, p0, Lcom/android/pretty/j;->aDw:Lcom/android/common/g/c;

    .line 237
    iget-object v0, p0, Lcom/android/pretty/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/pretty/j;->aDw:Lcom/android/common/g/c;

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->al(Lcom/android/common/a/b;)V

    .line 240
    :cond_62
    iget-object v0, p0, Lcom/android/pretty/j;->aDB:Lcom/android/pretty/t;

    invoke-interface {v0}, Lcom/android/pretty/t;->aTt()V

    .line 216
    return-void
.end method

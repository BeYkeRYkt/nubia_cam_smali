.class public Lcom/android/dng/j;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/p;
.implements Lcom/android/common/u;


# instance fields
.field private final aAA:I

.field private aAB:Z

.field private aAC:Landroid/widget/RelativeLayout;

.field private aAD:Lcom/android/common/ui/RotateImageView;

.field private aAE:Lcom/android/dng/c;

.field private aAF:Landroid/widget/ImageView;

.field private aAG:Lcom/android/common/n;

.field private aAH:Lcom/android/common/t;

.field private aAI:Z

.field private aAJ:Landroid/app/AlertDialog;

.field private aAK:Z

.field private aAL:I

.field private aAM:I

.field private aAN:Lcom/android/dng/l;

.field private aAO:I

.field private aAP:Lcom/android/common/ui/MultiFunctionImageView;

.field private aAQ:Landroid/widget/RelativeLayout;

.field private aAR:Lcom/android/common/appService/z;

.field private aAS:Lcom/android/dng/k;

.field aAy:I

.field private final aAz:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 111
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 78
    iput-object v0, p0, Lcom/android/dng/j;->aAQ:Landroid/widget/RelativeLayout;

    .line 83
    iput v4, p0, Lcom/android/dng/j;->aAO:I

    .line 84
    iput-boolean v4, p0, Lcom/android/dng/j;->aAB:Z

    .line 85
    iput-object v0, p0, Lcom/android/dng/j;->aAG:Lcom/android/common/n;

    .line 89
    iput-object v0, p0, Lcom/android/dng/j;->aAH:Lcom/android/common/t;

    .line 94
    iput v4, p0, Lcom/android/dng/j;->aAy:I

    .line 99
    const/16 v0, 0xc6

    const/16 v1, 0xcb

    const/16 v2, 0xd1

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/dng/j;->aAz:I

    .line 100
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/dng/j;->aAA:I

    .line 101
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/dng/j;->aAL:I

    .line 102
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/dng/j;->aAM:I

    .line 104
    iput-boolean v4, p0, Lcom/android/dng/j;->aAK:Z

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dng/j;->aAI:Z

    .line 414
    new-instance v0, Lcom/android/dng/k;

    invoke-direct {v0, p0}, Lcom/android/dng/k;-><init>(Lcom/android/dng/j;)V

    iput-object v0, p0, Lcom/android/dng/j;->aAS:Lcom/android/dng/k;

    .line 110
    return-void
.end method

.method public constructor <init>(I)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 108
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 78
    iput-object v0, p0, Lcom/android/dng/j;->aAQ:Landroid/widget/RelativeLayout;

    .line 83
    iput v4, p0, Lcom/android/dng/j;->aAO:I

    .line 84
    iput-boolean v4, p0, Lcom/android/dng/j;->aAB:Z

    .line 85
    iput-object v0, p0, Lcom/android/dng/j;->aAG:Lcom/android/common/n;

    .line 89
    iput-object v0, p0, Lcom/android/dng/j;->aAH:Lcom/android/common/t;

    .line 94
    iput v4, p0, Lcom/android/dng/j;->aAy:I

    .line 99
    const/16 v0, 0xc6

    const/16 v1, 0xcb

    const/16 v2, 0xd1

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/dng/j;->aAz:I

    .line 100
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/dng/j;->aAA:I

    .line 101
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/dng/j;->aAL:I

    .line 102
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/dng/j;->aAM:I

    .line 104
    iput-boolean v4, p0, Lcom/android/dng/j;->aAK:Z

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dng/j;->aAI:Z

    .line 414
    new-instance v0, Lcom/android/dng/k;

    invoke-direct {v0, p0}, Lcom/android/dng/k;-><init>(Lcom/android/dng/j;)V

    iput-object v0, p0, Lcom/android/dng/j;->aAS:Lcom/android/dng/k;

    .line 107
    return-void
.end method

.method public static aPA()Lcom/android/dng/j;
    .registers 2

    .prologue
    .line 329
    new-instance v0, Lcom/android/dng/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/dng/j;-><init>(I)V

    .line 330
    return-object v0
.end method

.method private aPE()V
    .registers 3

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/dng/j;->aPP()V

    .line 387
    iget-object v0, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    new-instance v1, Lcom/android/dng/D;

    invoke-direct {v1, p0}, Lcom/android/dng/D;-><init>(Lcom/android/dng/j;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pP(Lcom/android/common/appService/L;)V

    .line 385
    return-void
.end method

.method private aPF()V
    .registers 1

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/dng/j;->aPE()V

    .line 324
    return-void
.end method

.method private aPG(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 311
    const v0, 0x7f10018c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/dng/j;->aAQ:Landroid/widget/RelativeLayout;

    .line 312
    iget-object v0, p0, Lcom/android/dng/j;->aAQ:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 313
    const v0, 0x7f100047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/dng/j;->aAC:Landroid/widget/RelativeLayout;

    .line 314
    const v0, 0x7f10018d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/dng/j;->aAD:Lcom/android/common/ui/RotateImageView;

    .line 315
    iget-object v0, p0, Lcom/android/dng/j;->aAC:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/dng/C;

    invoke-direct {v1, p0}, Lcom/android/dng/C;-><init>(Lcom/android/dng/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    return-void
.end method

.method private aPH(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 191
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adk()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 192
    new-instance v0, Lcom/android/common/t;

    invoke-virtual {p0}, Lcom/android/dng/j;->aln()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/common/t;-><init>(Landroid/view/View;Landroid/content/SharedPreferences;Lcom/android/common/u;)V

    iput-object v0, p0, Lcom/android/dng/j;->aAH:Lcom/android/common/t;

    .line 193
    return-void

    .line 196
    :cond_1a
    const v0, 0x7f1000ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 197
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 199
    new-instance v0, Lcom/android/dng/c;

    iget-object v1, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    new-instance v2, Lcom/android/dng/y;

    invoke-direct {v2, p0}, Lcom/android/dng/y;-><init>(Lcom/android/dng/j;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/dng/c;-><init>(Landroid/view/View;Lcom/android/common/appService/W;Lcom/android/dng/e;)V

    iput-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    .line 190
    return-void
.end method

.method private aPI(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/android/dng/j;->aPG(Landroid/view/View;)V

    .line 177
    const v0, 0x7f10018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MultiFunctionImageView;

    iput-object v0, p0, Lcom/android/dng/j;->aAP:Lcom/android/common/ui/MultiFunctionImageView;

    .line 179
    const v0, 0x7f1000ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dng/j;->aAF:Landroid/widget/ImageView;

    .line 181
    invoke-direct {p0, p1}, Lcom/android/dng/j;->aPH(Landroid/view/View;)V

    .line 175
    return-void
.end method

.method private aPJ()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 297
    invoke-virtual {p0}, Lcom/android/dng/j;->aln()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lcom/android/dng/j;->alA()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_iso_key"

    invoke-virtual {v1, v2}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v1

    .line 300
    const-string/jumbo v2, "auto"

    invoke-virtual {v1, v2}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v1, "maf_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 303
    if-eq v1, v3, :cond_2d

    .line 304
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "maf_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 307
    :cond_2d
    iget-object v0, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nI()V

    .line 296
    return-void
.end method

.method private aPL()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 416
    iget-object v0, p0, Lcom/android/dng/j;->aAF:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/android/dng/j;->aAQ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/android/dng/j;->aAP:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/android/dng/j;->aAP:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/dng/j;->alr()V

    .line 422
    new-instance v0, Lcom/android/dng/l;

    invoke-direct {v0, p0, v2}, Lcom/android/dng/l;-><init>(Lcom/android/dng/j;Lcom/android/dng/l;)V

    iput-object v0, p0, Lcom/android/dng/j;->aAN:Lcom/android/dng/l;

    .line 423
    iget-object v0, p0, Lcom/android/dng/j;->aAN:Lcom/android/dng/l;

    invoke-virtual {v0}, Lcom/android/dng/l;->start()V

    .line 424
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    if-eqz v0, :cond_30

    .line 425
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    invoke-virtual {v0}, Lcom/android/dng/c;->aOX()V

    .line 415
    :cond_30
    return-void
.end method

.method private aPN()V
    .registers 4

    .prologue
    .line 229
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->ht()V

    .line 230
    iget-object v0, p0, Lcom/android/dng/j;->adx:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amK(Lcom/android/common/camerastate/FunctionState;)V

    .line 232
    iget-object v0, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qD()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/g;->Ki()[I

    move-result-object v1

    new-instance v2, Lcom/android/dng/z;

    invoke-direct {v2, p0}, Lcom/android/dng/z;-><init>(Lcom/android/dng/j;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/common/appService/W;->qF([ILcom/android/common/appService/K;)V

    .line 228
    return-void
.end method

.method private aPO()V
    .registers 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/dng/j;->aAG:Lcom/android/common/n;

    if-eqz v0, :cond_17

    .line 607
    iget-object v0, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_17

    .line 608
    iget-object v0, p0, Lcom/android/dng/j;->aAG:Lcom/android/common/n;

    invoke-virtual {v0}, Lcom/android/common/n;->stop()V

    .line 605
    :cond_17
    return-void
.end method

.method private aPP()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 343
    iget-object v0, p0, Lcom/android/dng/j;->aAN:Lcom/android/dng/l;

    if-nez v0, :cond_6

    return-void

    .line 345
    :cond_6
    iget-object v0, p0, Lcom/android/dng/j;->aAN:Lcom/android/dng/l;

    invoke-virtual {v0}, Lcom/android/dng/l;->aQf()V

    .line 347
    :try_start_b
    iget-object v0, p0, Lcom/android/dng/j;->aAN:Lcom/android/dng/l;

    invoke-virtual {v0}, Lcom/android/dng/l;->join()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_19

    .line 351
    :goto_10
    iget-object v0, p0, Lcom/android/dng/j;->aAS:Lcom/android/dng/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dng/k;->removeMessages(I)V

    .line 352
    iput-object v4, p0, Lcom/android/dng/j;->aAN:Lcom/android/dng/l;

    .line 342
    return-void

    .line 348
    :catch_19
    move-exception v0

    .line 349
    const-string/jumbo v1, "DngFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "InterruptedException when mProgressThread.join() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method static synthetic aPQ(Lcom/android/dng/j;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/dng/j;->aAB:Z

    return v0
.end method

.method static synthetic aPR(Lcom/android/dng/j;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic aPS(Lcom/android/dng/j;)Lcom/android/common/camerastate/a;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/j;->adx:Lcom/android/common/camerastate/a;

    return-object v0
.end method

.method static synthetic aPT(Lcom/android/dng/j;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/dng/j;->aAK:Z

    return v0
.end method

.method static synthetic aPU(Lcom/android/dng/j;)Lcom/android/common/ui/MultiFunctionImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/j;->aAP:Lcom/android/common/ui/MultiFunctionImageView;

    return-object v0
.end method

.method static synthetic aPV(Lcom/android/dng/j;)Lcom/android/common/appService/z;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/j;->aAR:Lcom/android/common/appService/z;

    return-object v0
.end method

.method static synthetic aPW(Lcom/android/dng/j;)Lcom/android/dng/k;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/j;->aAS:Lcom/android/dng/k;

    return-object v0
.end method

.method static synthetic aPX(Lcom/android/dng/j;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/dng/j;->aAJ:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic aPY(Lcom/android/dng/j;)Landroid/content/SharedPreferences;
    .registers 2

    invoke-virtual {p0}, Lcom/android/dng/j;->aln()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aPZ(Lcom/android/dng/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/dng/j;->aPF()V

    return-void
.end method

.method static synthetic aQa(Lcom/android/dng/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/dng/j;->aPJ()V

    return-void
.end method

.method static synthetic aQb(Lcom/android/dng/j;Lcom/android/common/camerastate/DeviceState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/dng/j;->als(Lcom/android/common/camerastate/DeviceState;)V

    return-void
.end method

.method static synthetic aQc(Lcom/android/dng/j;Lcom/android/common/camerastate/FunctionState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/dng/j;->alt(Lcom/android/common/camerastate/FunctionState;)V

    return-void
.end method

.method static synthetic aQd(Lcom/android/dng/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/dng/j;->aPN()V

    return-void
.end method

.method static synthetic aQe(Lcom/android/dng/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/dng/j;->aPO()V

    return-void
.end method


# virtual methods
.method public aPB(Lcom/android/common/n;)V
    .registers 2

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/dng/j;->aAG:Lcom/android/common/n;

    .line 381
    return-void
.end method

.method public aPC()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 536
    iget-object v1, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    .line 537
    sget-object v2, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    .line 536
    if-eq v1, v2, :cond_1d

    .line 538
    iget-object v1, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v1, v2, :cond_35

    .line 539
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->XK()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 540
    if-eqz v0, :cond_37

    .line 547
    :cond_2b
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    if-eqz v0, :cond_4b

    .line 548
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    invoke-virtual {v0}, Lcom/android/dng/c;->aOW()V

    .line 535
    :cond_34
    :goto_34
    return-void

    .line 538
    :cond_35
    const/4 v0, 0x0

    goto :goto_1d

    .line 541
    :cond_37
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    if-eqz v0, :cond_41

    .line 542
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    invoke-virtual {v0}, Lcom/android/dng/c;->aPe()V

    goto :goto_34

    .line 543
    :cond_41
    iget-object v0, p0, Lcom/android/dng/j;->aAG:Lcom/android/common/n;

    if-eqz v0, :cond_34

    .line 544
    iget-object v0, p0, Lcom/android/dng/j;->aAH:Lcom/android/common/t;

    invoke-virtual {v0}, Lcom/android/common/t;->show()V

    goto :goto_34

    .line 549
    :cond_4b
    iget-object v0, p0, Lcom/android/dng/j;->aAG:Lcom/android/common/n;

    if-eqz v0, :cond_34

    .line 550
    iget-object v0, p0, Lcom/android/dng/j;->aAH:Lcom/android/common/t;

    invoke-virtual {v0}, Lcom/android/common/t;->arx()V

    goto :goto_34
.end method

.method public aPD(Z)V
    .registers 4

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    if-eqz v0, :cond_11

    .line 614
    if-eqz p1, :cond_12

    .line 615
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    invoke-virtual {v0}, Lcom/android/dng/c;->aOX()V

    .line 616
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dng/c;->setEnabled(Z)V

    .line 612
    :cond_11
    :goto_11
    return-void

    .line 618
    :cond_12
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    invoke-virtual {v0}, Lcom/android/dng/c;->aPf()V

    .line 619
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dng/c;->setEnabled(Z)V

    goto :goto_11
.end method

.method public aPK(Z)V
    .registers 4

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/dng/j;->aAP:Lcom/android/common/ui/MultiFunctionImageView;

    if-nez v0, :cond_5

    return-void

    .line 446
    :cond_5
    if-eqz p1, :cond_1b

    .line 447
    iget-object v0, p0, Lcom/android/dng/j;->aAS:Lcom/android/dng/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dng/k;->removeMessages(I)V

    .line 448
    iget-object v0, p0, Lcom/android/dng/j;->aAP:Lcom/android/common/ui/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/android/dng/j;->aAP:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 444
    :goto_1a
    return-void

    .line 451
    :cond_1b
    iget-object v0, p0, Lcom/android/dng/j;->aAP:Lcom/android/common/ui/MultiFunctionImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    goto :goto_1a
.end method

.method aPM()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 430
    iget-boolean v0, p0, Lcom/android/dng/j;->aAK:Z

    if-nez v0, :cond_f

    .line 431
    invoke-virtual {p0}, Lcom/android/dng/j;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_10

    :cond_f
    return-void

    .line 432
    :cond_10
    invoke-direct {p0}, Lcom/android/dng/j;->aPP()V

    .line 433
    invoke-virtual {p0, v2}, Lcom/android/dng/j;->aPK(Z)V

    .line 434
    iget-object v0, p0, Lcom/android/dng/j;->aAF:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/android/dng/j;->aAQ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/android/dng/j;->aAP:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/android/dng/j;->aAP:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v2, v2}, Lcom/android/common/ui/MultiFunctionImageView;->Ex(IZ)V

    .line 438
    invoke-virtual {p0}, Lcom/android/dng/j;->alq()V

    .line 439
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/dng/j;->aAB:Z

    if-eqz v0, :cond_36

    .line 429
    :cond_35
    :goto_35
    return-void

    .line 440
    :cond_36
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    invoke-virtual {v0}, Lcom/android/dng/c;->aPf()V

    goto :goto_35
.end method

.method public aip()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 562
    iget-boolean v0, p0, Lcom/android/dng/j;->adv:Z

    if-eqz v0, :cond_6

    .line 563
    return-void

    .line 565
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dng/j;->aAB:Z

    .line 566
    iget-object v0, p0, Lcom/android/dng/j;->aAH:Lcom/android/common/t;

    if-eqz v0, :cond_12

    .line 567
    iget-object v0, p0, Lcom/android/dng/j;->aAH:Lcom/android/common/t;

    invoke-virtual {v0}, Lcom/android/common/t;->arx()V

    .line 569
    :cond_12
    iput v1, p0, Lcom/android/dng/j;->aAy:I

    .line 570
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    if-eqz v0, :cond_22

    .line 571
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    invoke-virtual {v0, v1}, Lcom/android/dng/c;->setEnabled(Z)V

    .line 572
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    invoke-virtual {v0}, Lcom/android/dng/c;->aOX()V

    .line 561
    :cond_22
    return-void
.end method

.method public aiq()V
    .registers 3

    .prologue
    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dng/j;->aAB:Z

    .line 579
    iget-object v0, p0, Lcom/android/dng/j;->aAH:Lcom/android/common/t;

    if-eqz v0, :cond_c

    .line 580
    iget-object v0, p0, Lcom/android/dng/j;->aAH:Lcom/android/common/t;

    invoke-virtual {v0}, Lcom/android/common/t;->show()V

    .line 582
    :cond_c
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    if-eqz v0, :cond_1b

    .line 583
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dng/c;->setEnabled(Z)V

    .line 584
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    invoke-virtual {v0}, Lcom/android/dng/c;->aPf()V

    .line 577
    :cond_1b
    return-void
.end method

.method protected ajt(IZ)V
    .registers 4

    .prologue
    .line 335
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->ajt(IZ)V

    .line 336
    iput p1, p0, Lcom/android/dng/j;->aAO:I

    .line 337
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    if-eqz v0, :cond_e

    .line 338
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/dng/c;->vn(IZ)V

    .line 334
    :cond_e
    return-void
.end method

.method protected alq()V
    .registers 8

    .prologue
    const-wide/16 v2, -0x1

    .line 591
    iget-object v0, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_32

    .line 592
    iget-object v0, p0, Lcom/android/dng/j;->ady:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_16
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/e/h;

    .line 593
    instance-of v1, v0, Lcom/android/common/o/e;

    if-nez v1, :cond_2a

    .line 594
    instance-of v1, v0, Lcom/android/common/o/a;

    .line 593
    if-eqz v1, :cond_16

    .line 595
    :cond_2a
    if-eqz v0, :cond_16

    .line 596
    const/4 v1, 0x0

    move-wide v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/common/e/h;->ZP(ZJJ)V

    goto :goto_16

    .line 601
    :cond_32
    invoke-super {p0}, Lcom/android/common/o/l;->alq()V

    .line 590
    :cond_35
    return-void
.end method

.method public arG()V
    .registers 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mI()V

    .line 556
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public mY([B)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 457
    invoke-virtual {p0}, Lcom/android/dng/j;->aPM()V

    .line 458
    iget-object v0, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_17

    .line 459
    iget-object v0, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->pM(Z)V

    .line 461
    :cond_17
    iget-boolean v0, p0, Lcom/android/dng/j;->aAB:Z

    if-eqz v0, :cond_21

    .line 462
    iget v0, p0, Lcom/android/dng/j;->aAy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dng/j;->aAy:I

    .line 464
    :cond_21
    return v2
.end method

.method public nD()Z
    .registers 4

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pM(Z)V

    .line 371
    const-string/jumbo v0, "-1"

    iget-object v1, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 372
    invoke-direct {p0}, Lcom/android/dng/j;->aPL()V

    .line 373
    iget-object v0, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_30

    .line 374
    iget-object v0, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 377
    :cond_30
    invoke-virtual {p0}, Lcom/android/dng/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "slowshutter_1"

    const-string/jumbo v2, "DngFragment"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 357
    iget-boolean v0, p0, Lcom/android/dng/j;->aAB:Z

    if-nez v0, :cond_1d

    .line 358
    iget-object v0, p0, Lcom/android/dng/j;->aAN:Lcom/android/dng/l;

    if-eqz v0, :cond_1d

    .line 359
    invoke-virtual {p0}, Lcom/android/dng/j;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_1d

    .line 360
    iget-object v0, p0, Lcom/android/dng/j;->aAR:Lcom/android/common/appService/z;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/z;->lL(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 361
    invoke-direct {p0}, Lcom/android/dng/j;->aPE()V

    .line 363
    :cond_1c
    return v2

    .line 365
    :cond_1d
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onCreate(Landroid/os/Bundle;)V

    .line 130
    iget-boolean v0, p0, Lcom/android/dng/j;->adu:Z

    if-eqz v0, :cond_8

    .line 131
    return-void

    .line 133
    :cond_8
    new-instance v0, Lcom/android/common/appService/z;

    invoke-virtual {p0}, Lcom/android/dng/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/appService/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dng/j;->aAR:Lcom/android/common/appService/z;

    .line 134
    invoke-virtual {p0}, Lcom/android/dng/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/dng/j;->aAL:I

    .line 135
    invoke-virtual {p0}, Lcom/android/dng/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/dng/j;->aAM:I

    .line 128
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 118
    iget-boolean v0, p0, Lcom/android/dng/j;->adu:Z

    if-eqz v0, :cond_9

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_9
    const v0, 0x7f040024

    .line 122
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Lcom/android/dng/j;->aPI(Landroid/view/View;)V

    .line 124
    return-object v0
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 157
    iget-boolean v0, p0, Lcom/android/dng/j;->adu:Z

    if-eqz v0, :cond_a

    .line 158
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 159
    return-void

    .line 161
    :cond_a
    invoke-virtual {p0}, Lcom/android/dng/j;->aPM()V

    .line 163
    iput-boolean v2, p0, Lcom/android/dng/j;->aAK:Z

    .line 164
    iget-object v0, p0, Lcom/android/dng/j;->aAS:Lcom/android/dng/k;

    invoke-virtual {v0, v2}, Lcom/android/dng/k;->removeMessages(I)V

    .line 165
    iget-object v0, p0, Lcom/android/dng/j;->aAJ:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1f

    .line 166
    iget-object v0, p0, Lcom/android/dng/j;->aAJ:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 167
    iput-object v1, p0, Lcom/android/dng/j;->aAJ:Landroid/app/AlertDialog;

    .line 169
    :cond_1f
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    if-eqz v0, :cond_28

    .line 170
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    invoke-virtual {v0}, Lcom/android/dng/c;->aPd()V

    .line 172
    :cond_28
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 156
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 141
    iget-boolean v0, p0, Lcom/android/dng/j;->adu:Z

    if-eqz v0, :cond_9

    .line 142
    return-void

    .line 144
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dng/j;->akU(Z)V

    .line 145
    iput-boolean v1, p0, Lcom/android/dng/j;->aAK:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/dng/j;->aAB:Z

    .line 147
    iget-object v0, p0, Lcom/android/dng/j;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rW()V

    .line 148
    invoke-virtual {p0}, Lcom/android/dng/j;->aPM()V

    .line 149
    invoke-virtual {p0}, Lcom/android/dng/j;->aPC()V

    .line 150
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    if-eqz v0, :cond_25

    .line 151
    iget-object v0, p0, Lcom/android/dng/j;->aAE:Lcom/android/dng/c;

    invoke-virtual {v0}, Lcom/android/dng/c;->aOY()V

    .line 139
    :cond_25
    return-void
.end method

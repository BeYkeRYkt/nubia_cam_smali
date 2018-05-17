.class public Lcom/android/common/o/e;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/p;
.implements Lcom/android/common/e/h;
.implements Lcom/android/common/h/c;
.implements Lcom/android/common/ui/U;


# static fields
.field private static acL:Z

.field private static final synthetic adj:[I


# instance fields
.field private acM:Lcom/android/common/o/f;

.field private acN:Lcom/android/common/o/i;

.field private acO:Landroid/widget/RelativeLayout;

.field protected acP:Z

.field private acQ:Lcom/android/common/appService/E;

.field protected acR:Ljava/util/List;

.field protected acS:Lcom/android/common/ui/U;

.field protected acT:Landroid/widget/RelativeLayout;

.field protected acU:Lcom/android/common/ui/HighSettingLayout;

.field private acV:Landroid/widget/ListView;

.field protected acW:Lcom/android/common/n;

.field protected acX:Ljava/util/List;

.field private acY:Lcom/android/common/ui/NubiaProgressWheel;

.field protected acZ:Lcom/android/common/ui/ZtemtShutterButton;

.field protected ada:Lcom/android/common/ui/MultiFunctionImageView;

.field protected adb:Lcom/android/common/ui/u;

.field protected adc:Lcom/android/common/ui/ZtemtShutterButton;

.field private add:Lcom/android/common/ui/MultiFunctionImageView;

.field protected ade:Landroid/widget/RelativeLayout;

.field private adf:Lcom/android/common/o/g;

.field protected adg:Lcom/android/common/ui/RotateImageView;

.field adh:Lcom/android/common/ui/af;

.field private adi:Lcom/android/common/o/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 94
    const-string/jumbo v0, "BaseBottomBarFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/common/o/e;->acL:Z

    .line 88
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 102
    iput-object v1, p0, Lcom/android/common/o/e;->acO:Landroid/widget/RelativeLayout;

    .line 103
    iput-object v1, p0, Lcom/android/common/o/e;->ade:Landroid/widget/RelativeLayout;

    .line 104
    iput-object v1, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    .line 105
    iput-object v1, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    .line 106
    iput-object v1, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    .line 107
    iput-object v1, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    .line 108
    iput-object v1, p0, Lcom/android/common/o/e;->add:Lcom/android/common/ui/MultiFunctionImageView;

    .line 109
    iput-object v1, p0, Lcom/android/common/o/e;->acY:Lcom/android/common/ui/NubiaProgressWheel;

    .line 110
    iput-object v1, p0, Lcom/android/common/o/e;->adb:Lcom/android/common/ui/u;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/o/e;->acP:Z

    .line 115
    new-instance v0, Lcom/android/common/o/g;

    invoke-direct {v0, p0, v1}, Lcom/android/common/o/g;-><init>(Lcom/android/common/o/e;Lcom/android/common/o/g;)V

    .line 114
    iput-object v0, p0, Lcom/android/common/o/e;->adf:Lcom/android/common/o/g;

    .line 117
    iput-object v1, p0, Lcom/android/common/o/e;->acW:Lcom/android/common/n;

    .line 119
    iput-object v1, p0, Lcom/android/common/o/e;->acQ:Lcom/android/common/appService/E;

    .line 329
    iput-object v1, p0, Lcom/android/common/o/e;->acR:Ljava/util/List;

    .line 330
    iput-object v1, p0, Lcom/android/common/o/e;->acX:Ljava/util/List;

    .line 356
    iput-object v1, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    .line 357
    iput-object v1, p0, Lcom/android/common/o/e;->acN:Lcom/android/common/o/i;

    .line 427
    iput-object v1, p0, Lcom/android/common/o/e;->acM:Lcom/android/common/o/f;

    .line 428
    iput-object v1, p0, Lcom/android/common/o/e;->adi:Lcom/android/common/o/f;

    .line 526
    new-instance v0, Lcom/android/common/o/C;

    invoke-direct {v0, p0}, Lcom/android/common/o/C;-><init>(Lcom/android/common/o/e;)V

    iput-object v0, p0, Lcom/android/common/o/e;->adh:Lcom/android/common/ui/af;

    .line 121
    return-void
.end method

.method public constructor <init>(ILcom/android/common/ui/u;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 102
    iput-object v1, p0, Lcom/android/common/o/e;->acO:Landroid/widget/RelativeLayout;

    .line 103
    iput-object v1, p0, Lcom/android/common/o/e;->ade:Landroid/widget/RelativeLayout;

    .line 104
    iput-object v1, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    .line 105
    iput-object v1, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    .line 106
    iput-object v1, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    .line 107
    iput-object v1, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    .line 108
    iput-object v1, p0, Lcom/android/common/o/e;->add:Lcom/android/common/ui/MultiFunctionImageView;

    .line 109
    iput-object v1, p0, Lcom/android/common/o/e;->acY:Lcom/android/common/ui/NubiaProgressWheel;

    .line 110
    iput-object v1, p0, Lcom/android/common/o/e;->adb:Lcom/android/common/ui/u;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/o/e;->acP:Z

    .line 115
    new-instance v0, Lcom/android/common/o/g;

    invoke-direct {v0, p0, v1}, Lcom/android/common/o/g;-><init>(Lcom/android/common/o/e;Lcom/android/common/o/g;)V

    .line 114
    iput-object v0, p0, Lcom/android/common/o/e;->adf:Lcom/android/common/o/g;

    .line 117
    iput-object v1, p0, Lcom/android/common/o/e;->acW:Lcom/android/common/n;

    .line 119
    iput-object v1, p0, Lcom/android/common/o/e;->acQ:Lcom/android/common/appService/E;

    .line 329
    iput-object v1, p0, Lcom/android/common/o/e;->acR:Ljava/util/List;

    .line 330
    iput-object v1, p0, Lcom/android/common/o/e;->acX:Ljava/util/List;

    .line 356
    iput-object v1, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    .line 357
    iput-object v1, p0, Lcom/android/common/o/e;->acN:Lcom/android/common/o/i;

    .line 427
    iput-object v1, p0, Lcom/android/common/o/e;->acM:Lcom/android/common/o/f;

    .line 428
    iput-object v1, p0, Lcom/android/common/o/e;->adi:Lcom/android/common/o/f;

    .line 526
    new-instance v0, Lcom/android/common/o/C;

    invoke-direct {v0, p0}, Lcom/android/common/o/C;-><init>(Lcom/android/common/o/e;)V

    iput-object v0, p0, Lcom/android/common/o/e;->adh:Lcom/android/common/ui/af;

    .line 131
    iput-object p2, p0, Lcom/android/common/o/e;->adb:Lcom/android/common/ui/u;

    .line 129
    return-void
.end method

.method public constructor <init>(ILcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)V
    .registers 5

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/common/o/e;-><init>(ILcom/android/common/ui/u;)V

    .line 145
    iput-object p3, p0, Lcom/android/common/o/e;->acR:Ljava/util/List;

    .line 146
    iput-object p4, p0, Lcom/android/common/o/e;->acX:Ljava/util/List;

    .line 143
    return-void
.end method

.method private akA()I
    .registers 4

    .prologue
    const v0, 0x7f020294

    .line 314
    invoke-static {}, Lcom/android/common/o/e;->ali()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 324
    :goto_16
    return v0

    .line 318
    :pswitch_17
    const v0, 0x7f020297

    .line 319
    goto :goto_16

    .line 314
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method private akB()Lcom/android/common/m/c;
    .registers 2

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/android/common/o/e;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    return-object v0
.end method

.method private akD(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    const v0, 0x7f100040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/o/e;->acO:Landroid/widget/RelativeLayout;

    .line 268
    const v0, 0x7f100159

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/o/e;->ade:Landroid/widget/RelativeLayout;

    .line 269
    const v0, 0x7f10015a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    .line 270
    const v0, 0x7f100041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZtemtShutterButton;

    iput-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    .line 271
    const v0, 0x7f100042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MultiFunctionImageView;

    iput-object v0, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    .line 272
    const v0, 0x7f100043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZtemtShutterButton;

    iput-object v0, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    .line 273
    const v0, 0x7f100045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MultiFunctionImageView;

    iput-object v0, p0, Lcom/android/common/o/e;->add:Lcom/android/common/ui/MultiFunctionImageView;

    .line 274
    const v0, 0x7f100044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/NubiaProgressWheel;

    iput-object v0, p0, Lcom/android/common/o/e;->acY:Lcom/android/common/ui/NubiaProgressWheel;

    .line 276
    iget-object v0, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0, v0}, Lcom/android/common/o/e;->akY(I)V

    .line 278
    invoke-direct {p0}, Lcom/android/common/o/e;->akA()I

    move-result v0

    .line 279
    iget-object v3, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v3, v0}, Lcom/android/common/ui/MultiFunctionImageView;->setImageResource(I)V

    .line 280
    iget-object v3, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    const v4, 0x7f020294

    if-ne v0, v4, :cond_94

    move v0, v1

    :goto_76
    invoke-virtual {v3, v0}, Lcom/android/common/ui/MultiFunctionImageView;->EF(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    new-instance v3, Lcom/android/common/o/D;

    invoke-direct {v3, p0}, Lcom/android/common/o/D;-><init>(Lcom/android/common/o/e;)V

    invoke-virtual {v0, v3}, Lcom/android/common/ui/ZtemtShutterButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 303
    invoke-direct {p0, p1}, Lcom/android/common/o/e;->akE(Landroid/view/View;)V

    .line 305
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/common/ui/h;

    .line 306
    iget-object v3, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    aput-object v3, v0, v2

    .line 307
    iget-object v2, p0, Lcom/android/common/o/e;->acU:Lcom/android/common/ui/HighSettingLayout;

    aput-object v2, v0, v1

    .line 305
    iput-object v0, p0, Lcom/android/common/o/e;->adw:[Lcom/android/common/ui/h;

    .line 266
    return-void

    :cond_94
    move v0, v2

    .line 280
    goto :goto_76
.end method

.method private akE(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 340
    const v0, 0x7f1000f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/o/e;->acT:Landroid/widget/RelativeLayout;

    .line 341
    iget-object v0, p0, Lcom/android/common/o/e;->acT:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 342
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "initHighSettingLayout"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const v0, 0x7f1000f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/HighSettingLayout;

    iput-object v0, p0, Lcom/android/common/o/e;->acU:Lcom/android/common/ui/HighSettingLayout;

    .line 344
    iget-object v0, p0, Lcom/android/common/o/e;->acU:Lcom/android/common/ui/HighSettingLayout;

    iget-object v1, p0, Lcom/android/common/o/e;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/HighSettingLayout;->Cj(Lcom/android/common/camerastate/a;)V

    .line 346
    iget-object v0, p0, Lcom/android/common/o/e;->acU:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/HighSettingLayout;->Ck(Lcom/android/common/ui/U;)V

    .line 347
    iget-object v0, p0, Lcom/android/common/o/e;->acU:Lcom/android/common/ui/HighSettingLayout;

    iget-object v1, p0, Lcom/android/common/o/e;->acS:Lcom/android/common/ui/U;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/HighSettingLayout;->Ck(Lcom/android/common/ui/U;)V

    .line 349
    invoke-direct {p0}, Lcom/android/common/o/e;->akN()V

    .line 350
    iget-object v0, p0, Lcom/android/common/o/e;->acU:Lcom/android/common/ui/HighSettingLayout;

    iget-object v1, p0, Lcom/android/common/o/e;->acX:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ui/HighSettingLayout;->Cl(Ljava/util/List;Z)V

    .line 351
    invoke-direct {p0}, Lcom/android/common/o/e;->akM()V

    .line 352
    iget-object v0, p0, Lcom/android/common/o/e;->acU:Lcom/android/common/ui/HighSettingLayout;

    iget-object v1, p0, Lcom/android/common/o/e;->acR:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ui/HighSettingLayout;->Cl(Ljava/util/List;Z)V

    .line 353
    invoke-direct {p0, p1}, Lcom/android/common/o/e;->akF(Landroid/view/View;)V

    .line 339
    return-void
.end method

.method private akF(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 359
    iget-object v0, p0, Lcom/android/common/o/e;->acR:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 360
    iget-object v0, p0, Lcom/android/common/o/e;->acR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 361
    :cond_d
    return-void

    .line 364
    :cond_e
    const v0, 0x7f10003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    .line 365
    iget-object v0, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    const v1, 0x7f0201c4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 366
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/common/o/e;->akZ(Z)V

    .line 368
    new-instance v0, Lcom/android/common/o/i;

    iget-object v1, p0, Lcom/android/common/o/e;->acR:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/android/common/o/i;-><init>(Lcom/android/common/o/e;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/common/o/e;->acN:Lcom/android/common/o/i;

    .line 369
    iget-object v0, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/common/o/e;->acN:Lcom/android/common/o/i;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 370
    iget-object v0, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    new-instance v1, Lcom/android/common/o/k;

    invoke-direct {v1, p0, v2}, Lcom/android/common/o/k;-><init>(Lcom/android/common/o/e;Lcom/android/common/o/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 358
    return-void
.end method

.method private akJ()Z
    .registers 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/common/o/e;->add:Lcom/android/common/ui/MultiFunctionImageView;

    if-eqz v0, :cond_b

    .line 1112
    iget-object v0, p0, Lcom/android/common/o/e;->add:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->EJ()Z

    move-result v0

    .line 1111
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private akK()Z
    .registers 3

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rK()Lcom/android/common/appService/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/s;->kG()Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    move-result-object v0

    .line 913
    sget-object v1, Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;->iv:Lcom/android/common/appService/PhysicalShutterButtonManager$ButtonState;

    .line 912
    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private akL()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 892
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adh()Z

    move-result v0

    if-nez v0, :cond_10

    .line 893
    return v2

    .line 894
    :cond_10
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    .line 895
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-eq v0, v1, :cond_8a

    .line 896
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_36

    .line 897
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_58

    .line 903
    :cond_36
    invoke-virtual {p0}, Lcom/android/common/o/e;->aln()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_capture_focus_key"

    .line 904
    invoke-virtual {p0}, Lcom/android/common/o/e;->all()Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a03e8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 903
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 904
    const-string/jumbo v1, "on"

    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 898
    :cond_58
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_36

    .line 899
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_36

    .line 900
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jk:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_36

    .line 901
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_36

    .line 902
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jt:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_36

    .line 906
    :cond_8a
    return v2
.end method

.method private akM()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 450
    iget-object v0, p0, Lcom/android/common/o/e;->acM:Lcom/android/common/o/f;

    if-eqz v0, :cond_c

    .line 452
    :try_start_5
    iget-object v0, p0, Lcom/android/common/o/e;->acM:Lcom/android/common/o/f;

    invoke-virtual {v0}, Lcom/android/common/o/f;->join()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_d

    .line 455
    :goto_a
    iput-object v1, p0, Lcom/android/common/o/e;->acM:Lcom/android/common/o/f;

    .line 449
    :cond_c
    return-void

    .line 453
    :catch_d
    move-exception v0

    goto :goto_a
.end method

.method private akN()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Lcom/android/common/o/e;->adi:Lcom/android/common/o/f;

    if-eqz v0, :cond_c

    .line 461
    :try_start_5
    iget-object v0, p0, Lcom/android/common/o/e;->adi:Lcom/android/common/o/f;

    invoke-virtual {v0}, Lcom/android/common/o/f;->join()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_d

    .line 464
    :goto_a
    iput-object v1, p0, Lcom/android/common/o/e;->adi:Lcom/android/common/o/f;

    .line 458
    :cond_c
    return-void

    .line 462
    :catch_d
    move-exception v0

    goto :goto_a
.end method

.method private akO()V
    .registers 3

    .prologue
    .line 444
    new-instance v0, Lcom/android/common/o/f;

    iget-object v1, p0, Lcom/android/common/o/e;->acR:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/android/common/o/f;-><init>(Lcom/android/common/o/e;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/common/o/e;->acM:Lcom/android/common/o/f;

    .line 445
    new-instance v0, Lcom/android/common/o/f;

    iget-object v1, p0, Lcom/android/common/o/e;->acX:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/android/common/o/f;-><init>(Lcom/android/common/o/e;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/common/o/e;->adi:Lcom/android/common/o/f;

    .line 446
    iget-object v0, p0, Lcom/android/common/o/e;->acM:Lcom/android/common/o/f;

    invoke-virtual {v0}, Lcom/android/common/o/f;->start()V

    .line 447
    iget-object v0, p0, Lcom/android/common/o/e;->adi:Lcom/android/common/o/f;

    invoke-virtual {v0}, Lcom/android/common/o/f;->start()V

    .line 443
    return-void
.end method

.method private akP()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 833
    iget-object v1, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    if-eqz v1, :cond_a

    .line 834
    iget-object v1, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 836
    :cond_a
    iget-object v1, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pK()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 837
    const-string/jumbo v0, "BaseBottomBarFragment"

    const-string/jumbo v1, "Storage is not enough"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    return-void

    .line 840
    :cond_1c
    iget-object v1, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/appService/b;->hU()Z

    move-result v1

    if-nez v1, :cond_36

    .line 841
    const-string/jumbo v0, "BaseBottomBarFragment"

    const-string/jumbo v1, "Disable capture when bigaperture initializing."

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    return-void

    .line 845
    :cond_36
    iget-object v1, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pX()Z

    move-result v1

    .line 849
    iget-object v2, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    .line 850
    sget-object v3, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    if-eq v2, v3, :cond_58

    sget-object v3, Lcom/android/common/appService/CameraMember;->jk:Lcom/android/common/appService/CameraMember;

    if-ne v2, v3, :cond_8c

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->adk()Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 851
    :cond_58
    iget-object v2, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v2

    .line 852
    const-string/jumbo v3, "pref_camera_interval_pro"

    const-string/jumbo v4, "-1"

    .line 851
    invoke-virtual {v2, v3, v4}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 853
    const-string/jumbo v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 854
    :goto_71
    and-int/2addr v0, v1

    .line 856
    :goto_72
    invoke-virtual {p0}, Lcom/android/common/o/e;->aln()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_delay_shoot_key"

    const-string/jumbo v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 857
    if-eqz v0, :cond_86

    .line 858
    iget-object v0, p0, Lcom/android/common/o/e;->acW:Lcom/android/common/n;

    if-nez v0, :cond_90

    .line 861
    :cond_86
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->px()V

    .line 832
    :goto_8b
    return-void

    :cond_8c
    move v0, v1

    .line 850
    goto :goto_72

    .line 853
    :cond_8e
    const/4 v0, 0x1

    goto :goto_71

    .line 859
    :cond_90
    const-string/jumbo v0, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 860
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qK()Z

    move-result v0

    .line 857
    if-nez v0, :cond_86

    .line 863
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aeA()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 864
    invoke-virtual {p0}, Lcom/android/common/o/e;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_c2

    .line 865
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qB()V

    .line 866
    iget-object v0, p0, Lcom/android/common/o/e;->acW:Lcom/android/common/n;

    invoke-virtual {v0}, Lcom/android/common/n;->aqY()V

    goto :goto_8b

    .line 867
    :cond_c2
    invoke-virtual {p0}, Lcom/android/common/o/e;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_ce

    .line 868
    invoke-direct {p0}, Lcom/android/common/o/e;->alc()V

    goto :goto_8b

    .line 870
    :cond_ce
    invoke-direct {p0}, Lcom/android/common/o/e;->ald()V

    goto :goto_8b

    :cond_d2
    move v0, v1

    goto :goto_72
.end method

.method private akQ()V
    .registers 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/common/o/e;->acR:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 205
    iget-object v0, p0, Lcom/android/common/o/e;->acR:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 206
    instance-of v2, v0, Lcom/android/common/ui/P;

    if-eqz v2, :cond_a

    .line 207
    invoke-virtual {v0}, Lcom/android/common/ui/d;->uR()V

    .line 203
    :cond_1d
    return-void
.end method

.method private akR(Lcom/android/common/ui/P;)V
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 1017
    invoke-virtual {p0}, Lcom/android/common/o/e;->aln()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "maf_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1018
    if-ne v0, v2, :cond_23

    invoke-virtual {p1}, Lcom/android/common/ui/P;->uA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/o/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1016
    :cond_23
    :goto_23
    return-void

    .line 1019
    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/P;->uV(Z)V

    goto :goto_23
.end method

.method private akS(Lcom/android/common/ui/v;)V
    .registers 5

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/android/common/o/e;->aln()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_iso_key"

    const-string/jumbo v2, "auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1029
    const-string/jumbo v1, "auto"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lcom/android/common/ui/v;->uA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/o/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1027
    :cond_2c
    :goto_2c
    return-void

    .line 1030
    :cond_2d
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/v;->uV(Z)V

    goto :goto_2c
.end method

.method private akT()V
    .registers 4

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/common/o/e;->acR:Ljava/util/List;

    if-eqz v0, :cond_2a

    .line 1002
    iget-object v0, p0, Lcom/android/common/o/e;->acR:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 1003
    instance-of v2, v0, Lcom/android/common/ui/P;

    if-eqz v2, :cond_20

    .line 1004
    check-cast v0, Lcom/android/common/ui/P;

    invoke-direct {p0, v0}, Lcom/android/common/o/e;->akR(Lcom/android/common/ui/P;)V

    goto :goto_a

    .line 1005
    :cond_20
    instance-of v2, v0, Lcom/android/common/ui/v;

    if-eqz v2, :cond_a

    .line 1006
    check-cast v0, Lcom/android/common/ui/v;

    invoke-direct {p0, v0}, Lcom/android/common/o/e;->akS(Lcom/android/common/ui/v;)V

    goto :goto_a

    .line 1000
    :cond_2a
    return-void
.end method

.method private akW(Z)V
    .registers 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_e

    .line 653
    iget-object v0, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 654
    iget-object v0, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    .line 651
    :cond_e
    return-void
.end method

.method private akX(I)V
    .registers 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/common/o/e;->ade:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1b

    .line 418
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    if-nez v0, :cond_14

    .line 419
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    .line 418
    if-eqz v0, :cond_1c

    .line 420
    :cond_14
    iget-object v0, p0, Lcom/android/common/o/e;->ade:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 416
    :cond_1b
    :goto_1b
    return-void

    .line 422
    :cond_1c
    iget-object v0, p0, Lcom/android/common/o/e;->ade:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1b
.end method

.method private akY(I)V
    .registers 3

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/common/o/e;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->rI(I)V

    .line 481
    return-void
.end method

.method private akZ(Z)V
    .registers 3

    .prologue
    .line 1035
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/common/o/e;->ala(ZZ)V

    .line 1034
    return-void
.end method

.method public static akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;
    .registers 5

    .prologue
    .line 153
    new-instance v0, Lcom/android/common/o/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/common/o/e;-><init>(ILcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)V

    .line 154
    return-object v0
.end method

.method private aky(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1126
    sget-boolean v0, Lcom/android/common/o/e;->acL:Z

    if-eqz v0, :cond_a

    .line 1127
    const-string/jumbo v0, "BaseBottomBarFragment"

    invoke-static {v0, p1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    :cond_a
    return-void
.end method

.method private akz()V
    .registers 2

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/android/common/o/e;->akw()V

    .line 648
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/common/o/e;->akW(Z)V

    .line 646
    return-void
.end method

.method private ala(ZZ)V
    .registers 7

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 1039
    const-string/jumbo v2, "1111"

    const-string/jumbo v3, "showhighsetting status list"

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v2, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    if-nez v2, :cond_11

    return-void

    .line 1041
    :cond_11
    iget-object v2, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->clearAnimation()V

    .line 1042
    if-eqz p2, :cond_5b

    .line 1043
    if-eqz p1, :cond_55

    .line 1044
    iget-object v0, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1045
    invoke-virtual {p0}, Lcom/android/common/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f050003

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1046
    iget-object v2, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1053
    :goto_2f
    const-string/jumbo v0, "1111"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mHighSettingStatusList.isFocusable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->isFocusable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 1038
    return-void

    .line 1048
    :cond_55
    iget-object v2, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_2f

    .line 1051
    :cond_5b
    iget-object v2, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    if-eqz p1, :cond_60

    move v0, v1

    :cond_60
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_2f
.end method

.method private alb()V
    .registers 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 515
    iget-object v0, p0, Lcom/android/common/o/e;->add:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/android/common/o/e;->acY:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 520
    iget-object v0, p0, Lcom/android/common/o/e;->ade:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 521
    iget-object v0, p0, Lcom/android/common/o/e;->acT:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/android/common/o/e;->acO:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 523
    invoke-virtual {p0}, Lcom/android/common/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0, v2}, Lcom/android/common/ActivityBase;->ath(I)V

    .line 514
    return-void
.end method

.method private alc()V
    .registers 5

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/android/common/o/e;->aln()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 813
    const-string/jumbo v1, "pref_camera_interval_pro"

    const-string/jumbo v2, "0"

    .line 812
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 815
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aeA()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 817
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_71

    .line 818
    iget-object v2, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    sget-object v3, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    if-ne v2, v3, :cond_71

    .line 819
    iget-object v2, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v2

    .line 820
    const-string/jumbo v3, "-1"

    .line 819
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 815
    if-eqz v2, :cond_71

    .line 821
    const-string/jumbo v2, "none"

    iget-object v3, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/cameradevice/p;->Lp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 815
    if-eqz v2, :cond_71

    .line 823
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rJ()V

    .line 824
    iget-object v0, p0, Lcom/android/common/o/e;->acW:Lcom/android/common/n;

    invoke-virtual {v0}, Lcom/android/common/n;->aqX()V

    .line 829
    :goto_63
    invoke-virtual {p0}, Lcom/android/common/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "normal_5"

    const-string/jumbo v2, "BaseBottomBarFragment"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    return-void

    .line 826
    :cond_71
    iget-object v2, p0, Lcom/android/common/o/e;->acW:Lcom/android/common/n;

    invoke-virtual {v2, v0, v1}, Lcom/android/common/n;->aqR(J)V

    .line 827
    iget-object v0, p0, Lcom/android/common/o/e;->acW:Lcom/android/common/n;

    invoke-virtual {v0}, Lcom/android/common/n;->start()V

    goto :goto_63
.end method

.method private ald()V
    .registers 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/common/o/e;->acW:Lcom/android/common/n;

    if-eqz v0, :cond_9

    .line 807
    iget-object v0, p0, Lcom/android/common/o/e;->acW:Lcom/android/common/n;

    invoke-virtual {v0}, Lcom/android/common/n;->stop()V

    .line 805
    :cond_9
    return-void
.end method

.method private ale()V
    .registers 2

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/common/o/e;->acN:Lcom/android/common/o/i;

    if-eqz v0, :cond_9

    .line 996
    iget-object v0, p0, Lcom/android/common/o/e;->acN:Lcom/android/common/o/i;

    invoke-virtual {v0}, Lcom/android/common/o/i;->notifyDataSetChanged()V

    .line 994
    :cond_9
    return-void
.end method

.method static synthetic alf(Lcom/android/common/o/e;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/common/o/e;->akA()I

    move-result v0

    return v0
.end method

.method static synthetic alg(Lcom/android/common/o/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/o/e;->akP()V

    return-void
.end method

.method static synthetic alh(Lcom/android/common/o/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/o/e;->alb()V

    return-void
.end method

.method private static synthetic ali()[I
    .registers 3

    sget-object v0, Lcom/android/common/o/e;->adj:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/common/o/e;->adj:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/common/appService/CameraMember;->values()[Lcom/android/common/appService/CameraMember;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/common/appService/CameraMember;->jf:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_1f7

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/common/appService/CameraMember;->jg:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_1f4

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/common/appService/CameraMember;->jh:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_1f1

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/common/appService/CameraMember;->ji:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_1ee

    :goto_32
    :try_start_32
    sget-object v1, Lcom/android/common/appService/CameraMember;->jj:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_1eb

    :goto_3c
    :try_start_3c
    sget-object v1, Lcom/android/common/appService/CameraMember;->jk:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_46} :catch_1e8

    :goto_46
    :try_start_46
    sget-object v1, Lcom/android/common/appService/CameraMember;->jl:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_1e5

    :goto_50
    :try_start_50
    sget-object v1, Lcom/android/common/appService/CameraMember;->jm:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_1e2

    :goto_5a
    :try_start_5a
    sget-object v1, Lcom/android/common/appService/CameraMember;->jn:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_1df

    :goto_64
    :try_start_64
    sget-object v1, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_1dc

    :goto_6e
    :try_start_6e
    sget-object v1, Lcom/android/common/appService/CameraMember;->jp:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_78} :catch_1d9

    :goto_78
    :try_start_78
    sget-object v1, Lcom/android/common/appService/CameraMember;->jq:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_81} :catch_1d6

    :goto_81
    :try_start_81
    sget-object v1, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8b} :catch_1d3

    :goto_8b
    :try_start_8b
    sget-object v1, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_95} :catch_1d0

    :goto_95
    :try_start_95
    sget-object v1, Lcom/android/common/appService/CameraMember;->jt:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_9f} :catch_1cd

    :goto_9f
    :try_start_9f
    sget-object v1, Lcom/android/common/appService/CameraMember;->ju:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_a9} :catch_1ca

    :goto_a9
    :try_start_a9
    sget-object v1, Lcom/android/common/appService/CameraMember;->jv:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_b3} :catch_1c7

    :goto_b3
    :try_start_b3
    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_bd} :catch_1c4

    :goto_bd
    :try_start_bd
    sget-object v1, Lcom/android/common/appService/CameraMember;->jx:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd .. :try_end_c7} :catch_1c1

    :goto_c7
    :try_start_c7
    sget-object v1, Lcom/android/common/appService/CameraMember;->jy:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7 .. :try_end_d1} :catch_1be

    :goto_d1
    :try_start_d1
    sget-object v1, Lcom/android/common/appService/CameraMember;->jz:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d1 .. :try_end_db} :catch_1bb

    :goto_db
    :try_start_db
    sget-object v1, Lcom/android/common/appService/CameraMember;->jA:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_db .. :try_end_e5} :catch_1b8

    :goto_e5
    :try_start_e5
    sget-object v1, Lcom/android/common/appService/CameraMember;->jB:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e5 .. :try_end_ef} :catch_1b5

    :goto_ef
    :try_start_ef
    sget-object v1, Lcom/android/common/appService/CameraMember;->jC:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ef .. :try_end_f9} :catch_1b2

    :goto_f9
    :try_start_f9
    sget-object v1, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_103
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f9 .. :try_end_103} :catch_1af

    :goto_103
    :try_start_103
    sget-object v1, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_103 .. :try_end_10d} :catch_1ac

    :goto_10d
    :try_start_10d
    sget-object v1, Lcom/android/common/appService/CameraMember;->jF:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_117
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_117} :catch_1a9

    :goto_117
    :try_start_117
    sget-object v1, Lcom/android/common/appService/CameraMember;->jG:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_121
    .catch Ljava/lang/NoSuchFieldError; {:try_start_117 .. :try_end_121} :catch_1a6

    :goto_121
    :try_start_121
    sget-object v1, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_12b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_121 .. :try_end_12b} :catch_1a4

    :goto_12b
    :try_start_12b
    sget-object v1, Lcom/android/common/appService/CameraMember;->jI:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_135
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12b .. :try_end_135} :catch_1a2

    :goto_135
    :try_start_135
    sget-object v1, Lcom/android/common/appService/CameraMember;->jJ:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_13f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_135 .. :try_end_13f} :catch_1a0

    :goto_13f
    :try_start_13f
    sget-object v1, Lcom/android/common/appService/CameraMember;->jK:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_149
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13f .. :try_end_149} :catch_19e

    :goto_149
    :try_start_149
    sget-object v1, Lcom/android/common/appService/CameraMember;->jL:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_153
    .catch Ljava/lang/NoSuchFieldError; {:try_start_149 .. :try_end_153} :catch_19c

    :goto_153
    :try_start_153
    sget-object v1, Lcom/android/common/appService/CameraMember;->jM:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_15d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_153 .. :try_end_15d} :catch_19a

    :goto_15d
    :try_start_15d
    sget-object v1, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_166
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15d .. :try_end_166} :catch_198

    :goto_166
    :try_start_166
    sget-object v1, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_16f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_166 .. :try_end_16f} :catch_196

    :goto_16f
    :try_start_16f
    sget-object v1, Lcom/android/common/appService/CameraMember;->jP:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_179
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16f .. :try_end_179} :catch_194

    :goto_179
    :try_start_179
    sget-object v1, Lcom/android/common/appService/CameraMember;->jQ:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_183
    .catch Ljava/lang/NoSuchFieldError; {:try_start_179 .. :try_end_183} :catch_192

    :goto_183
    :try_start_183
    sget-object v1, Lcom/android/common/appService/CameraMember;->jR:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_18d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_183 .. :try_end_18d} :catch_190

    :goto_18d
    sput-object v0, Lcom/android/common/o/e;->adj:[I

    return-object v0

    :catch_190
    move-exception v1

    goto :goto_18d

    :catch_192
    move-exception v1

    goto :goto_183

    :catch_194
    move-exception v1

    goto :goto_179

    :catch_196
    move-exception v1

    goto :goto_16f

    :catch_198
    move-exception v1

    goto :goto_166

    :catch_19a
    move-exception v1

    goto :goto_15d

    :catch_19c
    move-exception v1

    goto :goto_153

    :catch_19e
    move-exception v1

    goto :goto_149

    :catch_1a0
    move-exception v1

    goto :goto_13f

    :catch_1a2
    move-exception v1

    goto :goto_135

    :catch_1a4
    move-exception v1

    goto :goto_12b

    :catch_1a6
    move-exception v1

    goto/16 :goto_121

    :catch_1a9
    move-exception v1

    goto/16 :goto_117

    :catch_1ac
    move-exception v1

    goto/16 :goto_10d

    :catch_1af
    move-exception v1

    goto/16 :goto_103

    :catch_1b2
    move-exception v1

    goto/16 :goto_f9

    :catch_1b5
    move-exception v1

    goto/16 :goto_ef

    :catch_1b8
    move-exception v1

    goto/16 :goto_e5

    :catch_1bb
    move-exception v1

    goto/16 :goto_db

    :catch_1be
    move-exception v1

    goto/16 :goto_d1

    :catch_1c1
    move-exception v1

    goto/16 :goto_c7

    :catch_1c4
    move-exception v1

    goto/16 :goto_bd

    :catch_1c7
    move-exception v1

    goto/16 :goto_b3

    :catch_1ca
    move-exception v1

    goto/16 :goto_a9

    :catch_1cd
    move-exception v1

    goto/16 :goto_9f

    :catch_1d0
    move-exception v1

    goto/16 :goto_95

    :catch_1d3
    move-exception v1

    goto/16 :goto_8b

    :catch_1d6
    move-exception v1

    goto/16 :goto_81

    :catch_1d9
    move-exception v1

    goto/16 :goto_78

    :catch_1dc
    move-exception v1

    goto/16 :goto_6e

    :catch_1df
    move-exception v1

    goto/16 :goto_64

    :catch_1e2
    move-exception v1

    goto/16 :goto_5a

    :catch_1e5
    move-exception v1

    goto/16 :goto_50

    :catch_1e8
    move-exception v1

    goto/16 :goto_46

    :catch_1eb
    move-exception v1

    goto/16 :goto_3c

    :catch_1ee
    move-exception v1

    goto/16 :goto_32

    :catch_1f1
    move-exception v1

    goto/16 :goto_29

    :catch_1f4
    move-exception v1

    goto/16 :goto_20

    :catch_1f7
    move-exception v1

    goto/16 :goto_17
.end method


# virtual methods
.method public Db(ZZ)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 984
    const-string/jumbo v0, "111"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bottom bar show highsetting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    if-eqz p1, :cond_26

    .line 986
    invoke-direct {p0, v3, p2}, Lcom/android/common/o/e;->ala(ZZ)V

    .line 987
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/common/o/e;->akX(I)V

    .line 983
    :goto_25
    return-void

    .line 989
    :cond_26
    invoke-direct {p0}, Lcom/android/common/o/e;->ale()V

    .line 990
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/common/o/e;->ala(ZZ)V

    .line 991
    invoke-direct {p0, v3}, Lcom/android/common/o/e;->akX(I)V

    goto :goto_25
.end method

.method public ZP(ZJJ)V
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    .line 665
    invoke-virtual {p0}, Lcom/android/common/o/e;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    .line 666
    return-void

    .line 669
    :cond_9
    if-eqz p1, :cond_f

    cmp-long v0, p2, v2

    if-gez v0, :cond_1b

    .line 670
    :cond_f
    invoke-virtual {p0}, Lcom/android/common/o/e;->alJ()V

    .line 671
    invoke-virtual {p0}, Lcom/android/common/o/e;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 664
    :goto_1a
    return-void

    .line 673
    :cond_1b
    invoke-virtual {p0}, Lcom/android/common/o/e;->alK()V

    .line 674
    iget-object v0, p0, Lcom/android/common/o/e;->adz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 675
    return-void

    .line 677
    :cond_27
    iget-object v0, p0, Lcom/android/common/o/e;->adA:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_30

    .line 678
    iget-object v0, p0, Lcom/android/common/o/e;->adA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 680
    :cond_30
    iget-object v0, p0, Lcom/android/common/o/e;->adz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 681
    cmp-long v0, p4, v2

    if-lez v0, :cond_3e

    .line 682
    iget-object v0, p0, Lcom/android/common/o/e;->adz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 684
    :cond_3e
    iget-object v0, p0, Lcom/android/common/o/e;->adz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 685
    iget-object v0, p0, Lcom/android/common/o/e;->adz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1a
.end method

.method public ZQ(ZJJ)V
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    .line 691
    invoke-virtual {p0}, Lcom/android/common/o/e;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    .line 692
    return-void

    .line 695
    :cond_9
    if-eqz p1, :cond_f

    cmp-long v0, p2, v2

    if-gez v0, :cond_1b

    .line 696
    :cond_f
    invoke-virtual {p0}, Lcom/android/common/o/e;->alJ()V

    .line 698
    invoke-virtual {p0}, Lcom/android/common/o/e;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 690
    :goto_1a
    return-void

    .line 700
    :cond_1b
    invoke-virtual {p0}, Lcom/android/common/o/e;->alL()V

    .line 701
    iget-object v0, p0, Lcom/android/common/o/e;->adA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 702
    return-void

    .line 704
    :cond_27
    iget-object v0, p0, Lcom/android/common/o/e;->adz:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_30

    .line 705
    iget-object v0, p0, Lcom/android/common/o/e;->adz:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 707
    :cond_30
    iget-object v0, p0, Lcom/android/common/o/e;->adA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 708
    cmp-long v0, p4, v2

    if-lez v0, :cond_3e

    .line 709
    iget-object v0, p0, Lcom/android/common/o/e;->adA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 711
    :cond_3e
    iget-object v0, p0, Lcom/android/common/o/e;->adA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 712
    iget-object v0, p0, Lcom/android/common/o/e;->adA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1a
.end method

.method public ZR()V
    .registers 2

    .prologue
    .line 718
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/common/o/e;->akW(Z)V

    .line 717
    return-void
.end method

.method public ZS()V
    .registers 2

    .prologue
    .line 723
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/common/o/e;->akW(Z)V

    .line 722
    return-void
.end method

.method public abC(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/common/o/e;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 376
    :cond_7
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->rH(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/android/common/o/e;->akq()V

    .line 378
    invoke-direct {p0}, Lcom/android/common/o/e;->ale()V

    .line 374
    return-void
.end method

.method public aik()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1117
    iget-object v0, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_a

    .line 1118
    iget-object v0, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 1120
    :cond_a
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_13

    .line 1121
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setClickable(Z)V

    .line 1116
    :cond_13
    return-void
.end method

.method public aip()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 487
    iget-boolean v0, p0, Lcom/android/common/o/e;->adv:Z

    if-eqz v0, :cond_8

    return-void

    .line 488
    :cond_8
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pM(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/common/o/e;->add:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->EE()V

    .line 490
    iget-object v0, p0, Lcom/android/common/o/e;->add:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/android/common/o/e;->add:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->EB()V

    .line 492
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/android/common/o/e;->acY:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/android/common/o/e;->acY:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->start()V

    .line 496
    iget-object v0, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 497
    iget-object v0, p0, Lcom/android/common/o/e;->ade:Landroid/widget/RelativeLayout;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 498
    iget-object v0, p0, Lcom/android/common/o/e;->acT:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 499
    invoke-virtual {p0}, Lcom/android/common/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0, v3}, Lcom/android/common/ActivityBase;->ath(I)V

    .line 500
    iget-object v0, p0, Lcom/android/common/o/e;->acO:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/common/o/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    return-void
.end method

.method public aiq()V
    .registers 3

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pM(Z)V

    .line 506
    iget-boolean v0, p0, Lcom/android/common/o/e;->adv:Z

    if-eqz v0, :cond_e

    .line 507
    invoke-direct {p0}, Lcom/android/common/o/e;->alb()V

    .line 504
    :goto_d
    return-void

    .line 509
    :cond_e
    iget-object v0, p0, Lcom/android/common/o/e;->add:Lcom/android/common/ui/MultiFunctionImageView;

    iget-object v1, p0, Lcom/android/common/o/e;->adh:Lcom/android/common/ui/af;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->EC(Lcom/android/common/ui/af;)V

    .line 510
    iget-object v0, p0, Lcom/android/common/o/e;->acY:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->stop()V

    goto :goto_d
.end method

.method protected ajt(IZ)V
    .registers 4

    .prologue
    .line 740
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->ajt(IZ)V

    .line 741
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/ZtemtShutterButton;->setOrientation(I)V

    .line 739
    return-void
.end method

.method protected akC()V
    .registers 2

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/common/o/l;->akC()V

    .line 196
    invoke-virtual {p0}, Lcom/android/common/o/e;->alI()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 197
    invoke-direct {p0}, Lcom/android/common/o/e;->akz()V

    .line 194
    :cond_c
    return-void
.end method

.method protected akG()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 390
    iget-object v0, p0, Lcom/android/common/o/e;->adb:Lcom/android/common/ui/u;

    if-eqz v0, :cond_d

    .line 391
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    iget-object v1, p0, Lcom/android/common/o/e;->adb:Lcom/android/common/ui/u;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->xa(Lcom/android/common/ui/u;)V

    .line 389
    :goto_c
    return-void

    .line 393
    :cond_d
    new-instance v0, Lcom/android/common/o/h;

    invoke-direct {v0, p0, v1}, Lcom/android/common/o/h;-><init>(Lcom/android/common/o/e;Lcom/android/common/o/h;)V

    .line 394
    iget-object v1, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/ZtemtShutterButton;->xa(Lcom/android/common/ui/u;)V

    .line 395
    iget-object v1, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/ZtemtShutterButton;->xa(Lcom/android/common/ui/u;)V

    .line 396
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    goto :goto_c
.end method

.method protected akH()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 381
    invoke-direct {p0, v3}, Lcom/android/common/o/e;->akX(I)V

    .line 382
    iget-object v0, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcom/android/common/h/b;

    invoke-virtual {p0}, Lcom/android/common/o/e;->all()Lcom/android/common/appService/W;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/h/b;-><init>(Lcom/android/common/appService/W;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->yC(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setAlpha(F)V

    .line 386
    invoke-direct {p0}, Lcom/android/common/o/e;->akB()Lcom/android/common/m/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/m/c;->ahq()V

    .line 380
    return-void
.end method

.method public akI(ZZ)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1060
    if-eqz p1, :cond_e

    .line 1061
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/common/o/e;->akV(I)V

    .line 1062
    iget-object v0, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setEnabled(Z)V

    .line 1059
    :goto_d
    return-void

    .line 1064
    :cond_e
    invoke-virtual {p0, v1}, Lcom/android/common/o/e;->akV(I)V

    .line 1065
    iget-object v0, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setEnabled(Z)V

    goto :goto_d
.end method

.method public akU(Z)V
    .registers 3

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 659
    return-void
.end method

.method protected akV(I)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 401
    iget-object v1, p0, Lcom/android/common/o/e;->acV:Landroid/widget/ListView;

    if-eqz v1, :cond_10

    .line 402
    iget-object v1, p0, Lcom/android/common/o/e;->acR:Ljava/util/List;

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/common/o/e;->acX:Ljava/util/List;

    if-nez v1, :cond_11

    .line 403
    invoke-direct {p0, v0}, Lcom/android/common/o/e;->akZ(Z)V

    .line 400
    :cond_10
    :goto_10
    return-void

    .line 405
    :cond_11
    if-nez p1, :cond_14

    const/4 v0, 0x1

    :cond_14
    invoke-direct {p0, v0}, Lcom/android/common/o/e;->akZ(Z)V

    goto :goto_10
.end method

.method public akm(Lcom/android/common/ui/U;)V
    .registers 4

    .prologue
    .line 726
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "base bottom bar setHighSetPopupShowListen"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iput-object p1, p0, Lcom/android/common/o/e;->acS:Lcom/android/common/ui/U;

    .line 725
    return-void
.end method

.method public akn(Z)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 1080
    const-string/jumbo v0, "pref_camera_gradienter_key"

    invoke-virtual {p0, v0}, Lcom/android/common/o/e;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    .line 1081
    if-eqz p1, :cond_6a

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    .line 1082
    :goto_e
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1083
    iget-object v1, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v2, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ao:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v1, v2}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 1088
    :goto_1e
    iget-object v1, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->XH()Z

    move-result v1

    .line 1089
    if-eqz v1, :cond_76

    .line 1090
    iget-object v2, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v3, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ap:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v2, v3}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 1094
    :goto_31
    iget-object v2, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->rD()Lcom/android/common/appService/E;

    move-result-object v2

    .line 1095
    if-eqz v1, :cond_7e

    .line 1096
    iget-object v3, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v2}, Lcom/android/common/appService/E;->mo()F

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/android/common/ui/MultiFunctionImageView;->EG(FZ)V

    .line 1097
    iget-object v3, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v2, v3}, Lcom/android/common/appService/E;->mp(Lcom/android/common/appService/G;)V

    .line 1101
    :goto_47
    const-string/jumbo v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    if-eqz v1, :cond_84

    .line 1102
    :cond_52
    iget-object v0, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v2}, Lcom/android/common/appService/E;->mq()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->EH(F)V

    .line 1103
    iget-object v0, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v2}, Lcom/android/common/appService/E;->mr()F

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/android/common/ui/MultiFunctionImageView;->EI(FZ)V

    .line 1104
    iget-object v0, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v2, v0}, Lcom/android/common/appService/E;->ms(Lcom/android/common/appService/F;)V

    .line 1079
    :goto_69
    return-void

    .line 1081
    :cond_6a
    const-string/jumbo v0, "off"

    goto :goto_e

    .line 1085
    :cond_6e
    iget-object v1, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v2, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ao:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v1, v2}, Lcom/android/common/ui/MultiFunctionImageView;->Ey(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    goto :goto_1e

    .line 1092
    :cond_76
    iget-object v2, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v3, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ap:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v2, v3}, Lcom/android/common/ui/MultiFunctionImageView;->Ey(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    goto :goto_31

    .line 1099
    :cond_7e
    iget-object v3, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v2, v3}, Lcom/android/common/appService/E;->mn(Lcom/android/common/appService/G;)V

    goto :goto_47

    .line 1106
    :cond_84
    iget-object v0, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v2, v0}, Lcom/android/common/appService/E;->mm(Lcom/android/common/appService/F;)V

    goto :goto_69
.end method

.method ako(Z)V
    .registers 4

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    if-eqz v0, :cond_d

    .line 1071
    if-eqz p1, :cond_e

    .line 1072
    iget-object v0, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 1069
    :cond_d
    :goto_d
    return-void

    .line 1074
    :cond_e
    iget-object v0, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ey(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    goto :goto_d
.end method

.method public akp(Lcom/android/common/n;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/common/o/e;->acW:Lcom/android/common/n;

    .line 157
    return-void
.end method

.method public akq()V
    .registers 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/common/o/e;->acU:Lcom/android/common/ui/HighSettingLayout;

    if-nez v0, :cond_5

    return-void

    .line 732
    :cond_5
    iget-object v0, p0, Lcom/android/common/o/e;->acU:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Cn()V

    .line 734
    invoke-direct {p0}, Lcom/android/common/o/e;->akT()V

    .line 735
    invoke-direct {p0}, Lcom/android/common/o/e;->ale()V

    .line 730
    return-void
.end method

.method public akr()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 578
    invoke-virtual {p0}, Lcom/android/common/o/e;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afp:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_18

    .line 579
    iget-object v0, p0, Lcom/android/common/o/e;->acU:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Cm()Z

    move-result v0

    if-nez v0, :cond_16

    .line 580
    iget-object v0, p0, Lcom/android/common/o/e;->acU:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/HighSettingLayout;->Cf(Z)V

    .line 582
    :cond_16
    const/4 v0, 0x1

    return v0

    .line 584
    :cond_18
    return v2
.end method

.method public aks()V
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_20

    .line 626
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 627
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performLongClick()Z

    .line 624
    :cond_19
    :goto_19
    return-void

    .line 629
    :cond_1a
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performClick()Z

    goto :goto_19

    .line 631
    :cond_20
    iget-object v0, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    .line 632
    iget-object v0, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 633
    iget-object v0, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performLongClick()Z

    goto :goto_19

    .line 635
    :cond_3a
    iget-object v0, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performClick()Z

    goto :goto_19
.end method

.method public akt()V
    .registers 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    .line 618
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performClick()Z

    .line 616
    :cond_11
    :goto_11
    return-void

    .line 619
    :cond_12
    iget-object v0, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 620
    iget-object v0, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performClick()Z

    goto :goto_11
.end method

.method public aku(Z)V
    .registers 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 642
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/ZtemtShutterButton;->xc(Z)Z

    .line 640
    :cond_11
    return-void
.end method

.method public akv()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 876
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_d

    .line 877
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    .line 876
    if-eqz v0, :cond_e

    .line 878
    :cond_d
    return v2

    .line 881
    :cond_e
    invoke-direct {p0}, Lcom/android/common/o/e;->akL()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 882
    invoke-virtual {p0}, Lcom/android/common/o/e;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_34

    .line 883
    invoke-direct {p0}, Lcom/android/common/o/e;->akK()Z

    move-result v0

    .line 881
    if-eqz v0, :cond_34

    .line 884
    invoke-virtual {p0}, Lcom/android/common/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "touch"

    const-string/jumbo v2, "touch"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-direct {p0}, Lcom/android/common/o/e;->akP()V

    .line 886
    const/4 v0, 0x1

    return v0

    .line 888
    :cond_34
    return v2
.end method

.method public akw()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 214
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_e

    .line 215
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    if-nez v0, :cond_f

    .line 216
    :cond_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_e

    .line 218
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/appService/CameraMember;->mh(Lcom/android/common/appService/CameraMember;I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 219
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rl()Z

    move-result v0

    .line 218
    if-nez v0, :cond_3b

    .line 220
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amE()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_50

    .line 221
    :cond_3b
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/ZtemtShutterButton;->setLongClickable(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/ZtemtShutterButton;->setClickable(Z)V

    .line 227
    :goto_45
    iget-object v0, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/ZtemtShutterButton;->setLongClickable(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/ZtemtShutterButton;->setClickable(Z)V

    .line 213
    return-void

    .line 224
    :cond_50
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/ZtemtShutterButton;->setLongClickable(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/ZtemtShutterButton;->setClickable(Z)V

    goto :goto_45
.end method

.method public akx(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    .line 606
    const-string/jumbo v0, "takepicture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 607
    iget-object v0, p0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performClick()Z

    .line 604
    :cond_1a
    :goto_1a
    return-void

    .line 609
    :cond_1b
    iget-object v0, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 610
    const-string/jumbo v0, "stop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 611
    iget-object v0, p0, Lcom/android/common/o/e;->adc:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performClick()Z

    goto :goto_1a
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 535
    invoke-virtual {p0}, Lcom/android/common/o/e;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afp:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_f

    .line 536
    iget-object v0, p0, Lcom/android/common/o/e;->acU:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/HighSettingLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 537
    return v3

    .line 540
    :cond_f
    invoke-virtual {p0}, Lcom/android/common/o/e;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_38

    .line 541
    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/android/common/h;->apZ(Landroid/view/MotionEvent;[Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 542
    iget-object v0, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->isClickable()Z

    move-result v0

    .line 541
    if-eqz v0, :cond_38

    .line 543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_38

    .line 544
    iget-object v0, p0, Lcom/android/common/o/e;->adg:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->performClick()Z

    .line 545
    return v3

    .line 549
    :cond_38
    invoke-direct {p0}, Lcom/android/common/o/e;->akJ()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 550
    const-string/jumbo v0, "dispatch, stopbutton anim is running."

    invoke-direct {p0, v0}, Lcom/android/common/o/e;->aky(Ljava/lang/String;)V

    .line 551
    return v3

    .line 554
    :cond_45
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onActivityCreated(Landroid/os/Bundle;)V

    .line 173
    return-void
.end method

.method public onBackPressed()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 589
    invoke-virtual {p0}, Lcom/android/common/o/e;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_d

    .line 590
    invoke-direct {p0}, Lcom/android/common/o/e;->ald()V

    .line 591
    return v2

    .line 593
    :cond_d
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rE()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 594
    invoke-virtual {p0}, Lcom/android/common/o/e;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_27

    .line 595
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qB()V

    .line 596
    return v2

    .line 598
    :cond_27
    invoke-virtual {p0}, Lcom/android/common/o/e;->akr()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 599
    return v2

    .line 601
    :cond_2e
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 165
    iget-boolean v0, p0, Lcom/android/common/o/e;->adu:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_9
    const v0, 0x7f04000e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 167
    invoke-direct {p0}, Lcom/android/common/o/e;->akO()V

    .line 168
    invoke-direct {p0, v0}, Lcom/android/common/o/e;->akD(Landroid/view/View;)V

    .line 169
    return-object v0
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/common/o/e;->adu:Z

    if-eqz v0, :cond_8

    .line 259
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroyView()V

    .line 260
    return-void

    .line 262
    :cond_8
    invoke-direct {p0}, Lcom/android/common/o/e;->akM()V

    .line 263
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroyView()V

    .line 257
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 559
    const/16 v0, 0x52

    if-ne p1, v0, :cond_12

    .line 560
    invoke-direct {p0}, Lcom/android/common/o/e;->akJ()Z

    move-result v0

    .line 559
    if-eqz v0, :cond_12

    .line 561
    const-string/jumbo v0, "onkeyDown, stopbutton anim is running."

    invoke-direct {p0, v0}, Lcom/android/common/o/e;->aky(Ljava/lang/String;)V

    .line 562
    const/4 v0, 0x1

    return v0

    .line 564
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 569
    const/16 v0, 0x52

    if-ne p1, v0, :cond_12

    .line 570
    invoke-direct {p0}, Lcom/android/common/o/e;->akJ()Z

    move-result v0

    .line 569
    if-eqz v0, :cond_12

    .line 571
    const-string/jumbo v0, "onkeyUp, stopbutton anim is running."

    invoke-direct {p0, v0}, Lcom/android/common/o/e;->aky(Ljava/lang/String;)V

    .line 572
    const/4 v0, 0x1

    return v0

    .line 574
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-boolean v0, p0, Lcom/android/common/o/e;->adu:Z

    if-eqz v0, :cond_9

    .line 234
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 235
    return-void

    .line 237
    :cond_9
    invoke-direct {p0}, Lcom/android/common/o/e;->akB()Lcom/android/common/m/c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/o/e;->adf:Lcom/android/common/o/g;

    invoke-virtual {v0, v1}, Lcom/android/common/m/c;->ahp(Lcom/android/common/m/d;)V

    .line 238
    iget-object v0, p0, Lcom/android/common/o/e;->acU:Lcom/android/common/ui/HighSettingLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/HighSettingLayout;->Ch(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/android/common/o/e;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afp:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_25

    .line 240
    iget-object v0, p0, Lcom/android/common/o/e;->acU:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0, v2, v2}, Lcom/android/common/ui/HighSettingLayout;->Ci(ZZ)V

    .line 242
    :cond_25
    iget-object v0, p0, Lcom/android/common/o/e;->add:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->EA()V

    .line 243
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rC()Lcom/android/common/i/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/i/e;->afb()V

    .line 244
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rD()Lcom/android/common/appService/E;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/E;->mm(Lcom/android/common/appService/F;)V

    .line 246
    iget-object v1, p0, Lcom/android/common/o/e;->ada:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/E;->mn(Lcom/android/common/appService/G;)V

    .line 247
    invoke-direct {p0}, Lcom/android/common/o/e;->ald()V

    .line 248
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_5f

    .line 249
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rE()Z

    move-result v0

    .line 248
    if-eqz v0, :cond_5f

    .line 250
    invoke-virtual {p0}, Lcom/android/common/o/e;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_5f

    .line 251
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qB()V

    .line 253
    :cond_5f
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 232
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 179
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 180
    iget-boolean v0, p0, Lcom/android/common/o/e;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 181
    :cond_8
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    if-nez v0, :cond_18

    .line 182
    iget-object v0, p0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 185
    :cond_18
    :goto_18
    invoke-virtual {p0}, Lcom/android/common/o/e;->akH()V

    .line 186
    invoke-virtual {p0}, Lcom/android/common/o/e;->akG()V

    .line 187
    invoke-direct {p0}, Lcom/android/common/o/e;->akQ()V

    .line 188
    iget-object v0, p0, Lcom/android/common/o/e;->acU:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Cg()V

    .line 189
    invoke-virtual {p0}, Lcom/android/common/o/e;->akC()V

    .line 190
    invoke-direct {p0}, Lcom/android/common/o/e;->ale()V

    .line 178
    return-void

    .line 183
    :cond_2d
    invoke-direct {p0}, Lcom/android/common/o/e;->akB()Lcom/android/common/m/c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/o/e;->adf:Lcom/android/common/o/g;

    invoke-virtual {v0, v1}, Lcom/android/common/m/c;->aho(Lcom/android/common/m/d;)V

    goto :goto_18
.end method
